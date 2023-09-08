-- MySQL dump 10.13  Distrib 8.0.32, for macos13.0 (arm64)
--
-- Host: localhost    Database: travel_blog_final_project
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `cityImage` text,
  `visitingDate` date DEFAULT NULL,
  `author` varchar(30) NOT NULL,
  `authorsImage` text,
  `authorsEmail` varchar(30) DEFAULT NULL,
  `blog` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'My adventure in Scotland','Glasgow','Scotland','https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/c7/ab/93/the-university-of-glasgow.jpg?w=700&h=500&s=1','2025-03-20','J. K. Rowling','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS3bDP-AbnH7l2pjO-SwJkEFQu9dxDE6V8wyJ_5x_lfkVpTMA80','@JKrowling','This is the text of the Blog'),(2,'Fine Dining in Paris','Paris','France','https://images.adsttc.com/media/images/5d44/14fa/284d/d1fd/3a00/003d/large_jpg/eiffel-tower-in-paris-151-medium.jpg?1564742900','2025-08-20','Linguini','https://pbs.twimg.com/media/EJu_akAUEAANAL3.jpg','@Linguini','This is the text of the Blog'),(3,'Clubing in Berlin','Berlin','Germany','https://d3iso9mq9tb10q.cloudfront.net/magefan_blog/b/e/berlin-nightlife_article.jpg','2010-06-20','Patrick Süsskind','https://i.pinimg.com/originals/7c/83/34/7c833443272d27e34a2b39568379b107.jpg','@psüsskind','This is the text of the Blog'),(4,'Relaxing in Prage','Prague','Hungary','https://a.cdn-hotels.com/gdcs/production76/d1135/21203dce-feeb-40f3-8c93-fc1a98f7549a.jpg?impolicy=fcrop&w=800&h=533&q=medium','2025-03-20','johannes Brahmms','https://res.cloudinary.com/pim-red/image/upload/q_auto,f_auto,c_limit,w_370/v1593005144/rundel/persons/192_brahms_johannes.jpg','@JBrahmms','This is the text of the Blog'),(5,'Toros en Toledo','Toledo','Spain','https://a.cdn-hotels.com/gdcs/production70/d1283/589e9d90-9beb-11e8-a942-0242ac110007.jpg','2008-01-01','Antonio Banderas','https://people.com/thmb/hcUEt5vxi308-d7Yb8y0LoOvzQU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(149x0:151x2)/puss-boots-300-6b114bd07a644789a4d6102ea32ba3ab.jpg','@ABanderas','This is the text of the Blog'),(6,'A night in Tunisia','Tunisia','Moroco','https://www.collinsdictionary.com/images/full/tunisia_575037211_1000.jpg','2005-06-20','Dizzy Gillespie','https://www.blackpast.org/wp-content/uploads/prodimages/files/blackpast_images/Dizzy_Gillespie_New_York_ca_1947_Photo_by_William_Gottlieb_Public_Domain.jpg','@dizziness','This is the text of the Blog'),(7,'Going Royal!','London','UK','https://www.history.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTYyNDg1MjE3MTI1Mjc5Mzk4/topic-london-gettyimages-760251843-promo.jpg','2011-10-20','Gordon Summers','https://www.fr.de/bilder/2021/10/02/91027975/27217180-rockmusiker-sting-33e9.jpg','@Sting','This is the text of the Blog'),(8,'Fontane di Roma','Rome','Italy','https://www.tastingtable.com/img/gallery/14-foods-and-wines-you-have-to-try-in-rome-italy/intro-1667405524.jpg','2009-01-20','Wilhelm Dafoe','https://images.mubicdn.net/images/cast_member/822/cache-680-1546796690/image-w856.jpg','@gduendeverde','Blablablablabla');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-12 18:28:01
