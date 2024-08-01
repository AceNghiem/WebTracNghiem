-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: web_thuc_tap_v2
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `chapter`
--

DROP TABLE IF EXISTS `chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chapter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chapter_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` int NOT NULL,
  `subject_class_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKinmy6tncfeenldbsfcyyfsuop` (`subject_class_id`),
  CONSTRAINT `FKinmy6tncfeenldbsfcyyfsuop` FOREIGN KEY (`subject_class_id`) REFERENCES `subject_classes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapter`
--

LOCK TABLES `chapter` WRITE;
/*!40000 ALTER TABLE `chapter` DISABLE KEYS */;
INSERT INTO `chapter` VALUES (1,'Cấu trúc dữ liệu và giải thuật',1,1),(2,'Kiến thức cơ bản về cơ sở dữ liệu',1,2),(3,'Giới thiệu tổng quan',1,3);
/*!40000 ALTER TABLE `chapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'Lớp cấu trúc'),(2,'Lớp bồi dưỡng cơ sở dữ liệu'),(3,'Lớp an toàn thông tin');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document` (
  `id` int NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `create_date` date DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `view` bigint NOT NULL,
  `subject_id` int DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1ue9i0xgjy47qlgyaw9sw5px0` (`subject_id`),
  KEY `FKjhdxdv9sijhujiynqbb5jc010` (`user_id`),
  CONSTRAINT `FK1ue9i0xgjy47qlgyaw9sw5px0` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`),
  CONSTRAINT `FKjhdxdv9sijhujiynqbb5jc010` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES (2,'/img/0_GZ6xYb6r_cv-ZibP.png','<p><strong>Dưới đây là tổng hợp các file tài liệu chuyên ngành IT mà mình sưu tầm được. Các bạn nhấn vào nút để tải file về nhé, File trên Scribd chỉ là để xem trước file.</strong></p><p>Nội dung</p><ul><li><a href=\"https://tailieuhust.com/tai-lieu-chuyen-nganh-cntt-dai-hoc-bach-khoa-hn/#1_Download_tai_lieu_chuyen_nganh_CNTT\">1. Download tài liệu chuyên ngành CNTT</a></li></ul><h2>1. Download tài liệu chuyên ngành CNTT</h2><p>Trong thư mục này bao gồm rất nhiều tài liệu về các môn như hệ điều hành, lập trình java,… Chi tiết các bạn xem trong thư mục nhé.</p><p><a href=\"https://drive.google.com/drive/u/1/folders/0B8SeNfSA8dK3RHdTNzUtZ1FtVEk?resourcekey=0-sKu84_uv-xZav4FKNb4EPQ\"><strong>TẢI TÀI LIỆU</strong></a></p><blockquote><p><a href=\"https://tailieuhust.com/tai-lieu-mon-nhap-mon-ky-thuat-nganh-dien-hust/\"><i><strong>Tài liệu môn Nhập môn kĩ thuật ngành điện</strong></i></a></p></blockquote>','2023-11-11','Full tài liệu chuyên ngành CNTT đại học BKHN',0,1,'admin');
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `free` bit(1) DEFAULT NULL,
  `id_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modify` date DEFAULT NULL,
  `name_exam` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int NOT NULL,
  `turn` bigint NOT NULL,
  `view` bigint NOT NULL,
  `lesson_id` int DEFAULT NULL,
  `users_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_24v8k67m07gwmk83hn4vfsbfa` (`id_name`),
  KEY `FKfadk265rh4nru1po1rxqffc9y` (`lesson_id`),
  KEY `FK8r1u489nyne7tau1vyl4h21yw` (`users_id`),
  CONSTRAINT `FKfadk265rh4nru1po1rxqffc9y` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
INSERT INTO `exam` VALUES (23,'2023-05-18',_binary '\0','MD-0001',NULL,'Trắc nghiệm bài tập nhiều hơn, ít hơn',10,15,38,1,'admin'),(29,'2023-05-18',_binary '\0','MD-0009',NULL,'Trắc nghiệm nhiều hơn, ít hơn',1,2,2,1,'admin'),(30,'2023-05-18',_binary '\0','MD-0008',NULL,'Trắc nghiệm các số 1,2,3',1,1,1,1,'admin'),(31,'2023-12-20',_binary '\0','MD-0011','2023-12-20','Ôn tập kiến thức nhập môn của cơ sở dư liệu',10,0,0,2,'admin'),(32,'2023-12-21',_binary '\0','MD-0012',NULL,'Nhập môn với an toàn thông tin',10,1,1,4,'admin');
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_question`
--

DROP TABLE IF EXISTS `exam_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_question` (
  `exam_id` int NOT NULL,
  `ques_id` int NOT NULL,
  KEY `FKl7iemhe9amxumih4r8pmylqvb` (`ques_id`),
  KEY `FK75y5n4rt15oyfmshrwwi73d` (`exam_id`),
  CONSTRAINT `FK75y5n4rt15oyfmshrwwi73d` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`id`),
  CONSTRAINT `FKl7iemhe9amxumih4r8pmylqvb` FOREIGN KEY (`ques_id`) REFERENCES `question` (`ques_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_question`
--

LOCK TABLES `exam_question` WRITE;
/*!40000 ALTER TABLE `exam_question` DISABLE KEYS */;
INSERT INTO `exam_question` VALUES (23,1),(23,2),(23,3),(23,4),(23,5),(23,6),(23,7),(23,8),(23,9),(23,10),(23,11),(23,12),(23,13),(23,14),(23,15),(23,16),(23,17),(23,18),(23,19),(23,20),(23,21),(23,22),(23,23),(23,24),(23,25),(23,26),(23,27),(23,28),(23,29),(23,30),(23,31),(23,32),(23,33),(23,34),(23,35),(23,36),(23,37),(23,38),(23,39),(23,40),(31,41),(31,42),(32,43);
/*!40000 ALTER TABLE `exam_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iq`
--

DROP TABLE IF EXISTS `iq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iq` (
  `id` int NOT NULL AUTO_INCREMENT,
  `end_time` datetime DEFAULT NULL,
  `mark` double NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `username` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKaw2m83f7754glhd95b9p55mdx` (`username`),
  CONSTRAINT `FKaw2m83f7754glhd95b9p55mdx` FOREIGN KEY (`username`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iq`
--

LOCK TABLES `iq` WRITE;
/*!40000 ALTER TABLE `iq` DISABLE KEYS */;
INSERT INTO `iq` VALUES (1,'2023-05-04 04:45:40',9.2,'2023-05-04 04:43:09','admin'),(2,'2023-05-04 04:46:55',8,'2023-05-04 04:46:34','admin');
/*!40000 ALTER TABLE `iq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_lesson` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` int NOT NULL,
  `chapter_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKyd2sg2b1awfx3br81o66mrwl` (`chapter_id`),
  CONSTRAINT `FKyd2sg2b1awfx3br81o66mrwl` FOREIGN KEY (`chapter_id`) REFERENCES `chapter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson`
--

LOCK TABLES `lesson` WRITE;
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
INSERT INTO `lesson` VALUES (1,'Cấu trúc dữ liệu và giải thuật',1,1),(2,'Giới thiệu về cơ sở dữ liệu',1,2),(3,'Các khái niệm về cơ sở dữ liệu',2,2),(4,'Khái niệm cơ bản về an toàn thông tin',1,3);
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `create_date` date DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `last_modify` date DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `view` bigint NOT NULL,
  `author` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqmik5s9aooh06mb1j8p80r2h7` (`author`),
  CONSTRAINT `FKqmik5s9aooh06mb1j8p80r2h7` FOREIGN KEY (`author`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'<p><strong>Mục tiêu đào tạo</strong></p><p>Đào tạo kỹ sư Trí tuệ nhân tạo và giao thông thông minh có phẩm chất chính trị, đạo đức và sức khỏe tốt, có trách nhiệm với xã hội; nắm vững kiến thức khoa học cơ bản, cơ sở cần thiết, chuyên môn toàn diện; năng lực thực hành nghề nghiệp cơ bản; năng lực tư duy sáng tạo, khả năng thích ứng nhanh với những tiến bộ của khoa học công nghệ trong lĩnh vực công nghệ thông tin và trí tuệ nhân tạo đáp ứng nhu cầu nhân lực ngày càng cao quản lý vận hành hệ thống giao thông thông minh và các lĩnh vực của nền kinh tế.</p><p><strong>Vị trí và nơi làm việc sau khi tốt nghiệp</strong></p><p>- Kỹ sư thiết kế, phát triển, vận hành, khai thác, bảo dưỡng, bảo trì các hệ thống giao thông thông minh: Các công ty quản lý, khai thác đường cao tốc;</p><p>- Kỹ sư thiết kế, vận hành, khai thác hệ thống giao thông thông minh tại Trung tâm quản lý điều hành giao thông ở các địa phương, địa bàn, lĩnh vực đường bộ, đường sắt, đường thủy;</p><p>- Kỹ sư tham gia quản lý, tư vấn hệ thống giao thông thông minh, ứng dụng CNTT trong quản lý điều hành giao thông tại cơ quan quản lý nhà nước như Bộ GTVT, các Sở GTVT;</p><p>- Kỹ sư kinh doanh bán hàng, tư vấn kỹ thuật và cung cấp dịch vụ kỹ thuật hệ thống giao thông thông minh, làm việc ở các công ty thương mại và kỹ thuật về tư vấn, thiết kế lắp đặt hệ thống giao thông thông minh;</p><p>- Cán bộ giảng dạy, nghiên cứu tại các Trường Đại học – Cao đẳng, các Viện –Trung tâm nghiên cứu về dữ liệu lớn AI và về hệ thống giao thông thông minh và ứng dụng AI trong quản lý và điều hành GTVT.</p><p><strong>Cấu trúc của chương trình đào tạo</strong></p><figure class=\"table\"><table><tbody><tr><td><strong>Kiến thức</strong></td><td><strong>Bắt buộc</strong></td><td><strong>Tự chọn</strong></td><td><strong>Tổng số</strong></td></tr><tr><td><strong>1. Kiến thức giáo dục đại cương</strong></td><td><strong>30</strong></td><td><strong>4</strong></td><td><strong>34</strong></td></tr><tr><td><strong>2. Kiến thức giáo dục chuyên nghiệp</strong></td><td><strong>111</strong></td><td><strong>10</strong></td><td><strong>121</strong></td></tr><tr><td>2.1. Kiến thức cơ sở ngành</td><td>53</td><td>4</td><td>57</td></tr><tr><td>2.2.&nbsp; Kiến thức ngành</td><td>37</td><td>6</td><td>43</td></tr><tr><td>2.3. Thực hành, thực&nbsp;tập nghề nghiệp</td><td>9</td><td>&nbsp;</td><td>9</td></tr><tr><td>2.4. Thực tập tốt nghiệp</td><td>4</td><td>&nbsp;</td><td>4</td></tr><tr><td>2.5.&nbsp; Đồ án tốt nghiệp</td><td>8</td><td>&nbsp;</td><td>8</td></tr><tr><td><strong>Tổng số</strong></td><td><strong>141</strong></td><td><strong>14</strong></td><td><strong>155</strong></td></tr></tbody></table></figure>','2023-12-20','/img/default-news.png',NULL,'Ngành Trí tuệ nhân tạo và giao thông thông minh',1,'admin'),(2,'<p>Chương trình được thiết kế theo chuẩn của Hiệp hội Máy tính (Association for Computing Machinery-ACM), Chương trình đào tạo của Đại học Quốc Gia Singapore (National University of Singapore – NUS, với sự tư vấn của các chuyên gia và doanh nghiệp CNTT như Tập đoàn VNPT, FPT, Tập đoàn IBM, đồng thời tích hợp các chuẩn kiến thức của giới công nghiệp như Oracle, Cisco v.v.</p><p><img src=\"http://utt.edu.vn/uploads/file-manager/images/utt-he-thong-thong-tin.jpg\" alt=\"\"></p><p>Nội dung đào tạo ngành Hệ thống thông tin của Đại học Công nghệ GTVT tích hợp cân bằng giữa kiến thức nền tảng với công nghệ, kỹ thuật mới: không chỉ bao gồm các kiến thức về khoa học cơ bản của nhóm ngành CNTT mà còn đào tạo đầy đủ về các kiến thức và công nghệ có thể tiếp cận ngay với các doanh nghiệp khi mới ra trường; cân bằng giữa lý thuyết với ứng dụng và thực hành: thời gian học lý thuyết chiếm chỉ tối đa một nửa thời gian của hầu hết các học phần. Chương trình đào tạo linh hoạt và thích ứng với các yêu cầu hiện tại của các doanh nghiệp.</p><p><strong>Mục tiêu đào tạo</strong></p><p>Đào tạo Kỹ sư Hệ thống thông tin có kiến thức chuyên môn toàn diện, nắm vững nguyên lý, quy luật tự nhiên - xã hội, có kỹ năng thực hành cơ bản, có khả năng làm việc độc lập, sáng tạo và giải quyết những vấn đề thuộc ngành hệ thống thông tin.</p><p><strong>Vị trí và nơi làm việc sau khi tốt nghiệp</strong></p><p>Sinh viên tốt nghiệp được cấp bằng kỹ sư hệ thống thông tin, đảm nhận công việc ở các vị trí: lập trình viên phát triển phần mềm, kỹ thuật viên kiểm duyệt chất lượng phần mềm, chuyên viên phân tích thiết kế hệ thống, quản lý dữ liệu, quản trị hệ thống mạng, quản trị viên hệ thống công nghệ thông tin, cán bố nghiên cứu, giảng dạy trong lĩnh vực công nghệ thông tin.</p><p><strong>Cấu trúc của chương trình đào tạo</strong></p><figure class=\"table\"><table><tbody><tr><td><strong>Kiến thức</strong></td><td><strong>Bắt buộc</strong></td><td><strong>Tự chọn</strong></td><td><p><strong>Khối lượng</strong></p><p><strong>(Tín chỉ)</strong></p></td></tr><tr><td><strong>1. Kiến thức giáo dục đại cương</strong></td><td><strong>32</strong></td><td><strong>4</strong></td><td><strong>36</strong></td></tr><tr><td><strong>2. Kiến thức giáo dục chuyên nghiệp</strong></td><td><strong>111</strong></td><td><strong>10</strong></td><td><strong>121</strong></td></tr><tr><td>2.1. Kiến thức cơ sở ngành</td><td>52</td><td>4</td><td>56</td></tr><tr><td>2.2.&nbsp; Kiến thức ngành</td><td>38</td><td>6</td><td>44</td></tr><tr><td>2.3. Thực hành, thực&nbsp;tập nghề nghiệp</td><td>9</td><td>&nbsp;</td><td>9</td></tr><tr><td>2.4. Thực tập tốt nghiệp</td><td>4</td><td>&nbsp;</td><td>4</td></tr><tr><td>2.5.&nbsp; Đồ án tốt nghiệp</td><td>8</td><td>&nbsp;</td><td>8</td></tr><tr><td><strong>Tổng số</strong></td><td><strong>143</strong></td><td><strong>14</strong></td><td><strong>157</strong></td></tr><tr><td>Giáo dục thể chất</td><td>4</td><td>&nbsp;</td><td>4</td></tr><tr><td>Giáo dục quốc phòng-an ninh</td><td>9</td><td>&nbsp;</td><td>9</td></tr></tbody></table></figure><p><br>&nbsp;</p>','2023-12-20','/img/default-news.png',NULL,'Kỹ sư Hệ thống thông tin',0,'admin'),(3,'<p>Ngành Mạng máy tính &amp; Truyền thông dữ liệu là một ngành nghiên cứu những nguyên lý của mạng, cách thiết kế, xây dựng một hệ thống mạng từ mạng nội bộ cho đến mạng diện rộng có kết nối toàn cầu. Đồng thời ngành Mạng máy tính &amp; Truyền thông dữ liệu cũng cung cấp cho người học những kỹ năng tiên tiến trong việc phát triển ứng dụng trên các hệ thống máy tính nối mạng từ trung đến cao cấp.</p><p><img src=\"http://utt.edu.vn/uploads/file-manager/images/utt-mang-may-tinh.jpg\" alt=\"\"></p><p>Đến với ngành học này, bạn sẽ hiểu và làm chủ được những công nghệ mạng phổ biến như thư tín điện tử, truyền tải tập tin, truyền thông thông tin, hay những công nghệ tiên tiến như điện toán đám mây, tính toán lưới, tính toán di động, xây dựng và vận hành data center, an toàn và bảo mật thông tin.</p><p>Ngành Mạng máy tính &amp; Truyền thông dữ liệu là một ngành phù hợp cho những bạn ham thích khám phá công nghệ, giao tiếp với nhiều người trên khắp hành tinh mà chỉ cần thông qua chiếc máy tính có kết nối mạng. Đồng thời, với những hiểu biết về mạng máy tính, các bạn có thể xây dựng được cho mình một không gian chuyên môn của mình trên Internet.</p><p><strong>Mục tiêu đào tạo</strong></p><p>Chương trình đào tạo Đại học chính quy, hệ kỹ sư Mạng máy tính và Truyền thông dữ liệu nhằm trang bị cho sinh viên sau khi tốt nghiệp có kiến thức chuyên môn toàn diện về khoa học cơ bản, cơ sở và hiểu rõ các nguyên lý, lý thuyết nền tảng để vận dụng giải quyết các vấn đề trong cuộc sống và công việc. Có các kiến thức chuyên sâu về chuyên ngành Mạng máy tính. Có kỹ năng nghề nghiệp vững vàng, thành thạo các công cụ, phần mềm, hệ điều hành, cấu hình thiết bị mạng đáp ứng yêu cầu giải quyết các vấn đề thiết kế mạng, quản trị mạng, an ninh mạng và lập trình ứng dụng. Khả năng làm việc độc lập, tự học tập nâng cao trình độ, đủ năng lực phân tích, nghiên cứu và cập nhật công nghệ mới trên thế giới. Có kỹ năng giao tiếp, làm việc nhóm và khả năng Tiếng Anh đủ để làm việc được trong môi trường đa văn hoá. Rèn luyện đạo đức nghề nghiệp và phẩm chất chính trị vững vàng, có sức khỏe đáp ứng yêu cầu công việc và bảo vệ Tổ quốc.</p><p><strong>Vị trí và nơi làm việc sau khi tốt nghiệp</strong></p><p>− Quản trị các hệ thống, dịch vụ mạng cho các công ty, tổ chức, các nhà cung cấp dịch vụ mạng trong nước và nước ngoài;</p><p>− Kỹ sư thiết kế và triển khai các hệ thống mạng, viễn thông và các dịch vụ mạng;</p><p>− Chuyên viên về lĩnh vực an ninh mạng.</p><p>− Kỹ sư khai thác các dịch vụ và kiến trúc các hệ thống Cloud Computing, Cloud Networking.</p><p>− Chuyên viên phát triển phần mềm và website cho các công ty phần mềm trong nước và quốc tế.</p><p>− Chuyên viên quản trị website, quản lý các hệ thống thương mại điện tử và Digital Marketing. − Giảng dạy về CNTT, mạng máy tính và truyền thông dữ liệu tại các trường cao đẳng, TCCN, dạy nghề...</p><p><strong>Cấu trúc của chương trình đào tạo</strong></p><figure class=\"table\"><table><tbody><tr><td><strong>Kiến thức</strong></td><td><strong>Bắt buộc</strong></td><td><strong>Tự chọn</strong></td><td><strong>Tổng số</strong></td></tr><tr><td><strong>1. Kiến thức giáo dục đại cương</strong></td><td><strong>32</strong></td><td><strong>4</strong></td><td><strong>36</strong></td></tr><tr><td><strong>2. Kiến thức giáo dục chuyên nghiệp</strong></td><td><strong>108</strong></td><td><strong>12</strong></td><td><strong>120</strong></td></tr><tr><td>2.1. Kiến thức cơ sở ngành</td><td>48</td><td>6</td><td>54</td></tr><tr><td>2.2.&nbsp; Kiến thức ngành</td><td>42</td><td>6</td><td>48</td></tr><tr><td>2.3. Thực hành, thực&nbsp;tập nghề nghiệp</td><td>6</td><td>&nbsp;</td><td>6</td></tr><tr><td>2.4. Thực tập tốt nghiệp</td><td>4</td><td>&nbsp;</td><td>4</td></tr><tr><td>2.5.&nbsp; Đồ án tốt nghiệp</td><td>8</td><td>&nbsp;</td><td>8</td></tr><tr><td><strong>Tổng số</strong></td><td><strong>140</strong></td><td><strong>16</strong></td><td><strong>156</strong></td></tr></tbody></table></figure>','2023-12-20','/img/default-news.png',NULL,'Kỹ sư mạng máy tính và truyền thông dữ liệu',0,'admin');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `ques_id` int NOT NULL AUTO_INCREMENT,
  `ans` int NOT NULL,
  `chose` int NOT NULL,
  `level` int NOT NULL,
  `optiona` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `optionb` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `optionc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `optiond` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `lesson_id` int DEFAULT NULL,
  PRIMARY KEY (`ques_id`),
  KEY `FK1sbknhfhhug49n0elkvgk38vs` (`lesson_id`),
  CONSTRAINT `FK1sbknhfhhug49n0elkvgk38vs` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,2,2,1,'Cấu trúc dữ liệu + giải thuật = chương trình','Cấu trúc dữ liệu + chương trình = giải thuật','Chương trình + Giải thuât = Cấu trúc dữ liệu','Cấu trúc dữ liệu = Chương trình','Mối quan hệ giữa cấu trúc dữ liệu giải thuật có thể minh họa bằng đẳng thức nào?',1),(2,4,4,1,'Trong giải thuật của nó có lời gọi tới một giải thuật khác đã biết kết quả.','Trong giải thuật của nó có lời gọi tới chính nó nhưng với phạm vi lớn hơn','Trong giải thuật của nó có lời gọi tới chính nó.','Trong giải thuật của nó có lời gọi tới chính nó nhưng với phạm vi nhỏ hơn','Giải thuật đệ quy là:',1),(3,2,2,1,'Danh sách tuyến tính là một danh sách có dạng (a1, a2, ..., an)','Danh sách mà quan hệ lân cận giữa các phần tử được xác định','Danh sách dạng được lưu dưới dạng mảng.','Danh sách tuyến tính là một danh sách rỗng.','Danh sách tuyến tính là',1),(4,1,1,1,'việc truy nhập vào phần tử của mảng được thực hiện trực tiếp dựa vào địa chỉ tính được (chỉ số), nên tốc độ nhanh và đồng đều đối với mọi phần tử.','Có thể thay đổi số lượng phần tử theo ý muốn của người dùng','Có thể bổ sung hoặc xóa một phần tử bất kỳ trong mảng.','Tất cả các ý trên đều đúng','ưu điểm của việc cài đặt danh sách bằng mảng',1),(5,4,4,1,'Là một danh sách tuyến tính trong đó phép bổ sung sung một phần tử vào ngăn xếp được thực hiện ở một đầu, Và phép loại bỏ không thực hiện được','Là một danh sách tuyến tính trong đó phép bổ sung một phần tử vào ngăn xếp và phéploại bỏ một phần tử khỏi ngăn xếp luôn luôn thực hiện ở tại một vị trí bất kì trong danh sách','Là một danh sách tuyến tính trong đó phép bổ sung một phần tử vào ngăn xếp được thực hiện ở một đầu , và phép loại bỏ được thực hiện ở đầu kia','Là một danh sách tuyến tính trong đó phép bổ sung một phần tử vào ngăn xếp và phép loại bỏ một phần tử khỏi ngăn xếp luôn luôn thực hiện ở một đầu gọi là đỉnh ','Danh sách tuyến tính dạng ngăn xếp là',1),(6,4,4,1,'FIFO( first in first out)','LILO(last in last out)','FOLO( fisrt out last out)','LIFO(last in first out)','Danh sách tuyến tính dạng ngăn xếp làm việc theo nguyên tắc',1),(7,3,3,1,'Mảng (array)','Hàng đợi(Queue)','Ngăn xếp (stack)','Bản gCâu Record)','Khi đổi một số nguyên từ hệ thập phân sang hệ nhị phân thì người ta dùng phép chia liên tiếp cho 2 và lấy các số dư (là các chữ số nhị phân) theo chiều ngược lại. Cơ chế sắp xếp này chính là cơ chế hoạt động của cấu trúc dữ liệu',1),(8,3,3,1,'Là một danh sách tuyến tính trong đó phép bổ sung một phần tử và phép loại bỏ một phần tử được thực hiện ở tại một vị trí bất kì trong danh sách','Hàng đợi là kiểu danh sách tuyến tính trong đó, phép bổ sung một phần tử được thực hiện ở một đầu, gọi là lối sau (rear) hay lối trước (front). Phép loại bỏ không thực hiệnđược.','Hàng đợi là kiểu danh sách tuyến tính trong đó, phép bổ sung phần tử ở một đầu, gọilà lối sau (rear) và phép loại bỏ phần tử được thực hiện ở đầu kia, gọi là lối trước (front)','Hàng đợi là kiểu danh sách tuyến tính trong đó, phép bổ sung một phần tử hay loại bỏđược thực hiện ở một đầu danh sách gọi là đỉnh (Top)','định nghĩa danh sách tuyến tính Hàng đợi (Queue)',1),(9,4,4,1,'LOLO','FILO','LIFO','FIFO',' Hàng đợi còn được gọi là danh sách kiểu:',1),(10,3,3,1,'EMPTY(x)','TOP(x)','PUSH(x)','POP(x)','Để thêm một đối tượng x bất kỳ vào Stack, thao tác thường dùng là:',1),(11,3,3,1,'FULL(x)','EMPTY(x)','POP(x)','PUSH(x)','Để lấy loại bỏ một đối tượng ra khỏi Stack, thao tác thường dùng là:',1),(12,2,2,1,'Kiểu bản ghi','Danh sách móc nối và mảng dữ liệu','Danh sách móc nối','Mảng dữ liệu','Để biểu diễn Stack, ta thường sử dụng kiểu dữ liệu nào sau đây?',1),(13,4,4,1,'Xóa bỏ một phần tử bất kì khỏi Stack','Xóa bỏ một dãy các phần tử ra khỏi Stack','Lấy phần tử đầu tiên ra khỏi Stack','Lấy một phần tử cuối cùng ra khỏi đỉnh Stack','Thao tác POP(x) dùng trong Stack là để:',1),(14,3,3,1,'Bổ sung một dãy các phần tử vào đỉnh Stack.','Bổ sung một phần tử bất kì vào Stack','Bổ sung một phần tử vào đỉnh Stack','Bổ sung một phần tử vào đầu Stack','Thao tác Push(x) dùng trong Stack là để',1),(15,3,3,1,'POP(23),PUSH(25)','POP(25),PUSH(23)','POP(25),POP(23), PUSH(25)','POP(25),POP(23)','Cho Stack gồm 5 phần tử {12, 5, 20, 23, 25}, trong đó 25 là phần tử ở đỉnh Stack. Đểlấy ra phần tử thứ 4 trong Stack ta phải làm thế nào?',1),(16,2,2,1,'POP(25),POP(23), PUSH(23)','POP(25)','POP(23),PUSH(25)','POP(25),PUSH(23)','Cho Stack gồm 5 phần tử {12, 5, 20, 23, 25}, trong đó 25 là phần tử ở đỉnh Stack. Đểlấy ra phần tử thứ 5 trong Stack ta phải làm thế nào?',1),(17,1,1,1,'POP(25), POP(23), POP(20), PUSH(23), PUSH(25)','POP(25), POP(23), PUSH(20), PUSH(25), PUSH(23)','POP(25), POP(23), POP(20)','POP(25), POP(23), POP(20), PUSH(25), PUSH(23)','Cho Stack gồm 5 phần tử {12, 5, 20, 23, 25}, trong đó 25 là phần tử ở đỉnh Stack. Đểlấy ra phần tử thứ 3 trong Stack ta phải làm thế nào?',1),(18,3,3,1,'Kiểm tra Stack có tràn không','Kiểm tra Stack có cạn không','Bổ sung một phần tử vào Stack','Loại bỏ một phân tử ra khỏi Stack','Trong lưu trữ dữ liệu kiểu Stack, giải thuật sau thực hiện công việc gì?Procedure F(X) BeginT:=T+1; S[T]:=X; End;',1),(19,3,3,1,'Bổ sung một phần tử ra khỏi Stack','Kiểm tra Stack có cạn không','Loại bỏ một phần tử vào Stack','Kiểm tra Stack có tràn không','Trong lưu trữ dữ liệu kiểu Stack, giải thuật sau thực hiện công việc gì? Function PBeginT:=T-1; P:=S[t+1]; End',1),(20,1,1,1,'Queue rỗng','Kiểm tra chỉ số trước và chỉ số sau của Queue có bằng nhau không','Queue tràn','Đặt phần tử đầu và phần tử cuối của Queue bằng 0','Trong lưu trữ dữ liệu kiểu Queue (Q) dưới dạng mảng nối vòng, giả sử F là con trỏ trỏ tới lối trước của Q, R là con trỏ trỏ tới lối sau của Q. Điều kiện F=R=0 nghĩa là:',1),(21,2,2,1,'F=F+1, R không thay đổi','F không thay đổi, R=R+1','F=F-1, R không thay đổi','F không thay đổi, R=R-1','Trong lưu trữ dữ liệu kiểu Queue (Q), giả sử F là con trỏ trỏ tới lối trước của Q, R là con trỏ trỏ tới lối sau của Q. Khi thêm một phần tử vào Queue, thì R và F thay đổi thế nào?',1),(22,4,4,1,'F=F-1, R không thay đổi','F không thay đổi, R=R+1','F không thay đổi, R=R-1','F=F+1, R không thay đổi','Trong lưu trữ dữ liệu kiểu Queue (Q), giả sử F là con trỏ trỏ tới lối trước của Q, R là con trỏ trỏ tới lối sau của Q. Khi loại bỏ một phần tử vào Queue, thì R và F thay đổi thế nào?',1),(23,4,4,1,'Tổng số nút trên cây','Cấp cao nhất của nút gốc','Cấp cao nhất của nút lá','Cấp cao nhất của một nút trên cây','Trong biểu diễn dữ liệu dưới dạng cây, cấp của cây chính',1),(24,1,1,1,'Lá','Không có đáp án nào đúng','Phần tử cuối cùng trong cây','Gốc','Trong biểu diễn dữ liệu dưới dạng cây, nút có cấp bằng 0 gọi là:',1),(25,4,4,1,'3 nút con','1 nút con','2 nút con','Nhiều nút con','Mỗi nút trong cây có tối đa',1),(26,3,3,1,'2*i + 1','i+1','2*i','i-1','Khi lưu trữ cây nhị phân dưới dạng mảng, nếu vị trí của nút cha trong mảng là i thì vịtrí của nút con trái là:',1),(27,4,4,1,'2*i','i+1','i-1','2*i + 1','Khi lưu trữ cây nhị phân dưới dạng mảng, nếu vị trí của nút cha trong mảng là i thì vịtí của nút con phải là:',1),(28,4,4,1,'6','7','4','6 và 7','Khi lưu trữ cây nhị phân dưới dạng mảng, nếu vị trí của nút cha trong mảng là 3 thì vị trí tương ứng của nút con sẽ là:',1),(29,2,2,1,'7','6','2','4','Khi lưu trữ cây nhị phân dưới dạng mảng, nếu vị trí của nút cha trong mảng là 3 thì vị trí tương ứng của nút con trái sẽ là',1),(30,1,1,1,'7','4','6','2','Khi lưu trữ cây nhị phân dưới dạng mảng, nếu vị trí của nút cha trong mảng là 3 thì vị trí tương ứng của nút con phải sẽ là',1),(31,2,2,1,'Duyệt cây con trái theo thứ tự trước, thăm gốc giữa, duyệt cây con phải theo thứ tự sau','Thăm gốc, duyệt cây con trái theo thứ tự trước, duyệt cây con phải theo thứ tự trước','Duyệt cây con trái theo thứ tự sau, thăm gốc trước, duyệt cây con phải theo thứ tự sau.','Thăm gốc trước, duyệt cây con trái theo thứ tự giữa, duyệt cây con phải theo thứ tự sau',' Duyệt cây nhị phân theo thứ tự trước được thực hiện theo thứ tự',1),(32,4,4,1,'Thăm gốc, duyệt cây con trái theo thứ tự giữa, duyệt cây con phải theo thứ tự giữa','Duyệt cây con trái theo thứ tự trước, thăm gốc giữa, duyệt cây con phải theo thứ tự sau','Thăm gốc trước, duyệt cây con trái theo thứ tự giữa, duyệt cây con phải theo thứ tự sau','Duyệt cây con trái theo thứ tự giữa, thăm gốc, duyệt cây con phải theo thứ tự giữa','Duyệt cây nhị phân theo thứ tự giữa được thực hiện theo thứ tự',1),(33,4,4,1,'Duyệt cây con trái theo thứ tự trước, thăm gốc giữa, duyệt cây con phải theo thứ tự sau','Thăm gốc, duyệt cây con trái theo thứ tự sau, duyệt cây con phải theo thứ tự sau.','Thăm gốc trước, duyệt cây con trái theo thứ tự giữa, duyệt cây con phải theo thứ tự sau','Duyệt cây con trái theo thứ tự sau, duyệt cây con phải theo thứ tự sau, thăm gốc','Duyệt cây nhị phân theo thứ tự sau được thực hiện theo thứ tự',1),(34,3,3,1,'Bắt đầu từ cuối dãy đến đầu dãy, ta lần lượt so sánh hai phần tử kế tiếp nhau, nếu phần tử nào bé hơn được cho lên vị trí trên','Phân đoạn dãy thành nhiều dãy con và lần lượt trộn hai dãy con thành dãy lớn hơn, cho đến khi thu được dãy ban đầu đã được sắp xếp.','Chọn phần tử bé nhất xếp vào vị trí thứ nhất bằng cách đổi chổ phần tử bé nhất với phần tử thứ nhất; Tương tự đối với phần tử nhỏ thứ hai,ba..','Lần lượt lấy phần tử của danh sách chèn vị trí thích hợp của nó trong dãy','ý tưởng phương pháp sắp xếp chọn tăng dần (select sort)',1),(35,1,1,1,'Bắt đầu từ cuối dãy đến đầu dãy, ta lần lượt so sánh hai phần tử kế tiếp nhau, nếu phần tử nào nhỏ hơn được đứng vị trí trên','Phân đoạn dãy thành nhiều dãy con và lần lượt trộn hai dãy con thành dãy lớn hơn, cho đến khi thu được dãy ban đầu đã được sắp xếp','Lần lượt lấy phần tử của danh sách chèn vị trí thích hợp của nó trong dãy bằng cách đẩy các phần tử lớn hơn xuống','Chọn phần tử bé nhất xếp vào vị trí thứ nhất bằng cách đổi chổ phần tử bé nhất với phần tử thứ nhấ; Tương tự đối với phần tử nhỏ thứ hai,ba...','ý tưởng phương pháp sắp xếp nổi bọt (bubble sort) là:',1),(36,3,3,1,'Bắt đầu từ cuối dãy đến đầu dãy, ta lần lượt so sánh hai phần tử kế tiếp nhau, nếu phần tử nào nhỏ hơn được đứng vị trí trên.','Chọn phần tử bé nhất xếp vào vị trí thứ nhất bằng cách đổi chổ phần tử bé nhất với phần tử thứ nhấ; Tương tự đối với phần tử nhỏ thứ hai,ba...','Lần lượt lấy phần tử của danh sách chèn vị trí thích hợp của nó trong dãy bằng cách đẩy các phần tử lớn hơn xuống.','Phân đoạn dãy thành nhiều dãy con và lần lượt trộn hai dãy con thành dãy lớn hơn, cho đến khi thu được dãy ban đầu đã được sắp xếp.','ý tưởng phương pháp sắp xếp chèn (insertion sort) là',1),(37,3,3,1,'Chọn phần tử bé nhất xếp vào vị trí thứ nhất bằng cách đổi chổ phần tử bé nhất với phần tử thứ nhấ; Tương tự đối với phần tử nhỏ thứ hai,ba','Bắt đầu từ cuối dãy đến đầu dãy, ta lần lượt so sánh hai phần tử kế tiếp nhau, nếu phần tử nào nhỏ hơn được đứng vị trí trên','Lần lượt chia dãy phần tử thành hai dãy con bởi một phần tử khoá (dãy con trước khoá gồm các phần tử nhỏ hơn khoá và dãy còn lại gồm các phần tử lớn hơn khoá).','Phân đoạn dãy thành nhiều dãy con và lần lượt trộn hai dãy con thành dãy lớn hơn, cho đến khi thu được dãy ban đầu đã được sắp xếp.','ý tưởng phương pháp sắp xếp nhanh (Quick sort) là',1),(38,1,1,1,'Phân đoạn','Chèn','Trộn','Vun đống','Phương pháp sắp xếp nhanh (Quick sort) chính là phương pháp:',1),(39,4,4,1,'Bắt đầu từ cuối dãy đến đầu dãy, ta lần lượt so sánh hai phần tử kế tiếp nhau, nếu phần tử nào nhỏ hơn được đứng vị trí trên','Lần lượt chia dãy phần tử thành hai dãy con bởi một phần tử khoá (dãy con trước khoá gồm các phần tử nhỏ hơn khoá và dãy còn lại gồm các phần tử lớn hơn khoá)','Chọn phần tử bé nhất xếp vào vị trí thứ nhất bằng cách đổi chổ phần tử bé nhất với phần tử thứ nhất; Tương tự đối với phần tử nhỏ thứ hai,ba.','Phân đoạn dãy thành nhiều dãy con và lần lượt trộn hai dãy con thành dãy lớn hơn, cho đến khi thu được dãy ban đầu đã được sắp xếp',' ý tưởng phương pháp sắp xếp Trộn (Merge sort) là',1),(40,1,1,1,'Lần lượt tạo đống cho cây nhị phân (phần tử gốc có giá trị lớn nhất) và loại phần tử gốc ra khỏi cây đưa vào dãy sắp xếp','Bắt đầu từ cuối dãy đến đầu dãy, ta lần lượt so sánh hai phần tử kế tiếp nhau, nếu phần tử nào nhỏ hơn được đứng vị trí trên','Lần lượt chia dãy phần tử thành hai dãy con bởi một phần tử khoá (dãy con trước khoá gồm các phần tử nhỏ hơn khoá và dãy còn lại gồm các phần tử lớn hơn khoá)','Tạo đống cho cây nhị phân (cây nhị phân đã được sắp xếp giảm dần)','ý tưởng phương pháp sắp xếp vun đống (Heap sort) là',1),(41,3,0,1,'Cung cấp môi trường tạo lập CSDL','Cung cấp môi trường cập nhật và khai thác dữ liệu','Cung cấp công cụ quản lí bộ nhớ','Cung cấp công cụ kiểm soát, điều khiển truy cập vào CSDL.','<p><a href=\"https://khoahoc.vietjack.com/question/954971/mot-he-quan-tri-csdl-khong-co-chuc-nang-nao-trong-cac-chuc-nang-duoi-day-3gqi3\">Một hệ quản trị CSDL không có chức năng nào trong các chức năng dưới đây?</a></p>',2),(42,4,0,1,'Ngôn ngữ lập trình Pascal','Ngôn ngữ C','Các kí hiệu toán học dùng để thực hiện các tính toán','Hệ thống các kí hiệu để mô tả CSDL','<p><a href=\"https://khoahoc.vietjack.com/question/954974/ngon-ngu-dinh-nghia-du-lieu-that-chat-la\">Ngôn ngữ định nghĩa dữ liệu thật chất là:</a></p>',2),(43,2,0,1,'Cung cấp môi trường tạo lập CSDL','Cung cấp môi trường cập nhật và khai thác dữ liệu','Các kí hiệu toán học dùng để thực hiện các tính toán','Cung cấp công cụ kiểm soát, điều khiển truy cập vào CSDL.','<p>Mã hóa là gì ?</p>',4);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result` (
  `id` int NOT NULL AUTO_INCREMENT,
  `end_time` datetime DEFAULT NULL,
  `mark` double NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `id_exam` int DEFAULT NULL,
  `username` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqqmspitg4ogj84afc4g5rksp5` (`id_exam`),
  KEY `FK3kspdwuynacog42t03c5245s2` (`username`),
  CONSTRAINT `FK3kspdwuynacog42t03c5245s2` FOREIGN KEY (`username`) REFERENCES `user` (`id`),
  CONSTRAINT `FKqqmspitg4ogj84afc4g5rksp5` FOREIGN KEY (`id_exam`) REFERENCES `exam` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (10,'2023-05-11 08:33:13',10,'2023-05-11 08:31:38',23,'admin'),(11,'2023-11-04 18:22:10',0,'2023-11-04 18:18:13',23,'admin'),(12,'2023-12-21 00:20:18',10,'2023-12-21 00:20:11',32,'admin');
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL,
  `role_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_iubw515ff0ugtm28p8g3myt0h` (`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'/img/default.jpg','Cấu trúc dữ liệu và giải thuật'),(2,'/img/default.jpg','Cơ sở dữ liệu'),(3,'/img/default.jpg','An toàn thông tin '),(4,'/img/default.jpg','Mạng máy tính'),(5,'/img/default.jpg','Tin học văn phòng'),(6,'/img/default.jpg','Lập trình hướng đối tượng');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_classes`
--

DROP TABLE IF EXISTS `subject_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_classes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_id` int DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhntniubqkx6m4froyepa5qbrb` (`class_id`),
  KEY `FKsvu8veaopfx3q36er0s89m2hf` (`subject_id`),
  CONSTRAINT `FKhntniubqkx6m4froyepa5qbrb` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  CONSTRAINT `FKsvu8veaopfx3q36er0s89m2hf` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_classes`
--

LOCK TABLES `subject_classes` WRITE;
/*!40000 ALTER TABLE `subject_classes` DISABLE KEYS */;
INSERT INTO `subject_classes` VALUES (1,1,1),(2,2,2),(3,3,3);
/*!40000 ALTER TABLE `subject_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pass_word` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `re_pass_word` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','Ha Noi','2023-11-04','admin@gmail.com','Admin','/img/avatar/default.jpg','$2a$10$NGytPXEtZuagX2LJDRWiaOEkYsmvsf6bTkLXEoxGkgXHJI24wN0Xi','0987654321','$2a$10$NGytPXEtZuagX2LJDRWiaOEkYsmvsf6bTkLXEoxGkgXHJI24wN0Xi'),('long123','Hà Nội','2023-12-21','longbd2001@gmail.com','Trần Đức Long','/img/avatar/default.jpg','$2a$10$ofDQFado7KmFV0NKn/Qe6u93gmaEcC/ulpHseZB2fT9cUo4zAlPay','0972265535','$2a$10$ofDQFado7KmFV0NKn/Qe6u93gmaEcC/ulpHseZB2fT9cUo4zAlPay');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`username`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FKnircs1pyebpo0eucojumm0aed` FOREIGN KEY (`username`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES ('admin',1),('long123',2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-21  0:44:11
