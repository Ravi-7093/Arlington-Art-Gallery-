-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 26, 2022 at 03:06 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `art_gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `Artist`
--

CREATE TABLE `Artist` (
  `aID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `BirthDate` date NOT NULL,
  `DeathDate` date DEFAULT NULL,
  `Commission` decimal(3,0) NOT NULL,
  `Street` varchar(30) NOT NULL,
  `City` varchar(15) NOT NULL,
  `StateAb` varchar(30) NOT NULL,
  `ZipCode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Artist`
--

INSERT INTO `Artist` (`aID`, `Name`, `BirthDate`, `DeathDate`, `Commission`, `Street`, `City`, `StateAb`, `ZipCode`) VALUES
(1, 'Abed Abdi', '2000-01-01', NULL, '10', '309 Hcounty Road', 'Abbott', 'TX', '76621-0057'),
(2, 'Ismail Gulg', '1990-01-03', NULL, '11', '405 E Mesquite Street', 'Abbott', 'TX', '76621-0057'),
(3, 'Shakir Ali', '1995-02-04', NULL, '12', '5000 Spectrum Street', 'Addison', 'TX', '75001-6880'),
(4, 'Abdur Rahman', '1970-02-05', NULL, '10', '1000 County Road', 'Bradley', 'Ok', '73011-0121'),
(5, 'Kalipada Ghoshal', '1994-01-01', NULL, '10', 'Boundary Road', 'Bradley', 'OK', '73011-9600'),
(6, 'Manishi Dey', '1994-07-15', NULL, '11', '450 Main Street', 'Mound City', 'KS', '66056-0001'),
(7, 'Nandalal Bose', '1980-01-09', NULL, '15', 'S Metcalf Road', 'Louisburg', 'KS', '66053-0541'),
(8, 'Raja Ravi Varma', '1970-09-19', NULL, '12', '2000 Forest Grove blvd', 'Allen', 'TX', '75002-8811'),
(9, 'Sunil Das', '1985-08-01', NULL, '10', '4000 Woodcreek Road', 'Carrollton', 'TX', '75006-1911'),
(10, 'Jasper Johns', '1970-01-02', NULL, '12', '2500 Sunset Ridge Drive', 'Rockwall', 'TX', '75032-0006'),
(11, 'Winslow Homer', '1990-02-09', NULL, '11', '11300 Juniper Lane', 'Irving', 'TX', '75039-0101'),
(12, 'Albert Bierstadt', '1999-09-10', NULL, '10', '400 Spruce Street', 'Leavenworth', 'KS', '66048-0001'),
(13, 'Edward Hopper', '2000-01-20', NULL, '11', '1500 255th Street', 'Hillsdale', 'KS', '66036-0061'),
(14, 'Georgia O\'Keeffe', '1997-11-05', NULL, '11', '3000 Weiss Lane', 'Irving', 'TX', '75039-0006'),
(15, 'Modupeola Fadugba', '2001-08-05', NULL, '11', '1112 18TH Street', 'Plano', 'TX', '75086-0019'),
(16, 'Ekene Maduka', '1990-02-09', NULL, '12', '15TH Street', 'Plano', 'TX', '75086-0015'),
(17, 'Olu Amoda', '1994-07-15', NULL, '14', '200 Travis Street', 'Sherman', 'TX', '75090-0005'),
(18, 'Koki Tanaka', '1994-07-15', NULL, '12', '5000 W Holiday Road', 'Fate', 'TX', '75087-2136'),
(19, 'Tatsuo Miyajima', '1999-07-07', NULL, '11', 'Bella Ranch Drive', 'Choctaw', 'OK', '73020-0017'),
(20, 'Li Chen', '2000-01-20', NULL, '12', '2090 County Road', 'Cement', 'OK', '73017-1100'),
(21, 'Zhan Wang', '1999-03-03', NULL, '12', '1600 N Santa Fe', 'Edmond', 'OK', '73003-3661');

-- --------------------------------------------------------

--
-- Table structure for table `Artwork`
--

CREATE TABLE `Artwork` (
  `aID` int(11) NOT NULL,
  `artID` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `creationDate` date NOT NULL,
  `acquisitionDate` date NOT NULL,
  `price` int(11) NOT NULL,
  `form` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Artwork`
--

INSERT INTO `Artwork` (`aID`, `artID`, `title`, `creationDate`, `acquisitionDate`, `price`, `form`) VALUES
(1, 1, 'Refugee Camp', '2020-09-09', '2021-02-07', 12000, 'painting'),
(1, 2, 'Waiting', '2020-12-28', '2021-02-07', 15000, 'painting'),
(1, 3, 'Palestenian Women', '2021-01-01', '2021-02-07', 1700, 'painting'),
(2, 4, 'Al Momin', '1920-02-19', '1921-03-09', 20000, 'painting'),
(2, 5, 'God', '1921-01-01', '1921-07-08', 22000, 'painting'),
(3, 6, 'Bird', '2021-02-04', '2021-05-04', 40000, 'sculpture'),
(3, 7, 'Leaves', '2021-01-04', '2021-07-07', 30000, 'sculpture'),
(4, 8, 'The Holy Man', '2014-01-01', '2014-01-02', 10000, 'sculpture'),
(5, 9, 'Salvador Dali', '2014-01-01', '2015-01-01', 190, 'print'),
(6, 10, 'Landscape', '2019-01-25', '2020-01-01', 200, 'print'),
(6, 11, 'Musician', '2020-01-25', '2021-01-01', 15000, 'sculpture'),
(6, 12, 'Sunset', '2020-06-25', '2021-08-01', 19000, 'painting'),
(7, 13, 'Singawala', '2015-05-20', '2017-07-02', 10000, 'painting'),
(8, 14, 'Shakuntala', '2000-09-27', '2001-08-19', 50000, 'painting'),
(9, 15, 'Grey Horse', '1989-07-01', '1999-07-10', 10000, 'painting'),
(9, 16, 'Blue Horse', '1989-08-01', '1999-08-15', 20000, 'sculpture'),
(9, 17, 'The Lady', '1989-09-01', '1999-09-17', 30000, 'painting'),
(9, 18, 'Horse in MoonLight', '1989-10-01', '1999-10-21', 40000, 'painting'),
(10, 19, 'Flag', '2000-01-01', '2000-05-05', 12000, 'painting'),
(10, 20, 'Three Flags', '2000-09-19', '2000-12-12', 11500, 'painting'),
(10, 21, 'Corpse and Mirror', '2015-01-01', '2016-01-01', 14000, 'painting'),
(10, 22, 'Map', '2017-08-09', '2018-12-12', 19000, 'painting'),
(11, 23, 'Fishing Boats', '1990-01-10', '1991-10-19', 12000, 'painting'),
(11, 24, 'The Gulf Stream', '1992-03-04', '1993-03-04', 15000, 'painting'),
(11, 25, 'A Basket of Clams', '1993-04-05', '1994-04-05', 16000, 'painting'),
(11, 26, 'Glass Windows', '1993-05-07', '1993-07-29', 12000, 'painting'),
(11, 27, 'Flower Garden', '1999-05-01', '1999-08-03', 18000, 'painting'),
(12, 28, 'Mount Hood', '1995-09-10', '1995-09-12', 200, 'print'),
(12, 29, 'Buffalo Trail', '1995-09-10', '1995-09-12', 200, 'print'),
(12, 30, 'Indian Spear Fishing', '1995-09-10', '1995-09-12', 200, 'print'),
(12, 31, 'Sunset in the Rockies', '1995-09-10', '1995-09-12', 200, 'print'),
(12, 32, 'Donner Lake', '1995-09-10', '1995-09-12', 200, 'print'),
(12, 33, 'Bridal Veil Falls', '1995-09-10', '1995-09-12', 200, 'print'),
(12, 34, 'A Rustic Mill', '1995-09-10', '1995-09-12', 200, 'print'),
(12, 35, 'Street in Nassau', '1995-09-10', '1995-09-12', 200, 'print'),
(12, 36, 'Gates of The Yosemite', '1995-09-10', '1995-09-12', 200, 'print'),
(12, 37, 'California Spring', '1995-09-10', '1995-09-12', 200, 'print'),
(12, 38, 'The Wolf River', '1995-09-10', '1995-09-12', 200, 'print'),
(12, 39, 'Mount Corcoran', '1989-09-10', '1995-09-12', 40000, 'painting'),
(13, 40, 'Night Windows', '2000-09-05', '2000-12-05', 30000, 'painting'),
(13, 41, 'Ground Swell', '1990-06-20', '2020-07-02', 15000, 'painting'),
(13, 42, 'Morning Sun', '1995-01-01', '2020-07-02', 12000, 'painting'),
(13, 43, 'Gas', '1990-09-20', '2020-07-02', 22000, 'painting'),
(13, 44, 'Nighthawks', '2000-09-11', '2000-09-15', 25000, 'sculpture'),
(14, 45, 'Oriental Poppies', '2020-04-09', '2021-06-19', 20000, 'painting'),
(14, 46, 'Rocky Mountains', '2014-09-18', '2016-08-20', 40000, 'painting'),
(14, 47, 'Canyon with Crows', '2018-06-06', '2018-06-08', 50000, 'painting'),
(14, 48, 'Unexpected', '2011-07-09', '2011-07-11', 300, 'print'),
(14, 49, 'Leaf Motif', '2011-07-09', '2011-07-11', 350, 'print'),
(14, 50, 'Jimson Weed', '2018-01-09', '2019-07-04', 18000, 'painting'),
(14, 51, 'The Black Place', '2018-09-19', '2019-11-12', 22000, 'painting'),
(14, 52, 'Cow Skull', '2019-07-16', '2020-12-12', 18000, 'painting'),
(14, 53, 'Sky Above Clouds', '2018-07-15', '2018-07-16', 21000, 'painting'),
(15, 54, 'Four Head Bend', '2020-07-09', '2021-08-09', 59000, 'painting'),
(16, 55, 'Win Some Lose Some', '2015-07-04', '2018-07-06', 19000, 'painting'),
(17, 56, 'Polygraph', '2018-04-05', '2020-04-07', 15000, 'sculpture'),
(18, 57, 'Old House in Seoul', '2015-01-10', '2017-01-09', 17000, 'sculpture'),
(19, 58, 'Time Waterfall', '2020-05-05', '2021-01-08', 29000, 'sculpture'),
(20, 59, 'Twilight Breeze', '2020-10-08', '2020-10-25', 15000, 'painting'),
(21, 60, 'Mirror Grden ', '2015-01-01', '2016-07-07', 10000, 'sculpture');

-- --------------------------------------------------------

--
-- Stand-in structure for view `artworkview`
-- (See below for the actual view)
--
CREATE TABLE `artworkview` (
`ArtistName` varchar(30)
,`Bdate` date
,`ArtworkTitle` varchar(30)
,`Form` varchar(30)
,`SaleDate` date
,`ArtworkPrice` int(11)
,`CustomerName` varchar(30)
,`FinalPaymentDate` date
,`AcquisitionDate` date
);

-- --------------------------------------------------------

--
-- Table structure for table `Bought`
--

CREATE TABLE `Bought` (
  `artID` int(11) NOT NULL,
  `cID` int(11) NOT NULL,
  `saleDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Bought`
--

INSERT INTO `Bought` (`artID`, `cID`, `saleDate`) VALUES
(1, 1, '2021-07-08'),
(1, 2, '2021-07-08'),
(3, 3, '2021-08-08'),
(6, 4, '2021-07-07'),
(11, 5, '2021-08-08'),
(11, 6, '2021-08-08'),
(11, 7, '2021-08-08'),
(11, 8, '2021-08-08'),
(13, 9, '2020-08-09'),
(16, 10, '2020-07-07'),
(20, 11, '2000-12-19'),
(20, 12, '2000-12-19'),
(22, 13, '2020-12-10'),
(28, 14, '2021-09-12'),
(35, 15, '2019-03-03'),
(38, 16, '2018-02-02'),
(42, 17, '2020-10-10'),
(49, 18, '2020-08-09'),
(50, 19, '2020-08-09'),
(59, 20, '2020-07-07'),
(60, 21, '2018-09-10'),
(60, 22, '2018-09-10');

-- --------------------------------------------------------

--
-- Table structure for table `Contract`
--

CREATE TABLE `Contract` (
  `aID` int(11) NOT NULL,
  `coID` int(11) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `mRate` int(11) NOT NULL,
  `orgName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Contract`
--

INSERT INTO `Contract` (`aID`, `coID`, `startDate`, `endDate`, `mRate`, `orgName`) VALUES
(5, 1, '2020-10-09', '2021-10-09', 2000, 'Dallas Museum of Art'),
(5, 2, '2020-10-09', '2021-10-09', 2000, 'Kimbal Art Museum'),
(5, 3, '2020-10-09', '2021-10-09', 2000, 'Arlington Museum of Art'),
(8, 1, '2000-10-10', '2001-09-09', 1500, 'Dallas Museum of Art'),
(8, 2, '2000-10-10', '2001-09-09', 1500, 'Kimbal Art Museum'),
(8, 3, '2000-10-10', '2001-09-09', 1500, 'Arlington Museum of Art'),
(14, 1, '2019-10-10', '2020-09-09', 1800, 'Arlington Museum of Art'),
(16, 1, '2015-10-10', '2016-09-09', 1500, 'Kimbal Art Museum'),
(16, 2, '2016-10-10', '2017-09-09', 1600, 'Kimbal Art Museum'),
(16, 3, '2017-10-10', '2018-09-09', 1700, 'Kimbal Art Museum'),
(16, 4, '2018-10-10', '2019-09-09', 1700, 'Kimbal Art Museum'),
(16, 5, '2019-10-10', '2020-09-09', 1800, 'Kimbal Art Museum');

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `cID` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `street` varchar(30) NOT NULL,
  `city` varchar(15) NOT NULL,
  `stateAb` varchar(30) NOT NULL,
  `zipcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`cID`, `name`, `street`, `city`, `stateAb`, `zipcode`) VALUES
(1, 'Mahbod Seraji ', '1500 E Exchange Road', 'Allen', 'TX', '75002-4504'),
(2, 'Shazadi Seraji', '1500 E Exchange Road', 'Allen', 'TX', '75002-4504'),
(3, 'Nadia Hashimi', '1405 Julian Street', 'Addison', 'TX', '75001-4633'),
(4, 'Tahmima Anam', '11200 Graceland Lane', 'Frisco', 'TX', '75033-0062'),
(5, 'Elena Lee', '800 Preston Road', 'Gunter', 'TX', '75058-0001'),
(6, 'Harper Lee', '800 Preston Road', 'Gunter', 'TX', '75058-0001'),
(7, 'Scott Green', '150 Main Road', 'Gunter', 'TX', '75058-0001'),
(8, 'Mary Green', '150 Main Road', 'Gunter', 'TX', '75058-0001'),
(9, 'Tom Twain', '1010 Spicewood Drive', 'Garland ', 'TX', '75044-2569'),
(10, 'Maya Morrison', '2018 N Travis Street', 'Sherman', 'TX', '75090-0006'),
(11, 'Jay Steinbeck', '1092 Old Kaufman Road', 'Kemp', 'TX', '75143-0001'),
(12, 'Linda Steinbeck', '6400 Shortland Drive', 'Dallas', 'TX', '75248-7405'),
(13, 'Randy Bradbury', '1200 Speed Street', 'Marshall', 'TX', '75670-0001'),
(14, 'Wu Ming', '125 Sterling Price Street', 'Tatum', 'TX', '75691-0809'),
(15, 'Dia Davidar', '486 River Side Road', 'Baton Rouge', 'LA', '70801-1106'),
(16, 'Anil Desai', '100 New Ramah Road', 'Castor', 'LA', '71016-2402'),
(17, 'Amitav Ghosh', '200 W Main Street', 'Homer', 'LA', '71040-1021'),
(18, 'Ben Okri', '500 Angi Road', 'Minden', 'LA', '71055-1004'),
(19, 'Helon Habila', '1 Main Street', 'Sunspot', 'NM', '88349-9800'),
(20, 'Ana Castillo', 'PO BOX 560', 'Weed', 'NM', '88364-9700'),
(21, 'Carlos Fuentes', '5000 Quay Road', 'Bard', 'NM', '88411-9708'),
(22, 'Cristina Fuentes', '250 Bailey Road', 'Cuervo', 'NM', '88417-6606');

-- --------------------------------------------------------

--
-- Table structure for table `Payments`
--

CREATE TABLE `Payments` (
  `pID` int(11) NOT NULL,
  `artID` int(11) NOT NULL,
  `upfrontDate` date DEFAULT NULL,
  `finalDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Payments`
--

INSERT INTO `Payments` (`pID`, `artID`, `upfrontDate`, `finalDate`) VALUES
(1, 1, '2021-02-08', '2021-07-08'),
(2, 2, '2021-02-08', NULL),
(3, 3, '2021-02-08', '2021-08-08'),
(4, 4, '1921-03-11', NULL),
(5, 5, '1921-07-08', NULL),
(6, 6, '2021-05-04', '2021-07-07'),
(7, 7, '2021-07-07', NULL),
(8, 8, '2014-01-02', NULL),
(9, 9, '2015-01-01', NULL),
(10, 10, '2020-01-01', NULL),
(11, 11, '2021-01-01', '2021-08-08'),
(12, 12, '2021-08-01', NULL),
(13, 13, '2017-07-02', '2020-08-09'),
(14, 14, '2001-08-19', NULL),
(15, 15, '1999-07-10', NULL),
(16, 16, '1999-08-15', '2020-07-07'),
(17, 17, '1999-09-17', NULL),
(18, 18, '1999-10-21', NULL),
(19, 19, '2000-05-05', NULL),
(20, 20, '2000-12-12', '2000-12-19'),
(21, 21, '2016-01-01', NULL),
(22, 22, '2018-12-12', '2020-12-10'),
(23, 23, '1991-10-19', NULL),
(24, 24, '1993-03-04', NULL),
(25, 25, '1994-04-05', NULL),
(26, 26, '1993-07-29', NULL),
(27, 27, '1999-08-03', NULL),
(28, 28, '1995-09-12', '2021-09-12'),
(29, 29, '1995-09-12', NULL),
(30, 30, '1995-09-12', NULL),
(31, 31, '1995-09-12', NULL),
(32, 32, '1995-09-12', NULL),
(33, 33, '1995-09-12', NULL),
(34, 34, '1995-09-12', NULL),
(35, 35, '1995-09-12', '2019-03-03'),
(36, 36, '1995-09-12', NULL),
(37, 37, '1995-09-12', NULL),
(38, 38, '1995-09-12', '2018-02-02'),
(39, 39, '1995-09-12', NULL),
(40, 40, '2000-12-05', NULL),
(41, 41, '2020-07-02', NULL),
(42, 42, '2020-07-02', '2020-10-10'),
(43, 43, '2020-07-02', NULL),
(44, 44, '2000-09-15', NULL),
(45, 45, '2021-06-19', NULL),
(46, 46, '2016-08-20', NULL),
(47, 47, '2018-06-08', NULL),
(48, 48, '2011-07-11', NULL),
(49, 49, '2011-07-11', '2020-08-09'),
(50, 50, '2019-07-04', '2020-08-09'),
(51, 51, '2019-11-12', NULL),
(52, 52, '2020-12-12', NULL),
(53, 53, '2018-07-16', NULL),
(54, 54, '2021-08-09', NULL),
(55, 55, '2018-07-06', NULL),
(56, 56, '2020-04-07', NULL),
(57, 57, '2017-01-09', NULL),
(58, 58, '2021-01-08', NULL),
(59, 59, '2020-10-25', '2021-01-01'),
(60, 60, '2016-07-07', '2018-09-10');

-- --------------------------------------------------------

--
-- Table structure for table `State`
--

CREATE TABLE `State` (
  `StateAb` varchar(30) NOT NULL,
  `stateName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `State`
--

INSERT INTO `State` (`StateAb`, `stateName`) VALUES
('', ''),
('KS', 'Kansas'),
('LA', 'Louisiana'),
('NM', 'New Mexico'),
('NYC', 'New York'),
('OK', 'Oklahoma'),
('TX', 'Texas');

-- --------------------------------------------------------

--
-- Structure for view `artworkview`
--
DROP TABLE IF EXISTS `artworkview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `artworkview`  AS SELECT `a`.`Name` AS `ArtistName`, `a`.`BirthDate` AS `Bdate`, `art`.`title` AS `ArtworkTitle`, `art`.`form` AS `Form`, `b`.`saleDate` AS `SaleDate`, `art`.`price` AS `ArtworkPrice`, `c`.`name` AS `CustomerName`, `p`.`finalDate` AS `FinalPaymentDate`, `art`.`acquisitionDate` AS `AcquisitionDate` FROM ((((`artist` `a` join `artwork` `art`) join `bought` `b`) join `customer` `c`) join `payments` `p`) WHERE `a`.`aID` = `art`.`aID` AND `art`.`artID` = `b`.`artID` AND `b`.`cID` = `c`.`cID` AND `art`.`artID` = `p`.`artID` ORDER BY `a`.`Name` ASC  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Artist`
--
ALTER TABLE `Artist`
  ADD PRIMARY KEY (`aID`),
  ADD KEY `ARTSTATFK` (`StateAb`) USING BTREE;

--
-- Indexes for table `Artwork`
--
ALTER TABLE `Artwork`
  ADD PRIMARY KEY (`artID`),
  ADD KEY `artist_id` (`aID`);

--
-- Indexes for table `Bought`
--
ALTER TABLE `Bought`
  ADD PRIMARY KEY (`artID`,`cID`),
  ADD KEY `cid` (`cID`);

--
-- Indexes for table `Contract`
--
ALTER TABLE `Contract`
  ADD PRIMARY KEY (`aID`,`coID`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`cID`),
  ADD KEY `const_state` (`stateAb`);

--
-- Indexes for table `Payments`
--
ALTER TABLE `Payments`
  ADD PRIMARY KEY (`pID`),
  ADD KEY `PTARTFK` (`artID`) USING BTREE;

--
-- Indexes for table `State`
--
ALTER TABLE `State`
  ADD PRIMARY KEY (`StateAb`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Artist`
--
ALTER TABLE `Artist`
  ADD CONSTRAINT `state_const` FOREIGN KEY (`StateAb`) REFERENCES `STATE` (`StateAb`);

--
-- Constraints for table `Artwork`
--
ALTER TABLE `Artwork`
  ADD CONSTRAINT `artist_id` FOREIGN KEY (`aID`) REFERENCES `Artist` (`aID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Bought`
--
ALTER TABLE `Bought`
  ADD CONSTRAINT `BTARTWKFK` FOREIGN KEY (`artID`) REFERENCES `ARTWORK` (`artID`),
  ADD CONSTRAINT `BTCUSTFK` FOREIGN KEY (`cID`) REFERENCES `CUSTOMER` (`cID`);

--
-- Constraints for table `Contract`
--
ALTER TABLE `Contract`
  ADD CONSTRAINT `CONTRART` FOREIGN KEY (`aID`) REFERENCES `Artist` (`aID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Customer`
--
ALTER TABLE `Customer`
  ADD CONSTRAINT `CUSTSTA` FOREIGN KEY (`stateAb`) REFERENCES `STATE` (`StateAb`);

--
-- Constraints for table `Payments`
--
ALTER TABLE `Payments`
  ADD CONSTRAINT `art_ID_constraint` FOREIGN KEY (`artID`) REFERENCES `ARTWORK` (`artID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
