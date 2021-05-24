DROP DATABASE IF EXISTS `bb`;
CREATE DATABASE  IF NOT EXISTS `bb`; 

--
-- Table structure for table `members`
--
USE `bb`;
DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `memID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `mail` varchar(80) NOT NULL,
  `pwd` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`memID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--