-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 14, 2013 at 01:22 AM
-- Server version: 5.5.34
-- PHP Version: 5.4.21-1+debphp.org~precise+1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT=0;
START TRANSACTION;
SET time_zone = "+00:00";
SET foreign_key_checks = 0;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dcs_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `Affiliate`
--

CREATE TABLE IF NOT EXISTS `Affiliate` (
  `affiliateid` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `createdby` int(11) NOT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedby` int(11) DEFAULT NULL,
  `datemodified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`affiliateid`),
  UNIQUE KEY `name` (`name`),
  KEY `AffiliateFK1` (`createdby`),
  KEY `AffiliateFK2` (`modifiedby`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `Affiliate`
--

INSERT IGNORE INTO `Affiliate` (`affiliateid`, `link`, `name`, `logo`, `status`, `createdby`, `datecreated`, `modifiedby`, `datemodified`) VALUES
(1, 'www.8layertech.com', '8 Layer Technologies', '8Layer-Technologies-Inc-logo.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(2, 'www.accenture.com/ph-en', 'Accenture', 'Accenture_Logo.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(3, 'www.analog.com', 'Analog Devices', 'Analog_devices_logo.png', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(4, 'www.appsource.biz', 'App Source', 'appsource.png', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(5, 'www.aub.com.ph', 'Asia United Bank', 'AUB-Logo.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(6, 'www.azeus.com', 'Azeus', 'Azeus_logo.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(7, 'www.blastasia.com', 'Blast Asia', 'blast asia.png', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(8, 'www.cascadeo.com', 'Cascadeo', 'cascadeo.png', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(9, 'www.chikka.com', 'Chikka', 'chikka.png', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(10, 'www.cambridge.org', 'Cambridge University Press', 'CUP_Colour_logo2.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(11, 'www.emersonprocess.com', 'Emerson Process Management', 'epm_WebSafe.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(12, 'www.factset.com', 'FactSet', 'FactSet.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(13, 'www.gxs.com', 'Global Exchange Services', 'GXS Philippines.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(14, 'www.hp.com', 'HP', 'HP.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(15, 'www.ibm.com', 'IBM', 'imb.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(16, 'www.icannhas.com', 'Icannhas', 'incanhass.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(17, 'www.indigo-entertainment.com', 'Indigo Entertainment', 'indigo.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(18, 'www.indracompany.com', 'Indra', 'Indra_01_pos_RGB.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(19, 'www.innovascend.com', 'Innovascend', 'innovascend.png', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(20, 'www.macquarie.com', 'Macquarie', 'macquarieLogo.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(21, 'www.microsoft.com', 'Microsoft', 'Microsoft.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(22, 'www.mitsubishi-motors.com', 'Mitsubishi', 'mitsubishi_logo.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(23, 'www.mobilemindsinc.com', 'Mobile Minds', 'mobile minds.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(24, 'www.orangeandbronze.com', 'Orange & Bronze', 'O&B-logo.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(25, 'www.pg.com', 'Procter & Gamble', 'P&G.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(26, 'www.petron.com', 'Petron', 'Petron.png', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(27, 'www.pldt.com.ph', 'PLDT', 'pldt-logo1.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(28, 'www.rarejob.com/professional/', 'Rarejob', 'rarejob.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(29, 'www.smart.com.ph', 'Smart Communications', 'smart.png', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(30, 'www.smits.com.ph', 'Smits', 'smits.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(31, 'ph.sykes.com', 'Sykes', 'sykes.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(32, 'www.toyota.com.ph', 'Toyota', 'toyota.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Comment`
--

CREATE TABLE IF NOT EXISTS `Comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT,
  `contentid` int(11) DEFAULT NULL,
  `authorname` varchar(20) DEFAULT NULL,
  `content` text,
  `email` varchar(20) DEFAULT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`commentid`),
  KEY `CommentFK` (`contentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ContentTag`
--

CREATE TABLE IF NOT EXISTS `ContentTag` (
  `contentid` int(11) NOT NULL DEFAULT '0',
  `tagid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contentid`,`tagid`),
  KEY `ContentTagFK2` (`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CorporateDonor`
--

CREATE TABLE IF NOT EXISTS `CorporateDonor` (
  `corporatedonorid` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `contribution` text,
  PRIMARY KEY (`corporatedonorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CorporateDonor`
--

INSERT IGNORE INTO `CorporateDonor` (`corporatedonorid`, `description`, `contribution`) VALUES
(2, 'Accenture is a global management consulting, technology services and outsourcing company serving clients in more than 120 countries. Combining unparalleled experience, comprehensive capabilities across all industries and business functions, and extensive research on the world''s most successful companies, Accenture collaborates with clients to help them become high-performance businesses and governments.', 'Accenture has extensive relationships with the world''s leading companies including 92 of the Fortune Global 100 and more than three quarters of the Fortune Global 500.\r\n\r\nAccenture prides itself on its "high performance business" strategy building on their expertise in consulting, technology and outsourcing to help clients perform at the highest levels.'),
(15, 'International Business Machines Corporation, or IBM, is an American multinational technology and consulting corporation, with headquarters in Armonk, New York, United States. IBM manufactures and markets computer hardware and software, and offers infrastructure, hosting and consulting services in areas ranging from mainframe computers to nanotechnology.', 'International Business Machines Corporation, or IBM,is an American multinational technology and consulting corporation, with headquarters in Armonk, New York/ United States.\r\n\r\nIBM manufactures and markets computer hardware and software, and offers infrastructure, hosting and consulting services in areas ranging from mainframe computers to nanotechnology.				');

-- --------------------------------------------------------

--
-- Table structure for table `DynamicContent`
--

CREATE TABLE IF NOT EXISTS `DynamicContent` (
  `contentid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `content` text,
  `picture` varchar(30) DEFAULT NULL,
  `approved` int(1) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `createdby` int(11) NOT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedby` int(11) DEFAULT NULL,
  `datemodified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`contentid`),
  KEY `DynamicContentFK1` (`createdby`),
  KEY `DynamicContentFK2` (`modifiedby`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Event`
--

CREATE TABLE IF NOT EXISTS `Event` (
  `contentid` int(11) NOT NULL DEFAULT '0',
  `eventdate` date DEFAULT NULL,
  PRIMARY KEY (`contentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Faculty`
--

CREATE TABLE IF NOT EXISTS `Faculty` (
  `facultyid` int(11) NOT NULL DEFAULT '0',
  `positionid` int(11) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `website` varchar(20) DEFAULT NULL,
  `consultation` varchar(50) DEFAULT NULL,
  `research` text,
  PRIMARY KEY (`facultyid`),
  KEY `FacultyFK2` (`positionid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Faculty`
--

INSERT IGNORE INTO `Faculty` (`facultyid`, `positionid`, `email`, `website`, `consultation`, `research`) VALUES
(1, 9, 'jbsoriano@gmail.com', NULL, ' MTTh 1:00 - 5:00', ' Numerical Optimization, Computational Finance, Complex Systems'),
(2, 3, 'lanacu@dcs.upd.edu.p', NULL, ' M 1-5 TTh 230-530', ' High Perform ance Com puting, Bioinform atics, Intelligent Systems'),
(3, 10, 'mario.carreon@gmail.', NULL, ' Tuesday & Thursday 8-12,1-5', ' Networking, Gaming, Human Computer Interaction, Computing for the Disabled'),
(4, 6, 'prregonia@dcs.upd.ed', NULL, ' By email appointment', ' Affective computing'),
(5, 16, 'bongolan@dcs.upd.edu', NULL, 'By email appointment', ' This year, we will concentrate on cellular automata modeling for debris flows. We are also working on hydrogen production (for a battery) powered only by visible light.'),
(6, 10, 'pczuniga@dcs.upd.edu', NULL, ' MTTh 8 -5', ' Cryptography, Algorithms, Heuristic Methods'),
(7, 20, 'pcnaval@ dcs.upd.edu', NULL, ' TThF: 1-5 pm', ' Probabilistic Machine Learning and Applications to Computer Vision and Natural Language Processing, Quantum Computing Applications, Evolutionary Computation, Swarm Robotics'),
(8, 14, 'dcs@rom.oib.com', NULL, ' Email Me. This varies every semester', ' Web Science & the sem antic web, Mobile Computing, Health Informatics, Internet Technologies, Computers in Learning'),
(9, 20, 'spfestin@ dcs.upd.ed', NULL, ' Mon 8-11, Tues & Thurs 10-11, 2-3, Fri 8-11', ' Security Protocols, Secure Software Engineering, Privacy'),
(10, 10, 'tmbasa@dcs.upd.edu.p', NULL, ' M 1-6pm, TTh 10-12, WF 3-6pm', ' Artificial Intellligence, Digital Image Processing'),
(11, 24, 'alvaldez@dcs.upd.edu', NULL, NULL, NULL),
(12, 23, 'cmfestin@dcs.upd.edu', NULL, NULL, NULL),
(13, 9, 'jamalinao@dcs.upd.ed', NULL, NULL, NULL),
(14, 21, 'hnadorna@dcs.upd.edu', NULL, NULL, NULL),
(15, 7, 'jvhernandez@dcs.upd.', NULL, NULL, NULL),
(16, 10, 'jcyap@dcs.upd.edu.ph', NULL, NULL, NULL),
(17, 9, 'kcbuno@dcs.upd.edu.p', NULL, NULL, NULL),
(18, 3, 'aaangeles@dcs.upd.ed', NULL, NULL, NULL),
(19, 3, 'adcariaga@dcs.upd.ed', NULL, NULL, NULL),
(20, 9, 'llfigueroa@dcs.upd.e', NULL, NULL, NULL),
(21, 9, 'rbnavarro@dcs.upd.ed', NULL, NULL, NULL),
(22, 5, 'waoliveros@dcs.upd.e', NULL, NULL, NULL),
(23, 9, 'pgpaje@dcs.upd.edu.p', NULL, NULL, NULL),
(24, 9, 'crraquel@dcs.upd.edu', NULL, NULL, NULL),
(25, 10, 'mcsolamo@dcs.upd.edu', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `FacultyLab`
--

CREATE TABLE IF NOT EXISTS `FacultyLab` (
  `facultyid` int(11) NOT NULL DEFAULT '0',
  `laboratoryid` int(11) DEFAULT NULL,
  PRIMARY KEY (`facultyid`),
  KEY `FacultyLabFKLab` (`laboratoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Lab`
--

CREATE TABLE IF NOT EXISTS `Lab` (
  `laboratoryid` int(11) NOT NULL AUTO_INCREMENT,
  `head` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `field` text,
  `description` text,
  PRIMARY KEY (`laboratoryid`),
  KEY `LabFK` (`head`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `Lab`
--

INSERT IGNORE INTO `Lab` (`laboratoryid`, `head`, `name`, `email`, `telephone`, `website`, `logo`, `field`, `description`) VALUES
(1, 14, 'Algorithms and Compl', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 9, 'Computer Security Gr', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 7, 'Computer Vision and ', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 12, 'Networks and Distrib', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 'Scientific Computing', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 23, 'Service Science and ', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 8, 'Web Science Group (W', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `LabRoom`
--

CREATE TABLE IF NOT EXISTS `LabRoom` (
  `laboratoryid` int(11) NOT NULL DEFAULT '0',
  `roomid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`laboratoryid`,`roomid`),
  KEY `LabRoomFK2` (`roomid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `People`
--

CREATE TABLE IF NOT EXISTS `People` (
  `peopleid` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `picture` varchar(30) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `createdby` int(11) NOT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedby` int(11) DEFAULT NULL,
  `datemodified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`peopleid`),
  KEY `PeopleFK1` (`createdby`),
  KEY `PeopleFK2` (`modifiedby`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `People`
--

INSERT IGNORE INTO `People` (`peopleid`, `first_name`, `middle_name`, `last_name`, `picture`, `status`, `createdby`, `datecreated`, `modifiedby`, `datemodified`) VALUES
(1, 'Jaymar', 'B', 'Soriano', 'j-soriano.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(2, 'Lester', 'A', 'Nacu', 'l-nacu.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(3, 'Mario', 'T', 'Carreon', 'm-carreon.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(4, 'Paul Rossener', 'R', 'Regonia', 'p-regonia.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(5, 'Vena Pearl', '', 'Bongolan', 'v-bongolan.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(6, 'Philip Christian', 'C', 'Zuniga', 'p-zuniga.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(7, 'Pros', 'C', 'Naval', 'p-naval.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(8, 'Rommel', 'P', 'Feria', 'r-feria.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(9, 'Susan', 'P', 'Festin', 's-festin.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(10, 'Tristan', 'M', 'Basa', 't-basa.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(11, 'Adrian Roy', 'L', 'Valdez', 'a-valdez.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(12, 'Cedric', 'M', 'Festin', 'c-festin.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(13, 'Jasmine', 'A', 'Malinao', 'j-malinao.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(14, 'Henry', 'N', 'Adorna', 'h-adorna.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(15, 'John Andreau', 'V', 'Hernandez', 'j-hernandez.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(16, 'Jan Michael', 'C', 'Yap', 'j-yap.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(17, 'Kelvin', 'C', 'Buno', 'k-buno.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(18, 'Adrian', 'A', 'Angeles', 'a-angeles.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(19, 'Ada Angeli', 'D', 'Cariaga', 'a-cariaga.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(20, 'Ligaya Leah', 'L', 'Figueroa', 'l-figueroa.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(21, 'Riza Theresa', 'B', 'Navarro-Batista', 'r-navarro-batista.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(22, 'Wigi Vei', 'A', 'Oliveros', 'w-oliveros.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(23, 'Paulo Noel', 'G', 'Paje', 'p-paje.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(24, 'Carlo', 'R', 'Raquel', 'c-raquel.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00'),
(25, 'Ma. Rowena', 'C', 'Solamo', 'm-solamo.jpg', 1, 0, '2013-11-02 16:25:10', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Position`
--

CREATE TABLE IF NOT EXISTS `Position` (
  `positionid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`positionid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `Position`
--

INSERT IGNORE INTO `Position` (`positionid`, `name`) VALUES
(1, 'Adjunct Professor'),
(2, 'Professorial Lecturer 2'),
(3, 'Instructor I'),
(4, 'Instructor II'),
(5, 'Instructor III'),
(6, 'Instructor IV'),
(7, 'Instructor V'),
(8, 'Professor Emeritus'),
(9, 'Assistant Professor I'),
(10, 'Assistant Professor II'),
(11, 'Assistant Professor III'),
(12, 'Assistant Professor IV'),
(13, 'Assistant Professor V'),
(14, 'Assistant Professor VI'),
(15, 'Professor VIII'),
(16, 'Assistant Professor VII'),
(17, 'Associate Professor I'),
(18, 'Associate Professor II'),
(19, 'Associate Professor III'),
(20, 'Associate Professor III'),
(21, 'Associate Professor IV'),
(22, 'Associate Professor V'),
(23, 'Associate Professor VI'),
(24, 'Associate Professor VII');

-- --------------------------------------------------------

--
-- Table structure for table `Privilege`
--

CREATE TABLE IF NOT EXISTS `Privilege` (
  `privilegeid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`privilegeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Role`
--

CREATE TABLE IF NOT EXISTS `Role` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `RolePrivilege`
--

CREATE TABLE IF NOT EXISTS `RolePrivilege` (
  `roleid` int(11) NOT NULL DEFAULT '0',
  `privilegeid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`roleid`,`privilegeid`),
  KEY `RolePrivilegeFK2` (`privilegeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Room`
--

CREATE TABLE IF NOT EXISTS `Room` (
  `roomid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `roomnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`roomid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SliderPic`
--

CREATE TABLE IF NOT EXISTS `SliderPic` (
  `sliderpicid` int(11) NOT NULL AUTO_INCREMENT,
  `pic` varchar(30) NOT NULL,
  `status` int(1) NOT NULL,
  `createdby` int(11) NOT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedby` int(11) DEFAULT NULL,
  `datemodified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`sliderpicid`),
  KEY `SliderPicFK1` (`createdby`),
  KEY `SliderPicFK2` (`modifiedby`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Staff`
--

CREATE TABLE IF NOT EXISTS `Staff` (
  `staffid` int(11) NOT NULL DEFAULT '0',
  `positionid` int(11) NOT NULL,
  PRIMARY KEY (`staffid`),
  KEY `StaffFKPosition` (`positionid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `StaffRoom`
--

CREATE TABLE IF NOT EXISTS `StaffRoom` (
  `staffid` int(11) NOT NULL DEFAULT '0',
  `roomid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`staffid`,`roomid`),
  KEY `StaffRoomFKRoom` (`roomid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE IF NOT EXISTS `Student` (
  `studentid` int(11) NOT NULL DEFAULT '0',
  `website` varchar(20) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`studentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Tag`
--

CREATE TABLE IF NOT EXISTS `Tag` (
  `tagid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE IF NOT EXISTS `User` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `contact_number` varchar(20) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `UserRole`
--

CREATE TABLE IF NOT EXISTS `UserRole` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `roleid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`,`roleid`),
  KEY `UserRoleFKRole` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Affiliate`
--
ALTER TABLE `Affiliate`
  ADD CONSTRAINT `AffiliateFK1` FOREIGN KEY (`createdby`) REFERENCES `User` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `AffiliateFK2` FOREIGN KEY (`modifiedby`) REFERENCES `User` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Comment`
--
ALTER TABLE `Comment`
  ADD CONSTRAINT `CommentFK` FOREIGN KEY (`contentid`) REFERENCES `DynamicContent` (`contentid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ContentTag`
--
ALTER TABLE `ContentTag`
  ADD CONSTRAINT `ContentTagFK1` FOREIGN KEY (`contentid`) REFERENCES `DynamicContent` (`contentid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ContentTagFK2` FOREIGN KEY (`tagid`) REFERENCES `Tag` (`tagid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CorporateDonor`
--
ALTER TABLE `CorporateDonor`
  ADD CONSTRAINT `CorporateDonorFK` FOREIGN KEY (`corporatedonorid`) REFERENCES `Affiliate` (`affiliateid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `DynamicContent`
--
ALTER TABLE `DynamicContent`
  ADD CONSTRAINT `DynamicContentFK1` FOREIGN KEY (`createdby`) REFERENCES `User` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `DynamicContentFK2` FOREIGN KEY (`modifiedby`) REFERENCES `User` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Event`
--
ALTER TABLE `Event`
  ADD CONSTRAINT `EventFK` FOREIGN KEY (`contentid`) REFERENCES `DynamicContent` (`contentid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Faculty`
--
ALTER TABLE `Faculty`
  ADD CONSTRAINT `FacultyFK1` FOREIGN KEY (`facultyid`) REFERENCES `People` (`peopleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FacultyFK2` FOREIGN KEY (`positionid`) REFERENCES `Position` (`positionid`) ON UPDATE CASCADE;

--
-- Constraints for table `FacultyLab`
--
ALTER TABLE `FacultyLab`
  ADD CONSTRAINT `FacultyLabFKFaculty` FOREIGN KEY (`facultyid`) REFERENCES `Faculty` (`facultyid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FacultyLabFKLab` FOREIGN KEY (`laboratoryid`) REFERENCES `Lab` (`laboratoryid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Lab`
--
ALTER TABLE `Lab`
  ADD CONSTRAINT `LabFK` FOREIGN KEY (`head`) REFERENCES `Faculty` (`facultyid`);

--
-- Constraints for table `LabRoom`
--
ALTER TABLE `LabRoom`
  ADD CONSTRAINT `LabRoomFK1` FOREIGN KEY (`laboratoryid`) REFERENCES `Lab` (`laboratoryid`),
  ADD CONSTRAINT `LabRoomFK2` FOREIGN KEY (`roomid`) REFERENCES `Room` (`roomid`);

--
-- Constraints for table `People`
--
ALTER TABLE `People`
  ADD CONSTRAINT `PeopleFK1` FOREIGN KEY (`createdby`) REFERENCES `User` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PeopleFK2` FOREIGN KEY (`modifiedby`) REFERENCES `User` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `RolePrivilege`
--
ALTER TABLE `RolePrivilege`
  ADD CONSTRAINT `RolePrivilegeFK1` FOREIGN KEY (`roleid`) REFERENCES `Role` (`roleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RolePrivilegeFK2` FOREIGN KEY (`privilegeid`) REFERENCES `Privilege` (`privilegeid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SliderPic`
--
ALTER TABLE `SliderPic`
  ADD CONSTRAINT `SliderPicFK1` FOREIGN KEY (`createdby`) REFERENCES `User` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SliderPicFK2` FOREIGN KEY (`modifiedby`) REFERENCES `User` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Staff`
--
ALTER TABLE `Staff`
  ADD CONSTRAINT `StaffFKPeople` FOREIGN KEY (`staffid`) REFERENCES `People` (`peopleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `StaffFKPosition` FOREIGN KEY (`positionid`) REFERENCES `Position` (`positionid`) ON UPDATE CASCADE;

--
-- Constraints for table `StaffRoom`
--
ALTER TABLE `StaffRoom`
  ADD CONSTRAINT `StaffRoomFKRoom` FOREIGN KEY (`roomid`) REFERENCES `Room` (`roomid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `StaffRoomFKStaff` FOREIGN KEY (`staffid`) REFERENCES `Staff` (`staffid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Student`
--
ALTER TABLE `Student`
  ADD CONSTRAINT `StudentFK` FOREIGN KEY (`studentid`) REFERENCES `People` (`peopleid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `UserRole`
--
ALTER TABLE `UserRole`
  ADD CONSTRAINT `UserRoleFKRole` FOREIGN KEY (`roleid`) REFERENCES `Role` (`roleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UserRoleFKUser` FOREIGN KEY (`userid`) REFERENCES `User` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

COMMIT;

SET foreign_key_checks = 1;  


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
