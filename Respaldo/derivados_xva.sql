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
-- Table structure for table `xva`
--

DROP TABLE IF EXISTS `xva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xva` (
  `id_posicion` int NOT NULL,
  `fecha_xva` date NOT NULL,
  `cva` decimal(18,2) DEFAULT NULL,
  `dva` decimal(18,2) DEFAULT NULL,
  `fva` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`id_posicion`),
  CONSTRAINT `xva_ibfk_1` FOREIGN KEY (`id_posicion`) REFERENCES `posicion` (`id_posicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xva`
--

LOCK TABLES `xva` WRITE;
/*!40000 ALTER TABLE `xva` DISABLE KEYS */;
INSERT INTO `xva` VALUES (1,'2025-01-02',1200.00,800.00,300.00),(2,'2025-02-11',1100.00,850.00,250.00),(3,'2025-03-02',1500.00,950.00,350.00),(4,'2025-01-21',900.00,700.00,200.00),(5,'2025-04-16',1600.00,1000.00,400.00),(6,'2025-05-11',1300.00,900.00,300.00),(7,'2025-06-11',1700.00,1100.00,450.00),(8,'2025-07-16',1000.00,750.00,220.00),(9,'2025-08-11',1800.00,1200.00,480.00),(10,'2025-09-06',950.00,700.00,240.00);
/*!40000 ALTER TABLE `xva` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_auditoria_xva` BEFORE UPDATE ON `xva` FOR EACH ROW BEGIN
  IF OLD.cva <> NEW.cva THEN
    INSERT INTO auditoria_xva (id_posicion, campo_modificado, valor_anterior, fecha_modificacion)
    VALUES (OLD.id_posicion, 'CVA', OLD.cva, NOW());
  END IF;
  IF OLD.dva <> NEW.dva THEN
    INSERT INTO auditoria_xva (id_posicion, campo_modificado, valor_anterior, fecha_modificacion)
    VALUES (OLD.id_posicion, 'DVA', OLD.dva, NOW());
  END IF;
  IF OLD.fva <> NEW.fva THEN
    INSERT INTO auditoria_xva (id_posicion, campo_modificado, valor_anterior, fecha_modificacion)
    VALUES (OLD.id_posicion, 'FVA', OLD.fva, NOW());
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
