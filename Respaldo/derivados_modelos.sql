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
-- Table structure for table `modelos`
--

DROP TABLE IF EXISTS `modelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelos` (
  `id_modelo` int NOT NULL AUTO_INCREMENT,
  `id_posicion` int DEFAULT NULL,
  `nombre_modelo` varchar(100) DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_modelo`),
  KEY `id_posicion` (`id_posicion`),
  CONSTRAINT `modelos_ibfk_1` FOREIGN KEY (`id_posicion`) REFERENCES `posicion` (`id_posicion`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelos`
--

LOCK TABLES `modelos` WRITE;
/*!40000 ALTER TABLE `modelos` DISABLE KEYS */;
INSERT INTO `modelos` VALUES (1,1,'Pendiente','v0','Modelo pendiente de definir'),(2,2,'Pendiente','v0','Modelo pendiente de definir'),(3,3,'Pendiente','v0','Modelo pendiente de definir'),(4,4,'Pendiente','v0','Modelo pendiente de definir'),(5,5,'Pendiente','v0','Modelo pendiente de definir'),(6,6,'Pendiente','v0','Modelo pendiente de definir'),(7,7,'Pendiente','v0','Modelo pendiente de definir'),(8,8,'Pendiente','v0','Modelo pendiente de definir'),(9,9,'Pendiente','v0','Modelo pendiente de definir'),(10,10,'Pendiente','v0','Modelo pendiente de definir'),(11,1,'Black-Scholes','1.0','Modelo estándar para opciones europeas'),(12,2,'Monte Carlo','2.1','Simulación de precios bajo riesgo neutral'),(13,3,'Black','1.1','Modelo Black para futuros'),(14,4,'Bachelier','1.2','Modelo aditivo para tasas negativas'),(15,5,'Hull-White','3.0','Modelo de tasas de interés con reversión a la media'),(16,6,'SABR','2.0','Modelo estocástico para volatilidad implícita'),(17,7,'LIBOR Market Model','1.0','Modelo para proyección de tasas forward'),(18,8,'Bachelier','1.3','Revisión del modelo para swaps'),(19,9,'Monte Carlo','2.2','Monte Carlo con cambio de medida'),(20,10,'Hull-White','3.1','Versión calibrada para mercado MXN');
/*!40000 ALTER TABLE `modelos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-10  0:02:44
