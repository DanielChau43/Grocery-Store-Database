-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `department_ID` int DEFAULT NULL,
  `store_id` int DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `department_ID` (`department_ID`),
  KEY `store_id` (`store_id`),
  KEY `category` (`category`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`department_ID`) REFERENCES `department` (`department_ID`) ON DELETE CASCADE,
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `product_ibfk_3` FOREIGN KEY (`category`) REFERENCES `category` (`category`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,9,1,'2.99','Steak','Beef'),(2,13,2,'3.99','Lotion','Hygiene'),(3,6,1,'35.20','Ham','Pork'),(159614836,10,1,'3.55','Utensils','Kitchen'),(287465133,10,1,'3.55','Toilet Paper','Hygiene'),(341146888,10,1,'1.20','Candy','Snacks'),(356657247,10,1,'5.25','Cereal','Breakfast'),(383537227,4,1,'3.55','Ice-cream','Snacks'),(442778317,10,1,'3.55','Pizza','Snacks'),(511626416,10,1,'3.55','Band-Aids','Hygiene'),(667677994,10,1,'3.55','ToothPaste','Hygiene'),(668217887,4,1,'3.55','Eggs','Poultry'),(751529434,10,1,'3.55','TidePods','Hygiene'),(785624889,10,1,'3.10','Chips','Snacks'),(811275294,4,1,'3.55','Butter','Cooking'),(869341175,10,1,'3.55','Q-tips','Hygiene'),(937418288,4,1,'3.55','Milk','Liquids'),(984217143,10,1,'3.55','Bread','Snacks');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-18 22:49:58
