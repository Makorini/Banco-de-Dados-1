-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: caixa
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Temporary view structure for view `daysofweek`
--

DROP TABLE IF EXISTS `daysofweek`;
/*!50001 DROP VIEW IF EXISTS `daysofweek`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `daysofweek` AS SELECT 
 1 AS `SEGUNDA-FEIRA`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `item_nota_fiscal`
--

DROP TABLE IF EXISTS `item_nota_fiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_nota_fiscal` (
  `NRO_NOTA` int NOT NULL,
  `COD_PRODUTO` int NOT NULL,
  `QTD_PRODUTO` int NOT NULL,
  `VL_PRECO` float NOT NULL,
  `VL_TOTAL` float NOT NULL,
  PRIMARY KEY (`NRO_NOTA`,`COD_PRODUTO`),
  KEY `FK_COD_PRODUTO_PRODUTO` (`COD_PRODUTO`),
  CONSTRAINT `FK_COD_PRODUTO_PRODUTO` FOREIGN KEY (`COD_PRODUTO`) REFERENCES `produto` (`COD_PRODUTO`),
  CONSTRAINT `FK_NRO_NOTA_NOTA_FISCAL` FOREIGN KEY (`NRO_NOTA`) REFERENCES `nota_fiscal` (`NRO_NOTA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_nota_fiscal`
--

LOCK TABLES `item_nota_fiscal` WRITE;
/*!40000 ALTER TABLE `item_nota_fiscal` DISABLE KEYS */;
INSERT INTO `item_nota_fiscal` VALUES (1,1,1,4.5,4.5),(1,2,2,40,80),(1,3,10,100,1000),(2,1,1,9,9),(2,2,2,80,160),(2,3,10,200,2000),(3,1,1,18,18),(3,2,2,160,320),(3,3,10,400,4000),(4,1,1,32,32),(4,2,2,4200,8400),(4,3,10,800,8000);
/*!40000 ALTER TABLE `item_nota_fiscal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_fiscal`
--

DROP TABLE IF EXISTS `nota_fiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nota_fiscal` (
  `NRO_NOTA` int NOT NULL AUTO_INCREMENT,
  `NM_CLIENTE` varchar(256) NOT NULL,
  `END_CLIENTE` varchar(256) NOT NULL,
  `NM_VENDEDOR` varchar(256) NOT NULL,
  `DT_EMISSAO` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VL_TOTAL` float NOT NULL,
  PRIMARY KEY (`NRO_NOTA`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_fiscal`
--

LOCK TABLES `nota_fiscal` WRITE;
/*!40000 ALTER TABLE `nota_fiscal` DISABLE KEYS */;
INSERT INTO `nota_fiscal` VALUES (1,'Aragorn','Terra Média','Bilbo','2024-04-02 19:55:32',100),(2,'Gandalf','Terra Média','Frodo','2024-04-02 19:55:32',100),(3,'Boromir','Mordor','Sam','2024-04-02 19:55:32',100),(4,'Galadriel','Valinor','Saruman','2024-04-02 19:55:32',100),(5,'Gimly','montanha','thorin','2024-05-14 20:24:22',9999);
/*!40000 ALTER TABLE `nota_fiscal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `COD_PRODUTO` int NOT NULL AUTO_INCREMENT,
  `DESC_PRODUTO` varchar(256) NOT NULL,
  `UN_MED` varchar(256) NOT NULL,
  `VL_PRODUTO` int NOT NULL,
  PRIMARY KEY (`COD_PRODUTO`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Leite','LT',5),(2,'Desodorante','UN',8),(3,'Salame','KG',40),(4,'Queijo','kg',30),(5,'Copa','kg',70);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `qtdprodutos`
--

DROP TABLE IF EXISTS `qtdprodutos`;
/*!50001 DROP VIEW IF EXISTS `qtdprodutos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `qtdprodutos` AS SELECT 
 1 AS `COD_PRODUTO`,
 1 AS `DESC_PRODUTO`,
 1 AS `UN_MED`,
 1 AS `VL_PRODUTO`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `daysofweek`
--

/*!50001 DROP VIEW IF EXISTS `daysofweek`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `daysofweek` AS select 'SEGUNDA-FEIRA' AS `SEGUNDA-FEIRA` union select 'TERÇA-FEIRA' AS `TERÇA-FEIRA` union select 'QUARTA-FEIRA' AS `QUARTA-FEIRA` union select 'QUINTA-FEIRA' AS `QUINTA-FEIRA` union select 'SEXTA-FEIRA' AS `SEXTA-FEIRA` union select 'SABADO' AS `SABADO` union select 'DOMINGO' AS `DOMINGO` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `qtdprodutos`
--

/*!50001 DROP VIEW IF EXISTS `qtdprodutos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qtdprodutos` AS select `p`.`COD_PRODUTO` AS `COD_PRODUTO`,`p`.`DESC_PRODUTO` AS `DESC_PRODUTO`,`p`.`UN_MED` AS `UN_MED`,`p`.`VL_PRODUTO` AS `VL_PRODUTO` from `produto` `p` where (`p`.`COD_PRODUTO` in (1,2,3)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-04 19:59:50
