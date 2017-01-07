-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 07, 2017 at 02:52 PM
-- Server version: 5.6.32-78.1-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `monumen8_bellringing`
--

-- --------------------------------------------------------

--
-- Structure for view `v_counts`
--

CREATE VIEW `v_counts` AS select concat(`v_schedule`.`fname`,' ',`v_schedule`.`lname`) AS `Name`,count(0) AS `count` from `v_schedule` where ((`v_schedule`.`dt` >= (select `administration`.`start_dt` from `administration`)) and (`v_schedule`.`dt` <= (select `administration`.`end_dt` from `administration`))) group by `v_schedule`.`ringer` order by count(0) desc;

--
-- VIEW  `v_counts`
-- Data: None
--