-- MySQL dump 10.17  Distrib 10.3.17-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wobbs
-- ------------------------------------------------------
-- Server version	10.3.17-MariaDB-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `11_hobbies`
--

DROP TABLE IF EXISTS `11_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `11_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  `clicked` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `11_hobbies`
--

LOCK TABLES `11_hobbies` WRITE;
/*!40000 ALTER TABLE `11_hobbies` DISABLE KEYS */;
INSERT INTO `11_hobbies` VALUES (1,129,-1,-1,129,129,129,-1,-1);
/*!40000 ALTER TABLE `11_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `123_hobbies`
--

DROP TABLE IF EXISTS `123_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `123_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  `clicked` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `123_hobbies`
--

LOCK TABLES `123_hobbies` WRITE;
/*!40000 ALTER TABLE `123_hobbies` DISABLE KEYS */;
INSERT INTO `123_hobbies` VALUES (1,130,130,-1,-1,-1,-1,-1,-1);
/*!40000 ALTER TABLE `123_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ASD_hobbies`
--

DROP TABLE IF EXISTS `ASD_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ASD_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  `clicked` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ASD_hobbies`
--

LOCK TABLES `ASD_hobbies` WRITE;
/*!40000 ALTER TABLE `ASD_hobbies` DISABLE KEYS */;
INSERT INTO `ASD_hobbies` VALUES (1,116,-1,-1,-1,116,-1,-1,-1);
/*!40000 ALTER TABLE `ASD_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_hobbies`
--

DROP TABLE IF EXISTS `a_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  `clicked` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_hobbies`
--

LOCK TABLES `a_hobbies` WRITE;
/*!40000 ALTER TABLE `a_hobbies` DISABLE KEYS */;
/*!40000 ALTER TABLE `a_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hobbies`
--

DROP TABLE IF EXISTS `b_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  `clicked` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hobbies`
--

LOCK TABLES `b_hobbies` WRITE;
/*!40000 ALTER TABLE `b_hobbies` DISABLE KEYS */;
INSERT INTO `b_hobbies` VALUES (1,127,127,-1,127,127,-1,-1,-1),(2,118,118,-1,118,118,-1,-1,-1);
/*!40000 ALTER TABLE `b_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwd`
--

DROP TABLE IF EXISTS `passwd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(5000) DEFAULT NULL,
  `passwd` varchar(5000) DEFAULT NULL,
  `email` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwd`
--

LOCK TABLES `passwd` WRITE;
/*!40000 ALTER TABLE `passwd` DISABLE KEYS */;
INSERT INTO `passwd` VALUES (60,'刘春林','4e88051008d594e7fb50e74cee7591e47ffa9deeab55bcf8e10fd78083f0d68f','ydssbbnc@gmail.com'),(61,'ydssbbnc','4e88051008d594e7fb50e74cee7591e47ffa9deeab55bcf8e10fd78083f0d68f','ydssbbnc@gmail.com'),(62,'','4e88051008d594e7fb50e74cee7591e47ffa9deeab55bcf8e10fd78083f0d68f',''),(63,'19980204','3b796e1d5e2cea5e9f1224366221a6c066ff9fe7eaa664458618114e42f6ff32',''),(64,'大FA明家','4e88051008d594e7fb50e74cee7591e47ffa9deeab55bcf8e10fd78083f0d68f','ydssbbnc@gmail.com'),(67,'user8848','8353461ded0276b44d881951e614c2be5b5feea6c38c182e962cdd8b2003769a','user8848'),(68,'卢本伟','3b796e1d5e2cea5e9f1224366221a6c066ff9fe7eaa664458618114e42f6ff32',''),(69,'test1','1b4f0e9851971998e732078544c96b36c3d01cedf7caa332359d6f1d83567014','test1'),(70,'test2','60303ae22b998861bce3b28f33eec1be758a213c86c93c076dbe9f558c11c752','test2'),(71,'test3','fd61a03af4f77d870fc21e05e7e80678095c92d808cfb3b5c279ee04c74aca13',''),(72,'test4','a4e624d686e03ed2767c0abd85c14426b0b1157d2ce81d27bb4fe4f6f01d688a','test4'),(73,'test5','a140c0c1eda2def2b830363ba362aa4d7d255c262960544821f556e16661b6ff','test5'),(74,'test6','ed0cb90bdfa4f93981a7d03cff99213a86aa96a6cbcf89ec5e8889871f088727','test6'),(75,'test7','bd7c911264aae15b66d4291b6850829aa96986b1d3ead34d1fdbfef27056c112','test7'),(76,'test8','1f9bfeb15fee8a10c4d0711c7eb0c083962123e1918e461b6a508e7146c189b2','test8'),(77,'test10','ec2738feb2bbb0bc783eb4667903391416372ba6ed8b8dddbebbdb37e5102473','test10'),(78,'user9','0fb8d3c5dfaf81a387bf0ba439ab40e6343d2155fb4ddf6978a52d9b9ea8d0f8','user9'),(79,'test9','b4451034d3b6590060ce9484a28b88dd332a80a22ae8e39c9c5cb7357ab26c9f','test9'),(80,'test11','744ea9ec6fa0a83e9764b4e323d5be6b55a5accfc7fe4c08eab6a8de1fca4855','test11'),(81,'test12','a98ec5c5044800c88e862f007b98d89815fc40ca155d6ce7909530d792e909ce','test12'),(82,'test13','166fb78f0f44d271a2d9065272a67ba373c3266b59d85847c02ef695af0cbf3f',''),(83,'test14','40cca5cc13abf91c7d5a72c0aea9bcbea4108946e67f24c0c23003cbf307efa2',''),(84,'user15','2b8b66f64b605318593982b059a08dae101c0bdf5d8cb882a0891241a704f46c','user15'),(85,'123','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','123'),(86,'a','ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb','a'),(87,'b','3e23e8160039594a33894f6564e1b1348bbd7a0088d42c4acb73eeaed59c009d','b'),(88,'ASD','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',''),(89,'whoami','3b796e1d5e2cea5e9f1224366221a6c066ff9fe7eaa664458618114e42f6ff32','whoami'),(90,'wox','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','123'),(91,'qq','d5ce2b19fbda14a25deac948154722f33efd37b369a32be8f03ec2be8ef7d3a5','qq'),(92,'11','4fc82b26aecb47d2868c4efbe3581732a3e7cbcc6c2efb32062c08170a05eeb8','');
/*!40000 ALTER TABLE `passwd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(500) DEFAULT 'Anonymous',
  `title` varchar(5000) DEFAULT NULL,
  `paragraph` varchar(9000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  `clickNum` int(11) DEFAULT 0,
  `category` varchar(50) DEFAULT 'a',
  `replyNum` int(11) DEFAULT 0,
  `postDate` datetime DEFAULT '1970-01-01 00:00:00',
  `hotValue` decimal(20,15) DEFAULT 0.000000000000000,
  `shareNums` int(11) DEFAULT 0,
  `favoriteNums` int(11) DEFAULT 0,
  `likeNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (112,'19980204','你手机里用了超久的表情包是怎样的？','一般什么情况会用这个表情包呢？来来来，顺便让我收一波图图……',2,0,'a',0,'2019-08-18 23:27:37',1.033333333333333,2,2,0,0),(113,'19980204','为什么江南越写越烂？','',1,0,'a',0,'2019-08-18 23:28:09',0.783333333333333,2,0,0,0),(114,'19980204','你听到过哪些好听的名字？','',0,0,'a',0,'2019-08-18 23:28:24',0.533333333333333,0,0,0,1),(115,'19980204','为什么哪吒的哥哥叫金吒木吒，而哪吒叫哪吒？','',0,0,'a',1,'2019-08-18 23:29:06',0.950000000000000,1,0,0,0),(116,'19980204','为什么rng上单一个接一个垮掉？','',5,0,'a',4,'2019-08-18 23:29:27',2.700000000000000,4,7,0,2),(117,'19980204','据报道，林书豪无限接近加盟北京队，你有什么想说的？','据林书豪团队的说法，林书豪目前还没有与CBA队伍达成签约意向。\r\n\r\n国内篮球记者宋翔报道，消息源透露，林书豪无限接近北京首钢队。\r\n\r\n“北京青年报记者18日获悉，北京首钢队无限接近签约林书豪。双方近期谈地比较顺利，达成了签约意向。但还未最终落笔。相\r\n关信息表示，这次促成林书豪加盟北京首钢队的几点原因是：第一林书豪想要在CBA打球，这一点十分重要。第二北京首钢队在\r\n谈判中十分真诚，这也打动了林书豪。第三是北京是个大城市，北京首钢队是联盟的强队。相关人士对北青报透露，双方已经无\r\n限接近签约，虽然双方还未落笔签字，但是预计很快就会签约。”宋翔在微博上写道。\r\n\r\n据篮球记者贾磊之前的报道，林书豪正在认真考虑加盟CBA球队。',0,0,'a',0,'2019-08-18 23:29:47',0.783333333333333,1,0,0,0),(118,'19980204','如何评价 Ti9 小组赛 LGD 2:0 击败秘密？\r\n','精彩！',0,0,'a',1,'2019-08-18 23:30:04',5.550000000000000,15,4,1,0),(119,'19980204','如果赚了一个亿你们还会上学吗?','',3,0,'a',1,'2019-08-18 23:30:21',0.950000000000000,2,2,0,0),(120,'ydssbbnc','如何用一句话激怒耳机烧友？','',0,0,'a',0,'2019-08-18 23:34:01',0.533333333333333,0,0,0,0),(121,'ydssbbnc','如果我获得了时停能力，但只能停止 0.1 秒，我能干什么？','',0,0,'a',0,'2019-08-18 23:35:35',1.033333333333333,2,0,0,0),(122,'19980204','游戏主播干过哪些恶心人的事？','',0,0,'a',0,'2019-08-18 23:37:48',0.533333333333333,0,0,0,1),(123,'19980204','6种form表单提交方式','无刷新页面提交表单\r\n表单可实现无刷新页面提交，无需页面跳转，如下，通过一个隐藏的iframe实现，form\r\n表单的target设置为iframe的name名称，\r\nform提交目标位当前页面iframe则不会刷新页面\r\n\r\n<form action=\"/url.do\" method=\"post\" target=\"targetIfr\">\r\n<input type=\"text\" name=\"name\"/>\r\n</form>   \r\n<iframe name=\"targetIfr\" style=\"display:none\"></iframe> \r\n              \r\n通过type=submit提交\r\n一般表单提交通过type=submit实现，input type=\"submit\",浏览器显示为button按钮，\r\n通过点击这个按钮提交表单数据跳转到/url.do\r\n\r\n<form action=\"/url.do\" method=\"post\">\r\n   <input type=\"text\" name=\"name\"/>\r\n   <input type=\"submit\" value=\"提交\">\r\n</form>\r\n              \r\njs提交form表单\r\njs事件触发表单提交，通过button、链接等触发事件，js调用submit()方法提交表单数\r\n据，jquery通过submit()方法\r\n\r\n<form id=\"form\" action=\"/url.do\" method=\"post\">\r\n   <input type=\"text\" name=\"name\"/>\r\n</form>\r\n              \r\njs: document.getElementById(\"form\").submit();\r\njquery: $(\"#form\").submit();\r\n\r\najax异步提交表单数据\r\n采用ajax异步方式，通过js获取form中所有input、select等组件的值，将这些值组成\r\nJson格式，通过异步的方式与服务器端进行交互，\r\n一般将表单数据传送给服务器端，服务器端处理数据并返回结果信息等\r\n\r\n<form id=\"form\"  method=\"post\">\r\n   <input type=\"text\" name=\"name\" id=\"name\"/>\r\n</form>\r\n  var params = {\"name\", $(\"#name\").val()}\r\n $.ajax({\r\n      type: \"POST\",\r\n      url: \"/url.do\",\r\n      data: params,\r\n      dataType : \"json\",\r\n      success: function(respMsg){\r\n      }\r\n   });\r\n              \r\n页面无跳转\r\n如果通过form表单提交请求服务端去下载文件，这时当前页面不会发生跳转，服务端返\r\n回void，通过response 去写文件数据，\r\n页面会显示下载文件。\r\n\r\n<form action=\"/url.do\" method=\"post\">\r\n   <input type=\"text\" name=\"name\"/>\r\n   <input type=\"submit\" value=\"提交\">\r\n</form>\r\n\r\n@RequestMapping(value = \"/url\")\r\n    public void exportFile(HttpServletRequest req, HttpServletResponse \r\nresponse, String rptId)\r\n            throws Exception {\r\n        OutputStream out = null;\r\n        try {\r\n            String rptName = \"file\";\r\n            String fileName = new String((rptName + \r\nexcelAble.getFileSuffix()).getBytes(\"GBK\"),\r\n                    \"8859_1\");\r\n            response.reset();\r\n            response.setContentType(\"application/octec-stream\");\r\n            response.setHeader(\"Content-disposition\", \"attachment; filename=\" \r\n+ fileName);\r\n            out = response.getOutputStream();\r\n            excelAble.exportFile(out);\r\n        } catch (Exception e) {\r\n            logger.error(e);\r\n        } finally {\r\n            if (out != null) {\r\n                out.close();\r\n            }\r\n        }\r\n    }\r\n              \r\nform表单上传文件\r\n使用form表单进行上传文件需要为form添加enctype=\"multipart/form-data\" 属性，除\r\n此之外还需要将表单的提交方法改成post,\r\n如下 method=\"post\", input type的类型需要设置为file\r\n\r\n <form action=\"/url.do\" enctype=\"multipart/form-data\" method=\"post\">\r\n     <input type=\"file\" name=\"name\"/>\r\n     <input type=\"submit\" value=\"提交\">\r\n   </form>',1,0,'front-end',0,'2019-08-19 17:41:32',1.858333333333333,1,2,0,1),(124,'19980204','6种form表单提交方式','{无刷新页面提交表单\r\n表单可实现无刷新页面提交，无需页面跳转，如下，通过一个隐藏的iframe实现，form\r\n表单的target设置为iframe的name名称，\r\nform提交目标位当前页面iframe则不会刷新页面\r\n\r\n<form action=\"/url.do\" method=\"post\" target=\"targetIfr\">\r\n<input type=\"text\" name=\"name\"/>\r\n</form>   \r\n<iframe name=\"targetIfr\" style=\"display:none\"></iframe> \r\n          \r\n通过type=submit提交\r\n一般表单提交通过type=submit实现，input type=\"submit\",浏览器显示为button按钮，\r\n通过点击这个按钮提交表单数据跳转到/url.do\r\n\r\n<form action=\"/url.do\" method=\"post\">\r\n   <input type=\"text\" name=\"name\"/>\r\n   <input type=\"submit\" value=\"提交\">\r\n</form>\r\n              \r\njs提交form表单\r\njs事件触发表单提交，通过button、链接等触发事件，js调用submit()方法提交表单数\r\n据，jquery通过submit()方法\r\n\r\n<form id=\"form\" action=\"/url.do\" method=\"post\">\r\n   <input type=\"text\" name=\"name\"/>\r\n</form>\r\n              \r\njs: document.getElementById(\"form\").submit();\r\njquery: $(\"#form\").submit();\r\n\r\najax异步提交表单数据\r\n采用ajax异步方式，通过js获取form中所有input、select等组件的值，将这些值组成\r\nJson格式，通过异步的方式与服务器端进行交互，\r\n一般将表单数据传送给服务器端，服务器端处理数据并返回结果信息等\r\n\r\n<form id=\"form\"  method=\"post\">\r\n   <input type=\"text\" name=\"name\" id=\"name\"/>\r\n</form>\r\n  var params = {\"name\", $(\"#name\").val()}\r\n $.ajax({\r\n      type: \"POST\",\r\n      url: \"/url.do\",\r\n      data: params,\r\n      dataType : \"json\",\r\n      success: function(respMsg){\r\n      }\r\n   });\r\n              \r\n页面无跳转\r\n如果通过form表单提交请求服务端去下载文件，这时当前页面不会发生跳转，服务端返\r\n回void，通过response 去写文件数据，\r\n页面会显示下载文件。\r\n\r\n<form action=\"/url.do\" method=\"post\">\r\n   <input type=\"text\" name=\"name\"/>\r\n   <input type=\"submit\" value=\"提交\">\r\n</form>\r\n\r\n@RequestMapping(value = \"/url\")\r\n    public void exportFile(HttpServletRequest req, HttpServletResponse \r\nresponse, String rptId)\r\n            throws Exception {\r\n        OutputStream out = null;\r\n        try {\r\n            String rptName = \"file\";\r\n            String fileName = new String((rptName + \r\nexcelAble.getFileSuffix()).getBytes(\"GBK\"),\r\n                    \"8859_1\");\r\n            response.reset();\r\n            response.setContentType(\"application/octec-stream\");\r\n            response.setHeader(\"Content-disposition\", \"attachment; filename=\" \r\n+ fileName);\r\n            out = response.getOutputStream();\r\n            excelAble.exportFile(out);\r\n        } catch (Exception e) {\r\n            logger.error(e);\r\n        } finally {\r\n            if (out != null) {\r\n                out.close();\r\n            }\r\n        }\r\n    }\r\n              \r\nform表单上传文件\r\n使用form表单进行上传文件需要为form添加enctype=\"multipart/form-data\" 属性，除\r\n此之外还需要将表单的提交方法改成post,\r\n如下 method=\"post\", input type的类型需要设置为file\r\n\r\n <form action=\"/url.do\" enctype=\"multipart/form-data\" method=\"post\">\r\n     <input type=\"file\" name=\"name\"/>\r\n     <input type=\"submit\" value=\"提交\">\r\n   </form>}',0,0,'front-end',0,'2019-08-19 17:43:38',1.358333333333333,0,0,0,1),(125,'Anonymous','如何看待最近因为黄晓明而兴起的「明学」？有哪些特点？','就是黄晓明说过的话，被网友恶搞了。',3,0,'明学',19,'2019-08-20 13:09:02',6.408333333333333,6,4,3,2),(126,'test14','直来直往\r\n\r\n孙燕姿','我跟人群逆向在街上\r\n从道路的两旁转小巷\r\n在一栋被废弃的工厂墙上\r\n喔涂鸦小时候单纯的愿望穿白纱当新娘\r\n嘿我又绕到广场看一看\r\n闹区的电视墙在歌唱\r\n歌词内容跟我的心情很像\r\n喔我一个人站在红绿灯前看天上看天上\r\n我继续在街上晃一晃\r\n花店的落地窗很漂亮\r\n确定了感情应该走的方向\r\n爱可以是一种习惯单纯的喜欢\r\n对爱恨欣赏直来直往\r\n有一种勇敢叫做原谅\r\n在回家的路上想一想\r\n爱如果变难堪就要放\r\n感情的事没有标准的答案\r\n但欠人家的你一定就得还\r\n注意踩到狗尾巴就像触电一样\r\n千万别攻击别人最脆弱的地方\r\n在餐厅打破玻璃杯也别慌张\r\n碎碎平安保持仪态准备付帐\r\n就算看到恐怖画面先故作坚强\r\n嘴唇发紫脸色发青干脆扑到你肩膀\r\n看电影感动就哭好笑就笑以免得内伤\r\n如果男朋友偷瞄辣妹流口水\r\n揍他几拳捏他一把问他懂不懂欣赏\r\n对爱恨欣赏直来直往\r\n有一种勇敢叫做原谅\r\n我还在跟人群逆向在街上\r\n从道路的两旁转小巷\r\n在一栋被废弃的工厂墙上\r\n喔涂鸦我对你的种种不满你自己看着办\r\n嘿我又绕到广场看一看\r\n闹区的电视墙在歌唱\r\n歌词内容跟我的心情很像\r\n喔我一个人站在红绿灯前看天上\r\n我看天上\r\n仰天上\r\n来来来来一起看天上',2,0,'lyrics',9,'2019-08-20 22:11:54',3.116666666666667,2,2,0,1),(127,'test14','直来直往 孙燕姿','我跟人群逆向在街上<br> 从道路的两旁转小巷 <br>在一栋被废弃的工厂墙上 \r\n<br>喔涂鸦小时候单纯的愿望穿白纱当新娘 <br>嘿我又绕到广场看一看<br> 闹区\r\n的电视墙在歌唱 <br>歌词内容跟我的心情很像 <br>喔我一个人站在红绿灯前看天\r\n上看天上<br> 我继续在街上晃一晃<br> 花店的落地窗很漂亮<br> 确定了感情应\r\n该走的方向 <br>爱可以是一种习惯单纯的喜欢<br> 对爱恨欣赏直来直往 有一种\r\n勇敢叫做原谅 <br>在回家的路上想一想<br> 爱如果变难堪就要放<br> 感情的事\r\n没有标准的答案<br> 但欠人家的你一定就得还<br> 注意踩到狗尾巴就像触电一样 \r\n<br>千万别攻击别人最脆弱的地方 <br>在餐厅打破玻璃杯也别慌张<br> 碎碎平安\r\n保持仪态准备付帐 <br>就算看到恐怖画面先故作坚强 <br>嘴唇发紫脸色发青干脆\r\n扑到你肩膀 <br>看电影感动就哭好笑就笑以免得内伤 <br>如果男朋友偷瞄辣妹流\r\n口水<br> 揍他几拳捏他一把问他懂不懂欣赏<br> 对爱恨欣赏直来直往 <br>有一\r\n种勇敢叫做原谅<br> 我还在跟人群逆向在街上<br> 从道路的两旁转小巷<br> 在\r\n一栋被废弃的工厂墙上 <br>喔涂鸦我对你的种种不满你自己看着办 <br>嘿我又绕\r\n到广场看一看<br> 闹区的电视墙在歌唱 歌词内容跟我的心情很像<br> 喔我一个\r\n人站在红绿灯前看天上 <br>我看天上 <br>仰天上 <br>来来来来一起看天上',0,0,'lyrics',0,'2019-08-20 22:16:34',1.816666666666667,1,1,2,1),(128,'user15','sfsd','dfsafas',0,0,'a',0,'2019-08-20 22:32:25',1.116666666666667,0,0,0,0),(129,'user15','ssf','fdfas',1,0,'a',1,'2019-08-20 22:58:18',1.633333333333333,1,1,1,0),(130,'123','123','123',0,0,'a',1,'2019-08-20 23:40:54',1.975000000000000,0,0,7,0),(131,'whoami','喜剧之王<br>','李荣浩',0,0,'李荣浩/喜剧之王',0,'2019-08-25 16:56:26',0.166666666666667,0,0,0,0),(132,'卢本伟','我没有开挂，都是朋友开的挂','',0,0,'过世主播',0,'2019-08-26 11:12:59',0.200083333333333,0,0,0,0),(133,'11','ff','ff',0,0,'a',0,'2019-08-26 11:53:07',0.005333333333333,0,0,0,0);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qq_hobbies`
--

DROP TABLE IF EXISTS `qq_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qq_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  `clicked` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qq_hobbies`
--

LOCK TABLES `qq_hobbies` WRITE;
/*!40000 ALTER TABLE `qq_hobbies` DISABLE KEYS */;
INSERT INTO `qq_hobbies` VALUES (1,125,125,-1,125,125,125,-1,-1),(2,114,-1,114,-1,-1,-1,-1,-1);
/*!40000 ALTER TABLE `qq_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_112`
--

DROP TABLE IF EXISTS `reply_112`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_112` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_112`
--

LOCK TABLES `reply_112` WRITE;
/*!40000 ALTER TABLE `reply_112` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_112` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_113`
--

DROP TABLE IF EXISTS `reply_113`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_113` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_113`
--

LOCK TABLES `reply_113` WRITE;
/*!40000 ALTER TABLE `reply_113` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_113` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_114`
--

DROP TABLE IF EXISTS `reply_114`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_114` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_114`
--

LOCK TABLES `reply_114` WRITE;
/*!40000 ALTER TABLE `reply_114` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_114` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_115`
--

DROP TABLE IF EXISTS `reply_115`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_115` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_115`
--

LOCK TABLES `reply_115` WRITE;
/*!40000 ALTER TABLE `reply_115` DISABLE KEYS */;
INSERT INTO `reply_115` VALUES (1,'ydssbbnc',0,0,0,'2019-08-18 15:34:49',-1,'三人的原名分别是金，军荼利明王，木，波罗提木叉，哪，哪吒俱伐罗，或者译作 那罗鸠婆。意思分别是金，宝瓶(装甘露的)，也叫甘露明王。所谓甘露，有点类似西王母不死药，道教的金丹那意思。木，随顺解脱，又叫戒本，可以理解为就是佛教戒律的意思。哪，俱毗罗之子。俱毗罗就是毗沙门天王，又叫北方多闻天王。就是字面意思，毗沙门天王之子，也有说是孙子的。这三位两个是密教神，唐朝末期密教盛行，毗沙门天王被唐宋的军人奉为战神，形象是一手托宝塔，一手持戟。后来又随佛教传入日本。哪吒作为毗沙门天王的副神，在中国民间流行开来，后来又被道教收编为护法神。卫国公李靖因为军功赫赫，在民间后来也被神话了，不知何时和毗沙门天的形象合流了，成了托塔李天王。哪吒就这样成了李靖的儿子。木叉是唐朝高僧僧伽的弟子，民间认为僧伽是观音菩萨的化身，所以木叉也就成了观音的大弟子。传说里僧伽的弟子还有叫惠俨，惠岸。所以西游记里的木叉也叫惠岸行者，使一杆混铁棒，常侍观音左右。僧伽生前主要在唐朝泗州活动，被后人奉为泗州大圣。民间又有泗州大圣降伏巫支祁的传说。巫支祁据说是孙悟空的原型之一。所以西游记里孙悟空一闹情绪，观音菩萨就得出场。这就说远了。毗沙门天王有五子，具体是哪些说法不一，其中一个说法里长子是甘露太子，认为甘露太子就是甘露明王。比较确定的是毗沙门天王二子叫独健太子，有说法他是二郎神形象的来源之一。所以电视剧里把二郎神和哪吒搞成兄弟，是做过功课的，不是纯瞎几把编。',0);
/*!40000 ALTER TABLE `reply_115` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_116`
--

DROP TABLE IF EXISTS `reply_116`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_116` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_116`
--

LOCK TABLES `reply_116` WRITE;
/*!40000 ALTER TABLE `reply_116` DISABLE KEYS */;
INSERT INTO `reply_116` VALUES (1,'user15',0,0,0,'2019-08-20 15:37:10',-1,'fffffffffffffffff',0),(2,'user15',0,0,0,'2019-08-20 15:37:10',-1,'fffffffffffffffff',0),(3,'a',0,0,0,'2019-08-21 01:00:56',-1,'aaaaaaaaaaaaaaaaaaaaaaa',0),(4,'ASD',0,0,0,'2019-08-25 08:31:14',-1,'？》》',0);
/*!40000 ALTER TABLE `reply_116` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_117`
--

DROP TABLE IF EXISTS `reply_117`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_117` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_117`
--

LOCK TABLES `reply_117` WRITE;
/*!40000 ALTER TABLE `reply_117` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_117` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_118`
--

DROP TABLE IF EXISTS `reply_118`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_118` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_118`
--

LOCK TABLES `reply_118` WRITE;
/*!40000 ALTER TABLE `reply_118` DISABLE KEYS */;
INSERT INTO `reply_118` VALUES (1,'Anonymous',0,0,0,'2019-08-25 08:22:16',-1,'sfsfsakfkj',0);
/*!40000 ALTER TABLE `reply_118` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_119`
--

DROP TABLE IF EXISTS `reply_119`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_119` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_119`
--

LOCK TABLES `reply_119` WRITE;
/*!40000 ALTER TABLE `reply_119` DISABLE KEYS */;
INSERT INTO `reply_119` VALUES (1,'ydssbbnc',0,0,0,'2019-08-18 15:31:15',-1,'真有一个亿，上学？上班？你这是在搞笑吗？假设一下一个家庭有一个亿一个月消费5w.一年60w.按照80年一生算才花了4800w一家三口一个月5w的家庭消费应该算是较高消了吧还有5200w可以自己家买两套房两三辆车1200w可以再二线城市买怎么样的心里清楚吧还有4000w可以投资，可以买房出租，可以自己开公司做老板我不清楚这个这种有了一个亿就算活到自然死都是荣华富贵的为什么还要去读书而且投资出来的东西也算是增值产业看到楼下说被偷走？你有一个亿身家的人走在路上都是被人唯马是瞻真的有人敢偷，小数可以不追究，数字大了怎么死的都不知道更何况一个亿我放在家里让你随便偷？支付宝余额宝之前1w一天一块。现在好像少了4000w一天就4k了当然真的有钱应该也不会说只是放支付宝更多的想要钱生钱做资本家的事有些人说还回去上学，每个人都有每个人的观点想法，但是真的钱到手了呢，有多少人中了彩票头奖直接辞职自己创业或玩去。学无止境是对的，但是有钱了还读书，虽然说可以有更好的学习资源，但是剩下99.999%的钱养起来吗？有钱了你去做生意，去做基金股票，去各地玩耍，何尝又不是长见识的一种方式消费水平会随着钱的变多而膨胀，更何况是一下子有了一个亿，买了房买了车再出去玩一下其实一下子就平静下来想着怎么靠这笔钱继续生钱了并且随着生活水平提高，物价增长，金钱贬值。相对应的钱所能生的钱也会很多。下一代的当然还是该读书的读书（其实出国留学也不会很贵，稍微有点钱的家庭都能承担，详情知乎搜索）以后继承产业，完全可以代代生钱下去（败家子除外）以上我个人观点，或者说如果我有钱了我就是会这样做',0);
/*!40000 ALTER TABLE `reply_119` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_120`
--

DROP TABLE IF EXISTS `reply_120`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_120` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_120`
--

LOCK TABLES `reply_120` WRITE;
/*!40000 ALTER TABLE `reply_120` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_120` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_121`
--

DROP TABLE IF EXISTS `reply_121`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_121` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_121`
--

LOCK TABLES `reply_121` WRITE;
/*!40000 ALTER TABLE `reply_121` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_121` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_122`
--

DROP TABLE IF EXISTS `reply_122`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_122` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_122`
--

LOCK TABLES `reply_122` WRITE;
/*!40000 ALTER TABLE `reply_122` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_122` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_123`
--

DROP TABLE IF EXISTS `reply_123`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_123` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_123`
--

LOCK TABLES `reply_123` WRITE;
/*!40000 ALTER TABLE `reply_123` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_123` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_124`
--

DROP TABLE IF EXISTS `reply_124`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_124` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_124`
--

LOCK TABLES `reply_124` WRITE;
/*!40000 ALTER TABLE `reply_124` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_124` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_125`
--

DROP TABLE IF EXISTS `reply_125`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_125` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_125`
--

LOCK TABLES `reply_125` WRITE;
/*!40000 ALTER TABLE `reply_125` DISABLE KEYS */;
INSERT INTO `reply_125` VALUES (1,'test4',0,0,0,'2019-08-20 15:16:54',-1,'dfafsa',0),(2,'test4',0,0,0,'2019-08-20 15:16:54',-1,'dfafsa',0),(3,'test4',0,0,0,'2019-08-20 15:17:11',-1,'dfsafasf',0),(4,'test4',0,0,0,'2019-08-20 15:17:11',-1,'dfsafasf',0),(5,'user15',0,0,0,'2019-08-20 15:29:57',-1,'不知道　',0),(6,'user15',0,0,0,'2019-08-20 15:29:57',-1,'不知道　',0),(7,'a',0,0,0,'2019-08-20 15:45:38',-1,'aaa',0),(8,'a',0,0,0,'2019-08-20 15:45:38',-1,'aaa',0),(9,'a',0,0,0,'2019-08-20 15:45:47',-1,'f',0),(10,'a',0,0,0,'2019-08-20 15:45:47',-1,'f',0),(11,'a',0,0,0,'2019-08-20 15:52:20',-1,'xxx',0),(12,'a',0,0,0,'2019-08-20 15:54:33',-1,'aaa',0),(13,'a',0,0,0,'2019-08-20 15:54:33',-1,'aaa',0),(14,'a',0,0,0,'2019-08-20 15:54:46',-1,'zxcv',0),(15,'a',0,0,0,'2019-08-20 15:54:46',-1,'zxcv',0),(16,'a',0,0,0,'2019-08-20 15:56:11',-1,'dfsafsadf',0),(17,'qq',0,0,0,'2019-08-25 13:06:34',-1,'ddddddddddddddddddddddddddddd',0),(18,'qq',0,0,0,'2019-08-25 13:06:35',-1,'ddddddddddddddddddddddddddddd',0),(19,'qq',0,0,0,'2019-08-25 13:06:36',-1,'ddddddddddddddddddddddddddddd',0);
/*!40000 ALTER TABLE `reply_125` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_126`
--

DROP TABLE IF EXISTS `reply_126`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_126` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_126`
--

LOCK TABLES `reply_126` WRITE;
/*!40000 ALTER TABLE `reply_126` DISABLE KEYS */;
INSERT INTO `reply_126` VALUES (1,'user15',0,0,0,'2019-08-20 15:30:50',-1,'写得好\r\n\\n',0),(2,'user15',0,0,0,'2019-08-20 15:30:50',-1,'写得好\r\n\\n',0),(3,'user15',0,0,0,'2019-08-20 15:30:56',-1,'sdfaf',0),(4,'user15',0,0,0,'2019-08-20 15:30:56',-1,'sdfaf',0),(5,'user15',0,0,0,'2019-08-20 15:31:05',-1,'safaaaaaaaaaaaaaaaaaaaaaaaaaaa',0),(6,'user15',0,0,0,'2019-08-20 15:31:05',-1,'safaaaaaaaaaaaaaaaaaaaaaaaaaaa',0),(7,'user15',0,0,0,'2019-08-20 15:35:30',-1,'孙孙',0),(8,'user15',0,0,0,'2019-08-20 15:35:30',-1,'孙孙',0),(9,'123',0,0,0,'2019-08-20 15:43:56',-1,'1',0);
/*!40000 ALTER TABLE `reply_126` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_127`
--

DROP TABLE IF EXISTS `reply_127`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_127` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_127`
--

LOCK TABLES `reply_127` WRITE;
/*!40000 ALTER TABLE `reply_127` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_127` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_128`
--

DROP TABLE IF EXISTS `reply_128`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_128` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_128`
--

LOCK TABLES `reply_128` WRITE;
/*!40000 ALTER TABLE `reply_128` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_128` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_129`
--

DROP TABLE IF EXISTS `reply_129`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_129` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_129`
--

LOCK TABLES `reply_129` WRITE;
/*!40000 ALTER TABLE `reply_129` DISABLE KEYS */;
INSERT INTO `reply_129` VALUES (1,'11',0,0,0,'2019-08-26 03:54:55',-1,'fsdfs',0);
/*!40000 ALTER TABLE `reply_129` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_130`
--

DROP TABLE IF EXISTS `reply_130`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_130` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_130`
--

LOCK TABLES `reply_130` WRITE;
/*!40000 ALTER TABLE `reply_130` DISABLE KEYS */;
INSERT INTO `reply_130` VALUES (1,'123',0,0,0,'2019-08-20 15:42:10',-1,'666',0);
/*!40000 ALTER TABLE `reply_130` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_131`
--

DROP TABLE IF EXISTS `reply_131`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_131` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_131`
--

LOCK TABLES `reply_131` WRITE;
/*!40000 ALTER TABLE `reply_131` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_131` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_132`
--

DROP TABLE IF EXISTS `reply_132`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_132` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_132`
--

LOCK TABLES `reply_132` WRITE;
/*!40000 ALTER TABLE `reply_132` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_132` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_133`
--

DROP TABLE IF EXISTS `reply_133`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_133` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT 'Anonymous',
  `likeNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  `dissNum` int(11) DEFAULT 0,
  `replyDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `parentId` int(11) DEFAULT -1,
  `contents` varchar(7000) DEFAULT NULL,
  `reportNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_133`
--

LOCK TABLES `reply_133` WRITE;
/*!40000 ALTER TABLE `reply_133` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply_133` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test1`
--

DROP TABLE IF EXISTS `test1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test1`
--

LOCK TABLES `test1` WRITE;
/*!40000 ALTER TABLE `test1` DISABLE KEYS */;
/*!40000 ALTER TABLE `test1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test10_hobbies`
--

DROP TABLE IF EXISTS `test10_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test10_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  `clicked` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test10_hobbies`
--

LOCK TABLES `test10_hobbies` WRITE;
/*!40000 ALTER TABLE `test10_hobbies` DISABLE KEYS */;
INSERT INTO `test10_hobbies` VALUES (1,116,-1,-1,116,-1,-1,-1,-1);
/*!40000 ALTER TABLE `test10_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test11_hobbies`
--

DROP TABLE IF EXISTS `test11_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test11_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  `clicked` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test11_hobbies`
--

LOCK TABLES `test11_hobbies` WRITE;
/*!40000 ALTER TABLE `test11_hobbies` DISABLE KEYS */;
INSERT INTO `test11_hobbies` VALUES (1,125,-1,125,-1,-1,-1,-1,-1),(2,122,-1,122,-1,-1,-1,-1,-1);
/*!40000 ALTER TABLE `test11_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test12_hobbies`
--

DROP TABLE IF EXISTS `test12_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test12_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  `clicked` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test12_hobbies`
--

LOCK TABLES `test12_hobbies` WRITE;
/*!40000 ALTER TABLE `test12_hobbies` DISABLE KEYS */;
INSERT INTO `test12_hobbies` VALUES (1,125,-1,-1,125,125,125,-1,-1),(2,113,-1,-1,113,-1,113,-1,-1);
/*!40000 ALTER TABLE `test12_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test13_hobbies`
--

DROP TABLE IF EXISTS `test13_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test13_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  `clicked` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test13_hobbies`
--

LOCK TABLES `test13_hobbies` WRITE;
/*!40000 ALTER TABLE `test13_hobbies` DISABLE KEYS */;
INSERT INTO `test13_hobbies` VALUES (1,120,-1,-1,120,-1,-1,-1,-1);
/*!40000 ALTER TABLE `test13_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test14_hobbies`
--

DROP TABLE IF EXISTS `test14_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test14_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  `clicked` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test14_hobbies`
--

LOCK TABLES `test14_hobbies` WRITE;
/*!40000 ALTER TABLE `test14_hobbies` DISABLE KEYS */;
INSERT INTO `test14_hobbies` VALUES (1,126,-1,126,-1,-1,-1,-1,-1),(2,127,127,127,127,127,127,-1,-1);
/*!40000 ALTER TABLE `test14_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test1_hobbies`
--

DROP TABLE IF EXISTS `test1_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test1_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test1_hobbies`
--

LOCK TABLES `test1_hobbies` WRITE;
/*!40000 ALTER TABLE `test1_hobbies` DISABLE KEYS */;
INSERT INTO `test1_hobbies` VALUES (1,125,-1,-1,125,125,125,-1);
/*!40000 ALTER TABLE `test1_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test2_hobbies`
--

DROP TABLE IF EXISTS `test2_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test2_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test2_hobbies`
--

LOCK TABLES `test2_hobbies` WRITE;
/*!40000 ALTER TABLE `test2_hobbies` DISABLE KEYS */;
/*!40000 ALTER TABLE `test2_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test3_hobbies`
--

DROP TABLE IF EXISTS `test3_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test3_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test3_hobbies`
--

LOCK TABLES `test3_hobbies` WRITE;
/*!40000 ALTER TABLE `test3_hobbies` DISABLE KEYS */;
INSERT INTO `test3_hobbies` VALUES (1,116,-1,116,116,116,116,-1);
/*!40000 ALTER TABLE `test3_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test4_hobbies`
--

DROP TABLE IF EXISTS `test4_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test4_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test4_hobbies`
--

LOCK TABLES `test4_hobbies` WRITE;
/*!40000 ALTER TABLE `test4_hobbies` DISABLE KEYS */;
INSERT INTO `test4_hobbies` VALUES (1,125,-1,125,125,125,125,-1);
/*!40000 ALTER TABLE `test4_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test5_hobbies`
--

DROP TABLE IF EXISTS `test5_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test5_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test5_hobbies`
--

LOCK TABLES `test5_hobbies` WRITE;
/*!40000 ALTER TABLE `test5_hobbies` DISABLE KEYS */;
INSERT INTO `test5_hobbies` VALUES (1,124,124,-1,-1,-1,-1,-1),(2,123,-1,123,123,123,123,-1);
/*!40000 ALTER TABLE `test5_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test6_hobbies`
--

DROP TABLE IF EXISTS `test6_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test6_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test6_hobbies`
--

LOCK TABLES `test6_hobbies` WRITE;
/*!40000 ALTER TABLE `test6_hobbies` DISABLE KEYS */;
/*!40000 ALTER TABLE `test6_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test7_hobbies`
--

DROP TABLE IF EXISTS `test7_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test7_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test7_hobbies`
--

LOCK TABLES `test7_hobbies` WRITE;
/*!40000 ALTER TABLE `test7_hobbies` DISABLE KEYS */;
/*!40000 ALTER TABLE `test7_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test8_hobbies`
--

DROP TABLE IF EXISTS `test8_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test8_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  `clicked` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test8_hobbies`
--

LOCK TABLES `test8_hobbies` WRITE;
/*!40000 ALTER TABLE `test8_hobbies` DISABLE KEYS */;
INSERT INTO `test8_hobbies` VALUES (1,125,125,-1,-1,-1,-1,-1,-1);
/*!40000 ALTER TABLE `test8_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test9_hobbies`
--

DROP TABLE IF EXISTS `test9_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test9_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  `clicked` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test9_hobbies`
--

LOCK TABLES `test9_hobbies` WRITE;
/*!40000 ALTER TABLE `test9_hobbies` DISABLE KEYS */;
INSERT INTO `test9_hobbies` VALUES (1,125,125,-1,-1,-1,-1,-1,-1),(2,116,-1,116,-1,-1,-1,-1,-1),(3,121,121,-1,121,121,121,-1,-1);
/*!40000 ALTER TABLE `test9_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user15_hobbies`
--

DROP TABLE IF EXISTS `user15_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user15_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  `clicked` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user15_hobbies`
--

LOCK TABLES `user15_hobbies` WRITE;
/*!40000 ALTER TABLE `user15_hobbies` DISABLE KEYS */;
INSERT INTO `user15_hobbies` VALUES (1,113,-1,-1,113,-1,-1,-1,-1),(2,112,112,112,-1,-1,-1,-1,-1),(3,117,-1,-1,-1,-1,-1,-1,-1),(4,125,-1,-1,-1,-1,-1,-1,-1);
/*!40000 ALTER TABLE `user15_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user8848_hobbies`
--

DROP TABLE IF EXISTS `user8848_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user8848_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user8848_hobbies`
--

LOCK TABLES `user8848_hobbies` WRITE;
/*!40000 ALTER TABLE `user8848_hobbies` DISABLE KEYS */;
INSERT INTO `user8848_hobbies` VALUES (1,112,-1,-1,112,-1,-1,-1),(2,112,-1,-1,112,-1,-1,-1),(3,112,-1,-1,112,-1,-1,-1),(4,112,-1,-1,112,-1,-1,-1);
/*!40000 ALTER TABLE `user8848_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user9_hobbies`
--

DROP TABLE IF EXISTS `user9_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user9_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  `clicked` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user9_hobbies`
--

LOCK TABLES `user9_hobbies` WRITE;
/*!40000 ALTER TABLE `user9_hobbies` DISABLE KEYS */;
INSERT INTO `user9_hobbies` VALUES (1,125,125,-1,125,-1,-1,-1,-1);
/*!40000 ALTER TABLE `user9_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userCenter`
--

DROP TABLE IF EXISTS `userCenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userCenter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `likeNum` int(11) DEFAULT 0,
  `postNum` int(11) DEFAULT 0,
  `visitNum` int(11) DEFAULT 0,
  `replyNum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userCenter`
--

LOCK TABLES `userCenter` WRITE;
/*!40000 ALTER TABLE `userCenter` DISABLE KEYS */;
INSERT INTO `userCenter` VALUES (24,'刘春林',0,0,0,0),(25,'ydssbbnc',0,2,0,2),(26,'',0,0,0,0),(27,'19980204',0,11,0,1),(28,'大FA明家',0,0,0,0),(31,'user8848',0,0,0,0),(32,'卢本伟',0,1,0,0),(33,'test1',0,0,0,0),(34,'test2',0,0,0,0),(35,'test3',0,0,0,0),(36,'test4',0,0,0,0),(37,'test5',0,0,0,0),(38,'test6',0,0,0,0),(39,'test7',0,0,0,0),(40,'test8',0,0,0,0),(41,'test10',0,0,0,0),(42,'user9',0,0,0,0),(43,'test9',0,0,0,0),(44,'test11',0,0,0,0),(45,'test12',0,0,0,0),(46,'test13',0,0,0,0),(47,'test14',0,2,0,0),(48,'user15',0,2,0,0),(49,'123',0,1,0,0),(50,'a',0,0,0,0),(51,'b',0,0,0,0),(52,'ASD',0,0,0,0),(53,'whoami',0,1,0,0),(54,'wox',0,0,0,0),(55,'qq',0,0,0,0),(56,'11',0,1,0,0);
/*!40000 ALTER TABLE `userCenter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whoami_hobbies`
--

DROP TABLE IF EXISTS `whoami_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whoami_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  `clicked` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whoami_hobbies`
--

LOCK TABLES `whoami_hobbies` WRITE;
/*!40000 ALTER TABLE `whoami_hobbies` DISABLE KEYS */;
/*!40000 ALTER TABLE `whoami_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wox_hobbies`
--

DROP TABLE IF EXISTS `wox_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wox_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  `clicked` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wox_hobbies`
--

LOCK TABLES `wox_hobbies` WRITE;
/*!40000 ALTER TABLE `wox_hobbies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wox_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `卢本伟_hobbies`
--

DROP TABLE IF EXISTS `卢本伟_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `卢本伟_hobbies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `targetId` int(11) DEFAULT -1,
  `liked` int(11) DEFAULT -1,
  `dissed` int(11) DEFAULT -1,
  `shared` int(11) DEFAULT -1,
  `favorited` int(11) DEFAULT -1,
  `reported` int(11) DEFAULT -1,
  `replied` int(11) DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `卢本伟_hobbies`
--

LOCK TABLES `卢本伟_hobbies` WRITE;
/*!40000 ALTER TABLE `卢本伟_hobbies` DISABLE KEYS */;
INSERT INTO `卢本伟_hobbies` VALUES (1,112,112,-1,-1,-1,-1,-1),(2,114,114,-1,-1,-1,-1,-1),(3,115,-1,115,-1,-1,-1,-1),(4,113,-1,-1,-1,-1,113,-1),(5,116,-1,-1,116,116,116,-1),(6,117,-1,-1,117,-1,-1,-1),(7,118,-1,118,-1,-1,-1,-1),(8,119,119,-1,-1,-1,-1,-1);
/*!40000 ALTER TABLE `卢本伟_hobbies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-08 20:34:27
