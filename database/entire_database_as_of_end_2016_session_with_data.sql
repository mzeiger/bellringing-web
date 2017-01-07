-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 07, 2017 at 03:14 PM
-- Server version: 5.6.32-78.1-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `monumen8_bellringing`
--

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE IF NOT EXISTS `administration` (
  `start_dt` date NOT NULL,
  `end_dt` date NOT NULL,
  `project_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`start_dt`, `end_dt`, `project_id`) VALUES
('2016-11-25', '2016-12-24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `all_dates`
--

CREATE TABLE IF NOT EXISTS `all_dates` (
  `dt` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_dates`
--

INSERT INTO `all_dates` (`dt`) VALUES
('2016-11-25'),
('2016-11-26'),
('2016-11-27'),
('2016-11-28'),
('2016-11-29'),
('2016-11-30'),
('2016-12-01'),
('2016-12-02'),
('2016-12-03'),
('2016-12-04'),
('2016-12-05'),
('2016-12-06'),
('2016-12-07'),
('2016-12-08'),
('2016-12-09'),
('2016-12-10'),
('2016-12-11'),
('2016-12-12'),
('2016-12-13'),
('2016-12-14'),
('2016-12-15'),
('2016-12-16'),
('2016-12-17'),
('2016-12-18'),
('2016-12-19'),
('2016-12-20'),
('2016-12-21'),
('2016-12-22'),
('2016-12-23'),
('2016-12-24');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL COMMENT 'AUTO INCREMENT',
  `location_name` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location_name`) VALUES
(1, 'Walmart'),
(2, 'King Soopers'),
(3, 'Safeway');

-- --------------------------------------------------------

--
-- Table structure for table `ringers`
--

CREATE TABLE IF NOT EXISTS `ringers` (
  `id` int(11) NOT NULL COMMENT 'AUTO INCREMENT',
  `fname` varchar(20) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `forgot_pwd_code` bigint(13) DEFAULT NULL,
  `forgot_pwd_time` datetime DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ringers`
--

INSERT INTO `ringers` (`id`, `fname`, `lname`, `email`, `password`, `forgot_pwd_code`, `forgot_pwd_time`) VALUES
(59, 'Mark', 'Zeiger', 'mark.zeiger@gmail.com', '$2y$10$ExpkyAxRAmnBy6BsZyNqv.PFGJ.15eFVMJVf5tFBDJE2z5jMfyTs6', NULL, NULL),
(60, 'Tina', 'Fey', 'zm8032@gmail.com', '$2y$10$qPlRDYKkX4J2CLstdwWuCuqs7aOVVnO31hMv/KdtM0hW12l2WkZzO', NULL, NULL),
(61, 'Barrie', 'Town', 'barrietown@gmail.com', '$2y$10$HO18NMT1FSUzypKlQjDbCOU/DWkd8fOne2dQ4S1ZAX1dRI2rOYEeK', NULL, NULL),
(62, 'Bob', 'Hayes', 'bcahayes@comcast.net', '$2y$10$6fHMm6OebaIWRLmRffUHDue/EhiVuhDdGTbbF/Gy34vqyH9MhUPZ2', 61856614975, '2016-11-18 12:13:21'),
(63, 'Tom', 'Nelson', 'tomnelson5@comcast.net', '$2y$10$giYvJgkmr5mz5r./CII3G.w.5/wzWp.uV1yaPxxw5DxRPQMfWvqnS', NULL, NULL),
(64, 'PRHS', 'Key Club', 'palmerridgekeyclub@gmail.com', '$2y$10$lOvHtT/oaX3rhCKCK65.xuIxuXo.YhOO0gBcAY1LE8/NwZz2.Lgsa', NULL, NULL),
(65, 'Russ', 'Broshous', 'russ.broshous@comcast.net', '$2y$10$E7j2LMODKLe2UFRhftGKxOyB0MjeRNHM78/LhIEEF32wbZ1/FKpcq', NULL, NULL),
(66, 'Scott', 'Ross', 'scott@rosses.me', '$2y$10$hy7DjyGODNxfn48Migf4UOOsrXjhDXW/HFYurNiAog8Mldl56zSve', NULL, NULL),
(67, 'Larry', 'Young', 'llyoung610@gmail.com', '$2y$10$Wusdvld3AHJ6/GLXP9byoOI.NMWdqxmiWqRDzR0EZ.moIKK.c48FO', NULL, NULL),
(68, 'Boy', 'Scouts', 'talbeyta@gmail.com', '$2y$10$izI1hCqLd/Fj8MkvOTROIeNxwCMMOfPDQRhjZjGqPsZyrDeSHig3S', NULL, NULL),
(69, 'Hilary', 'Penner', 'hpenner@lewispalmer.org', '$2y$10$pP7BdsHdxSy6jEIkq49rg.F5dHPbDdQMj1aXLwetrtU7ei0QpHrOK', NULL, NULL),
(70, 'Key', 'Club', 'key@kingsoopers.xxx', '$2y$10$n6BmQFa4I4Zi3jrNuNN03.5wMErSKGRjkYL3X0K4xUNucOxeUxH4K', NULL, NULL),
(71, 'Key', 'Club', 'keyclub@walmart.xxx', '$2y$10$Xeh9ZaX4zNodmDR40OlAqOs86Iv82jtPY4KgMTkaPsvnxerRAP0US', NULL, NULL),
(72, 'Key', 'Club', 'keyclub@safeway.xxx', '$2y$10$4q4kELYEZUHX7GsuRBAFt.hWr3Eeln1buDVieF/TE0Lqm4MNSFifG', NULL, NULL),
(73, 'DCC', 'Cheerleaders', 'jeane.turner@usw.salvationarmy.org', '$2y$10$pItXRGHXmaOTBZNRVivB7O7xzkPkDKrv3zetNcoE2AFk2XI3HgdWe', NULL, NULL),
(74, 'King Soopers', 'Ring', 'bigring@kingsoopers.xxx', '$2y$10$Uu7smswzE7OIxbO7RDHdQeHE6XOD.UqRmfTKkMl0Qf9Y/aqrOoaaO', NULL, NULL),
(75, 'CEO Ring', 'Day', 'ceoringday@kingsoopers.xxx', '$2y$10$9dXkDqqWDBQQ66lKss9DZeF7jqIjbyK1nXaXmPglzSBnQDNtjpnmW', NULL, NULL),
(76, 'Ringing', 'Cancelled', 'cancelled@abc.xyz', '$2y$10$oJ9dc3bZd97kCPS27O58Tu0OwkpYLUSKaLqRy2LjPQ3eGQerw4uRW', NULL, NULL),
(77, 'Boy', 'Scouts', 'williamkaelin@gmail.com', '$2y$10$qZfqvwYhKXsHe/4zwX9bmO5G5qQwznJwG7ui8mGPmfZOnOtxc/m/2', NULL, NULL),
(78, 'Barb', 'Broshous', 'barb.broshous@comcast.net', '$2y$10$aOajQh0VoNc9PmX4lnxTPugk86JMdEG9nw5LNvNrjXOKyUIeFzLSu', 18355879207, '2016-11-04 08:13:44'),
(79, 'Sharon', 'Williams', 'swilliams9960@gmail.com', '$2y$10$mDqjxCeoNdmZay4nGTfXEuTFfrK.dvfzvzz928aJ/CF4AgiRGLnx.', NULL, NULL),
(80, 'Sharon', '', '', '$2y$10$Hz.UfBcffqWcJ191jOSsSO/oet67Wi0NGZBhphLva.WRliDcDNCgG', NULL, NULL),
(81, 'RF', 'Smith', 'rff106k@gmail.com', '$2y$10$Gq79Wj.oIJ1Taolt3rkK2O1J4MDHmjpmMhs4lhaZec947jGu7IyBW', NULL, NULL),
(82, 'Bill', 'Kaelin', 'bill.kaelin@comcast.net', '$2y$10$9YQjUPUlJLB/xPMK74mNZeGx4RDPShax3gg0YADaNsU2PAQMr12mW', NULL, NULL),
(83, 'Warren', 'Gerig', 'warren@asia.com', '$2y$10$.0bXjg4fzzJuyZ2vcP6QbezsYvYnd1EyLKypWdGtwKPaDKHNZtXY2', NULL, NULL),
(84, 'Glenn', 'Scott', 'kayglen@comcast.net', '$2y$10$jO0/qIf3hnKRWbFkbR/i9O0vCpbmKw6Z2E18CD7z6VF.H/tesyy6i', 21831199867, '2016-12-18 12:02:59'),
(85, 'Max', 'Williams', 'mwilliams5866@gmail.com', '$2y$10$FUYaIINiiRetm/I6IVxB1uLC4W.OP/V0IRNXqOZu8rS/HxYc1aXOi', NULL, NULL),
(87, 'Jerry', 'Losey', 'pandj651@outlook.com', '$2y$10$zm9yhxPlSoDZxRbIak4NhuDinbBOboODKjfixh37RyylWplVOj3b6', NULL, NULL),
(86, 'Ron', 'Mangiarelli', 'nonnon@mangiarelli.com', '$2y$10$g1BrgStLpmTDpao.zWTnVuZu9/bLyBA4NEKgpOzd6HZSy3dG3Ecz2', NULL, NULL),
(88, 'Jamie', 'RIEGERT', 'riegertj@leidos.com', '$2y$10$LItLbl3zjGFxHhjFpVXpd.ECO9UTqqNm3tgAhsjcBxGH41Z4CD1QG', NULL, NULL),
(89, 'David', 'Wittman', 'dtwittman@sbcglobal.net', '$2y$10$iN1lQZ/OS/aySVd6rWCbB.IG/6c4G5hQBPmeDRFkFJt4wDAbSzPMK', NULL, NULL),
(90, 'Jim', 'Clemans', 'clemjim@centurylink.net', '$2y$10$Z7eocL.TNJqnFhApNXnAB.oZYEr183MlrmnTupQNmhZsDXaZ/W5tm', NULL, NULL),
(91, 'Jay', 'Kelley', 'jaykelley@me.com', '$2y$10$dNRnbbXntJXv/AV8TzP7gO1Jg1VhDZlWA2rgrv6ZOAnsr5kj9ei/u', NULL, NULL),
(92, 'Paul', 'Baker', '2bakerz@comcast.net', '$2y$10$TjK0WtxJk3Imq3RaIw/e4u02Wg9EAS7u34BGLUkVkSi0XVsqF4mOy', NULL, NULL),
(93, 'Warren', 'Moore', 'wccpmoore@aol.com', '$2y$10$ISTBULhTGo8IAocE.Ri.uunfCJaAKFzwwpLcch6wXlsGTYEsK9JAm', 97827804102, '2016-11-29 15:22:46'),
(94, 'Jim', 'Head', 'jhhead@comcast.net', '$2y$10$8jWmH07X6wYzj6p6ln8yYe.4eT/UUWBS5IUaOsA/BoC0Lx9y6sOP.', NULL, NULL),
(95, 'Benny', 'Nasser', 'benasser@comcast.net', '$2y$10$A0wnx3U/g8QgE74fRoWCPui.JCXLjfx7ncG1MlFHvpW.usA/jy70.', NULL, NULL),
(96, 'Rose', 'Fortune', 'rosefortune64@yahoo.com', '$2y$10$1odRCEPzMwFA7Owx0iG/YOR76sFuw4scr.hEsIlG1gtsAAbq0moou', NULL, NULL),
(97, 'Gordon', 'Sill', 'gmsill@msn.com', '$2y$10$LlxIF1oG0v41EFJRjcJaru7JSrW8kdYPViDQ/mziidR7pdZJ/Ij0S', NULL, NULL),
(98, 'Martha', 'Sill', 'mlsill@dcsdk12.org', '$2y$10$xNILOpXequH.0uKPGzll3OqjCGrD145I3qRRwxGOtV7qJOrwa3jRW', NULL, NULL),
(99, 'Barbara', 'Brandon', 'barb.brandon@rocketmail.com', '$2y$10$cYaiTO/vEIMgnlaijbWWP.dJWRSrzLgl2aSK6YArHyaICslCh3rli', NULL, NULL),
(100, 'Brian', 'Bush', 'bushbx@aol.com', '$2y$10$GKx8fPkL65SQ4T0qP2P4cO1D/Z9Nm546fACAROZyVTuxJzEAjy.lO', NULL, NULL),
(101, 'Jamie', 'Falvo', 'falvoj@hotmail.com', '$2y$10$HAbT2okUpZIxnQINFJy05eWYgfzJGmG.03PvwQmZEyEgAgJj/xr2.', NULL, NULL),
(102, 'Steve', 'Stephenson', 'peakview2@comcast.net', '$2y$10$RWVccqLEuLuDmXsWf/A5JedguAMRJVIS6fJEdf03/sSLlBvRWMJQS', NULL, NULL),
(103, 'Stan', 'Schneider', 'sschnei543@aol.com', '$2y$10$3g0L7YMZh2/DiSJrsbp4AuCw4Zp2a2tH9p3xmxUMCZbvPJsRtGEyW', 64702406553, '2016-12-12 18:58:19'),
(104, 'David', 'Foley', 'mdmfoley@comcast.net', '$2y$10$YofBVuZSWu1u/Fjd6E4fmenkhw1Q8Udh6U.MDqbuoaTFodwU/636K', NULL, NULL),
(105, 'Harry', 'Brandon', 'harry.brandon@gmail.com', '$2y$10$X5RNmmTBJM28jR5JBN0Z8.qGOw.nt.f8N1MUS7HxL.Zun0tyQ0A/y', NULL, NULL),
(106, 'Sue', 'Reinecke', 'sereinecke@msn.com', '$2y$10$ZGTXFWZrP8XnP.Xh8tjGuelNR6kuf1PvvqGCjDixR/hvNlgmKIB9C', NULL, NULL),
(107, 'Jack', 'Fry', 'fryjack@aol.com', '$2y$10$MKmKvC3N5kq2RJx0w2D.8uUDSyAHpvq1jqHqn9FjazUlZ.IKoSleW', NULL, NULL),
(108, 'Joe', 'Foreman', 'jforemanco@comcast.net', '$2y$10$G6LXqGZDfCB15.plZMs4JumL0mehyUoNZHxeuvsN1Rph8zaTbPqD6', NULL, NULL),
(109, 'Larry', 'Stevens', 'wanderingstevens@msn.com', '$2y$10$cylFFjgcFj/C6wm4YKYN8O3kZRdkm5TrsOhEO9xvlAit/wImCoFF.', NULL, NULL),
(110, 'Pete', 'Peterson', 'pete80132@gmail.com', '$2y$10$6g2SAdaHIgjY/dlyvWnzn.8dw00IdgM72selKOjS7X45p7nwgKKu2', NULL, NULL),
(111, 'Dennis', 'Daugherty', 'd2.dau158@gmail.com', '$2y$10$HUHxedXL5RUhDwLsCfv5WuBG6vvTUlchcKgJ6IUeI2a4j9NldUUQS', NULL, NULL),
(112, 'Skip', 'Trahan', 'arthur.trahan@hotmail.com', '$2y$10$hA9CFMMOyS4IwVtZzT38yeLHQqDLy1HkVTJpsR8qzznYXL7r7MRDO', NULL, NULL),
(113, 'Dave', 'Humbert', 'djhumbert22@gmail.com', '$2y$10$QiBLw3kFzVzKtbuo37kbwuCGDgvaBCDqKtjkuYo16AmV8F9nBe8j.', NULL, NULL),
(114, 'R Paul', 'Gourley', 'pgourley53@yahoo.com', '$2y$10$D7WYwhfUMg2SiR3SuqCnw.nr8gaYqGTbWeF9V2fKfuHPH6ApGCmFu', NULL, NULL),
(115, 'Anthony', 'Trifiletti', 'actrif@q.com', '$2y$10$LEUBlIp5Lkf1Jzy1VmfdmuZoRdUPI0U5E2.wAA0TFy7.5iA1UDfxC', NULL, NULL),
(116, 'Marian', 'Taylor', 'mariantaylor59@comcast.net', '$2y$10$fT8k5RA5YyoN82ZNYzisi.JaMHE/CNL6KQgrHxgMxMSYtYPJsRKa2', NULL, NULL),
(117, 'Jim', 'Taylor', 'jimtaylor59@comcast.net', '$2y$10$vQTF9B9TE8SQQU0K7rk3..iLJ6e7ZJhAFDAf5EX6UwAZyiCmvUiN6', NULL, NULL),
(118, 'James', 'Murphy', 'patt.and.jim@gmail.com', '$2y$10$cj0L8r1ApAlvSnOZmI.WuO7gUE7YsLaltKTmgbORiVe6ZyeTFzwa2', NULL, NULL),
(119, 'Thomas', 'Csrnko', 'thomas.csrnko@gmail.com', '$2y$10$oAPUnhuArrZLyMptifFSfuXorbwFNkBPqfKgLsmvCl6Sdat5v/uy2', NULL, NULL),
(120, 'Ron', 'Pitt', 'ronpitt1221@yahoo.com', '$2y$10$AT4rSx8LhljtNkzLyzCtR.V6hyU7NVooKzcKNhqQBtvOJ228hry.m', NULL, NULL),
(121, 'John', 'Spidell', 'spidelljw@aol.com', '$2y$10$NqC99k3KOqlaewS6VPMTLO3t2gYm2cBZK8GdEiQK8eGw/efU3UEbm', NULL, NULL),
(122, 'Donald', 'Johnson', 'donwjohn@comcast.net', '$2y$10$XaEyQtiMPcNnMjYCQh7z.OBxQszhv4TW08mO3dJBWkNbbLUPKxm5e', NULL, NULL),
(123, 'Charlie', 'Brown', 'cbrown41@comcast.net', '$2y$10$U0JPYRwvRpi9iOkRpXFM4eMheKVjutET9YW7QR3uIUfXRcP2Y5qzy', NULL, NULL),
(124, 'Steve', 'Steffey', 'steve06@r3sinc.com', '$2y$10$KqZqkEBonQFYKawTUHfJ5edoPpm2Pfq/1ZGwmdDr4u/mmMjUDpBMG', NULL, NULL),
(125, 'Rich', 'Rima', 'rhrima@aol.com', '$2y$10$Eh0KTGKSf09dDMIbNJl7leL2aZaaqLNIZUX7tMoSNYrj4xehdfay2', NULL, NULL),
(126, 'Alma', 'Scott', 'alma.scott@usw.salvationarmy.org', '$2y$10$BbDeNlTMfaWTEoKL86c/NOu38TdqKCaw5BJdSycpweaSoNHAKNSk.', NULL, NULL),
(127, 'Bob Alexander', 'Boy Scout Troop 93', 'bsjalexander@gmail.com', '$2y$10$iblat9A1WTscP.tCc6uaoeZBX.DALup9209/EE/NeRVrmdcy./Y2S', NULL, NULL),
(128, 'Bob Alexander', 'BSA Troop 93', 'bsrjalexander@gmail.com', '$2y$10$yG8Oj5l7VG2RzEPsLX/NAO6ArLRK6unx15/yxJjnKNwCq9B1v2DzG', NULL, NULL),
(129, 'Rick Schultenover', 'BSA Pack 85', 'rschultenover@gmail.com', '$2y$10$OIpWuW2pGUI77He9N70OtOQNg84pvbJO0TYt5JxKKqzHoRueFzPW.', NULL, NULL),
(130, 'Ed', 'Tomlinson', 'etomlinson24@comcast.net', '$2y$10$pIwGWVyRb8MlxBeGnu4xse9HXjNTkNpB6.m2XeXvC66Ni7Fmxa.RS', NULL, NULL),
(131, 'David', 'Yee', 'dyee@farmersagent.com', '$2y$10$KzVnslPJTuyWnexeVKcOru/4CwrPeaj1ielUUZaULKQuhIHruPgDK', NULL, NULL),
(132, 'Mike', 'Luginbuhl', 'mike.luginbuhl@comcast.net', '$2y$10$C9Jhohbtrwzcq02wc/17L.isQ8MTRu5b2itTWmoLzVW2/6sFL4f9.', NULL, NULL),
(133, 'Bonnie', 'Nasser', 'blnquilts556@comcast.net', '$2y$10$0ClLL59r3biWgv15AQ1IDeg6c5n.VjiqEvy0qkFVpb3/tI5n3XrqK', NULL, NULL),
(134, 'Rich', 'Hicks', 'rich7100@comcast.net', '$2y$10$vYEAA6r0WqKFPfBhN/uMCOHe5XjNwLtp1H0z9yMSCL9c.WnNika.y', NULL, NULL),
(135, 'Gov', 'Vaughn', 'gov@thevinesbestwines.com', '$2y$10$E06WwrOeRNiILzqzvGXAKuHp4vL6LhAA0.9.T8qCbgwvLwMvHdSrW', NULL, NULL),
(136, 'John', 'Howe', 'johnnynclyde@centurylink.net', '$2y$10$M.iSAt/fs8ra9PNRG2hSZ.DyNqcgDP59tLTPouUF4b.CYT.Ve8akC', NULL, NULL),
(137, 'Dennis', 'Beasley', 'admin@beasco.net', '$2y$10$0YERDL.vLSNoGkHy6M1w.ukt70XEJp2S73tynbvly6YN.KGDGMZqa', NULL, NULL),
(138, 'Gary', 'Reed', 'reedge@comcast.net', '$2y$10$FzDAK3fKZWf9FfkTwJZZn.gqlkTXXmfV5i0UNN4ZbMIFlNZYCEqDi', NULL, NULL),
(139, 'Fred', 'Fletemeyer', 'connie@fletemeyercompany.com', '$2y$10$Yfdzri3ywrQ0peQ/4IzLCeWF0bbZKFCuyPXfIr09hsgYt966LZsn6', NULL, NULL),
(140, 'Michael', 'Fullman', 'michaelfullman@olsonph.com', '$2y$10$YZnRSDsXMpIojDoFICmGtuz7qOgAKfE.JXB/8tBqewEms.QDrHs2W', NULL, NULL),
(141, 'Michael', 'Fullman', 'mfullman@hotmail.com', '$2y$10$wAi6yRY7XsNCZkjkU5CKi.zX2biB4rX4H1H58WKqtDbJFiU/SqvQm', NULL, NULL),
(142, 'Bryan', 'McMeekin', 'mworke@comcast.net', '$2y$10$yC5ZXry6cpjUdTs0qIbcme95upkLOhqmSI21NLsq.qnVBIJRyxNRG', NULL, NULL),
(143, 'Richard', 'Strom', 'rsappraisals_6@msn.com', '$2y$10$a44eM2h04qPafct5Rt1BEO7wOsVCBMyiwem.plBIvJCpz3oKzz4uu', NULL, NULL),
(144, 'Ted', 'Bauman', 'mr2ba1024@aol.com', '$2y$10$LzKHw9kFl/HJXLWb1jqD6uBHWG70lfrD7CNeIzttf500Vqqco7FT2', NULL, NULL),
(145, 'Steven', 'Keefer', 'steve@keefersplace.com', '$2y$10$28nVJ/XWHzhkTbsoy4kPkOG8BkLM0o5IxUx7RKJo0Rvu1BTZqVpIm', NULL, NULL),
(146, 'Marianne', 'Black', 'co_sunshine2002@yahoo.com', '$2y$10$criWol1mqAYsKDxa80rA7u1JAQFcoIPVSgHcgQkwLPft0uJu5q/oO', NULL, NULL),
(147, 'Ted', 'Lunacek', 'tnlunacek@gmail.com', '$2y$10$WsMkQmnrOLrQV5b47O8X2.6pI7OcS46thpjzdF8bVc4keUZmTSG0u', NULL, NULL),
(148, 'Tom', 'Weyer', 'tcweyer@gmail.com', '$2y$10$rn3Xf3.yZ2qDGrZPeGN1YO5uqatAY87GCSyUNii4fvsIwWJjBpuQG', NULL, NULL),
(149, 'Bill', 'Stoner', 'clonestone@msn.com', '$2y$10$Sor.Uw2wHTKtJ3f4cwPx6eO/Lx.JFMIxeIttzAq7SMQVdrHdoZJ02', NULL, NULL),
(150, 'Kelsey', 'Falvo', 'kelseyfalvo1@gmail.com', '$2y$10$u5Yrgs/VZen4X1po6fnUL.hwemCXlJxqhrAA1r6cKyd2aTcCqqCbu', NULL, NULL),
(153, 'Steve', 'Hall', 'sertomasteve@aol.com', '$2y$10$8NJEjiNuOWJ.gwPaH5Etq.QUGM1ZD0YOBcvqaqFmLebaaR2d6XvLK', NULL, NULL),
(151, 'Sally', 'Hazlett', 'artist5153@aol.com', '$2y$10$RleH4uARjeByquCwsYcVO.z3oNjBaPuh77NOJjiMPF5N9nhnhkczK', NULL, NULL),
(152, 'Bob', 'Nissen', 'bob@mifigroup.com', '$2y$10$yiBXQHFu//ffGJJHQvap0O1DwijyneCX1jLV9982Fc0svobdpggOm', NULL, NULL),
(154, 'Paul', 'Short', 'long4778@aol.com', '$2y$10$AcjLPZeCtcPBa7a4aj1LGuErxJ2XWwq.kIGMMAEQ5EHl9zBaD7n8e', NULL, NULL),
(155, 'Ofie', 'Lopez', 'ofielopez@yahoo.com', '$2y$10$ggVcp85w2KTxu1ei1NnVce6y8zIpJKEJHIHtsx20jZUcsjuuFd.E.', NULL, NULL),
(156, 'Matthew', 'Harris', 'matthew.harris888@gmail.com', '$2y$10$Xle05kAiI6NrzcAkciCAUuS6oRc3v1FdZctMWKfvQPoPrzwn2GDru', NULL, NULL),
(157, 'Richard', 'Munsell', 'rfmunsell@aol.com', '$2y$10$VGFvTv95qzoy2FlZBAxaXeQnh1O9WTn69T2R70OwQ47z2SjmySxxq', NULL, NULL),
(158, 'Jeff', 'Stumpf', 'jmstumpf@aol.com', '$2y$10$jp5VP/HdKkLK3eFADLeS6.3XQAuuywZmmP0zZO1bmaxXEjtcJxL7S', NULL, NULL),
(159, 'Linda', 'Roberts', 'robertslpav@hotmail.com', '$2y$10$x71Vxlor/EwwaGJ70C2fRu7wmGo5I4m0VEcDoGuTCZqKfjvxeyCCi', NULL, NULL),
(160, 'Chris', 'Amenson', 'camenson@comcast.net', '$2y$10$/WbEO9NxqsHqkL8P.DedNenYwcWyk7fEZobKz5jd79OaRwJApVsGS', NULL, NULL),
(161, 'Mark', 'Silvanic', 'mark@silvanic.net', '$2y$10$tI0F9cAJ37ZbLzFwx4tqhulOdCo.7mQRjP9nCh9lYgc36A.9JQ9rS', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `dt` date NOT NULL,
  `slot` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `ringer` int(11) NOT NULL,
  `location` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`dt`, `slot`, `ringer`, `location`) VALUES
('2016-11-25', '2', 83, 3),
('2016-12-03', '1', 68, 3),
('2016-12-03', '6', 69, 2),
('2016-12-03', '5', 69, 2),
('2016-12-03', '2', 68, 3),
('2016-12-03', '4', 69, 2),
('2016-12-03', '3', 69, 2),
('2016-12-03', '2', 69, 2),
('2016-12-03', '8', 68, 3),
('2016-12-03', '7', 68, 3),
('2016-10-24', '1', 59, 1),
('2016-10-24', '2', 59, 2),
('2016-10-24', '3', 59, 3),
('2016-10-24', '2', 60, 3),
('2016-10-24', '5', 60, 1),
('2016-10-24', '6', 60, 3),
('2016-12-03', '6', 68, 3),
('2016-12-03', '5', 68, 3),
('2016-12-03', '4', 68, 3),
('2016-12-03', '3', 68, 3),
('2016-11-27', '1', 70, 2),
('2016-11-27', '2', 70, 2),
('2016-11-27', '3', 70, 2),
('2016-11-27', '4', 70, 2),
('2016-11-27', '5', 70, 2),
('2016-11-27', '6', 70, 2),
('2016-11-27', '7', 70, 2),
('2016-11-27', '8', 70, 2),
('2016-12-04', '1', 70, 2),
('2016-12-04', '2', 70, 2),
('2016-12-04', '3', 70, 2),
('2016-12-04', '4', 70, 2),
('2016-12-04', '5', 70, 2),
('2016-12-04', '6', 70, 2),
('2016-12-04', '7', 70, 2),
('2016-12-04', '8', 70, 2),
('2016-12-11', '1', 70, 2),
('2016-12-11', '2', 70, 2),
('2016-12-11', '3', 70, 2),
('2016-12-11', '4', 70, 2),
('2016-12-11', '5', 70, 2),
('2016-12-11', '6', 70, 2),
('2016-12-11', '7', 70, 2),
('2016-12-11', '8', 70, 2),
('2016-12-18', '1', 70, 2),
('2016-12-18', '2', 70, 2),
('2016-12-18', '3', 70, 2),
('2016-12-18', '4', 70, 2),
('2016-12-18', '5', 70, 2),
('2016-12-18', '6', 70, 2),
('2016-12-18', '7', 70, 2),
('2016-12-18', '8', 70, 2),
('2016-11-27', '1', 71, 1),
('2016-11-27', '2', 71, 1),
('2016-11-27', '3', 71, 1),
('2016-11-27', '4', 71, 1),
('2016-11-27', '5', 71, 1),
('2016-11-27', '6', 71, 1),
('2016-11-27', '7', 71, 1),
('2016-11-27', '8', 71, 1),
('2016-12-04', '1', 71, 1),
('2016-12-04', '2', 71, 1),
('2016-12-04', '3', 71, 1),
('2016-12-04', '4', 71, 1),
('2016-12-04', '5', 71, 1),
('2016-12-04', '6', 71, 1),
('2016-12-04', '7', 71, 1),
('2016-12-04', '8', 71, 1),
('2016-12-11', '1', 71, 1),
('2016-12-11', '2', 71, 1),
('2016-12-11', '3', 71, 1),
('2016-12-11', '4', 71, 1),
('2016-12-11', '5', 71, 1),
('2016-12-11', '6', 71, 1),
('2016-12-11', '7', 71, 1),
('2016-12-11', '8', 71, 1),
('2016-12-18', '1', 71, 1),
('2016-12-18', '2', 71, 1),
('2016-12-18', '3', 71, 1),
('2016-12-18', '4', 71, 1),
('2016-12-18', '5', 71, 1),
('2016-12-18', '6', 71, 1),
('2016-12-18', '7', 71, 1),
('2016-12-18', '8', 71, 1),
('2016-11-27', '1', 72, 3),
('2016-11-27', '2', 72, 3),
('2016-11-27', '3', 72, 3),
('2016-11-27', '4', 72, 3),
('2016-11-27', '5', 72, 3),
('2016-11-27', '6', 72, 3),
('2016-11-27', '7', 72, 3),
('2016-11-27', '8', 72, 3),
('2016-12-04', '1', 72, 3),
('2016-12-04', '2', 72, 3),
('2016-12-04', '3', 72, 3),
('2016-12-04', '4', 72, 3),
('2016-12-04', '5', 72, 3),
('2016-12-04', '6', 72, 3),
('2016-12-04', '7', 72, 3),
('2016-12-04', '8', 72, 3),
('2016-12-11', '1', 72, 3),
('2016-12-11', '2', 72, 3),
('2016-12-11', '3', 72, 3),
('2016-12-11', '4', 72, 3),
('2016-12-11', '5', 72, 3),
('2016-12-11', '6', 72, 3),
('2016-12-11', '7', 72, 3),
('2016-12-11', '8', 72, 3),
('2016-12-18', '1', 72, 3),
('2016-12-18', '2', 72, 3),
('2016-12-18', '3', 72, 3),
('2016-12-18', '4', 72, 3),
('2016-12-18', '5', 72, 3),
('2016-12-18', '6', 72, 3),
('2016-12-18', '7', 72, 3),
('2016-12-18', '8', 72, 3),
('2016-12-17', '1', 73, 2),
('2016-12-17', '2', 73, 2),
('2016-12-17', '3', 73, 2),
('2016-12-17', '4', 73, 2),
('2016-12-14', '5', 67, 2),
('2016-12-14', '6', 74, 2),
('2016-12-14', '7', 74, 2),
('2016-12-14', '8', 74, 2),
('2016-12-21', '2', 75, 2),
('2016-12-21', '3', 75, 2),
('2016-12-21', '1', 76, 2),
('2016-12-08', '7', 134, 1),
('2016-12-08', '8', 76, 1),
('2106-12-08', '7', 76, 2),
('2016-12-08', '7', 76, 3),
('2106-12-08', '8', 76, 2),
('2016-12-08', '8', 76, 3),
('2016-12-08', '7', 76, 2),
('2016-12-08', '8', 76, 2),
('2016-12-03', '1', 77, 1),
('2016-12-03', '2', 77, 1),
('2016-12-03', '3', 77, 1),
('2016-12-03', '4', 77, 1),
('2016-12-03', '5', 77, 1),
('2016-12-03', '6', 77, 1),
('2016-12-03', '7', 77, 1),
('2016-12-03', '8', 77, 1),
('2016-11-25', '4', 65, 2),
('2016-11-25', '5', 65, 2),
('2016-12-02', '4', 65, 2),
('2016-12-02', '5', 65, 2),
('2016-12-09', '4', 65, 2),
('2016-12-09', '5', 65, 2),
('2016-12-16', '4', 65, 2),
('2016-12-16', '5', 65, 2),
('2016-12-23', '4', 65, 2),
('2016-12-23', '5', 65, 2),
('2016-11-25', '1', 87, 2),
('2016-11-28', '2', 83, 3),
('2016-11-29', '2', 83, 3),
('2016-12-02', '1', 83, 3),
('2016-12-01', '2', 83, 3),
('2016-11-30', '2', 83, 3),
('2016-12-24', '1', 79, 3),
('2016-12-24', '2', 79, 3),
('2016-12-24', '8', 79, 3),
('2016-12-24', '7', 79, 3),
('2016-12-05', '2', 83, 3),
('2016-11-30', '1', 84, 1),
('2016-12-02', '1', 84, 1),
('2016-12-06', '1', 84, 1),
('2016-12-08', '1', 84, 1),
('2016-12-03', '1', 85, 2),
('2016-11-25', '1', 66, 1),
('2016-11-25', '2', 66, 1),
('2016-11-28', '7', 66, 1),
('2016-11-28', '8', 66, 1),
('2016-12-05', '5', 66, 1),
('2016-12-05', '6', 66, 1),
('2016-11-26', '1', 86, 2),
('2016-11-28', '1', 86, 2),
('2016-11-29', '1', 86, 2),
('2016-11-26', '2', 86, 2),
('2016-11-28', '2', 86, 2),
('2016-11-29', '2', 86, 2),
('2016-11-25', '3', 61, 1),
('2016-12-24', '3', 85, 2),
('2016-12-05', '1', 86, 2),
('2016-12-05', '2', 86, 2),
('2016-12-12', '7', 66, 1),
('2016-11-28', '1', 61, 1),
('2016-12-12', '8', 66, 1),
('2016-12-06', '2', 86, 1),
('2016-12-06', '3', 86, 1),
('2016-12-23', '5', 66, 1),
('2016-12-23', '6', 66, 1),
('2016-12-07', '1', 86, 2),
('2016-11-25', '4', 85, 1),
('2016-12-07', '2', 86, 2),
('2016-12-08', '1', 86, 2),
('2016-12-08', '2', 86, 2),
('2016-12-09', '1', 86, 2),
('2016-12-09', '2', 86, 2),
('2016-12-10', '1', 86, 1),
('2016-12-10', '2', 86, 1),
('2016-11-28', '2', 85, 1),
('2016-12-12', '1', 86, 2),
('2016-12-12', '2', 86, 2),
('2016-12-13', '1', 86, 2),
('2016-12-13', '2', 86, 2),
('2016-12-14', '1', 86, 3),
('2016-12-14', '2', 86, 3),
('2016-12-15', '1', 86, 2),
('2016-12-15', '2', 86, 2),
('2016-12-16', '1', 86, 2),
('2016-12-16', '2', 86, 2),
('2016-12-17', '1', 86, 3),
('2016-12-17', '2', 86, 3),
('2016-12-09', '1', 85, 3),
('2016-12-19', '1', 86, 2),
('2016-12-19', '2', 86, 2),
('2016-12-20', '1', 86, 2),
('2016-12-20', '2', 86, 2),
('2016-12-21', '1', 76, 3),
('2016-12-21', '1', 76, 1),
('2016-12-22', '1', 86, 2),
('2016-12-22', '2', 86, 2),
('2016-12-23', '1', 86, 2),
('2016-12-23', '2', 86, 2),
('2016-12-24', '1', 86, 2),
('2016-12-24', '2', 86, 2),
('2016-12-14', '7', 143, 1),
('2016-11-28', '3', 87, 2),
('2016-12-14', '8', 154, 1),
('2016-11-30', '1', 87, 2),
('2016-12-02', '1', 87, 2),
('2016-12-07', '3', 87, 2),
('2016-12-09', '3', 87, 2),
('2016-12-12', '3', 87, 2),
('2016-12-14', '1', 87, 2),
('2016-12-16', '3', 87, 2),
('2016-12-19', '3', 87, 2),
('2016-12-21', '4', 87, 2),
('2016-12-23', '3', 87, 2),
('2016-11-30', '2', 89, 1),
('2016-12-02', '2', 89, 1),
('2016-11-29', '4', 82, 2),
('2016-12-23', '1', 89, 1),
('2016-12-09', '1', 89, 1),
('2016-11-28', '8', 108, 2),
('2016-12-01', '6', 82, 2),
('2016-12-06', '4', 82, 2),
('2016-12-08', '4', 82, 2),
('2016-12-13', '4', 82, 2),
('2016-12-15', '4', 82, 2),
('2016-12-20', '4', 82, 2),
('2016-12-22', '4', 82, 2),
('2016-12-20', '3', 91, 2),
('2016-12-22', '3', 91, 2),
('2016-11-26', '4', 90, 2),
('2016-12-23', '7', 91, 2),
('2016-11-28', '5', 90, 2),
('2016-11-29', '5', 90, 2),
('2016-11-30', '5', 90, 2),
('2016-12-05', '5', 90, 2),
('2016-12-06', '5', 90, 2),
('2016-12-07', '5', 90, 2),
('2016-12-10', '4', 111, 2),
('2016-12-12', '5', 90, 2),
('2016-12-13', '5', 90, 2),
('2016-12-21', '5', 92, 2),
('2016-12-22', '5', 92, 2),
('2016-12-19', '5', 92, 1),
('2016-12-17', '5', 90, 2),
('2016-12-19', '5', 90, 2),
('2016-12-21', '6', 90, 2),
('2016-12-13', '1', 84, 1),
('2016-12-15', '2', 84, 1),
('2016-12-20', '1', 84, 1),
('2016-12-22', '1', 84, 1),
('2016-11-28', '4', 93, 2),
('2016-11-30', '2', 93, 2),
('2016-12-02', '2', 93, 2),
('2016-12-05', '3', 93, 2),
('2016-12-07', '4', 93, 2),
('2016-12-09', '6', 93, 2),
('2016-12-12', '4', 93, 2),
('2016-12-14', '2', 93, 2),
('2016-12-19', '4', 93, 2),
('2016-11-25', '1', 79, 3),
('2016-11-28', '1', 79, 3),
('2016-11-29', '1', 79, 3),
('2016-12-07', '1', 79, 3),
('2016-12-07', '3', 79, 3),
('2016-12-05', '8', 79, 3),
('2016-12-06', '1', 79, 3),
('2016-12-06', '2', 79, 3),
('2016-12-06', '5', 79, 3),
('2016-12-09', '4', 79, 3),
('2016-12-09', '2', 79, 3),
('2016-12-12', '1', 79, 3),
('2016-12-12', '2', 79, 3),
('2016-12-13', '1', 79, 3),
('2016-12-13', '2', 79, 3),
('2016-12-15', '1', 79, 3),
('2016-12-15', '2', 79, 3),
('2016-12-16', '1', 79, 3),
('2016-12-16', '2', 79, 3),
('2016-12-23', '6', 79, 3),
('2016-12-14', '6', 79, 3),
('2016-12-23', '4', 79, 3),
('2016-12-23', '3', 79, 3),
('2016-11-30', '3', 95, 2),
('2016-11-30', '4', 94, 3),
('2016-12-06', '4', 94, 3),
('2016-12-07', '4', 94, 3),
('2016-12-13', '4', 94, 3),
('2016-12-14', '4', 94, 3),
('2016-12-20', '4', 94, 3),
('2016-12-21', '4', 94, 3),
('2016-11-29', '4', 94, 3),
('2016-11-26', '6', 79, 3),
('2016-12-10', '2', 95, 2),
('2016-11-26', '1', 79, 3),
('2016-11-26', '3', 116, 3),
('2016-11-29', '3', 107, 2),
('2016-11-25', '4', 116, 3),
('2016-11-25', '5', 117, 3),
('2016-11-26', '4', 117, 3),
('2016-12-20', '3', 96, 3),
('2016-12-10', '1', 97, 3),
('2016-12-01', '8', 98, 3),
('2016-12-19', '3', 98, 3),
('2016-11-25', '2', 99, 2),
('2016-11-28', '3', 99, 1),
('2016-11-30', '1', 99, 3),
('2016-11-25', '5', 101, 1),
('2016-12-24', '4', 101, 2),
('2016-12-24', '5', 101, 2),
('2016-12-01', '2', 102, 2),
('2016-12-12', '5', 120, 3),
('2016-12-14', '3', 102, 2),
('2016-11-28', '5', 104, 3),
('2016-12-12', '3', 89, 1),
('2016-12-01', '5', 104, 3),
('2016-12-02', '5', 104, 3),
('2016-12-05', '5', 104, 3),
('2016-12-09', '5', 104, 3),
('2016-12-15', '7', 105, 2),
('2016-11-30', '7', 105, 2),
('2016-12-01', '7', 105, 2),
('2016-12-02', '3', 106, 2),
('2016-12-01', '3', 107, 2),
('2016-12-05', '4', 107, 3),
('2016-12-06', '3', 107, 2),
('2016-12-07', '6', 107, 2),
('2016-12-08', '3', 107, 2),
('2016-12-01', '3', 62, 3),
('2016-12-14', '4', 107, 2),
('2016-12-13', '3', 107, 3),
('2016-12-15', '3', 107, 3),
('2016-12-16', '3', 107, 3),
('2016-12-21', '2', 75, 1),
('2016-12-21', '3', 75, 1),
('2016-12-21', '3', 75, 3),
('2016-12-21', '2', 75, 3),
('2016-11-29', '7', 108, 2),
('2016-12-02', '8', 108, 2),
('2016-12-06', '8', 108, 2),
('2016-12-09', '7', 108, 2),
('2016-12-12', '7', 108, 2),
('2016-12-16', '8', 108, 2),
('2016-12-19', '7', 108, 2),
('2016-12-21', '8', 108, 2),
('2016-12-23', '8', 108, 2),
('2016-12-07', '8', 109, 3),
('2016-12-01', '4', 109, 3),
('2016-12-02', '4', 109, 3),
('2016-12-05', '3', 109, 3),
('2016-11-28', '6', 110, 2),
('2016-12-09', '3', 109, 3),
('2016-12-08', '2', 109, 3),
('2016-12-06', '3', 109, 3),
('2016-12-10', '3', 109, 3),
('2016-12-12', '3', 109, 3),
('2016-12-13', '5', 109, 3),
('2016-11-25', '6', 120, 3),
('2016-12-14', '3', 109, 3),
('2016-12-16', '8', 134, 1),
('2016-12-17', '8', 109, 3),
('2016-12-21', '5', 109, 3),
('2016-12-20', '5', 109, 3),
('2016-12-19', '4', 109, 3),
('2016-11-30', '8', 109, 3),
('2016-11-28', '7', 110, 2),
('2016-11-25', '3', 110, 2),
('2016-11-29', '8', 110, 2),
('2016-12-05', '7', 67, 2),
('2016-12-05', '6', 67, 2),
('2016-12-10', '1', 110, 2),
('2016-12-12', '8', 110, 2),
('2016-12-15', '5', 110, 2),
('2016-12-15', '6', 110, 2),
('2016-12-19', '8', 110, 2),
('2016-12-22', '6', 110, 2),
('2016-12-24', '6', 110, 2),
('2016-11-25', '8', 111, 2),
('2016-12-02', '7', 111, 2),
('2016-12-09', '8', 111, 2),
('2016-12-17', '8', 111, 2),
('2016-11-25', '6', 67, 2),
('2016-11-25', '7', 67, 2),
('2016-11-26', '4', 132, 1),
('2016-12-10', '8', 112, 1),
('2016-12-09', '7', 112, 1),
('2016-12-09', '8', 112, 1),
('2016-12-23', '7', 112, 1),
('2016-12-23', '8', 112, 1),
('2016-12-17', '8', 112, 1),
('2016-11-28', '3', 62, 3),
('2016-11-29', '3', 62, 3),
('2016-11-30', '5', 62, 3),
('2016-12-13', '8', 113, 2),
('2016-11-30', '3', 113, 1),
('2016-12-01', '1', 113, 1),
('2016-11-26', '2', 113, 1),
('2016-11-28', '4', 114, 1),
('2016-11-28', '5', 114, 1),
('2016-12-01', '4', 114, 1),
('2016-12-01', '5', 114, 1),
('2016-11-25', '3', 115, 3),
('2016-11-28', '4', 116, 3),
('2016-11-30', '3', 116, 3),
('2016-12-06', '8', 118, 1),
('2016-12-13', '8', 118, 1),
('2016-12-15', '8', 118, 1),
('2016-12-05', '1', 119, 3),
('2016-12-08', '1', 119, 3),
('2016-12-15', '5', 119, 3),
('2016-11-25', '6', 81, 1),
('2016-11-25', '7', 81, 1),
('2016-11-29', '3', 81, 1),
('2016-11-29', '4', 81, 1),
('2016-12-06', '4', 81, 1),
('2016-12-06', '5', 81, 1),
('2016-12-13', '3', 81, 1),
('2016-12-13', '4', 81, 1),
('2016-12-24', '3', 81, 1),
('2016-12-24', '4', 81, 1),
('2016-11-26', '3', 111, 1),
('2016-11-25', '7', 121, 3),
('2016-11-26', '5', 62, 3),
('2016-12-02', '3', 96, 1),
('2016-12-01', '1', 123, 3),
('2016-12-07', '2', 123, 3),
('2016-12-12', '4', 123, 3),
('2016-11-25', '8', 124, 1),
('2016-11-26', '5', 124, 2),
('2016-11-26', '6', 124, 2),
('2016-11-26', '2', 125, 3),
('2016-12-10', '3', 128, 1),
('2016-12-10', '4', 128, 1),
('2016-12-10', '5', 128, 1),
('2016-12-10', '6', 128, 1),
('2016-12-10', '7', 128, 1),
('2016-12-10', '5', 111, 2),
('2016-12-10', '6', 129, 2),
('2016-12-10', '7', 129, 2),
('2016-12-10', '8', 129, 2),
('2016-12-16', '7', 79, 3),
('2016-12-16', '8', 79, 3),
('2016-11-28', '6', 132, 1),
('2016-11-29', '5', 132, 1),
('2016-11-25', '8', 133, 3),
('2016-11-26', '3', 133, 2),
('2016-11-26', '8', 130, 1),
('2016-11-29', '6', 130, 1),
('2016-11-30', '6', 130, 1),
('2016-11-26', '5', 61, 1),
('2016-11-26', '1', 105, 1),
('2016-11-26', '7', 130, 1),
('2016-11-29', '7', 134, 1),
('2016-11-29', '8', 134, 1),
('2016-12-05', '7', 134, 1),
('2016-12-05', '8', 134, 1),
('2016-11-26', '7', 134, 3),
('2016-11-26', '8', 134, 3),
('2016-11-30', '4', 135, 2),
('2016-12-01', '1', 135, 2),
('2016-11-26', '6', 136, 1),
('2016-11-29', '2', 103, 1),
('2016-11-26', '7', 67, 2),
('2016-11-26', '8', 67, 2),
('2016-11-29', '6', 100, 2),
('2016-11-30', '6', 100, 2),
('2016-12-01', '5', 100, 2),
('2016-12-23', '6', 100, 2),
('2016-12-01', '4', 137, 2),
('2016-12-06', '6', 137, 2),
('2016-12-08', '5', 137, 2),
('2016-12-13', '3', 137, 2),
('2016-12-15', '3', 137, 2),
('2016-12-19', '6', 137, 2),
('2016-11-30', '5', 111, 1),
('2016-11-29', '1', 111, 1),
('2016-12-01', '3', 138, 1),
('2016-11-28', '6', 62, 3),
('2016-12-02', '3', 120, 3),
('2016-12-02', '6', 62, 3),
('2016-11-28', '7', 139, 3),
('2016-11-28', '8', 139, 3),
('2016-11-30', '7', 81, 1),
('2016-12-17', '3', 116, 3),
('2016-12-19', '2', 116, 3),
('2016-12-24', '3', 116, 3),
('2016-12-22', '2', 116, 3),
('2016-12-14', '5', 116, 3),
('2016-11-30', '8', 132, 2),
('2016-12-02', '6', 132, 1),
('2016-11-29', '5', 142, 3),
('2016-11-29', '6', 142, 3),
('2016-11-30', '6', 142, 3),
('2016-11-30', '7', 142, 3),
('2016-12-01', '7', 142, 3),
('2016-12-02', '2', 142, 3),
('2016-11-29', '8', 62, 3),
('2016-12-05', '6', 120, 3),
('2016-11-29', '7', 121, 3),
('2016-11-30', '4', 92, 1),
('2016-12-01', '2', 92, 1),
('2016-12-01', '6', 143, 1),
('2016-12-02', '4', 143, 1),
('2016-12-09', '8', 144, 3),
('2016-12-05', '4', 143, 1),
('2016-12-06', '8', 144, 3),
('2016-12-06', '6', 143, 1),
('2016-12-19', '8', 144, 1),
('2016-12-21', '8', 144, 1),
('2016-12-22', '8', 144, 2),
('2016-12-23', '8', 144, 3),
('2016-12-24', '2', 144, 1),
('2016-12-02', '6', 144, 2),
('2016-12-12', '2', 106, 1),
('2016-12-02', '5', 103, 1),
('2016-11-30', '8', 81, 1),
('2016-12-01', '6', 79, 3),
('2016-12-05', '1', 61, 1),
('2016-12-09', '2', 61, 1),
('2016-12-05', '2', 103, 1),
('2016-12-06', '7', 138, 1),
('2016-12-01', '8', 67, 2),
('2016-12-01', '7', 130, 1),
('2016-12-01', '8', 108, 1),
('2016-12-05', '3', 89, 1),
('2016-12-07', '2', 89, 1),
('2016-12-06', '6', 62, 3),
('2016-12-12', '1', 61, 1),
('2016-12-07', '4', 103, 1),
('2016-12-02', '7', 125, 3),
('2016-11-26', '1', 79, 43),
('2016-11-26', '4', 79, 43),
('2016-12-02', '8', 134, 3),
('2016-12-02', '7', 81, 1),
('2016-12-02', '8', 81, 1),
('2016-12-07', '5', 62, 3),
('2016-12-21', '4', 86, 1),
('2016-12-21', '5', 86, 1),
('2016-12-05', '7', 79, 3),
('2016-12-06', '7', 79, 3),
('2016-12-07', '7', 79, 3),
('2016-12-09', '7', 79, 3),
('2016-12-03', '7', 146, 2),
('2016-12-03', '8', 146, 2),
('2016-12-06', '1', 147, 2),
('2016-12-05', '4', 135, 2),
('2016-12-05', '8', 148, 2),
('2016-12-06', '7', 67, 2),
('2016-12-07', '7', 67, 2),
('2016-12-07', '3', 67, 1),
('2016-12-07', '5', 132, 1),
('2016-12-09', '3', 132, 1),
('2016-12-07', '1', 111, 1),
('2016-12-10', '3', 111, 2),
('2016-12-07', '6', 149, 1),
('2016-12-08', '2', 149, 1),
('2016-12-08', '3', 120, 3),
('2016-12-08', '5', 142, 3),
('2016-12-08', '6', 142, 3),
('2016-12-09', '6', 142, 3),
('2016-12-08', '4', 142, 3),
('2016-12-10', '4', 142, 3),
('2016-12-10', '5', 142, 3),
('2016-12-12', '7', 142, 3),
('2016-12-12', '8', 142, 3),
('2016-12-07', '6', 125, 3),
('2016-12-20', '5', 114, 1),
('2016-12-24', '6', 62, 3),
('2016-12-24', '4', 150, 3),
('2016-12-24', '5', 150, 3),
('2016-12-10', '2', 79, 3),
('2016-12-10', '7', 79, 3),
('2016-12-10', '8', 79, 3),
('2016-12-10', '6', 129, 3),
('2016-12-23', '7', 79, 3),
('2016-12-13', '7', 79, 3),
('2016-12-13', '8', 79, 3),
('2016-12-14', '8', 79, 3),
('2016-12-15', '8', 79, 3),
('2016-12-20', '7', 79, 3),
('2016-12-20', '8', 79, 3),
('2016-12-09', '6', 138, 1),
('2016-12-12', '6', 62, 3),
('2016-12-07', '7', 143, 1),
('2016-12-13', '5', 143, 1),
('2016-12-14', '6', 143, 1),
('2016-12-13', '6', 62, 3),
('2016-12-20', '3', 81, 1),
('2016-12-20', '4', 81, 1),
('2016-12-07', '8', 134, 1),
('2016-12-07', '8', 91, 2),
('2016-12-14', '1', 89, 1),
('2016-12-19', '6', 151, 3),
('2016-12-08', '3', 81, 1),
('2016-12-08', '4', 134, 1),
('2016-12-08', '5', 134, 1),
('2016-12-08', '6', 134, 1),
('2016-12-08', '6', 148, 2),
('2016-12-17', '6', 152, 2),
('2016-12-09', '4', 148, 1),
('2016-12-09', '5', 147, 1),
('2016-12-12', '6', 67, 2),
('2016-12-14', '2', 67, 1),
('2016-12-15', '8', 67, 2),
('2016-12-13', '6', 148, 2),
('2016-12-13', '7', 148, 2),
('2016-12-17', '6', 62, 3),
('2016-12-17', '7', 109, 3),
('2016-12-12', '4', 132, 1),
('2016-12-12', '5', 103, 1),
('2016-12-14', '3', 103, 1),
('2016-12-15', '3', 103, 1),
('2016-12-12', '6', 153, 1),
('2016-12-14', '4', 153, 1),
('2016-12-16', '4', 153, 1),
('2016-12-20', '5', 148, 2),
('2016-12-20', '6', 148, 2),
('2016-12-19', '5', 109, 3),
('2016-12-20', '6', 109, 3),
('2016-12-14', '5', 114, 1),
('2016-12-13', '2', 67, 1),
('2016-12-13', '6', 154, 1),
('2016-12-22', '2', 89, 1),
('2016-12-13', '7', 154, 1),
('2016-12-15', '1', 154, 1),
('2016-12-15', '7', 132, 1),
('2016-12-15', '6', 111, 1),
('2016-12-16', '3', 111, 1),
('2016-12-16', '5', 138, 1),
('2016-12-16', '6', 67, 1),
('2016-12-16', '7', 67, 1),
('2016-12-17', '1', 137, 1),
('2016-12-14', '7', 136, 3),
('2016-12-15', '4', 149, 1),
('2016-12-16', '1', 149, 1),
('2016-12-16', '6', 125, 3),
('2016-12-16', '2', 59, 1),
('2016-12-15', '7', 79, 3),
('2016-12-15', '4', 62, 3),
('2016-12-17', '2', 103, 1),
('2016-12-16', '5', 120, 3),
('2016-12-21', '6', 120, 3),
('2016-12-15', '5', 143, 1),
('2016-12-16', '6', 156, 2),
('2016-12-21', '7', 156, 2),
('2016-12-15', '6', 123, 3),
('2016-12-16', '4', 123, 3),
('2016-12-19', '4', 154, 1),
('2016-12-20', '2', 154, 1),
('2016-12-19', '3', 157, 1),
('2016-12-20', '6', 157, 1),
('2016-12-21', '6', 157, 1),
('2016-12-17', '4', 143, 1),
('2016-12-21', '7', 138, 1),
('2016-12-17', '5', 81, 1),
('2016-12-17', '6', 81, 1),
('2016-12-16', '7', 108, 2),
('2016-12-22', '6', 59, 3),
('2016-12-17', '4', 117, 3),
('2016-12-17', '5', 97, 3),
('2016-12-17', '7', 114, 1),
('2016-12-17', '3', 134, 1),
('2016-12-19', '1', 62, 3),
('2016-12-17', '7', 59, 2),
('2016-12-19', '2', 67, 1),
('2016-12-21', '7', 67, 3),
('2016-12-22', '1', 67, 3),
('2016-12-23', '2', 67, 1),
('2016-12-23', '3', 67, 1),
('2016-12-24', '5', 159, 1),
('2016-12-20', '2', 62, 3),
('2016-12-23', '1', 136, 3),
('2016-12-23', '2', 136, 3),
('2016-12-19', '7', 142, 3),
('2016-12-19', '8', 142, 3),
('2016-12-20', '1', 142, 3),
('2016-12-22', '3', 95, 3),
('2016-12-22', '3', 103, 1),
('2016-12-23', '5', 62, 3),
('2016-12-22', '8', 62, 3),
('2016-12-20', '7', 59, 2),
('2016-12-20', '8', 95, 2),
('2016-12-22', '7', 59, 3),
('2016-12-20', '7', 121, 1),
('2016-12-24', '7', 124, 1),
('2016-12-24', '8', 124, 1),
('2016-12-23', '4', 137, 1),
('2016-12-24', '1', 137, 1),
('2016-12-19', '1', 149, 1),
('2016-12-22', '4', 149, 1),
('2016-12-24', '7', 85, 2),
('2016-12-19', '7', 111, 1),
('2016-12-19', '6', 67, 1),
('2016-12-24', '6', 125, 1),
('2016-12-21', '8', 67, 3),
('2016-12-22', '4', 98, 3),
('2016-12-22', '5', 98, 3),
('2016-12-20', '8', 111, 1),
('2016-12-22', '7', 111, 2),
('2016-12-22', '5', 81, 1),
('2016-12-22', '6', 81, 1),
('2016-12-24', '8', 85, 2),
('2016-12-22', '7', 143, 1),
('2016-12-22', '8', 143, 1);

-- --------------------------------------------------------

--
-- Table structure for table `swaps`
--

CREATE TABLE IF NOT EXISTS `swaps` (
  `swapId` int(10) unsigned NOT NULL,
  `requesterId` int(11) unsigned NOT NULL,
  `requesterSlotId` int(11) unsigned NOT NULL,
  `requesterLocationId` int(11) unsigned NOT NULL,
  `requesterDate` date NOT NULL,
  `requesteeId` int(11) unsigned NOT NULL,
  `requesteeSlotId` int(11) unsigned NOT NULL,
  `requesteeLocationId` int(11) unsigned NOT NULL,
  `requesteeDate` date NOT NULL,
  `swapStatus` enum('A','D','N') NOT NULL DEFAULT 'N' COMMENT 'A=Accepted, D=declined, N=No status '
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `swaps`
--

INSERT INTO `swaps` (`swapId`, `requesterId`, `requesterSlotId`, `requesterLocationId`, `requesterDate`, `requesteeId`, `requesteeSlotId`, `requesteeLocationId`, `requesteeDate`, `swapStatus`) VALUES
(1, 81, 8, 2, '2016-11-30', 132, 8, 1, '2016-11-30', 'N'),
(2, 132, 4, 1, '2016-12-12', 153, 6, 1, '2016-12-12', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `timeslots`
--

CREATE TABLE IF NOT EXISTS `timeslots` (
  `id` smallint(6) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeslots`
--

INSERT INTO `timeslots` (`id`, `time`) VALUES
(1, '10 AM to 11 AM'),
(2, '11 AM to 12 Noon'),
(3, '12 Noon to 1 PM'),
(4, '1 PM to 2 PM'),
(5, '2 PM to 3 PM'),
(6, '3 PM to 4 PM'),
(7, '4 PM to 5 PM'),
(8, '5 PM to 6 PM');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_counts`
--
CREATE TABLE IF NOT EXISTS `v_counts` (
`Name` varchar(51)
,`count` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_individual_schedule`
--
CREATE TABLE IF NOT EXISTS `v_individual_schedule` (
`Date` date
,`Day` varchar(9)
,`Name` varchar(51)
,`Time` varchar(30)
,`Location` varchar(20)
,`ringer` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_schedule`
--
CREATE TABLE IF NOT EXISTS `v_schedule` (
`dt` date
,`slot` enum('1','2','3','4','5','6','7','8')
,`ringer` int(11)
,`location` int(11)
,`fname` varchar(20)
,`lname` varchar(30)
,`email` varchar(50)
,`password` varchar(255)
,`interval` varchar(30)
,`location_name` varchar(20)
);

-- --------------------------------------------------------

--
-- Structure for view `v_counts`
--
DROP TABLE IF EXISTS `v_counts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`monumen8`@`localhost` SQL SECURITY DEFINER VIEW `v_counts` AS select concat(`v_schedule`.`fname`,' ',`v_schedule`.`lname`) AS `Name`,count(0) AS `count` from `v_schedule` where ((`v_schedule`.`dt` >= (select `administration`.`start_dt` from `administration`)) and (`v_schedule`.`dt` <= (select `administration`.`end_dt` from `administration`))) group by `v_schedule`.`ringer` order by count(0) desc;

-- --------------------------------------------------------

--
-- Structure for view `v_individual_schedule`
--
DROP TABLE IF EXISTS `v_individual_schedule`;

CREATE ALGORITHM=UNDEFINED DEFINER=`monumen8`@`localhost` SQL SECURITY DEFINER VIEW `v_individual_schedule` AS select `v_schedule`.`dt` AS `Date`,dayname(`v_schedule`.`dt`) AS `Day`,concat(`v_schedule`.`fname`,' ',`v_schedule`.`lname`) AS `Name`,`v_schedule`.`interval` AS `Time`,`v_schedule`.`location_name` AS `Location`,`v_schedule`.`ringer` AS `ringer` from `v_schedule` where ((`v_schedule`.`dt` >= (select `administration`.`start_dt` from `administration`)) and (`v_schedule`.`dt` <= (select `administration`.`end_dt` from `administration`))) order by `v_schedule`.`dt`,`v_schedule`.`interval`;

-- --------------------------------------------------------

--
-- Structure for view `v_schedule`
--
DROP TABLE IF EXISTS `v_schedule`;

CREATE ALGORITHM=UNDEFINED DEFINER=`monumen8`@`localhost` SQL SECURITY DEFINER VIEW `v_schedule` AS select `s`.`dt` AS `dt`,`s`.`slot` AS `slot`,`s`.`ringer` AS `ringer`,`s`.`location` AS `location`,`r`.`fname` AS `fname`,`r`.`lname` AS `lname`,`r`.`email` AS `email`,`r`.`password` AS `password`,`t`.`time` AS `interval`,`L`.`location_name` AS `location_name` from (((`schedule` `s` left join `ringers` `r` on((`s`.`ringer` = `r`.`id`))) left join `timeslots` `t` on((`s`.`slot` = `t`.`id`))) left join `locations` `L` on((`s`.`location` = `L`.`id`)));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administration`
--
ALTER TABLE `administration`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `all_dates`
--
ALTER TABLE `all_dates`
  ADD UNIQUE KEY `dt` (`dt`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `location` (`location_name`);

--
-- Indexes for table `ringers`
--
ALTER TABLE `ringers`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email_2` (`email`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD UNIQUE KEY `Unique Index` (`dt`,`slot`,`location`);

--
-- Indexes for table `swaps`
--
ALTER TABLE `swaps`
  ADD PRIMARY KEY (`swapId`);

--
-- Indexes for table `timeslots`
--
ALTER TABLE `timeslots`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'AUTO INCREMENT',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ringers`
--
ALTER TABLE `ringers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'AUTO INCREMENT',AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT for table `swaps`
--
ALTER TABLE `swaps`
  MODIFY `swapId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;

