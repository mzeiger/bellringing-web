-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 14, 2015 at 04:18 PM
-- Server version: 5.5.41-37.0-log
-- PHP Version: 5.4.23

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `omnidata_bellringing`
--

-- --------------------------------------------------------

--
-- Structure for view `v_schedule`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`omnidata_bellrg`@`localhost` SQL SECURITY DEFINER VIEW `v_schedule` AS select `s`.`dt` AS `dt`,`s`.`slot` AS `slot`,`s`.`ringer` AS `ringer`,`s`.`location` AS `location`,`r`.`fname` AS `fname`,`r`.`lname` AS `lname`,`r`.`email` AS `email`,`r`.`password` AS `password`,`t`.`time` AS `interval`,`L`.`location_name` AS `location_name` from (((`schedule` `s` left join `ringers` `r` on((`s`.`ringer` = `r`.`id`))) left join `timeslots` `t` on((`s`.`slot` = `t`.`id`))) left join `locations` `L` on((`s`.`location` = `L`.`id`)));

--
-- VIEW  `v_schedule`
-- Data: None
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
