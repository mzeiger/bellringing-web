-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 26, 2015 at 02:46 PM
-- Server version: 5.5.42-37.1-log
-- PHP Version: 5.4.23

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `omnidata_bellringing`
--

-- --------------------------------------------------------

--
-- Table structure for table `swaps`
--

DROP TABLE IF EXISTS `swaps`;
CREATE TABLE IF NOT EXISTS `swaps` (
  `swapId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `requesterId` int(11) unsigned NOT NULL,
  `requesterSlotId` int(11) unsigned NOT NULL,
  `requesterLocationId` int(11) unsigned NOT NULL,
  `requesterDate` date NOT NULL,
  `requesteeId` int(11) unsigned NOT NULL,
  `requesteeSlotId` int(11) unsigned NOT NULL,
  `requesteeLocationId` int(11) unsigned NOT NULL,
  `requesteeDate` date NOT NULL,
  `swapStatus` enum('A','D','N') NOT NULL DEFAULT 'N' COMMENT 'A=Accepted, D=declined, N=No status ',
  PRIMARY KEY (`swapId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `swaps`
--

INSERT INTO `swaps` (`swapId`, `requesterId`, `requesterSlotId`, `requesterLocationId`, `requesterDate`, `requesteeId`, `requesteeSlotId`, `requesteeLocationId`, `requesteeDate`, `swapStatus`) VALUES
(23, 60, 6, 1, '2015-04-18', 59, 2, 2, '2015-04-18', 'A'),
(24, 60, 4, 2, '2015-04-18', 59, 6, 1, '2015-04-18', 'A'),
(25, 60, 6, 1, '2015-04-18', 59, 4, 2, '2015-04-18', 'A'),
(26, 60, 7, 2, '2015-04-18', 59, 2, 3, '2015-04-18', 'N'),
(27, 60, 4, 2, '2015-04-18', 59, 6, 1, '2015-04-18', 'A'),
(28, 60, 6, 1, '2015-04-18', 59, 4, 2, '2015-04-18', 'A'),
(29, 60, 4, 2, '2015-04-18', 59, 6, 1, '2015-04-18', 'N'),
(30, 60, 4, 2, '2015-04-18', 59, 6, 1, '2015-04-18', 'N'),
(31, 60, 4, 2, '2015-04-18', 59, 6, 1, '2015-04-18', 'N'),
(32, 60, 4, 2, '2015-04-18', 59, 6, 1, '2015-04-18', 'N'),
(33, 60, 1, 1, '2015-04-18', 59, 6, 1, '2015-04-18', 'N'),
(34, 60, 1, 1, '2015-04-18', 59, 6, 1, '2015-04-18', 'A'),
(35, 60, 6, 1, '2015-04-18', 59, 2, 3, '2015-04-18', 'A'),
(36, 59, 8, 1, '2015-04-19', 60, 3, 1, '2015-04-19', 'A'),
(37, 60, 3, 1, '2015-04-23', 59, 3, 2, '2015-04-23', 'D'),
(38, 62, 3, 3, '2015-04-25', 59, 1, 3, '2015-04-24', 'D'),
(39, 62, 3, 3, '2015-04-25', 59, 1, 3, '2015-04-24', 'N'),
(40, 60, 3, 2, '2015-04-25', 59, 5, 1, '2015-04-24', 'A'),
(41, 59, 6, 3, '2015-04-25', 60, 6, 2, '2015-04-25', 'A'),
(42, 60, 5, 1, '2015-04-24', 59, 6, 2, '2015-04-25', 'N'),
(43, 60, 6, 3, '2015-04-25', 59, 6, 2, '2015-04-25', 'A'),
(44, 60, 8, 1, '2015-04-25', 59, 3, 2, '2015-04-25', 'A'),
(45, 60, 6, 2, '2015-04-25', 59, 6, 3, '2015-04-25', 'A'),
(46, 60, 3, 2, '2015-04-25', 59, 6, 2, '2015-04-25', 'N'),
(47, 60, 3, 2, '2015-04-25', 59, 6, 2, '2015-04-25', 'N'),
(48, 60, 3, 2, '2015-04-25', 59, 6, 2, '2015-04-25', 'N'),
(49, 60, 3, 2, '2015-04-25', 59, 6, 2, '2015-04-25', 'A'),
(50, 60, 6, 2, '2015-04-25', 59, 3, 2, '2015-04-25', 'A'),
(51, 60, 3, 2, '2015-04-25', 59, 6, 2, '2015-04-25', 'N'),
(52, 60, 3, 2, '2015-04-25', 59, 6, 2, '2015-04-25', 'N'),
(53, 60, 6, 3, '2015-04-25', 59, 6, 2, '2015-04-25', 'A'),
(54, 60, 3, 2, '2015-04-25', 59, 8, 1, '2015-04-25', 'N'),
(55, 60, 6, 2, '2015-04-25', 59, 6, 3, '2015-04-25', 'N'),
(56, 59, 3, 1, '2015-04-26', 60, 3, 2, '2015-04-25', 'N');
