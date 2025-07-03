-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: wkpedidos
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cidade` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uf` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'PAULO COELHO','RIO DE JANEIRO','RJ'),(2,'CARLOS DRUMMOND DE ANDRADE','ITABIRA','MG'),(3,'JORGE AMADO','ITABUNA','BA'),(4,'GRACILIANO RAMOS','QUEBRÂNGULO','AL'),(5,'GUIMARÂES ROSA','CORDISBURGO','MG'),(6,'CELÍLIA MEIRELES','RIO DE JANEIRO','RJ'),(7,'JOSÉ DE ALENCAR','FORTALEZA','CE'),(8,'MANUEL BANDEIRA','RECIFE','PE'),(9,'MONTEIRO LOBATO','TAUBATÉ','SP'),(10,'VINÍCIUS DE MORAES','RIO DE JANEIRO','RJ'),(11,'JOÃO CABRAL DE MEO NETO','RECIFE','PE'),(12,'ÉRICO VERÍSSIMO','CRUZ ALTA','RS'),(13,'ARIANO SUASSUNA','JOÃO PESSOA','PB'),(14,'ADÉLIA PRADO','DIVINÓPOLIS','MG'),(15,'CONCEIÇÃO EVARISTO','BELO HORIZONTE','MG'),(16,'CASTRO ALVES','CURRAL','BA'),(17,'LIMA BARRETO','RIO DE JANEIRO','RJ'),(18,'PAULO LEMINSKI','CURITIBA','PR'),(19,'MARIO DE ANDRADE','SÃO PAULO','SP'),(20,'MACHADO DE ASSIM','RIO DE JANEIRO','RJ'),(21,'LYGIA FAGUNDES TELLES','SÃO PAULO','SP');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id_pedido` int NOT NULL,
  `dataemissao` date DEFAULT NULL,
  `id_cliente` int NOT NULL,
  `valortotal` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_pedidocliente` (`id_cliente`),
  CONSTRAINT `fk_pedidocliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidoproduto`
--

DROP TABLE IF EXISTS `pedidoproduto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidoproduto` (
  `id_pedidoproduto` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int NOT NULL,
  `id_produto` int NOT NULL,
  `quantidade` decimal(15,3) DEFAULT NULL,
  `valorunitario` decimal(15,2) DEFAULT NULL,
  `valortotal` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_pedidoproduto`),
  KEY `fk_pedidoprodutopedido` (`id_pedido`),
  KEY `fk_pedidoprodutoproduto` (`id_produto`),
  CONSTRAINT `fk_pedidoprodutopedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`),
  CONSTRAINT `fk_pedidoprodutoproduto` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidoproduto`
--

LOCK TABLES `pedidoproduto` WRITE;
/*!40000 ALTER TABLE `pedidoproduto` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidoproduto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id_produto` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precovenda` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Arroz Tipo 2 5kg',23.90),(2,'Feijão Carioca 1kg',7.49),(3,'Macarrão Espaguete 500g',3.75),(4,'Óleo de Soja 900ml',6.80),(5,'Açúcar Cristal 1kg',4.25),(6,'Café Torrado e Moído 500g',16.90),(7,'Leite Integral 1L',4.99),(8,'Margarina 500g',5.79),(9,'Farinha de Trigo 1kg',4.60),(10,'Sabão em Pó 1kg',9.90),(11,'Detergente Líquido 500ml',2.99),(12,'Papel Higiênico c/ 4 rolos',6.50),(13,'Shampoo 350ml',12.75),(14,'Condicionador 350ml',13.20),(15,'Desinfetante 500ml',4.10),(16,'Refrigerante 2L',7.25),(17,'Biscoito Recheado 140g',2.60),(18,'Iogurte 170g',2.99),(19,'Presunto Fatiado 200g',6.90),(20,'Queijo Mussarela 200g',9.50);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-03  7:06:03
