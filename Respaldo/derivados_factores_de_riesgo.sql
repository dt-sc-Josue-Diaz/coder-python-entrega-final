-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: derivados
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `factores_de_riesgo`
--

DROP TABLE IF EXISTS `factores_de_riesgo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factores_de_riesgo` (
  `id_factor` int NOT NULL AUTO_INCREMENT,
  `id_posicion` int DEFAULT NULL,
  `tipo_factor` varchar(50) DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_factor`),
  KEY `id_posicion` (`id_posicion`),
  CONSTRAINT `factores_de_riesgo_ibfk_1` FOREIGN KEY (`id_posicion`) REFERENCES `posicion` (`id_posicion`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factores_de_riesgo`
--

LOCK TABLES `factores_de_riesgo` WRITE;
/*!40000 ALTER TABLE `factores_de_riesgo` DISABLE KEYS */;
INSERT INTO `factores_de_riesgo` VALUES (1,1,'Tasa Interés',0.0625,'2025-01-01'),(2,2,'Tasa Interés',0.0650,'2025-02-01'),(3,3,'Tasa Interés',0.0700,'2025-03-01'),(4,4,'Tasa Interés',0.0580,'2025-01-15'),(5,5,'Tasa Interés',0.0690,'2025-04-01'),(6,6,'Volatilidad',0.1500,'2025-05-01'),(7,7,'Volatilidad',0.1450,'2025-06-01'),(8,8,'Tipo de cambio',18.5000,'2025-07-01'),(9,9,'Tipo de cambio',1.1200,'2025-08-01'),(10,10,'Tasa Interés',0.0595,'2025-09-01');
/*!40000 ALTER TABLE `factores_de_riesgo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_before_update_factor` BEFORE UPDATE ON `factores_de_riesgo` FOR EACH ROW BEGIN
    IF OLD.valor <> NEW.valor THEN
        INSERT INTO FACTORES_DE_RIESGO (
            id_posicion, tipo_factor, valor, fecha
        ) VALUES (
            OLD.id_posicion, CONCAT('AUDIT-', OLD.tipo_factor), OLD.valor, NOW()
        );
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-10  0:02:44
