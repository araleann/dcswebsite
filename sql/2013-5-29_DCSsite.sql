-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 26, 2013 at 04:56 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET foreign_key_checks = 0;

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dcs_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `corpo_donors`
--
DROP TABLE IF EXISTS `corpo_donors`;
CREATE TABLE `corpo_donors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iglap_partner_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `contribution` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `corpo_name` (`iglap_partner_id`,`created_by`),
  KEY `created_by` (`created_by`),
  KEY `modified_by` (`modified_by`),
  CONSTRAINT `corpo_donors_ibfk_1` FOREIGN KEY (`iglap_partner_id`) REFERENCES `iglap_partners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `corpo_donors_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `corpo_donors_ibfk_3` FOREIGN KEY (`modified_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `corpo_donors`
--

INSERT INTO `corpo_donors` VALUES(1, 15, 'International Business Machines Corporation, or IBM, is an American multinational technology and consulting corporation, with headquarters in Armonk, New York, United States. IBM manufactures and markets computer hardware and software, and offers infrastructure, hosting and consulting services in areas ranging from mainframe computers to nanotechnology.', 'International Business Machines Corporation, or IBM,is an American multinational technology and consulting corporation, with headquarters in Armonk, New York/ United States.\r\n\r\nIBM manufactures and markets computer hardware and software, and offers infrastructure, hosting and consulting services in areas ranging from mainframe computers to nanotechnology.				', 3, '2012-11-18 19:33:02', 3, '0000-00-00 00:00:00');
INSERT INTO `corpo_donors` VALUES(2, 2, 'Accenture is a global management consulting, technology services and outsourcing company serving clients in more than 120 countries. Combining unparalleled experience, comprehensive capabilities across all industries and business functions, and extensive research on the world''s most successful companies, Accenture collaborates with clients to help them become high-performance businesses and governments.', 'Accenture has extensive relationships with the world''s leading companies including 92 of the Fortune Global 100 and more than three quarters of the Fortune Global 500.\r\n\r\nAccenture prides itself on its "high performance business" strategy building on their expertise in consulting, technology and outsourcing to help clients perform at the highest levels.', 3, '2012-11-18 19:33:02', 3, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_ranks`
--

DROP TABLE IF EXISTS `faculty_ranks`;
CREATE TABLE `faculty_ranks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `faculty_ranks`
--

INSERT INTO `faculty_ranks` VALUES(1, 'Adjunct Professor');
INSERT INTO `faculty_ranks` VALUES(9, 'Assistant Professor I');
INSERT INTO `faculty_ranks` VALUES(10, 'Assistant Professor II');
INSERT INTO `faculty_ranks` VALUES(11, 'Assistant Professor III');
INSERT INTO `faculty_ranks` VALUES(12, 'Assistant Professor IV');
INSERT INTO `faculty_ranks` VALUES(13, 'Assistant Professor V');
INSERT INTO `faculty_ranks` VALUES(14, 'Assistant Professor VI');
INSERT INTO `faculty_ranks` VALUES(24, 'Assistant Professor VII');
INSERT INTO `faculty_ranks` VALUES(16, 'Associate Professor I');
INSERT INTO `faculty_ranks` VALUES(17, 'Associate Professor II');
INSERT INTO `faculty_ranks` VALUES(18, 'Associate Professor III');
INSERT INTO `faculty_ranks` VALUES(19, 'Associate Professor III');
INSERT INTO `faculty_ranks` VALUES(20, 'Associate Professor IV');
INSERT INTO `faculty_ranks` VALUES(21, 'Associate Professor V');
INSERT INTO `faculty_ranks` VALUES(22, 'Associate Professor VI');
INSERT INTO `faculty_ranks` VALUES(23, 'Associate Professor VII');
INSERT INTO `faculty_ranks` VALUES(3, 'Instructor I');
INSERT INTO `faculty_ranks` VALUES(4, 'Instructor II');
INSERT INTO `faculty_ranks` VALUES(5, 'Instructor III');
INSERT INTO `faculty_ranks` VALUES(6, 'Instructor IV');
INSERT INTO `faculty_ranks` VALUES(7, 'Instructor V');
INSERT INTO `faculty_ranks` VALUES(8, 'Professor Emeritus');
INSERT INTO `faculty_ranks` VALUES(15, 'Professor VIII');
INSERT INTO `faculty_ranks` VALUES(2, 'Professorial Lecturer 2');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_tags`
--

DROP TABLE IF EXISTS `faculty_tags`;
CREATE TABLE `faculty_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `faculty_tags`
--

INSERT INTO `faculty_tags` VALUES(1, 'Doctorate');
INSERT INTO `faculty_tags` VALUES(3, 'Instructor');
INSERT INTO `faculty_tags` VALUES(4, 'Lecturer');
INSERT INTO `faculty_tags` VALUES(2, 'Master');

-- --------------------------------------------------------

--
-- Table structure for table `iglap_partners`
--

DROP TABLE IF EXISTS `iglap_partners`;
CREATE TABLE `iglap_partners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`,`modified_by`),
  KEY `name` (`name`),
  KEY `modified_by` (`modified_by`),
  CONSTRAINT `iglap_partners_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `iglap_partners_ibfk_2` FOREIGN KEY (`modified_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `iglap_partners`
--

INSERT INTO `iglap_partners` VALUES(1, 'www.8layertech.com', '8 Layer Technologies', '8Layer-Technologies-Inc-logo.jpg', 1, '2012-11-14 18:31:20', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(2, 'www.accenture.com/ph-en', 'Accenture', 'Accenture_Logo.jpg', 1, '2012-11-14 18:32:47', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(3, 'www.analog.com', 'Analog Devices', 'Analog_devices_logo.png', 1, '2012-11-14 18:40:59', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(4, 'www.appsource.biz', 'App Source', 'appsource.png', 1, '2012-11-14 18:40:59', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(5, 'www.aub.com.ph', 'Asia United Bank', 'AUB-Logo.jpg', 1, '2012-11-14 18:40:59', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(6, 'www.azeus.com', 'Azeus', 'Azeus_logo.jpg', 1, '2012-11-14 18:40:59', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(7, 'www.blastasia.com', 'Blast Asia', 'blast asia.png', 1, '2012-11-14 18:40:59', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(8, 'www.cascadeo.com', 'Cascadeo', 'cascadeo.png', 1, '2012-11-14 18:40:59', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(9, 'www.chikka.com', 'Chikka', 'chikka.png', 1, '2012-11-14 18:40:59', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(10, 'www.cambridge.org', 'Cambridge University Press', 'CUP_Colour_logo2.jpg', 1, '2012-11-14 18:40:59', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(11, 'www.emersonprocess.com', 'Emerson Process Management', 'epm_WebSafe.jpg', 1, '2012-11-14 18:40:59', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(12, 'www.factset.com', 'FactSet', 'FactSet.jpg', 1, '2012-11-14 18:40:59', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(13, 'www.gxs.com', 'Global Exchange Services', 'GXS Philippines.jpg', 1, '2012-11-14 18:47:53', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(14, 'www.hp.com', 'HP', 'HP.jpg', 1, '2012-11-14 18:47:53', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(15, 'www.ibm.com', 'IBM', 'imb.jpg', 1, '2012-11-14 18:47:53', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(16, 'www.icannhas.com', 'Icannhas', 'incanhass.jpg', 1, '2012-11-14 18:47:53', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(17, 'www.indigo-entertainment.com', 'Indigo Entertainment', 'indigo.jpg', 1, '2012-11-14 18:47:53', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(18, 'www.indracompany.com', 'Indra', 'Indra_01_pos_RGB.jpg', 1, '2012-11-14 18:47:53', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(19, 'www.innovascend.com', 'Innovascend', 'innovascend.png', 1, '2012-11-14 18:47:53', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(20, 'www.macquarie.com', 'Macquarie', 'macquarieLogo.jpg', 1, '2012-11-14 18:47:53', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(21, 'www.microsoft.com', 'Microsoft', 'Microsoft.jpg', 1, '2012-11-14 18:47:53', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(22, 'www.mitsubishi-motors.com', 'Mitsubishi', 'mitsubishi_logo.jpg', 1, '2012-11-14 18:47:53', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(23, 'www.mobilemindsinc.com', 'Mobile Minds', 'mobile minds.jpg', 1, '2012-11-14 18:53:44', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(25, 'www.orangeandbronze.com', 'Orange & Bronze', 'O&B-logo.jpg', 1, '2012-11-14 18:53:44', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(26, 'www.pg.com', 'Procter & Gamble', 'P&G.jpg', 1, '2012-11-14 18:53:44', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(27, 'www.petron.com', 'Petron', 'Petron.png', 1, '2012-11-14 18:53:44', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(28, 'www.pldt.com.ph', 'PLDT', 'pldt-logo1.jpg', 1, '2012-11-14 18:53:44', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(29, 'www.rarejob.com/professional/', 'Rarejob', 'rarejob.jpg', 1, '2012-11-14 18:53:44', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(30, 'www.smart.com.ph', 'Smart Communications', 'smart.png', 1, '2012-11-14 18:53:44', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(31, 'www.smits.com.ph', 'Smits', 'smits.jpg', 1, '2012-11-14 18:53:44', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(32, 'ph.sykes.com', 'Sykes', 'sykes.jpg', 1, '2012-11-14 18:53:44', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `iglap_partners` VALUES(34, 'www.toyota.com.ph', 'Toyota', 'toyota.jpg', 1, '2012-11-14 18:56:12', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `news_pic` varchar(30) NOT NULL,
  `status` int(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `dated_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `modified_by` (`modified_by`),
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `news_ibfk_2` FOREIGN KEY (`modified_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `news`
--


-- --------------------------------------------------------

--
-- Table structure for table `news_tags`
--

DROP TABLE IF EXISTS `news_tags`;
CREATE TABLE `news_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `news_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `news_id` (`news_id`),
  CONSTRAINT `news_tags_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `news_tags`
--

INSERT INTO `news_tags` VALUES(1, 'News', 0);

-- --------------------------------------------------------

--
-- Table structure for table `people_faculty`
--

DROP TABLE IF EXISTS `people_faculty`;
CREATE TABLE `people_faculty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `people_tag_id` int(11) NOT NULL,
  `faculty_tag_id` int(11) NOT NULL,
  `thumb_pic` varchar(50) DEFAULT NULL,
  `faculty_ranks_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_initial` varchar(1) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `research_lab_id` int(11) NOT NULL,
  `room_no` varchar(20) DEFAULT NULL,
  `interest` text,
  `consult_hours` varchar(50) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `date_modified` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `people_tag_id` (`people_tag_id`),
  KEY `modified_by` (`modified_by`),
  KEY `created_by` (`created_by`),
  KEY `research_lab_id` (`research_lab_id`),
  KEY `faculty_tag_id` (`faculty_tag_id`),
  KEY `faculty_ranks_id` (`faculty_ranks_id`),
  KEY `modified_by_2` (`modified_by`),
  CONSTRAINT `people_faculty_ibfk_1` FOREIGN KEY (`people_tag_id`) REFERENCES `people_tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_faculty_ibfk_2` FOREIGN KEY (`research_lab_id`) REFERENCES `research_labs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_faculty_ibfk_3` FOREIGN KEY (`faculty_tag_id`) REFERENCES `faculty_tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_faculty_ibfk_4` FOREIGN KEY (`faculty_ranks_id`) REFERENCES `faculty_ranks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_faculty_ibfk_5` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_faculty_ibfk_6` FOREIGN KEY (`modified_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `people_faculty`
--

INSERT INTO `people_faculty` VALUES(4, 1, 2, 'j-soriano.jpg', 9, 'Jaymar', 'B', 'Soriano', 'jbsoriano@gmail.com', 6, NULL, ' Numerical Optimization, Computational Finance, Complex Systems', ' MTTh 1:00 - 5:00', 1, '2013-02-11 23:45:58', 3, '0000-00-00 00:00:00', 3);
INSERT INTO `people_faculty` VALUES(5, 1, 3, 'l-nacu.jpg', 3, 'Lester', 'A', 'Nacu', 'lanacu@dcs.upd.edu.ph', 6, '316', ' High Perform ance Com puting, Bioinform atics, Intelligent Systems', ' M 1-5 TTh 230-530', 1, '2013-02-10 20:08:41', 3, '0000-00-00 00:00:00', 3);
INSERT INTO `people_faculty` VALUES(6, 1, 2, 'm-carreon.jpg', 10, 'Mario', 'T', 'Carreon', 'mario.carreon@gmail.com', 4, '316', ' Networking, Gaming, Human Computer Interaction, Computing for the Disabled', ' Tuesday & Thursday 8-12,1-5', 1, '2013-02-10 20:14:59', 3, '0000-00-00 00:00:00', 3);
INSERT INTO `people_faculty` VALUES(7, 1, 3, 'p-regonia.jpg', 6, 'Paul Rossener', 'R', 'Regonia', 'prregonia@dcs.upd.edu.ph', 3, 'CVMIG Faculty', ' Affective computing', ' By email appointment', 1, '2013-02-10 20:14:59', 3, '0000-00-00 00:00:00', 3);
INSERT INTO `people_faculty` VALUES(8, 1, 1, 'v-bongolan.jpg', 16, 'Vena Pearl', '', 'Bongolan', 'bongolan@dcs.upd.edu.ph', 6, 'SCL Lab', ' This year, we will concentrate on cellular automata modeling for debris flows. We are also working on hydrogen production (for a battery) powered only by visible light.', 'By email appointment', 1, '2013-02-15 09:59:00', 3, '0000-00-00 00:00:00', 3);
INSERT INTO `people_faculty` VALUES(9, 1, 2, 'p-zuniga.jpg', 10, 'Philip Christian', 'C', 'Zuniga', 'pczuniga@dcs.upd.edu.ph', 2, '316', ' Cryptography, Algorithms, Heuristic Methods', ' MTTh 8 -5', 1, '2013-02-10 20:14:59', 3, '0000-00-00 00:00:00', 3);
INSERT INTO `people_faculty` VALUES(10, 1, 1, 'p-naval.jpg', 20, 'Pros', 'C', 'Naval', 'pcnaval@ dcs.upd.edu.ph', 3, 'CVMIG Faculty', ' Probabilistic Machine Learning and Applications to Computer Vision and Natural Language Processing, Quantum Computing Applications, Evolutionary Computation, Swarm Robotics', ' TThF: 1-5 pm', 1, '2013-02-15 10:46:42', 0, '0000-00-00 00:00:00', NULL);
INSERT INTO `people_faculty` VALUES(11, 1, 2, 'r-feria.jpg', 14, 'Rommel', 'P', 'Feria', 'dcs@rom.oib.com', 7, NULL, ' Web Science & the sem antic web, Mobile Computing, Health Informatics, Internet Technologies, Computers in Learning', ' Email Me. This varies every semester', 1, '2013-02-11 23:45:24', 3, '0000-00-00 00:00:00', 3);
INSERT INTO `people_faculty` VALUES(12, 1, 1, 's-festin.jpg', 20, 'Susan', 'P', 'Festin', 'spfestin@ dcs.upd.edu.ph', 2, '316', ' Security Protocols, Secure Software Engineering, Privacy', ' Mon 8-11, Tues & Thurs 10-11, 2-3, Fri 8-11', 1, '2013-02-10 20:14:59', 3, '0000-00-00 00:00:00', 3);
INSERT INTO `people_faculty` VALUES(13, 1, 2, 't-basa.jpg', 10, 'Tristan', 'M', 'Basa', 'tmbasa@dcs.upd.edu.ph', 3, 'CVMIG Faculty', ' Artificial Intellligence, Digital Im age Processing', ' M 1-6pm, TTh 10-12, WF 3-6pm', 1, '2013-02-10 20:14:59', 3, '0000-00-00 00:00:00', 3);
INSERT INTO `people_faculty` VALUES(14, 1, 1, 'a-valdez.jpg', 24, 'Adrian Roy', 'L', 'Valdez', 'alvaldez@dcs.upd.edu.ph', 6, NULL, NULL, NULL, 1, '2013-02-10 21:21:48', 3, '0000-00-00 00:00:00', NULL);
INSERT INTO `people_faculty` VALUES(24, 1, 1, 'c-festin.jpg', 23, 'Cedric', 'M', 'Festin', 'cmfestin@dcs.upd.edu.ph', 4, NULL, NULL, NULL, 1, '2013-02-10 21:40:11', 3, '0000-00-00 00:00:00', NULL);
INSERT INTO `people_faculty` VALUES(25, 1, 2, 'j-malinao.jpg', 9, 'Jasmine', 'A', 'Malinao', 'jamalinao@dcs.upd.edu.ph', 1, NULL, NULL, NULL, 1, '2013-02-10 21:40:11', 3, '0000-00-00 00:00:00', NULL);
INSERT INTO `people_faculty` VALUES(26, 1, 1, 'h-adorna.jpg', 21, 'Henry', 'N', 'Adorna', 'hnadorna@dcs.upd.edu.ph', 1, NULL, NULL, NULL, 1, '2013-02-10 21:40:11', 3, '0000-00-00 00:00:00', NULL);
INSERT INTO `people_faculty` VALUES(27, 1, 3, 'j-hernandez.jpg', 7, 'John Andreau', 'V', 'Hernandez', 'jvhernandez@dcs.upd.edu.ph', 4, NULL, NULL, NULL, 1, '2013-02-10 21:40:11', 3, '0000-00-00 00:00:00', NULL);
INSERT INTO `people_faculty` VALUES(28, 1, 2, 'j-yap.jpg', 10, 'Jan Michael', 'C', 'Yap', 'jcyap@dcs.upd.edu.ph', 1, NULL, NULL, NULL, 1, '2013-02-10 21:40:11', 3, '0000-00-00 00:00:00', NULL);
INSERT INTO `people_faculty` VALUES(29, 1, 2, 'k-buno.jpg', 9, 'Kelvin', 'C', 'Buno', 'kcbuno@dcs.upd.edu.ph', 1, NULL, NULL, NULL, 1, '2013-02-10 21:40:11', 3, '0000-00-00 00:00:00', NULL);
INSERT INTO `people_faculty` VALUES(30, 1, 3, 'a-angeles.jpg', 3, 'Adrian', 'A', 'Angeles', 'aaangeles@dcs.upd.edu.ph', 1, NULL, NULL, NULL, 1, '2013-02-12 17:26:56', 3, '0000-00-00 00:00:00', NULL);
INSERT INTO `people_faculty` VALUES(31, 1, 3, 'a-cariaga.jpg', 3, 'Ada Angeli', 'D', 'Cariaga', 'adcariaga@dcs.upd.edu.ph', 7, NULL, NULL, NULL, 1, '2013-02-12 17:26:56', 3, '0000-00-00 00:00:00', NULL);
INSERT INTO `people_faculty` VALUES(32, 1, 2, 'l-figueroa.jpg', 9, 'Ligaya Leah', 'L', 'Figueroa', 'llfigueroa@dcs.upd.edu.ph', 3, NULL, NULL, NULL, 1, '2013-02-12 17:26:56', 3, '0000-00-00 00:00:00', NULL);
INSERT INTO `people_faculty` VALUES(33, 1, 2, 'r-navarro-batista.jpg', 10, 'Riza Theresa', 'B', 'Navarro-Batista', 'rbnavarro@dcs.upd.edu.ph', 3, NULL, NULL, NULL, 1, '2013-02-12 17:26:56', 3, '0000-00-00 00:00:00', NULL);
INSERT INTO `people_faculty` VALUES(34, 1, 3, 'w-oliveros.jpg', 5, 'Wigi Vei', 'A', 'Oliveros', 'waoliveros@dcs.upd.edu.ph', 4, NULL, NULL, NULL, 1, '2013-02-12 17:26:56', 3, '0000-00-00 00:00:00', NULL);
INSERT INTO `people_faculty` VALUES(35, 1, 2, 'p-paje.jpg', 9, 'Paulo Noel', 'G', 'Paje', 'pgpaje@dcs.upd.edu.ph', 5, NULL, NULL, NULL, 1, '2013-02-12 17:26:56', 3, '0000-00-00 00:00:00', NULL);
INSERT INTO `people_faculty` VALUES(36, 1, 2, 'c-raquel.jpg', 9, 'Carlo', 'R', 'Raquel', 'crraquel@dcs.upd.edu.ph', 3, NULL, NULL, NULL, 1, '2013-02-12 17:26:56', 3, '0000-00-00 00:00:00', NULL);
INSERT INTO `people_faculty` VALUES(37, 1, 2, 'm-solamo.jpg', 10, 'Ma. Rowena', 'C', 'Solamo', 'mcsolamo@dcs.upd.edu.ph', 7, NULL, NULL, NULL, 1, '2013-02-12 17:26:56', 3, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `people_staff`
--

DROP TABLE IF EXISTS `people_staff`;
CREATE TABLE `people_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `people_tag_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `middle_initial` varchar(30) NOT NULL,
  `position_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `people_tag_id` (`people_tag_id`),
  KEY `created_by` (`created_by`),
  KEY `modified_by` (`modified_by`),
  CONSTRAINT `people_staff_ibfk_1` FOREIGN KEY (`people_tag_id`) REFERENCES `people_tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_staff_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_staff_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_staff_ibfk_4` FOREIGN KEY (`modified_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `people_staff`
--

-- --------------------------------------------------------

--
-- Table structure for table `people_tags`
--

DROP TABLE IF EXISTS `people_tags`;
CREATE TABLE `people_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `people_tags`
--

INSERT INTO `people_tags` VALUES(1, 'Faculty');
INSERT INTO `people_tags` VALUES(2, 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
CREATE TABLE `positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `positions`
--

-- --------------------------------------------------------

--
-- Table structure for table `research_labs`
--

DROP TABLE IF EXISTS `research_labs`;
CREATE TABLE `research_labs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `research_labs`
--

INSERT INTO `research_labs` VALUES(1, 'Algorithms and Complexity Laboratory (ACL)');
INSERT INTO `research_labs` VALUES(2, 'Computer Security Group (CSG)');
INSERT INTO `research_labs` VALUES(3, 'Computer Vision and Machine Intelligence Group (CVMIG)');
INSERT INTO `research_labs` VALUES(4, 'Networks and Distributed Systems Group (NDSG)');
INSERT INTO `research_labs` VALUES(6, 'Scientific Computing Laboratory (SCL)');
INSERT INTO `research_labs` VALUES(5, 'Service Science and Software Engineering (S3)');
INSERT INTO `research_labs` VALUES(7, 'Web Science Group (WSG)');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` VALUES(1, 'Superuser');
INSERT INTO `roles` VALUES(2, 'Admin');
INSERT INTO `roles` VALUES(3, 'Content');


-- --------------------------------------------------------

--
-- Table structure for table `slider_pics`
--

DROP TABLE IF EXISTS `slider_pics`;
CREATE TABLE `slider_pics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `pic` varchar(30) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `modified_by` (`modified_by`),
  CONSTRAINT `slider_pics_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `slider_pics_ibfk_2` FOREIGN KEY (`modified_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `slider_pics`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `middle_initial` varchar(1) NOT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`username`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(3, 'Jules Albert', 'Capacillo', 'B', 0, 'juleski', '$1$i5wzdkaB$uWHi6.rsiE9XVY.ciwMW./', 'jules.capacillo@gmail.com', '09156604313');

-- --------------------------------------------------------

SET foreign_key_checks = 1;

