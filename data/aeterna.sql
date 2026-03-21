-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2026 at 04:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hendiganteng`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `ID` int(11) NOT NULL,
  `Skin` int(11) DEFAULT 1,
  `Anim` int(11) DEFAULT 0,
  `PosX` float DEFAULT 0,
  `PosY` float DEFAULT 0,
  `PosZ` float DEFAULT 0,
  `PosA` float DEFAULT 0,
  `Name` varchar(24) DEFAULT NULL,
  `World` int(11) DEFAULT 0,
  `Interior` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`ID`, `Skin`, `Anim`, `PosX`, `PosY`, `PosZ`, `PosA`, `Name`, `World`, `Interior`) VALUES
(1, 178, 1485, 1214.01, -4.59171, 1001.33, 289.456, 'Tala Jasmine', 55, 2),
(2, 12, 0, -31.0421, -30.6915, 1003.56, 356.681, 'SPG Toko', 0, 4),
(4, 87, 412, 487.886, -1.82833, 1002.38, 179.642, 'Caroline', 5, 17),
(5, 91, 389, 506.551, -7.5024, 1000.68, 25.5407, 'kelly', 5, 17),
(6, 206, 31, 317.063, -138.759, 1004.06, 85.5636, 'Thomas', 0, 7),
(10, 30, 952, -959.166, 2833.33, 91.364, 181.504, 'Bos Kevlar', 0, 0),
(11, 15, 0, -1861.31, -1552.36, 21.75, 355.6, 'Pembuat Senjata', 0, 0),
(12, 1, 0, 379.135, -2018.39, 7.83009, 93.3385, 'Kang Rental', 0, 0),
(13, 244, 1488, 1208.19, -6.79275, 1001.33, 8.12434, 'Jaslene Casey', 55, 2),
(14, 246, 1487, 1217.84, -6.43047, 1001.33, 176.28, 'Kaety Abbigayle', 55, 2),
(15, 28, 418, 1203.47, 12.4671, 1000.92, 179.921, 'Urine Yabiyn', 55, 2);

-- --------------------------------------------------------

--
-- Table structure for table `adminlogs`
--

CREATE TABLE `adminlogs` (
  `Name` varchar(64) DEFAULT 'N/A',
  `UCP` varchar(64) DEFAULT 'N/A',
  `Rank` varchar(64) DEFAULT 'N/A',
  `Activity` varchar(320) DEFAULT 'N/A',
  `Time` varchar(320) DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `adminlogs`
--

INSERT INTO `adminlogs` (`Name`, `UCP`, `Rank`, `Activity`, `Time`) VALUES
('Rayy_Bonelo', 'Rayyzix', '{FFB5C5}Management', 'menggunakan cmd /setmoney untuk Rayy_Bonelo dengan jumlah $500,000.', '2025-05-27 15:10:31'),
('Rayy_Bonelo', 'Rayyzix', '{FFB5C5}Management', 'Menggunakan cmd /setfaction kepada Rayy_Bonelo menjadi Faction Kepolisian Agartha - AKP.', '2025-05-29 07:35:16'),
('Jaxvier_Luce', 'zeex', '{FFB5C5}Management', 'Menggunakan cmd /giveweap Desert Eagle(100 ammo) kepada akun dengan nama Jaxvier_Luce.', '2025-08-13 22:40:59'),
('Jaxvier_Luce', 'zeex', '{FFB5C5}Management', 'Menggunakan cmd /makepv membuat kendaraan Sultan dan diberikan kepada Jaxvier_Luce.', '2025-08-13 22:43:12'),
('Jaxvier_Luce', 'zeex', '{FFB5C5}Management', 'Menggunakan cmd /makepv membuat kendaraan Elegy dan diberikan kepada Jaxvier_Luce.', '2025-08-13 22:44:25'),
('Jaxvier_Luce', 'zeex', '{FFB5C5}Management', 'Menggunakan cmd /makepv membuat kendaraan Sanchez dan diberikan kepada Jaxvier_Luce.', '2025-08-13 22:48:57'),
('Jaxvier_Luce', 'zeex', '{FFB5C5}Management', 'Menggunakan cmd /setvip {FF0000}Rangers Merah 0 hari kepada akun Jaxvier_Luce.', '2025-08-14 02:47:19'),
('Jaxvier_Luce', 'zeex', '{FFB5C5}Management', 'Menggunakan cmd /importveh membuat kendaraan Infernus dan diberikan kepada Jaxvier_Luce.', '2025-08-14 02:48:00'),
('Jaxvier_Luce', 'zeex', '{FFB5C5}Management', 'Menggunakan cmd /giveweap Shotgun(100 ammo) kepada akun dengan nama Jaxvier_Luce.', '2025-08-14 02:53:56'),
('Max_Escanor', 'HennCoyy', '{FFB5C5}Management', 'Menggunakan cmd /giveweap Desert Eagle(100 ammo) kepada akun dengan nama Max_Escanor.', '2026-02-10 22:08:48'),
('Max_Escanor', 'HennCoyy', '{FFB5C5}Management', 'Menggunakan cmd /giveweap Desert Eagle(1 ammo) kepada akun dengan nama Max_Escanor.', '2026-02-10 22:49:18'),
('Max_Escanor', 'HennCoyy', '{FFB5C5}Management', 'Menggunakan cmd /giveweap Desert Eagle(1 ammo) kepada akun dengan nama Max_Escanor.', '2026-02-10 22:49:25'),
('Max_Escanor', 'HennCoyy', '{FFB5C5}Management', 'Menggunakan cmd /giveweap Desert Eagle(100 ammo) kepada akun dengan nama Max_Escanor.', '2026-02-10 22:49:35'),
('Max_Escanor', 'HennCoyy', '{FFB5C5}Management', 'Mereset password UCP HennCoyyy.', '2026-03-21 08:50:24'),
('Max_Escanor', 'HennCoyy', '{FFB5C5}Management', 'Mereset password UCP HennCoyyy.', '2026-03-21 09:00:48');

-- --------------------------------------------------------

--
-- Table structure for table `arrestrecord`
--

CREATE TABLE `arrestrecord` (
  `ID` int(11) DEFAULT -1,
  `Date` varchar(64) DEFAULT NULL,
  `Reason` varchar(64) DEFAULT NULL,
  `Issuer` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atms`
--

CREATE TABLE `atms` (
  `id` int(11) NOT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `posrx` float DEFAULT NULL,
  `posry` float DEFAULT NULL,
  `posrz` float DEFAULT NULL,
  `interior` int(11) DEFAULT 0,
  `world` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `atms`
--

INSERT INTO `atms` (`id`, `posx`, `posy`, `posz`, `posrx`, `posry`, `posrz`, `interior`, `world`) VALUES
(0, 431.978, -1313.39, 15.1255, 0, 0, 30, 0, 0),
(1, 883.144, 701.894, 5005.64, 0, -90, 180, 5, 5),
(23, 2570.8, 51.4296, 26.5844, 0, 0, 0, 0, 0),
(3, 1124.11, -2032.51, 69.9922, 0, 0, 0, 0, 0),
(4, 1308.12, -898.557, 39.6581, 0, 0, -0.999937, 0, 0),
(5, 1680.66, -2335.94, 13.5469, 0, 0, -180, 0, 0),
(6, 871.358, -1207.95, 16.9766, 0, 0, 90, 0, 0),
(7, 2871.57, -1988.48, 11.1384, 0, 0, 0, 0, 0),
(8, -90.7194, 1063.89, 20.2011, 0, 0, 0, 0, 0),
(9, 1628.67, -1992.58, 1137.11, 0, -90, 180, 0, 0),
(10, 718.465, -1252.56, 14.2497, 0, -90, 180, 0, 0),
(11, 1517.44, -2880.44, 1586.5, 0, 0, -180, 6, 6),
(12, 1109.35, -1241.17, 16.1203, 0, 0, -93.1, 0, 0),
(13, 2409.53, -1391.12, 24.4864, 0, 0, 180, 0, 0),
(36, 1458.2, 2785.68, 11.2203, 0, -90, 90, 0, 0),
(15, 1290.03, -1875.55, 13.674, 0, 0, 90, 0, 0),
(16, -2023.85, 480.972, 35.178, 0, 0, -90, 0, 0),
(17, 1207.45, -14.1253, 1000.92, 0, 0, 179.4, 2, 55),
(18, 113.683, -312.054, 1.98812, 0, 0, -90, 0, 0),
(19, 1136.79, -11.7815, 1000.68, 0, 0, 178.6, 12, 2),
(20, -2187.65, 694.773, 53.8906, 0, 0, -180, 0, 0),
(21, 552.497, -1294.31, 17.2422, 0, 0, 180, 0, 0),
(22, 47.1849, 1219.91, 19.0075, 0, 0, -90, 0, 0),
(24, 252.827, -61.6965, 1.57812, 0, 0, 0, 0, 0),
(41, 812.657, -492.021, 17.3359, 0, 0, -174.4, 0, 0),
(26, -2208.25, -2260.2, 30.625, 0, 0, -40, 0, 0),
(2, 358.234, -2061.06, 7.91595, 0, 0, 90.6, 0, 0),
(27, 1394.18, 1578.41, 65.8602, 0, 0, 90, 5, 2),
(28, 663.394, -610.044, 16.394, 0, 0, 0, 0, 0),
(29, 38.3567, 1136.17, 19.7422, 0, 0, -90, 0, 0),
(30, -2621.98, 1344.59, 7.19531, 0, 0, 90, 0, 0),
(31, 2297.03, 961.022, 10.8203, 0, 0, -90, 0, 0),
(32, 1381.79, 295.721, 19.5547, 0, 0, -20, 0, 0),
(33, 2116.71, -1912.93, 13.8128, 0, 0, -90, 0, 0),
(34, 1011.88, -928.595, 42.4281, 0, 0, 0, 0, 0),
(35, 2151.52, -1404.48, 25.898, 0, 0, -90, 0, 0),
(14, 2637.81, -1985.77, 13.65, 0, 0, 130, 0, 0),
(37, 302.545, -129.831, 1000.1, 0, -90, 90, 7, 0),
(39, 1151.2, -1646.72, -30.4609, 0, 0, 86.6, 3, 1),
(40, 1006.08, -668.363, 121.186, 0, 0, -153.3, 0, 0),
(25, 1455.02, -1755.97, 13.5469, 0, 0, 178.9, 0, 0),
(42, 2174.66, -2257.66, 13.3047, 0, 0, -135.9, 0, 0),
(43, -2516.59, -625.373, 132.773, 0, 0, 177.1, 0, 0),
(44, 1170.97, -1330.21, 15.0073, 0, 0, 179.3, 0, 0),
(45, 657.358, -1504.27, 17.2984, 0, 0, -91.8, 0, 0),
(46, 2232.72, -1181.16, 25.8906, 0, 0, 178.3, 0, 0),
(47, 1530.59, -2182.38, 13.7369, 0, 0, 0, 0, 0),
(48, 2507.85, -1516.33, 24.0181, 0, 0, 87.7999, 0, 0),
(49, -2447.6, 528.05, 30.0132, 0, 0, 89.2, 0, 0),
(50, 1377.92, 787.037, 10.8483, 0, 0, 87.7, 0, 0),
(38, 2098.41, -1359.08, 23.9844, 0, 0, 0, 0, 0),
(51, 674.466, -461.716, 16.3474, 0, 0, 176.9, 0, 0),
(52, 1241.6, -1064.75, 29.4766, 0, 0, 80, 0, 0),
(53, 2206.91, -1150.99, 26.2407, 2.6, -89.1999, 0.800006, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `badside_brankas`
--

CREATE TABLE `badside_brankas` (
  `ID` int(11) DEFAULT -1,
  `fItemID` int(11) NOT NULL,
  `fItemName` varchar(32) DEFAULT NULL,
  `fItemModel` int(11) DEFAULT 0,
  `fItemQuantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bengkel_brankas`
--

CREATE TABLE `bengkel_brankas` (
  `PID` int(11) DEFAULT 0,
  `ID` int(11) NOT NULL,
  `Item` varchar(64) NOT NULL DEFAULT '-',
  `Model` int(11) DEFAULT 0,
  `Quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bengkel_brankas`
--

INSERT INTO `bengkel_brankas` (`PID`, `ID`, `Item`, `Model`, `Quantity`) VALUES
(0, 63, 'Repair Kit', 19921, 140),
(0, 65, 'Tools Kit', 19918, 153),
(0, 66, 'Tembaga', 11748, 19247),
(0, 67, 'Besi', 19809, 18051),
(0, 68, 'Petrol', 19621, 15601),
(0, 69, 'Pure Oil', 3632, 7878),
(0, 70, 'Nasi Goreng', 2355, 15),
(0, 73, 'Nasi Pecel', 2218, 10),
(0, 74, 'Es Teh', 1546, 5),
(0, 75, 'Batu Kotor', 3930, 200),
(0, 77, 'Rokok', 19896, 9),
(0, 79, 'Emas', 19941, 6),
(0, 81, 'Material', 19843, 4),
(0, 82, 'Senter', 18641, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bike_rentals`
--

CREATE TABLE `bike_rentals` (
  `RentID` int(11) NOT NULL DEFAULT -1,
  `RentalX` float DEFAULT 0,
  `RentalY` float DEFAULT 0,
  `RentalZ` float DEFAULT 0,
  `RentSpawnX` float DEFAULT 0,
  `RentSpawnY` float DEFAULT 0,
  `RentSpawnZ` float DEFAULT 0,
  `RentSpawnA` float DEFAULT 0,
  `RentType` int(11) DEFAULT 1,
  `RentTime` int(11) DEFAULT 0,
  `RentInterior` int(11) DEFAULT -1,
  `RentVW` int(11) DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bike_rentals`
--

INSERT INTO `bike_rentals` (`RentID`, `RentalX`, `RentalY`, `RentalZ`, `RentSpawnX`, `RentSpawnY`, `RentSpawnZ`, `RentSpawnA`, `RentType`, `RentTime`, `RentInterior`, `RentVW`) VALUES
(0, 1671.34, -2312.2, 13.5495, 1670.65, -2315.39, 13.3828, 94.5293, 1, 1800, 0, 0),
(1, 2758.74, -2413.93, 13.685, 2762.45, -2414.49, 13.685, 352.73, 1, 1800, 0, 0),
(3, 378.434, -2018.35, 7.83009, 372.56, -2016.15, 7.67188, 358.642, 1, 1800, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `blacklist_players`
--

CREATE TABLE `blacklist_players` (
  `PID` int(11) DEFAULT -1,
  `PoliceIssuer` varchar(64) DEFAULT '',
  `PoliceIssuerRank` varchar(64) DEFAULT '',
  `PoliceReason` varchar(320) DEFAULT '',
  `PoliceDuration` int(11) DEFAULT 0,
  `PemerintahIssuer` varchar(64) DEFAULT '',
  `PemerintahIssuerRank` varchar(64) DEFAULT '',
  `PemerintahReason` varchar(320) DEFAULT '',
  `PemerintahDuration` int(11) DEFAULT 0,
  `EMSIssuer` varchar(64) DEFAULT '',
  `EMSIssuerRank` varchar(64) DEFAULT '',
  `EMSReason` varchar(320) DEFAULT '',
  `EMSDuration` int(11) DEFAULT 0,
  `BengkelIssuer` varchar(64) DEFAULT '',
  `BengkelIssuerRank` varchar(64) DEFAULT '',
  `BengkelReason` varchar(320) DEFAULT '',
  `BengkelDuration` int(11) DEFAULT 0,
  `PedagangIssuer` varchar(64) DEFAULT '',
  `PedagangIssuerRank` varchar(64) DEFAULT '',
  `PedagangReason` varchar(320) DEFAULT '',
  `PedagangDuration` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blacklist_players`
--

INSERT INTO `blacklist_players` (`PID`, `PoliceIssuer`, `PoliceIssuerRank`, `PoliceReason`, `PoliceDuration`, `PemerintahIssuer`, `PemerintahIssuerRank`, `PemerintahReason`, `PemerintahDuration`, `EMSIssuer`, `EMSIssuerRank`, `EMSReason`, `EMSDuration`, `BengkelIssuer`, `BengkelIssuerRank`, `BengkelReason`, `BengkelDuration`, `PedagangIssuer`, `PedagangIssuerRank`, `PedagangReason`, `PedagangDuration`) VALUES
(1, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0),
(1, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0),
(2, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0),
(3, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0),
(4, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0),
(5, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0),
(6, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0),
(7, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0),
(8, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0),
(9, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0),
(10, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `brankas_bengkel`
--

CREATE TABLE `brankas_bengkel` (
  `id` int(11) NOT NULL DEFAULT 0,
  `RepairKit` int(11) DEFAULT 0,
  `ToolsKit` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brankas_bengkel`
--

INSERT INTO `brankas_bengkel` (`id`, `RepairKit`, `ToolsKit`) VALUES
(0, 1000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `brankas_ems`
--

CREATE TABLE `brankas_ems` (
  `id` int(11) NOT NULL DEFAULT 0,
  `moneysamd` int(11) DEFAULT 0,
  `medkit` int(11) DEFAULT 0,
  `pillstress` int(11) DEFAULT 0,
  `bandage` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brankas_ems`
--

INSERT INTO `brankas_ems` (`id`, `moneysamd`, `medkit`, `pillstress`, `bandage`) VALUES
(0, 1000, 4830, 1170, 4920);

-- --------------------------------------------------------

--
-- Table structure for table `brankas_gojek`
--

CREATE TABLE `brankas_gojek` (
  `id` int(11) NOT NULL DEFAULT 0,
  `moneygojek` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brankas_gojek`
--

INSERT INTO `brankas_gojek` (`id`, `moneygojek`) VALUES
(0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `brankas_lounges`
--

CREATE TABLE `brankas_lounges` (
  `id` int(11) NOT NULL DEFAULT 0,
  `sambal` bigint(20) DEFAULT 0,
  `beras` bigint(20) DEFAULT 0,
  `gula` bigint(20) DEFAULT 0,
  `garam` bigint(20) DEFAULT 0,
  `ikan` bigint(20) DEFAULT 0,
  `ayamfillet` bigint(20) DEFAULT 0,
  `susuolahan` bigint(20) DEFAULT 0,
  `airmineral` bigint(20) DEFAULT 0,
  `nasigoreng` bigint(20) DEFAULT 0,
  `bakso` bigint(20) DEFAULT 0,
  `nasipecel` bigint(20) DEFAULT 0,
  `buburpedas` bigint(20) DEFAULT 0,
  `susufresh` bigint(20) DEFAULT 0,
  `esteh` bigint(20) DEFAULT 0,
  `kopikenangan` bigint(20) DEFAULT 0,
  `cochomatcha` bigint(20) DEFAULT 0,
  `moneypedagang` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brankas_lounges`
--

INSERT INTO `brankas_lounges` (`id`, `sambal`, `beras`, `gula`, `garam`, `ikan`, `ayamfillet`, `susuolahan`, `airmineral`, `nasigoreng`, `bakso`, `nasipecel`, `buburpedas`, `susufresh`, `esteh`, `kopikenangan`, `cochomatcha`, `moneypedagang`) VALUES
(0, 10430, 10430, 10360, 13820, 16990, 19620, 20000, 10350, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `brankas_police`
--

CREATE TABLE `brankas_police` (
  `id` int(11) DEFAULT 0,
  `sapdmoney` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brankas_police`
--

INSERT INTO `brankas_police` (`id`, `sapdmoney`) VALUES
(0, 0),
(0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bulletin`
--

CREATE TABLE `bulletin` (
  `ID` int(11) DEFAULT NULL,
  `Date` varchar(64) DEFAULT 'N/A',
  `Text` varchar(128) DEFAULT 'N/A',
  `Issuer` varchar(24) DEFAULT 'N/A',
  `Suspect` varchar(24) DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `ID` int(11) NOT NULL,
  `Owner` varchar(64) DEFAULT NULL,
  `Name` varchar(128) DEFAULT NULL,
  `Money` int(11) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `Stock` int(11) DEFAULT NULL,
  `Price0` int(11) DEFAULT NULL,
  `Price1` int(11) DEFAULT NULL,
  `Price2` int(11) DEFAULT NULL,
  `Price3` int(11) DEFAULT NULL,
  `Price4` int(11) DEFAULT NULL,
  `Price5` int(11) DEFAULT NULL,
  `Price6` int(11) DEFAULT NULL,
  `Price7` int(11) DEFAULT NULL,
  `Price8` int(11) DEFAULT NULL,
  `Price9` int(11) DEFAULT NULL,
  `Price10` int(11) DEFAULT NULL,
  `World` int(11) DEFAULT NULL,
  `Interior` int(11) DEFAULT NULL,
  `pointX` float DEFAULT NULL,
  `pointY` float DEFAULT NULL,
  `pointZ` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`ID`, `Owner`, `Name`, `Money`, `Type`, `Stock`, `Price0`, `Price1`, `Price2`, `Price3`, `Price4`, `Price5`, `Price6`, `Price7`, `Price8`, `Price9`, `Price10`, `World`, `Interior`, `pointX`, `pointY`, `pointZ`) VALUES
(0, 'Alvian_Mahesa', 'Mahesa Market', 198700, 1, 0, 100, 100, 500, 500, 1000, 1500, 5000, 1000, 1500, 0, 0, 0, 0, 449.13, -1337.19, 15.25),
(1, 'Alvian_Mahesa', 'Mahesa Electronic', 1182000, 2, 481, 2000, 1500, 1000, 1500, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 454.04, -1333.77, 15.29),
(2, 'Zico_Ezzekiel', 'Marina', 210500, 2, 929, 2000, 2000, 1500, 2000, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 816.08, -1584.44, 13.55),
(3, 'Zico_Ezzekiel', 'Marina', 37850, 1, 857, 150, 150, 500, 500, 1000, 1500, 5000, 1000, 1500, 0, 0, 0, 0, 824.04, -1588.3, 13.54),
(4, 'Rifki_Sueb', 'LAMPUNG SHOP', 9800, 1, 964, 300, 200, 400, 100, 250, 150, 600, 2000, 1000, 0, 0, 0, 0, 781.33, -1572.81, 13.55),
(6, 'Lilith_Laskawara', 'LASKAWARA MARKET', 6275, 1, 831, 200, 150, 50, 100, 150, 600, 8000, 800, 1500, 0, 0, 0, 0, 388.04, -1897.24, 7.84);

-- --------------------------------------------------------

--
-- Table structure for table `buttons`
--

CREATE TABLE `buttons` (
  `ID` int(11) NOT NULL,
  `Faction` int(11) DEFAULT 0,
  `Faction2` int(11) DEFAULT 0,
  `Family` int(11) DEFAULT -1,
  `Owner` int(11) DEFAULT -1,
  `DoorModel` int(11) DEFAULT 0,
  `World` int(11) DEFAULT 0,
  `Interior` int(11) DEFAULT 0,
  `Speed` float DEFAULT 0,
  `ButtonX` float DEFAULT 0,
  `ButtonY` float DEFAULT 0,
  `ButtonZ` float DEFAULT 0,
  `ButtonRX` float DEFAULT 0,
  `ButtonRY` float DEFAULT 0,
  `ButtonRZ` float DEFAULT 0,
  `DoorCX` float DEFAULT 0,
  `DoorCY` float DEFAULT 0,
  `DoorCZ` float DEFAULT 0,
  `DoorCRX` float DEFAULT 0,
  `DoorCRY` float DEFAULT 0,
  `DoorCRZ` float DEFAULT 0,
  `DoorOX` float DEFAULT 0,
  `DoorOY` float DEFAULT 0,
  `DoorOZ` float DEFAULT 0,
  `DoorORX` float DEFAULT 0,
  `DoorORY` float DEFAULT 0,
  `DoorORZ` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `buttons`
--

INSERT INTO `buttons` (`ID`, `Faction`, `Faction2`, `Family`, `Owner`, `DoorModel`, `World`, `Interior`, `Speed`, `ButtonX`, `ButtonY`, `ButtonZ`, `ButtonRX`, `ButtonRY`, `ButtonRZ`, `DoorCX`, `DoorCY`, `DoorCZ`, `DoorCRX`, `DoorCRY`, `DoorCRZ`, `DoorOX`, `DoorOY`, `DoorOZ`, `DoorORX`, `DoorORY`, `DoorORZ`) VALUES
(0, 3, 0, -1, -1, 3089, 5, 5, 2, 894.182, 734.544, 5009.95, 0, 0, -90, 894.215, 734.239, 5009.75, 0, 0, -90, 894.215, 735.838, 5009.75, 0, 0, -90),
(1, 5, 0, -1, -1, 3089, 0, 0, 2, -64.9794, 1005.12, 24.4091, 0, 0, -86, -64.8638, 1004.89, 23.839, 0, 0, -90, -64.8638, 1006.48, 23.839, 0, 0, -90),
(2, 0, 0, -1, -1, 19912, 0, 0, 2, -86.2195, 1022.45, 20.8966, 0, 0, 89.1, -74.4435, 1022.37, 21.9805, 0, 0, 0.2, -74.5234, 1022.36, 16.4004, 0, 0, 0),
(3, 0, 0, -1, -1, 19302, 0, 0, 5, 830.098, -2017.46, 13.2772, 0, 0, -177.8, 828.74, -2017.5, 13.1472, 0, 0, 0, 828.74, -2017.5, 10.4972, 0, 0, 0),
(4, 0, 0, -1, -1, 19303, 1, 1, 1, -792.876, 495.755, 1372.27, 0, 0, 88.8, -791.871, 495.3, 1372.03, 0, 0, 0, -790.599, 495.238, 1371.96, 0, 0, 0),
(5, 3, 0, -1, -1, 3089, 5, 5, 3, 873.169, 726.597, 5009.42, 0, 0, 0, 871.557, 726.609, 5009.06, 0, 0, 0, 873.087, 726.609, 5009.06, 0, 0, 0),
(6, 0, 0, -1, -1, 2634, 1, 3, 1, 961.913, -4.53518, 1001.66, 0, 0, 0, 961.034, -4.4087, 1001.32, 0, 0, -179.8, 961.034, -4.4087, 998.587, 0, 0, -179.8),
(7, 3, 0, -1, -1, 3089, 5, 5, 0, 888.651, 709.318, 5009.95, 0, 0, 180, 886.815, 709.249, 5009.75, 0, 0, 0, 886.815, 709.349, 5009.85, 0, 0, -100),
(8, 0, 0, -1, -1, 19336, 0, 0, 1, 165.126, -1962.69, 4.25965, 0, 0, -124.1, 155.136, -1959.22, 2.73965, 0, 0, 0, 155.136, -1959.22, 53.9597, 0, 0, 0),
(9, 3, 0, -1, -1, 3089, 5, 5, 2, 894.191, 718.227, 5009.95, 0, 0, -90, 894.265, 718.399, 5009.75, 0, 0, 90, 894.265, 716.799, 5009.75, 0, 0, 90),
(10, 3, 0, -1, -1, 3089, 5, 5, 3, 870.659, 729.521, 5005.44, 0, 0, -90, 870.772, 729.708, 5005.34, 0, 0, 90, 870.772, 728.208, 5005.34, 0, 0, 90),
(11, 3, 0, -1, -1, 19302, 0, 0, 5, -2731.3, -333.54, 2092.5, 0, 0, 0, -2732.41, -333.509, 2092.2, 0, 0, 0, -2730.61, -333.509, 2092.2, 0, 0, 0),
(12, 6, 6, -1, -1, 3089, 0, 0, 3, 2877.14, -1997.35, 11.5684, 0, 0, -0.300005, 2877.21, -1998.86, 11.3184, 0, 0, 89.8, 2877.21, -2000.31, 11.3184, 0, 0, 89.8),
(13, 1, 3, -1, -1, 3089, 0, 0, 2.5, 238.403, 1873.31, 12.0109, 0, 0, -89.8999, 238.439, 1873.06, 11.2809, 0, 0, -90, 238.439, 1874.62, 11.2809, 0, 0, -90),
(14, 1, 1, -1, -1, 19857, 0, 0, 2.5, 240.337, 1862.78, 14.3773, 0, 0, 178.9, 238.583, 1862.77, 14.3602, 0, 0, 0, 237.023, 1862.77, 14.3602, 0, 0, 0),
(15, 1, 3, -1, -1, 3089, 0, 0, 2.5, 248.159, 1842.12, 9.30269, 0, 0, -179.9, 248.596, 1842.12, 9.01345, 0, 0, 0, 250.136, 1842.12, 9.01345, 0, 0, 0),
(16, 1, 3, -1, -1, 3089, 0, 0, 2.5, 295.629, 1821.66, 8.41052, 0, 0, 0, 295.977, 1821.67, 7.98052, 0, 0, 0, 294.477, 1821.67, 7.98052, 0, 0, 0),
(17, 0, 0, -1, -1, 0, 0, 0, 3, -2731.3, -333.44, 2092.4, 0, 0, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 3, 0, -1, -1, 971, 0, 0, 2, -2179.51, 661.392, 49.9375, 0, 0, 90, -2175.1, 661.411, 51.9215, 0, 0, 0, -2175.1, 661.411, 42.3216, 0, 0, 0),
(19, 3, 0, -1, -1, 19870, 0, 0, 1, -2176.38, 711.316, 54.1906, 0, 0, 0, -2181.34, 711.664, 54.6906, 0, 0, 0, -2181.38, 711.668, 57.5906, 0, 0, 0),
(20, 3, 0, -1, -1, 19870, 0, 0, 1, -2186.92, 711.3, 54.3906, 0, 0, 0, -2186.75, 711.601, 54.6906, 0, 0, 0, -2186.75, 711.601, 57.5906, 0, 0, 0),
(21, 0, 0, 2, -1, 11432, 0, 0, 3, -2435.74, 517.332, 29.2016, 0, 0, 90, -2438.69, 494.849, 31.5008, 0, 0, 20, -2438.69, 494.549, 36.1007, 0, 0, 20),
(22, 3, 0, 10, -1, 3089, 0, 0, 3, 1447.09, 2791.73, 11.3319, 0, 0, 0.00001, 1445.14, 2791.71, 10.9319, 0, 0, 0, 1443.64, 2791.71, 10.9319, 0, 0, 0),
(23, 3, 0, 10, -1, 3278, 0, 0, 3, 1457.07, 2772.27, 11.3203, 0, 0, -110, 1457.52, 2773.79, 10.8319, 0, 0, -90, 1457.52, 2771.29, 10.8319, 0, 0, -90),
(24, 5, 0, -1, -1, 19912, 0, 0, 2, -86.5137, 1063.65, 20.7811, 0, 0, 0, -86.4493, 1052.25, 21.1411, 0, 0, -89.5999, -86.4493, 1052.25, 16.2911, 0, 0, -89.5999),
(25, 0, 0, 2, -1, 13028, 2, 5, 1, 1391.84, 1592.26, 62.2109, 0, 0, 88.4, 1391.65, 1590.39, 62.2216, 0, 0, 179.8, 1391.65, 1590.39, 58.8217, 0, 0, 179.8),
(26, 1, 0, -1, -1, 980, 0, 0, 3, 1543.54, -1632.48, 13.7028, 0, 0, -88.2, 1543.47, -1628.07, 15.1228, 0, 0, 89.4, 1543.36, -1638.65, 15.1228, 0, 0, 89.4),
(27, 1, 1, -1, -1, 3089, 6, 6, 3, 1498.19, -2853.07, 1591.98, 0, 0, -90, 1498.23, -2854.9, 1591.7, 0, 0, 90, 1498.23, -2856.32, 1591.7, 0, 0, 90),
(28, 1, 1, -1, -1, 3089, 6, 6, 3, 1497.69, -2872.78, 1591.96, 0, 0, 179.9, 1495.9, -2872.84, 1591.73, 0, 0, 0, 1497.36, -2872.84, 1591.73, 0, 0, 0),
(29, 6, 6, -1, -1, 3089, 0, 0, 3, 2882.73, -1998.6, 16.4684, 0, 0, -90, 2882.8, -1996.86, 16.2084, 0, 0, -89.7, 2882.81, -1998.53, 16.2084, 0, 0, -89.7),
(30, 6, 6, -1, -1, 10575, 0, 0, 5, 2869.03, -1988.4, 11.4916, 0, 0, 0, 2868.72, -1991.26, 12.1816, 0, 0, 0, 2868.72, -1991.26, 8.25155, 0, 0, 0),
(31, 6, 6, -1, -1, 11416, 0, 0, 5, 2876.9, -2003.1, 11.3684, 0, 0, -92.4001, 2875.04, -2004.71, 11.1384, 0, 0, 90.5, 2875.04, -2004.71, 8.05835, 0, 0, 90.5),
(32, 6, 6, -1, -1, 2963, 0, 0, 5, 2894.97, -2003.58, 11.5384, 0, 0, 93.5, 2896.7, -2004.22, 11.2784, 0, 0, 89.4, 2896.7, -2004.22, 7.96837, 0, 0, 89.4),
(33, 6, 6, -1, -1, 11416, 0, 0, 5, 2898.35, -1989.84, 11.6184, 0, 0, -93.0001, 2898.64, -1992.68, 11.3684, 0, 0, 0, 2898.64, -1992.68, 8.07835, 0, 0, 0),
(34, 3, 0, 10, -1, 3089, 0, 0, 3, 1446.49, 2751.7, 11.3319, 0, 0, -180, 1446.79, 2751.63, 11.0319, 0, 0, 0, 1445.29, 2751.63, 11.0319, 0, 0, 0),
(35, 4, 0, -1, -1, 1569, 0, 0, 3, 1545.8, -2167.9, 14.1881, 0, 0, 0, 1546.11, -2167.79, 12.7381, 0, 0, 0, 1544.49, -2167.79, 12.7381, 0, 0, 0),
(36, 0, 0, -1, -1, 19303, 8, 1, 1, -792.762, 495.767, 1372.24, 0, 0, 92.6001, -791.769, 495.345, 1372.02, 0, 0, 0, -793.059, 495.345, 1372.02, 0, 0, 0),
(37, 0, 0, -1, -1, 9241, 0, 0, 10, -1482.87, 709.68, 6.00663, 0, 0, 87.5, -1464.27, 697.807, -11.0497, 0, 0, -89.5, -1464.27, 697.807, 1.94031, 0, 0, -87.2999);

-- --------------------------------------------------------

--
-- Table structure for table `capres`
--

CREATE TABLE `capres` (
  `ID` int(11) NOT NULL,
  `Capres` varchar(50) DEFAULT NULL,
  `Cawapres` varchar(50) DEFAULT NULL,
  `Suara` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `ChargesID` int(11) NOT NULL,
  `ID` int(11) NOT NULL DEFAULT -1,
  `Date` varchar(64) NOT NULL DEFAULT 'N/A',
  `Description` varchar(128) NOT NULL DEFAULT 'N/A',
  `Issuer` varchar(64) NOT NULL DEFAULT 'N/A',
  `StatusActived` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `charges`
--

INSERT INTO `charges` (`ChargesID`, `ID`, `Date`, `Description`, `Issuer`, `StatusActived`) VALUES
(3, 267, '2025-03-18 22:20:37', '9(2), 12(1), 13(2), 15(2), 17(2), 18(7)', 'Dudung_Santoso', 1),
(5, 1210, '2025-03-19 23:02:30', '13(2)17(2) 18(3) 18(6) 18(7)', 'Simon_Pranesta', 1),
(6, 1275, '2025-03-19 23:03:07', '13(2) 17(2) 18(6) 18(7)', 'Jetrho_Balaraja', 1),
(7, 5, '2025-03-20 01:05:13', '7(2) 8(2) 13(2) 13(3) 16(1) 17(2) 18(3) 18(7)', 'Nose_Argantara', 1),
(8, 3, '2025-03-20 01:08:49', '13(2), 15(2), 15(11), 17(2), 18(3), 18(7)', 'Dudung_Santoso', 1),
(9, 277, '2025-03-20 01:10:33', '7(2) 8(2) 16(1) 15(2) 18(3) 18(7)', 'Nose_Argantara', 1),
(10, 945, '2025-03-22 21:51:40', '7(2) 10(1) 13(2) 17(2) 18(3) 18(7)', 'Nose_Argantara', 1),
(11, 277, '2025-03-22 21:51:57', '18(3) 15(7) 15(1) 7(1) 13(1)', 'Pong_Mahesa', 1),
(12, 1025, '2025-03-22 21:52:15', '13(2), 15(2), 17(2), 18(3), 18(7)', 'Dudung_Santoso', 1),
(13, 763, '2025-03-22 21:52:17', '7(2) 10(1) 13(2) (17(2) 18(3) 18(7)', 'Rey_Argantara', 1),
(14, 750, '2025-03-22 21:53:35', '7(2) 10(1) 13(2) 15(2) 15(11) 17(2) 18(3) 18(7)', 'Simon_Pranesta', 1),
(15, 1451, '2025-03-23 21:16:31', '13(2),15(2),16(1),17(2).18(3)', 'Simon_Pranesta', 1),
(16, 1581, '2025-03-23 21:17:03', '18(3) 15(2) 16(1) ', 'Pong_Mahesa', 1),
(17, 1452, '2025-03-23 21:17:22', '7(2) 13(2) 16(1) 18(3) 18(7)', 'Nose_Argantara', 1),
(18, 1455, '2025-03-23 21:23:33', '18(2) 16(1)  15(2)', 'Pong_Mahesa', 1),
(19, 180, '2025-03-25 19:56:38', '15(1) 16(3) 17(2) 17(6) 13(2)', 'Pong_Mahesa', 1),
(20, 226, '2025-03-25 20:01:09', '15(1) 16(3) 17(2) 17(6) 13(2)', 'Pong_Mahesa', 1),
(21, 3, '2025-03-25 20:05:36', '15(1) 16(3) 17(2) 17(6) 13(2)', 'Pong_Mahesa', 1),
(22, 621, '2025-03-25 21:05:59', '18(3) 16(1) 16(3) ', 'Pong_Mahesa', 1),
(23, 1, '2025-03-26 19:41:55', '13(3) 15(2) 15(11) 16(1) 17(2) 18(3) 18(4)', 'Simon_Pranesta', 1),
(24, 3, '2025-03-26 19:42:21', '13.3 15.2 15.11 16.1 17.2 18.3 18.4', 'Danii_Ramadan', 1),
(25, 1075, '2025-03-26 21:44:00', '15(2)', 'Pong_Mahesa', 1),
(26, 1382, '2025-03-26 21:47:03', '9(1) 9(2) 12(1) 13(1) 13(2)', 'Taufik_Husni', 1),
(27, 1382, '2025-03-26 21:49:56', '9(1) 9(2) 12(1) 13(1) 13(2) 15(2) 15(6)', 'Taufik_Husni', 1),
(28, 1280, '2025-03-27 12:05:26', '1,0 0,6', 'Derr_Cakrawala', 1),
(29, 544, '2025-03-27 13:45:10', '9(2) 11(1) 15(2) 18(3) 18(4)', 'Simon_Pranesta', 1),
(30, 1331, '2025-03-27 13:47:02', '9.2 11.1 15.2 18.3 18.4', 'Danii_Ramadan', 1),
(31, 1280, '2025-03-28 00:43:29', '16(1) 17(2) 18(3)', 'Taufik_Husni', 1),
(32, 1331, '2025-03-28 14:18:00', '10.1 10.2 16.1 17.2 ', 'Cessie_Pandegas', 1),
(33, 242, '2025-03-28 20:27:40', '16(1) 17(2) 17(3)', 'Mikael_Surya', 1),
(34, 146, '2025-03-28 21:49:17', '18(3) 16(1) 17(2) ', 'Pong_Mahesa', 1),
(35, 1465, '2025-03-28 21:49:48', '16(1) 17(2)', 'Taufik_Husni', 1),
(36, 6, '2025-03-29 19:19:56', '18(3) 17(2) 9(1) 13(2)', 'Pong_Mahesa', 1),
(37, 2288, '2025-03-29 20:19:37', '18(3) 16(1) 17(2) ', 'Pong_Mahesa', 1),
(38, 2296, '2025-03-29 20:22:56', '13(1) 15(2) 16(1) 17(2) 18(3)', 'Simon_Pranesta', 1),
(39, 146, '2025-03-29 20:23:54', '18(3) 16(1) 17(2) ', 'Pong_Mahesa', 1),
(40, 137, '2025-03-29 20:24:27', '13(2) 15(2) 16(1) 18(3)', 'Taufik_Husni', 1),
(41, 188, '2025-03-29 20:31:31', '18.1', 'Cessie_Pandegas', 1),
(43, 1137, '2025-03-29 21:34:38', '16.1 17.2 18.3', 'Cessie_Pandegas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `clip_password`
--

CREATE TABLE `clip_password` (
  `id` int(11) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clip_password`
--

INSERT INTO `clip_password` (`id`, `password`) VALUES
(1, 'ganja123');

-- --------------------------------------------------------

--
-- Table structure for table `clothes_wardrobe`
--

CREATE TABLE `clothes_wardrobe` (
  `IDs` int(11) DEFAULT -1,
  `clothesName` varchar(64) NOT NULL DEFAULT 'N/A',
  `clothesModel` int(11) DEFAULT 0,
  `acc0_model` int(11) DEFAULT 0,
  `acc0_bone` int(11) DEFAULT 0,
  `acc0_posX` float DEFAULT 0,
  `acc0_posY` float DEFAULT 0,
  `acc0_posZ` float DEFAULT 0,
  `acc0_posRX` float DEFAULT 0,
  `acc0_posRY` float DEFAULT 0,
  `acc0_posRZ` float DEFAULT 0,
  `acc0_posSX` float DEFAULT 0,
  `acc0_posSY` float DEFAULT 0,
  `acc0_posSZ` float DEFAULT 0,
  `acc1_model` int(11) DEFAULT 0,
  `acc1_bone` int(11) DEFAULT 0,
  `acc1_posX` float DEFAULT 0,
  `acc1_posY` float DEFAULT 0,
  `acc1_posZ` float DEFAULT 0,
  `acc1_posRX` float DEFAULT 0,
  `acc1_posRY` float DEFAULT 0,
  `acc1_posRZ` float DEFAULT 0,
  `acc1_posSX` float DEFAULT 0,
  `acc1_posSY` float DEFAULT 0,
  `acc1_posSZ` float DEFAULT 0,
  `acc2_model` int(11) DEFAULT 0,
  `acc2_bone` int(11) DEFAULT 0,
  `acc2_posX` float DEFAULT 0,
  `acc2_posY` float DEFAULT 0,
  `acc2_posZ` float DEFAULT 0,
  `acc2_posRX` float DEFAULT 0,
  `acc2_posRY` float DEFAULT 0,
  `acc2_posRZ` float DEFAULT 0,
  `acc2_posSX` float DEFAULT 0,
  `acc2_posSY` float DEFAULT 0,
  `acc2_posSZ` float DEFAULT 0,
  `acc3_model` int(11) DEFAULT 0,
  `acc3_bone` int(11) DEFAULT 0,
  `acc3_posX` float DEFAULT 0,
  `acc3_posY` float DEFAULT 0,
  `acc3_posZ` float DEFAULT 0,
  `acc3_posRX` float DEFAULT 0,
  `acc3_posRY` float DEFAULT 0,
  `acc3_posRZ` float DEFAULT 0,
  `acc3_posSX` float DEFAULT 0,
  `acc3_posSY` float DEFAULT 0,
  `acc3_posSZ` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `clothes_wardrobe`
--

INSERT INTO `clothes_wardrobe` (`IDs`, `clothesName`, `clothesModel`, `acc0_model`, `acc0_bone`, `acc0_posX`, `acc0_posY`, `acc0_posZ`, `acc0_posRX`, `acc0_posRY`, `acc0_posRZ`, `acc0_posSX`, `acc0_posSY`, `acc0_posSZ`, `acc1_model`, `acc1_bone`, `acc1_posX`, `acc1_posY`, `acc1_posZ`, `acc1_posRX`, `acc1_posRY`, `acc1_posRZ`, `acc1_posSX`, `acc1_posSY`, `acc1_posSZ`, `acc2_model`, `acc2_bone`, `acc2_posX`, `acc2_posY`, `acc2_posZ`, `acc2_posRX`, `acc2_posRY`, `acc2_posRZ`, `acc2_posSX`, `acc2_posSY`, `acc2_posSZ`, `acc3_model`, `acc3_bone`, `acc3_posX`, `acc3_posY`, `acc3_posZ`, `acc3_posRX`, `acc3_posRY`, `acc3_posRZ`, `acc3_posSX`, `acc3_posSY`, `acc3_posSZ`) VALUES
(209, 'sweet', 270, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 'Baju MC', 291, 18941, 2, 0.16, 0, -0.007, 0, 0, -10, 1.3, 1.1, 1.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(368, 'lapis', 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(374, 'JALANAN', 292, 18961, 2, 0.116, -0.014, 0.001, -97.2001, 103, 1.30001, 0.948, 0.955, 0.963999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19515, 1, 0.171, 0.027, 0, -0.599999, 0.100001, 1.5, 0.687001, 0.992001, 0.958, 11745, 1, -0.189, -0.155, -0.018, -3.5, 87.5999, -88.3, 0.644, 0.896, 0.775),
(653, '1', 124, 19516, 2, 0.1, 0, 0, 0, 0, 0, 1, 1, 1, 19138, 2, 0.08, 0.04, 0, 75, 81, 15, 1, 1, 1, 19625, 2, 0.02, 0.12, 0.02, 54, 45, 183, 0.94, 1, 0.72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 'BAJU HITAM', 294, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(528, 'mc', 261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 'BLUE KECE', 176, 18941, 2, 0.19, 0.024, -0.008, 0, 0, 20, 1.2, 1.1, 1.05, 19033, 2, 0.1, 0.04, -0.006, 0, 90, 90, 1, 1.1, 1.1, 19625, 2, 0.008, 0.12, 0.008, 210, 0, 0, 1, 1, 1, 11745, 1, 0.06, -0.1, 0, 70, 90, 110, 0.8, 0.4, 1.7),
(274, 'style Mc', 72, 18895, 2, 0.113, 0.013, 0, 77.1001, 177.6, 93.6999, 1.065, 1, 1, 19138, 2, 0.088, 0.041, 0, 71.7999, 92.8, 15.8, 1, 0.936, 1, 19625, 2, 0.022, 0.102, 0.006, -162.3, 0, -13.4, 1, 1, 1, 1210, 1, 0, -0.087, 0, 0, -32.4, 0, 1.679, 0.57, 0.124),
(368, 'PAK HAJI', 258, 18953, 2, 0.18, 0, 0, -177, 0, 202, 1.26, 1.06, 1.1, 19034, 2, 0.08, 0.04, 0, 90, 81, 0, 1, 1.04, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1210, 6, 0.28, 0.08, 0.04, 0, -99, 3, 1, 1, 1),
(449, '2:buat kerja ', 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(360, 'Jaenal', 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19515, 1, 0.1, 0.06, 0, 0, 0, 0, 1, 1.1, 1.1, 3026, 1, -0.2, -0.2, 0, 0, 0, 0, 1.1, 1.1, 1),
(544, '1', 46, 18639, 2, 0.158, 0.032, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 'Aztecas', 115, 18953, 1, 0.3, -0.02, 0, 3, 9, -120, 1.76, 1.76, 2, 19023, 1, 0.23, 0.07, 0, 9, 0, 63, 1, 1.08, 0.96, 18912, 2, 0.088, 0.04, -0.005, 87, -178, 87, 1.04, 1.08, 1.02, 11745, 1, -0.08, -0.12, -0.06, -90, 3, 72, 0.64, 2.52, 0.86),
(368, 'BUGIL', 252, 18952, 2, 0.12, 0, 0, -3, 0, 6, 1.08, 1, 1.12, 19034, 2, 0.08, 0.04, 0, 90, 81, 0, 1, 1.04, 1, 325, 1, -0.04, -0.12, 0.08, 0, 90, -3, 1, 1, 0.74, 11738, 1, -0.14, -0.08, 0, 0, 87, 0, 0.76, 0.58, 0.66),
(229, 'apk oren', 59, 18932, 2, 0.146, 0.02, -0.01, 0, 0, 6.3, 1, 1.211, 1.065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19904, 1, 0.05, 0.052, -0.003, 1.6, 88.2, 177.4, 1.04, 1.157, 1, 11745, 1, -0.14, -0.192, 0, -89, 93.6, -5, 0.499, 1, 0.573),
(449, '3:putih rapi tas', 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19138, 2, 0.08, 0.06, 0, 90, 81, 0, 1, 1.06, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(324, '209', 240, 18941, 2, 0.18, 0.02, 0, 9, 0, 3, 1.04, 1.04, 1.12, 19138, 2, 0.1, 0.04, 0, 0, 90, 93, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3026, 1, -0.14, -0.16, 0, 0, 0, 0, 1, 1, 1),
(44, 'gaun ungu', 216, 18962, 2, 0.15, 0, 0, 0, 0, 0, 1, 1.3, 1.1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11745, 1, -0.05, -0.1, -0.01, 90, 100, 0, 0.3, 0.4, 0.6),
(633, 'dailyuse', 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(633, 'maccer', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 'baju dinas', 308, 18961, 2, 0.1, 0.02, 0, 3, 90, 84, 1.12, 1.08, 1.12, 19023, 2, 0.08, 0.04, 0, 90, 93, 0, 0.98, 1.06, 1.42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11738, 1, 0.02, -0.12, 0, 0, 36, 0, 2.78, 0.94, 1.04),
(44, 'china hitam', 169, 18962, 2, 0.15, 0.01, 0, 0, 0, 0, 0.9, 1.3, 1.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19036, 2, 0.1, 0.03, 0, 90, 90, 0, 0.89, 1.2, 1.2, 11745, 1, -0.05, -0.1, -0.01, 90, 100, 0, 0.3, 0.4, 0.6),
(324, '46', 46, 19099, 2, 0.18, 0.04, 0, 0, 0, 15, 1.04, 1.04, 1.02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1210, 1, -0.02, -0.06, 0, 0, 36, 0, 2.06, 1.1, 0.74),
(319, 'baju ijo', 250, 19096, 1, 0.2, -0.15, 0, 0, 0, -70, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11712, 2, 0, 0, 0.08, 0.003, 90, 140, 1, 0.4, 0.2, 371, 1, -0.4, -0.1, 0.1, 0, 90, 0, 0.5, 0.4, 0.5),
(319, 'baju pur', 2, 19096, 1, 0.2, -0.15, 0, 0, 0, -70, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11712, 2, 0, 0, 0.08, 0.003, 90, 140, 1, 0.4, 0.2, 371, 1, -0.4, -0.1, 0.1, 0, 90, 0, 0.5, 0.4, 0.5),
(1452, 'bmycr', 144, 18942, 2, 0.199, 0, -0.008, 0, 0, 0, 1.273, 1.246, 1.174, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19878, 1, -0.219, -0.166, -0.018, -88.8, -0.3, -89.1, 0.748, 0.898, 0.94, 3026, 1, -0.162, -0.129, -0.003, 0, 0, 0, 0.979, 0.822, 1),
(473, '1 mc', 299, 18928, 2, 0.15, 0, 0.007, 183, 0, 28, 1.16, 1.14, 1.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3026, 1, -0.16, -0.16, 0, 0, 0, 0, 1, 1, 1),
(587, 'BOTAKKKKK', 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(396, 'pakaian sehari-hari', 126, 19099, 2, 0.19, 0, 0, 0, 0, 0, 1, 1, 1, 19033, 2, 0.105, 0.035, 0, 90, 84, 3, 1.035, 1.035, 1.035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 'Bouncer Rompi', 180, 18961, 2, 0.132, 0.019, -0.002, 168.5, 90.6, -75.2, 1.045, 1.104, 1, 19024, 2, 0.102, 0.041, 0.004, 77.3999, 80.4, 20.7, 0.973, 1.101, 1.1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11745, 1, -0.029, -0.109, 0.003, -5.4, 99.2, 93.6, 1.211, 1, 1.184),
(59, 'baju incision', 56, 18897, 2, 0.1, -0.02, 0, 99, -27, -90, 1.3, 0.34, 1.06, 19027, 2, 0.06, 0.02, 0, 90, 84, 0, 1.18, 1.2, 2, 18917, 7, 0.22, 0.02, 0, 78, -180, -93, 0.9, 1, 0.78, 11738, 1, -0.04, -0.12, -0.06, 0, 27, -6, 2.6, 1, 1),
(429, 'merah', 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 'baju item', 93, 18961, 2, 0.1, 0.02, 0, 3, 90, 84, 1.12, 1.08, 1.12, 19023, 2, 0.08, 0.04, 0, 90, 93, 0, 1.3, 1.04, 1.98, 18917, 7, 0.22, 0.02, 0, 78, -180, -93, 0.9, 1, 0.78, 371, 1, 0.04, -0.08, 0, 0, -90, 3, 0.86, 0.86, 0.46),
(587, '..', 250, 18942, 2, 0.2, -0.02, -0.01, 0, -3, -9, 1.16, 1.12, 1.28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3026, 1, -0.16, -0.12, 0, 0, 0, -3, 1, 0.9, 0.88),
(868, '1', 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(449, 'mafia ', 120, 18943, 2, 0.16, 0, 0, 0, 0, 0, 0.98, 1.04, 1.24, 19138, 2, 0.08, 0.04, 0, 87, 78, 0, 1, 1.06, 1, 339, 17, 0.06, -0.16, -0.04, -10, -108, -10, 0.9, 0.82, 0.52, 371, 17, -0.26, -0.1, 0, 3, 90, 0, 1.1, 1.3, 1.2),
(76, '32', 299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19012, 2, 0.079, 0.05, 0, -100, 106.099, 193, 0.94, 1.08, 0.9, 18917, 2, 0.111, 0.019, 0, 90, 174, -96, 1.08, 0.4, 1.04, 371, 1, 0, -0.12, -0.02, 9, 84, -9, 1, 0.78, 0.84),
(361, 'biru', 297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18917, 2, 0.09, 0.02, 0, -90, 0, -90, 1.1, 1, 1.2, 3026, 1, -0.13, -0.13, 0, 0, 0, 0, 0.95, 0.75, 0.8),
(1761, 'rd', 100, 18933, 2, 0.144, 0.012, -0.011, -5.4, -1.6, 10, 1.038, 1.056, 1.125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18919, 2, 0.089, 0.026, 0.002, -90.5, 0, -92.7, 1.089, 1, 1, 11745, 17, -0.459, -0.012001, -0.094, 94.8001, 92.9, 3, 0.32, 0.404, 0.488),
(71, 'ROA', 72, 19077, 2, 0.08, -0.01, 0, 0, 0, 0, 1.54, 1.2, 0.58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19801, 2, 0.06, 0.022, 0, 0, 86, 180, 1.2, 1.2, 1.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(71, 'MELVYN', 170, 19077, 2, 0.08, -0.01, 0, 0, 0, 0, 1.54, 1.2, 0.58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19801, 2, 0.06, 0.022, 0, 0, 86, 180, 1.2, 1.2, 1.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 'a', 240, 18961, 2, 0.155, -0.012, 0.006, -98, 101.9, 5.5, 1.038, 1.015, 1, 19012, 2, 0.091, 0.042, -0.001, 85.7, 86.3, 3, 1, 1.022, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19559, 1, 0.151, -0.019, -0.01, 0, 87.7, 0, 0.783, 0.745, 0.683),
(797, 'putih', 29, 18927, 7, 0.18, 0.18, 0.04, 10, 179, 90, 1.02, 0.92, 0.92, 19140, 2, 0.09, 0.04, 0, 90, 89, 0, 1.12, 1.04, 0.94, 336, 1, 0.24, -0.14, 0.1, 111, -93, 60, 1.04, 1.04, 0.84, 3026, 1, -0.22, -0.1, -0.02, 0, -3, 0, 1.06, 1.08, 1.04),
(583, 'gang ', 183, 18961, 2, 0.12, 0.025, 0, 2, 90, 85, 0.975, 0.975, 0.975, 19012, 2, 0.1, 0.025, 0, 94, 89, -7, 1.09, 1.09, 1.09, 336, 1, 0.225, -0.135, -0.14, 0, -68, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 'Gang Trizerz', 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18917, 2, 0.073, 0.04, -0.011, -94.0002, 0.999892, -90.5001, 1, 1, 1, 371, 1, 0, -0.191, 0, -2.3, 89.9, 0, 1, 1, 1),
(1362, 'preman', 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19033, 2, 0.08, 0.06, 0, 75, 75, 15, 0.74, 1.06, 1.14, 19625, 2, 0, 0.1, 0, -153, 33, 0, 0.9, 1.04, 1.04, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 'ROA ROMPI', 293, 18961, 8, 0.077, -0.108, 0, 55.6, -30.8, 0, 1, 1, 1, 19024, 2, 0.092, 0.043, -0.003, 76.7999, 83.7999, 13.9, 0.809, 0.983, 1.1, 19515, 1, 0.091, 0.037, 0, 0, 0, 0, 1, 1.047, 0.847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1420, 'ninjjjjasss', 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19317, 1, 0.5, -0.2, 0.1, -30, 100, -20, 0.6, 1.7, 0.8, 19559, 1, 0.2, 0, 0, 0, -90, 0, 1.1, 1, 2.1),
(71, 'Cesar', 292, 19077, 2, 0.05, -0.01, -0.005, 0, 0, 0, 1.5, 1.12, 0.42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19515, 1, 0.1, 0.0425, 0, 0, 0, 0, 0.96, 1.08, 0.82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, '1', 56, 19330, 2, 0.12, -0.037, 0, 0, 0, 0, 0.96, 0.9, 1.04, 19033, 1, 0.1, -0.1, 0, -87, 87, 3, 1, 1.66, 1.94, 11704, 1, 0.04, -0.12, 0, 0, 87, 3, 0.5, 0.48, 0.64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(489, '1', 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(489, '2', 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1869, '1', 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1869, '2', 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1420, 'homies', 21, 19554, 2, 0.1, 0, 0, 0, 0, -30, 1.3, 1.4, 1.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1869, '3', 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `component_depot`
--

CREATE TABLE `component_depot` (
  `id` int(11) NOT NULL,
  `component_stock` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `ID` int(11) DEFAULT -1,
  `contactID` int(11) NOT NULL,
  `contactName` varchar(32) DEFAULT 'None',
  `contactNumber` varchar(64) NOT NULL DEFAULT '-',
  `contactOwner` int(11) DEFAULT -1,
  `contactUnread` int(11) DEFAULT 0,
  `contactBlocked` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crafting_passwords`
--

CREATE TABLE `crafting_passwords` (
  `weapon_slot` int(11) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crafting_passwords`
--

INSERT INTO `crafting_passwords` (`weapon_slot`, `password`) VALUES
(1, 'Desert Eagle'),
(2, 'shotgun'),
(3, 'mp5'),
(4, 'ak47'),
(5, 'tec'),
(6, '');

-- --------------------------------------------------------

--
-- Table structure for table `crimebroadcast`
--

CREATE TABLE `crimebroadcast` (
  `ID` int(11) DEFAULT NULL,
  `Date` varchar(64) DEFAULT '-',
  `Text` varchar(128) DEFAULT '-',
  `Sender` varchar(64) DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `criminallogs`
--

CREATE TABLE `criminallogs` (
  `OwnerID` int(11) DEFAULT NULL,
  `Sender` varchar(24) DEFAULT 'Unknows',
  `History` varchar(128) DEFAULT NULL,
  `Time` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `damagelogs`
--

CREATE TABLE `damagelogs` (
  `IDs` int(11) DEFAULT -1,
  `dWeapon` int(11) DEFAULT 0,
  `dBodyPart` int(11) DEFAULT 0,
  `dAmount` float DEFAULT 0,
  `dIssuer` varchar(64) DEFAULT '-',
  `dTime` varchar(64) DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `damagelogs`
--

INSERT INTO `damagelogs` (`IDs`, `dWeapon`, `dBodyPart`, `dAmount`, `dIssuer`, `dTime`) VALUES
(1, 54, 3, 5, 'Diri Sendiri', '2025-05-27 15:07:23'),
(9, 54, 3, 1.7, 'Diri Sendiri', '2026-02-10 23:19:26'),
(9, 54, 3, 1.8, 'Diri Sendiri', '2026-02-10 23:20:22'),
(9, 54, 3, 26.5, 'Diri Sendiri', '2026-02-10 23:43:51'),
(9, 54, 3, 14.6, 'Diri Sendiri', '2026-02-14 23:09:02'),
(9, 54, 3, 46.8, 'Diri Sendiri', '2026-02-14 23:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `discordlog`
--

CREATE TABLE `discordlog` (
  `Admin` varchar(50) DEFAULT NULL,
  `Action` varchar(100) DEFAULT NULL,
  `Tujuan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `discordlog`
--

INSERT INTO `discordlog` (`Admin`, `Action`, `Tujuan`) VALUES
('BOT UCP', '_wisedntcry#0 Mendaftar ke Velorya Roleplay', 'zeex');

-- --------------------------------------------------------

--
-- Table structure for table `doors`
--

CREATE TABLE `doors` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) DEFAULT 'None',
  `password` varchar(50) DEFAULT '',
  `icon` int(11) DEFAULT 19130,
  `mapicon` tinyint(4) DEFAULT 0,
  `locked` int(11) DEFAULT 0,
  `admin` int(11) DEFAULT 0,
  `owner` int(11) DEFAULT -1,
  `vip` int(11) DEFAULT 0,
  `faction` int(11) DEFAULT 0,
  `family` int(11) DEFAULT -1,
  `garage` tinyint(4) DEFAULT 0,
  `custom` int(11) DEFAULT 0,
  `extvw` int(11) DEFAULT 0,
  `extint` int(11) DEFAULT 0,
  `extposx` float DEFAULT 0,
  `extposy` float DEFAULT 0,
  `extposz` float DEFAULT 0,
  `extposa` float DEFAULT 0,
  `intvw` int(11) DEFAULT 0,
  `intint` int(11) DEFAULT 0,
  `intposx` float DEFAULT 0,
  `intposy` float DEFAULT 0,
  `intposz` float DEFAULT 0,
  `intposa` float DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doors`
--

INSERT INTO `doors` (`ID`, `name`, `password`, `icon`, `mapicon`, `locked`, `admin`, `owner`, `vip`, `faction`, `family`, `garage`, `custom`, `extvw`, `extint`, `extposx`, `extposy`, `extposz`, `extposa`, `intvw`, `intint`, `intposx`, `intposy`, `intposz`, `intposa`) VALUES
(1, 'Bahamas', '', 1318, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 2421.54, -1219.58, 25.54, 180.488, 55, 2, 1204.78, -13.6534, 1000.92, 357.277),
(6, 'Recycler', '', 2912, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 2291.87, 2764.06, 10.8203, 269.608, 0, 6, -1464.84, 2646.84, 28.9015, 178.457),
(7, 'Bandara International', '', 19130, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 1685.74, -2335.33, 13.5469, 2.29448, 0, 0, 1771.7, -2517.23, 20.2869, 89.3074),
(8, 'Balai Kota', '', 19197, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 1136.65, -2037.54, 69.1013, 86.8958, 6, 6, 1411.48, 1541.84, 16.3877, 268.612),
(10, 'SHOWROOM', '', 19197, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 557.224, -1293.52, 17.2483, 3.17169, 0, 2, 1026.39, 252.53, 15.5392, 178.872),
(12, 'Boxing', '', 19197, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 2229.86, -1721.22, 13.5608, 134.421, 0, 7, 774.001, -78.8461, 1000.66, 1.02202),
(13, 'Bahamas LV', '', 1314, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 2227.15, 1837.09, 10.8203, 93.4703, 100, 3, -2636.59, 1402.55, 906.461, 0.027976),
(14, 'BAHAMAS SF', '', 19197, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, -2442.67, 755.418, 35.1719, 353.723, 0, 17, 493.437, -24.9185, 1000.68, 177.705),
(15, 'Universitas', '', 19197, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 2792.8, -1087.6, 30.7188, 271.79, 7, 7, 1796.61, 1314.53, 1047.28, 0),
(22, 'Gedung Bintang', '', 19197, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 1570.44, -1337.45, 16.4844, 130.807, 0, 0, 1548.41, -1363.74, 326.218, 177.6),
(23, 'Ammunation Center', '', 19197, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 1368.8, -1279.86, 13.5469, 96.0912, 0, 7, 315.647, -143.663, 999.602, 358.704),
(3, 'Goa Penambang', '', 19197, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 696.792, 905.906, -38.5097, 292.998, 0, 10, 2541.7, 1623.27, -5.52393, 100.454),
(29, 'STAFF ONLY', '', 19130, 0, 0, 0, -1, 0, 0, -1, 0, 0, 1, 3, 973.109, 8.28099, 1001.15, 182.667, 1, 3, 1494.47, 1303.8, 1093.29, 0.034264),
(33, 'VVIP ROOM', '', 19130, 3, 0, 0, -1, 0, 0, -1, 0, 0, 1, 1, -789.498, 510.487, 1367.37, 181.348, 1, 3, 934.563, 8.20358, 1000.99, 181.931),
(2, 'Klyki Clothes n Tailor', '', 1275, 0, 0, 0, 542, 0, 0, -1, 0, 0, 0, 0, 1136.32, -897.104, 43.3906, 272.362, 0, 5, 227.062, -8.18503, 1002.21, 89.7287),
(0, 'VVIP Bar', '', 19130, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 1, -789.442, 510.489, 1367.37, 180.655, 0, 0, 0, 0, 0, 0),
(4, 'Penjara', '', 19197, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 313.499, 1837.69, 7.82812, 178.183, 0, 0, 313.529, 1836.46, 7.80739, 359.455);

-- --------------------------------------------------------

--
-- Table structure for table `dropped`
--

CREATE TABLE `dropped` (
  `ID` int(11) NOT NULL,
  `itemName` varchar(32) DEFAULT '0',
  `itemModel` int(11) DEFAULT 0,
  `itemX` float DEFAULT NULL,
  `itemY` float DEFAULT NULL,
  `itemZ` float DEFAULT NULL,
  `itemInt` int(11) DEFAULT 0,
  `itemWorld` int(11) DEFAULT 0,
  `itemQuantity` int(11) DEFAULT 0,
  `itemPlayer` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_rusun`
--

CREATE TABLE `dynamic_rusun` (
  `rID` int(11) NOT NULL,
  `RusunOwner` varchar(64) NOT NULL DEFAULT 'N/A',
  `RusunName` varchar(64) NOT NULL DEFAULT 'N/A',
  `RusunOwnerID` int(12) DEFAULT 0,
  `RusunPrice` int(12) DEFAULT 0,
  `RusunInterior` int(12) DEFAULT 0,
  `RusunExtInterior` int(12) DEFAULT 0,
  `RusunWorld` int(12) DEFAULT 0,
  `ExtPosX` float DEFAULT 0,
  `ExtPosY` float DEFAULT 0,
  `ExtPosZ` float DEFAULT 0,
  `ExtPosA` float DEFAULT 0,
  `IntPosX` float DEFAULT 0,
  `IntPosY` float DEFAULT 0,
  `IntPosZ` float DEFAULT 0,
  `IntPosA` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dynamic_rusun`
--

INSERT INTO `dynamic_rusun` (`rID`, `RusunOwner`, `RusunName`, `RusunOwnerID`, `RusunPrice`, `RusunInterior`, `RusunExtInterior`, `RusunWorld`, `ExtPosX`, `ExtPosY`, `ExtPosZ`, `ExtPosA`, `IntPosX`, `IntPosY`, `IntPosZ`, `IntPosA`) VALUES
(0, 'N/A', 'OYO', 0, 15000, 5, 0, 0, 2233.29, -1159.77, 25.8906, 271.875, 2233.73, -1115.19, 1050.88, 0.1506),
(1, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2233.21, -1165.89, 25.8906, 271.892, 2233.73, -1115.19, 1050.88, 0.1506),
(2, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2233.2, -1170.84, 25.8906, 267.671, 2233.73, -1115.19, 1050.88, 0.1506),
(3, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2233.21, -1176.22, 25.8906, 273.305, 2233.73, -1115.19, 1050.88, 0.1506),
(4, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2228.48, -1180.6, 25.8906, 184.117, 2233.73, -1115.19, 1050.88, 0.1506),
(5, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2223.83, -1180.6, 25.8906, 177.649, 2233.73, -1115.19, 1050.88, 0.1506),
(6, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2218.66, -1180.6, 25.8906, 178.765, 2233.73, -1115.19, 1050.88, 0.1506),
(7, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2213.79, -1180.6, 25.8906, 188.522, 2233.73, -1115.19, 1050.88, 0.1506),
(8, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2209.7, -1180.6, 25.8906, 194.434, 2233.73, -1115.19, 1050.88, 0.1506),
(9, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2205.05, -1180.6, 25.8906, 192.496, 2233.73, -1115.19, 1050.88, 0.1506),
(10, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2201.47, -1177.71, 25.8865, 87.204, 2233.73, -1115.19, 1050.88, 0.1506),
(11, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2201.29, -1172.61, 25.8783, 74.6828, 2233.73, -1115.19, 1050.88, 0.1506),
(12, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2201.29, -1166.21, 25.8684, 104.549, 2233.73, -1115.19, 1050.88, 0.1506),
(13, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2201.29, -1161.83, 25.8616, 96.4577, 2233.73, -1115.19, 1050.88, 0.1506),
(14, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2201.29, -1157.83, 25.8554, 81.1747, 2233.73, -1115.19, 1050.88, 0.1506),
(15, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2233.21, -1159.6, 29.7969, 256.489, 2233.73, -1115.19, 1050.88, 0.1506),
(16, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2233.2, -1165.56, 29.7969, 279.122, 2233.73, -1115.19, 1050.88, 0.1506),
(17, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2233.21, -1171.98, 29.7969, 260.938, 2233.73, -1115.19, 1050.88, 0.1506),
(18, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2233.21, -1176.61, 29.7969, 264.201, 2233.73, -1115.19, 1050.88, 0.1506),
(19, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2227.4, -1180.58, 29.7971, 175.406, 2233.73, -1115.19, 1050.88, 0.1506),
(20, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2222.6, -1180.57, 29.7971, 186.32, 2233.73, -1115.19, 1050.88, 0.1506),
(21, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2217.92, -1180.58, 29.7971, 163.378, 2233.73, -1115.19, 1050.88, 0.1506),
(22, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2213.04, -1180.58, 29.7971, 182.155, 2233.73, -1115.19, 1050.88, 0.1506),
(23, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2207.86, -1180.58, 29.7971, 179.717, 2233.73, -1115.19, 1050.88, 0.1506),
(24, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2201.34, -1177.84, 29.7969, 72.9857, 2233.73, -1115.19, 1050.88, 0.1506),
(25, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2201.34, -1172.35, 29.7969, 89.1656, 2233.73, -1115.19, 1050.88, 0.1506),
(26, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2201.34, -1166.5, 29.7969, 92.9062, 2233.73, -1115.19, 1050.88, 0.1506),
(27, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2201.34, -1161.89, 29.7969, 89.236, 2233.73, -1115.19, 1050.88, 0.1506),
(28, 'N/A', 'OYO', 0, 25000, 5, 0, 0, 2201.34, -1158.95, 29.7969, 103.541, 2233.73, -1115.19, 1050.88, 0.1506),
(29, 'N/A', 'rusun', 0, 30000, 5, 0, 0, -36.0671, 1215.41, 19.3594, 15.1958, 2233.73, -1115.19, 1050.88, 0.1506),
(30, 'N/A', 'rusun', 0, 30000, 5, 0, 0, -26.7553, 1215.41, 19.3594, 9.58025, 2233.73, -1115.19, 1050.88, 0.1506),
(31, 'N/A', 'rusun', 0, 30000, 5, 0, 0, -17.489, 1215.41, 19.3594, 12.0801, 2233.73, -1115.19, 1050.88, 0.1506),
(32, 'N/A', 'rusun', 0, 30000, 5, 0, 0, -17.575, 1215.41, 22.4648, 18.6941, 2233.73, -1115.19, 1050.88, 0.1506),
(33, 'N/A', 'rusun', 0, 30000, 5, 0, 0, -26.8472, 1215.41, 22.4648, 357.962, 2233.73, -1115.19, 1050.88, 0.1506),
(34, 'N/A', 'rusun', 0, 30000, 5, 0, 0, -36.0135, 1215.41, 22.4648, 341.839, 2233.73, -1115.19, 1050.88, 0.1506),
(35, 'N/A', 'rusun', 0, 30000, 5, 0, 0, 13.8882, 1210.82, 19.3423, 268.853, 2233.73, -1115.19, 1050.88, 0.1506),
(36, 'N/A', 'rusun', 0, 30000, 5, 0, 0, 13.8873, 1220.18, 19.3439, 272.922, 2233.73, -1115.19, 1050.88, 0.1506),
(37, 'N/A', 'rusun', 0, 30000, 5, 0, 0, 13.8883, 1229.3, 19.3452, 281.717, 2233.73, -1115.19, 1050.88, 0.1506),
(38, 'N/A', 'rusun', 0, 30000, 5, 0, 0, 13.8865, 1210.8, 22.5032, 293.089, 2233.73, -1115.19, 1050.88, 0.1506),
(39, 'N/A', 'rusun', 0, 30000, 5, 0, 0, 13.8837, 1219.97, 22.5032, 294.97, 2233.73, -1115.19, 1050.88, 0.1506),
(40, 'N/A', 'rusun', 0, 30000, 5, 0, 0, 13.8878, 1229.26, 22.5032, 269.196, 2233.73, -1115.19, 1050.88, 0.1506);

-- --------------------------------------------------------

--
-- Table structure for table `emergencylog`
--

CREATE TABLE `emergencylog` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `pID` int(11) NOT NULL,
  `Name` varchar(32) DEFAULT '',
  `Phone` varchar(64) DEFAULT '',
  `Date` int(11) DEFAULT 0,
  `Location` varchar(64) DEFAULT '',
  `Description` varchar(128) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ems_brankas`
--

CREATE TABLE `ems_brankas` (
  `PID` int(11) DEFAULT 0,
  `ID` int(11) NOT NULL,
  `Item` varchar(64) NOT NULL DEFAULT '-',
  `Model` int(11) DEFAULT 0,
  `Quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ems_brankas`
--

INSERT INTO `ems_brankas` (`PID`, `ID`, `Item`, `Model`, `Quantity`) VALUES
(0, 3, 'Alprazolam', 1241, 324),
(0, 17, 'Bandage', 11736, 296),
(0, 18, 'Medkit', 11738, 505),
(0, 34, 'Masker', 19036, 1);

-- --------------------------------------------------------

--
-- Table structure for table `factiongarage`
--

CREATE TABLE `factiongarage` (
  `ID` int(11) NOT NULL,
  `Name` varchar(258) NOT NULL DEFAULT 'None',
  `Type` int(11) NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `World` int(11) NOT NULL DEFAULT 0,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `SpawnX` float NOT NULL DEFAULT 0,
  `SpawnY` float NOT NULL DEFAULT 0,
  `SpawnZ` float NOT NULL DEFAULT 0,
  `SpawnA` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `factionlogs`
--

CREATE TABLE `factionlogs` (
  `Name` varchar(64) DEFAULT 'N/A',
  `UCP` varchar(64) DEFAULT 'N/A',
  `Value` int(11) DEFAULT 0,
  `Faction` varchar(64) DEFAULT 'N/A',
  `Time` varchar(64) DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `families`
--

CREATE TABLE `families` (
  `F_ID` int(11) NOT NULL DEFAULT -1,
  `F_Name` varchar(50) DEFAULT 'N/A',
  `F_Leader` varchar(50) DEFAULT 'N/A',
  `F_Money` int(11) DEFAULT 0,
  `F_Icon` int(11) DEFAULT 0,
  `F_BrankasX` float DEFAULT 0,
  `F_BrankasY` float DEFAULT 0,
  `F_BrankasZ` float DEFAULT 0,
  `F_BosDeskX` float DEFAULT 0,
  `F_BosDeskY` float DEFAULT 0,
  `F_BosDeskZ` float DEFAULT 0,
  `F_ExtPosX` float DEFAULT 0,
  `F_ExtPosY` float DEFAULT 0,
  `F_ExtPosZ` float DEFAULT 0,
  `F_ExtPosA` float DEFAULT 0,
  `F_IntPosX` float DEFAULT 0,
  `F_IntPosY` float DEFAULT 0,
  `F_IntPosZ` float DEFAULT 0,
  `F_IntPosA` float DEFAULT 0,
  `F_Interior` int(11) DEFAULT 0,
  `F_Weapon1` int(11) DEFAULT 0,
  `F_Weapon2` int(11) DEFAULT 0,
  `F_Weapon3` int(11) DEFAULT 0,
  `F_Weapon4` int(11) DEFAULT 0,
  `F_Weapon5` int(11) DEFAULT 0,
  `F_Weapon6` int(11) DEFAULT 0,
  `F_Weapon7` int(11) DEFAULT 0,
  `F_Weapon8` int(11) DEFAULT 0,
  `F_Weapon9` int(11) DEFAULT 0,
  `F_Weapon10` int(11) DEFAULT 0,
  `F_Weapon11` int(11) DEFAULT 0,
  `F_Weapon12` int(11) DEFAULT 0,
  `F_Weapon13` int(11) DEFAULT 0,
  `F_Weapon14` int(11) DEFAULT 0,
  `F_Weapon15` int(11) DEFAULT 0,
  `F_Ammo1` int(11) DEFAULT 0,
  `F_Ammo2` int(11) DEFAULT 0,
  `F_Ammo3` int(11) DEFAULT 0,
  `F_Ammo4` int(11) DEFAULT 0,
  `F_Ammo5` int(11) DEFAULT 0,
  `F_Ammo6` int(11) DEFAULT 0,
  `F_Ammo7` int(11) DEFAULT 0,
  `F_Ammo8` int(11) DEFAULT 0,
  `F_Ammo9` int(11) DEFAULT 0,
  `F_Ammo10` int(11) DEFAULT 0,
  `F_Ammo11` int(11) DEFAULT 0,
  `F_Ammo12` int(11) DEFAULT 0,
  `F_Ammo13` int(11) DEFAULT 0,
  `F_Ammo14` int(11) DEFAULT 0,
  `F_Ammo15` int(11) DEFAULT 0,
  `F_RedMoney` int(11) DEFAULT 0,
  `F_GarageX` float DEFAULT 0,
  `F_GarageY` float DEFAULT 0,
  `F_GarageZ` float DEFAULT 0,
  `F_GarageSpawnX` float DEFAULT 0,
  `F_GarageSpawnY` float DEFAULT 0,
  `F_GarageSpawnZ` float DEFAULT 0,
  `F_GarageSpawnA` float DEFAULT 0,
  `F_GarageWorld` int(11) DEFAULT 0,
  `F_GarageInterior` int(11) DEFAULT 0,
  `F_Type` varchar(32) NOT NULL DEFAULT 'unknown'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `familieslogs`
--

CREATE TABLE `familieslogs` (
  `Name` varchar(64) DEFAULT NULL,
  `UCP` varchar(64) DEFAULT NULL,
  `Activity` varchar(320) DEFAULT NULL,
  `Families` varchar(100) DEFAULT NULL,
  `Time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `families_garage`
--

CREATE TABLE `families_garage` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `gFamiliesID` int(11) NOT NULL DEFAULT 0,
  `gFamiliesName` varchar(64) NOT NULL DEFAULT 'N/A',
  `gFamiliesPOSX` float NOT NULL DEFAULT 0,
  `gFamiliesPOSY` float NOT NULL DEFAULT 0,
  `gFamiliesPOSZ` float NOT NULL DEFAULT 0,
  `gFamiliesSpawnX` float NOT NULL DEFAULT 0,
  `gFamiliesSpawnY` float NOT NULL DEFAULT 0,
  `gFamiliesSpawnZ` float NOT NULL DEFAULT 0,
  `gFamiliesSpawnA` float NOT NULL DEFAULT 0,
  `gFamiliesInterior` int(11) NOT NULL DEFAULT -1,
  `gFamiliesWorld` int(11) NOT NULL DEFAULT -1,
  `gFamiliesPickup` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gate`
--

CREATE TABLE `gate` (
  `ID` int(11) NOT NULL,
  `Model` int(11) DEFAULT 0,
  `Faction` int(11) DEFAULT 0,
  `Family` int(11) DEFAULT -1,
  `Workshop` int(11) DEFAULT -1,
  `House` int(11) DEFAULT -1,
  `Owner` int(11) DEFAULT -1,
  `Speed` float DEFAULT 0,
  `cX` float DEFAULT 0,
  `cY` float DEFAULT 0,
  `cZ` float DEFAULT 0,
  `cRX` float DEFAULT 0,
  `cRY` float DEFAULT 0,
  `cRZ` float DEFAULT 0,
  `oX` float DEFAULT 0,
  `oY` float DEFAULT 0,
  `oZ` float DEFAULT 0,
  `oRX` float DEFAULT 0,
  `oRY` float DEFAULT 0,
  `oRZ` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gate`
--

INSERT INTO `gate` (`ID`, `Model`, `Faction`, `Family`, `Workshop`, `House`, `Owner`, `Speed`, `cX`, `cY`, `cZ`, `cRX`, `cRY`, `cRZ`, `oX`, `oY`, `oZ`, `oRX`, `oRY`, `oRZ`) VALUES
(0, 19912, 0, -1, -1, -1, -1, 3, 287.181, -1316.96, 55.2456, 0, 0, 35, 287.181, -1316.96, 49.3056, 0, 0, 35),
(1, 19912, 0, -1, -1, -1, 22, 2, 325.877, -1184.53, 77.1503, 0, 0, 38.7, 325.877, -1184.53, 72.5502, 0, 0, 38.7),
(2, 19912, 0, -1, -1, -1, -1, 2, 1524.45, 2774.64, 12.6219, 0, 0, 87.5999, 1524.16, 2767.61, 12.6219, 0, 0, 87.5999),
(3, 3824, 0, -1, -1, -1, 10, 2, -953.269, 2832.88, 90.7781, 0, 0, 0, -953.269, 2832.88, 90.7781, 0, 0, 0),
(4, 971, 0, -1, -1, -1, 6, 2, 826.865, -518.555, 15.8204, 0, 0, 0, 819.713, -518.555, 15.8204, 0, 0, 0),
(5, 3824, 0, -1, -1, -1, 10, 2, 2194.92, -995.468, 64.5583, 1.1, 0, 75.9999, 2194.92, -995.468, 64.5583, 1.1, 0, 75.9999);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `ID` int(11) NOT NULL,
  `GroupName` varchar(24) DEFAULT NULL,
  `OwnerID` int(11) NOT NULL DEFAULT 0,
  `InviteOnly` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_messages`
--

CREATE TABLE `group_messages` (
  `ID` int(11) NOT NULL,
  `GroupName` varchar(24) DEFAULT NULL,
  `SenderName` varchar(24) DEFAULT NULL,
  `SenderID` int(11) NOT NULL DEFAULT 0,
  `SenderNumber` int(9) NOT NULL DEFAULT 0,
  `Time` int(10) NOT NULL DEFAULT 0,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `Message` varchar(100) DEFAULT NULL,
  `GroupID` int(8) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gudang`
--

CREATE TABLE `gudang` (
  `GudangID` int(11) NOT NULL,
  `GudangName` varchar(64) DEFAULT '-',
  `GudangPrice` int(11) DEFAULT 0,
  `GudangX` float DEFAULT 0,
  `GudangY` float DEFAULT 0,
  `GudangZ` float DEFAULT 0,
  `GudangInterior` int(11) DEFAULT NULL,
  `GudangWorld` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gudang`
--

INSERT INTO `gudang` (`GudangID`, `GudangName`, `GudangPrice`, `GudangX`, `GudangY`, `GudangZ`, `GudangInterior`, `GudangWorld`) VALUES
(0, 'GUDANG LS', 30000, 2075.63, -2033.61, 13.5469, 0, 0),
(1, 'GUDANG LV', 30000, -134.588, 1116.97, 20.1966, 0, 0),
(2, 'GUDANG RS', 40000, 1151.45, -1201.94, 19.6094, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE `house` (
  `ID` int(11) NOT NULL,
  `HS_Owner` varchar(50) NOT NULL DEFAULT '-',
  `HS_OwnerID` int(11) DEFAULT -1,
  `HS_Type` int(11) DEFAULT 0,
  `HS_Claimed` int(11) DEFAULT 0,
  `HS_ExtPosX` float DEFAULT 0,
  `HS_ExtPosY` float DEFAULT 0,
  `HS_ExtPosZ` float DEFAULT 0,
  `HS_ExtPosA` float DEFAULT 0,
  `HS_IntPosX` float DEFAULT 0,
  `HS_IntPosY` float DEFAULT 0,
  `HS_IntPosZ` float DEFAULT 0,
  `HS_IntPosA` float DEFAULT 0,
  `HS_Capacity` float DEFAULT 0,
  `HS_Interior` int(11) DEFAULT 0,
  `HS_Weapon1` int(11) DEFAULT 0,
  `HS_Weapon2` int(11) DEFAULT 0,
  `HS_Weapon3` int(11) DEFAULT 0,
  `HS_Weapon4` int(11) DEFAULT 0,
  `HS_Weapon5` int(11) DEFAULT 0,
  `HS_Ammo1` int(11) DEFAULT 0,
  `HS_Ammo2` int(11) DEFAULT 0,
  `HS_Ammo3` int(11) DEFAULT 0,
  `HS_Ammo4` int(11) DEFAULT 0,
  `HS_Ammo5` int(11) DEFAULT 0,
  `HS_GarageX` float DEFAULT 0,
  `HS_GarageY` float DEFAULT 0,
  `HS_GarageZ` float DEFAULT 0,
  `HS_GarageSpawnX` float DEFAULT 0,
  `HS_GarageSpawnY` float DEFAULT 0,
  `HS_GarageSpawnZ` float DEFAULT 0,
  `HS_GarageSpawnA` float DEFAULT 0,
  `HS_GarageInterior` int(11) DEFAULT 0,
  `HS_GarageWorld` int(11) DEFAULT 0,
  `HS_HelipadX` float DEFAULT 0,
  `HS_HelipadY` float DEFAULT 0,
  `HS_HelipadZ` float DEFAULT 0,
  `HS_HelipadSpawnX` float DEFAULT 0,
  `HS_HelipadSpawnY` float DEFAULT 0,
  `HS_HelipadSpawnZ` float DEFAULT 0,
  `HS_HelipadSpawnA` float DEFAULT 0,
  `HS_HelipadInterior` int(11) DEFAULT 0,
  `HS_HelipadWorld` int(11) DEFAULT 0,
  `HS_BrankasX` float DEFAULT 0,
  `HS_BrankasY` float DEFAULT 0,
  `HS_BrankasZ` float DEFAULT 0,
  `HS_Price` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `house_garkot`
--

CREATE TABLE `house_garkot` (
  `id` int(11) NOT NULL DEFAULT 0,
  `GHouseID` int(11) NOT NULL DEFAULT -1,
  `posx` float NOT NULL DEFAULT 0,
  `posy` float NOT NULL DEFAULT 0,
  `posz` float NOT NULL DEFAULT 0,
  `spawnx` float NOT NULL DEFAULT 0,
  `spawny` float NOT NULL DEFAULT 0,
  `spawnz` float NOT NULL DEFAULT 0,
  `spawna` float NOT NULL DEFAULT 0,
  `interior` float NOT NULL DEFAULT 0,
  `world` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hunting`
--

CREATE TABLE `hunting` (
  `DeerID` int(11) NOT NULL DEFAULT -1,
  `DeerX` float DEFAULT 0,
  `DeerY` float DEFAULT 0,
  `DeerZ` float DEFAULT 0,
  `DeerRX` float DEFAULT 0,
  `DeerRY` float DEFAULT 0,
  `DeerRZ` float DEFAULT 0,
  `DeerInterior` int(11) DEFAULT NULL,
  `DeerWorld` int(11) DEFAULT NULL,
  `DeerTime` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hunting`
--

INSERT INTO `hunting` (`DeerID`, `DeerX`, `DeerY`, `DeerZ`, `DeerRX`, `DeerRY`, `DeerRZ`, `DeerInterior`, `DeerWorld`, `DeerTime`) VALUES
(1, -586, -2263, 25, 0, 0, 0, 0, 0, 0),
(0, -546.081, -2237, 31.4628, 0, -10, 0, 0, 0, 0),
(2, -588, -2290, 26.76, 0, 0, 0, 0, 0, 0),
(3, -590, -2351, 27, 0, 0, 0, 0, 0, 0),
(4, -583, -2383, 28, 0, -13, -34, 0, 0, 0),
(5, -609, -2392, 27, 0, 0, 0, 0, 0, 0),
(6, -564.351, -2400, 45.8716, 0, -22, 0, 0, 0, 0),
(7, -525, -2365, 51, 0, -22, 0, 0, 0, 0),
(8, -520, -2345, 49, -5, -23, -2, 0, 0, 0),
(9, -495.754, -2251.64, 37.921, 0, 8.3, -172.9, 0, 0, 0),
(10, -500.922, -2199.1, 53.6064, 0, 12, -53, 0, 0, 0),
(11, -533.003, -2208.06, 42.526, 0, 7, -93, 0, 0, 0),
(12, -531.923, -2279.91, 30.8913, 0, -8, -128, 0, 0, 0),
(13, -611, -2311, 29, 0, 6, 0, 0, 0, 0),
(14, -620, -2289, 26, 7, -2, 150, 0, 0, 0),
(15, -618.978, -2262, 24.6396, 2, 0, 101, 0, 0, 0),
(16, -639, -2312, 35, 0, -1, 11, 0, 0, 0),
(17, -567, -2320, 27, 3, -7, 75, 0, 0, 0),
(18, -507.057, -2292.01, 33.4867, 3, 6, -146, 0, 0, 0),
(19, -610, -2233, 24, 0, 2, -177, 0, 0, 0),
(20, -653.051, -2277.94, 27.9265, 0, 5, 130, 0, 0, 0),
(21, -666, -2306, 32.17, 0, 0, -85, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `iconmaps`
--

CREATE TABLE `iconmaps` (
  `ID` int(11) NOT NULL,
  `IconID` int(11) DEFAULT -1,
  `IconInterior` int(11) DEFAULT -1,
  `IconWorld` int(11) DEFAULT -1,
  `IconX` float DEFAULT 0,
  `IconY` float DEFAULT 0,
  `IconZ` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `iconmaps`
--

INSERT INTO `iconmaps` (`ID`, `IconID`, `IconInterior`, `IconWorld`, `IconX`, `IconY`, `IconZ`) VALUES
(0, 32, 0, 0, 2164.17, -1801.37, 13.376),
(1, 32, 0, 0, 2216.46, -1167.53, 25.7266),
(2, 5, 0, 0, 1687.78, -2292.09, -1.2281),
(3, 32, 0, 0, 184.959, -108.066, 2.02344),
(4, 32, 0, 0, -3.62687, 1220.92, 19.3527),
(5, 32, 0, 0, 2628.12, 738.582, 10.8203),
(6, 25, 0, 0, 1967.45, 1623.21, 12.8621),
(7, 25, 0, 0, 2196.79, 1677.22, 12.4672),
(8, 25, 0, 0, 2238.91, 1285.6, 10.9203),
(9, 40, 0, 0, 2847.95, -2067, 10.7737),
(10, 40, 0, 0, 3434.93, -2066.57, 15.5637),
(11, 54, 0, 0, 659.632, -1866.91, 5.46094);

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `iconID` int(11) NOT NULL,
  `iconLocationX` float DEFAULT 0,
  `iconLocationY` float DEFAULT 0,
  `iconLocationZ` float DEFAULT 0,
  `iconInterior` int(11) DEFAULT NULL,
  `iconWorld` int(11) DEFAULT NULL,
  `iconType` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`iconID`, `iconLocationX`, `iconLocationY`, `iconLocationZ`, `iconInterior`, `iconWorld`, `iconType`) VALUES
(0, 2164.17, -1801.37, 13.376, 0, 0, 32),
(1, 2216.46, -1167.53, 25.7266, 0, 0, 32),
(2, 1687.78, -2292.09, -1.2281, 0, 0, 5),
(3, 184.959, -108.066, 2.02344, 0, 0, 32),
(4, -3.62687, 1220.92, 19.3527, 0, 0, 32),
(7, 2196.79, 1677.22, 12.4672, 0, 0, 25),
(8, 2238.91, 1285.6, 10.9203, 0, 0, 25),
(9, 2847.95, -2067, 10.7737, 0, 0, 40),
(10, 3434.93, -2066.57, 15.5637, 0, 0, 40),
(11, 659.632, -1866.91, 5.46094, 0, 0, 54),
(14, 2182.78, -1986.65, 13.5503, 0, 0, 1),
(17, 1368.99, -1279.7, 13.5468, 0, 0, 18);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `ID` int(11) DEFAULT 0,
  `invID` int(11) NOT NULL,
  `invItem` varchar(32) DEFAULT NULL,
  `invModel` int(11) DEFAULT 0,
  `invQuantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`ID`, `invID`, `invItem`, `invModel`, `invQuantity`) VALUES
(1, 3, 'Smartphone', 18870, 1),
(1, 4, 'Nasi Goreng', 2355, 10),
(1, 5, 'Es Teh', 1546, 10),
(2, 6, 'Backpack', 3026, 1),
(3, 8, 'Smartphone', 18870, 1),
(3, 9, 'Nasi Goreng', 2355, 10),
(3, 10, 'Es Teh', 1546, 10),
(4, 12, 'Smartphone', 18870, 1),
(4, 13, 'Nasi Goreng', 2355, 10),
(4, 14, 'Es Teh', 1546, 10),
(5, 16, 'Smartphone', 18870, 1),
(5, 17, 'Nasi Goreng', 2355, 10),
(5, 18, 'Es Teh', 1546, 10),
(5, 19, 'Senter', 18641, 1),
(6, 21, 'Smartphone', 18870, 1),
(6, 22, 'Nasi Goreng', 2355, 10),
(6, 23, 'Es Teh', 1546, 10),
(7, 24, 'Backpack', 3026, 1),
(8, 25, 'Backpack', 3026, 1),
(9, 28, 'Nasi Goreng', 2355, 9),
(9, 29, 'Es Teh', 1546, 10),
(10, 31, 'Nasi Goreng', 2355, 1),
(9, 32, 'Backpack', 3026, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoiceID` int(11) NOT NULL,
  `Name` varchar(320) DEFAULT 'N/A',
  `Sender` int(11) DEFAULT -1,
  `Faction` int(11) DEFAULT 0,
  `Cost` int(11) DEFAULT 0,
  `Owner` int(11) DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kevlar_password`
--

CREATE TABLE `kevlar_password` (
  `id` int(11) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kevlar_password`
--

INSERT INTO `kevlar_password` (`id`, `password`) VALUES
(1, 'kevlar');

-- --------------------------------------------------------

--
-- Table structure for table `label_fivem`
--

CREATE TABLE `label_fivem` (
  `LabelID` int(11) NOT NULL,
  `LabelText` varchar(128) NOT NULL DEFAULT '-',
  `LabelX` float DEFAULT 0,
  `LabelY` float DEFAULT 0,
  `LabelZ` float DEFAULT 0,
  `LabelRX` float DEFAULT 0,
  `LabelRY` float DEFAULT 0,
  `LabelRZ` float DEFAULT 0,
  `LabelInterior` int(11) DEFAULT -1,
  `LabelWorld` int(11) DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `label_fivem`
--

INSERT INTO `label_fivem` (`LabelID`, `LabelText`, `LabelX`, `LabelY`, `LabelZ`, `LabelRX`, `LabelRY`, `LabelRZ`, `LabelInterior`, `LabelWorld`) VALUES
(0, '{FFC0CB}TENTARA ZONE!!!', 1484.85, -1720.65, 13.7969, 0, 0, 287.418, 0, 0),
(2, '{FFC0CB}tempat ngocok', 2326.77, -1015.42, 1054.71, 0, 0, 86.6977, 9, 4),
(9, '{FFFF00}Garasi Umum', 900.031, -1172.92, 16.9766, 0, 0, 105.545, 0, 0),
(11, '{FFFF00}Garasi Umum', -520.715, -68.8575, 62.3895, 0, 0, 105.545, 0, 0),
(12, '{FFFF00}Garasi Umum', -1722.3, 79.9458, 3.54956, 0, 0, 105.545, 0, 0),
(13, '{FFFF00}Garasi Umum', 638.43, 890.145, -42.9534, 0, 0, 105.545, 0, 0),
(15, '{FFFF00}Garasi Umum', 1549.3, 25.9362, 24.1406, 0, 0, 105.545, 0, 0),
(16, '{FFFF00}Garasi Umum', 1912.22, 175.89, 37.2775, 0, 0, 105.545, 0, 0),
(18, '{FFC0CB}ADMIN AREA!!', 1480.14, -1720.71, 13.7969, 0, 0, 265.298, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ladang`
--

CREATE TABLE `ladang` (
  `id` int(11) NOT NULL,
  `kanabisX` float DEFAULT NULL,
  `kanabisY` float DEFAULT NULL,
  `kanabisZ` float DEFAULT NULL,
  `kanabisRX` float DEFAULT NULL,
  `kanabisRY` float DEFAULT NULL,
  `kanabisRZ` float DEFAULT NULL,
  `interior` int(11) DEFAULT 0,
  `world` int(11) DEFAULT 0,
  `kanabisTimer` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ladang`
--

INSERT INTO `ladang` (`id`, `kanabisX`, `kanabisY`, `kanabisZ`, `kanabisRX`, `kanabisRY`, `kanabisRZ`, `interior`, `world`, `kanabisTimer`) VALUES
(18, 2324.14, -604.15, 128.737, 0, 0, 0, 0, 0, 0),
(17, 2326.44, -622.856, 128.772, 0, 0, 0, 0, 0, 0),
(16, 2328.52, -639.895, 130.213, 0, 0, 0, 0, 0, 0),
(15, 2319.87, -664.481, 128.796, 0, 0, 0, 0, 0, 0),
(14, 2319.84, -650.609, 129.404, 0, 0, 0, 0, 0, 0),
(13, 2308.55, -656.051, 129.408, 0, 0, 0, 0, 0, 0),
(12, 2312.6, -642.028, 131.088, 0, 0, 0, 0, 0, 0),
(11, 2300.15, -645.066, 130.967, 0, 0, 0, 0, 0, 0),
(10, 2274.95, -601.254, 132.349, 0, 0, 0, 0, 0, 0),
(9, 2338.59, -719.359, 129.72, 0, 0, 0, 0, 0, 0),
(8, 2346.12, -731.199, 129.827, 0, 0, 0, 0, 0, 0),
(7, 2329.66, -733.321, 129.609, 0, 0, 0, 0, 0, 0),
(6, 2317.62, -719.221, 128.934, 0, 0, 0, 0, 0, 0),
(5, 2333.82, -701.08, 130.31, 0, 0, 0, 0, 0, 0),
(4, 2323.69, -682.8, 130.361, 0, 0, 0, 0, 0, 0),
(3, 2285.87, -617.231, 132.272, 0, 0, 0, 0, 0, 0),
(2, 2307.61, -623.778, 130.553, 0, 0, 0, 0, 0, 0),
(1, 2293.9, -600.335, 131.018, 0, 0, 0, 0, 0, 0),
(0, 2307.57, -600.156, 129.877, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `loglogin`
--

CREATE TABLE `loglogin` (
  `no` int(11) NOT NULL,
  `username` varchar(40) NOT NULL DEFAULT 'None',
  `reg_id` int(11) NOT NULL DEFAULT 0,
  `password` varchar(40) NOT NULL DEFAULT 'None',
  `time` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logpay`
--

CREATE TABLE `logpay` (
  `player` varchar(40) NOT NULL DEFAULT 'None',
  `playerid` int(11) NOT NULL DEFAULT 0,
  `toplayer` varchar(40) NOT NULL DEFAULT 'None',
  `toplayerid` int(11) NOT NULL DEFAULT 0,
  `ammount` int(11) NOT NULL DEFAULT 0,
  `time` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lumbung`
--

CREATE TABLE `lumbung` (
  `id` int(11) NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL DEFAULT 100
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marijuana_passwords`
--

CREATE TABLE `marijuana_passwords` (
  `id` int(11) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marijuana_passwords`
--

INSERT INTO `marijuana_passwords` (`id`, `password`) VALUES
(1, 'ganja123');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `ID` int(11) NOT NULL,
  `TextTo` varchar(64) DEFAULT NULL,
  `TextFrom` varchar(64) DEFAULT NULL,
  `Message` varchar(100) DEFAULT NULL,
  `Time` int(10) NOT NULL DEFAULT 0,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

CREATE TABLE `objects` (
  `ID` int(11) NOT NULL,
  `Model` int(11) DEFAULT NULL,
  `ObjectX` float DEFAULT NULL,
  `ObjectY` float DEFAULT NULL,
  `ObjectZ` float DEFAULT NULL,
  `ObjectRX` float DEFAULT NULL,
  `ObjectRY` float DEFAULT NULL,
  `ObjectRZ` float DEFAULT NULL,
  `ObjectInterior` int(11) DEFAULT 0,
  `ObjectWorld` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `objects`
--

INSERT INTO `objects` (`ID`, `Model`, `ObjectX`, `ObjectY`, `ObjectZ`, `ObjectRX`, `ObjectRY`, `ObjectRZ`, `ObjectInterior`, `ObjectWorld`) VALUES
(0, 19449, -547.291, 2593.89, 58.8853, 0, 0, 0, 0, 0),
(1, 9093, 608.901, -78.9259, 998.842, 0, 0, 0, 2, 15),
(2, 9093, 608.751, -74.0907, 998, 0, 0, 0, 2, 15),
(3, 19912, 1524.56, 2786.14, 12.6119, 0, 0, 89.3, 0, 0),
(4, 1498, 2145.39, -1873.43, 12.5139, 0, 0, 0, 0, 0),
(5, 1498, 2148.4, -1873.39, 12.4939, 0, 0, 179.8, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `objecttext`
--

CREATE TABLE `objecttext` (
  `ID` int(11) NOT NULL,
  `Text` varchar(128) NOT NULL DEFAULT 'Text',
  `PosX` float DEFAULT 0,
  `PosY` float DEFAULT 0,
  `PosZ` float DEFAULT 0,
  `posRX` float DEFAULT 0,
  `posRY` float DEFAULT 0,
  `posRZ` float DEFAULT 0,
  `Vw` int(11) DEFAULT 0,
  `Int` int(11) DEFAULT 0,
  `FontColor` int(11) DEFAULT -1,
  `BackColor` int(11) DEFAULT -1,
  `FontSize` int(11) DEFAULT 100,
  `FontNames` varchar(24) NOT NULL DEFAULT 'Arial',
  `Model` int(11) DEFAULT 18244
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `objecttext`
--

INSERT INTO `objecttext` (`ID`, `Text`, `PosX`, `PosY`, `PosZ`, `posRX`, `posRY`, `posRZ`, `Vw`, `Int`, `FontColor`, `BackColor`, `FontSize`, `FontNames`, `Model`) VALUES
(2, 'ANTAMASENA', -547.58, 2593.92, 58.9402, 90.0998, 89.5998, 0.6, 0, 0, -1, -16777216, 130, 'Arial', 18244);

-- --------------------------------------------------------

--
-- Table structure for table `pasar`
--

CREATE TABLE `pasar` (
  `id` int(11) NOT NULL,
  `posx` float DEFAULT 0,
  `posy` float DEFAULT 0,
  `posz` float DEFAULT 0,
  `type` int(11) DEFAULT 0,
  `interior` int(11) DEFAULT 0,
  `world` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pasar`
--

INSERT INTO `pasar` (`id`, `posx`, `posy`, `posz`, `type`, `interior`, `world`) VALUES
(0, 848.266, -1210.29, 16.9935, 7, 0, 0),
(1, 829.055, -1211.28, 16.9935, 5, 0, 0),
(2, 830.418, -1196.48, 16.9935, 2, 0, 0),
(3, 834.492, -1187.64, 16.9935, 4, 0, 0),
(4, 850.796, -1187.64, 16.9935, 1, 0, 0),
(5, 863.186, -1209.67, 16.9935, 3, 0, 0),
(7, 850.889, -1200.91, 16.9935, 9, 0, 0),
(8, 2508.2, -2205.85, 13.5469, 8, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pemerintah_brankas`
--

CREATE TABLE `pemerintah_brankas` (
  `PID` int(11) DEFAULT 0,
  `ID` int(11) NOT NULL,
  `Item` varchar(64) NOT NULL DEFAULT '-',
  `Model` int(11) DEFAULT 0,
  `Quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playerlogs`
--

CREATE TABLE `playerlogs` (
  `Name` varchar(50) DEFAULT NULL,
  `UCP` varchar(50) DEFAULT NULL,
  `Activity` varchar(320) DEFAULT NULL,
  `Value` int(11) DEFAULT 0,
  `Time` varchar(320) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `playerlogs`
--

INSERT INTO `playerlogs` (`Name`, `UCP`, `Activity`, `Value`, `Time`) VALUES
('Rayy_Bonelo', 'Rayyzix', 'Membeli kendaraan Sultan seharga $40,500', 40500, '2025-05-27 15:10:45'),
('Rayy_Bonelo', 'Rayyzix', 'Membeli kendaraan Sanchez seharga $10,000', 10000, '2025-05-29 07:33:39'),
('Max_Escanor', 'HennCoyy', 'Memberikan uang kepada Oriea_Gaids sebesar $100 (Radial)', 100, '2026-03-21 09:02:55'),
('Max_Escanor', 'HennCoyy', 'Memberikan uang kepada Oriea_Gaids sebesar $100 (Radial)', 100, '2026-03-21 09:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `playerucp`
--

CREATE TABLE `playerucp` (
  `ID` int(11) NOT NULL,
  `ucp` varchar(22) DEFAULT NULL,
  `verifycode` int(11) DEFAULT 0,
  `DiscordID` varchar(50) DEFAULT '',
  `password` varchar(64) DEFAULT '',
  `salt` varchar(16) DEFAULT '',
  `extrac` int(11) DEFAULT 0,
  `reedem` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `playerucp`
--

INSERT INTO `playerucp` (`ID`, `ucp`, `verifycode`, `DiscordID`, `password`, `salt`, `extrac`, `reedem`) VALUES
(1, 'HennCoyy', 1, '', '06D9E9EBB888316D28D1F317D9CDB19D5D13DDBB67813A2254B3C53AE2CD531E', 'XXh2@k\'wBin&[tey', 0, 0),
(2, 'HennCoyyy', 12345, '', '8C9FE2E7125DD32967B9817891F211CA46D3A7DE42FD3614D30BF7C63C72B914', 'iF%[o-a4`NE(F=fE', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `player_bans`
--

CREATE TABLE `player_bans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(24) DEFAULT 'None',
  `ip` varchar(24) DEFAULT 'None',
  `longip` int(11) DEFAULT 0,
  `ban_expire` bigint(20) DEFAULT 0,
  `ban_date` bigint(20) DEFAULT 0,
  `last_activity_timestamp` bigint(20) DEFAULT 0,
  `admin` varchar(40) DEFAULT 'Server',
  `reason` varchar(128) DEFAULT 'None'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_characters`
--

CREATE TABLE `player_characters` (
  `pID` int(10) UNSIGNED NOT NULL,
  `Char_RegisterDate` varchar(30) DEFAULT '',
  `Char_LastLogin` varchar(30) DEFAULT '',
  `Char_Name` varchar(24) DEFAULT '',
  `Char_AdminName` varchar(24) DEFAULT 'None',
  `Char_AdminRankName` varchar(64) DEFAULT 'NULL',
  `Char_AdminPoint` int(11) UNSIGNED DEFAULT 0,
  `Char_IP` varchar(24) DEFAULT '',
  `Char_OnlineTimer` int(10) UNSIGNED DEFAULT 0,
  `Char_TheStars` tinyint(3) UNSIGNED DEFAULT 0,
  `Char_TheStarsTime` bigint(20) UNSIGNED DEFAULT 0,
  `Char_Admin` tinyint(3) UNSIGNED DEFAULT 0,
  `Char_AdminToggle` tinyint(3) UNSIGNED DEFAULT 1,
  `Char_Spy` int(11) UNSIGNED DEFAULT 0,
  `Char_Level` int(10) UNSIGNED DEFAULT 1,
  `Char_LevelUp` int(10) UNSIGNED DEFAULT 0,
  `Char_Vip` tinyint(3) UNSIGNED DEFAULT 0,
  `Char_VipTime` bigint(20) UNSIGNED DEFAULT 0,
  `Char_VipName` varchar(256) DEFAULT '-',
  `Char_ClaimSP` int(11) DEFAULT 0,
  `Char_Money` int(11) DEFAULT 0,
  `Char_RedMoney` int(11) DEFAULT 0,
  `Char_BankMoney` int(11) DEFAULT 0,
  `Char_Gopay` int(11) DEFAULT 0,
  `Char_BankRek` mediumint(8) UNSIGNED DEFAULT 0,
  `Char_BankPin` int(10) UNSIGNED DEFAULT 0,
  `Char_PhoneNum` varchar(50) DEFAULT '-',
  `Char_PhoneOff` int(11) DEFAULT 1,
  `Char_PhoneBattery` int(11) DEFAULT 100,
  `Char_Hours` int(10) UNSIGNED DEFAULT 0,
  `Char_Minutes` int(10) UNSIGNED DEFAULT 0,
  `Char_Seconds` int(10) UNSIGNED DEFAULT 0,
  `Char_Payday` int(10) UNSIGNED DEFAULT 0,
  `Char_Skin` smallint(5) UNSIGNED DEFAULT 0,
  `Char_Gender` tinyint(3) UNSIGNED DEFAULT 0,
  `Char_Age` varchar(30) DEFAULT '',
  `Char_Origin` varchar(128) DEFAULT 'None',
  `Char_BodyHeight` mediumint(9) DEFAULT 0,
  `Char_BodyWeight` mediumint(9) DEFAULT 0,
  `Char_InDoor` mediumint(9) DEFAULT -1,
  `Char_InHouse` mediumint(9) DEFAULT -1,
  `Char_InRusun` mediumint(9) DEFAULT -1,
  `Char_InBiz` mediumint(9) DEFAULT -1,
  `Char_InFamily` mediumint(9) DEFAULT -1,
  `Char_PosX` float DEFAULT 0,
  `Char_PosY` float DEFAULT 0,
  `Char_PosZ` float DEFAULT 0,
  `Char_PosA` float DEFAULT 0,
  `Char_IntID` int(10) UNSIGNED DEFAULT 0,
  `Char_WID` int(10) UNSIGNED DEFAULT 0,
  `Char_Health` float DEFAULT 100,
  `Char_Armour` float DEFAULT 0,
  `Char_Hunger` int(11) DEFAULT 100,
  `Char_Thirst` int(11) DEFAULT 100,
  `Char_Stress` int(11) DEFAULT 100,
  `Char_KnockDown` tinyint(3) UNSIGNED DEFAULT 0,
  `Char_KnockTime` int(11) DEFAULT 0,
  `Char_Faction` tinyint(3) UNSIGNED DEFAULT 0,
  `Char_FactionRank` tinyint(3) UNSIGNED DEFAULT 0,
  `Char_Family` tinyint(4) DEFAULT -1,
  `Char_FamilyRank` tinyint(3) UNSIGNED DEFAULT 0,
  `Char_Jail` int(10) UNSIGNED DEFAULT 0,
  `Char_JailTime` int(10) UNSIGNED DEFAULT 0,
  `Char_JailReason` varchar(126) DEFAULT 'None',
  `Char_JailBy` varchar(64) DEFAULT 'Server',
  `Char_Arrest` int(11) DEFAULT 0,
  `Char_ArrestTime` int(10) DEFAULT 0,
  `Char_Uniform` int(11) DEFAULT 0,
  `Char_UsingUniform` int(11) DEFAULT 0,
  `Char_AskTime` int(10) UNSIGNED DEFAULT 0,
  `Char_Warn` tinyint(3) UNSIGNED DEFAULT 0,
  `Char_Job` tinyint(3) UNSIGNED DEFAULT 0,
  `Char_JobExitTime` int(10) UNSIGNED DEFAULT 0,
  `Char_MowerTime` int(10) UNSIGNED DEFAULT 0,
  `Char_Helmet` tinyint(3) UNSIGNED DEFAULT 0,
  `Char_TogPM` tinyint(3) UNSIGNED DEFAULT 0,
  `Char_TogGlobal` tinyint(3) UNSIGNED DEFAULT 1,
  `Char_Render` float UNSIGNED DEFAULT 0,
  `Char_RenderValue` int(10) UNSIGNED DEFAULT 0,
  `Char_XmasGift` bigint(20) UNSIGNED DEFAULT 0,
  `Char_SKWB` int(10) UNSIGNED DEFAULT 0,
  `Char_SKWBTime` bigint(20) UNSIGNED DEFAULT 0,
  `Char_CallRingtone` varchar(128) DEFAULT 'None',
  `Char_NotifStyle` tinyint(4) DEFAULT 1,
  `Char_AirplaneMode` tinyint(4) DEFAULT 1,
  `Char_HUDMode` tinyint(4) DEFAULT 1,
  `Char_HudColor` int(11) DEFAULT -92245249,
  `Char_UrineTime` bigint(20) DEFAULT 0,
  `Char_Online` tinyint(4) DEFAULT 0,
  `Char_VotePilkada` tinyint(4) DEFAULT 0,
  `Char_Boombox` tinyint(4) DEFAULT 0,
  `Char_Streamer` tinyint(4) DEFAULT NULL,
  `Char_WallpaperColor` int(11) DEFAULT 7,
  `Char_CaseColor` int(11) DEFAULT 15,
  `Gun1` int(10) UNSIGNED DEFAULT 0,
  `Gun2` int(10) UNSIGNED DEFAULT 0,
  `Gun3` int(10) UNSIGNED DEFAULT 0,
  `Gun4` int(10) UNSIGNED DEFAULT 0,
  `Gun5` int(10) UNSIGNED DEFAULT 0,
  `Gun6` int(10) UNSIGNED DEFAULT 0,
  `Gun7` int(10) UNSIGNED DEFAULT 0,
  `Gun8` int(10) UNSIGNED DEFAULT 0,
  `Gun9` int(10) UNSIGNED DEFAULT 0,
  `Gun10` int(10) UNSIGNED DEFAULT 0,
  `Gun11` int(10) UNSIGNED DEFAULT 0,
  `Gun12` int(10) UNSIGNED DEFAULT 0,
  `Gun13` int(10) UNSIGNED DEFAULT 0,
  `Ammo1` int(10) UNSIGNED DEFAULT 0,
  `Ammo2` int(10) UNSIGNED DEFAULT 0,
  `Ammo3` int(10) UNSIGNED DEFAULT 0,
  `Ammo4` int(10) UNSIGNED DEFAULT 0,
  `Ammo5` int(10) UNSIGNED DEFAULT 0,
  `Ammo6` int(10) UNSIGNED DEFAULT 0,
  `Ammo7` int(10) UNSIGNED DEFAULT 0,
  `Ammo8` int(10) UNSIGNED DEFAULT 0,
  `Ammo9` int(10) UNSIGNED DEFAULT 0,
  `Ammo10` int(10) UNSIGNED DEFAULT 0,
  `Ammo11` int(10) UNSIGNED DEFAULT 0,
  `Ammo12` int(10) UNSIGNED DEFAULT 0,
  `Ammo13` int(10) UNSIGNED DEFAULT 0,
  `Char_Head` int(11) DEFAULT 0,
  `Char_Stomach` int(11) DEFAULT 0,
  `Char_LeftArm` int(11) DEFAULT 0,
  `Char_RightArm` int(11) DEFAULT 0,
  `Char_LeftFoot` int(11) DEFAULT 0,
  `Char_RightFoot` int(11) DEFAULT 0,
  `Char_DCTime` bigint(20) DEFAULT 0,
  `Char_BackpackWeight` float(20,3) DEFAULT 0.000,
  `Char_PajakTime` int(11) DEFAULT 18000,
  `Char_HasGudangID` int(11) DEFAULT -1,
  `Char_HasRusunID` int(11) DEFAULT -1,
  `Char_GudangRentTime` bigint(20) UNSIGNED DEFAULT 0,
  `Char_MaskID` int(11) DEFAULT 0,
  `Char_OnDuty` tinyint(3) UNSIGNED DEFAULT 0,
  `Char_DutyPD` tinyint(3) UNSIGNED DEFAULT 0,
  `Char_DutyPemerintah` tinyint(3) UNSIGNED DEFAULT 0,
  `Char_DutyEms` tinyint(3) UNSIGNED DEFAULT 0,
  `Char_DutyTrans` tinyint(3) UNSIGNED DEFAULT 0,
  `Char_DutyPedagang` tinyint(3) UNSIGNED DEFAULT 0,
  `Char_DutyBengkel` tinyint(3) UNSIGNED DEFAULT 0,
  `Char_SimA` int(11) DEFAULT 0,
  `Char_SimATime` bigint(20) DEFAULT 0,
  `Char_SimB` int(11) DEFAULT 0,
  `Char_SimBTime` bigint(20) DEFAULT 0,
  `Char_SimC` int(11) DEFAULT 0,
  `Char_SimCTime` bigint(20) DEFAULT 0,
  `Char_WeaponLic` int(11) DEFAULT 0,
  `Char_WeaponLicTime` bigint(20) DEFAULT 0,
  `Char_HuntingLic` int(11) DEFAULT 0,
  `Char_HuntingLicTime` bigint(20) DEFAULT 0,
  `Char_Earphone` int(11) DEFAULT 0,
  `Char_Radio` int(11) DEFAULT 0,
  `Char_Ktp` tinyint(4) DEFAULT 0,
  `Char_KtpTime` int(11) DEFAULT 0,
  `Char_DownloadWhatsapp` tinyint(4) DEFAULT 0,
  `Char_DownloadGojek` tinyint(4) DEFAULT 0,
  `Char_DownloadSpotify` tinyint(4) DEFAULT 0,
  `Char_DownloadTwitter` tinyint(4) DEFAULT 0,
  `Char_Kompensasi` int(11) DEFAULT 0,
  `Char_AdminHide` int(11) DEFAULT 0,
  `Char_RusunStorage` float DEFAULT 0,
  `Char_GudangStorage` float DEFAULT 0,
  `Char_OwnedHouse` int(11) DEFAULT -1,
  `Char_FriendHouse` int(11) DEFAULT -1,
  `Char_TogAutoEngine` int(11) DEFAULT 0,
  `Char_SKS` int(11) DEFAULT 0,
  `Char_SKSTime` bigint(20) UNSIGNED DEFAULT 0,
  `Char_SKSNameDoc` varchar(128) DEFAULT 'None',
  `Char_SKSRankDoc` varchar(128) DEFAULT 'None',
  `Char_SKSReason` varchar(128) DEFAULT 'None',
  `Char_SKCK` int(11) DEFAULT 0,
  `Char_SKCKTime` bigint(20) DEFAULT 0,
  `Char_SKCKNamePol` varchar(128) DEFAULT 'None',
  `Char_SKCKRankPol` varchar(128) DEFAULT 'None',
  `Char_SKCKReason` varchar(128) DEFAULT 'None',
  `Char_BPJS` int(11) DEFAULT 0,
  `Char_BPJSTime` bigint(20) DEFAULT 0,
  `Char_BPJSLevel` varchar(128) DEFAULT 'None',
  `Char_Twitter` int(12) DEFAULT 0,
  `Char_VehicleSlotPlus` int(12) DEFAULT 0,
  `Char_HouseSlotPlus` int(12) DEFAULT 1,
  `Char_TwitterName` varchar(128) DEFAULT 'None',
  `Char_TwitterPassword` varchar(128) DEFAULT '',
  `Char_DelayTrashmaster` int(11) DEFAULT 0,
  `Char_SweeperDelay` int(11) DEFAULT 0,
  `Char_DeliveryDelay` int(11) DEFAULT 0,
  `Char_ForkliftDelay` int(11) DEFAULT 0,
  `Char_BusDelay` int(11) DEFAULT 0,
  `Char_UCP` varchar(22) DEFAULT NULL,
  `Char_PlayTime` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `player_characters`
--

INSERT INTO `player_characters` (`pID`, `Char_RegisterDate`, `Char_LastLogin`, `Char_Name`, `Char_AdminName`, `Char_AdminRankName`, `Char_AdminPoint`, `Char_IP`, `Char_OnlineTimer`, `Char_TheStars`, `Char_TheStarsTime`, `Char_Admin`, `Char_AdminToggle`, `Char_Spy`, `Char_Level`, `Char_LevelUp`, `Char_Vip`, `Char_VipTime`, `Char_VipName`, `Char_ClaimSP`, `Char_Money`, `Char_RedMoney`, `Char_BankMoney`, `Char_Gopay`, `Char_BankRek`, `Char_BankPin`, `Char_PhoneNum`, `Char_PhoneOff`, `Char_PhoneBattery`, `Char_Hours`, `Char_Minutes`, `Char_Seconds`, `Char_Payday`, `Char_Skin`, `Char_Gender`, `Char_Age`, `Char_Origin`, `Char_BodyHeight`, `Char_BodyWeight`, `Char_InDoor`, `Char_InHouse`, `Char_InRusun`, `Char_InBiz`, `Char_InFamily`, `Char_PosX`, `Char_PosY`, `Char_PosZ`, `Char_PosA`, `Char_IntID`, `Char_WID`, `Char_Health`, `Char_Armour`, `Char_Hunger`, `Char_Thirst`, `Char_Stress`, `Char_KnockDown`, `Char_KnockTime`, `Char_Faction`, `Char_FactionRank`, `Char_Family`, `Char_FamilyRank`, `Char_Jail`, `Char_JailTime`, `Char_JailReason`, `Char_JailBy`, `Char_Arrest`, `Char_ArrestTime`, `Char_Uniform`, `Char_UsingUniform`, `Char_AskTime`, `Char_Warn`, `Char_Job`, `Char_JobExitTime`, `Char_MowerTime`, `Char_Helmet`, `Char_TogPM`, `Char_TogGlobal`, `Char_Render`, `Char_RenderValue`, `Char_XmasGift`, `Char_SKWB`, `Char_SKWBTime`, `Char_CallRingtone`, `Char_NotifStyle`, `Char_AirplaneMode`, `Char_HUDMode`, `Char_HudColor`, `Char_UrineTime`, `Char_Online`, `Char_VotePilkada`, `Char_Boombox`, `Char_Streamer`, `Char_WallpaperColor`, `Char_CaseColor`, `Gun1`, `Gun2`, `Gun3`, `Gun4`, `Gun5`, `Gun6`, `Gun7`, `Gun8`, `Gun9`, `Gun10`, `Gun11`, `Gun12`, `Gun13`, `Ammo1`, `Ammo2`, `Ammo3`, `Ammo4`, `Ammo5`, `Ammo6`, `Ammo7`, `Ammo8`, `Ammo9`, `Ammo10`, `Ammo11`, `Ammo12`, `Ammo13`, `Char_Head`, `Char_Stomach`, `Char_LeftArm`, `Char_RightArm`, `Char_LeftFoot`, `Char_RightFoot`, `Char_DCTime`, `Char_BackpackWeight`, `Char_PajakTime`, `Char_HasGudangID`, `Char_HasRusunID`, `Char_GudangRentTime`, `Char_MaskID`, `Char_OnDuty`, `Char_DutyPD`, `Char_DutyPemerintah`, `Char_DutyEms`, `Char_DutyTrans`, `Char_DutyPedagang`, `Char_DutyBengkel`, `Char_SimA`, `Char_SimATime`, `Char_SimB`, `Char_SimBTime`, `Char_SimC`, `Char_SimCTime`, `Char_WeaponLic`, `Char_WeaponLicTime`, `Char_HuntingLic`, `Char_HuntingLicTime`, `Char_Earphone`, `Char_Radio`, `Char_Ktp`, `Char_KtpTime`, `Char_DownloadWhatsapp`, `Char_DownloadGojek`, `Char_DownloadSpotify`, `Char_DownloadTwitter`, `Char_Kompensasi`, `Char_AdminHide`, `Char_RusunStorage`, `Char_GudangStorage`, `Char_OwnedHouse`, `Char_FriendHouse`, `Char_TogAutoEngine`, `Char_SKS`, `Char_SKSTime`, `Char_SKSNameDoc`, `Char_SKSRankDoc`, `Char_SKSReason`, `Char_SKCK`, `Char_SKCKTime`, `Char_SKCKNamePol`, `Char_SKCKRankPol`, `Char_SKCKReason`, `Char_BPJS`, `Char_BPJSTime`, `Char_BPJSLevel`, `Char_Twitter`, `Char_VehicleSlotPlus`, `Char_HouseSlotPlus`, `Char_TwitterName`, `Char_TwitterPassword`, `Char_DelayTrashmaster`, `Char_SweeperDelay`, `Char_DeliveryDelay`, `Char_ForkliftDelay`, `Char_BusDelay`, `Char_UCP`, `Char_PlayTime`) VALUES
(10, '2026-02-10 22:46:29', '2026-03-21 09:46:04', 'Oriea_Gaids', 'HennCoyyy', 'NULL', 0, '192.168.1.7', 91, 0, 0, 0, 1, 0, 1, 1, 0, 0, '', 0, 5300, 0, 2000, 0, 687450, 0, '081281644495', 1, 100, 0, 0, 0, 0, 59, 1, '01/01/2002', 'Indo', 170, 70, -1, -1, -1, -1, -1, 411.437, -1322.22, 15.2005, 74.4305, 0, 0, 100, 0, 100, 100, 3, 0, 0, 0, 0, -1, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 1000, 0, 0, 0, '', 1, 0, 1, -92245249, 0, 0, 0, 0, NULL, -1378294017, -1378294017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 100, 100, 100, 100, 100, 1774064764, 0.010, 18000, -1, -1, 0, 54614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 0, 0, 'N/A', 'N/A', 'N/A', 0, 0, 'N/A', 'N/A', '', 0, 0, 'N/A', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 'HennCoyyy', 1864),
(9, '2026-02-10 21:53:22', '2026-03-21 09:46:04', 'Max_Escanor', 'HennCoyy', 'NULL', 0, '255.255.255.255', 1673, 0, 0, 7, 1, 0, 20, 1, 0, 0, '', 0, 5100, 0, 2000, 0, 427750, 0, '081251319335', 1, 100, 0, 0, 0, 0, 59, 1, '03/02/2001', 'USA', 170, 70, -1, -1, -1, -1, -1, 409.15, -1319.45, 15.1968, 220.464, 0, 0, 69, 0, 95, 95, 18, 0, 0, 0, 0, -1, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 1000, 0, 0, 0, '', 1, 0, 1, -92245249, 0, 0, 0, 0, NULL, -1378294017, -1378294017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 100, 100, 0, 100, 100, 1774064764, 0.690, 18000, -1, -1, 0, 22491, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 0, 0, 'N/A', 'N/A', 'N/A', 0, 0, 'N/A', 'N/A', '', 0, 0, 'N/A', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 'HennCoyy', 90494);

-- --------------------------------------------------------

--
-- Table structure for table `player_factionvehicle`
--

CREATE TABLE `player_factionvehicle` (
  `vID` int(11) NOT NULL,
  `PFVeh_OwnerID` int(11) DEFAULT -1,
  `PFVeh_ModelID` int(11) DEFAULT 0,
  `PFVeh_PosX` float DEFAULT 0,
  `PFVeh_PosY` float DEFAULT 0,
  `PFVeh_PosZ` float DEFAULT 0,
  `PFVeh_PosA` float DEFAULT 0,
  `PFVeh_Health` float DEFAULT 0,
  `PFVeh_Fuel` int(11) DEFAULT 0,
  `PFVeh_Interior` int(11) DEFAULT 0,
  `PFVeh_World` int(11) DEFAULT 0,
  `PFVeh_Damage0` int(11) DEFAULT 0,
  `PFVeh_Damage1` int(11) DEFAULT 0,
  `PFVeh_Damage2` int(11) DEFAULT 0,
  `PFVeh_Damage3` int(11) DEFAULT 0,
  `PFVeh_Color1` int(11) DEFAULT 0,
  `PFVeh_Color2` int(11) DEFAULT 0,
  `PFVeh_Faction` int(11) DEFAULT 0,
  `PFVeh_DCTime` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_gudang`
--

CREATE TABLE `player_gudang` (
  `ID` int(11) DEFAULT 0,
  `itemID` int(11) NOT NULL,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(11) DEFAULT 0,
  `itemQuantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_housestorage`
--

CREATE TABLE `player_housestorage` (
  `ID` int(11) DEFAULT 0,
  `hsItemID` int(11) NOT NULL,
  `hsItemName` varchar(32) DEFAULT NULL,
  `hsItemModel` int(11) DEFAULT 0,
  `hsItemQuantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_rusunstorage`
--

CREATE TABLE `player_rusunstorage` (
  `ID` int(11) DEFAULT 0,
  `rsItemID` int(11) NOT NULL,
  `rsItemName` varchar(32) DEFAULT NULL,
  `rsItemModel` int(11) DEFAULT 0,
  `rsItemQuantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_vehicles`
--

CREATE TABLE `player_vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `PVeh_OwnerID` int(11) DEFAULT -1,
  `PVeh_ModelID` int(11) DEFAULT 0,
  `PVeh_Color1` int(11) DEFAULT 0,
  `PVeh_Color2` int(11) DEFAULT 0,
  `PVeh_Paintjob` int(11) DEFAULT -1,
  `PVeh_Neon` int(11) DEFAULT 0,
  `PVeh_Locked` int(11) DEFAULT 0,
  `PVeh_Plate` varchar(50) NOT NULL DEFAULT 'None',
  `PVeh_PlateTime` bigint(20) DEFAULT 0,
  `PVeh_PlateOwned` int(11) DEFAULT 0,
  `PVeh_Price` int(11) DEFAULT 200000,
  `PVeh_Health` float DEFAULT 1000,
  `PVeh_Fuel` int(11) DEFAULT 100,
  `PVeh_OilLife` float DEFAULT 100,
  `PVeh_TireFL` float DEFAULT 100,
  `PVeh_TireFR` float DEFAULT 100,
  `PVeh_TireRL` float DEFAULT 100,
  `PVeh_TireRR` float DEFAULT 100,
  `PVeh_OilLastTime` bigint(20) DEFAULT 0,
  `PVeh_OilLastBy` varchar(24) NOT NULL DEFAULT '-',
  `PVeh_TireFLTime` bigint(20) DEFAULT 0,
  `PVeh_TireFLBy` varchar(24) NOT NULL DEFAULT '-',
  `PVeh_TireFRTime` bigint(20) DEFAULT 0,
  `PVeh_TireFRBy` varchar(24) NOT NULL DEFAULT '-',
  `PVeh_TireRLTime` bigint(20) DEFAULT 0,
  `PVeh_TireRLBy` varchar(24) NOT NULL DEFAULT '-',
  `PVeh_TireRRTime` bigint(20) DEFAULT 0,
  `PVeh_TireRRBy` varchar(24) NOT NULL DEFAULT '-',
  `PVeh_PosX` float DEFAULT 0,
  `PVeh_PosY` float DEFAULT 0,
  `PVeh_PosZ` float DEFAULT 0,
  `PVeh_PosA` float DEFAULT 0,
  `PVeh_Interior` int(11) DEFAULT 0,
  `PVeh_World` int(11) DEFAULT 0,
  `PVeh_Damage0` int(11) DEFAULT 0,
  `PVeh_Damage1` int(11) DEFAULT 0,
  `PVeh_Damage2` int(11) DEFAULT 0,
  `PVeh_Damage3` int(11) DEFAULT 0,
  `PVeh_Mod0` int(11) DEFAULT 0,
  `PVeh_Mod1` int(11) DEFAULT 0,
  `PVeh_Mod2` int(11) DEFAULT 0,
  `PVeh_Mod3` int(11) DEFAULT 0,
  `PVeh_Mod4` int(11) DEFAULT 0,
  `PVeh_Mod5` int(11) DEFAULT 0,
  `PVeh_Mod6` int(11) DEFAULT 0,
  `PVeh_Mod7` int(11) DEFAULT 0,
  `PVeh_Mod8` int(11) DEFAULT 0,
  `PVeh_Mod9` int(11) DEFAULT 0,
  `PVeh_Mod10` int(11) DEFAULT 0,
  `PVeh_Mod11` int(11) DEFAULT 0,
  `PVeh_Mod12` int(11) DEFAULT 0,
  `PVeh_Mod13` int(11) DEFAULT 0,
  `PVeh_Mod14` int(11) DEFAULT 0,
  `PVeh_Mod15` int(11) DEFAULT 0,
  `PVeh_Mod16` int(11) DEFAULT 0,
  `PVeh_LockTire` int(11) DEFAULT 0,
  `PVeh_EngineUpgrade` int(11) DEFAULT 0,
  `PVeh_BodyUpgrade` int(11) DEFAULT 0,
  `PVeh_BodyRepair` float DEFAULT 0,
  `PVeh_Weapon1` int(11) DEFAULT 0,
  `PVeh_Weapon2` int(11) DEFAULT 0,
  `PVeh_Weapon3` int(11) DEFAULT 0,
  `PVeh_Ammo1` int(11) DEFAULT 0,
  `PVeh_Ammo2` int(11) DEFAULT 0,
  `PVeh_Ammo3` int(11) DEFAULT 0,
  `PVeh_Rental` int(11) DEFAULT -1,
  `PVeh_RentTime` bigint(20) DEFAULT 0,
  `PVeh_Parked` int(11) DEFAULT -1,
  `PVeh_Broken` tinyint(1) DEFAULT 0,
  `PVeh_Insuranced` int(11) DEFAULT 0,
  `PVeh_Faction` int(11) DEFAULT 0,
  `PVeh_Donation` int(11) DEFAULT 0,
  `PVeh_DCTime` bigint(20) DEFAULT 0,
  `PVeh_Impounded` int(11) DEFAULT 0,
  `PVeh_ImpoundedTime` bigint(20) DEFAULT 0,
  `PVeh_ImpoundedPrice` int(11) DEFAULT 0,
  `PVeh_ImpoundedReason` varchar(128) DEFAULT '-',
  `PVeh_Housed` int(11) DEFAULT -1,
  `PVeh_Helipad` int(11) DEFAULT -1,
  `PVeh_Families` int(11) DEFAULT -1,
  `PVeh_FactionGarage` int(11) DEFAULT -1,
  `PVeh_Capacity` float DEFAULT 0,
  `vehicles_locktire` int(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `player_vehicles`
--

INSERT INTO `player_vehicles` (`id`, `PVeh_OwnerID`, `PVeh_ModelID`, `PVeh_Color1`, `PVeh_Color2`, `PVeh_Paintjob`, `PVeh_Neon`, `PVeh_Locked`, `PVeh_Plate`, `PVeh_PlateTime`, `PVeh_PlateOwned`, `PVeh_Price`, `PVeh_Health`, `PVeh_Fuel`, `PVeh_PosX`, `PVeh_PosY`, `PVeh_PosZ`, `PVeh_PosA`, `PVeh_Interior`, `PVeh_World`, `PVeh_Damage0`, `PVeh_Damage1`, `PVeh_Damage2`, `PVeh_Damage3`, `PVeh_Mod0`, `PVeh_Mod1`, `PVeh_Mod2`, `PVeh_Mod3`, `PVeh_Mod4`, `PVeh_Mod5`, `PVeh_Mod6`, `PVeh_Mod7`, `PVeh_Mod8`, `PVeh_Mod9`, `PVeh_Mod10`, `PVeh_Mod11`, `PVeh_Mod12`, `PVeh_Mod13`, `PVeh_Mod14`, `PVeh_Mod15`, `PVeh_Mod16`, `PVeh_LockTire`, `PVeh_EngineUpgrade`, `PVeh_BodyUpgrade`, `PVeh_BodyRepair`, `PVeh_Weapon1`, `PVeh_Weapon2`, `PVeh_Weapon3`, `PVeh_Ammo1`, `PVeh_Ammo2`, `PVeh_Ammo3`, `PVeh_Rental`, `PVeh_RentTime`, `PVeh_Parked`, `PVeh_Broken`, `PVeh_Insuranced`, `PVeh_Faction`, `PVeh_Donation`, `PVeh_DCTime`, `PVeh_Impounded`, `PVeh_ImpoundedTime`, `PVeh_ImpoundedPrice`, `PVeh_ImpoundedReason`, `PVeh_Housed`, `PVeh_Helipad`, `PVeh_Families`, `PVeh_FactionGarage`, `PVeh_Capacity`, `vehicles_locktire`) VALUES
(1, 1, 560, 214, 208, -1, 0, 0, '-', 0, 0, 40500, 986.577, 99, 539.687, -1287.64, 16.9474, 267.056, 0, 0, 2097184, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 16, 0, 0, 0, 0, 1748525900, 0, 0, 0, '', -1, -1, -1, -1, 0, 0),
(2, 1, 468, 41, 34, -1, 0, 0, '-', 0, 0, 10000, 1000, 99, 541.236, -1287.36, 16.912, 238.872, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 16, 0, 0, 0, 0, 1748525900, 0, 0, 0, '', -1, -1, -1, -1, 0, 0),
(6, 6, 560, 1, 1, -1, 0, 0, '-', 0, 0, 10000, 1000, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 49, 0, 0, 0, 0, 1755168941, 0, 0, 0, '', -1, -1, -1, -1, 0, 0),
(7, 6, 562, 1, 1, -1, 0, 0, '-', 0, 0, 10000, 1000, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 49, 0, 0, 0, 0, 1755168941, 0, 0, 0, '', -1, -1, -1, -1, 0, 0),
(8, 6, 468, 1, 1, -1, 0, 0, '-', 0, 0, 10000, 1000, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 49, 0, 0, 0, 0, 1755168941, 0, 0, 0, '', -1, -1, -1, -1, 0, 0),
(9, 6, 411, 1, 1, -1, 0, 0, '-', 0, 0, 10000, 901.374, 96, 390.52, -1801.28, 7.5552, 94.6976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 1755168941, 0, 0, 0, '', -1, -1, -1, -1, 0, 0),
(10, 9, 468, 36, 36, -1, 0, 0, 'AE 0871 EJV', 0, 1, 0, 800, 100, 409.111, -1321.56, 14.5456, 191.369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 1774064764, 0, 0, 0, '', -1, -1, -1, -1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `polisi_brankas`
--

CREATE TABLE `polisi_brankas` (
  `PID` int(11) DEFAULT 0,
  `ID` int(11) NOT NULL,
  `Item` varchar(64) NOT NULL DEFAULT '-',
  `Model` int(11) DEFAULT 0,
  `Quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `polisi_brankas`
--

INSERT INTO `polisi_brankas` (`PID`, `ID`, `Item`, `Model`, `Quantity`) VALUES
(0, 2, 'Plat Besi', 3117, 451),
(0, 26, 'Tools Kit', 19918, 180),
(0, 36, 'Kevlar', 19515, 137),
(0, 37, 'Bandage', 11736, 100),
(0, 39, 'Hacking Card', 19792, 1),
(0, 40, 'Kanabis', 19473, 190),
(0, 41, 'Marijuana', 1575, 2),
(0, 42, 'Kunci T', 334, 1),
(0, 43, 'Linggis', 18634, 2),
(0, 44, 'Masker', 19036, 1),
(0, 45, 'Penyu', 1609, 1),
(0, 46, 'Garam Kristal', 1611, 78);

-- --------------------------------------------------------

--
-- Table structure for table `public_garage`
--

CREATE TABLE `public_garage` (
  `pgID` int(11) NOT NULL,
  `pgName` varchar(64) DEFAULT 'N/A',
  `pgPosX` float DEFAULT 0,
  `pgPosY` float DEFAULT 0,
  `pgPosZ` float DEFAULT 0,
  `pgSpawnX` float DEFAULT 0,
  `pgSpawnY` float DEFAULT 0,
  `pgSpawnZ` float DEFAULT 0,
  `pgSpawnA` float DEFAULT 0,
  `pgInterior` int(11) NOT NULL DEFAULT 0,
  `pgWorld` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `public_garage`
--

INSERT INTO `public_garage` (`pgID`, `pgName`, `pgPosX`, `pgPosY`, `pgPosZ`, `pgSpawnX`, `pgSpawnY`, `pgSpawnZ`, `pgSpawnA`, `pgInterior`, `pgWorld`) VALUES
(0, 'bandara', 1539.56, -2348.39, 13.5469, 1514.63, -2347.9, 13.5469, 90.5132, 0, 0),
(1, 'mekanik', -43.7877, 1051.3, 19.7042, -44.0157, 1044.42, 19.7569, 182.182, 0, 0),
(2, 'karnaval park', 393.481, -2038.39, 7.83594, 394.138, -2029.14, 7.83594, 102.208, 0, 0),
(3, '3 penambang', 688.942, 889.758, -39.291, 682.929, 890.506, -39.7365, 71.796, 0, 0),
(4, 'pencuci batu', -361.948, 1188.07, 19.7422, -351.295, 1179.19, 19.7422, 12.9595, 0, 0),
(5, 'peleburan batu', 2170.04, -2281.27, 13.4639, 2177.73, -2292.62, 13.5469, 322.941, 0, 0),
(6, 'garkot bahamas', 2425.83, -1234.03, 24.677, 2411.83, -1231.61, 24.1055, 169.987, 0, 0),
(7, 'garkot pedagang', 2861.94, -1950.62, 10.938, 2862.49, -1965.33, 10.9377, 185.153, 0, 0),
(8, 'balaikota ', 1275.83, -2038.59, 59.0373, 1252.5, -2055.28, 59.6477, 274.67, 0, 0),
(9, 'garkot pemotongan ayam', 1912.06, 175.111, 37.2722, 1907.11, 160.785, 37.1491, 161.997, 0, 0),
(10, 'kandang ayam', 1549.44, 25.9974, 24.1406, 1557.87, 27.4916, 24.1641, 284.828, 0, 0),
(11, 'pasar ', 899.889, -1172.95, 16.9766, 910.313, -1173.03, 16.9766, 271.831, 0, 0),
(12, 'kantor polisi', 655.883, -1455.75, 15.4395, 660.776, -1457.32, 15.4395, 179.901, 0, 0),
(13, 'minyak 1', 467.377, 1269.29, 9.23154, 468.652, 1260.42, 9.14875, 109.705, 0, 0),
(14, 'minyak 2', 492.738, 1501.5, 1, 504.504, 1515.84, 1, 168.716, 0, 0),
(15, 'minyak 3', 281.521, 1363.04, 10.5859, 263.451, 1364.63, 10.5859, 324.592, 0, 0),
(16, 'garasi shoowroom', 540.602, -1288.01, 17.2422, 557.237, -1262.4, 17.2422, 349.758, 0, 0),
(17, 'ooyoo', 2216.42, -1169.86, 25.7266, 2216.52, -1162.45, 25.7266, 285.622, 0, 0),
(18, 'parkiran rs', 1214.19, -1342.68, 13.5732, 1209.15, -1342.26, 13.3995, 10.5122, 0, 0),
(19, 'Recycler 2', -7.89834, 1384.76, 9.17188, -20.7332, 1377.59, 9.17188, 83.2264, 0, 0),
(20, '18 spawn pos', 2351.21, -77.3978, 26.4844, 2351.21, -77.3978, 26.4844, 239.495, 0, 0),
(21, 'DAUR ULANG', 2313.76, 2759.07, 10.8203, 2313.49, 2746.94, 10.8203, 194.107, 0, 0),
(22, 'parkiran pernikahan ', 824.781, -1984.62, 12.8672, 833.746, -1985.06, 12.8672, 2.64981, 0, 0),
(23, 'pemotongan kayu', -520.956, -69.1547, 62.4134, -515.876, -69.4778, 62.2179, 14.6935, 0, 0),
(24, 'terminal bus', 128.101, -273.452, 1.57812, 128.466, -265.768, 1.57812, 110.665, 0, 0),
(25, 'Modshop', 1106.91, -1225.84, 15.8272, 1101.89, -1225.87, 15.8203, 194.561, 0, 0),
(26, 'Emerald Group', 2201, -999.612, 62.2948, 2201, -999.612, 62.2948, 166.321, 0, 0),
(27, 'Mercusuar', 145.278, -1759.9, 5.06912, 157.01, -1765.64, 4.53581, 1.78004, 0, 0),
(28, 'Pasbek Garage', 316.772, -1801.01, 4.60222, 321.263, -1810.74, 4.45111, 0.867052, 0, 0),
(29, 'Garasi Rumah', 731.038, -1252.86, 13.5537, 729.765, -1243.08, 13.5469, 261.74, 0, 0),
(30, 'WORKSHOP0', 1360.14, 746.176, 10.8361, 1367.95, 747.867, 10.8203, 350.582, 0, 0),
(31, 'Hospital', 1169.66, -1380.95, 13.5472, 1168.24, -1368.2, 13.5472, 268.267, 0, 0),
(33, 'Garasi Rumah', 286.453, -1160.27, 80.9099, 285.465, -1168.89, 80.9099, 231.542, 0, 0),
(34, 'kargo', -1722.76, 81.8887, 3.54956, -1716.08, 82.4782, 3.54956, 178.644, 0, 0),
(35, 'Rumah Toni', 1009.89, -657.599, 121.144, 1005.26, -649.437, 121.189, 19.1536, 0, 0),
(36, 'WORKSHOP 1', 618.953, -498.349, 16.2324, 631.132, -498.452, 16.2324, 153.584, 0, 0),
(37, 'TOKO BAJU', 1293.05, -1865.88, 13.5469, 1292.62, -1860.57, 13.5469, 2.51979, 0, 0),
(38, 'GARKOT ATEMINT', 1474.17, -1725.49, 13.5469, 1480.77, -1725.45, 13.5469, 181.511, 0, 0),
(39, 'Heliped Workshop', 684.459, -451.098, 23.7288, 674.143, -454.184, 23.7288, 179.828, 0, 0),
(40, 'Bahamas Lv', 2192.59, 1822.88, 10.8203, 2185.2, 1822.37, 10.8203, 179.319, 0, 0),
(41, 'KERJA SUSU', 315.07, 1161.54, 8.67367, 327.451, 1163, 8.44348, 193.028, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `race_results`
--

CREATE TABLE `race_results` (
  `id` int(11) NOT NULL,
  `player_name` varchar(24) NOT NULL,
  `race_id` int(11) NOT NULL,
  `finish_time` float NOT NULL,
  `finish_position` int(11) NOT NULL,
  `finish_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `ID` int(11) NOT NULL,
  `Reporter` varchar(24) NOT NULL,
  `Reason` varchar(200) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Accepted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `robbery`
--

CREATE TABLE `robbery` (
  `RobberyID` int(11) DEFAULT NULL,
  `RobberyX` float DEFAULT 0,
  `RobberyY` float DEFAULT 0,
  `RobberyZ` float DEFAULT 0,
  `RobberyRX` float DEFAULT 0,
  `RobberyRY` float DEFAULT 0,
  `RobberyRZ` float DEFAULT 0,
  `RobberyInterior` int(11) DEFAULT 0,
  `RobberyWorld` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `robbery`
--

INSERT INTO `robbery` (`RobberyID`, `RobberyX`, `RobberyY`, `RobberyZ`, `RobberyRX`, `RobberyRY`, `RobberyRZ`, `RobberyInterior`, `RobberyWorld`) VALUES
(2, 27.1736, -268.245, 2.80818, 0, 0, -90.4, 0, 0),
(3, -2192.78, -2240.74, 31.9481, 0, 0, -37.7, 0, 0),
(4, 2530.5, -1538.87, 25.1781, 0, 0, -179.8, 0, 0),
(5, -2353.63, 1018.97, 52.1882, 0, 0, 0.099968, 0, 0),
(6, 63.194, 1135.91, 20.9381, 0, 0, -93.5, 0, 0),
(7, 2570.85, 76.1996, 27.8481, 0, 0, 0, 0, 0),
(8, -2646.84, 1344.68, 8.37431, 0, 0, 90.2, 0, 0),
(9, 2321.97, 960.496, 12.0781, 0, 0, -90.7001, 0, 0),
(10, 245.154, -55.9351, 1.05764, 0, 0, 179.7, 0, 0),
(0, 1308.84, -873.87, 39.9181, 0, 0, 0, 0, 0),
(2, 27.1736, -268.245, 2.80818, 0, 0, -90.4, 0, 0),
(3, -2192.78, -2240.74, 31.9481, 0, 0, -37.7, 0, 0),
(4, 2530.5, -1538.87, 25.1781, 0, 0, -179.8, 0, 0),
(5, -2353.63, 1018.97, 52.1882, 0, 0, 0.099968, 0, 0),
(6, 63.194, 1135.91, 20.9381, 0, 0, -93.5, 0, 0),
(7, 2570.85, 76.1996, 27.8481, 0, 0, 0, 0, 0),
(8, -2646.84, 1344.68, 8.37431, 0, 0, 90.2, 0, 0),
(9, 2321.97, 960.496, 12.0781, 0, 0, -90.7001, 0, 0),
(10, 245.154, -55.9351, 1.05764, 0, 0, 179.7, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slotmachine`
--

CREATE TABLE `slotmachine` (
  `ID` int(11) NOT NULL,
  `PosX` float DEFAULT NULL,
  `PosY` float DEFAULT NULL,
  `PosZ` float DEFAULT NULL,
  `RotX` float DEFAULT NULL,
  `RotY` float DEFAULT NULL,
  `RotZ` float DEFAULT NULL,
  `Interior` int(11) DEFAULT NULL,
  `World` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `socket`
--

CREATE TABLE `socket` (
  `SocketID` int(11) DEFAULT NULL,
  `SocketX` float DEFAULT NULL,
  `SocketY` float DEFAULT NULL,
  `SocketZ` float DEFAULT NULL,
  `SocketA` float DEFAULT NULL,
  `Interior` int(11) DEFAULT NULL,
  `World` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `socket`
--

INSERT INTO `socket` (`SocketID`, `SocketX`, `SocketY`, `SocketZ`, `SocketA`, `Interior`, `World`) VALUES
(0, 360.724, -2042.36, 7.33594, 447.935, 0, 0),
(1, 360.719, -2040.33, 7.33594, 448.461, 0, 0),
(2, 1681.72, 1454.04, 10.2727, 452.01, 0, 0),
(3, 2038.22, -1408.79, 16.6641, 269.175, 0, 0),
(4, 1538.62, -1661.1, 13.0469, 267.139, 0, 0),
(5, 283.793, 1828.84, 7.57565, 445.987, 0, 0),
(6, 1238.78, -2041.45, 59.3679, 447.316, 0, 0),
(7, 79.7126, -1608.65, 11.4315, 355.492, 0, 0),
(8, 225.96, 1865.65, 12.6406, 264.098, 0, 0),
(9, 2423.2, -1246.87, 23.3314, 363.685, 0, 0),
(10, 2424.96, -1246.87, 23.34, 363.79, 0, 0),
(11, 1694.8, -2334.6, 13.0469, 539.373, 0, 0),
(12, 1692.49, -2334.6, 13.0469, 539.373, 0, 0),
(13, 1664.6, -1722.58, 19.9844, 181.864, 0, 0),
(14, 614.623, -1686.1, 15.7365, 444.512, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `speedcameras`
--

CREATE TABLE `speedcameras` (
  `speedID` int(12) NOT NULL,
  `speedRange` float DEFAULT 0,
  `speedLimit` float DEFAULT 0,
  `speedX` float DEFAULT 0,
  `speedY` float DEFAULT 0,
  `speedZ` float DEFAULT 0,
  `speedAngle` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `speedcameras`
--

INSERT INTO `speedcameras` (`speedID`, `speedRange`, `speedLimit`, `speedX`, `speedY`, `speedZ`, `speedAngle`) VALUES
(7, 0, 80, 919.133, -1780.69, 13.546, 86.128),
(8, 0, 100, 602.601, -1731.6, 13.665, 260.23),
(9, 0, 80, 1202.93, -952.878, 42.924, 92.662),
(10, 0, 80, 1348.13, -1291.38, 13.471, 357.528),
(11, 0, 80, 1283.18, -1857.7, 13.539, 90.535),
(12, 0, 80, 1036.92, -2253.34, 13.163, 200.258),
(13, 0, 120, 1602.67, -1660.78, 28.66, 190.426),
(14, 0, 80, 2729.9, -1618.78, 13.019, 359.659),
(15, 0, 80, 1702.6, -476.372, 33.373, 189.558),
(16, 0, 120, 2891.57, -1229.08, 10.875, 13.846),
(17, 0, 120, 1799.71, 843.385, 10.632, 90.565),
(18, 0, 120, 1797.85, 2258.77, 5.211, 183.488),
(19, 0, 120, 1217.24, 1846.34, 6.703, 2.303),
(20, 0, 120, 797.38, 684.186, 11.552, 114.684),
(21, 0, 120, -1421.11, 802.92, 47.612, 312.198),
(22, 0, 80, -1904.58, -1365.15, 40.405, 159.366),
(23, 0, 120, -1168.33, -2859.47, 67.718, 270.902),
(24, 0, 80, -127.549, -975.198, 26.154, 224.806),
(25, 0, 80, -214.038, 224.942, 11.995, 155.549),
(26, 0, 80, 406.236, -604.981, 34.797, 157.705),
(27, 0, 120, 2715.86, 1635.3, 6.72, 174.856),
(28, 0, 80, 2139.32, 2010.55, 10.803, 358.685);

-- --------------------------------------------------------

--
-- Table structure for table `stuffs`
--

CREATE TABLE `stuffs` (
  `ID` int(11) DEFAULT 0,
  `policemoneyvault` int(11) DEFAULT 0,
  `pemerintahmoneyvault` int(11) DEFAULT 0,
  `emsmoneyvault` int(11) DEFAULT 0,
  `bengkelmoneyvault` int(11) DEFAULT 0,
  `restomoneyvault` int(11) DEFAULT 0,
  `gojekmoneyvault` int(11) DEFAULT 0,
  `transmoneyvault` int(11) DEFAULT 0,
  `globaltime_rusun` bigint(20) DEFAULT 0,
  `ShowroomStock` int(11) DEFAULT 0,
  `CraftingPassword` varchar(128) DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stuffs`
--

INSERT INTO `stuffs` (`ID`, `policemoneyvault`, `pemerintahmoneyvault`, `emsmoneyvault`, `bengkelmoneyvault`, `restomoneyvault`, `gojekmoneyvault`, `transmoneyvault`, `globaltime_rusun`, `ShowroomStock`, `CraftingPassword`) VALUES
(0, 8700141, 600158, 6739517, 1228004, 6832873, 200000, 3000000, 1776646626, 106, 'KANCRAFT');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tagId` int(11) NOT NULL,
  `tagText` varchar(64) DEFAULT NULL,
  `tagFont` varchar(24) DEFAULT NULL,
  `tagCreated` varchar(24) DEFAULT NULL,
  `tagColor` int(10) UNSIGNED DEFAULT NULL,
  `tagFontsize` int(10) UNSIGNED DEFAULT NULL,
  `tagBold` int(10) UNSIGNED DEFAULT NULL,
  `tagOwner` int(10) UNSIGNED DEFAULT NULL,
  `tagPosx` float DEFAULT NULL,
  `tagPosy` float DEFAULT NULL,
  `tagPosz` float DEFAULT NULL,
  `tagRotx` float DEFAULT NULL,
  `tagRoty` float DEFAULT NULL,
  `tagRotz` float DEFAULT NULL,
  `tagExpired` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toys`
--

CREATE TABLE `toys` (
  `Id` int(11) NOT NULL,
  `Owner` varchar(40) DEFAULT '',
  `Slot0_Model` int(11) DEFAULT 0,
  `Slot0_Bone` int(11) DEFAULT 0,
  `Slot0_Status` int(11) DEFAULT 0,
  `Slot0_XPos` float DEFAULT 0,
  `Slot0_YPos` float DEFAULT 0,
  `Slot0_ZPos` float DEFAULT 0,
  `Slot0_XRot` float DEFAULT 0,
  `Slot0_YRot` float DEFAULT 0,
  `Slot0_ZRot` float DEFAULT 0,
  `Slot0_XScale` float DEFAULT 0,
  `Slot0_YScale` float DEFAULT 0,
  `Slot0_ZScale` float DEFAULT 0,
  `Slot1_Model` int(11) DEFAULT 0,
  `Slot1_Bone` int(11) DEFAULT 0,
  `Slot1_Status` int(11) DEFAULT 0,
  `Slot1_XPos` float DEFAULT 0,
  `Slot1_YPos` float DEFAULT 0,
  `Slot1_ZPos` float DEFAULT 0,
  `Slot1_XRot` float DEFAULT 0,
  `Slot1_YRot` float DEFAULT 0,
  `Slot1_ZRot` float DEFAULT 0,
  `Slot1_XScale` float DEFAULT 0,
  `Slot1_YScale` float DEFAULT 0,
  `Slot1_ZScale` float DEFAULT 0,
  `Slot2_Model` int(11) DEFAULT 0,
  `Slot2_Bone` int(11) DEFAULT 0,
  `Slot2_Status` int(11) DEFAULT 0,
  `Slot2_XPos` float DEFAULT 0,
  `Slot2_YPos` float DEFAULT 0,
  `Slot2_ZPos` float DEFAULT 0,
  `Slot2_XRot` float DEFAULT 0,
  `Slot2_YRot` float DEFAULT 0,
  `Slot2_ZRot` float DEFAULT 0,
  `Slot2_XScale` float DEFAULT 0,
  `Slot2_YScale` float DEFAULT 0,
  `Slot2_ZScale` float DEFAULT 0,
  `Slot3_Model` int(11) DEFAULT 0,
  `Slot3_Bone` int(11) DEFAULT 0,
  `Slot3_Status` int(11) DEFAULT 0,
  `Slot3_XPos` float DEFAULT 0,
  `Slot3_YPos` float DEFAULT 0,
  `Slot3_ZPos` float DEFAULT 0,
  `Slot3_XRot` float DEFAULT 0,
  `Slot3_YRot` float DEFAULT 0,
  `Slot3_ZRot` float DEFAULT 0,
  `Slot3_XScale` float DEFAULT 0,
  `Slot3_YScale` float DEFAULT 0,
  `Slot3_ZScale` float DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transferlogs`
--

CREATE TABLE `transferlogs` (
  `pID` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  `Value` int(11) NOT NULL,
  `TargetSender` varchar(32) NOT NULL DEFAULT '',
  `Date` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trans_brankas`
--

CREATE TABLE `trans_brankas` (
  `PID` int(11) DEFAULT 0,
  `ID` int(11) NOT NULL,
  `Item` varchar(64) NOT NULL DEFAULT '-',
  `Model` int(11) DEFAULT 0,
  `Quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `trans_brankas`
--

INSERT INTO `trans_brankas` (`PID`, `ID`, `Item`, `Model`, `Quantity`) VALUES
(0, 1065, 'Besi', 19809, 2000),
(0, 1069, 'Tembaga', 11748, 2000),
(0, 1077, 'Kopi Kenangan', 19835, 270),
(0, 1078, 'Nasi Goreng', 2355, 270),
(0, 1082, 'Pure Oil', 3632, 518),
(0, 1083, 'Bandage', 11736, 412),
(0, 1084, 'Jerigen', 1650, 85),
(0, 1085, 'Alprazolam', 1241, 35),
(0, 1086, 'Kanabis', 19473, 5);

-- --------------------------------------------------------

--
-- Table structure for table `trash`
--

CREATE TABLE `trash` (
  `ID` int(11) NOT NULL,
  `Model` int(11) DEFAULT 0,
  `Cooldown` int(11) DEFAULT 0,
  `Interior` int(11) DEFAULT 0,
  `World` int(11) DEFAULT 0,
  `PosX` float DEFAULT 0,
  `PosY` float DEFAULT 0,
  `PosZ` float DEFAULT 0,
  `RotX` float DEFAULT 0,
  `RotY` float DEFAULT 0,
  `RotZ` float DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `trash`
--

INSERT INTO `trash` (`ID`, `Model`, `Cooldown`, `Interior`, `World`, `PosX`, `PosY`, `PosZ`, `RotX`, `RotY`, `RotZ`) VALUES
(0, 1300, 0, 0, 0, 984.373, -667.344, 120.586, 0, 0, 30.7001),
(16, 1300, 0, 0, 0, 1073.38, -1095.85, 24.6151, 0, 0, -88.4),
(14, 1300, 0, 0, 0, 2075.79, -2040.65, 12.8969, 0, 0, 85.8),
(15, 1300, 0, 0, 0, 2849.38, -1996.12, 10.4432, 0, 0, 85.9999),
(13, 1300, 0, 0, 0, 2117.84, -1910.95, 12.9428, 0, 0, 0),
(12, 1300, 0, 0, 0, 1176.03, -1329.15, 12.9372, 0, 0, 0),
(11, 1334, 0, 0, 0, 287.836, 1349.38, 10.0759, 0, 0, 88.8999),
(10, 1300, 0, 0, 0, 839.446, -2017.7, 12.2372, 0, 0, 0),
(9, 1300, 0, 0, 0, -2525.87, -624.827, 132.091, 0, 0, 0),
(8, 1300, 0, 0, 0, 418.527, -1320.77, 14.2608, 0, 0, 124.6),
(7, 1300, 0, 0, 0, 552.093, -1260.05, 16.6222, 0, 0, 31.2),
(6, 1300, 0, 0, 0, 653.564, -1532.19, 14.8395, 0, 0, 0),
(5, 1300, 0, 0, 0, 1238.95, -2032.91, 59.1736, 0, 0, 0),
(4, 1300, 0, 0, 0, 108.537, -289.378, 0.928124, 0, 0, 0),
(3, 1300, 0, 0, 0, -2491.65, -598.877, 131.968, 0, 0, 0),
(2, 1300, 0, 0, 0, 2175.17, -2259.22, 14.0934, 0, 0, -134.9),
(1, 1300, 0, 0, 0, 947.988, 1739.78, 8.32155, 0, 0, 0),
(17, 1300, 0, 0, 0, 3534.67, -1920.04, 16.2859, 0, 0, 0),
(18, 1300, 0, 0, 0, 3537.82, -1919.43, 16.267, 0, 0, 0),
(19, 1300, 0, 0, 0, 1463.15, -1725.77, 12.9069, 0, 0, 0),
(20, 1300, 0, 0, 0, 2016.18, 653.398, 10.7709, 0, 0, 0),
(21, 1300, 0, 0, 0, 489.185, 1282.43, 8.39469, 0, 0, -11.2),
(22, 1300, 0, 0, 0, -438.119, -60.2522, 58.0623, 0, 0, 89.2),
(23, 1300, 0, 0, 0, -465.928, -45.5185, 59.2524, 0, 0, -11.1),
(24, 1300, 0, 0, 0, -444.727, -81.5855, 58.5117, 2.7, 0, 89.6),
(25, 1300, 0, 0, 0, 1377.6, 766.138, 10.2103, 0, 0, 0),
(26, 1300, 0, 0, 0, 360.501, -2034.77, 7.18187, 0, 0, -89.7),
(27, 11706, 0, 0, 0, 656.874, -1499.73, 16.3183, 0, 0, 89.5001),
(28, 1300, 0, 0, 0, 2478.35, -1687.82, 12.8478, 0, 0, -9.6),
(29, 1300, 0, 0, 0, 1709.42, -1519.21, 12.8669, 0, 0, -88),
(30, 1300, 0, 0, 0, 2652.07, -2013.39, 12.9347, 0, 0, 0),
(31, 1300, 0, 0, 0, 2496.31, -1958.56, 12.8845, 0, 0, 0),
(32, 1236, 0, 0, 0, 1488.77, -1706.89, 13.7858, 1.9, 0.800001, -90.1),
(33, 1300, 0, 0, 0, 484.708, 1312.97, 8.59072, 0, 0, 0),
(34, 1347, 0, 0, 0, 485.511, 1522.06, 0.56, 0, 0, 0),
(35, 1300, 0, 0, 0, -73.8663, 1023.65, 19.1022, 0, 0, 0),
(36, 1300, 0, 0, 0, 2053.68, 663.037, 10.2662, 0, 0, 1.6),
(37, 1300, 0, 0, 0, 1131.14, -2029.84, 68.3823, 0, 0, 0),
(38, 1343, 0, 0, 0, 1675.95, -2309.64, 13.2923, -2.8, 0.4, -179.3),
(39, 1300, 0, 0, 0, 1304.38, -1862.78, 12.8969, 0, 0, 0),
(41, 1300, 0, 0, 0, 1479.76, -2167.82, 12.904, 0, 0, 0),
(40, 1300, 0, 0, 0, 2354.42, -87.0002, 25.7144, 0, 0, 89.4001),
(42, 1300, 0, 0, 0, -2447.1, 515.885, 29.6011, 0, 0, -92),
(43, 1347, 0, 0, 0, 490.048, 1522.13, 0.583153, 0, 0, -89.9),
(44, 1300, 0, 0, 0, 1528.9, -2182.88, 12.9069, 0, 0, 0),
(45, 1300, 0, 10, 0, 2526.44, 1671.45, -50.8517, 0, 0, 86.4),
(46, 1337, 0, 0, 0, 2766.39, -1618.12, 10.5519, 0, 0, 90.1),
(47, 1300, 0, 0, 0, 316.187, 1836.15, 7.16739, 0, 0, 0),
(48, 1300, 0, 0, 0, 37.4051, -278.581, 1.44062, 0, 0, 0),
(49, 1300, 0, 0, 0, 1532.36, 12.5032, 23.4906, 0, 0, 13.5),
(50, 1300, 0, 0, 0, 1926.92, 174.568, 36.6512, 0, 0, -19.4),
(51, 1300, 0, 0, 0, 943.722, 2075.72, 10.8203, 0, 0, 0),
(52, 1300, 0, 0, 1, 691.155, -623.443, 15.6759, 0, 0, 0),
(53, 1300, 0, 0, 0, 685.176, -462.459, 15.6914, 0, 0, 0),
(54, 1300, 0, 0, 0, -2662.84, 885.101, 79.2738, 0, 0, 0),
(55, 1300, 0, 0, 0, 2.71004, 1358.61, 8.49188, 0, 0, 0),
(56, 1300, 0, 0, 0, 1304.65, -901.303, 38.9781, 0, 0, 90),
(57, 1300, 0, 0, 20, 1253.11, -1065.49, 28.4761, 0, 0, 90),
(58, 1300, 0, 0, 0, 1092.14, -1096.91, 24.4808, 0, 0, 90),
(59, 1300, 0, 0, 0, 2368.66, -1698.89, 13.128, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tweetlogs`
--

CREATE TABLE `tweetlogs` (
  `Name` varchar(32) DEFAULT 'None',
  `UCP` varchar(64) DEFAULT 'None',
  `Text` varchar(128) DEFAULT 'None',
  `Time` varchar(255) DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `ID` int(11) DEFAULT 1,
  `TwitterFrom` varchar(64) NOT NULL DEFAULT '-',
  `TwitterDate` varchar(64) DEFAULT '-',
  `TwitterText` varchar(128) DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `twitter`
--

CREATE TABLE `twitter` (
  `ID` int(9) NOT NULL,
  `Name` varchar(24) DEFAULT NULL,
  `Message` varchar(80) DEFAULT NULL,
  `Time` int(8) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `twitter`
--

INSERT INTO `twitter` (`ID`, `Name`, `Message`, `Time`) VALUES
(1, 'Rayy_Bonelo', 'tes tes', 1748350429),
(2, 'Rayy_Bonelo', 'kami ganteng', 1748383701);

-- --------------------------------------------------------

--
-- Table structure for table `uranium`
--

CREATE TABLE `uranium` (
  `ID` int(11) NOT NULL,
  `UraniumX` float DEFAULT NULL,
  `UraniumY` float DEFAULT NULL,
  `UraniumZ` float DEFAULT NULL,
  `UraniumRX` float DEFAULT NULL,
  `UraniumRY` float DEFAULT NULL,
  `UraniumRZ` float DEFAULT NULL,
  `Interior` tinyint(4) DEFAULT 0,
  `World` tinyint(4) DEFAULT 0,
  `Timer` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `uranium`
--

INSERT INTO `uranium` (`ID`, `UraniumX`, `UraniumY`, `UraniumZ`, `UraniumRX`, `UraniumRY`, `UraniumRZ`, `Interior`, `World`, `Timer`) VALUES
(0, -1120.46, -1627.58, 75.854, 0, 0, 0, 0, 0, 0),
(1, -1120.49, -1625.2, 75.8339, 0, 0, 0, 0, 0, 0),
(2, -1120.54, -1623.82, 75.8439, 0, 0, 0, 0, 0, 0),
(3, -1120.5, -1614.65, 75.8539, 0, 0, 0, 0, 0, 0),
(4, -1120.52, -1621.84, 75.864, 0, 0, 0, 0, 0, 0),
(5, -1120.51, -1619.11, 75.8539, 0, 0, 0, 0, 0, 0),
(6, -1120.54, -1616.88, 75.8639, 0, 0, 0, 0, 0, 0),
(7, -1117.47, -1614.56, 75.804, 0, 0, 0, 0, 0, 0),
(8, -1114.75, -1614.59, 75.7972, 0, 0, 0, 0, 0, 0),
(9, -1112.23, -1615.1, 75.7972, 0, 0, 0, 0, 0, 0),
(10, -1109.43, -1615.23, 75.8372, 0, 0, 0, 0, 0, 0),
(11, -1106.52, -1615.13, 75.8772, 0, 0, 0, 0, 0, 0),
(12, -1103.66, -1614.94, 75.8572, 0, 0, 0, 0, 0, 0),
(13, -1100.62, -1614.58, 75.8372, 0, 0, 0, 0, 0, 0),
(14, -1098.12, -1614.67, 75.8272, 0, 0, 0, 0, 0, 0),
(15, -1097.8, -1627.62, 75.8372, 0, 0, 0, 0, 0, 0),
(16, -1100.65, -1627.45, 75.8372, 0, 0, 0, 0, 0, 0),
(17, -1103.78, -1627.42, 75.8772, 0, 0, 0, 0, 0, 0),
(18, -1106.81, -1627.54, 75.8272, 0, 0, 0, 0, 0, 0),
(19, -1110.06, -1627.65, 75.8239, 0, 0, 0, 0, 0, 0),
(20, -1113.31, -1627.6, 75.8439, 0, 0, 0, 0, 0, 0),
(21, -1116.19, -1627.55, 75.8339, 0, 0, 0, 0, 0, 0),
(22, -1118.83, -1627.58, 75.8439, 0, 0, 0, 0, 0, 0),
(23, -1120.42, -1619.32, 75.7439, 0, 0, 0, 0, 0, 0),
(24, -1116.86, -1639.9, 75.8072, 0, 0, 0, 0, 0, 0),
(25, -1116.79, -1637.9, 75.7572, 0, 0, 0, 0, 0, 0),
(26, -1116.83, -1635.84, 75.8372, 0, 0, 0, 0, 0, 0),
(27, -1114.16, -1634.67, 75.8472, 0, 0, 0, 0, 0, 0),
(28, -1111.7, -1634.46, 75.8272, 0, 0, 0, 0, 0, 0),
(29, -1108.71, -1634.39, 75.8072, 0, 0, 0, 0, 0, 0),
(30, -1105.89, -1634.5, 75.8972, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uranium_passwords`
--

CREATE TABLE `uranium_passwords` (
  `id` int(11) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uranium_passwords`
--

INSERT INTO `uranium_passwords` (`id`, `password`) VALUES
(1, 'uranium123');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_bagasi`
--

CREATE TABLE `vehicle_bagasi` (
  `vID` int(11) DEFAULT 0,
  `ID` int(11) NOT NULL,
  `Item` varchar(64) NOT NULL DEFAULT '-',
  `Model` int(11) DEFAULT 0,
  `Quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_object`
--

CREATE TABLE `vehicle_object` (
  `id` int(11) NOT NULL,
  `model` int(11) DEFAULT NULL,
  `toggle` int(11) DEFAULT 0,
  `color` varchar(24) DEFAULT NULL,
  `vehicle` int(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `z` float DEFAULT NULL,
  `rx` float DEFAULT NULL,
  `ry` float DEFAULT NULL,
  `rz` float DEFAULT NULL,
  `text` varchar(32) DEFAULT 'Unknowns',
  `font` varchar(24) DEFAULT NULL,
  `fontcolor` int(11) DEFAULT NULL,
  `fontsize` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vehicle_object`
--

INSERT INTO `vehicle_object` (`id`, `model`, `toggle`, `color`, `vehicle`, `type`, `x`, `y`, `z`, `rx`, `ry`, `rz`, `text`, `font`, `fontcolor`, `fontsize`) VALUES
(1, 1100, 0, '0', 284, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0),
(4, 1001, 0, '0', 1464, 1, 0, -2.99927, 0.395157, 0, 0, 0, '', '', 0, 0),
(5, 1023, 0, '0', 1154, 1, 0, -2.19995, 0.385271, 0, 0, 0, '', '', 0, 0),
(6, 19281, 0, '0', 1986, 3, -0.099975, -0.483154, 0.108889, 0, 0, -1209.95, '', '', 0, 0),
(8, 1003, 0, '0', 46, 1, 0, -2.29944, -0.400001, 160, 0, -180, '', '', 0, 0),
(9, 1003, 0, '0', 46, 1, 0.299926, -2.39941, 0.300001, 0, 0, 0, '', '', 0, 0),
(10, 1003, 0, '0', 46, 1, -0.299926, -2.39941, 0.300001, 0, 0, 0, '', '', 0, 0),
(11, 1003, 0, '0', 46, 1, 0, 2.59936, -0.400001, -180, 0, -180, '', '', 0, 0),
(13, 18729, 0, '0', 45, 1, 0, -2.55, -1.97, 0, 0, -180, '', '', 0, 0),
(14, 1003, 0, '0', 45, 1, 0, -2.42004, -0.273162, 150, 0, 180, '', '', 0, 0),
(17, 19917, 0, '0', 45, 1, 0, 1.78, -0.3, 0, 0, -180, '', '', 0, 0),
(30, 18661, 0, '0', 623, 2, 0.000976, 0.655517, 0.682503, 0, 46.8, -91, 'R D M C', 'Times New Roman', 1, 30),
(31, 18661, 0, '0', 623, 2, -0.004027, -2.16724, 0.584378, 0, 78.5999, -89.9, 'B A N D I T O', 'Georgia', 1, 70),
(33, 18661, 0, '0', 3074, 2, 1.0249, -0.289794, -0.110459, 0.2, 0.800009, -177.905, 'R', 'Impact', 3, 40),
(42, 18661, 0, '0', 3074, 2, 1.02087, 0.256347, 0.040088, 0, 0.999997, 179.972, 'NISSAN', 'Impact', 0, 90),
(43, 18661, 0, '0', 3074, 2, 1.02576, -0.294067, 0.12478, 0, 0.499998, -178.6, 'GT', 'Impact', 0, 50),
(45, 18661, 0, '0', 3074, 2, 0.001953, -1.33935, 0.536156, 0, 59.4, 90, 'A', 'Wingdings', 79, 90),
(51, 18661, 0, '0', 3074, 2, -0.001464, -2.32947, 0.07905, 0.4, -1.1, 90, 'Nothing Special', 'Constantia', 0, 30),
(52, 18661, 0, '0', 3074, 2, 0.080688, 0.336303, 0.651533, 0, 64.7, -90.4001, 'KA', 'Impact', 79, 30),
(53, 18661, 0, '0', 3074, 2, -0.092895, 0.325683, 0.652626, 0, 61.9, -87.8, '-Rage', 'Impact', 1, 30),
(55, 18661, 0, '0', 3074, 2, -1.03027, 0.19519, 0.041979, 0, 3.4, 0.399999, 'NISSAN', 'Impact', 0, 90),
(56, 18661, 0, '0', 3074, 2, -1.01782, -0.35205, 0.146702, 0, 5.9, -1.4, 'GT', 'Impact', 0, 50),
(57, 18661, 0, '0', 3074, 2, -1.02942, -0.353027, -0.066141, 0, 0, 0, 'R', 'Impact', 3, 35),
(62, 18661, 0, '0', 1278, 2, 1.06824, -0.085815, 0.017605, 0, -5.7, -179.9, 'MITSUBISHI', 'Times New Roman', 0, 80),
(63, 18661, 0, '0', 1278, 2, 1.03711, -0.76123, -0.29384, 0, -9.2, -179.5, 'RALLI', 'Impact', 0, 30),
(64, 18661, 0, '0', 1278, 2, 1.02527, -0.600097, -0.292366, 0, -10.9, -177.4, 'III', 'Impact', 3, 30),
(65, 18661, 0, '0', 1278, 2, 1.02356, -0.507934, -0.292397, 0, -10, -178.8, 'III', 'Impact', 6, 30),
(66, 18661, 0, '0', 1278, 2, 1.03686, -0.372802, -0.291022, 0, -7.4, -179.8, 'ART', 'Impact', 0, 30),
(67, 18661, 0, '0', 1278, 2, -1.05823, -0.069213, 0.039087, 0, -2.5, 0.099999, 'MITSUBISHI', 'Times New Roman', 0, 80),
(68, 18661, 0, '0', 1278, 2, -1.02917, -0.390625, -0.270678, 0, -8.6, 0, 'RALLI', 'Impact', 0, 30),
(69, 18661, 0, '0', 1278, 2, -1.03821, -0.550415, -0.271606, 0, -7, 0, 'III', 'Impact', 3, 30),
(70, 18661, 0, '0', 1278, 2, -1.02954, -0.650634, -0.270341, 0, -3.6, 0, 'III', 'Impact', 6, 30),
(71, 18661, 0, '0', 1278, 2, -1.03003, -0.779663, -0.272094, 0, -3.3, 0, 'ART', 'Impact', 0, 30),
(72, 18661, 0, '0', 3258, 2, -0.011108, 0.929565, 0.229135, -0.2, 87.1, -90.5, 'II', 'Arial', 1, 150),
(75, 19281, 0, '0', 3325, 3, 0.099975, 1.69958, -0.100002, 0, 0, -359.889, '', '', 0, 0),
(76, 2614, 0, '0', 3325, 1, 0, -1.49963, 0.600003, 0, 0.000002, -180, '', '', 0, 0),
(77, 18690, 0, '0', 45, 1, 0, -1.91016, -1.08589, 0, 0, 0, '', '', 0, 0),
(78, 18717, 0, '0', 45, 1, 0, 1.79785, -1.19764, 0, 0, 0, '', '', 0, 0),
(79, 18661, 0, '0', 3325, 2, -0.799804, -0.199951, -0.1, 0, 0, 0, 'YGZ', 'Arial', 226, 150),
(80, 19917, 0, '0', 3507, 1, 0.000488, 2.10144, -0.110096, 0, 0, -3.98635, '', '', 0, 0),
(83, 18690, 0, '0', 3507, 1, 0, 1.89905, -0.604724, 0, 0, 0, '', '', 0, 0),
(84, 18690, 0, '0', 3507, 1, 0, -1.6001, -0.504617, 90, 0, 0, 'II', 'Arial', 0, 150),
(85, 18661, 0, '0', 1329, 2, 0.89978, -0.199951, 0.693075, -3.34426, 3.16952, 171.993, 'WT GANG', 'Arial', 1, 40),
(86, 18661, 0, '0', 1329, 2, 0, 0.699829, 0.698497, 0, 40, -90, 'DOA IBU', 'Impact', 1, 50),
(90, 1049, 0, '133', 3489, 1, 0, -2.19934, 0.399864, 0, 0, 0, '', '', 0, 0),
(91, 19917, 0, '1', 2775, 1, 0.023559, 1.9353, 0.045427, 0, 0, -719.385, 'YGZ', 'Arial', 154, 190),
(92, 18661, 0, '0', 2775, 2, 1.04993, 0.210815, -0.098361, 0, -5, -539.929, 'NANA', 'Times New Roman', 43, 90),
(93, 18661, 0, '0', 2775, 2, -1.05066, 0.198486, -0.101535, 0, -6.4, -359.972, 'NANA', 'Times New Roman', 74, 90),
(94, 18661, 0, '0', 2775, 2, -1.02746, -0.411621, -0.25964, 0, -8.9, 0.000927, 'WEILD', 'Impact', 3, 30),
(95, 18661, 0, '0', 2775, 2, 1.03589, -0.394409, -0.241586, 0, -8.8, -179.932, 'WEILD', 'Impact', 3, 30),
(97, 19282, 0, '0', 3086, 3, -0.099975, 2.09949, -0.3, 0, 0, 0, 'RALLI', 'Impact', 0, 30),
(102, 18723, 0, '0', 46, 1, 0, 0.099975, -0.400001, 0, 0, 0, '', '', 0, 0),
(104, 19281, 0, '0', 3165, 3, 0, 2.42944, -0.030227, 0, 0, 0, '', '', 0, 0),
(105, 18661, 0, '0', 3165, 2, 0.53125, 1.00122, 0.445049, 0, 51.3, -453.123, 'THE BLUE', 'Arial', 2, 40),
(106, 18689, 0, '0', 3165, 1, -0.00122, 1.87036, -0.690468, 0, 0, -359.96, '', '', 0, 0),
(107, 18661, 0, '0', 90, 2, -0.162475, 0.200073, 0.281081, 28.9, 11.7001, 7.39999, 'POLICE', 'Arial', 1, 20),
(108, 18661, 0, '0', 90, 2, 0.137817, 0.219848, 0.313549, -154.8, -139.1, 11.4999, 'POLICE', 'Arial', 1, 20),
(112, 18661, 0, '0', 135, 2, 0.004882, -1.20862, 0.122398, -3.5, 41.8, 84.9, '!', 'Webdings', 1, 40),
(113, 18661, 0, '0', 3257, 2, 0.0083, 0.706176, 0.699524, 0, 50, -449.493, 'OVERGROUND', 'Arial', 229, 24),
(115, 1025, 0, '0', 3328, 1, 0.499877, -2.89929, 0.199997, 1.96301, -8.93698, -94.8198, '', '', 0, 0),
(116, 19281, 0, '0', 3328, 3, 0, -0.199951, 1.2, 0, 0, -359.96, '', '', 0, 0),
(117, 1163, 0, '0', 3328, 1, 0, -2.29858, 1.1, 10, 0, 0, 'YGZ', 'Arial', 226, 150),
(118, 18661, 0, '0', 3761, 2, -0.004638, -2.27087, 0.604345, 0, 78.4, -90, '1-ST LIGHTNING SPEED', 'Tahoma', 0, 40),
(119, 18661, 0, '0', 4099, 2, 0.006469, -1.375, 0.799514, 0, 40, 90.2859, 'SENGOL BACOK REWEK CIPOK', 'Arial', 1, 24),
(120, 19281, 0, '0', 4099, 3, 0.002319, 0.099975, 0.900004, 0, 0, -359.461, 'NANA', 'Times New Roman', 43, 90),
(121, 1135, 0, '1', 3761, 1, 0.558715, -2.65161, -0.274599, -39, -1.5, 10.4, '', '', 0, 0),
(122, 18694, 0, '240', 3761, 1, 0.833374, -4.19665, -1.09817, 35.9, 0, -169.637, '', '', 0, 0),
(124, 1001, 0, '0', 704, 1, 0, -1.8, 0.2, 0, 0, 0, '', '', 0, 0),
(125, 11701, 0, '0', 90, 1, 0, 0.00122, 0.159877, 0, -0.399999, -92.5, '', '', 0, 0),
(126, 18661, 0, '0', 1872, 2, 0, -1.29077, 0.699896, 0, 60, 90, 'BELPHEGOR', 'Verdana', 3, 50),
(130, 18661, 0, '0', 4291, 2, -0.730102, 0.090698, -0.117157, 68.5999, 34.4, -31.3279, '~', 'Webdings', 158, 180),
(133, 1014, 0, '78', 4291, 1, 0, -2.03259, 0.27897, 0, 0, 0, '', '', 0, 0),
(134, 18661, 0, '0', 387, 2, 0.000122, -1.21484, 0.097318, -171.8, -141.3, -94.8, 'N', 'wingdings', 1, 40),
(136, 18661, 0, '0', 4291, 2, 0.586914, 0.700317, -0.095765, 178.6, 179.8, -1.3001, '8', 'Webdings', 239, 100),
(137, 18661, 0, '0', 4291, 2, 0.685424, 0.305419, -0.100105, -102.1, 4.19995, 171.8, '~', 'Webdings', 158, 180),
(138, 18661, 0, '0', 387, 2, 0.218017, 0.302246, 0.308797, -107.1, 158.7, -18.5, '~', 'Webdings', 1, 24),
(139, 18661, 0, '0', 387, 2, -0.001586, 0.244628, 0.473547, -3.29992, 111.8, -87.3997, 'l', '294', 1, 50),
(140, 18661, 0, '0', 4291, 2, -0.776977, -0.076293, -0.033987, -0.49999, 0, 4.1, '95', 'Calibri', 6, 100),
(141, 19284, 0, '0', 3100, 3, 0, 0, 0, 0, 0, 0, '', '', 0, 0),
(142, 18661, 0, '0', 4526, 2, 0, 0, 0, 0, 0, 0, 'TEXT', 'Arial', 1, 24),
(144, 3092, 0, '0', 4802, 1, 0.469238, -2.06641, 0.111636, -61.2329, 0.255117, -173.38, '', '', 0, 0),
(145, 19419, 0, '0', 4802, 1, 0, 0.199951, 0.696928, 0, 0, 0, '', '', 0, 0),
(146, 3092, 0, '0', 4802, 1, -0.064086, -0.595581, 1.01682, 60, 0, -180, '', '', 0, 0),
(147, 18661, 0, '0', 130, 2, 1.07446, -0.184448, -0.013902, -179.7, 175.5, 0, 'POLICE', 'Arial', 228, 85),
(148, 18661, 0, '0', 130, 2, -1.07031, 0, -0.000221, 0, 0, 0, 'POLICE', 'Arial', 228, 85),
(149, 19419, 0, '0', 130, 1, 0, -0.228637, 0.818912, 0, 0, 0, '', '', 0, 0),
(150, 1341, 0, '0', 3184, 1, 0.422118, -1, 0.604085, 0, 0, -87.2429, '', '', 0, 0),
(157, 18661, 0, '0', 3607, 2, 0.003906, 0.129638, 0.426615, 0, 64.2, 91, '&', 'Webdings', 0, 50),
(158, 1736, 0, '0', 3184, 1, 0, 0.799804, 0.499871, -10, 0, -180, '', '', 0, 0),
(159, 18661, 0, '0', 5291, 2, -0.0083, -2.62939, 0.878356, 0.399997, 28, -269.681, 'ADVENTURE', 'Arial', 1, 70),
(162, 18729, 0, '0', 642, 1, -0.099975, -2.34363, -1.50093, 0, 0, 180, '', '', 0, 0),
(163, 18646, 0, '0', 835, 1, 0, 0.099975, 1.09523, 0, 0, 0, 'N', 'wingdings', 1, 40),
(164, 19419, 0, '0', 835, 1, 0, 0, 0.995208, 0, 0, 0, '~', 'Webdings', 1, 24);

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `VoucherID` int(11) DEFAULT NULL,
  `VoucherCode` varchar(50) DEFAULT NULL,
  `VoucherFee` int(11) DEFAULT 0,
  `VoucherTime` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warninglogs`
--

CREATE TABLE `warninglogs` (
  `pID` int(11) DEFAULT -1,
  `WarnType` int(11) DEFAULT 0,
  `WarnTime` bigint(20) DEFAULT 0,
  `WarnSender` varchar(64) DEFAULT NULL,
  `WarnReason` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warrants`
--

CREATE TABLE `warrants` (
  `WarrantsID` int(11) NOT NULL,
  `ID` int(11) NOT NULL DEFAULT -1,
  `Date` varchar(64) NOT NULL DEFAULT 'N/A',
  `Reason` varchar(128) NOT NULL DEFAULT 'N/A',
  `Issuer` varchar(64) NOT NULL DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warung`
--

CREATE TABLE `warung` (
  `ShopID` int(11) DEFAULT -1,
  `ShopX` float DEFAULT 0,
  `ShopY` float DEFAULT 0,
  `ShopZ` float DEFAULT 0,
  `ShopInterior` int(11) DEFAULT NULL,
  `ShopWorld` int(11) DEFAULT NULL,
  `ShopType` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `warung`
--

INSERT INTO `warung` (`ShopID`, `ShopX`, `ShopY`, `ShopZ`, `ShopInterior`, `ShopWorld`, `ShopType`) VALUES
(0, 1741.46, -2534.35, 13.5978, 0, 0, 1),
(7, 1293.59, -1874.64, 13.674, 0, 0, 3),
(9, 664.927, -614.051, 16.394, 0, 0, 3),
(10, 843.896, -1211.57, 16.9935, 0, 0, 3),
(8, 1741.39, -2489.82, 13.6069, 0, 0, 3),
(11, 2113.63, -1919.68, 13.5996, 0, 0, 3),
(12, 251.845, -56.2792, 1.57031, 0, 0, 1),
(5, -2204.56, -2258.13, 30.7981, 0, 0, 1),
(13, -2352.19, 998.087, 51.0181, 0, 0, 1),
(15, 42.3407, 1134.66, 19.7781, 0, 0, 1),
(16, 2572.13, 55.1499, 26.6481, 0, 0, 1),
(17, -2625.96, 1346.3, 7.16428, 0, 0, 1),
(18, 2300.75, 959.276, 10.9281, 0, 0, 1),
(0, 1741.46, -2534.35, 13.5978, 0, 0, 1),
(7, 1293.59, -1874.64, 13.674, 0, 0, 3),
(9, 664.927, -614.051, 16.394, 0, 0, 3),
(10, 843.896, -1211.57, 16.9935, 0, 0, 3),
(8, 1741.39, -2489.82, 13.6069, 0, 0, 3),
(11, 2113.63, -1919.68, 13.5996, 0, 0, 3),
(12, 251.845, -56.2792, 1.57031, 0, 0, 1),
(5, -2204.56, -2258.13, 30.7981, 0, 0, 1),
(13, -2352.19, 998.087, 51.0181, 0, 0, 1),
(15, 42.3407, 1134.66, 19.7781, 0, 0, 1),
(16, 2572.13, 55.1499, 26.6481, 0, 0, 1),
(17, -2625.96, 1346.3, 7.16428, 0, 0, 1),
(18, 2300.75, 959.276, 10.9281, 0, 0, 1),
(19, -2031.73, 479.039, 35.2981, 0, 0, 3),
(1, 1310.21, -895.676, 39.6281, 0, 0, 1),
(3, 1745.5, -2516.78, 20.2869, 0, 0, 2),
(6, 2529.17, -1517.24, 24.0181, 0, 0, 1),
(2, 2409.3, -1387.4, 24.4947, 0, 0, 2),
(4, 360.288, -2032.07, 7.83594, 0, 0, 1),
(14, 24.9687, -274.057, 2.47818, 0, 0, 1),
(20, 1925.87, -1773.8, 13.6078, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `weaponsettings`
--

CREATE TABLE `weaponsettings` (
  `Owner` int(11) NOT NULL,
  `WeaponID` tinyint(4) NOT NULL,
  `PosX` float DEFAULT -0.116,
  `PosY` float DEFAULT 0.189,
  `PosZ` float DEFAULT 0.088,
  `RotX` float DEFAULT 0,
  `RotY` float DEFAULT 44.5,
  `RotZ` float DEFAULT 0,
  `Bone` tinyint(4) DEFAULT 1,
  `Hidden` tinyint(4) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `weapon_factions`
--

CREATE TABLE `weapon_factions` (
  `Owner_ID` int(11) NOT NULL,
  `Slot` int(11) NOT NULL,
  `Weapon` int(11) DEFAULT 0,
  `Ammo` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `weeds`
--

CREATE TABLE `weeds` (
  `ID` int(11) NOT NULL,
  `Type` int(11) DEFAULT 0,
  `Time` int(11) DEFAULT 0,
  `PosX` float DEFAULT 0,
  `PosY` float DEFAULT 0,
  `PosZ` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `weeds`
--

INSERT INTO `weeds` (`ID`, `Type`, `Time`, `PosX`, `PosY`, `PosZ`) VALUES
(15043, 3, 0, 0, 0, 0),
(34424, 0, 0, 0, 0, 0),
(41585, 0, 0, 0, 0, 0),
(42052, 0, 0, 0, 0, 0),
(49612, 0, 0, 0, 0, 0),
(52817, 0, 0, 0, 0, 0),
(52818, 0, 0, 0, 0, 0),
(52819, 0, 0, 0, 0, 0),
(54556, 0, 0, 0, 0, 0),
(74689, 0, 0, 0, 0, 0),
(85371, 1, 0, -223.537, -1402.94, 7.67039),
(85411, 2, 0, -217.773, -1398.82, 7.28402),
(85412, 2, 0, -219.963, -1394.46, 7.6162),
(85413, 2, 0, -218.059, -1393.39, 7.37045),
(85414, 2, 0, -215.072, -1396.44, 7.00092),
(85415, 2, 0, -216.604, -1403.73, 6.88363),
(85416, 2, 0, -211.694, -1399.95, 6.5844),
(85417, 2, 0, -213.618, -1405.95, 6.25825),
(85418, 2, 0, -219.677, -1407.71, 6.5701),
(85419, 2, 0, -225.673, -1399.74, 8.16557),
(85431, 3, 0, -313.038, -1396.16, 13.0544),
(85432, 3, 0, -314.998, -1395.89, 13.0311),
(85433, 3, 0, -317.015, -1395.93, 13.0342),
(85434, 3, 0, -319.075, -1395.87, 13.0295),
(85435, 3, 0, -321.027, -1395.79, 13.0223),
(85436, 3, 0, -322.686, -1396.48, 13.0814),
(85437, 3, 0, -324.426, -1396.4, 13.0751),
(85438, 3, 0, -324.484, -1398.46, 13.2505),
(85439, 3, 0, -322.665, -1398.26, 13.2336),
(85440, 3, 0, -320.842, -1398.15, 13.2246),
(85441, 3, 0, -318.802, -1398.1, 13.2199),
(85442, 3, 0, -316.704, -1398.17, 13.2257),
(85443, 3, 0, -314.617, -1398.25, 13.2333),
(85444, 3, 0, -312.48, -1398.34, 13.2409),
(85447, 3, 0, -311.725, -1400.19, 13.3985),
(85448, 3, 0, -314.381, -1400.11, 13.3924),
(85449, 3, 0, -316.681, -1399.87, 13.3717),
(85450, 3, 0, -318.768, -1399.97, 13.3802),
(85451, 3, 0, -321.397, -1400.31, 13.409),
(85452, 3, 0, -323.809, -1400.38, 13.4155),
(85453, 3, 0, -323.66, -1402.43, 13.5903),
(85454, 3, 0, -321.228, -1402.48, 13.5946),
(85455, 3, 0, -318.55, -1402.21, 13.5713),
(85456, 3, 0, -315.928, -1402.18, 13.5693),
(85457, 3, 0, -313.188, -1402.22, 13.5721),
(85460, 3, 0, -312.718, -1404.14, 13.7337),
(85461, 3, 0, -315.511, -1404.05, 13.7289),
(85462, 3, 0, -318.179, -1404.1, 13.7334),
(85463, 3, 0, -320.816, -1403.97, 13.7218),
(85464, 3, 0, -323.62, -1404, 13.7247),
(85465, 3, 0, -323.974, -1406.07, 13.8294),
(85466, 3, 0, -321.059, -1406.22, 13.8315),
(85467, 3, 0, -318.367, -1406.06, 13.8206),
(85468, 3, 0, -315.344, -1406.16, 13.8203),
(85469, 3, 0, -312.291, -1405.94, 13.8071),
(85472, 3, 0, -312.245, -1408.44, 13.9095),
(85473, 3, 0, -315.478, -1408.19, 13.9038),
(85474, 3, 0, -318.155, -1408.02, 13.9011),
(85475, 3, 0, -321.025, -1408.19, 13.9122),
(85476, 3, 0, -324.026, -1407.78, 13.8996),
(85477, 3, 0, -324.611, -1410.37, 14.0068),
(85478, 3, 0, -321.37, -1410.15, 13.993),
(85479, 3, 0, -318.541, -1410.04, 13.9843),
(85480, 3, 0, -315.701, -1409.92, 13.9756),
(85481, 3, 0, -312.364, -1410.1, 13.978),
(85491, 1, 0, -310.45, -1388.11, 11.8952),
(85518, 3, 0, -320.132, -1381.21, 11.575),
(85519, 1, 0, -322.688, -1379.49, 11.507),
(85520, 3, 0, -323.101, -1382.22, 11.8654),
(85528, 3, 0, -320.161, -1379.52, 11.3138),
(85529, 3, 0, -314.116, -1379.44, 10.8281),
(85530, 3, 0, -317.71, -1379.57, 11.1287),
(85531, 1, 0, -313.904, -1377.96, 10.579),
(85532, 1, 0, -314.008, -1375.55, 10.2105),
(85533, 1, 0, -311.388, -1375.1, 9.93515),
(85534, 1, 0, -309.869, -1376.72, 10.0694),
(85535, 1, 0, -310.887, -1378.57, 10.4385),
(85536, 1, 0, -308.932, -1379.16, 10.3775),
(85537, 1, 0, -307.022, -1379.74, 10.3187),
(85538, 1, 0, -307.317, -1376.48, 9.83268),
(85539, 1, 0, -309.418, -1374.38, 9.66919),
(85540, 1, 0, -307.309, -1373.75, 9.40467),
(85541, 1, 0, -305.193, -1373.08, 9.16312),
(85542, 1, 0, -304.741, -1374.93, 9.38811),
(85544, 1, 0, -305.386, -1378.81, 10.0453),
(85545, 1, 0, -315.735, -1377.35, 10.6273),
(85546, 1, 0, -318.844, -1378.29, 11.0187),
(85547, 1, 0, -317.139, -1375.2, 10.4014),
(85548, 1, 0, -319.823, -1375.62, 10.6767),
(85549, 1, 0, -322.275, -1376.43, 10.9963),
(85550, 1, 0, -324.629, -1376.27, 11.1557),
(85551, 1, 0, -323.722, -1373.85, 10.7388),
(85552, 1, 0, -322.111, -1373.91, 10.6075),
(85553, 1, 0, -319.255, -1373.45, 10.3489),
(85554, 1, 0, -317.37, -1373.28, 10.1845),
(85555, 1, 0, -315.494, -1373.42, 10.035),
(85556, 1, 0, -313.092, -1373.52, 9.83999),
(85557, 1, 0, -310.999, -1372.92, 9.638),
(85558, 1, 0, -308.856, -1372.24, 9.42828),
(85559, 1, 0, -306.703, -1371.3, 9.20536),
(85560, 1, 0, -302.825, -1375.6, 9.34233);

-- --------------------------------------------------------

--
-- Table structure for table `whatsapp_chats`
--

CREATE TABLE `whatsapp_chats` (
  `ID` int(11) DEFAULT NULL,
  `chatTimestamp` varchar(64) DEFAULT '-',
  `chatSender` varchar(64) DEFAULT '-',
  `chatMessage` varchar(128) DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE `workshop` (
  `ID` int(11) NOT NULL,
  `Owner` varchar(24) NOT NULL DEFAULT '-',
  `Name` varchar(128) NOT NULL DEFAULT '-',
  `OwnerID` int(11) NOT NULL DEFAULT 0,
  `Component` int(11) NOT NULL DEFAULT 0,
  `Money` int(11) NOT NULL DEFAULT 0,
  `Status` int(11) NOT NULL DEFAULT 0,
  `posX` float NOT NULL DEFAULT 0,
  `posY` float NOT NULL DEFAULT 0,
  `posZ` float NOT NULL DEFAULT 0,
  `employe0` varchar(24) NOT NULL DEFAULT '-',
  `employe1` varchar(24) NOT NULL DEFAULT '-',
  `employe2` varchar(24) NOT NULL DEFAULT '-',
  `employe3` varchar(24) NOT NULL DEFAULT '-',
  `employe4` varchar(24) NOT NULL DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workshoplogs`
--

CREATE TABLE `workshoplogs` (
  `ID` int(11) NOT NULL,
  `WorkshopID` int(11) NOT NULL DEFAULT 0,
  `Name` varchar(24) NOT NULL DEFAULT '-',
  `Activity` varchar(128) NOT NULL DEFAULT '-',
  `Date` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `yellowpages`
--

CREATE TABLE `yellowpages` (
  `ID` int(11) DEFAULT -1,
  `YellowDate` varchar(64) DEFAULT '-',
  `YellowFrom` varchar(64) DEFAULT '-',
  `YellowPhone` varchar(64) DEFAULT '-',
  `YellowText` varchar(128) DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `atms`
--
ALTER TABLE `atms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `badside_brankas`
--
ALTER TABLE `badside_brankas`
  ADD PRIMARY KEY (`fItemID`);

--
-- Indexes for table `bengkel_brankas`
--
ALTER TABLE `bengkel_brankas`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bike_rentals`
--
ALTER TABLE `bike_rentals`
  ADD PRIMARY KEY (`RentID`);

--
-- Indexes for table `brankas_bengkel`
--
ALTER TABLE `brankas_bengkel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brankas_ems`
--
ALTER TABLE `brankas_ems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brankas_gojek`
--
ALTER TABLE `brankas_gojek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brankas_lounges`
--
ALTER TABLE `brankas_lounges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `buttons`
--
ALTER TABLE `buttons`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `capres`
--
ALTER TABLE `capres`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`ChargesID`);

--
-- Indexes for table `component_depot`
--
ALTER TABLE `component_depot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contactID`);

--
-- Indexes for table `crafting_passwords`
--
ALTER TABLE `crafting_passwords`
  ADD PRIMARY KEY (`weapon_slot`);

--
-- Indexes for table `doors`
--
ALTER TABLE `doors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dropped`
--
ALTER TABLE `dropped`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dynamic_rusun`
--
ALTER TABLE `dynamic_rusun`
  ADD PRIMARY KEY (`rID`);

--
-- Indexes for table `ems_brankas`
--
ALTER TABLE `ems_brankas`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `factiongarage`
--
ALTER TABLE `factiongarage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`F_ID`);

--
-- Indexes for table `families_garage`
--
ALTER TABLE `families_garage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `gate`
--
ALTER TABLE `gate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `group_messages`
--
ALTER TABLE `group_messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `gudang`
--
ALTER TABLE `gudang`
  ADD PRIMARY KEY (`GudangID`);

--
-- Indexes for table `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `house_garkot`
--
ALTER TABLE `house_garkot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hunting`
--
ALTER TABLE `hunting`
  ADD PRIMARY KEY (`DeerID`);

--
-- Indexes for table `iconmaps`
--
ALTER TABLE `iconmaps`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`iconID`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`invID`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoiceID`);

--
-- Indexes for table `label_fivem`
--
ALTER TABLE `label_fivem`
  ADD PRIMARY KEY (`LabelID`);

--
-- Indexes for table `ladang`
--
ALTER TABLE `ladang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loglogin`
--
ALTER TABLE `loglogin`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `lumbung`
--
ALTER TABLE `lumbung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marijuana_passwords`
--
ALTER TABLE `marijuana_passwords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `objecttext`
--
ALTER TABLE `objecttext`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pasar`
--
ALTER TABLE `pasar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemerintah_brankas`
--
ALTER TABLE `pemerintah_brankas`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `playerucp`
--
ALTER TABLE `playerucp`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `player_bans`
--
ALTER TABLE `player_bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player_characters`
--
ALTER TABLE `player_characters`
  ADD PRIMARY KEY (`pID`) USING BTREE;

--
-- Indexes for table `player_factionvehicle`
--
ALTER TABLE `player_factionvehicle`
  ADD PRIMARY KEY (`vID`);

--
-- Indexes for table `player_gudang`
--
ALTER TABLE `player_gudang`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `player_housestorage`
--
ALTER TABLE `player_housestorage`
  ADD PRIMARY KEY (`hsItemID`);

--
-- Indexes for table `player_rusunstorage`
--
ALTER TABLE `player_rusunstorage`
  ADD PRIMARY KEY (`rsItemID`);

--
-- Indexes for table `player_vehicles`
--
ALTER TABLE `player_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `polisi_brankas`
--
ALTER TABLE `polisi_brankas`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `public_garage`
--
ALTER TABLE `public_garage`
  ADD PRIMARY KEY (`pgID`);

--
-- Indexes for table `race_results`
--
ALTER TABLE `race_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `slotmachine`
--
ALTER TABLE `slotmachine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `speedcameras`
--
ALTER TABLE `speedcameras`
  ADD PRIMARY KEY (`speedID`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tagId`);

--
-- Indexes for table `toys`
--
ALTER TABLE `toys`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `trans_brankas`
--
ALTER TABLE `trans_brankas`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `trash`
--
ALTER TABLE `trash`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexes for table `twitter`
--
ALTER TABLE `twitter`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `uranium`
--
ALTER TABLE `uranium`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `uranium_passwords`
--
ALTER TABLE `uranium_passwords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_bagasi`
--
ALTER TABLE `vehicle_bagasi`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vehicle_object`
--
ALTER TABLE `vehicle_object`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warrants`
--
ALTER TABLE `warrants`
  ADD PRIMARY KEY (`WarrantsID`);

--
-- Indexes for table `weaponsettings`
--
ALTER TABLE `weaponsettings`
  ADD PRIMARY KEY (`Owner`,`WeaponID`),
  ADD UNIQUE KEY `Owner` (`Owner`,`WeaponID`);

--
-- Indexes for table `weapon_factions`
--
ALTER TABLE `weapon_factions`
  ADD PRIMARY KEY (`Owner_ID`,`Slot`);

--
-- Indexes for table `weeds`
--
ALTER TABLE `weeds`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `workshoplogs`
--
ALTER TABLE `workshoplogs`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `badside_brankas`
--
ALTER TABLE `badside_brankas`
  MODIFY `fItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bengkel_brankas`
--
ALTER TABLE `bengkel_brankas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `capres`
--
ALTER TABLE `capres`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `ChargesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contactID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dropped`
--
ALTER TABLE `dropped`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ems_brankas`
--
ALTER TABLE `ems_brankas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_messages`
--
ALTER TABLE `group_messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `iconID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `invID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoiceID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loglogin`
--
ALTER TABLE `loglogin`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `objecttext`
--
ALTER TABLE `objecttext`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pemerintah_brankas`
--
ALTER TABLE `pemerintah_brankas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `playerucp`
--
ALTER TABLE `playerucp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `player_bans`
--
ALTER TABLE `player_bans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_characters`
--
ALTER TABLE `player_characters`
  MODIFY `pID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `player_factionvehicle`
--
ALTER TABLE `player_factionvehicle`
  MODIFY `vID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_gudang`
--
ALTER TABLE `player_gudang`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_housestorage`
--
ALTER TABLE `player_housestorage`
  MODIFY `hsItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_rusunstorage`
--
ALTER TABLE `player_rusunstorage`
  MODIFY `rsItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_vehicles`
--
ALTER TABLE `player_vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `polisi_brankas`
--
ALTER TABLE `polisi_brankas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `race_results`
--
ALTER TABLE `race_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `speedcameras`
--
ALTER TABLE `speedcameras`
  MODIFY `speedID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tagId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `toys`
--
ALTER TABLE `toys`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trans_brankas`
--
ALTER TABLE `trans_brankas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1087;

--
-- AUTO_INCREMENT for table `twitter`
--
ALTER TABLE `twitter`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicle_bagasi`
--
ALTER TABLE `vehicle_bagasi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_object`
--
ALTER TABLE `vehicle_object`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `warrants`
--
ALTER TABLE `warrants`
  MODIFY `WarrantsID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weeds`
--
ALTER TABLE `weeds`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85561;

--
-- AUTO_INCREMENT for table `workshoplogs`
--
ALTER TABLE `workshoplogs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
