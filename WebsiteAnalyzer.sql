-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: localhost    Database: WebsiteAnalyzer
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email` (
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES ('Aaa'),('Asd'),('yang-hong1994@outlook.com'),('fefe'),('asd'),('ineedev886@outlook.com'),(NULL),('123@gmail.com'),('yang-hong1994@outlook.com'),('yang-hong1994@outlook.com');
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maininfosample`
--

DROP TABLE IF EXISTS `maininfosample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maininfosample` (
  `webaddr` text,
  `dailytraffic` text,
  `bestselling` text,
  `fbcampaigns` text,
  `authorityscore` int(11) DEFAULT NULL,
  `backlinks` int(11) DEFAULT NULL,
  `domains` int(11) DEFAULT NULL,
  `ips` int(11) DEFAULT NULL,
  `followlinks` int(11) DEFAULT NULL,
  `nofollowlinks` int(11) DEFAULT NULL,
  `textlinks` int(11) DEFAULT NULL,
  `imagelinks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maininfosample`
--

LOCK TABLES `maininfosample` WRITE;
/*!40000 ALTER TABLE `maininfosample` DISABLE KEYS */;
INSERT INTO `maininfosample` VALUES ('elizabethrichards.com.au','606','https://www.elizabethrichards.com.au/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.elizabethrichards.com.au+/stories-keyword/intersect',38,1340,138,163,462,878,1270,70),('xobeautyshop.com','605','https://www.xobeautyshop.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.xobeautyshop.com+/stories-keyword/intersect',38,4487,338,350,2424,2063,4474,13),('globaltacticalsupply.com','605','https://www.globaltacticalsupply.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.globaltacticalsupply.com+/stories-keyword/intersect',38,595,158,214,244,351,584,10),('timex.com.mx','605','https://www.timex.com.mx/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.timex.com.mx+/stories-keyword/intersect',44,941,253,169,766,175,927,13),('ahlayn.com','605','https://www.ahlayn.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.ahlayn.com+/stories-keyword/intersect',14,167,45,55,123,44,136,31),('countrychicpaint.com','605','https://www.countrychicpaint.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.countrychicpaint.com+/stories-keyword/intersect',46,15655,1137,1372,12013,3631,11520,4131),('atouchofdazzle.com','605','https://www.atouchofdazzle.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.atouchofdazzle.com+/stories-keyword/intersect',21,443,70,82,230,213,407,36),('themanechoice.com','605','https://www.themanechoice.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.themanechoice.com+/stories-keyword/intersect',46,6818,754,891,3309,3509,6470,338),('ronniecoleman.net','605','https://www.ronniecoleman.net/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.ronniecoleman.net+/stories-keyword/intersect',43,38489,677,731,37219,1267,17166,21322),('discountdressshop.com','605','https://www.discountdressshop.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.discountdressshop.com+/stories-keyword/intersect',44,17174,757,937,4348,12826,14883,2290),('rockstarwigs.com','605','https://www.rockstarwigs.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.rockstarwigs.com+/stories-keyword/intersect',38,2152,298,370,1106,1046,2061,90),('obliqproduct.com','605','https://www.obliqproduct.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.obliqproduct.com+/stories-keyword/intersect',24,2701,139,171,2423,276,2565,136),('polene-paris.com','604','https://www.polene-paris.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.polene-paris.com+/stories-keyword/intersect',41,6643,534,612,3435,3208,6314,327),('zunior.com','604','https://www.zunior.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.zunior.com+/stories-keyword/intersect',38,360650,627,615,360270,380,31255,329395),('tiendageek.com.mx','604','https://www.tiendageek.com.mx/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.tiendageek.com.mx+/stories-keyword/intersect',4,55,4,5,52,3,54,1),('thinkpup.com','604','https://www.thinkpup.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.thinkpup.com+/stories-keyword/intersect',26,350,84,65,227,123,280,69),('auracrystals.com','604','https://www.auracrystals.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.auracrystals.com+/stories-keyword/intersect',38,6308,241,325,5415,893,5554,754),('mytopnotchproducts.com','604','https://www.mytopnotchproducts.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.mytopnotchproducts.com+/stories-keyword/intersect',8,90,12,13,84,6,65,25),('waisttrainingangels.com','604','https://www.waisttrainingangels.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.waisttrainingangels.com+/stories-keyword/intersect',10,300,35,50,65,235,295,4),('uguisustore.com','604','https://www.uguisustore.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.uguisustore.com+/stories-keyword/intersect',35,6255,206,238,6014,241,3991,2264),('commondeervt.com','604','https://www.commondeervt.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.commondeervt.com+/stories-keyword/intersect',35,669,183,154,597,72,522,147),('cutepuppyfashion.com','604','https://www.cutepuppyfashion.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.cutepuppyfashion.com+/stories-keyword/intersect',3,54,3,4,52,2,54,0),('golfanything.com','603','https://www.golfanything.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.golfanything.com+/stories-keyword/intersect',38,10015,301,387,8774,1241,10002,12),('funboy.com','603','https://www.funboy.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.funboy.com+/stories-keyword/intersect',45,5079,970,1125,3908,1171,4872,204),('treetribe.com','603','https://www.treetribe.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.treetribe.com+/stories-keyword/intersect',38,4136,311,345,3564,572,3699,422),('rollbacker.com','603','https://www.rollbacker.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.rollbacker.com+/stories-keyword/intersect',9,95,11,15,90,5,95,0),('emteboutique.com','603','https://www.emteboutique.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.emteboutique.com+/stories-keyword/intersect',23,140,43,47,121,19,137,2),('etchedwine.com','603','https://www.etchedwine.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.etchedwine.com+/stories-keyword/intersect',29,2325,252,375,398,1927,2252,73),('ericksonwoodworks.com','603','https://www.ericksonwoodworks.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.ericksonwoodworks.com+/stories-keyword/intersect',34,688,137,161,491,197,678,9),('level1productions.com','603','https://www.level1productions.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.level1productions.com+/stories-keyword/intersect',38,31970,428,529,31213,757,31813,156),('allinbeki.com','603','https://www.allinbeki.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.allinbeki.com+/stories-keyword/intersect',4,54,2,3,52,2,53,1),('erodingwinds.com','603','https://www.erodingwinds.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.erodingwinds.com+/stories-keyword/intersect',28,660,65,78,638,22,655,5),('lorenstewart.com','603','https://www.lorenstewart.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.lorenstewart.com+/stories-keyword/intersect',35,1293,240,292,1087,206,1244,48),('tamaramellon.com','603','https://www.tamaramellon.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.tamaramellon.com+/stories-keyword/intersect',49,15735,1153,1391,11731,4004,11430,4303),('4knines.com','603','https://www.4knines.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.4knines.com+/stories-keyword/intersect',38,9235,445,488,8120,1115,6733,2502),('iguanasell.co.uk','603','https://www.iguanasell.co.uk/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.iguanasell.co.uk+/stories-keyword/intersect',43,318975,86,96,318763,212,318955,19),('hawkinsandshepherd.com','603','https://www.hawkinsandshepherd.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.hawkinsandshepherd.com+/stories-keyword/intersect',28,764,156,178,613,151,719,44),('sungrubbies.com','603','https://www.sungrubbies.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.sungrubbies.com+/stories-keyword/intersect',42,3462,637,688,2487,975,3145,316),('revize.co','603','https://www.revize.co/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.revize.co+/stories-keyword/intersect',7,83,22,22,62,21,77,6),('namastevaporizers.com','603','https://www.namastevaporizers.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.namastevaporizers.com+/stories-keyword/intersect',40,33889,508,649,30115,3774,33355,533),('idroidnation.com','603','https://www.idroidnation.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.idroidnation.com+/stories-keyword/intersect',8,89,10,10,84,5,88,1),('txhumor.com','602','https://www.txhumor.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.txhumor.com+/stories-keyword/intersect',38,1805,330,454,975,830,1270,535),('thackernyc.com','601','https://www.thackernyc.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.thackernyc.com+/stories-keyword/intersect',19,836,76,97,615,221,830,6),('xlarge.com','600','https://www.xlarge.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.xlarge.com+/stories-keyword/intersect',40,7567,568,648,3723,3844,7421,145),('undiv1ded.com','599','https://www.undiv1ded.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.undiv1ded.com+/stories-keyword/intersect',7,63,7,11,62,1,63,0),('squeakerdogs.com','598','https://www.squeakerdogs.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.squeakerdogs.com+/stories-keyword/intersect',38,884,225,256,723,161,850,34),('vapo.co.nz','597','https://www.vapo.co.nz/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.vapo.co.nz+/stories-keyword/intersect',38,6210,320,405,5630,580,6118,91),('editstock.com','596','https://www.editstock.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.editstock.com+/stories-keyword/intersect',38,107601,214,235,106984,617,107288,313),('savearound.com','595','https://www.savearound.com/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.savearound.com+/stories-keyword/intersect',0,0,0,0,0,0,0,0),('lussobaby.ca','594','https://www.lussobaby.ca/collections/all?sort_by=best-selling','https://www.facebook.com/search/str/www.lussobaby.ca+/stories-keyword/intersect',0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `maininfosample` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-26 20:58:42
