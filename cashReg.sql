-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.6.5-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for dbproject
CREATE DATABASE IF NOT EXISTS `dbproject` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dbproject`;

-- Dumping structure for view dbproject.apr
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `apr` (
	`COALESCE(SUM(itemssold),0)` DECIMAL(32,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for procedure dbproject.april
DELIMITER //
CREATE PROCEDURE `april`()
BEGIN
SELECT ordernumber,dateof,totalsales FROM (
SELECT dateof,ordernumber,totalsales FROM transaction
INNER JOIN rs USING(ordernumber)
GROUP BY ordernumber)
AS foo WHERE dateof>='2021-04-01'AND dateof<='2021-04-30';
END//
DELIMITER ;

-- Dumping structure for view dbproject.aug
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `aug` (
	`COALESCE(SUM(itemssold),0)` DECIMAL(32,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for procedure dbproject.august
DELIMITER //
CREATE PROCEDURE `august`()
BEGIN
SELECT ordernumber,dateof,totalsales FROM (
SELECT dateof,ordernumber,totalsales FROM transaction
INNER JOIN rs USING(ordernumber)
GROUP BY ordernumber)
AS foo WHERE dateof>='2021-08-01'AND dateof<='2021-08-31';
END//
DELIMITER ;

-- Dumping structure for table dbproject.csr
CREATE TABLE IF NOT EXISTS `csr` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(100) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- Dumping data for table dbproject.csr: ~36 rows (approximately)
/*!40000 ALTER TABLE `csr` DISABLE KEYS */;
INSERT INTO `csr` (`productid`, `productname`, `price`) VALUES
	(1, 'cucumber', 1.3),
	(2, 'potatoe', 0.8),
	(3, 'orange', 3),
	(4, 'apple', 2.1),
	(5, 'banana', 1.1),
	(6, 'onion', 1.5),
	(7, 'carrot', 4),
	(8, 'paper', 4),
	(9, 'blackberries', 4.3),
	(10, 'carambola', 7.1),
	(11, 'coconut', 8),
	(12, 'figs', 6.5),
	(13, 'grapes', 4),
	(14, 'kiwi', 4),
	(15, 'lemon', 2.7),
	(16, 'dasda', 32),
	(17, 'dasda', 12),
	(18, 'dasdadsd', 123),
	(19, 'dasdad', 123),
	(20, 'dasdad', 123),
	(21, 'dasdad1', 123),
	(22, 'test', 12.33),
	(23, 'test', 10),
	(24, 'test ', 33),
	(25, 'dsd', 22),
	(26, 'dsd', 223),
	(27, 'test ', 222),
	(28, 'test', 123),
	(29, 'test', 666),
	(30, 'test', 11),
	(31, 'test', 12),
	(32, 'test', 23),
	(33, 'test', 233),
	(34, 'test', 2331),
	(35, 'test', 2323),
	(36, 'Apple', 12);
/*!40000 ALTER TABLE `csr` ENABLE KEYS */;

-- Dumping structure for view dbproject.dece
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `dece` (
	`COALESCE(SUM(itemssold),0)` DECIMAL(32,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for procedure dbproject.december
DELIMITER //
CREATE PROCEDURE `december`()
BEGIN
SELECT ordernumber,dateof,totalsales FROM (
SELECT dateof,ordernumber,totalsales FROM transaction
INNER JOIN rs USING(ordernumber)
GROUP BY ordernumber)
AS foo WHERE dateof>='2021-12-01'AND dateof<='2021-12-31';
END//
DELIMITER ;

-- Dumping structure for view dbproject.feb
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `feb` (
	`COALESCE(SUM(itemssold),0)` DECIMAL(32,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view dbproject.feb2022
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `feb2022` (
	`COALESCE(SUM(itemssold),0)` DECIMAL(32,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for procedure dbproject.february
DELIMITER //
CREATE PROCEDURE `february`()
BEGIN
SELECT ordernumber,dateof,totalsales FROM (
SELECT dateof,ordernumber,totalsales FROM transaction
INNER JOIN rs USING(ordernumber)
GROUP BY ordernumber)
AS foo WHERE dateof>='2021-02-01'AND dateof<='2021-02-28';
END//
DELIMITER ;

-- Dumping structure for procedure dbproject.february2022
DELIMITER //
CREATE PROCEDURE `february2022`()
BEGIN
SELECT ordernumber,dateof,totalsales FROM (
SELECT dateof,ordernumber,totalsales FROM transaction
INNER JOIN rs USING(ordernumber)
GROUP BY ordernumber)
AS foo WHERE dateof>='2022-02-01'AND dateof<='2022-02-28';
END//
DELIMITER ;

-- Dumping structure for view dbproject.jan
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `jan` (
	`COALESCE(SUM(itemssold),0)` DECIMAL(32,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view dbproject.jan2022
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `jan2022` (
	`COALESCE(SUM(itemssold),0)` DECIMAL(32,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for procedure dbproject.january
DELIMITER //
CREATE PROCEDURE `january`()
BEGIN
SELECT ordernumber,dateof,totalsales  FROM (
SELECT dateof,ordernumber,totalsales FROM transaction
INNER JOIN rs USING(ordernumber)
GROUP BY ordernumber)
AS foo WHERE dateof>='2021-01-01'AND dateof<='2021-01-31';

END//
DELIMITER ;

-- Dumping structure for procedure dbproject.january2022
DELIMITER //
CREATE PROCEDURE `january2022`()
BEGIN
SELECT ordernumber,dateof,totalsales  FROM (
SELECT dateof,ordernumber,totalsales FROM transaction
INNER JOIN rs USING(ordernumber)
GROUP BY ordernumber)
AS foo WHERE dateof>='2022-01-01'AND dateof<='2022-01-31';

END//
DELIMITER ;

-- Dumping structure for view dbproject.jn
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `jn` (
	`COALESCE(SUM(itemssold),0)` DECIMAL(32,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for procedure dbproject.july
DELIMITER //
CREATE PROCEDURE `july`()
BEGIN
SELECT ordernumber,dateof,totalsales FROM (
SELECT dateof,ordernumber,totalsales FROM transaction
INNER JOIN rs USING(ordernumber)
GROUP BY ordernumber)
AS foo WHERE dateof>='2021-07-01'AND dateof<='2021-07-31';
END//
DELIMITER ;

-- Dumping structure for procedure dbproject.june
DELIMITER //
CREATE PROCEDURE `june`()
BEGIN
SELECT ordernumber,dateof,totalsales FROM (
SELECT dateof,ordernumber,totalsales FROM transaction
INNER JOIN rs USING(ordernumber)
GROUP BY ordernumber)
AS foo WHERE dateof>='2021-06-01'AND dateof<='2021-06-30';
END//
DELIMITER ;

-- Dumping structure for view dbproject.jy
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `jy` (
	`COALESCE(SUM(itemssold),0)` DECIMAL(32,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view dbproject.mar
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `mar` (
	`COALESCE(SUM(itemssold),0)` DECIMAL(32,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for procedure dbproject.march
DELIMITER //
CREATE PROCEDURE `march`()
BEGIN
SELECT ordernumber,dateof,totalsales FROM (
SELECT dateof,ordernumber,totalsales FROM transaction
INNER JOIN rs USING(ordernumber)
GROUP BY ordernumber)
AS foo WHERE dateof>='2021-03-01'AND dateof<='2021-03-31';
END//
DELIMITER ;

-- Dumping structure for procedure dbproject.march2022
DELIMITER //
CREATE PROCEDURE `march2022`()
BEGIN
SELECT ordernumber,dateof,totalsales FROM (
SELECT dateof,ordernumber,totalsales FROM transaction
LEFT JOIN rs USING(ordernumber)
GROUP BY ordernumber)
AS foo WHERE dateof>='2022-03-01'AND dateof<='2022-03-31';
END//
DELIMITER ;

-- Dumping structure for view dbproject.march2022
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `march2022` (
	`COALESCE(SUM(itemssold),0)` DECIMAL(32,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for procedure dbproject.May
DELIMITER //
CREATE PROCEDURE `May`()
BEGIN
SELECT ordernumber,dateof,totalsales FROM (
SELECT dateof,ordernumber,totalsales FROM transaction
INNER JOIN rs USING(ordernumber)
GROUP BY ordernumber)
AS foo WHERE dateof>='2021-05-01'AND dateof<='2021-05-31';
END//
DELIMITER ;

-- Dumping structure for view dbproject.mayy
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `mayy` (
	`COALESCE(SUM(itemssold),0)` DECIMAL(32,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for view dbproject.nov
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `nov` (
	`COALESCE(SUM(itemssold),0)` DECIMAL(32,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for procedure dbproject.november
DELIMITER //
CREATE PROCEDURE `november`()
BEGIN
SELECT ordernumber,dateof,totalsales FROM (
SELECT dateof,ordernumber,totalsales FROM transaction
INNER JOIN rs USING(ordernumber)
GROUP BY ordernumber)
AS foo WHERE dateof>='2021-11-01'AND dateof<='2021-11-30';
END//
DELIMITER ;

-- Dumping structure for view dbproject.octo
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `octo` (
	`COALESCE(SUM(itemssold),0)` DECIMAL(32,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for procedure dbproject.october
DELIMITER //
CREATE PROCEDURE `october`()
BEGIN
SELECT ordernumber,dateof,totalsales FROM (
SELECT dateof,ordernumber,totalsales FROM transaction
INNER JOIN rs USING(ordernumber)
GROUP BY ordernumber)
AS foo WHERE dateof>='2021-10-01'AND dateof<='2021-10-31';
END//
DELIMITER ;

-- Dumping structure for table dbproject.rs
CREATE TABLE IF NOT EXISTS `rs` (
  `ordernumber` int(11) NOT NULL AUTO_INCREMENT,
  `totalsales` int(11) NOT NULL,
  PRIMARY KEY (`ordernumber`),
  CONSTRAINT `rs_ibfk_1` FOREIGN KEY (`ordernumber`) REFERENCES `transaction` (`ordernumber`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

-- Dumping data for table dbproject.rs: ~67 rows (approximately)
/*!40000 ALTER TABLE `rs` DISABLE KEYS */;
INSERT INTO `rs` (`ordernumber`, `totalsales`) VALUES
	(1, 3),
	(2, 55),
	(3, 5),
	(4, 33),
	(5, 11),
	(6, 33),
	(7, 22),
	(8, 41),
	(9, 22),
	(10, 31),
	(11, 79),
	(12, 71),
	(13, 13),
	(14, 22),
	(15, 44),
	(16, 21),
	(17, 57),
	(18, 66),
	(19, 12),
	(20, 22),
	(21, 32),
	(22, 46),
	(23, 13),
	(24, 31),
	(25, 66),
	(26, 41),
	(27, 22),
	(28, 12),
	(29, 13),
	(30, 19),
	(31, 18),
	(32, 17),
	(33, 18),
	(34, 22),
	(35, 2),
	(36, 1),
	(37, 1),
	(38, 2),
	(39, 23),
	(40, 22),
	(41, 22),
	(42, 2),
	(43, 22),
	(44, 18),
	(45, 41),
	(46, 29),
	(47, 32),
	(48, 32),
	(49, 32),
	(50, 32),
	(51, 32),
	(52, 32),
	(53, 123),
	(54, 12),
	(55, 12),
	(56, 12),
	(57, 12),
	(58, 1222),
	(59, 123),
	(60, 123),
	(61, 123),
	(62, 33),
	(63, 12),
	(64, 12),
	(65, 12),
	(66, 123),
	(67, 2);
/*!40000 ALTER TABLE `rs` ENABLE KEYS */;

-- Dumping structure for view dbproject.se
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `se` (
	`COALESCE(SUM(itemssold),0)` DECIMAL(32,0) NULL
) ENGINE=MyISAM;

-- Dumping structure for procedure dbproject.semptember
DELIMITER //
CREATE PROCEDURE `semptember`()
BEGIN
SELECT ordernumber,dateof,totalsales FROM (
SELECT dateof,ordernumber,totalsales FROM transaction
INNER JOIN rs USING(ordernumber)
GROUP BY ordernumber)
AS foo WHERE dateof>='2021-09-01'AND dateof<='2021-09-31';
END//
DELIMITER ;

-- Dumping structure for table dbproject.transaction
CREATE TABLE IF NOT EXISTS `transaction` (
  `productid` int(11) DEFAULT NULL,
  `ordernumber` int(11) NOT NULL AUTO_INCREMENT,
  `itemssold` int(11) NOT NULL,
  `dateof` date DEFAULT NULL,
  PRIMARY KEY (`ordernumber`),
  KEY `productid` (`productid`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `csr` (`productid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

-- Dumping data for table dbproject.transaction: ~67 rows (approximately)
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` (`productid`, `ordernumber`, `itemssold`, `dateof`) VALUES
	(5, 1, 3, '2021-01-29'),
	(2, 2, 55, '2021-01-02'),
	(2, 3, 5, '2021-01-02'),
	(3, 4, 33, '2021-02-05'),
	(11, 5, 11, '2021-04-02'),
	(10, 6, 33, '2021-01-21'),
	(13, 7, 22, '2021-01-17'),
	(15, 8, 41, '2021-04-03'),
	(1, 9, 22, '2021-03-07'),
	(4, 10, 31, '2021-01-22'),
	(8, 11, 79, '2021-02-26'),
	(8, 12, 71, '2021-03-27'),
	(8, 13, 13, '2021-02-02'),
	(1, 14, 22, '2021-02-02'),
	(2, 15, 44, '2021-10-02'),
	(2, 16, 21, '2021-11-02'),
	(12, 17, 57, '2021-10-02'),
	(10, 18, 66, '2021-11-02'),
	(14, 19, 12, '2021-02-27'),
	(10, 20, 22, '2021-01-08'),
	(14, 21, 32, '2021-01-09'),
	(14, 22, 46, '2021-01-10'),
	(12, 23, 13, '2021-01-08'),
	(13, 24, 31, '2021-02-02'),
	(13, 25, 66, '2021-02-03'),
	(11, 26, 41, '2021-03-04'),
	(15, 27, 22, '2021-01-08'),
	(15, 28, 12, '2021-11-02'),
	(4, 29, 13, '2021-03-21'),
	(4, 30, 19, '2021-01-01'),
	(3, 31, 18, '2020-12-27'),
	(1, 32, 17, '2020-12-28'),
	(6, 33, 18, '2020-12-29'),
	(7, 34, 22, '2020-12-29'),
	(7, 35, 2, '2021-01-05'),
	(8, 36, 1, '2021-01-09'),
	(11, 37, 1, '2021-01-22'),
	(9, 38, 2, '2021-01-27'),
	(9, 39, 23, '2021-03-04'),
	(9, 40, 22, '2021-01-02'),
	(9, 41, 22, '2021-12-02'),
	(9, 42, 2, '2021-12-22'),
	(9, 43, 22, '2021-09-07'),
	(3, 44, 18, '2021-07-28'),
	(9, 45, 41, '2021-07-03'),
	(2, 46, 29, '2021-07-12'),
	(16, 47, 32, '2022-03-12'),
	(17, 48, 32, '2022-03-12'),
	(18, 49, 32, '2022-03-12'),
	(19, 50, 32, '2022-03-12'),
	(20, 51, 32, '2022-03-12'),
	(21, 52, 32, '2022-03-12'),
	(22, 53, 123, '2022-03-15'),
	(23, 54, 12, '2022-03-15'),
	(24, 55, 12, '2022-03-15'),
	(25, 56, 12, '2022-03-15'),
	(26, 57, 12, '2022-03-15'),
	(27, 58, 1222, '2022-03-15'),
	(28, 59, 123, '2022-03-15'),
	(29, 60, 123, '2022-03-15'),
	(30, 61, 123, '2022-03-15'),
	(31, 62, 33, '2022-03-15'),
	(32, 63, 12, '2022-03-15'),
	(33, 64, 12, '2022-03-15'),
	(34, 65, 12, '2022-03-15'),
	(35, 66, 123, '2022-03-15'),
	(36, 67, 2, '2022-12-05');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;

-- Dumping structure for view dbproject.apr
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `apr`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `apr` AS SELECT COALESCE(SUM(itemssold),0) FROM transaction
WHERE dateof>='2021-04-01'AND dateof<='2021-04-30' ;

-- Dumping structure for view dbproject.aug
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `aug`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `aug` AS SELECT COALESCE(SUM(itemssold),0) FROM transaction
WHERE dateof>='2021-08-01'AND dateof<='2021-08-31' ;

-- Dumping structure for view dbproject.dece
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `dece`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `dece` AS SELECT COALESCE(SUM(itemssold),0) FROM transaction
WHERE dateof>='2021-12-01'AND dateof<='2021-12-31' ;

-- Dumping structure for view dbproject.feb
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `feb`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `feb` AS SELECT COALESCE(SUM(itemssold),0) FROM transaction
WHERE dateof>='2021-02-01'AND dateof<='2021-02-28' ;

-- Dumping structure for view dbproject.feb2022
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `feb2022`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `feb2022` AS SELECT COALESCE(SUM(itemssold),0) FROM transaction
WHERE dateof>='2022-02-01'AND dateof<='2022-02-28' ;

-- Dumping structure for view dbproject.jan
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `jan`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `jan` AS SELECT COALESCE(SUM(itemssold),0)FROM TRANSACTION
WHERE dateof>='2021-01-01'AND dateof<='2021-01-31' ;

-- Dumping structure for view dbproject.jan2022
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `jan2022`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `jan2022` AS SELECT COALESCE(SUM(itemssold),0) FROM transaction
WHERE dateof>='2022-01-01'AND dateof<='2022-01-31' ;

-- Dumping structure for view dbproject.jn
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `jn`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `jn` AS SELECT COALESCE(SUM(itemssold),0) FROM transaction
WHERE  dateof>='2021-06-01'AND dateof<='2021-06-30' ;

-- Dumping structure for view dbproject.jy
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `jy`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `jy` AS SELECT COALESCE(SUM(itemssold),0) FROM transaction
WHERE dateof>='2021-07-01'AND dateof<='2021-07-31' ;

-- Dumping structure for view dbproject.mar
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `mar`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `mar` AS SELECT COALESCE(SUM(itemssold),0) FROM transaction
WHERE dateof>='2021-03-01'AND dateof<='2021-03-31' ;

-- Dumping structure for view dbproject.march2022
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `march2022`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `march2022` AS SELECT COALESCE(SUM(itemssold),0) FROM transaction
WHERE dateof>='2022-03-01'AND dateof<='2022-03-31' ;

-- Dumping structure for view dbproject.mayy
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `mayy`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `mayy` AS SELECT COALESCE(SUM(itemssold),0) FROM transaction
WHERE dateof>='2021-05-01'AND dateof<='2021-05-31' ;

-- Dumping structure for view dbproject.nov
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `nov`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `nov` AS SELECT COALESCE(SUM(itemssold),0) FROM transaction
WHERE dateof>='2021-11-01'AND dateof<='2021-11-30' ;

-- Dumping structure for view dbproject.octo
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `octo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `octo` AS SELECT COALESCE(SUM(itemssold),0) FROM transaction
WHERE dateof>='2021-10-01'AND dateof<='2021-10-30' ;

-- Dumping structure for view dbproject.se
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `se`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `se` AS SELECT COALESCE(SUM(itemssold),0) FROM transaction
WHERE dateof>='2021-09-01'AND dateof<='2021-09-31' ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
