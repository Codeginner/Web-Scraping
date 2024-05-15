-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 06:59 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbo_scraping_databrg`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_ps5`
--

CREATE TABLE `data_ps5` (
  `ID` int(11) NOT NULL,
  `nama_brg` varchar(200) NOT NULL,
  `harga` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_ps5`
--

INSERT INTO `data_ps5` (`ID`, `nama_brg`, `harga`) VALUES
(1, 'NEW Sony PlayStation 5 PS5 Console Disc Version  IN HAND  FREE SHIPPING', '11427857'),
(2, 'New Sony PlayStation 5 Console Disk Version PS5 Blu-Ray Ships Next Day Fast Ship', '11698285'),
(3, 'Sony PS5 PlayStation 5 Blu-Ray Disc Game Console  NEW FAST SHIPPING! ', '11126857'),
(4, 'Sony PS5 Blu-Ray Edition Console (disc version) - Ships NEXT Day!', '10713571'),
(5, 'New ListingSony PS5 Blu-Ray Edition Console - White', '10142857'),
(6, 'Sony Playstation 5 Console Disc Version PS5 - Inhand & ready to SHIPS FREE FAST', '10857000'),
(7, 'Sony PS5 PlayStation 5 Digital Edition Console - Ships NEXT Day!', '10570714'),
(8, 'New ListingSony PS5 Blu-Ray Edition Console - White', '9285714'),
(9, 'Sony PS5 Blu-ray Edition Games Console-White', '10016542'),
(10, 'Sony Playstation 5 Digitals (PS5) Console  New & Sealed  Free Postage ', '11155693'),
(11, ' Sony PlayStation PS5 Digitals Edition Console BRAND NEW  + EXTRA CONTROL', '9617142'),
(12, 'NEW Sony Playstation 5 PS5 Console Disc Version IN HAND - FREE SHIPPING', '11357000'),
(13, 'Sony PlayStation 5 PS5 Console Disc Version *NEW* FREE OVERNIGHT SHIP TODAY!', '12271428'),
(14, 'Sony Playstation 5 PS5 DIGITALEDITION | FREE SHIP | AU WARRANTY | BRAND NEW', '11282205'),
(15, 'NEW Sony Playstation 5 PS5 Console Disc Version IN HAND - FREE SHIPPING ', '14285571'),
(16, 'Sony PS5 Digital  PlayStation 5 Digital Console  NEW  TUE 25TH JAN DESPATCH ', '9616950'),
(17, 'Sony PS5 Blu-Ray Edition Console - White', '8785714'),
(18, ' Sony PlayStation 5 PS5 Disc Edition', '9809485'),
(19, 'Sony Playstation 5 Disc (PS5) Console  Brand New & Sealed  Free Postage ', '11925064'),
(20, 'Sony PS5 Blu-Ray Edition Console - White', '7500000'),
(21, 'Sony PS5 Blu-Ray Edition Console - White (FREE SHIPPING) (SHIPS NOW)', '10000000'),
(22, 'SONY PlayStation 5 Console Disc Edition BRAND NEW IN HAND * FREE SHIP TODAY**PS5', '11428428'),
(23, 'Sony PS5 Disc Edition Bundle', '10048854'),
(24, 'PS5 Digital Edition Console New And Sealed!', '9405565'),
(25, 'PS5 Disc Version Sony PlayStation Console Good Box Brand New Ships Fast', '9428571'),
(26, 'Sony PlayStation 5 Disc PS5 Blu-Ray Edition Console - White - Brand New!', '8714285'),
(27, 'Sony PlayStation 5 (PS5) Digital Console - Brand New & Sealed  Trusted ', '8846809'),
(28, 'NEW | Sony PS5 PlayStation 5 Console | Blu-Ray Disc or Digital | FREE OVERNIGHT', '10999857'),
(29, 'Sony PlayStation 5 Console Digital Version + 100% BRAND NEW + 2-Day Shipping!', '10557142'),
(30, 'Sony Playstation 5 PS5 Digital Console | Brand New and Sealed | Free Delivery', '10001828'),
(31, 'Sony PlayStation 5 PS5 Console Disc  IN HAND  SEALED  FREE SHIPPING', '10142714'),
(32, 'Sony PlayStation 5 (PS5) Digital Edition Console - TRUSTED SELLER Free P+P ', '9039152'),
(33, 'Sony PS5 Blu-Ray Edition Console - White', '13000000'),
(34, 'Sony PS5 Blu-Ray Edition Console - White - New, Unopened!', '7142857'),
(35, 'Sony PS5 Blu-Ray Edition Console - White', '9000000'),
(36, 'New ListingSony Playstation 5 - PS5 Blu-Ray Disc Edition - FREE SHIPPING', '10914285'),
(37, 'Sony PlayStation 5 Disc Edition PS5  BRAND NEW | NEXT DAY DELIVERY  ', '10963542'),
(38, 'Sony PS5 Blu-Ray Edition Console - White', '8655428'),
(39, 'Sony PlayStation 5 PS5 Blu-Ray Disc Edition Console FREE SHIPPING SHIPS TODAY', '10571285'),
(40, 'Sony PlayStation 5 DigitalEdition PS5 Console - New - Free Next Day Delivery', '9424607'),
(41, 'BRAND NEW Sony PS5 Blu-Ray Edition Console - White with extra PS5 CONTROLLER', '10000000'),
(42, 'Sony Playstation PS5 - DIGITALEDITION BRAND NEW IN HAND - SHIPS SAME DAY! ', '9928571'),
(43, 'PS5 Playstation 5 Console Disc Version Sony - BRAND NEW - IN HAND/SHIPS FAST', '11142857'),
(44, 'Sony PlayStation PS5 Blu-Ray Edition Console ', '11713680'),
(45, 'Sony PS5 Blu-Ray Edition White NEW SEALED', '9571428'),
(46, 'PS5 Digital Bundle Brand New Extra Controller + Headset Fast Shipping ', '10962581'),
(47, 'New Sealed Sony PS5 Blu-Ray Edition Console - White', '8714285'),
(48, 'Sony PlayStation 5 PS5 Disc Console - Brand New - FREE NEXT DAY DELIVERY ', '11444400'),
(49, 'PS5 Sony PlayStation 5 Console Disc Version BRAND NEW  IN HAND/SHIPS FAST', '10828571'),
(50, 'Sony PS5 Blu-Ray Edition Console - White', '8714285'),
(51, 'New Sony PS5 Blu-Ray Edition Console - White Playstation 5 - Factory Sealed', '9999857'),
(52, 'Sony PS5 Blu-Ray Edition Console - White (Ships Next Day!!)', '8714285'),
(53, 'Sony PS5 Blu-Ray Edition Console - White - Free Shipping!', '8714285'),
(54, 'Sony Playstation 5 Disc Edition - PS5 - New and Sealed with Extra Controller', '10194171'),
(55, 'Sony PS5 Blu-Ray Edition Console UNOPENED SEALED FREE SHIPPING SHIPS IMMEDIATELY', '8571428'),
(56, 'Sony PS5 Digital Edition Games Console-White NEW, invoice, SEALED', '7948611'),
(57, 'Sony Playstation 5 PS5 Disc Edition Console  BRAND NEW FACTORY SEALED!!', '8501554'),
(58, 'sony playstation 5 console ps5 disc version', '10721428'),
(59, 'New ListingPLAYSTATION 5 - PS5 - DISC EDITION - BLU-RAY - CONSOLE - SONY- WHITE', '8000000'),
(60, 'Sony PlayStation 5 PS5 Console Disc Edition  New IN HAND FAST UPS Shipping ', '8857142'),
(61, 'Sony PS5 Blu-Ray Edition Console - White', '8285714'),
(62, 'Sony PS5 PlayStation 5 DISC Edition White Blu-Ray NEW SEALED IN HAND SHIP FAST', '9857142'),
(63, 'PlayStation 5 (PS5) Digital Edition - BRAND NEW  - NEXT DAY DELIVERY ', '9136285'),
(64, 'Sony PlayStation 5 PS5 Disc Edition Console  BRAND NEW  NEXT DAY DELIVERY ', '10578664');

-- --------------------------------------------------------

--
-- Table structure for table `data_xbox`
--

CREATE TABLE `data_xbox` (
  `ID` int(11) NOT NULL,
  `nama_brg` varchar(200) NOT NULL,
  `harga` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_xbox`
--

INSERT INTO `data_xbox` (`ID`, `nama_brg`, `harga`) VALUES
(1, 'Microsoft Xbox Series X 1 TB Console BRAND NEW IN HAND SHIPS FAST', '11126857'),
(2, 'Microsoft Xbox Series X - Bundle', '11428428'),
(3, 'Microsoft Xbox Series X Halo Infinite Console with Extra Controller Bundle', '13985714'),
(4, 'Microsoft - Xbox Series X 1TB Console | Black In Hand FAST SHIP FREE NEW', '9142714'),
(5, 'Xbox Series S Fortnite & Rocket League Bundle + Game Pass Ult. 1 Month (Email)', '4285571'),
(6, 'Microsoft Xbox special edition Clear Skeleton Black JAPAN Limited Console', '5071428'),
(7, 'NEW Microsoft Xbox Series S 512 GB, All-Digital Console, Disc-free Gaming, White', '2250000'),
(8, 'Boxed Xbox 360 Slim Console 320gb hd + extra250gb 2 Wireless Controllers & Games', '1019417'),
(9, 'New ListingMicrosoft Xbox Series X 1TB Black Console', '8270550'),
(10, 'New ListingXbox one X', '1712505'),
(11, 'Microsoft Xbox 360 Console 1 Controller, Power & AV Cable', '653773'),
(12, 'Microsoft Xbox Series S 512GB Game Console-White', '3198831'),
(13, 'Microsoft Xbox Series X 1 TB Console BRAND NEW IN HAND! SHIPS FAST TODAY!!', '9999857'),
(14, 'Microsoft XBOX SERIES X 1TB Video Game Console IN HAND BRAND NEW FREE SHIPPING', '10714142'),
(15, 'New ListingXbox One S - 500GB & 2TB Ext Hard Drive w/ 12 Games. Mint.  Read Description. ', '3714285'),
(16, 'Microsoft Xbox Series S', '3192857'),
(17, 'Microsoft Xbox One 500GB Console', '1307739'),
(18, 'New ListingXbox 360, 250Gb, 20. Games and Accessory Pack', '702773'),
(19, 'Microsoft Xbox Series X 1TB Video Game Console - Black IN HAND - FAST SHIPPING', '9828571'),
(20, 'Original Microsoft Xbox Black Console ', '769179'),
(21, 'Microsoft Xbox 360 S 250 GB WHITE + KINEKT + 2 controllers +3 Games', '4830558'),
(22, 'Xbox 360 1439 Bundle with kinect and 13 games.', '673200'),
(23, 'Xbox Series S 512GB SSD Console w/ Xbox Wireless Controller + Nyko Wired Headset', '4999857'),
(24, 'Original Microsoft Xbox Console, 2 controllers, leads, 1 game, manual and box', '615497'),
(25, 'Xbox Original Console Bundle With 17x Games, 2x Controllers', '1923236'),
(26, 'Microsoft Xbox Series X 1TB Console Halo Infinite Limited Edition Bundle', '10857142'),
(27, 'Microsoft Xbox Series X 1TB Console Halo Infinite Limited Edition Bundle IN HAND', '11155693'),
(28, 'Microsoft Xbox One X 1TB Black Console', '3269828'),
(29, ' Microsoft Xbox One X Black 1TB Video Gaming Console w/ Controller New Sealed', '8542428'),
(30, 'Microsoft Xbox Series X 1TB Console with Extra Wireless Controller - Pulse Red', '10414285'),
(31, 'Look!! Xbox Original Limited Edition Boxed', '1442379'),
(32, 'Xbox Series S 512GB SSD Console + Xbox Game Pass Ultimate 1 Month (Email)', '4285571'),
(33, 'Microsoft Xbox Series S 512gb + Borderlands 3 Ultimate Edition', '4523600'),
(34, 'XBOX CRYSTAL VIDEO GAME SYSTEM WITH PLAYBACK KIT AND CONTROLLER          #ET#', '1057693'),
(35, '*SEALED BOX* Microsoft Xbox One S All-Digital Edition + WIRES, PAD + WARRANTY', '4808379'),
(36, 'Microsoft Xbox 360 4GB Black Console (PAL), 20 Games Bundle, Controller/Wires!!!', '1153864'),
(37, 'Xbox Series X 1TB Console Black', '7462902'),
(38, 'Microsoft Xbox Series X 1tb Console-Black-NEW', '9677272'),
(39, 'Microsoft Xbox One X 1TB Black Console - With Accessories', '3462171'),
(40, 'New ListingXbox Series S with 2 tb External hard drive, stick grips and pad cover & stands', '3462171'),
(41, 'Xbox Series S Console + Rocket League + Fortnite  - UK Seller', '3173657'),
(42, 'Original Xbox Green Limited Edition Console With 2 Pads And Box Complete', '5385600'),
(43, 'New ListingMicrosoft Xbox One X 1TB Black Games Console', '1954841'),
(44, 'Microsoft Xbox One S FIFA 17 Bundle 500GB Storm Grey Console', '3461979'),
(45, 'XBox Series X Console - Black *BRAND NEW, ON HAND*', '8428571'),
(46, 'Xbox 360 250GB Console - Controller and 10 Games ', '961521'),
(47, 'Microsoft Xbox Series X 1TB Console BRAND NEW Factory Sealed **FREE SHIP TODAY**', '9999857'),
(48, 'Microsoft Xbox One Halo: The Master Chief Collection Bundle 500GB Black Console', '1142857'),
(49, 'Microsoft Xbox One 500GB Console, Original Box, Controller, Kinect & 20 Games', '3558342'),
(50, 'Microsoft Xbox Series S 512GB Video Game Console - White', '3285714'),
(51, 'Microsoft Xbox One s 1 tb', '1308612'),
(52, 'Microsoft Original Xbox HD+ 3tb XboxHd+ Mod OpenXenium Refurbished Console', '11540379'),
(53, 'Microsoft Xbox Series S 512GB Video Game Console - White', '2714285'),
(54, 'xbox one day one edition', '961714'),
(55, 'Xbox 360 Elite Black Console Refurbished', '480664'),
(56, 'XBOX SERIES X (MADDEN 22 DISC, 1 CONTROLLER INCLUDED) IMMACULATE CONDITION', '8285714'),
(57, 'Xbox Series x Console NEW NEW OVP invoice', '6413818'),
(58, 'Microsoft Xbox Series X 1TB Video Game Console - Black Free FAST Delivery', '7999857'),
(59, 'Microsoft Xbox 360 Slim 500gb Blue Limited Edition NEW + 2 games', '5008109'),
(60, 'Microsoft XBOX Series  X 1TB - Fast Free Shipping - Brand New', '9985714'),
(61, 'XBOX SERIES X Halo Infinite Limited Edition  Trusted Seller ', '11540379');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_ps5`
--
ALTER TABLE `data_ps5`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `data_xbox`
--
ALTER TABLE `data_xbox`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_ps5`
--
ALTER TABLE `data_ps5`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `data_xbox`
--
ALTER TABLE `data_xbox`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
