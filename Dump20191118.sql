-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: supermercados
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursales` (
  `cod_sucursal` int(4) NOT NULL,
  `barrio` varchar(30) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales`
--

LOCK TABLES `sucursales` WRITE;
/*!40000 ALTER TABLE `sucursales` DISABLE KEYS */;
INSERT INTO `sucursales` VALUES (1000,'Barracas','Amancio Alcorta 1024'),(1001,'Floresta','Mariano Acosta 2015'),(1002,'Constitucion','General Hornos 309'),(1003,'La Boca','Brasil 1100'),(1004,'Liniers','Av. General Paz 3470'),(1005,'Monte Castro','Joaquín V. González 512'),(1006,'Nueva Pompeya','Av. Caseros 750'),(1007,'Palermo','Av. Dorrego 550'),(1008,'Boedo','Caseros 2000'),(1009,'Belgrano','Franklin D. Roosevelt 3416');
/*!40000 ALTER TABLE `sucursales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `num_ticket` int(4) NOT NULL,
  `cod_sucursal` int(4) NOT NULL,
  `fecha` date NOT NULL,
  `monto_total` double NOT NULL,
  `medio_de_pago` varchar(20) NOT NULL,
  PRIMARY KEY (`num_ticket`),
  KEY `cod_sucursal` (`cod_sucursal`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cod_sucursal`) REFERENCES `sucursales` (`cod_sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1000,1000,'2019-11-15',150,'Credito'),(1001,1001,'2019-08-11',300,'Credito'),(1002,1002,'2019-09-01',1500.8,'Efectivo'),(1003,1003,'2019-10-07',750.3,'Efectivo'),(1004,1004,'2019-10-24',1000,'Credito'),(1005,1005,'2019-10-20',558.9,'Credito'),(1006,1006,'2019-08-26',3500,'Efectivo'),(1007,1007,'2019-09-27',5000,'Efectivo'),(1008,1008,'2019-09-03',4565.5,'Debito'),(1009,1009,'2019-09-02',600,'Efectivo'),(1010,1000,'2019-10-28',750.8,'Efectivo'),(1011,1001,'2019-08-17',900,'Efectivo'),(1012,1002,'2019-08-05',778.5,'Credito'),(1013,1003,'2019-09-09',150.33,'Credito'),(1014,1004,'2019-11-10',1200,'Credito'),(1015,1005,'2019-11-11',6000.8,'Debito'),(1016,1006,'2019-10-03',6565,'Debito'),(1017,1007,'2019-08-07',500,'Efectivo'),(1018,1008,'2019-08-23',700.9,'Credito'),(1019,1009,'2019-09-22',810,'Efectivo'),(1020,1000,'2019-10-15',670.23,'Efectivo'),(1021,1001,'2019-11-14',2000,'Credito'),(1022,1002,'2019-10-13',1120.4,'Efectivo'),(1023,1003,'2019-10-29',1505.2,'Credito'),(1024,1004,'2019-10-30',1508.5,'Debito');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-18 17:21:26
