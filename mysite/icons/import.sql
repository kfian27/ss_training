-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Mar 12, 2015 at 12:26 AM
-- Server version: 5.5.38
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ss_mysite`
--

-- --------------------------------------------------------

--
-- Table structure for table `ArticleCategory`
--

CREATE TABLE `ArticleCategory` (
`ID` int(11) NOT NULL,
  `ClassName` enum('ArticleCategory') DEFAULT 'ArticleCategory',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `ArticleHolderID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ArticleCategory`
--

INSERT INTO `ArticleCategory` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `ArticleHolderID`) VALUES
(1, 'ArticleCategory', '2015-03-11 00:42:21', '2015-03-11 00:42:21', 'Properties', 9),
(2, 'ArticleCategory', '2015-03-11 00:42:26', '2015-03-11 00:42:26', 'Prices', 9),
(3, 'ArticleCategory', '2015-03-11 00:42:38', '2015-03-11 00:42:38', 'Deals', 9);

-- --------------------------------------------------------

--
-- Table structure for table `ArticleComment`
--

CREATE TABLE `ArticleComment` (
`ID` int(11) NOT NULL,
  `ClassName` enum('ArticleComment') DEFAULT 'ArticleComment',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Comment` mediumtext,
  `ArticlePageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ArticlePage`
--

CREATE TABLE `ArticlePage` (
`ID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Teaser` mediumtext,
  `Author` varchar(50) DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `BrochureID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `ArticlePage`
--

INSERT INTO `ArticlePage` (`ID`, `Date`, `Teaser`, `Author`, `PhotoID`, `BrochureID`) VALUES
(10, '2015-01-13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent at diam porttitor, euismod sem ac, scelerisque felis. In id felis lorem. Nunc a accumsan justo.', 'Bilbo Baggins', 2, 4),
(11, '2015-02-05', 'Quisque auctor ex eu felis pulvinar, at vulputate diam faucibus. Praesent nec risus quis metus fermentum dapibus. In placerat quis augue nec rutrum.', 'Frodo', 5, 6),
(12, '2015-02-28', 'Aliquam velit tellus, suscipit in accumsan non, pulvinar sed turpis. Aenean ut mollis quam. Integer eget vestibulum arcu. ', 'Bilbo Baggins', 7, 8);

-- --------------------------------------------------------

--
-- Table structure for table `ArticlePage_Categories`
--

CREATE TABLE `ArticlePage_Categories` (
`ID` int(11) NOT NULL,
  `ArticlePageID` int(11) NOT NULL DEFAULT '0',
  `ArticleCategoryID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ArticlePage_Categories`
--

INSERT INTO `ArticlePage_Categories` (`ID`, `ArticlePageID`, `ArticleCategoryID`) VALUES
(1, 10, 1),
(2, 10, 2),
(3, 11, 3),
(4, 12, 2),
(5, 12, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ArticlePage_Live`
--

CREATE TABLE `ArticlePage_Live` (
`ID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Teaser` mediumtext,
  `Author` varchar(50) DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `BrochureID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `ArticlePage_Live`
--

INSERT INTO `ArticlePage_Live` (`ID`, `Date`, `Teaser`, `Author`, `PhotoID`, `BrochureID`) VALUES
(10, '2015-01-13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent at diam porttitor, euismod sem ac, scelerisque felis. In id felis lorem. Nunc a accumsan justo.', 'Bilbo Baggins', 2, 4),
(11, '2015-02-05', 'Quisque auctor ex eu felis pulvinar, at vulputate diam faucibus. Praesent nec risus quis metus fermentum dapibus. In placerat quis augue nec rutrum.', 'Frodo', 5, 6),
(12, '2015-02-28', 'Aliquam velit tellus, suscipit in accumsan non, pulvinar sed turpis. Aenean ut mollis quam. Integer eget vestibulum arcu. ', 'Bilbo Baggins', 7, 8);

-- --------------------------------------------------------

--
-- Table structure for table `ArticlePage_versions`
--

CREATE TABLE `ArticlePage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Date` date DEFAULT NULL,
  `Teaser` mediumtext,
  `Author` varchar(50) DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `BrochureID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ArticlePage_versions`
--

INSERT INTO `ArticlePage_versions` (`ID`, `RecordID`, `Version`, `Date`, `Teaser`, `Author`, `PhotoID`, `BrochureID`) VALUES
(1, 10, 1, NULL, NULL, NULL, 0, 0),
(2, 10, 2, '2015-01-13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent at diam porttitor, euismod sem ac, scelerisque felis. In id felis lorem. Nunc a accumsan justo.', 'Bilbo Baggins', 2, 4),
(3, 11, 1, NULL, NULL, NULL, 0, 0),
(4, 11, 2, '2015-02-05', 'Quisque auctor ex eu felis pulvinar, at vulputate diam faucibus. Praesent nec risus quis metus fermentum dapibus. In placerat quis augue nec rutrum.', 'Frodo', 5, 6),
(5, 12, 1, NULL, NULL, NULL, 0, 0),
(6, 12, 2, '2015-02-28', 'Aliquam velit tellus, suscipit in accumsan non, pulvinar sed turpis. Aenean ut mollis quam. Integer eget vestibulum arcu. ', 'Bilbo Baggins', 7, 8);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage`
--

CREATE TABLE `ErrorPage` (
`ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ErrorPage`
--

INSERT INTO `ErrorPage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_Live`
--

CREATE TABLE `ErrorPage_Live` (
`ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ErrorPage_Live`
--

INSERT INTO `ErrorPage_Live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_versions`
--

CREATE TABLE `ErrorPage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ErrorPage_versions`
--

INSERT INTO `ErrorPage_versions` (`ID`, `RecordID`, `Version`, `ErrorCode`) VALUES
(1, 4, 1, 404),
(2, 5, 1, 500);

-- --------------------------------------------------------

--
-- Table structure for table `File`
--

CREATE TABLE `File` (
`ID` int(11) NOT NULL,
  `ClassName` enum('File','Folder','Image','Image_Cached') DEFAULT 'File',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Filename` mediumtext,
  `Content` mediumtext,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `File`
--

INSERT INTO `File` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
(1, 'Folder', '2015-03-11 00:44:18', '2015-03-11 00:44:18', 'travel-photos', 'travel-photos', 'assets/travel-photos/', NULL, 1, 0, 1),
(2, 'Image', '2015-03-11 00:44:19', '2015-03-11 00:44:19', 'mock-file-7.jpeg', 'mock file 7', 'assets/travel-photos/mock-file-7.jpeg', NULL, 1, 1, 1),
(3, 'Folder', '2015-03-11 00:44:22', '2015-03-11 00:44:22', 'travel-brochures', 'travel-brochures', 'assets/travel-brochures/', NULL, 1, 0, 1),
(4, 'File', '2015-03-11 00:44:23', '2015-03-11 00:44:23', 'pdf1.pdf', 'pdf1', 'assets/travel-brochures/pdf1.pdf', NULL, 1, 3, 1),
(5, 'Image', '2015-03-11 00:45:42', '2015-03-11 00:45:42', 'mock-file-10.jpeg', 'mock file 10', 'assets/travel-photos/mock-file-10.jpeg', NULL, 1, 1, 1),
(6, 'File', '2015-03-11 00:45:45', '2015-03-11 00:45:45', 'pdf3.pdf', 'pdf3', 'assets/travel-brochures/pdf3.pdf', NULL, 1, 3, 1),
(7, 'Image', '2015-03-11 00:46:37', '2015-03-11 00:46:37', 'mock-file-6.jpeg', 'mock file 6', 'assets/travel-photos/mock-file-6.jpeg', NULL, 1, 1, 1),
(8, 'File', '2015-03-11 00:46:40', '2015-03-11 00:46:40', 'pdf2.pdf', 'pdf2', 'assets/travel-brochures/pdf2.pdf', NULL, 1, 3, 1),
(9, 'Folder', '2015-03-12 00:03:14', '2015-03-12 00:03:14', 'region-photos', 'region-photos', 'assets/region-photos/', NULL, 1, 0, 1),
(10, 'Image', '2015-03-12 00:03:15', '2015-03-12 00:03:15', 'mock-file-5.jpeg', 'mock file 5', 'assets/region-photos/mock-file-5.jpeg', NULL, 1, 9, 1),
(11, 'Image', '2015-03-12 00:04:19', '2015-03-12 00:04:19', 'mock-file-10.jpeg', 'mock file 10', 'assets/region-photos/mock-file-10.jpeg', NULL, 1, 9, 1),
(12, 'Image', '2015-03-12 00:04:46', '2015-03-12 00:04:46', 'mock-file-6.jpeg', 'mock file 6', 'assets/region-photos/mock-file-6.jpeg', NULL, 1, 9, 1),
(13, 'Image', '2015-03-12 00:05:12', '2015-03-12 00:05:12', 'mock-file-3.jpeg', 'mock file 3', 'assets/region-photos/mock-file-3.jpeg', NULL, 1, 9, 1),
(14, 'Folder', '2015-03-12 00:17:17', '2015-03-12 00:17:17', 'mock-files', 'mock-files', 'assets/mock-files/', NULL, 1, 0, 1),
(15, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-1.jpeg', 'mock-file-1.jpeg', 'assets/mock-files/mock-file-1.jpeg', NULL, 1, 14, 1),
(16, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-10.jpeg', 'mock-file-10.jpeg', 'assets/mock-files/mock-file-10.jpeg', NULL, 1, 14, 1),
(17, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-2.jpeg', 'mock-file-2.jpeg', 'assets/mock-files/mock-file-2.jpeg', NULL, 1, 14, 1),
(18, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-3.jpeg', 'mock-file-3.jpeg', 'assets/mock-files/mock-file-3.jpeg', NULL, 1, 14, 1),
(19, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-4.jpeg', 'mock-file-4.jpeg', 'assets/mock-files/mock-file-4.jpeg', NULL, 1, 14, 1),
(20, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-5.jpeg', 'mock-file-5.jpeg', 'assets/mock-files/mock-file-5.jpeg', NULL, 1, 14, 1),
(21, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-5500cb6445a6d.jpeg', 'mock-file-5500cb6445a6d.jpeg', 'assets/mock-files/mock-file-5500cb6445a6d.jpeg', NULL, 1, 14, 1),
(22, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-5500cb6b3e8a0.jpeg', 'mock-file-5500cb6b3e8a0.jpeg', 'assets/mock-files/mock-file-5500cb6b3e8a0.jpeg', NULL, 1, 14, 1),
(23, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-5500cb6f9e52f.jpeg', 'mock-file-5500cb6f9e52f.jpeg', 'assets/mock-files/mock-file-5500cb6f9e52f.jpeg', NULL, 1, 14, 1),
(24, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-5500cc21dfe0b.jpeg', 'mock-file-5500cc21dfe0b.jpeg', 'assets/mock-files/mock-file-5500cc21dfe0b.jpeg', NULL, 1, 14, 1),
(25, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-5500cc278262f.jpeg', 'mock-file-5500cc278262f.jpeg', 'assets/mock-files/mock-file-5500cc278262f.jpeg', NULL, 1, 14, 1),
(26, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-5500cc2b2e81d.jpeg', 'mock-file-5500cc2b2e81d.jpeg', 'assets/mock-files/mock-file-5500cc2b2e81d.jpeg', NULL, 1, 14, 1),
(27, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-5500cc301ca1a.jpeg', 'mock-file-5500cc301ca1a.jpeg', 'assets/mock-files/mock-file-5500cc301ca1a.jpeg', NULL, 1, 14, 1),
(28, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-5500cc34ab3fd.jpeg', 'mock-file-5500cc34ab3fd.jpeg', 'assets/mock-files/mock-file-5500cc34ab3fd.jpeg', NULL, 1, 14, 1),
(29, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-5500cc390981f.jpeg', 'mock-file-5500cc390981f.jpeg', 'assets/mock-files/mock-file-5500cc390981f.jpeg', NULL, 1, 14, 1),
(30, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-5500cc3b6b0b8.jpeg', 'mock-file-5500cc3b6b0b8.jpeg', 'assets/mock-files/mock-file-5500cc3b6b0b8.jpeg', NULL, 1, 14, 1),
(31, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-5500cc40252cd.jpeg', 'mock-file-5500cc40252cd.jpeg', 'assets/mock-files/mock-file-5500cc40252cd.jpeg', NULL, 1, 14, 1),
(32, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-5500cc4587407.jpeg', 'mock-file-5500cc4587407.jpeg', 'assets/mock-files/mock-file-5500cc4587407.jpeg', NULL, 1, 14, 1),
(33, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-5500cc4b15470.jpeg', 'mock-file-5500cc4b15470.jpeg', 'assets/mock-files/mock-file-5500cc4b15470.jpeg', NULL, 1, 14, 1),
(34, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-6.jpeg', 'mock-file-6.jpeg', 'assets/mock-files/mock-file-6.jpeg', NULL, 1, 14, 1),
(35, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-7.jpeg', 'mock-file-7.jpeg', 'assets/mock-files/mock-file-7.jpeg', NULL, 1, 14, 1),
(36, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-8.jpeg', 'mock-file-8.jpeg', 'assets/mock-files/mock-file-8.jpeg', NULL, 1, 14, 1),
(37, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock-file-9.jpeg', 'mock-file-9.jpeg', 'assets/mock-files/mock-file-9.jpeg', NULL, 1, 14, 1),
(38, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock_file_1.jpeg', 'mock_file_1.jpeg', 'assets/mock-files/mock_file_1.jpeg', NULL, 1, 14, 1),
(39, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock_file_10.jpeg', 'mock_file_10.jpeg', 'assets/mock-files/mock_file_10.jpeg', NULL, 1, 14, 1),
(40, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock_file_2.jpeg', 'mock_file_2.jpeg', 'assets/mock-files/mock_file_2.jpeg', NULL, 1, 14, 1),
(41, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock_file_3.jpeg', 'mock_file_3.jpeg', 'assets/mock-files/mock_file_3.jpeg', NULL, 1, 14, 1),
(42, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock_file_4.jpeg', 'mock_file_4.jpeg', 'assets/mock-files/mock_file_4.jpeg', NULL, 1, 14, 1),
(43, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock_file_5.jpeg', 'mock_file_5.jpeg', 'assets/mock-files/mock_file_5.jpeg', NULL, 1, 14, 1),
(44, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock_file_6.jpeg', 'mock_file_6.jpeg', 'assets/mock-files/mock_file_6.jpeg', NULL, 1, 14, 1),
(45, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock_file_7.jpeg', 'mock_file_7.jpeg', 'assets/mock-files/mock_file_7.jpeg', NULL, 1, 14, 1),
(46, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock_file_8.jpeg', 'mock_file_8.jpeg', 'assets/mock-files/mock_file_8.jpeg', NULL, 1, 14, 1),
(47, 'Image', '2015-03-12 12:17:17', '2015-03-12 12:17:17', 'mock_file_9.jpeg', 'mock_file_9.jpeg', 'assets/mock-files/mock_file_9.jpeg', NULL, 1, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Group`
--

CREATE TABLE `Group` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Group') DEFAULT 'Group',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `Code` varchar(255) DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Group`
--

INSERT INTO `Group` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'Group', '2015-03-11 00:37:52', '2015-03-11 00:37:52', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'Group', '2015-03-11 00:37:52', '2015-03-11 00:37:52', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Members`
--

CREATE TABLE `Group_Members` (
`ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Group_Members`
--

INSERT INTO `Group_Members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Roles`
--

CREATE TABLE `Group_Roles` (
`ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `LoginAttempt`
--

CREATE TABLE `LoginAttempt` (
`ID` int(11) NOT NULL,
  `ClassName` enum('LoginAttempt') DEFAULT 'LoginAttempt',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Status` enum('Success','Failure') DEFAULT 'Success',
  `IP` varchar(255) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

CREATE TABLE `Member` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Member') DEFAULT 'Member',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `TempIDHash` varchar(160) DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `RememberLoginToken` varchar(160) DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) DEFAULT NULL,
  `TimeFormat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`ID`, `ClassName`, `Created`, `LastEdited`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`) VALUES
(1, 'Member', '2015-03-11 00:37:52', '2015-03-11 00:37:52', 'Default Admin', NULL, 'root', NULL, NULL, NULL, NULL, 0, '2015-03-12 12:25:46', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `MemberPassword`
--

CREATE TABLE `MemberPassword` (
`ID` int(11) NOT NULL,
  `ClassName` enum('MemberPassword') DEFAULT 'MemberPassword',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Permission`
--

CREATE TABLE `Permission` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Permission') DEFAULT 'Permission',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Permission`
--

INSERT INTO `Permission` (`ID`, `ClassName`, `Created`, `LastEdited`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'Permission', '2015-03-11 00:37:52', '2015-03-11 00:37:52', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'Permission', '2015-03-11 00:37:52', '2015-03-11 00:37:52', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'Permission', '2015-03-11 00:37:52', '2015-03-11 00:37:52', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'Permission', '2015-03-11 00:37:52', '2015-03-11 00:37:52', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'Permission', '2015-03-11 00:37:52', '2015-03-11 00:37:52', 'ADMIN', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRole`
--

CREATE TABLE `PermissionRole` (
`ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRole') DEFAULT 'PermissionRole',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRoleCode`
--

CREATE TABLE `PermissionRoleCode` (
`ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRoleCode') DEFAULT 'PermissionRoleCode',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Property`
--

CREATE TABLE `Property` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Property') DEFAULT 'Property',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `PricePerNight` decimal(9,2) NOT NULL DEFAULT '0.00',
  `Bedrooms` int(11) NOT NULL DEFAULT '0',
  `Bathrooms` int(11) NOT NULL DEFAULT '0',
  `FeaturedOnHomepage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `RegionID` int(11) NOT NULL DEFAULT '0',
  `PrimaryPhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `Property`
--

INSERT INTO `Property` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `PricePerNight`, `Bedrooms`, `Bathrooms`, `FeaturedOnHomepage`, `RegionID`, `PrimaryPhotoID`) VALUES
(1, 'Property', '2015-03-12 00:17:17', '2015-03-12 00:20:33', 'Maxime qui animi.', 990.00, 6, 2, 1, 3, 41),
(2, 'Property', '2015-03-12 00:17:17', '2015-03-12 00:20:41', 'Dolores ducimus officia qui quo.', 910.00, 4, 2, 1, 1, 39),
(3, 'Property', '2015-03-12 00:17:17', '2015-03-12 00:17:17', 'Nemo laudantium iure iste.', 120.00, 2, 2, 0, 3, 42),
(4, 'Property', '2015-03-12 00:17:17', '2015-03-12 00:17:17', 'Eligendi possimus rerum reprehenderit eius et nisi', 980.00, 8, 5, 0, 3, 32),
(5, 'Property', '2015-03-12 00:17:17', '2015-03-12 00:21:31', 'Possimus et eum ut quos.', 910.00, 4, 9, 1, 2, 22),
(6, 'Property', '2015-03-12 00:17:17', '2015-03-12 00:17:17', 'Laboriosam molestias excepturi.', 830.00, 6, 4, 0, 2, 46),
(7, 'Property', '2015-03-12 00:17:17', '2015-03-12 00:20:51', 'Neque vitae eos in.', 840.00, 7, 1, 1, 3, 45),
(8, 'Property', '2015-03-12 00:17:17', '2015-03-12 00:17:17', 'Expedita ea ipsum saepe.', 530.00, 8, 3, 0, 4, 21),
(9, 'Property', '2015-03-12 00:17:17', '2015-03-12 00:17:17', 'Id aut perspiciatis et.', 150.00, 2, 2, 0, 4, 31),
(10, 'Property', '2015-03-12 00:17:17', '2015-03-12 00:17:17', 'Est quibusdam magnam quis sint sint.', 230.00, 1, 9, 0, 3, 31),
(11, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:21:24', 'Voluptatem porro quia veniam.', 250.00, 7, 4, 1, 2, 31),
(12, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Voluptatem saepe ea magni.', 650.00, 7, 2, 0, 1, 36),
(13, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Quisquam saepe.', 830.00, 4, 6, 0, 2, 34),
(14, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Et quas adipisci.', 460.00, 9, 6, 0, 3, 39),
(15, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Sit aut voluptas est.', 90.00, 4, 3, 0, 3, 41),
(16, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Ipsa placeat dolor possimus eos eum.', 80.00, 3, 5, 0, 4, 33),
(17, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Esse occaecati ducimus.', 710.00, 9, 8, 0, 4, 47),
(18, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Pariatur et minima quaerat cum.', 340.00, 2, 6, 0, 1, 31),
(19, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Quia ullam cumque rem id autem.', 890.00, 7, 3, 0, 2, 16),
(20, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Occaecati ut non magni.', 390.00, 4, 7, 0, 4, 32),
(21, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Voluptatum id sequi culpa.', 190.00, 6, 7, 0, 3, 39),
(22, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Corporis et saepe quaerat animi nihil.', 790.00, 1, 6, 0, 1, 26),
(23, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Expedita sed quaerat vel sunt facere.', 370.00, 2, 7, 0, 2, 38),
(24, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Reiciendis ducimus fugit voluptas laudantium quisq', 670.00, 9, 9, 0, 1, 17),
(25, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Nihil eos consequuntur quos.', 500.00, 1, 5, 0, 1, 27),
(26, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:21:37', 'Debitis voluptates.', 620.00, 4, 6, 1, 4, 16),
(27, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'At laudantium cupiditate libero quis.', 80.00, 8, 6, 0, 4, 44),
(28, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Sed illo eius dolor.', 460.00, 1, 1, 0, 4, 32),
(29, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'In ex quam hic.', 550.00, 8, 4, 0, 1, 34),
(30, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Magni quia est deleniti qui.', 360.00, 9, 8, 0, 1, 47),
(31, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Voluptates assumenda placeat qui.', 530.00, 3, 8, 0, 3, 42),
(32, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Dolorem harum quo deleniti.', 870.00, 3, 7, 0, 3, 41),
(33, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Illum consequatur.', 100.00, 8, 4, 0, 2, 40),
(34, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Et et non.', 830.00, 3, 7, 0, 3, 33),
(35, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Dolores nulla animi maiores enim minus.', 340.00, 7, 4, 0, 1, 32),
(36, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Quo ut suscipit nostrum dolor.', 750.00, 7, 6, 0, 1, 39),
(37, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Recusandae eveniet temporibus aut.', 590.00, 7, 1, 0, 2, 43),
(38, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Deserunt reiciendis nemo soluta.', 330.00, 5, 6, 0, 2, 34),
(39, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Dolorem velit tenetur enim eius quia.', 510.00, 3, 8, 0, 1, 26),
(40, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Id ad dicta ducimus.', 80.00, 9, 3, 0, 4, 22),
(41, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Saepe autem architecto quo.', 40.00, 6, 9, 0, 1, 42),
(42, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Velit non nostrum commodi.', 830.00, 3, 9, 0, 3, 40),
(43, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Mollitia ut consequuntur eaque.', 390.00, 4, 9, 0, 2, 21),
(44, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Officia animi dicta et ea dolores facilis.', 90.00, 5, 8, 0, 1, 43),
(45, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Quibusdam qui distinctio maxime nemo illum odio.', 370.00, 1, 4, 0, 3, 27),
(46, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Voluptatem asperiores cumque.', 180.00, 9, 3, 0, 2, 38),
(47, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Voluptas voluptatem voluptatem omnis explicabo odi', 680.00, 6, 2, 0, 1, 46),
(48, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Esse et aut.', 0.00, 1, 9, 0, 1, 21),
(49, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Voluptatum iste ipsam ea.', 390.00, 7, 4, 0, 4, 18),
(50, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Voluptate doloribus totam maxime.', 410.00, 3, 3, 0, 1, 16),
(51, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Similique iure.', 530.00, 4, 8, 0, 1, 32),
(52, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Autem et recusandae qui.', 390.00, 2, 7, 0, 1, 22),
(53, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Non ipsum deleniti.', 440.00, 4, 8, 0, 3, 30),
(54, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Adipisci odio et vel iure.', 710.00, 6, 3, 0, 1, 37),
(55, 'Property', '2015-03-12 00:17:36', '2015-03-12 00:17:36', 'Non sit beatae.', 340.00, 7, 7, 0, 4, 33),
(56, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Deserunt aut magni nemo.', 780.00, 1, 8, 0, 1, 31),
(57, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Sit soluta ipsum qui.', 500.00, 9, 1, 0, 3, 39),
(58, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Ratione id facere rerum cumque.', 700.00, 4, 6, 0, 4, 45),
(59, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Aliquid possimus ut deserunt.', 10.00, 3, 1, 0, 2, 21),
(60, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Aut beatae aut.', 150.00, 4, 5, 0, 4, 27),
(61, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Aut aut ut aut.', 700.00, 1, 2, 0, 4, 44),
(62, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'At et veritatis qui.', 750.00, 8, 6, 0, 3, 29),
(63, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Eligendi et tempore in qui consectetur.', 830.00, 2, 2, 0, 2, 38),
(64, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Quia quasi quia alias.', 750.00, 5, 3, 0, 1, 45),
(65, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Qui qui cupiditate.', 400.00, 7, 1, 0, 3, 24),
(66, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Praesentium hic aliquid itaque.', 1000.00, 1, 1, 0, 2, 36),
(67, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Rerum et iusto.', 660.00, 2, 4, 0, 1, 16),
(68, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Voluptas beatae sit.', 30.00, 7, 5, 0, 2, 16),
(69, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Qui voluptas consequatur fugit perferendis ea.', 230.00, 9, 4, 0, 1, 22),
(70, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Repellat laboriosam maiores illo.', 180.00, 8, 7, 0, 4, 44),
(71, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Hic autem quidem.', 880.00, 4, 2, 0, 1, 25),
(72, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Non omnis repellendus nam laborum.', 150.00, 5, 7, 0, 1, 30),
(73, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Necessitatibus doloribus ut et.', 350.00, 1, 9, 0, 1, 15),
(74, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Quidem quia aliquid et aut.', 710.00, 8, 6, 0, 4, 16),
(75, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Quos sit et hic.', 480.00, 9, 2, 0, 1, 38),
(76, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Tempora quo in dolor.', 630.00, 3, 3, 0, 1, 46),
(77, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Quo autem sed quis voluptas.', 940.00, 6, 7, 0, 2, 38),
(78, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Unde at libero impedit rerum.', 780.00, 3, 7, 0, 4, 39),
(79, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Id labore cupiditate assumenda.', 260.00, 3, 7, 0, 2, 33),
(80, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Fuga doloribus suscipit nobis rerum.', 630.00, 7, 3, 0, 2, 43),
(81, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Consequuntur dolorem.', 290.00, 6, 3, 0, 3, 28),
(82, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Dicta qui voluptatem ut atque ut eveniet.', 290.00, 3, 5, 0, 2, 31),
(83, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Eum ab consequuntur dolore.', 630.00, 2, 7, 0, 2, 45),
(84, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Et earum dicta repellat voluptatem repellat.', 40.00, 1, 8, 0, 1, 20),
(85, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Atque necessitatibus error voluptatem.', 400.00, 9, 4, 0, 1, 33),
(86, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Enim voluptatem in necessitatibus.', 720.00, 4, 2, 0, 1, 24),
(87, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Sint ipsam error sed occaecati.', 360.00, 3, 7, 0, 1, 46),
(88, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Ipsam dolorum quo.', 550.00, 3, 1, 0, 3, 18),
(89, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Velit delectus possimus vel consequatur qui.', 720.00, 5, 3, 0, 2, 36),
(90, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Eveniet ut voluptatem.', 250.00, 8, 3, 0, 3, 21),
(91, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Placeat omnis expedita est.', 650.00, 6, 6, 0, 1, 29),
(92, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Recusandae cupiditate.', 60.00, 3, 1, 0, 3, 27),
(93, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Commodi itaque omnis aut.', 580.00, 8, 6, 0, 3, 24),
(94, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Enim provident quia modi sunt.', 220.00, 4, 8, 0, 4, 39),
(95, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Velit sed tempora molestias.', 80.00, 5, 2, 0, 2, 17),
(96, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Temporibus occaecati aut sed labore labore dolorem', 860.00, 2, 3, 0, 1, 40),
(97, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Facere adipisci.', 410.00, 2, 3, 0, 1, 21),
(98, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Explicabo officia voluptates sapiente.', 110.00, 7, 2, 0, 4, 40),
(99, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Aut sed.', 950.00, 8, 9, 0, 4, 41),
(100, 'Property', '2015-03-12 00:17:37', '2015-03-12 00:17:37', 'Et vero.', 930.00, 9, 4, 0, 2, 35);

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage`
--

CREATE TABLE `RedirectorPage` (
`ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_Live`
--

CREATE TABLE `RedirectorPage_Live` (
`ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_versions`
--

CREATE TABLE `RedirectorPage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Region`
--

CREATE TABLE `Region` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Region') DEFAULT 'Region',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Description` mediumtext,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `RegionsPageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Region`
--

INSERT INTO `Region` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Description`, `PhotoID`, `RegionsPageID`) VALUES
(1, 'Region', '2015-03-12 00:03:44', '2015-03-12 00:03:44', 'The Northeast', 'Vivamus commodo venenatis mi, quis efficitur ante semper eu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus placerat suscipit metus.', 10, 8),
(2, 'Region', '2015-03-12 00:04:20', '2015-03-12 00:04:20', 'The Southeast', 'Nam mattis lacus quam, sed tristique nulla accumsan fermentum. Sed sapien sapien, vehicula et libero sit amet, maximus ullamcorper augue. Sed accumsan ante tellus, a elementum enim pharetra nec.', 11, 8),
(3, 'Region', '2015-03-12 00:04:47', '2015-03-12 00:04:47', 'The Northwest', 'Praesent consectetur nisl nibh, in sagittis quam tempor non. Praesent convallis massa quis turpis vulputate feugiat.', 12, 8),
(4, 'Region', '2015-03-12 00:05:14', '2015-03-12 00:05:14', 'The Southwest', 'Nullam et commodo erat. Suspendisse id nisi quis enim bibendum sagittis at nec sapien. Fusce auctor, augue sed efficitur auctor, purus justo tincidunt magna, auctor sodales eros eros quis nunc.', 13, 8);

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig`
--

CREATE TABLE `SiteConfig` (
`ID` int(11) NOT NULL,
  `ClassName` enum('SiteConfig') DEFAULT 'SiteConfig',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Tagline` varchar(255) DEFAULT NULL,
  `Theme` varchar(255) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `FacebookLink` varchar(50) DEFAULT NULL,
  `TwitterLink` varchar(50) DEFAULT NULL,
  `GoogleLink` varchar(50) DEFAULT NULL,
  `YouTubeLink` varchar(50) DEFAULT NULL,
  `FooterContent` mediumtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `SiteConfig`
--

INSERT INTO `SiteConfig` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`, `FacebookLink`, `TwitterLink`, `GoogleLink`, `YouTubeLink`, `FooterContent`) VALUES
(1, 'SiteConfig', '2015-03-11 00:37:52', '2015-03-12 00:25:46', 'One Ring Rentals', NULL, 'one-ring', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.google.com', 'http://www.youtube.com', 'Sed enim sem, efficitur a ante finibus, iaculis pretium lacus. Quisque odio felis, consequat eu metus id, vestibulum posuere quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.');

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_CreateTopLevelGroups`
--

CREATE TABLE `SiteConfig_CreateTopLevelGroups` (
`ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_EditorGroups`
--

CREATE TABLE `SiteConfig_EditorGroups` (
`ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_ViewerGroups`
--

CREATE TABLE `SiteConfig_ViewerGroups` (
`ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree`
--

CREATE TABLE `SiteTree` (
`ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','ArticleHolder','ArticlePage','HomePage','RegionsPage','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `SiteTree`
--

INSERT INTO `SiteTree` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'HomePage', '2015-03-11 00:37:52', '2015-03-11 00:47:31', 'home', 'Home', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(2, 'Page', '2015-03-11 00:37:53', '2015-03-11 00:37:53', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(4, 'ErrorPage', '2015-03-11 00:37:53', '2015-03-11 00:37:53', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2015-03-11 00:37:53', '2015-03-11 00:37:53', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 9, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'Page', '2015-03-11 00:38:58', '2015-03-12 00:05:29', 'find-a-rental', 'Find a Rental', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(7, 'Page', '2015-03-11 00:39:21', '2015-03-12 00:05:33', 'list-your-rental', 'List Your Rental', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(8, 'RegionsPage', '2015-03-11 00:39:41', '2015-03-11 00:40:15', 'regions', 'Regions', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0),
(9, 'ArticleHolder', '2015-03-11 00:40:25', '2015-03-11 00:42:44', 'travel-guides', 'Travel Guides', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(10, 'ArticlePage', '2015-03-11 00:42:48', '2015-03-11 00:44:29', 'sample-article-1', 'Sample Article 1', NULL, '<p>Praesent porttitor augue gravida porttitor ultricies. Donec accumsan accumsan ligula eget luctus. Donec finibus fermentum rhoncus. Phasellus commodo urna eu augue porta sollicitudin. Nunc porttitor condimentum nisi ac efficitur. Pellentesque quis est auctor libero elementum malesuada. Cras quis augue tempus, pretium turpis non, egestas velit. Mauris pellentesque cursus enim a consectetur. Duis ac lacus sit amet neque rutrum aliquet ac in nunc. Quisque euismod vestibulum ipsum. Suspendisse tincidunt ultrices vulputate. In hac habitasse platea dictumst. Suspendisse gravida nunc quis eros ultrices pretium. Phasellus sit amet dictum mauris. Aliquam vehicula nulla vitae hendrerit consequat. Duis ligula ex, elementum sed volutpat at, laoreet sit amet lectus.</p>\n<p>Praesent sodales, elit vitae efficitur rhoncus, tortor quam hendrerit quam, nec lacinia ligula felis et nibh. Sed vulputate dui id lacus placerat tincidunt. Morbi vestibulum tincidunt dignissim. Suspendisse ac sem velit. Phasellus non gravida tellus. Donec ac rhoncus nisl. Nam non dignissim erat. Aliquam faucibus nulla urna, ut scelerisque magna semper at. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla eu est vel nisi viverra dignissim. Vestibulum tempor in odio vel interdum. Aliquam nec velit ac nisl egestas aliquet. Morbi eleifend, urna vel porttitor posuere, neque elit vehicula est, id tempor est massa at ante. Ut eu maximus lacus, congue tristique mauris. Aliquam purus dui, luctus sed hendrerit ut, venenatis eu libero. Curabitur sed quam elementum, cursus urna quis, imperdiet ante.</p>\n<p>Duis quis neque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam cursus aliquam lorem, eget pellentesque metus fermentum eu. Mauris sit amet fringilla odio. Nunc ut egestas dolor, ut consequat dolor. Curabitur imperdiet ipsum imperdiet enim eleifend, vitae pulvinar dui dapibus. Pellentesque purus ipsum, feugiat sit amet iaculis at, elementum eu arcu. Vivamus a lectus ac nisi molestie fermentum porttitor quis turpis. Vestibulum eget eros eu dui consectetur malesuada ac eu libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam non sem id ipsum mattis ornare. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras volutpat auctor risus, in laoreet elit ullamcorper eget. Nunc dui risus, commodo vel placerat ut, euismod at dui.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 9),
(11, 'ArticlePage', '2015-03-11 00:44:35', '2015-03-11 00:45:49', 'sample-article-2', 'Sample Article 2', NULL, '<p>Praesent sodales, elit vitae efficitur rhoncus, tortor quam hendrerit quam, nec lacinia ligula felis et nibh. Sed vulputate dui id lacus placerat tincidunt. Morbi vestibulum tincidunt dignissim. Suspendisse ac sem velit. Phasellus non gravida tellus. Donec ac rhoncus nisl. Nam non dignissim erat. Aliquam faucibus nulla urna, ut scelerisque magna semper at. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla eu est vel nisi viverra dignissim. Vestibulum tempor in odio vel interdum. Aliquam nec velit ac nisl egestas aliquet. Morbi eleifend, urna vel porttitor posuere, neque elit vehicula est, id tempor est massa at ante. Ut eu maximus lacus, congue tristique mauris. Aliquam purus dui, luctus sed hendrerit ut, venenatis eu libero. Curabitur sed quam elementum, cursus urna quis, imperdiet ante.</p>\n<p>Duis quis neque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam cursus aliquam lorem, eget pellentesque metus fermentum eu. Mauris sit amet fringilla odio. Nunc ut egestas dolor, ut consequat dolor. Curabitur imperdiet ipsum imperdiet enim eleifend, vitae pulvinar dui dapibus. Pellentesque purus ipsum, feugiat sit amet iaculis at, elementum eu arcu. Vivamus a lectus ac nisi molestie fermentum porttitor quis turpis. Vestibulum eget eros eu dui consectetur malesuada ac eu libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam non sem id ipsum mattis ornare. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras volutpat auctor risus, in laoreet elit ullamcorper eget. Nunc dui risus, commodo vel placerat ut, euismod at dui.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 9),
(12, 'ArticlePage', '2015-03-11 00:45:53', '2015-03-11 00:46:44', 'sample-article-3', 'Sample Article 3', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent at diam porttitor, euismod sem ac, scelerisque felis. In id felis lorem. Nunc a accumsan justo. Etiam ut nibh at est laoreet dignissim at ut justo. Quisque ipsum nisi, tempor dapibus luctus eu, efficitur luctus nisi. In maximus vehicula dolor. Nunc ultrices nibh a efficitur pellentesque. Duis ut euismod eros. Mauris eu ipsum augue.</p>\n<p>Praesent porttitor augue gravida porttitor ultricies. Donec accumsan accumsan ligula eget luctus. Donec finibus fermentum rhoncus. Phasellus commodo urna eu augue porta sollicitudin. Nunc porttitor condimentum nisi ac efficitur. Pellentesque quis est auctor libero elementum malesuada. Cras quis augue tempus, pretium turpis non, egestas velit. Mauris pellentesque cursus enim a consectetur. Duis ac lacus sit amet neque rutrum aliquet ac in nunc. Quisque euismod vestibulum ipsum. Suspendisse tincidunt ultrices vulputate. In hac habitasse platea dictumst. Suspendisse gravida nunc quis eros ultrices pretium. Phasellus sit amet dictum mauris. Aliquam vehicula nulla vitae hendrerit consequat. Duis ligula ex, elementum sed volutpat at, laoreet sit amet lectus.</p>\n<p> </p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_EditorGroups`
--

CREATE TABLE `SiteTree_EditorGroups` (
`ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ImageTracking`
--

CREATE TABLE `SiteTree_ImageTracking` (
`ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_LinkTracking`
--

CREATE TABLE `SiteTree_LinkTracking` (
`ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_Live`
--

CREATE TABLE `SiteTree_Live` (
`ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','ArticleHolder','ArticlePage','HomePage','RegionsPage','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `SiteTree_Live`
--

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'HomePage', '2015-03-11 00:37:52', '2015-03-11 00:47:32', 'home', 'Home', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(2, 'Page', '2015-03-11 00:37:53', '2015-03-11 00:37:53', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(4, 'ErrorPage', '2015-03-11 00:37:53', '2015-03-11 00:37:53', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2015-03-11 00:37:53', '2015-03-11 00:37:53', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 9, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'Page', '2015-03-11 00:38:58', '2015-03-12 00:05:29', 'find-a-rental', 'Find a Rental', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(7, 'Page', '2015-03-11 00:39:21', '2015-03-12 00:05:33', 'list-your-rental', 'List Your Rental', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(8, 'RegionsPage', '2015-03-11 00:39:41', '2015-03-11 00:40:15', 'regions', 'Regions', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0),
(9, 'ArticleHolder', '2015-03-11 00:40:25', '2015-03-11 00:42:44', 'travel-guides', 'Travel Guides', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(10, 'ArticlePage', '2015-03-11 00:42:48', '2015-03-11 00:44:29', 'sample-article-1', 'Sample Article 1', NULL, '<p>Praesent porttitor augue gravida porttitor ultricies. Donec accumsan accumsan ligula eget luctus. Donec finibus fermentum rhoncus. Phasellus commodo urna eu augue porta sollicitudin. Nunc porttitor condimentum nisi ac efficitur. Pellentesque quis est auctor libero elementum malesuada. Cras quis augue tempus, pretium turpis non, egestas velit. Mauris pellentesque cursus enim a consectetur. Duis ac lacus sit amet neque rutrum aliquet ac in nunc. Quisque euismod vestibulum ipsum. Suspendisse tincidunt ultrices vulputate. In hac habitasse platea dictumst. Suspendisse gravida nunc quis eros ultrices pretium. Phasellus sit amet dictum mauris. Aliquam vehicula nulla vitae hendrerit consequat. Duis ligula ex, elementum sed volutpat at, laoreet sit amet lectus.</p>\n<p>Praesent sodales, elit vitae efficitur rhoncus, tortor quam hendrerit quam, nec lacinia ligula felis et nibh. Sed vulputate dui id lacus placerat tincidunt. Morbi vestibulum tincidunt dignissim. Suspendisse ac sem velit. Phasellus non gravida tellus. Donec ac rhoncus nisl. Nam non dignissim erat. Aliquam faucibus nulla urna, ut scelerisque magna semper at. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla eu est vel nisi viverra dignissim. Vestibulum tempor in odio vel interdum. Aliquam nec velit ac nisl egestas aliquet. Morbi eleifend, urna vel porttitor posuere, neque elit vehicula est, id tempor est massa at ante. Ut eu maximus lacus, congue tristique mauris. Aliquam purus dui, luctus sed hendrerit ut, venenatis eu libero. Curabitur sed quam elementum, cursus urna quis, imperdiet ante.</p>\n<p>Duis quis neque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam cursus aliquam lorem, eget pellentesque metus fermentum eu. Mauris sit amet fringilla odio. Nunc ut egestas dolor, ut consequat dolor. Curabitur imperdiet ipsum imperdiet enim eleifend, vitae pulvinar dui dapibus. Pellentesque purus ipsum, feugiat sit amet iaculis at, elementum eu arcu. Vivamus a lectus ac nisi molestie fermentum porttitor quis turpis. Vestibulum eget eros eu dui consectetur malesuada ac eu libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam non sem id ipsum mattis ornare. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras volutpat auctor risus, in laoreet elit ullamcorper eget. Nunc dui risus, commodo vel placerat ut, euismod at dui.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 9),
(11, 'ArticlePage', '2015-03-11 00:44:35', '2015-03-11 00:45:49', 'sample-article-2', 'Sample Article 2', NULL, '<p>Praesent sodales, elit vitae efficitur rhoncus, tortor quam hendrerit quam, nec lacinia ligula felis et nibh. Sed vulputate dui id lacus placerat tincidunt. Morbi vestibulum tincidunt dignissim. Suspendisse ac sem velit. Phasellus non gravida tellus. Donec ac rhoncus nisl. Nam non dignissim erat. Aliquam faucibus nulla urna, ut scelerisque magna semper at. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla eu est vel nisi viverra dignissim. Vestibulum tempor in odio vel interdum. Aliquam nec velit ac nisl egestas aliquet. Morbi eleifend, urna vel porttitor posuere, neque elit vehicula est, id tempor est massa at ante. Ut eu maximus lacus, congue tristique mauris. Aliquam purus dui, luctus sed hendrerit ut, venenatis eu libero. Curabitur sed quam elementum, cursus urna quis, imperdiet ante.</p>\n<p>Duis quis neque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam cursus aliquam lorem, eget pellentesque metus fermentum eu. Mauris sit amet fringilla odio. Nunc ut egestas dolor, ut consequat dolor. Curabitur imperdiet ipsum imperdiet enim eleifend, vitae pulvinar dui dapibus. Pellentesque purus ipsum, feugiat sit amet iaculis at, elementum eu arcu. Vivamus a lectus ac nisi molestie fermentum porttitor quis turpis. Vestibulum eget eros eu dui consectetur malesuada ac eu libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam non sem id ipsum mattis ornare. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras volutpat auctor risus, in laoreet elit ullamcorper eget. Nunc dui risus, commodo vel placerat ut, euismod at dui.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 9),
(12, 'ArticlePage', '2015-03-11 00:45:53', '2015-03-11 00:46:44', 'sample-article-3', 'Sample Article 3', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent at diam porttitor, euismod sem ac, scelerisque felis. In id felis lorem. Nunc a accumsan justo. Etiam ut nibh at est laoreet dignissim at ut justo. Quisque ipsum nisi, tempor dapibus luctus eu, efficitur luctus nisi. In maximus vehicula dolor. Nunc ultrices nibh a efficitur pellentesque. Duis ut euismod eros. Mauris eu ipsum augue.</p>\n<p>Praesent porttitor augue gravida porttitor ultricies. Donec accumsan accumsan ligula eget luctus. Donec finibus fermentum rhoncus. Phasellus commodo urna eu augue porta sollicitudin. Nunc porttitor condimentum nisi ac efficitur. Pellentesque quis est auctor libero elementum malesuada. Cras quis augue tempus, pretium turpis non, egestas velit. Mauris pellentesque cursus enim a consectetur. Duis ac lacus sit amet neque rutrum aliquet ac in nunc. Quisque euismod vestibulum ipsum. Suspendisse tincidunt ultrices vulputate. In hac habitasse platea dictumst. Suspendisse gravida nunc quis eros ultrices pretium. Phasellus sit amet dictum mauris. Aliquam vehicula nulla vitae hendrerit consequat. Duis ligula ex, elementum sed volutpat at, laoreet sit amet lectus.</p>\n<p> </p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_versions`
--

CREATE TABLE `SiteTree_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','ArticleHolder','ArticlePage','HomePage','RegionsPage','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `SiteTree_versions`
--

INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(1, 1, 1, 1, 1, 1, 'Page', '2015-03-11 00:37:52', '2015-03-11 00:37:52', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>. You can now access the <a href="http://doc.silverstripe.org">developer documentation</a>, or begin <a href="http://doc.silverstripe.org/doku.php?id=tutorials">the tutorials.</a></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2, 2, 1, 1, 1, 1, 'Page', '2015-03-11 00:37:53', '2015-03-11 00:37:53', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(3, 3, 1, 1, 1, 1, 'Page', '2015-03-11 00:37:53', '2015-03-11 00:37:53', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(4, 4, 1, 1, 1, 1, 'ErrorPage', '2015-03-11 00:37:53', '2015-03-11 00:37:53', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(5, 5, 1, 1, 1, 1, 'ErrorPage', '2015-03-11 00:37:53', '2015-03-11 00:37:53', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(6, 1, 2, 1, 1, 1, 'HomePage', '2015-03-11 00:37:52', '2015-03-11 00:38:46', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>. You can now access the <a href="http://doc.silverstripe.org">developer documentation</a>, or begin <a href="http://doc.silverstripe.org/doku.php?id=tutorials">the tutorials.</a></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(7, 6, 1, 0, 1, 0, 'Page', '2015-03-11 00:38:58', '2015-03-11 00:38:58', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(8, 6, 2, 1, 1, 1, 'Page', '2015-03-11 00:38:58', '2015-03-11 00:39:06', 'find-a-rental', 'Find a Rental', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(9, 6, 3, 1, 1, 1, 'Page', '2015-03-11 00:38:58', '2015-03-11 00:39:10', 'find-a-rental', 'Find a Rental', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(10, 7, 1, 0, 1, 0, 'Page', '2015-03-11 00:39:21', '2015-03-11 00:39:21', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(11, 7, 2, 1, 1, 1, 'Page', '2015-03-11 00:39:21', '2015-03-11 00:39:29', 'list-your-rental', 'List Your Rental', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(12, 7, 3, 1, 1, 1, 'Page', '2015-03-11 00:39:21', '2015-03-11 00:39:33', 'list-your-rental', 'List Your Rental', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(13, 8, 1, 0, 1, 0, 'RegionsPage', '2015-03-11 00:39:41', '2015-03-11 00:39:41', 'new-regions-page', 'New Regions Page', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(14, 8, 2, 1, 1, 1, 'RegionsPage', '2015-03-11 00:39:41', '2015-03-11 00:39:48', 'regions-page', 'Regions Page', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(15, 8, 3, 0, 1, 0, 'RegionsPage', '2015-03-11 00:39:41', '2015-03-11 00:39:52', 'regions-page', 'Regions Page', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(16, 8, 4, 1, 1, 1, 'RegionsPage', '2015-03-11 00:39:41', '2015-03-11 00:40:01', 'regions-page', 'Regions', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(17, 8, 5, 1, 1, 1, 'RegionsPage', '2015-03-11 00:39:41', '2015-03-11 00:40:15', 'regions', 'Regions', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(18, 9, 1, 0, 1, 0, 'ArticleHolder', '2015-03-11 00:40:25', '2015-03-11 00:40:25', 'new-article-holder', 'New Article Holder', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(19, 9, 2, 1, 1, 1, 'ArticleHolder', '2015-03-11 00:40:25', '2015-03-11 00:40:39', 'travel-guides', 'Travel Guides', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(20, 9, 3, 1, 1, 1, 'ArticleHolder', '2015-03-11 00:40:25', '2015-03-11 00:40:43', 'travel-guides', 'Travel Guides', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(21, 10, 1, 0, 1, 0, 'ArticlePage', '2015-03-11 00:42:48', '2015-03-11 00:42:48', 'new-article-page', 'New Article Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(22, 10, 2, 1, 1, 1, 'ArticlePage', '2015-03-11 00:42:48', '2015-03-11 00:44:29', 'sample-article-1', 'Sample Article 1', NULL, '<p>Praesent porttitor augue gravida porttitor ultricies. Donec accumsan accumsan ligula eget luctus. Donec finibus fermentum rhoncus. Phasellus commodo urna eu augue porta sollicitudin. Nunc porttitor condimentum nisi ac efficitur. Pellentesque quis est auctor libero elementum malesuada. Cras quis augue tempus, pretium turpis non, egestas velit. Mauris pellentesque cursus enim a consectetur. Duis ac lacus sit amet neque rutrum aliquet ac in nunc. Quisque euismod vestibulum ipsum. Suspendisse tincidunt ultrices vulputate. In hac habitasse platea dictumst. Suspendisse gravida nunc quis eros ultrices pretium. Phasellus sit amet dictum mauris. Aliquam vehicula nulla vitae hendrerit consequat. Duis ligula ex, elementum sed volutpat at, laoreet sit amet lectus.</p>\n<p>Praesent sodales, elit vitae efficitur rhoncus, tortor quam hendrerit quam, nec lacinia ligula felis et nibh. Sed vulputate dui id lacus placerat tincidunt. Morbi vestibulum tincidunt dignissim. Suspendisse ac sem velit. Phasellus non gravida tellus. Donec ac rhoncus nisl. Nam non dignissim erat. Aliquam faucibus nulla urna, ut scelerisque magna semper at. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla eu est vel nisi viverra dignissim. Vestibulum tempor in odio vel interdum. Aliquam nec velit ac nisl egestas aliquet. Morbi eleifend, urna vel porttitor posuere, neque elit vehicula est, id tempor est massa at ante. Ut eu maximus lacus, congue tristique mauris. Aliquam purus dui, luctus sed hendrerit ut, venenatis eu libero. Curabitur sed quam elementum, cursus urna quis, imperdiet ante.</p>\n<p>Duis quis neque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam cursus aliquam lorem, eget pellentesque metus fermentum eu. Mauris sit amet fringilla odio. Nunc ut egestas dolor, ut consequat dolor. Curabitur imperdiet ipsum imperdiet enim eleifend, vitae pulvinar dui dapibus. Pellentesque purus ipsum, feugiat sit amet iaculis at, elementum eu arcu. Vivamus a lectus ac nisi molestie fermentum porttitor quis turpis. Vestibulum eget eros eu dui consectetur malesuada ac eu libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam non sem id ipsum mattis ornare. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras volutpat auctor risus, in laoreet elit ullamcorper eget. Nunc dui risus, commodo vel placerat ut, euismod at dui.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(23, 11, 1, 0, 1, 0, 'ArticlePage', '2015-03-11 00:44:35', '2015-03-11 00:44:35', 'new-article-page', 'New Article Page', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(24, 11, 2, 1, 1, 1, 'ArticlePage', '2015-03-11 00:44:35', '2015-03-11 00:45:49', 'sample-article-2', 'Sample Article 2', NULL, '<p>Praesent sodales, elit vitae efficitur rhoncus, tortor quam hendrerit quam, nec lacinia ligula felis et nibh. Sed vulputate dui id lacus placerat tincidunt. Morbi vestibulum tincidunt dignissim. Suspendisse ac sem velit. Phasellus non gravida tellus. Donec ac rhoncus nisl. Nam non dignissim erat. Aliquam faucibus nulla urna, ut scelerisque magna semper at. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla eu est vel nisi viverra dignissim. Vestibulum tempor in odio vel interdum. Aliquam nec velit ac nisl egestas aliquet. Morbi eleifend, urna vel porttitor posuere, neque elit vehicula est, id tempor est massa at ante. Ut eu maximus lacus, congue tristique mauris. Aliquam purus dui, luctus sed hendrerit ut, venenatis eu libero. Curabitur sed quam elementum, cursus urna quis, imperdiet ante.</p>\n<p>Duis quis neque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam cursus aliquam lorem, eget pellentesque metus fermentum eu. Mauris sit amet fringilla odio. Nunc ut egestas dolor, ut consequat dolor. Curabitur imperdiet ipsum imperdiet enim eleifend, vitae pulvinar dui dapibus. Pellentesque purus ipsum, feugiat sit amet iaculis at, elementum eu arcu. Vivamus a lectus ac nisi molestie fermentum porttitor quis turpis. Vestibulum eget eros eu dui consectetur malesuada ac eu libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam non sem id ipsum mattis ornare. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras volutpat auctor risus, in laoreet elit ullamcorper eget. Nunc dui risus, commodo vel placerat ut, euismod at dui.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(25, 12, 1, 0, 1, 0, 'ArticlePage', '2015-03-11 00:45:53', '2015-03-11 00:45:53', 'new-article-page', 'New Article Page', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(26, 12, 2, 1, 1, 1, 'ArticlePage', '2015-03-11 00:45:53', '2015-03-11 00:46:44', 'sample-article-3', 'Sample Article 3', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent at diam porttitor, euismod sem ac, scelerisque felis. In id felis lorem. Nunc a accumsan justo. Etiam ut nibh at est laoreet dignissim at ut justo. Quisque ipsum nisi, tempor dapibus luctus eu, efficitur luctus nisi. In maximus vehicula dolor. Nunc ultrices nibh a efficitur pellentesque. Duis ut euismod eros. Mauris eu ipsum augue.</p>\n<p>Praesent porttitor augue gravida porttitor ultricies. Donec accumsan accumsan ligula eget luctus. Donec finibus fermentum rhoncus. Phasellus commodo urna eu augue porta sollicitudin. Nunc porttitor condimentum nisi ac efficitur. Pellentesque quis est auctor libero elementum malesuada. Cras quis augue tempus, pretium turpis non, egestas velit. Mauris pellentesque cursus enim a consectetur. Duis ac lacus sit amet neque rutrum aliquet ac in nunc. Quisque euismod vestibulum ipsum. Suspendisse tincidunt ultrices vulputate. In hac habitasse platea dictumst. Suspendisse gravida nunc quis eros ultrices pretium. Phasellus sit amet dictum mauris. Aliquam vehicula nulla vitae hendrerit consequat. Duis ligula ex, elementum sed volutpat at, laoreet sit amet lectus.</p>\n<p> </p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 9),
(27, 1, 3, 1, 1, 1, 'HomePage', '2015-03-11 00:37:52', '2015-03-11 00:47:31', 'home', 'Home', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ViewerGroups`
--

CREATE TABLE `SiteTree_ViewerGroups` (
`ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage`
--

CREATE TABLE `VirtualPage` (
`ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_Live`
--

CREATE TABLE `VirtualPage_Live` (
`ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_versions`
--

CREATE TABLE `VirtualPage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ArticleCategory`
--
ALTER TABLE `ArticleCategory`
 ADD PRIMARY KEY (`ID`), ADD KEY `ArticleHolderID` (`ArticleHolderID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `ArticleComment`
--
ALTER TABLE `ArticleComment`
 ADD PRIMARY KEY (`ID`), ADD KEY `ArticlePageID` (`ArticlePageID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `ArticlePage`
--
ALTER TABLE `ArticlePage`
 ADD PRIMARY KEY (`ID`), ADD KEY `PhotoID` (`PhotoID`), ADD KEY `BrochureID` (`BrochureID`);

--
-- Indexes for table `ArticlePage_Categories`
--
ALTER TABLE `ArticlePage_Categories`
 ADD PRIMARY KEY (`ID`), ADD KEY `ArticlePageID` (`ArticlePageID`), ADD KEY `ArticleCategoryID` (`ArticleCategoryID`);

--
-- Indexes for table `ArticlePage_Live`
--
ALTER TABLE `ArticlePage_Live`
 ADD PRIMARY KEY (`ID`), ADD KEY `PhotoID` (`PhotoID`), ADD KEY `BrochureID` (`BrochureID`);

--
-- Indexes for table `ArticlePage_versions`
--
ALTER TABLE `ArticlePage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `PhotoID` (`PhotoID`), ADD KEY `BrochureID` (`BrochureID`);

--
-- Indexes for table `ErrorPage`
--
ALTER TABLE `ErrorPage`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ErrorPage_versions`
--
ALTER TABLE `ErrorPage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indexes for table `File`
--
ALTER TABLE `File`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `OwnerID` (`OwnerID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Group`
--
ALTER TABLE `Group`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Group_Members`
--
ALTER TABLE `Group_Members`
 ADD PRIMARY KEY (`ID`), ADD KEY `GroupID` (`GroupID`), ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Group_Roles`
--
ALTER TABLE `Group_Roles`
 ADD PRIMARY KEY (`ID`), ADD KEY `GroupID` (`GroupID`), ADD KEY `PermissionRoleID` (`PermissionRoleID`);

--
-- Indexes for table `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
 ADD PRIMARY KEY (`ID`), ADD KEY `MemberID` (`MemberID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Member`
--
ALTER TABLE `Member`
 ADD PRIMARY KEY (`ID`), ADD KEY `Email` (`Email`(255)), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `MemberPassword`
--
ALTER TABLE `MemberPassword`
 ADD PRIMARY KEY (`ID`), ADD KEY `MemberID` (`MemberID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Permission`
--
ALTER TABLE `Permission`
 ADD PRIMARY KEY (`ID`), ADD KEY `GroupID` (`GroupID`), ADD KEY `Code` (`Code`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `PermissionRole`
--
ALTER TABLE `PermissionRole`
 ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
 ADD PRIMARY KEY (`ID`), ADD KEY `RoleID` (`RoleID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Property`
--
ALTER TABLE `Property`
 ADD PRIMARY KEY (`ID`), ADD KEY `RegionID` (`RegionID`), ADD KEY `PrimaryPhotoID` (`PrimaryPhotoID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
 ADD PRIMARY KEY (`ID`), ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
 ADD PRIMARY KEY (`ID`), ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `RedirectorPage_versions`
--
ALTER TABLE `RedirectorPage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `Region`
--
ALTER TABLE `Region`
 ADD PRIMARY KEY (`ID`), ADD KEY `PhotoID` (`PhotoID`), ADD KEY `RegionsPageID` (`RegionsPageID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteConfig`
--
ALTER TABLE `SiteConfig`
 ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteConfigID` (`SiteConfigID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteConfigID` (`SiteConfigID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteConfigID` (`SiteConfigID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteTree`
--
ALTER TABLE `SiteTree`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `URLSegment` (`URLSegment`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteTree_ImageTracking`
--
ALTER TABLE `SiteTree_ImageTracking`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `FileID` (`FileID`);

--
-- Indexes for table `SiteTree_LinkTracking`
--
ALTER TABLE `SiteTree_LinkTracking`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `ChildID` (`ChildID`);

--
-- Indexes for table `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `URLSegment` (`URLSegment`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_versions`
--
ALTER TABLE `SiteTree_versions`
 ADD PRIMARY KEY (`ID`), ADD KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `AuthorID` (`AuthorID`), ADD KEY `PublisherID` (`PublisherID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `URLSegment` (`URLSegment`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `VirtualPage`
--
ALTER TABLE `VirtualPage`
 ADD PRIMARY KEY (`ID`), ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
 ADD PRIMARY KEY (`ID`), ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `VirtualPage_versions`
--
ALTER TABLE `VirtualPage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ArticleCategory`
--
ALTER TABLE `ArticleCategory`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ArticleComment`
--
ALTER TABLE `ArticleComment`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ArticlePage`
--
ALTER TABLE `ArticlePage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ArticlePage_Categories`
--
ALTER TABLE `ArticlePage_Categories`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ArticlePage_Live`
--
ALTER TABLE `ArticlePage_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ArticlePage_versions`
--
ALTER TABLE `ArticlePage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ErrorPage`
--
ALTER TABLE `ErrorPage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ErrorPage_versions`
--
ALTER TABLE `ErrorPage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `File`
--
ALTER TABLE `File`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `Group`
--
ALTER TABLE `Group`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Group_Members`
--
ALTER TABLE `Group_Members`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Group_Roles`
--
ALTER TABLE `Group_Roles`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Member`
--
ALTER TABLE `Member`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `MemberPassword`
--
ALTER TABLE `MemberPassword`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Permission`
--
ALTER TABLE `Permission`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `PermissionRole`
--
ALTER TABLE `PermissionRole`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Property`
--
ALTER TABLE `Property`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `RedirectorPage_versions`
--
ALTER TABLE `RedirectorPage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Region`
--
ALTER TABLE `Region`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `SiteConfig`
--
ALTER TABLE `SiteConfig`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree`
--
ALTER TABLE `SiteTree`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree_ImageTracking`
--
ALTER TABLE `SiteTree_ImageTracking`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree_LinkTracking`
--
ALTER TABLE `SiteTree_LinkTracking`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `SiteTree_versions`
--
ALTER TABLE `SiteTree_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VirtualPage`
--
ALTER TABLE `VirtualPage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VirtualPage_versions`
--
ALTER TABLE `VirtualPage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;