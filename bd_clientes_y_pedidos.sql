CREATE DATABASE  IF NOT EXISTS `db_clientes_y_pedidos` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_clientes_y_pedidos`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: db_clientes_y_pedidos
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (2,'Jenn','Avenida Departamental, 400','+56912345678','2024-10-18 08:55:38','2024-10-18 08:55:38'),(3,'Alex','Avenida Libertador Bernardo Ohiggins, 483','+56912345678','2024-10-18 08:55:38','2024-10-18 08:55:38'),(4,'Celmira','Calle Pascual Ortega, 686 - Villa El Andén','+56912345678','2024-10-18 08:55:38','2024-10-18 08:55:38'),(5,'Wendy','Avda. 7 De Junio 188','+56912345678','2024-10-18 08:55:38','2024-10-18 08:55:38');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `id_cliente` int NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_pedidos_clientes_idx` (`id_cliente`),
  CONSTRAINT `fk_pedidos_clientes` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (3,'2024-11-10',300,2,'2024-10-18 10:10:34','2024-10-18 10:10:34'),(4,'2024-11-15',200,4,'2024-10-18 10:10:34','2024-10-18 10:10:34'),(6,'2024-11-20',500,3,'2024-10-18 10:10:34','2024-10-18 10:10:34'),(7,'2024-11-20',700,3,'2024-10-18 10:10:34','2024-10-18 10:10:34'),(8,'2024-11-15',200,5,'2024-10-18 10:10:34','2024-10-18 10:10:34'),(11,'2024-11-15',500,5,'2024-10-18 10:10:34','2024-10-18 10:10:34');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-18 10:49:53
