import requests
from bs4 import BeautifulSoup
import csv
import numpy as np
import matplotlib.pyplot as plt
from tabulate import tabulate
import statistics
import mysql.connector as mysql

data = []
harga = []

#scraping script
def scrape():
    global p_jml,prd,hrg_urut,p_mean,hrg_tertinggi,p_idx,idx,pnamed,prce
    print('\n')
    prd = input("Produk yang ingin dicari: ")
    p_jml = int(input('Jumlah halaman yang ingin diambil: '))
    url = f"https://www.ebay.com/sch/i.html?_from=R40&_nkw={prd}&_sacat=0&_pgn="
    p_total = 0
    p_idx = 0
    idx = -1
    for page in range(0,p_jml):
        p_idx += 1
        print(f'scraping page {(p_jml-p_jml)+p_idx}...')
        r = requests.get(url+str(page))
        soup = BeautifulSoup(r.text,'html.parser')
        items = soup.find_all('div', 's-item__info clearfix')
        for details in items:
            idx += 1
            name = details.find('h3', class_='s-item__title').text
            pname = str(name).encode("ascii", "ignore")
            price = details.find('div', class_='s-item__detail s-item__detail--primary').text.replace(' ','').replace('IDR','').replace('.','').replace(',','').replace('to','')
            prc = str(price[:-2])
            if idx != 0:
                    if len(prc) < 9:
                        prce = int(prc)
                        pnamed = pname.decode()
                        p_total = (p_total + prce)
                        data.append([pnamed, prce])
                        harga.append(int(prc))
    print('\nscraping berhasil!')

    #menyimpan data
    table_header = ['Product Name','Price']
    writer = csv.writer(open(f'C:/Users/Lenovo/PBO/shopping_Ebay_({prd}).csv','w',newline='',encoding="utf-8"))
    writer.writerow(table_header)
    for dx in data:
        writer.writerow(dx)        
    print(f'Data telah tersimpan di shopping_Ebay_({prd}).csv!')

    #menghitung rata-rata harga barang
    print('Halaman diambil:',p_idx)
    p_mean = round(p_total/idx)

    #proses visualisasi data
    aboveavg = 0
    belowavg = 0
    for i in data:
        if i[1] > p_mean: 
            aboveavg+=1
        elif i[1] <= p_mean:
            belowavg+=1
    p_avg = [aboveavg,belowavg]
    y = np.array(p_avg)
    label = [f"harga diatas rata-rata", f"harga dibawah rata-rata harga"]
    exp = [0,0]
    plt.title(f'Persentase Harga {prd}\n(Harga rata-rata {prd}: {p_mean})')
    plt.pie(y, labels = label, explode=exp, autopct=lambda p:f'{p:.2f}%\n({p*sum(p_avg)/100 :.0f} buah)')

def tampil_hasil_scraping():
    yt = input('\nTampilkan hasil scraping?(y/t): ')
    if yt == 'y' or yt == 'Y':
        print(tabulate(data,headers=['Nama produk','Harga'],tablefmt='fancy_grid'))
    else:
        kembali_ke_menu()

def tampil_pengolahan_data():
    print('\n')
    print(f'Total produk ({prd}) yang didapatkan adalah: {idx} buah')
    print(f'Harga terendah {prd} untuk halaman {p_jml} adalah: {min(harga)} rupiah')
    print(f'Harga tertinggi {prd} untuk halaman {p_jml} adalah: {max(harga)} rupiah')
    print(f'Rata-rata harga untuk {p_jml} halaman {prd} adalah: {p_mean} rupiah')
    print(f'Median harga {prd} adalah: {round(statistics.median(harga))} rupiah')

def read_data():
    print('\n')
    print('\nIsi data terbaru yang diambil adalah sebagai berikut:\n')
    with open(f"C:/Users/Lenovo/PBO/shopping_Ebay_({prd}).csv","r") as f:
        a = f.read()
        print(a)
    print(f'\n(diatas merupakan isi file shopping_Ebay_({prd}).csv)')

def show_chart():
    plt.show()

def tampil_menu():
    print('\nMenu:')
    print('1. Mulai Scraping (PS5)\n2. Tampilkan Chart (Lakukan scraping terlebih dahulu!)')
    print('3. Tampilkan isi file csv(Lakukan scraping terlebih dahulu!)\n4. Tampilkan Pengolahan Data(Lakukan scraping terlebih dahulu!')
    print('5. Buat Database\n6. Tampilkan Database')
    print('7. Exit Program')

def kembali_ke_menu():
    cmd = input('\nKembali ke menu?(y/t): ')
    if cmd == 'y' or cmd == 'Y':
        menu()
    else: 
        thx()

def thx():
    print('terima kasih')

#database
db = mysql.connect(
        host = "localhost",
        user = "root",
        password = ""
    )

cursor = db.cursor()
db.database = "pbo_scraping_databrg"

def buat_tabel_db():
    global db_table_name
    db_table_name = input("masukkan nama table baru: ")
    cursor.execute('''create table {name}(
        ID INT NOT NULL AUTO_INCREMENT,
        nama_brg VARCHAR(200) NOT NULL,
        harga VARCHAR(50) NOT NULL,
        PRIMARY KEY (ID)
        );'''.format(name = db_table_name)
    )
    for i in data:
        cursor.execute(f"INSERT INTO {db_table_name} (nama_brg,harga) VALUES ('{i[0]}','{i[1]}')")
    db.commit()

def tampil_db():
    cursor.execute(f"SELECT * FROM {db_table_name}")
    data1 = cursor.fetchall()
    for row in data1:
        print(row)

#main program
def menu():
    tampil_menu()
    a = input('Masukkan pilihan: ')
    if a == '1':
        scrape()
        tampil_hasil_scraping()
        kembali_ke_menu()
    elif a == '2':
        print('\nChart telah ditampilkan')
        show_chart()
        kembali_ke_menu()
    elif a == '3':
        read_data()
        kembali_ke_menu()
    elif a == '4':
        tampil_pengolahan_data()
        kembali_ke_menu()
    elif a == '5':
        print('buat nama tabel sesuai nama barang...')
        buat_tabel_db()
        print('kembali ke menu jika ingin tampilkan database!')
        kembali_ke_menu()
    elif a == '6':
        tampil_db()
        kembali_ke_menu()
    elif a == '7':
        print('Terima kasih!')
    else:
        print('silakan masukkan input yang benar!')
        menu()

menu()