-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: db_Biblioteca
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_autor`
--

DROP TABLE IF EXISTS `tbl_autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_autor` (
  `Id_Autor` smallint NOT NULL,
  `Nome_Autor` varchar(50) DEFAULT NULL,
  `Sobrenome_Autor` varchar(60) DEFAULT 'da Silva',
  PRIMARY KEY (`Id_Autor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_autor`
--

LOCK TABLES `tbl_autor` WRITE;
/*!40000 ALTER TABLE `tbl_autor` DISABLE KEYS */;
INSERT INTO `tbl_autor` VALUES (1,'Junio','Rodrigues'),(2,'Maria','Silva'),(3,'Joana','Velard'),(4,'Richard','Gol├ºalves'),(5,'Milena','Reis'),(8,'Jhon','da Silva');
/*!40000 ALTER TABLE `tbl_autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_categoria`
--

DROP TABLE IF EXISTS `tbl_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_categoria` (
  `Id_Categoria` smallint NOT NULL AUTO_INCREMENT,
  `Nome_Categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_categoria`
--

LOCK TABLES `tbl_categoria` WRITE;
/*!40000 ALTER TABLE `tbl_categoria` DISABLE KEYS */;
INSERT INTO `tbl_categoria` VALUES (1,'Tecnologia'),(2,'Hist├│ria'),(3,'Literatura'),(4,'Astronomia'),(5,'Bot├ónica');
/*!40000 ALTER TABLE `tbl_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_editora`
--

DROP TABLE IF EXISTS `tbl_editora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_editora` (
  `Id_Editora` smallint NOT NULL AUTO_INCREMENT,
  `Nome_Editora` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Editora`),
  KEY `idx_editora` (`Nome_Editora`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_editora`
--

LOCK TABLES `tbl_editora` WRITE;
/*!40000 ALTER TABLE `tbl_editora` DISABLE KEYS */;
INSERT INTO `tbl_editora` VALUES (3,'microsoft press'),(7,'microsoft press'),(2,'O┬┤Reilly'),(6,'O┬┤Reilly'),(1,'Prentice hall'),(5,'Prentice hall'),(4,'wiley'),(8,'wiley');
/*!40000 ALTER TABLE `tbl_editora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_livro`
--

DROP TABLE IF EXISTS `tbl_livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_livro` (
  `Id_Livro` smallint NOT NULL AUTO_INCREMENT,
  `Nome_Livro` varchar(50) NOT NULL,
  `ISBN` varchar(30) NOT NULL,
  `Data_Pub` date NOT NULL,
  `Preco_Livro` decimal(10,0) NOT NULL,
  `Id_Autor` smallint NOT NULL,
  `Id_editora` smallint NOT NULL,
  `Id_Categoria` smallint NOT NULL,
  PRIMARY KEY (`Id_Livro`),
  KEY `fk_Id_Autor` (`Id_Autor`),
  KEY `FK_Id_editora` (`Id_editora`),
  KEY `FK_Id_categoria` (`Id_Categoria`),
  CONSTRAINT `fk_Id_Autor` FOREIGN KEY (`Id_Autor`) REFERENCES `tbl_autor` (`Id_Autor`),
  CONSTRAINT `FK_Id_categoria` FOREIGN KEY (`Id_Categoria`) REFERENCES `tbl_categoria` (`Id_Categoria`),
  CONSTRAINT `FK_Id_editora` FOREIGN KEY (`Id_editora`) REFERENCES `tbl_editora` (`Id_Editora`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_livro`
--

LOCK TABLES `tbl_livro` WRITE;
/*!40000 ALTER TABLE `tbl_livro` DISABLE KEYS */;
INSERT INTO `tbl_livro` VALUES (22,'Linux Command Line and Shell Scripting','9781118983843','2015-01-09',68,5,4,1),(23,'SSH, o Shell Seguro','9780596008956','2005-05-17',58,1,2,1),(24,'Using Samba','9780596002565','2003-12-21',61,2,2,1),(25,'Fedora and Red Hat Linux','9780133477436','2014-01-10',62,3,1,1),(26,'Windows Server 2012 Inside Out','9780735666313','2013-01-25',67,4,3,1),(27,'Microsoft Exchange Server 2010','9780735640610','2010-12-01',45,4,3,1),(28,'Practical Electronics for Inventors','9781259587542','2016-03-24',68,1,5,1);
/*!40000 ALTER TABLE `tbl_livro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_teste_incremento`
--

DROP TABLE IF EXISTS `tbl_teste_incremento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_teste_incremento` (
  `Codigo` smallint NOT NULL AUTO_INCREMENT,
  `Nome` varchar(20) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_teste_incremento`
--

LOCK TABLES `tbl_teste_incremento` WRITE;
/*!40000 ALTER TABLE `tbl_teste_incremento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_teste_incremento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-18  8:22:33
