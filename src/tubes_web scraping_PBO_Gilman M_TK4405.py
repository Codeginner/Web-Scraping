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
    global p_jml,prd,hrg_urut,p_mean,hrg_tertinggi,p_idx,idx,pnamed,prce,p_total
    prd = input("\nProduk yang ingin dicari: ")
    p_jml = int(input('Jumlah halaman yang ingin diambil: '))
    url = f"https://www.ebay.com/sch/i.html?_from=R40&_trksid=p4432023.m570.l1313&_nkw={prd}&_sacat=0"
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
            name_element = details.find('div', class_='s-item__title')
            if name_element:  # Hanya proses jika elemen ditemukan
                name = name_element.text
                pname = str(name).encode("ascii", "ignore")
                price_element = details.find('span', class_='s-item__price')
                if price_element:  # Cek juga apakah elemen harga ditemukan
                    price = price_element.text.replace(' ', '').replace('IDR', '').replace('$', '').replace('.', '').replace(',', '').replace('to', '')
                    prc = str(price[:-2])
                    if len(prc) < 9:
                        prce = int(prc)
                        pnamed = pname.decode()
                        p_total += prce
                        data.append([pnamed, prce])
                        harga.append(prce)
    print('\nscraping berhasil!')

    #menyimpan data
    table_header = ['Product Name','Price']
    writer = csv.writer(open(f'C:/python/tubes pbo webscraping/shopping_Ebay_({prd}).csv','w',newline='',encoding="utf-8"))
    writer.writerow(table_header)
    for dx in data:
        writer.writerow(dx)        
    print(f'Data telah tersimpan di shopping_Ebay_({prd}).csv!')
    print('Halaman diambil:',p_idx)

    #menghitung rata-rata harga barang
    

    

def show_highest_lowest_pie_chart():
    if not harga:
        print("Data harga belum tersedia. Lakukan scraping terlebih dahulu.")
        return
    
    highest_price = max(harga)
    lowest_price = min(harga)
    
    highest_count = sum(1 for h in harga if h == highest_price)
    lowest_count = sum(1 for h in harga if h == lowest_price)
    other_count = len(harga) - (highest_count + lowest_count)
    
    labels = [
        f"Harga Tertinggi: {highest_price} (Jumlah: {highest_count})",
        f"Harga Terendah: {lowest_price} (Jumlah: {lowest_count})",
        "Harga Lainnya"
    ]
    sizes = [highest_count, lowest_count, other_count]
    colors = ['#FF9999', '#66B2FF', '#99FF99']
    explode = (0.1, 0.1, 0)  # Untuk memisahkan bagian pie
    
    plt.figure(figsize=(8, 8))
    plt.title(f"Distribusi Harga Tertinggi dan Terendah untuk {prd}")
    plt.pie(
        sizes,
        labels=labels,
        colors=colors,
        explode=explode,
        autopct='%1.1f%%',
        startangle=140
    )
    plt.axis('equal')  # Menjaga pie chart menjadi lingkaran
    plt.show()


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
    with open(f"C:/python/tubes pbo webscraping/shopping_Ebay_({prd}).csv","r") as f:
        a = f.read()
        print(a)
    print(f'\n(diatas merupakan isi file shopping_Ebay_({prd}).csv)')

def show_chart():
    #proses visualisasi data
    p_mean = round(p_total/idx)
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
    plt.show()

def tampil_menu():
    print('\nMenu: ')
    print('1. Mulai Scraping\n2. Tampilkan Chart (Lakukan scraping terlebih dahulu!)')
    print('3. Tampilkan distribusi harga tertinggi dan terendah barang')
    print('4. Tampilkan isi file csv(Lakukan scraping terlebih dahulu!)\n5. Tampilkan Pengolahan Data(Lakukan scraping terlebih dahulu!')
    print('6. Buat Database\n7. Tampilkan Database Hasil Scraping')
    print('8. Exit Program')

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
    db_table_name = input("Masukkan nama tabel baru: ")

    try:
        # Membuat tabel di database
        cursor.execute(f"""
            CREATE TABLE IF NOT EXISTS {db_table_name} (
                ID INT NOT NULL AUTO_INCREMENT,
                nama_brg VARCHAR(200) NOT NULL,
                harga INT NOT NULL,
                PRIMARY KEY (ID)
            );
        """)
        print(f"Tabel '{db_table_name}' berhasil dibuat atau sudah ada!")

        # Memasukkan data hasil scraping ke dalam tabel
        for i in data:
            cursor.execute(f"INSERT INTO {db_table_name} (nama_brg, harga) VALUES (%s, %s)", (i[0], i[1]))
        db.commit()
        print(f"Data berhasil dimasukkan ke tabel '{db_table_name}'!")
    except Exception as e:
        print(f"Terjadi kesalahan saat membuat tabel atau memasukkan data: {e}")
        db.rollback()


def tampil_db():
    try:
        cursor.execute(f"SELECT * FROM {db_table_name}")
    except:
        db_table_name=input("Masukkan nama tabel: ")
        cursor.execute(f"SELECT * FROM {db_table_name}")
    data1 = cursor.fetchall()
    for row in data1:
        print(row)

#main program
def menu():
    tampil_menu()
    a = input('Masukkan pilihan (isi dengan angka 1/2/3... sesuai menu): ')
    if a == '1':
        scrape()
        tampil_hasil_scraping()
        kembali_ke_menu()
    elif a == '2':
        try:
            show_chart()
            print('\nChart telah ditampilkan')
            kembali_ke_menu()
        except:
            print('\nTerdapat sebuah kesalahan, mungkin anda belum melakukan scraping! ingin kembali ke menu?')
            kembali_ke_menu()
    elif a == '3':
        show_highest_lowest_pie_chart()
        kembali_ke_menu()
    elif a == '4':
        read_data()
        kembali_ke_menu()
    elif a == '5':
        tampil_pengolahan_data()
        kembali_ke_menu()
    elif a == '6':
        print('buat nama tabel sesuai nama barang...')
        buat_tabel_db()
        print('kembali ke menu jika ingin tampilkan database!')
        kembali_ke_menu()
    elif a == '7':
        tampil_db()
        kembali_ke_menu()
    elif a == '8':
        print('Terima kasih!')
    else:
        print('silakan masukkan input yang benar!')
        menu()

menu()
