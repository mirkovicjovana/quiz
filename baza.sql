-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 24, 2020 at 03:51 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `baza_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--
--
--UPDATE `mysql`.`user` 
--SET `plugin` = 'mysql_native_password' 
--WHERE (`Host` = 'localhost') 
--and (`User` = 'root');

--ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root'

DROP TABLE IF EXISTS `korisnik`;
CREATE TABLE IF NOT EXISTS `korisnik` (
  `kid` int(10) NOT NULL AUTO_INCREMENT,
  `emailk` varchar(100) NOT NULL,
  `tacni_odg` int(100) NOT NULL,
  PRIMARY KEY (`kid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`kid`, `emailk`, `tacni_odg`) VALUES
(1, 'jovana@gmail.com', 1),
(2, 'marko@gmail.com', 3),
(4, 'janko@gmail.com', 2),
(5, 'nikola@gmail.com', 1),
(7, 'pera@gmail.com', 5),
(9, 'jelena@gmail.com', 3),
(10, 'ilija@gmail.com', 4),
(11, 'ana@gmail.com', 5);

-- --------------------------------------------------------

--
-- Table structure for table `odgovori`
--

DROP TABLE IF EXISTS `odgovori`;
CREATE TABLE IF NOT EXISTS `odgovori` (
  `oid` int(10) NOT NULL AUTO_INCREMENT,
  `odgovor` varchar(100) DEFAULT NULL,
  `pit_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odgovori`
--

INSERT INTO `odgovori` (`oid`, `odgovor`, `pit_id`) VALUES
(1, 'Frederik Sopen', 1),
(2, 'Klod Debisi', 1),
(3, 'Volfgang Amadeus Mocart', 1),
(4, 'Robert Suman', 1),
(5, 'Beringov moreuz', 2),
(6, 'Gibraltarski moreuz', 2),
(7, 'Suecki kanal', 2),
(8, 'Laperuzov prolaz', 2),
(9, 'Vulkane', 3),
(10, 'Obicaje i nacin zivota', 3),
(11, 'Mora', 3),
(12, 'Retke zivotinjske vrste', 3),
(13, 'Volga', 4),
(14, 'Dunav', 4),
(15, 'Vltava', 4),
(16, 'Rajna', 4),
(17, 'Pol Gogen', 5),
(18, 'Pol Sezan', 5),
(19, 'Edgar Dega', 5),
(20, 'Eduar Mane', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pitanja`
--

DROP TABLE IF EXISTS `pitanja`;
CREATE TABLE IF NOT EXISTS `pitanja` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `pitanje` varchar(100) DEFAULT NULL,
  `odg_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pitanja`
--

INSERT INTO `pitanja` (`pid`, `pitanje`, `odg_id`) VALUES
(1, '\'Turski mars\' je komponovao', 3),
(2, 'Moreuz koji deli Spaniju i Maroko je', 6),
(3, 'Etnolog istrazuje', 10),
(4, 'Najduza evropska reka je', 13),
(5, 'Sliku \'Dorucak na travi\' naslikao je', 20);

-- --------------------------------------------------------

--
-- Table structure for table `podaci`
--

DROP TABLE IF EXISTS `podaci`;
CREATE TABLE IF NOT EXISTS `podaci` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ime` varchar(100) DEFAULT NULL,
  `prezime` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sifra` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `podaci`
--

INSERT INTO `podaci` (`id`, `ime`, `prezime`, `email`, `sifra`) VALUES
(16, 'Jovana', 'Mirkovic', 'njcsfbhbfsdjnjfks', 'ndsjjdsjf'),
(17, 'j', 'j', 'j', '5F/KnYCFiUAOk'),
(18, 'j', 'j', 'jhbfbsdh', '5F/KnYCFiUAOk'),
(19, '', '', '', '5FDk4X/kZxYGg'),
(20, 'j', 'j', 'jkjnjb', '5F/KnYCFiUAOk'),
(21, 'jovana', 'jovanovic', 'jovana@gmail.com', '5F/KnYCFiUAOk'),
(22, 'marko ', 'markovic', 'marko@gmail.com', '5F9tQoBByMpks'),
(23, 'marija', 'm', 'marija@gmail.com', '5F9tQoBByMpks'),
(24, 'janko', 'jankovic', 'janko@gmail.com', '5F/KnYCFiUAOk'),
(25, 'Nikola', 'Nikolic', 'nikola@gmail.com', '5FJ77V27S1w/M'),
(26, 'Pera', 'Peric', 'pera@gmail.com', '5FozVO3zxoPFI'),
(28, 'jelena', 'jankovic', 'jelena@gmail.com', '5F/KnYCFiUAOk'),
(29, 'ilija', 'ilic', 'ilija@gmail.com', '5F8oF94P7xLhg'),
(30, 'ana', 'anic', 'ana@gmail.com', '5FpcI3vvCiy7E'),
(38, 'Jovan', 'Markovic', 'jovanmarkovic@gmail.com', '5F2a4FlOkQ7gA');
COMMIT;
