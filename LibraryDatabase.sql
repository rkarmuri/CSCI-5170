-- MySQL dump 10.19  Distrib 10.3.32-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Library
-- ------------------------------------------------------
-- Server version	10.3.32-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Books`
--

DROP TABLE IF EXISTS `Books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Books` (
  `BookName` char(50) DEFAULT NULL,
  `Author` char(50) DEFAULT NULL,
  `ISBN` double NOT NULL,
  `yearPublished` int(11) DEFAULT NULL,
  `BookFormat` char(30) DEFAULT NULL,
  `Genre` char(50) DEFAULT NULL,
  `Pages` int(11) DEFAULT -1,
  `Autorenew` char(20) DEFAULT '-1',
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Books`
--

LOCK TABLES `Books` WRITE;
/*!40000 ALTER TABLE `Books` DISABLE KEYS */;
INSERT INTO `Books` VALUES ('The Fragile Species','Lewis Thomas',2054555,1992,'Paperback','Essay',338,'No'),('The day of small beginnings','Zac Poonen',95487214,1998,'Paperback','Novel',212,'Yes'),('Frankenstein: The 1818 Edition','Mary Wollstonecraft Shelley',226752275,1818,'Paperback','Novel',156,'Yes'),('Aurora Leigh','Elizabeth Barrett-Browning',915864861,1864,'Paperback','Poetry',205,'Yes'),('Before we were yours','Lisa Wingate',953214756,2008,'Paperback','Novel',168,'Yes'),('Plain Truth','Judi Picoult',968754258,2005,'Paperback','Novel',230,'Yes'),('Sold on a Monday','Kristina McMorris',9425761248,2010,'Paperback','Novel',144,'Yes'),('Figuring','Maria Popova',978052556542,2019,'Paperback','Biography',456,'Yes'),('The Bell Jar','Sylvia Plath',9780060837020,1971,'Paperback','Fiction',78,'Yes'),('Their Eyes Were Watching God','Zora Neale Hurston',9780061120060,1937,'Paperback','Fiction',177,'No'),('The Alchemist','Paulo Coelho',9780062315007,1988,'Paperback','Fiction',290,'Yes'),('The Sentence','Louise Erdrich',9780062671127,2021,'Hardcover','Fiction',420,'No'),('A Christmas Memory','Truman Capote',9780123456786,1956,'Paperback','Fiction',141,'Yes'),('Meditations','Marcus Aurelius',9780140449334,2006,'Paperback','Philosophy',95,'No'),('The Turn of the Screw','Henry James',9780140620610,1898,'Paperback','Fiction',368,'Yes'),('A Room of One\'s Own','Virginia Woolf',9780141183534,1929,'Paperback','Essay',56,'Yes'),('Of Mice and Men','John Steinbeck',9780142000670,1937,'Paperback','Fiction',226,'Yes'),('The Secret Life of Bees','Sue Monk Kidd',9780142001745,2001,'Paperback','Fiction',361,'No'),('Don Quixote','Cervantes',9780142437230,1615,'Paperback','Fiction',294,'Yes'),('Moby Dick','Herman Melville',9780142437247,1851,'Paperback','Fiction',261,'Yes'),('The Haunting of Hill House','Shirley Jackson',9780143039983,1959,'Paperback','Fiction',212,'No'),('The Color Purple','Alice Walker',9780143135692,1982,'Paperback','Fiction',320,'No'),('The Princess Bride','William Goldman',9780151015443,1931,'Paperback','Fiction',267,'Yes'),('Cat\'s Cradle','Kurt Vonnegut',9780241467985,1998,'Paperback','Fiction',325,'No'),('The Road','Cormac McCarthy',9780307265432,2006,'Hardcover','Fiction',227,'No'),('Rebecca','Daphne Du Maurier',9780316323703,1938,'Hardcover','Fiction',284,'No'),('The Catcher in the Rye','J.D. Salinger',9780316769174,1951,'Paperback','Fiction',421,'No'),('I Know Why the Caged Bird Sings','Maya Angelou',9780345514400,1969,'Paperback','Memoir',224,'Yes'),('Poetry of Pablo Neruda','Pablo Neruda',9780374529604,1951,'Paperback','Poetry',122,'Yes'),('White Teeth','Zadie Smith',9780375703867,2001,'Paperback','Fiction',322,'Yes'),('Breakfast of Champions','Kurt Vonnegut',9780385334204,1973,'Paperback','Science Fiction',304,'No'),('Into the Wild','John Krakauer',9780385486804,1996,'Paperback','Biography',154,'Yes'),('Fight Club','Chuck Palahniuk',9780393355949,1996,'Paperback','Fiction',341,'No'),('Educated','Tara Westover',9780399590504,2018,'Hardcover','Memoir',274,'No'),('It','Stephen King',9780450411434,1986,'Hardcover','Fiction',229,'Yes'),('Dr. Jekyll and Mr. Hyde','Robert Louis Stevenson',9780451528957,1886,'Paperback','Science Fiction',348,'No'),('The Bluest Eye','Toni Morrison',9780452287068,1970,'Paperback','Fiction',184,'Yes'),('The Yellow Wallpaper','Charlotte Perkins Gilman',9780486298573,1892,'Paperback','Fiction',247,'Yes'),('The Telltale Heart and Other Writings','Edgar Allan Poe',9780553212280,1843,'Paperback','Fiction',337,'Yes'),('Gone Girl','Gillian Flynn',9780553418354,2012,'Paperback','Fiction',273,'No'),('Klara and the Sun','Kazuo Ishiguro',9780593318171,2021,'Hardcover','Science Fiction',243,'Yes'),('The Idiot','Fyodor Dostoevsky',9780679642428,1869,'Paperback','Fiction',141,'No'),('Pride and Prejudice','Jane Austen',9780679783268,1813,'Paperback','Fiction',321,'Yes'),('The Old Man and the Sea','Ernest Hemingway',9780684801223,1995,'Paperback','Fiction',214,'Yes'),('The Glass Castle','Jeannette Walls',9780743247542,2005,'Paperback','Memoir',321,'No'),('Life of Pi','Yann Martel',9780770430078,2001,'Paperback','Fiction',224,'Yes'),('The Martian','Andy Weir',9780804139021,2011,'Hardcover','Science Fiction',142,'Yes'),('Inferno','Dante',9780812970067,1320,'Paperback','Poetry',100,'Yes'),('Beloved','Toni Morrison',9781400033416,1987,'Paperback','Fiction',167,'No'),('The Hitchhiker\'s Guide to the Galaxy','Douglas Adams',9781400052929,1979,'Hardcover','Science Fiction',238,'No'),('Never Let Me Go','Kazuo Ishiguro',9781400078776,2005,'Paperback','Science Fiction',152,'No'),('Little Women','L.M.Alcott',9781409581987,2016,'Paperback','Novel',152,'No'),('De Profundis','Oscar Wilde',9781789500776,2019,'Paperback','Essay',58,'No'),('Normal People','Sally Rooney',9781984822178,2018,'Hardcover','Fiction',337,'Yes');
/*!40000 ALTER TABLE `Books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee` (
  `empID` varchar(20) NOT NULL,
  `empFirst` char(30) DEFAULT NULL,
  `empLast` char(30) DEFAULT NULL,
  PRIMARY KEY (`empID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES ('3148747','Karthik','Kuncharla'),('3598754','Gopal','RadhaKrishnan'),('3635421','Rebecca','Alexander'),('3647480','Jeffery','Gartner'),('3647567','Sam','Derrick'),('3652589','Nicole','Jackson'),('5156789','Michael','Baxter'),('5176514','Nick','Cooper'),('5246359','Jeremy','McDonald'),('5289478','Stephen','Anderson'),('5291543','Natasha','Walker');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patrons`
--

DROP TABLE IF EXISTS `Patrons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Patrons` (
  `patronID` varchar(20) NOT NULL,
  `pFirstName` char(30) DEFAULT NULL,
  `pLastName` char(30) DEFAULT NULL,
  `Birthday` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`patronID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patrons`
--

LOCK TABLES `Patrons` WRITE;
/*!40000 ALTER TABLE `Patrons` DISABLE KEYS */;
INSERT INTO `Patrons` VALUES ('P290810','Suzuka','Tanaka','2009-08-10'),('P5258495','Raju','Karmuri','1994-04-15'),('P620505','Kevin','Kelly','1962-05-05'),('P640911','Penny','Miller','1964-11-09'),('P825491','Harry','Wilcox','1984-02-08'),('P845786','Sanjay','Ramakrishnan','1978-10-12'),('P845849','Olivia','Okafur','1978-05-14'),('P856284','Faizal','Imtiaz','1985-06-12'),('P862548','Ravi','Ramachandra','1987-04-18'),('P890308','Erica','Bollinger','1989-08-03'),('P911408','Victor','King','1990-08-14'),('P915432','Anthony','Brunette','1991-05-28'),('P927658','Robert','Smith','1994-06-18'),('P935189','Jeremy','Talabi','1997-03-12'),('P942187','Vicente','Espasito','1988-12-30'),('P965789','Elizabeth','Rose','1972-04-24');
/*!40000 ALTER TABLE `Patrons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transactions`
--

DROP TABLE IF EXISTS `Transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transactions` (
  `transID` varchar(20) NOT NULL,
  `empID` varchar(20) DEFAULT NULL,
  `ISBN` double DEFAULT NULL,
  `patronID` varchar(20) DEFAULT NULL,
  `checked` char(20) DEFAULT NULL,
  PRIMARY KEY (`transID`),
  KEY `empID` (`empID`),
  KEY `ISBN` (`ISBN`),
  KEY `patronID` (`patronID`),
  CONSTRAINT `Transactions_ibfk_1` FOREIGN KEY (`empID`) REFERENCES `Employee` (`empID`),
  CONSTRAINT `Transactions_ibfk_2` FOREIGN KEY (`ISBN`) REFERENCES `Books` (`ISBN`),
  CONSTRAINT `Transactions_ibfk_3` FOREIGN KEY (`patronID`) REFERENCES `Patrons` (`patronID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transactions`
--

LOCK TABLES `Transactions` WRITE;
/*!40000 ALTER TABLE `Transactions` DISABLE KEYS */;
INSERT INTO `Transactions` VALUES ('T1457','3598754',9780143039983,'P942187','borrow'),('T2248','5176514',9780345514400,'P927658','return'),('T2359','3647567',9780062671127,'P290810','borrow'),('T2541','3635421',9780141183534,'P862548','return'),('T2581','3635421',9780486298573,'P935189','return'),('T3248','3598754',9780593318171,'P856284','borrow'),('T3485','3598754',9780140449334,'P862548','borrow'),('T3489','5289478',9780241467985,'P845786','borrow'),('T3647','5291543',9780553418354,'P640911','borrow'),('T4187','5156789',9780062671127,'P290810','return'),('T4285','3647480',9780450411434,'P911408','borrow'),('T5214','5291543',9780385334204,'P845786','borrow'),('T5240','5156789',9780385486804,'P845849','return'),('T5460','3652589',9780374529604,'P935189','return'),('T5489','3635421',915864861,'P965789','return'),('T6314','3635421',9780060837020,'P620505','return'),('T6349','5291543',9780804139021,'P825491','return'),('T7124','3647567',9780140620610,'P890308','borrow'),('T7896','5291543',9781400052929,'P640911','return'),('T9453','3652589',9780486298573,'P620505','borrow');
/*!40000 ALTER TABLE `Transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-15  3:26:53
