/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50738
 Source Host           : localhost:3306
 Source Schema         : mooc

 Target Server Type    : MySQL
 Target Server Version : 50738
 File Encoding         : 65001

 Date: 01/03/2024 16:40:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for absa_comments
-- ----------------------------
DROP TABLE IF EXISTS `absa_comments`;
CREATE TABLE `absa_comments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `raw_id` int(11) DEFAULT NULL,
  `aspect` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `opinion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sentiment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `raw_id`(`raw_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of absa_comments
-- ----------------------------
INSERT INTO `absa_comments` VALUES (96, 143, '系统', '视频质量', '[\'佳\']', '正向');
INSERT INTO `absa_comments` VALUES (97, 143, '老师', '课件质量', '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (98, 145, '系统', '视频质量', '[\'佳\']', '正向');
INSERT INTO `absa_comments` VALUES (99, 145, '讲解', '课件质量', '[\'详细\']', '正向');
INSERT INTO `absa_comments` VALUES (100, 146, '内容', '课件质量', '[\'丰富\']', '正向');
INSERT INTO `absa_comments` VALUES (101, 147, '质量', '视频质量', '[\'高\']', '正向');
INSERT INTO `absa_comments` VALUES (102, 148, '课程', '课件质量', '[\'挺好\']', '正向');
INSERT INTO `absa_comments` VALUES (103, 151, '老师', '课件质量', '[\'不错\']', '正向');
INSERT INTO `absa_comments` VALUES (104, 151, '内容', '课件质量', '[\'细且\']', '正向');
INSERT INTO `absa_comments` VALUES (105, 152, '总体', '课件质量', '[\'不错\']', '正向');
INSERT INTO `absa_comments` VALUES (106, 152, '老师', '课件质量', '[\'认真\']', '正向');
INSERT INTO `absa_comments` VALUES (107, 153, '老师', '课件质量', '[\'认真\']', '正向');
INSERT INTO `absa_comments` VALUES (108, 153, '课本', '课件质量', '[\'配套\']', '正向');
INSERT INTO `absa_comments` VALUES (109, 154, '老师', '课件质量', '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (110, 155, '课程', '课件质量', '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (111, 155, '老师', '课件质量', '[\'厉害\']', '正向');
INSERT INTO `absa_comments` VALUES (112, 156, '感觉', '设计巧妙', '[\'不适合\']', '负向');
INSERT INTO `absa_comments` VALUES (113, 157, '老师', '课件质量', '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (114, 159, 'mooc', '视频质量', '[\'方便\']', '正向');
INSERT INTO `absa_comments` VALUES (115, 160, '例子', '课件质量', '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (116, 161, '思路', '设计巧妙', '[\'清晰\']', '正向');

-- ----------------------------
-- Table structure for concern_categories
-- ----------------------------
DROP TABLE IF EXISTS `concern_categories`;
CREATE TABLE `concern_categories`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of concern_categories
-- ----------------------------
INSERT INTO `concern_categories` VALUES (1, '系统全面');
INSERT INTO `concern_categories` VALUES (2, '耐心细致');
INSERT INTO `concern_categories` VALUES (3, '条理清晰');
INSERT INTO `concern_categories` VALUES (4, '风趣幽默');
INSERT INTO `concern_categories` VALUES (5, '设计巧妙');
INSERT INTO `concern_categories` VALUES (6, '视频质量');
INSERT INTO `concern_categories` VALUES (7, '课件质量');

-- ----------------------------
-- Table structure for course_entities
-- ----------------------------
DROP TABLE IF EXISTS `course_entities`;
CREATE TABLE `course_entities`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_key_id` int(11) DEFAULT NULL,
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `university_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `teacher_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_key_id`(`course_key_id`) USING BTREE,
  CONSTRAINT `course_key_id` FOREIGN KEY (`course_key_id`) REFERENCES `course_keys` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_entities
-- ----------------------------
INSERT INTO `course_entities` VALUES (1, 2, '操作系统', '北京交通大学', ' 翟高寿 、 何永忠 、 黄华 、 杨武杰 、 董兴业', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (2, 2, '操作系统A', '南京邮电大学', ' 徐小龙 、 叶宁 、 段卫华 、 胡惠娟 、 吴晓诗 、 窦轶 、 王波', 'https://www.icourse163.org/course/NJUPT-1003219004?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (3, 2, '认证学习\r\n操作系统原理', '华中科技大学', ' 苏曙光 、 邹德清 、 肖来元 、 吴涛 、 李珍', 'https://www.icourse163.org/course/HUST-1003405007?from=searchPage&outVendor=zw_mooc_pcssjg_');

-- ----------------------------
-- Table structure for course_keys
-- ----------------------------
DROP TABLE IF EXISTS `course_keys`;
CREATE TABLE `course_keys`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_key`(`course_key`) USING BTREE,
  INDEX `course_key_2`(`course_key`, `id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_keys
-- ----------------------------
INSERT INTO `course_keys` VALUES (2, '操作系统');
INSERT INTO `course_keys` VALUES (1, '数据结构');
INSERT INTO `course_keys` VALUES (3, '计算机组成原理');
INSERT INTO `course_keys` VALUES (4, '计算机网络');

-- ----------------------------
-- Table structure for raw_comments
-- ----------------------------
DROP TABLE IF EXISTS `raw_comments`;
CREATE TABLE `raw_comments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `university_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `teacher_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `author_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `course_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `voteup` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rating` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 162 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of raw_comments
-- ----------------------------
INSERT INTO `raw_comments` VALUES (142, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1145607925', '翟高寿', '谢谢同学反馈，我们将整理和补充包括socket在内的进程间通信相关内容，以备有需要的同学选用。', '发表于 2020-02-09', '第2次开课', '42', '5.0');
INSERT INTO `raw_comments` VALUES (143, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1137481095', 'Art3misWang', '啊啊啊翟老师超级棒，讲得很详细，mooc操作系统最佳，不像我们老师只会念念PPT。更适合初学者，不适合期末复习。\n我从开学看他讲课到现在，看他头发长长又剪短，有一种莫名的亲切感（写的这是什么废话……）。', '发表于 2019-07-04', '第1次开课', '28', '5.0');
INSERT INTO `raw_comments` VALUES (144, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1390239750', 'mooc60828254811146105', '感觉老师讲的特别好，希望能对于进程间通信讲得更多一点，管道、socket等等，面试经常被问到这些，希望老师不要关闭视频，还想靠这个视频准备秋招呢，哈哈哈哈，一个非科班学生留。', '发表于 2019-07-03', '第1次开课', '13', '5.0');
INSERT INTO `raw_comments` VALUES (145, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1030015168', 'Shouming-White', '讲解详细，目前是我看到的MOOC操作系统最佳。可以看出老师经过比较充分的准备，比我自己学校的老师强太多了，也比那些只会年PPT的所谓国家精品课程好多了，但是课程用的是类Pascal的伪代码，为什么不用C呢？', '发表于 2019-04-28', '第1次开课', '12', '4.0');
INSERT INTO `raw_comments` VALUES (146, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '664783', 'zhenggeda', '课程内容丰富，制作精良，讲解透彻，富有个人魅力。个人建议如下：1.个别知识点没有配图，不易理解。2. 希望能加入操作系统实验部分的课程。3. 能不能把所有课件打个包让学生下载呢？', '发表于 2020-08-03', '第2次开课', '5', '5.0');
INSERT INTO `raw_comments` VALUES (147, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1140749935', 'ecore2020', '内容质量高，老师讲的清晰', '发表于 2019-02-23', '第1次开课', '4', '5.0');
INSERT INTO `raw_comments` VALUES (148, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1143257531', '计算机-18281237-侯云峰', '课程挺好的，讲的通俗易懂，老师也不是照本宣科\n但是有一点点建议：下次开课的时候把每节课视频片头部分的背景音乐声音调小一点', '发表于 2021-04-07', '第3次开课', '3', '4.0');
INSERT INTO `raw_comments` VALUES (149, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1144192487', '201883290555', '只能说比读ppt稍微好一点', '发表于 2021-02-04', '第2次开课', '3', '3.0');
INSERT INTO `raw_comments` VALUES (150, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1412198392', '丁湘懿', '还行，但还是不太明白', '发表于 2020-02-20', '第2次开课', '3', '3.0');
INSERT INTO `raw_comments` VALUES (151, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1396892804', '圆大谷', '老师讲的不错。\n\n但是内容比较细且杂，重点脉络不突出，所以不推荐初学者看，适合了解操作系统大体运行和脉络的人看看细节。', '发表于 2020-12-15', '第1次开课', '2', '5.0');
INSERT INTO `raw_comments` VALUES (152, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1136419797', '吗拉', '老师是认真负责的老师，但一直看到现在第四周了，感觉老师可能不是很适合讲课，但总体来说很不错了，加油加油', '发表于 2019-04-01', '第1次开课', '2', '3.0');
INSERT INTO `raw_comments` VALUES (153, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1144614298', 'mooc1535776400974', '和课本很配套，老师讲得也细致。就听了一点别的老师直接略过去大家还不会的这位老师真的很认真的在讲。喜欢这位老师，喜欢的不得了', '发表于 2019-03-31', '第1次开课', '2', '5.0');
INSERT INTO `raw_comments` VALUES (154, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1027321731', 'DXY17231290孙建熙', '老师讲的他好了', '发表于 2022-04-12', '第4次开课', '1', '5.0');
INSERT INTO `raw_comments` VALUES (155, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1392532695', '独行侠ykt1560857716205', '老师真的超级厉害，各个知识点讲的都非常清楚，对提问也回答的非常非常快，比其他的只会读PPT的课程好太多了，真的是宝藏课程，非常感谢老师。强烈推荐！', '发表于 2022-03-21', '第4次开课', '1', '5.0');
INSERT INTO `raw_comments` VALUES (156, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '3267453', 'hrAlways', '感觉不适合小白', '发表于 2021-06-24', '第3次开课', '1', '3.0');
INSERT INTO `raw_comments` VALUES (157, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1391016990', 'kakayajaja', '翟老师讲得真的非常非常棒，一直都在跟着翟老师后面学！', '发表于 2020-12-27', '第2次开课', '1', '5.0');
INSERT INTO `raw_comments` VALUES (158, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1395743964', 'hebeu180650109王宇豪', '讲的不太好。还不如自己看书', '发表于 2020-11-05', '第2次开课', '1', '1.0');
INSERT INTO `raw_comments` VALUES (159, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1028652747', 'BJTUHH17281269', 'mooc还是很方便，可以随时看，随时停，自主调节进度。', '发表于 2020-06-11', '第2次开课', '1', '5.0');
INSERT INTO `raw_comments` VALUES (160, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1029805111', '斌_计算机视觉', '讲的非常好，虽然一次不能全部消化，多听几次就行了。举得例子非常棒！', '发表于 2020-05-24', '第2次开课', '1', '5.0');
INSERT INTO `raw_comments` VALUES (161, '操作系统', '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1020228123', '师爷ykt1474516570118', '生动，清晰，详细，思路也很清晰，比只读ppt的好太多', '发表于 2019-06-26', '第1次开课', '1', '5.0');

-- ----------------------------
-- View structure for course_key_entity
-- ----------------------------
DROP VIEW IF EXISTS `course_key_entity`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `course_key_entity` AS select `course_keys`.`course_key` AS `course_key`,`course_entities`.`course_name` AS `course_name`,`course_entities`.`university_name` AS `university_name`,`course_entities`.`teacher_name` AS `teacher_name`,`course_entities`.`url` AS `url` from (`course_keys` join `course_entities` on((`course_entities`.`course_key_id` = `course_keys`.`id`)));

SET FOREIGN_KEY_CHECKS = 1;
