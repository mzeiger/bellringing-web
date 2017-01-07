-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 07, 2017 at 02:49 PM
-- Server version: 5.6.32-78.1-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `monumen8_bellringing`
--

-- --------------------------------------------------------

--
-- Structure for view `v_individual_schedule`
--

CREATE VIEW `v_individual_schedule` AS select `v_schedule`.`dt` AS `Date`,dayname(`v_schedule`.`dt`) AS `Day`,concat(`v_schedule`.`fname`,' ',`v_schedule`.`lname`) AS `Name`,`v_schedule`.`interval` AS `Time`,`v_schedule`.`location_name` AS `Location`,`v_schedule`.`ringer` AS `ringer` from `v_schedule` where ((`v_schedule`.`dt` >= (select `administration`.`start_dt` from `administration`)) and (`v_schedule`.`dt` <= (select `administration`.`end_dt` from `administration`))) order by `v_schedule`.`dt`,`v_schedule`.`interval`;
