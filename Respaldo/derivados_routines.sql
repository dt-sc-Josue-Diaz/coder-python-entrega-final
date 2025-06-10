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
-- Temporary view structure for view `vista_factores_actuales`
--

DROP TABLE IF EXISTS `vista_factores_actuales`;
/*!50001 DROP VIEW IF EXISTS `vista_factores_actuales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_factores_actuales` AS SELECT 
 1 AS `id_factor`,
 1 AS `tipo_factor`,
 1 AS `valor`,
 1 AS `fecha`,
 1 AS `operacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_reporte_completo`
--

DROP TABLE IF EXISTS `vw_reporte_completo`;
/*!50001 DROP VIEW IF EXISTS `vw_reporte_completo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_reporte_completo` AS SELECT 
 1 AS `id_posicion`,
 1 AS `operacion`,
 1 AS `fecha`,
 1 AS `fecha_fin`,
 1 AS `fecha_valuacion`,
 1 AS `valor_presente`,
 1 AS `moneda`,
 1 AS `var_historico`,
 1 AS `var_Markowitz`,
 1 AS `cva`,
 1 AS `dva`,
 1 AS `fva`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_flujos_futuros`
--

DROP TABLE IF EXISTS `vista_flujos_futuros`;
/*!50001 DROP VIEW IF EXISTS `vista_flujos_futuros`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_flujos_futuros` AS SELECT 
 1 AS `id_flujo`,
 1 AS `fecha_flujo`,
 1 AS `monto`,
 1 AS `tipo_flujo`,
 1 AS `operacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_posiciones_con_modelo`
--

DROP TABLE IF EXISTS `vista_posiciones_con_modelo`;
/*!50001 DROP VIEW IF EXISTS `vista_posiciones_con_modelo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_posiciones_con_modelo` AS SELECT 
 1 AS `id_posicion`,
 1 AS `operacion`,
 1 AS `fecha`,
 1 AS `nombre_modelo`,
 1 AS `version`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_factores_actuales`
--

/*!50001 DROP VIEW IF EXISTS `vista_factores_actuales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_factores_actuales` AS select `f`.`id_factor` AS `id_factor`,`f`.`tipo_factor` AS `tipo_factor`,`f`.`valor` AS `valor`,`f`.`fecha` AS `fecha`,`p`.`operacion` AS `operacion` from (`factores_de_riesgo` `f` join `posicion` `p` on((`f`.`id_posicion` = `p`.`id_posicion`))) where (`f`.`fecha` = (select max(`factores_de_riesgo`.`fecha`) from `factores_de_riesgo` where (`factores_de_riesgo`.`tipo_factor` = `f`.`tipo_factor`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_reporte_completo`
--

/*!50001 DROP VIEW IF EXISTS `vw_reporte_completo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_reporte_completo` AS select `p`.`id_posicion` AS `id_posicion`,`p`.`operacion` AS `operacion`,`p`.`fecha` AS `fecha`,`p`.`fecha_fin` AS `fecha_fin`,`v`.`fecha_valuacion` AS `fecha_valuacion`,`v`.`valor_presente` AS `valor_presente`,`v`.`moneda` AS `moneda`,`r`.`var_historico` AS `var_historico`,`r`.`var_Markowitz` AS `var_Markowitz`,`x`.`cva` AS `cva`,`x`.`dva` AS `dva`,`x`.`fva` AS `fva` from (((`posicion` `p` left join `valuacion` `v` on((`p`.`id_posicion` = `v`.`id_posicion`))) left join `var` `r` on((`p`.`id_posicion` = `r`.`id_posicion`))) left join `xva` `x` on((`p`.`id_posicion` = `x`.`id_posicion`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_flujos_futuros`
--

/*!50001 DROP VIEW IF EXISTS `vista_flujos_futuros`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_flujos_futuros` AS select `f`.`id_flujo` AS `id_flujo`,`f`.`fecha_flujo` AS `fecha_flujo`,`f`.`monto` AS `monto`,`f`.`tipo_flujo` AS `tipo_flujo`,`p`.`operacion` AS `operacion` from (`flujos` `f` join `posicion` `p` on((`f`.`id_posicion` = `p`.`id_posicion`))) where (`f`.`fecha_flujo` > curdate()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_posiciones_con_modelo`
--

/*!50001 DROP VIEW IF EXISTS `vista_posiciones_con_modelo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_posiciones_con_modelo` AS select `p`.`id_posicion` AS `id_posicion`,`p`.`operacion` AS `operacion`,`p`.`fecha` AS `fecha`,`m`.`nombre_modelo` AS `nombre_modelo`,`m`.`version` AS `version` from (`posicion` `p` join `modelos` `m` on((`p`.`id_posicion` = `m`.`id_posicion`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'derivados'
--
/*!50003 DROP FUNCTION IF EXISTS `calcular_spread` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calcular_spread`(tasa_activa DECIMAL(5,2), tasa_pasiva DECIMAL(5,2)) RETURNS decimal(5,2)
    DETERMINISTIC
BEGIN
    RETURN tasa_activa - tasa_pasiva;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `es_flujo_positivo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `es_flujo_positivo`(monto DECIMAL(15,2)) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
    RETURN monto > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_valuacion_neta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_valuacion_neta`(id INT) RETURNS decimal(18,2)
    READS SQL DATA
BEGIN
  DECLARE resultado DECIMAL(18,2);
  SELECT valor_presente_neto - (COALESCE(cva,0) + COALESCE(dva,0) + COALESCE(fva,0))
  INTO resultado
  FROM VALUACION v LEFT JOIN XVA x ON v.id_posicion = x.id_posicion
  WHERE v.id_posicion = id;
  RETURN resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `obtener_duracion_dias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_duracion_dias`(fecha_inicio DATE, fecha_fin DATE) RETURNS int
    DETERMINISTIC
BEGIN
    RETURN DATEDIFF(fecha_fin, fecha_inicio);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_valor_factor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_valor_factor`(
    IN id_factor_ INT,
    IN nuevo_valor_ DECIMAL(10,4)
)
BEGIN
    UPDATE FACTORES_DE_RIESGO
    SET valor = nuevo_valor_
    WHERE id_factor = id_factor_;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_flujo_para_posicion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_flujo_para_posicion`(
    IN id_posicion_ INT,
    IN fecha_flujo_ DATE,
    IN monto_ DECIMAL(15,2),
    IN tipo_flujo_ VARCHAR(20)
)
BEGIN
    INSERT INTO FLUJOS (id_posicion, fecha_flujo, monto, tipo_flujo)
    VALUES (id_posicion_, fecha_flujo_, monto_, tipo_flujo_);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_nueva_posicion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_nueva_posicion`(
    IN operacion_ VARCHAR(50),
    IN fecha_ DATE,
    IN inicio_ DATE,
    IN fecha_fin_ DATE,
    IN tasa_activa_ DECIMAL(5,2),
    IN tasa_pasiva_ DECIMAL(5,2),
    IN modelo_valuacion_ VARCHAR(50),
    IN curva_pago_1_ VARCHAR(50),
    IN curva_pago_2_ VARCHAR(50),
    IN curva_descuento_1_ VARCHAR(50),
    IN curva_descuento_2_ VARCHAR(50)
)
BEGIN
    INSERT INTO POSICION (
        operacion, fecha, inicio, fecha_fin,
        tasa_activa, tasa_pasiva, modelo_valuacion,
        curva_pago_1, curva_pago_2,
        curva_descuento_1, curva_descuento_2)
    VALUES (
        operacion_, fecha_, inicio_, fecha_fin_,
        tasa_activa_, tasa_pasiva_, modelo_valuacion_,
        curva_pago_1_, curva_pago_2_,
        curva_descuento_1_, curva_descuento_2_);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_actualizar_var` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_var`(IN id INT, IN nuevo_valor DECIMAL(18,2))
BEGIN
  UPDATE VAR SET var_1d_99 = nuevo_valor WHERE id_posicion = id;
END ;;
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
