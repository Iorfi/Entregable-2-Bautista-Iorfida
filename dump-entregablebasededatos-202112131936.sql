-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: entregablebasededatos
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Football'),(2,'Tennis'),(3,'Hockey'),(4,'Paddel'),(5,'Voleyball'),(6,'Baquetball'),(7,'Handball'),(8,'Boxeo'),(9,'Waterpolo'),(10,'Other');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorynotes`
--

DROP TABLE IF EXISTS `categorynotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorynotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categorynotes_FK` (`note_id`),
  KEY `categorynotes_FK_1` (`category_id`),
  CONSTRAINT `categorynotes_FK` FOREIGN KEY (`note_id`) REFERENCES `notes` (`id`),
  CONSTRAINT `categorynotes_FK_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorynotes`
--

LOCK TABLES `categorynotes` WRITE;
/*!40000 ALTER TABLE `categorynotes` DISABLE KEYS */;
INSERT INTO `categorynotes` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
/*!40000 ALTER TABLE `categorynotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `created_at` date NOT NULL,
  `modified_at` date NOT NULL,
  `description` text NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notes_FK` (`user_id`),
  CONSTRAINT `notes_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,1,'Partido en homenaje a Diego Maradona','2021-12-13','2021-12-13','El viernes que viene va a haber un partido entre Napoli y Boca para conmemorar ...',0),(2,3,'Federer vuelve a las canchas','2021-12-13','2021-12-13','Luego de mucho tiempo Federer va a pelear por el top en el Grand Slam...',0),(3,8,'Las Leonas y otro título','2021-12-13','2021-12-13','En el último torneo internacional del año las Leonas se consagraron campeonas...',0),(4,7,'Paquito Navarro y otra Lesión','2021-12-13','2021-12-13','El excelente jugador y muy querido por los fanes del padel paquito Navarro se lesionó...',0),(5,6,'Siguen los festejos luego de los JJOO','2021-12-13','2021-12-13','Ayer por la tarde hubo una reunión entre los jugadores que fueron a los JJOO...',0),(6,1,'Ginobili va a ser entrenador','2021-12-13','2021-12-13','Uno de los mejores deportistas de nuestro país vuelve a las canchas como entrenador...',0),(7,1,'Cambio en las reglas del Handball','2021-12-13','2021-12-13','Luego de todas las quejas de los jugadores de todo el mundo ahora el lateral se va a hacer con el pie...',0),(8,1,'Increible pelea entre dos ex boxeadores ','2021-12-13','2021-12-13','La madrugada del lunes se encontraron dos grandes del boxeo y salieron chispas...',0),(9,1,'Cancha infectada','2021-12-13','2021-12-13','Escandalo en el último torneo nacional, al parecer la pileta tenía...',0),(10,1,'Torneo de Polo','2021-12-13','2021-12-13','En el hipódromo de Palermo se jugará el siguiente torneo nacional de Polo que...',0);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Franco Armani','francoarmani@gmail.com'),(2,'Gonzalo Montiel','gonzalomontiel@hotmail.com'),(3,'Marcos Acuna','marcosacuna@hotmail.com'),(4,'Leandro Paredes','Lleandroparedes@hotmail.com'),(5,'Lautaro Martínez','lautaromartínez@hotmail.com'),(6,'Lionel Messi','lionelmessi@gmail.com'),(7,'Sergio Agüero','sergioagüero@hotmail.com'),(8,'Ángel Di María','angeldimaria@hotmail.com'),(9,'Julián Álvarez','julianalvarez@hotmail.com'),(10,'Juan Foyth','juanfoyth@hotmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'entregablebasededatos'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-13 19:36:18
