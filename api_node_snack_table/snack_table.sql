CREATE DATABASE  IF NOT EXISTS `snack_table` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci */;
USE `snack_table`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: snack_table
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `mensagens_fale_conosco`
--

DROP TABLE IF EXISTS `mensagens_fale_conosco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensagens_fale_conosco` (
  `id_mensagem` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(100) COLLATE utf8_general_mysql500_ci NOT NULL,
  `mensagem_cliente` varchar(300) COLLATE utf8_general_mysql500_ci NOT NULL,
  `data` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_mensagem`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagens_fale_conosco`
--

LOCK TABLES `mensagens_fale_conosco` WRITE;
/*!40000 ALTER TABLE `mensagens_fale_conosco` DISABLE KEYS */;
INSERT INTO `mensagens_fale_conosco` VALUES (1,'Carlos Lorota','Esta é a primeira mensage de teste.','2020-11-05 22:00:45'),(34,'Lucas','Testando alert_react','2021-01-15 16:23:44'),(33,'Lucas','Testando o alerta após comentario','2021-01-15 16:18:19'),(32,'Lucas ','Testando o alerta após a mensagem.','2021-01-15 16:14:41'),(31,'Lucas','Esta é uma mensagem de teste.','2021-01-15 16:12:05'),(30,'Dota','games','2021-01-15 16:08:55'),(29,'','','2020-12-05 17:48:53'),(28,'','','2020-12-05 17:48:24'),(27,'','','2020-12-05 17:47:24'),(35,'Lucas','testando o alert in react','2021-01-15 16:27:02'),(36,'Lucas','testando o alert in react','2021-01-15 16:27:29'),(37,'Lucas','Testando o alerta in react','2021-01-15 16:27:43'),(38,'Lucas ','testando alerta em janela ','2021-01-15 16:28:49'),(39,'Lucas','Testando o alerta em js','2021-01-15 16:30:04'),(40,'Lucas','Testando o alerta em janela.js','2021-01-15 16:32:27'),(41,'Lucas','Testando alertas do bootstrap','2021-01-15 16:34:10'),(42,'Lucas','testando','2021-01-15 16:34:29'),(43,'Lucas','Esta é uma mensagem de teste','2021-02-04 19:45:56'),(44,'Lucas','Esta é mais uma mensagem de teste.','2021-02-04 19:49:09');
/*!40000 ALTER TABLE `mensagens_fale_conosco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `idprodutos` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idprodutos`),
  UNIQUE KEY `imagem_UNIQUE` (`imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Salgadinhos','Salgadinho Ebicen Cebola 30G','ebicencebola.jpg'),(2,'Salgadinhos','Salgadinho Ebicen Pimenta 30G','pimenta.jpg'),(3,'Salgadinhos','Salgadinho Doritos Spicy Sweet Chili Flavored Tortilla Chips 276G','Spicy_Sweet_Chili_Flavored_Tortilla_Chips.png'),(4,'Salgadinhos','Salgadinho Pringles Paprika 165G','pringles_paprika.png'),(5,'Torradas','Torrada Bauducco Tradicional 142G','torrada_tradicional.jpg'),(6,'Torradas','Torrada Bauducco Integral 142G','torrada_integral.jpg'),(7,'Torradas','Torrada Bauducco Multrigrãos 142G','torrada_multigraos.jpg'),(8,'Biscoitos','Biscoito Recheado Óreo 140G','oreo.jpg'),(9,'Biscoitos','Biscoito Recheado Trakinas Chocolate 126G','trakinas.jpg'),(10,'Chocolates','Chocolate Choco Soy Meio Amargo 80G','choco_soy_meio_amaro.png'),(11,'Chocolates','Chocolate Choco Soy Tradicional 80G','choco_soy_tradicional.png'),(12,'Chocolates','Chocolate zero açúcar ao leite de coco em tablete LOOV 25G','loov.png'),(13,'Chocolates','Chocolate zero açúcar branco em tablete LOOV 25G','loove_branco.png'),(14,'GeleiasPastas','Geleia de Amora Diet Queensberry 280G','queensberry_amora.jpg'),(15,'GeleiasPastas','Cajutella Bioporã 210G','CAJUTELLA.jpg'),(16,'GeleiasPastas','Creme de Chocolate Zero Açúcar LOOV Recheio Brown 160g','recheio_brown_loov.png');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela_de_pedidos`
--

DROP TABLE IF EXISTS `tabela_de_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabela_de_pedidos` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nome_do_cliente` varchar(50) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` bigint(20) DEFAULT NULL,
  `nome_do_produto` varchar(255) DEFAULT NULL,
  `valor_unitario` float DEFAULT NULL,
  `quantidade` int(5) DEFAULT NULL,
  `valor_total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_de_pedidos`
--

LOCK TABLES `tabela_de_pedidos` WRITE;
/*!40000 ALTER TABLE `tabela_de_pedidos` DISABLE KEYS */;
INSERT INTO `tabela_de_pedidos` VALUES (1,'$nome','$endereco',123456789,'$nome_do_produto',NULL,5,NULL),(2,'Carlos Lorota','Rua A',123456789,'Salgadinho Doritos Spicy Sweet Chili Flavored Tortilla Chips 276G',NULL,2,NULL),(3,'Agostinho','Rua B',21123456789,'Salgadinho Doritos Spicy Sweet Chili Flavored Tortilla Chips 276G',NULL,5,NULL),(4,'Lucas','Rua da chegada ',21964990540,'Salgadinho Ebicen Cebola 30G',NULL,5,NULL);
/*!40000 ALTER TABLE `tabela_de_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valores`
--

DROP TABLE IF EXISTS `valores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valores` (
  `id_valores` int(11) NOT NULL AUTO_INCREMENT,
  `preco_inicial` float DEFAULT NULL,
  `preco_final` float DEFAULT NULL,
  PRIMARY KEY (`id_valores`),
  CONSTRAINT `id_valores` FOREIGN KEY (`id_valores`) REFERENCES `produtos` (`idprodutos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valores`
--

LOCK TABLES `valores` WRITE;
/*!40000 ALTER TABLE `valores` DISABLE KEYS */;
INSERT INTO `valores` VALUES (1,3.55,1.15),(2,3.55,1.15),(3,20.59,13.25),(4,23.99,15.99),(5,3.19,2.55),(6,3.55,2.75),(7,3.25,2.29),(8,2.55,1.35),(9,2.59,1.59),(10,11.35,7.59),(11,11.59,8.15),(12,8.55,6.59),(13,8.99,6.55),(14,22.99,17.19),(15,34.95,20.15),(16,34.99,22.19);
/*!40000 ALTER TABLE `valores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-04 19:55:04
