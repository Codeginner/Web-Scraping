SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Nov 2024 pada 10.53
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbo_scraping_databrg`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ip15_ebay`
--

CREATE TABLE `ip15_ebay` (
  `ID` int(11) NOT NULL,
  `nama_brg` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ip15_ebay`
--

INSERT INTO `ip15_ebay` (`ID`, `nama_brg`, `harga`) VALUES
(1, 'Shop on eBay', 20),
(2, 'Shop on eBay', 20),
(3, 'apple iphone 15 pro - 128gb', 3150132),
(4, 'Apple iPhone 14 128GB RED, Sehr guter Zustand  Refurbished', 7519912),
(5, 'New ListingApple iPhone 15 Pro Max - 512GB - Black Titanium (Unlocked)', 7737638),
(6, 'Apple iPhone 14 128GB Blue, 88% Akku! Sehr guter Zustand  Refurbished', 7519912),
(7, 'IPHONE 6S Apple 64GB Black Space Gray 4.7\"\" iS 15 Smartphone Original Phone', 4253021),
(8, 'IPHONE 6s Apple 16GB Black Space Gray 4.7\"\" iS 15 Smartphone Original Phone', 2556937),
(9, 'Apple iPhone 15 256GB blau (Neu differenzbesteuert)', 14487136),
(10, 'Apple iPhone 15 Plus (256 GB) - Schwarz', 15056572),
(11, 'Apple iPhone 13 128GB Blue Brand New Network Unlocked Fast Shipping From EU', 8374067),
(12, 'iPhone 15 Pro 256 GB', 19772593),
(13, 'Phone 14 128GB Starlight 100% Battery Network Unlocked Fast Shipping + Warranty', 11053768),
(14, 'iPhone 13 (138Gb, alle Netze 5g)', 15073320),
(15, 'TELEFON SMARTFON APPLE IPHONE 15 6,1\" 128GB CZARNY NOWY ZAPAKOWANY W PUDEKO', 14191151),
(16, 'iPhone 15 Plus 128GB - Black 5G', 14721610),
(17, 'Mint Condition Apple iPhone 6S  32GB Unlocked 4G Smartphone Boxed Plus Extras', 2495472),
(18, 'iPhone SE 64GB - 2020 2nd Generation White Factory Unlocked BNIB Brand New Boxed', 4940699),
(19, 'Apple iPhone 14 - 128GB -  (Unlocked)', 14386647),
(20, 'Apple iPhone 12 - 64GB - Black (Vodafone)', 10048880),
(21, 'iPhone SE 2 2020 64GB White Brand New Opened Box 100% Battery Unlocked', 3935811),
(22, 'iPhone 15 Pro MAX 256GB White', 16748134),
(23, 'Apple iPhone XS - 64GB - Space Grau (Ohne Simlock) A2097 (GSM)', 16731386),
(24, 'Apple reparatie set', 49407),
(25, 'Apple iPhone 13 pro 256gb Sierra Blau MagSafe Ladbar Ladebchse !Wackelkontakt!', 6531604),
(26, 'Apple iPhone 12 (64 GB)', 3852070),
(27, 'Apple iphone 13 - 128GB - Goede staat', 7369179),
(28, 'Apple iphone 8 64gb space grau in sehr gutem Zustand Inkl. OVP', 2009776),
(29, 'Apple iPhone 6 Plus - 128GB - Silber (Ohne Simlock) A1687 (CDMA + GSM)', 3954518),
(30, 'IPhone 6s Apple 64GB Black Space Gray 4.7\"\" IOS 15 Original Cellular Smartphone', 2318109),
(31, 'iphone 15 pro 128gb', 11723694),
(32, 'iPhone 15, 128GB - Black New', 9713917),
(33, 'iphone 14 256gb yellow', 5662151),
(34, 'apple iphone 11 64gb wei', 2713197),
(35, 'New ListingiPhone 11 64gb Black. Hinten mit Riss', 1825546),
(36, 'Apple iPhone 14 128GB Blue, Sehr guter Zustand! 87% Akku!', 7519912),
(37, 'iphone 13 pro max 128gb graphite', 8374067),
(38, 'iphone 13 pro reconditionn ', 8088788),
(39, 'Apple iPhone 13 128gb BLUE 100% Battery', 8357319),
(40, 'Refurbished iPhone SE2020 - 128GB - Uitstekende Staat', 3165397),
(41, 'Apple IPHONE XR 6.1\"\" 64GB Black Display Smartphone Billable VAT Included', 5641106),
(42, 'iphone 13 128gb', 6805841),
(43, 'Apple IPHONE 5c 16GB White Vintage Back\'Cell Smartphone', 4270271),
(44, 'Apple iPhone 7P 128GB Red Limited Edition 5.5\" Touch Id New Batt', 6190612),
(45, 'UTV Cell Phone Holder Mount  0.6\"-2\" Roll Bar for Polaris RZR Ranger Can Am X3', 539489),
(46, 'Apple IPHONE 8 64GB 4.7\"\" Black Smartphone Cellular VAT Included Billable', 4253021),
(47, 'Apple iPhone 12 5G 64GB - Green', 7017468),
(48, 'iPhone 16 128GB Black Network Unlocked NEW Apple Warranty Fast Shipping', 15575764),
(49, 'Iphone 2g 8gb 1. generation  with original box and accessories', 76394110),
(50, 'NOWY Apple iPhone 16 Pro Max 256GB Pustynny Tytan PL MEGA ZESTAW Gratisy 5G', 25278839),
(51, 'Three Ireland Iphone Unlocking Service - PREMIUM ', 870902),
(52, 'Brand New Apple iPhone 12 Mini - 12 Months Warranty', 11304823),
(53, 'Canada Bell Iphone Unlocking Service', 2093516),
(54, 'iPhone 13 water protector for laptop', 130635),
(55, 'Brand New Apple iPhone 12 Pro - 12 Months Warranty', 14989412),
(56, 'Brand New Apple iPhone 12 - 12 Months Warranty', 13984524),
(57, 'Iphone 13 - 128GB - wie Neu - Rot - mit Hlle - Ladekabel und Originalverpackung', 6481528),
(58, 'Apple iPhone 7 - 128GB - Diamantschwarz (Simlock nicht bekannt) in OVP', 2512220),
(59, 'Apple IPHONE 12 12 128GB White 6.1\"\" Display Oled 12MP Camera Chip A14 Bionic', 9885083),
(60, 'Apple IPHONE 6 64GB Black Space Gray 4.7\"\" IOS 15 Original Cellular Smartphone', 653512),
(61, 'Apple IPHONE 8 64GB 4.7\"\" Black Cellular Smartphone Included VAT', 3907507),
(62, 'IPHONE 13 Protector von Der Wasser fr Das Mobile', 129630),
(63, 'IPhone 6s Apple 16GB Black Space Gray 4.7\"\" IOS 15 Smartphone Cellular Orig', 653512),
(64, 'Shop on eBay', 20),
(65, 'Shop on eBay', 20),
(66, '!!New in Box!! - Armor Case for iPhone 15', 206177),
(67, 'Tim Cook Signed Autographed Iphone 15 Pro Box CEO Apple BAS COA AE47284 Beckett', 11903841),
(68, 'Iphone15Pro Casetify Hello Kitty 50Th Anniversary', 2344929),
(69, 'DSQUARED2 Case iPhone 15 Pro Max', 161094),
(70, 'iFace Reflection iPhone 15 Case Clear Glass PurpleShockproof Transparent', 669480),
(71, 'Gourmandise Pikachu iPhone 15/14/13 Case', 634880),
(72, 'Mickey Mouse iPhone15ProMax Glass Flip Case Disney Store Japan New F/S', 943907),
(73, 'Goodnight Oyasumi Punpun iPhone 15 Pro Case', 237921),
(74, 'Marvel iPhone15ProMax Clear Hybrid Case Disney Store Japan New F/S w/T', 775505),
(75, 'NEW Gourmandise mofusand IIIIfit iPhone 15 / 14 / 13 compatible from JAPAN', 613452),
(76, 'iFace Reflection iPhone 15 Pro Case Clear Glass Beige', 644244),
(77, 'NEW Gourmandise mofusand iPhone 15 Pro compatible retro flip ph from JAPAN', 568217),
(78, 'Case iPhone 15 Pro Max with Postage Stamp GUR Black', 396800),
(79, 'Case iPhone 15 Pro Max with postage stamp Everything will be UA Black', 396800),
(80, 'CASETiFY x Sanrio Hello Kitty Shopkeeper Collectible Case iPhone 15 Pro New', 2856960),
(81, 'Case iPhone 15 Pro Max with Postage Stamp Russian Warship, iDi...! Black', 396800),
(82, 'NEW Gourmandise mofusand IIIIfit iPhone15 Pro Max Case Shark Ny from JAPAN', 554250),
(83, 'Ariel Glass Flip Case for iPhone15 Disney Store Japan New w/T F/S', 943907),
(84, ' Case [Glossy] Shockproof Protective Slim Series for iPhone 15 Gladiator Black', 261253),
(85, 'NEW Gourmandise Chiikawa iPhone 15/14 Compatible Retro Flip Pho from JAPAN', 515205),
(86, 'Miffy iPhone 15 Pro Case - Cute & Protective Soft Cover Japan', 513935),
(87, 'Sanrio Hangyodon Camera Cover Compatible with iPhone 15/15 Plus/14 Plus', 874547),
(88, 'Gourmandise Miffy IIIIfit Clear iPhone15/14/13 Case Flower 6.1 inch NEW JAPAN', 419179),
(89, 'Chiikawa m1116 In Kind  Smartphone Case Iphone15Pro Momonga', 825026),
(90, 'NEW Gourmandise mofusand IIIIfit iPhone15 Pro compatible case a from JAPAN', 556154),
(91, 'Sanrio Cinnamoroll Camera Cover Compatible with iPhone 15/15 Plus/14 Plus', 874547),
(92, 'Ariel Glass Flip Case for iPhone15Pro Disney Store Japan New F/S w/T', 943907),
(93, 'Case iPhone 15 Pro Max with Stamp Good evening, we are from Ukraine Black', 396800),
(94, 'Berserk Guts iPhone 15 Pro Case', 237921),
(95, 'Case iPhone 15 Pro Max with postage stamp SBU Black', 396800),
(96, 'Marvel iPhone15Plus Gradient Hybrid Case Disney Store Japan New w/T F/S', 837565),
(97, 'Allegiant Air iPhone 15 Plus Case', 285378),
(98, 'BTS BT21 Goods Hope in Love MagSafe Phone Case iPhone15Pro 15Pro Max By Elago', 940644),
(99, 'NEW Gourmandise mofusand IIIIfit iPhone15/14/13 compatible case from JAPAN', 654243),
(100, 'Gourmandise Miffy IIIIfit Clear iPhone 15/14/13 Case Face Pattern MF-441A Japan', 534568),
(101, 'Disney Marie Gradient Hybrid Case for iPhone15 Disney Store Japan New F/S w/T', 773601),
(102, 'Toy Story iPhone15Plus Clear Hybrid Case Disney Store Japan New w/T F/S', 775505),
(103, 'iFace Reflection Neo iPhone 15 Pro Case Clear Glass Yellow Neon Fluorescent', 658211),
(104, 'Harry Potter Hogwarts, Platform 9 3/4, Chocolate Frog iPhone 15 Case NEW', 238080),
(105, 'QsmQam Tempered Camera Glass Screen Protector For iPhone 15 Pro Max Ultra 4 Pack', 39680),
(106, 'iFace Reflection iPhone 15 Case Clear Red Glass Strap Hole', 631546),
(107, 'NEW Gourmandise mofusand IIIIfit Clear Efit Clear iPhone15 Pro  from JAPAN', 556472),
(108, 'Ariel clear hybrid case for iPhone15 Disney Store Japan New w/T F/S', 750904),
(109, 'iFace Reflection iPhone 13, 14, 15 Case Clear Glass 6.1\" Black Anti Shock', 317281),
(110, 'Winnie the Pooh iPhone15Plus Clear Hybrid Case Disney Store Japan New w/T F/S', 775505),
(111, 'Chiikawa m118  Iphone15Pro Case Cover Ice Cream Rabbit', 987079),
(112, 'Sanrio Character Jelly Phone Cases', 483081),
(113, 'NEW Gourmandise mofusand IIIIfit Clear Efit Clear iPhone15 Plus from JAPAN', 571868),
(114, 'NEW Gourmandise mofusand IIIIfit Loop iPhone 15 Pro Case Shark  from JAPAN', 753443),
(115, 'Sanrio iPhone 15 Case  Smartphone Case, iPhone 15 Cover, TPU Lens Protection,', 555361),
(116, 'Sanrio My Melody Camera Cover Compatible with iPhone 15/15 Plus/14 Plus', 874547),
(117, 'Sanrio Characters Cinnamoroll Retro mobile phone style iPhone 15 14 Case Japan', 712970),
(118, 'Mob Psycho 100 Mobile Phone Shell Autumn Winter Plush Dimple Protective Case', 248079),
(119, 'Flip Magnetic Wallet Phone Case For iPhone 15 16 14 13 12 11 TCL 50 SE 305 405 ', 82375),
(120, 'Ted Baker Case iPhone 15', 201368),
(121, 'NEW Gourmandise Pokemon iPhone15 Pro Soft Case Mew POKE-865D from JAPAN', 512665),
(122, 'DSQUARED2 Case iPhone 15 Pro', 120820),
(123, 'Cinnamoroll Retro mobile phone style iPhone 15 14 case Sanrio SANG-382CN NEW', 713922),
(124, 'Chiikawa x Sanrio Hello Kitty Cinnamoroll Kuromi Magsafe iPhone 15 Pro Max Case', 206177),
(125, 'iFace Reflection Neo iPhone 15 Pro Case Clear Glass Green Neon Fluorescent', 652656),
(126, 'Pokemon Case iPhone 15', 302052),
(127, 'Soft 3D Love Heart Phone Case For Apple iPhone 16 15 14 13 12 11 Pro Max XR XS', 63329),
(128, 'Magnetic Leather Flip Wallet Phone Case For iPhone 15 14 13 12 11 Pro Max XR 8', 82534),
(129, 'KATE SPADE iPhone 15 Clear phone case Graphic Leopard NEW', 482508),
(130, 'Sanrio iPhone 15 Case Smartphone Case, iPhone 15 Cover, TPU Lens Protection,', 555361),
(131, ' Damda Glide Hybrid Phone Case Designed for iPhone 15 Pro Max Groove Khaki', 612817),
(132, 'iFace Reflection Neo iPhone 15 Clear Glass Case Pink ClearKorean Shockproof', 652656);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ip15_ebay`
--
ALTER TABLE `ip15_ebay`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ip15_ebay`
--
ALTER TABLE `ip15_ebay`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
