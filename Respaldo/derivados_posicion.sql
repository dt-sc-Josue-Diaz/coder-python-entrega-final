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
-- Table structure for table `posicion`
--

DROP TABLE IF EXISTS `posicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posicion` (
  `id_posicion` int NOT NULL AUTO_INCREMENT,
  `operacion` varchar(50) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `tasa_activa` decimal(5,2) DEFAULT NULL,
  `tasa_pasiva` decimal(5,2) DEFAULT NULL,
  `modelo_valuacion` varchar(50) DEFAULT NULL,
  `curva_pago_1` varchar(50) DEFAULT NULL,
  `curva_pago_2` varchar(50) DEFAULT NULL,
  `curva_descuento_1` varchar(50) DEFAULT NULL,
  `curva_descuento_2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_posicion`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posicion`
--

LOCK TABLES `posicion` WRITE;
/*!40000 ALTER TABLE `posicion` DISABLE KEYS */;
INSERT INTO `posicion` VALUES (1,'Swap','2025-01-01','2025-01-01','2028-01-01',6.25,5.75,'Black-Scholes','CURVA_MXN','CURVA_USD','CURVA_MXN','CURVA_USD'),(2,'Forward','2025-02-01','2025-02-10','2025-12-10',6.50,6.00,'Monte Carlo','CURVA_MXN','CURVA_EUR','CURVA_MXN','CURVA_EUR'),(3,'Swap','2025-03-01','2025-03-01','2027-03-01',7.00,6.50,'Black','CURVA_MXN','CURVA_USD','CURVA_MXN','CURVA_USD'),(4,'Cap','2025-01-15','2025-01-20','2026-01-20',5.80,5.30,'Bachelier','CURVA_MXN','CURVA_EUR','CURVA_MXN','CURVA_EUR'),(5,'Floor','2025-04-01','2025-04-15','2027-04-15',6.90,6.40,'Hull-White','CURVA_USD','CURVA_EUR','CURVA_USD','CURVA_EUR'),(6,'Swap','2025-05-01','2025-05-10','2026-05-10',7.10,6.80,'SABR','CURVA_MXN','CURVA_USD','CURVA_MXN','CURVA_USD'),(7,'Swap','2025-06-01','2025-06-10','2027-06-10',7.30,7.00,'LIBOR','CURVA_MXN','CURVA_USD','CURVA_MXN','CURVA_USD'),(8,'Forward','2025-07-01','2025-07-15','2026-07-15',6.85,6.45,'Bachelier','CURVA_EUR','CURVA_MXN','CURVA_EUR','CURVA_MXN'),(9,'Swap','2025-08-01','2025-08-10','2028-08-10',6.75,6.25,'Monte Carlo','CURVA_USD','CURVA_EUR','CURVA_USD','CURVA_EUR'),(10,'Cap','2025-09-01','2025-09-05','2026-09-05',5.95,5.55,'Hull-White','CURVA_EUR','CURVA_USD','CURVA_EUR','CURVA_USD');
/*!40000 ALTER TABLE `posicion` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_after_insert_posicion` AFTER INSERT ON `posicion` FOR EACH ROW BEGIN
    INSERT INTO MODELOS (id_posicion, nombre_modelo, version, descripcion)
    VALUES (NEW.id_posicion, 'Pendiente', 'v0', 'Modelo pendiente de definir');
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
