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

 Date: 25/01/2024 17:25:56
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
) ENGINE = InnoDB AUTO_INCREMENT = 144 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of absa_comments
-- ----------------------------
INSERT INTO `absa_comments` VALUES (2, 1, '课程', NULL, '[\'开心\']', '正向');
INSERT INTO `absa_comments` VALUES (3, 1, '地方', NULL, '[\'迷茫\']', '正向');
INSERT INTO `absa_comments` VALUES (4, 1, '课', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (5, 1, '灰', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (6, 1, '难度', NULL, '[\'大\']', '负向');
INSERT INTO `absa_comments` VALUES (7, 1, '时间', NULL, '[\'多\']', '正向');
INSERT INTO `absa_comments` VALUES (8, 1, '难度', NULL, '[\'大\']', '负向');
INSERT INTO `absa_comments` VALUES (9, 1, '讲解', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (10, 1, '代码', NULL, '[\'全\']', '正向');
INSERT INTO `absa_comments` VALUES (11, 1, '老师', NULL, 'None', '正向');
INSERT INTO `absa_comments` VALUES (12, 1, '数据', NULL, '[\'大\']', '正向');
INSERT INTO `absa_comments` VALUES (13, 1, '老师', NULL, '[\'深\', \'好\']', '正向');
INSERT INTO `absa_comments` VALUES (14, 1, '人', NULL, 'None', '负向');
INSERT INTO `absa_comments` VALUES (15, 1, '课', NULL, 'None', '正向');
INSERT INTO `absa_comments` VALUES (16, 1, '老师', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (17, 1, '课程', NULL, '[\'开心\']', '正向');
INSERT INTO `absa_comments` VALUES (18, 1, '地方', NULL, '[\'迷茫\']', '负向');
INSERT INTO `absa_comments` VALUES (19, 1, '课', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (20, 1, '讲解', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (21, 1, '难度', NULL, '[\'大\']', '负向');
INSERT INTO `absa_comments` VALUES (22, 1, '时间', NULL, '[\'多\']', '正向');
INSERT INTO `absa_comments` VALUES (23, 1, '难度', NULL, '[\'大\']', '负向');
INSERT INTO `absa_comments` VALUES (24, 1, '讲解', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (25, 1, '代码', NULL, '[\'全\']', '正向');
INSERT INTO `absa_comments` VALUES (26, 1, '老师', NULL, 'None', '正向');
INSERT INTO `absa_comments` VALUES (27, 1, '数据', NULL, '[\'大\']', '正向');
INSERT INTO `absa_comments` VALUES (28, 1, '老师', NULL, '[\'深\', \'好\']', '正向');
INSERT INTO `absa_comments` VALUES (29, 1, '人', NULL, 'None', '负向');
INSERT INTO `absa_comments` VALUES (30, 1, '课', NULL, 'None', '正向');
INSERT INTO `absa_comments` VALUES (31, 1, '老师', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (32, 1, '课程', NULL, '[\'开心\']', '正向');
INSERT INTO `absa_comments` VALUES (33, 1, '难度', NULL, '[\'高\']', '正向');
INSERT INTO `absa_comments` VALUES (34, 1, '姥姥', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (35, 1, '大学', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (36, 1, '地方', NULL, '[\'迷茫\']', '正向');
INSERT INTO `absa_comments` VALUES (37, 1, '课', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (38, 1, '灰', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (39, 1, '难度', NULL, '[\'大\']', '负向');
INSERT INTO `absa_comments` VALUES (40, 1, '时间', NULL, '[\'少\', \'多\']', '正向');
INSERT INTO `absa_comments` VALUES (41, 1, '难度', NULL, '[\'大\']', '负向');
INSERT INTO `absa_comments` VALUES (42, 1, '讲解', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (43, 1, '代码', NULL, '[\'不\', \'全\']', '正向');
INSERT INTO `absa_comments` VALUES (44, 1, '老师', NULL, 'None', '正向');
INSERT INTO `absa_comments` VALUES (45, 1, '数据', NULL, '[\'大\']', '正向');
INSERT INTO `absa_comments` VALUES (46, 1, '老师', NULL, '[\'深\', \'好\']', '正向');
INSERT INTO `absa_comments` VALUES (47, 1, '人', NULL, 'None', '负向');
INSERT INTO `absa_comments` VALUES (48, 1, '课', NULL, 'None', '正向');
INSERT INTO `absa_comments` VALUES (49, 1, '老师', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (50, 1, '难度', NULL, '[\'高\']', '正向');
INSERT INTO `absa_comments` VALUES (51, 1, '姥姥', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (52, 1, '大学', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (53, 1, '地方', NULL, '[\'迷茫\']', '正向');
INSERT INTO `absa_comments` VALUES (54, 1, '课', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (55, 1, '灰', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (56, 1, '难度', NULL, '[\'大\']', '负向');
INSERT INTO `absa_comments` VALUES (57, 1, '时间', NULL, '[\'少\', \'多\']', '正向');
INSERT INTO `absa_comments` VALUES (58, 1, '难度', NULL, '[\'大\']', '负向');
INSERT INTO `absa_comments` VALUES (59, 1, '讲解', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (60, 1, '代码', NULL, '[\'不\', \'全\']', '正向');
INSERT INTO `absa_comments` VALUES (61, 1, '老师', NULL, 'None', '正向');
INSERT INTO `absa_comments` VALUES (62, 1, '数据', NULL, '[\'大\']', '正向');
INSERT INTO `absa_comments` VALUES (63, 1, '老师', NULL, '[\'深\', \'好\']', '正向');
INSERT INTO `absa_comments` VALUES (64, 1, '人', NULL, 'None', '负向');
INSERT INTO `absa_comments` VALUES (65, 1, '课', NULL, 'None', '正向');
INSERT INTO `absa_comments` VALUES (66, 1, '老师', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (67, 1, '难度', NULL, '[\'高\']', '正向');
INSERT INTO `absa_comments` VALUES (68, 1, '姥姥', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (69, 1, '大学', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (70, 1, '地方', NULL, '[\'迷茫\']', '正向');
INSERT INTO `absa_comments` VALUES (71, 1, '课', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (72, 1, '灰', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (74, 1, '时间', NULL, '[\'少\', \'多\']', '正向');
INSERT INTO `absa_comments` VALUES (75, 1, '难度', NULL, '[\'大\']', '负向');
INSERT INTO `absa_comments` VALUES (76, 1, '讲解', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (77, 1, '代码', NULL, '[\'不\', \'全\']', '正向');
INSERT INTO `absa_comments` VALUES (78, 1, '老师', NULL, 'None', '正向');
INSERT INTO `absa_comments` VALUES (79, 1, '数据', NULL, '[\'大\']', '正向');
INSERT INTO `absa_comments` VALUES (80, 1, '老师', NULL, '[\'深\', \'好\']', '正向');
INSERT INTO `absa_comments` VALUES (81, 1, '人', NULL, 'None', '负向');
INSERT INTO `absa_comments` VALUES (82, 1, '课', NULL, 'None', '正向');
INSERT INTO `absa_comments` VALUES (83, 1, '老师', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (84, 1, '难度', NULL, '[\'高\']', '正向');
INSERT INTO `absa_comments` VALUES (85, 1, '姥姥', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (86, 1, '大学', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (87, 1, '地方', NULL, '[\'迷茫\']', '正向');
INSERT INTO `absa_comments` VALUES (88, 1, '课', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (89, 1, '灰', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (90, 1, '难度', NULL, '[\'大\']', '负向');
INSERT INTO `absa_comments` VALUES (91, 1, '时间', NULL, '[\'少\', \'多\']', '正向');
INSERT INTO `absa_comments` VALUES (92, 1, '难度', NULL, '[\'大\']', '负向');
INSERT INTO `absa_comments` VALUES (93, 1, '讲解', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (94, 1, '代码', NULL, '[\'不\', \'全\']', '正向');
INSERT INTO `absa_comments` VALUES (95, 1, '老师', NULL, 'None', '正向');
INSERT INTO `absa_comments` VALUES (96, 1, '数据', NULL, '[\'大\']', '正向');
INSERT INTO `absa_comments` VALUES (97, 1, '老师', NULL, '[\'深\', \'好\']', '正向');
INSERT INTO `absa_comments` VALUES (98, 1, '人', NULL, 'None', '负向');
INSERT INTO `absa_comments` VALUES (99, 1, '课', NULL, 'None', '正向');
INSERT INTO `absa_comments` VALUES (100, 1, '老师', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (101, 1, '难度', NULL, '[\'高\']', '正向');
INSERT INTO `absa_comments` VALUES (102, 1, '姥姥', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (103, 1, '大学', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (104, 1, '地方', NULL, '[\'迷茫\']', '正向');
INSERT INTO `absa_comments` VALUES (105, 1, '课', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (106, 1, '灰', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (107, 1, '化学系的渣，希望能有助于我从化学转方向去大数据', NULL, '[\'大\']', '负向');
INSERT INTO `absa_comments` VALUES (108, 1, '时间', NULL, '[\'少\', \'多\']', '正向');
INSERT INTO `absa_comments` VALUES (109, 1, '难度', NULL, '[\'大\']', '负向');
INSERT INTO `absa_comments` VALUES (110, 1, '讲解', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (111, 1, '代码', NULL, '[\'不\', \'全\']', '正向');
INSERT INTO `absa_comments` VALUES (112, 1, '老师', NULL, 'None', '正向');
INSERT INTO `absa_comments` VALUES (113, 1, '数据', NULL, '[\'大\']', '正向');
INSERT INTO `absa_comments` VALUES (114, 1, '老师', NULL, '[\'深\', \'好\']', '正向');
INSERT INTO `absa_comments` VALUES (115, 1, '人', NULL, 'None', '负向');
INSERT INTO `absa_comments` VALUES (116, 1, '课', NULL, 'None', '正向');
INSERT INTO `absa_comments` VALUES (117, 1, '老师', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (118, 1, '地方', NULL, '[\'迷茫\']', '正向');
INSERT INTO `absa_comments` VALUES (119, 1, '课', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (120, 1, '灰', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (121, 1, '难度', NULL, '[\'大\']', '负向');
INSERT INTO `absa_comments` VALUES (122, 1, '时间', NULL, '[\'少\', \'多\']', '正向');
INSERT INTO `absa_comments` VALUES (123, 1, '难度', NULL, '[\'大\']', '负向');
INSERT INTO `absa_comments` VALUES (124, 1, '讲解', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (125, 1, '代码', NULL, '[\'不\', \'全\']', '正向');
INSERT INTO `absa_comments` VALUES (126, 1, '老师', NULL, 'None', '正向');
INSERT INTO `absa_comments` VALUES (127, 1, '数据', NULL, '[\'大\']', '正向');
INSERT INTO `absa_comments` VALUES (128, 1, '老师', NULL, '[\'深\', \'好\']', '正向');
INSERT INTO `absa_comments` VALUES (129, 1, '人', NULL, 'None', '负向');
INSERT INTO `absa_comments` VALUES (130, 1, '课', NULL, 'None', '正向');
INSERT INTO `absa_comments` VALUES (131, 1, '老师', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (132, 1, '地方', NULL, '[\'迷茫\']', '正向');
INSERT INTO `absa_comments` VALUES (133, 1, '课', NULL, '[\'好\']', '正向');
INSERT INTO `absa_comments` VALUES (134, 1, '时间', NULL, '[\'少\', \'多\']', '正向');
INSERT INTO `absa_comments` VALUES (135, 1, '难度', NULL, '[\'大\']', '负向');
INSERT INTO `absa_comments` VALUES (136, 1, '讲解', NULL, '[\'棒\']', '正向');
INSERT INTO `absa_comments` VALUES (137, 1, '代码', NULL, '[\'不\', \'全\']', '正向');
INSERT INTO `absa_comments` VALUES (138, 1, '老师', NULL, 'None', '正向');
INSERT INTO `absa_comments` VALUES (139, 1, '数据', NULL, '[\'大\']', '正向');
INSERT INTO `absa_comments` VALUES (140, 1, '老师', NULL, '[\'深\', \'好\']', '正向');
INSERT INTO `absa_comments` VALUES (141, 1, '人', NULL, 'None', '负向');
INSERT INTO `absa_comments` VALUES (142, 1, '课', NULL, 'None', '正向');
INSERT INTO `absa_comments` VALUES (143, 1, '老师', NULL, '[\'棒\']', '正向');

-- ----------------------------
-- Table structure for course_keys
-- ----------------------------
DROP TABLE IF EXISTS `course_keys`;
CREATE TABLE `course_keys`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_keys
-- ----------------------------
INSERT INTO `course_keys` VALUES (1, '数据结构');
INSERT INTO `course_keys` VALUES (2, '操作系统');
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
) ENGINE = InnoDB AUTO_INCREMENT = 142 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of raw_comments
-- ----------------------------
INSERT INTO `raw_comments` VALUES (127, '数据结构', '数据结构', '浙江大学', '陈越 教授 何钦铭 教授', 'https://www.icourse163.org/course/ZJU-93001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1142881726', '不太迷人的反派_', '.。。一开始我还以为自己跟不上，认为救我一个人跟不上节奏，后来才发现不只是我一个，我想对第一次学这门课的同学说啊，跟不上，听不懂，太难别放弃，过两天继续听，我个人参加了第八次的数据结构课程，一路糊糊涂涂听过来，拿了个合格的证书，不过我想说姥姥这也太勤了吧，第八次刚结束，第九次课就来了，没办法，这个暑假接着把第九次课再学一遍，希望能把布置的编程题全部做完，也希望能拿个优秀，同时希望大二能拿个全国计算机程序大赛奖哈哈', '发表于 2019-06-03', '第9次开课', '282', '5.0');
INSERT INTO `raw_comments` VALUES (128, '数据结构', '数据结构', '浙江大学', '陈越 教授 何钦铭 教授', 'https://www.icourse163.org/course/ZJU-93001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1034753586', '滴滴大大大', '我是个专科生，学校没有开相关方面的课程，直到在大一下半年去参加ACM浙江赛区的时候，我才直到数据结构，虽然在平时敲代码的时候有用到这些东西，但是没有经过系统的学习，还是有些迷茫的地方。感谢陈姥姥，何教授的教导。', '发表于 2019-03-13', '第8次开课', '213', '5.0');
INSERT INTO `raw_comments` VALUES (129, '数据结构', '数据结构', '浙江大学', '陈越 教授 何钦铭 教授', 'https://www.icourse163.org/course/ZJU-93001?from=searchPage&outVendor=zw_mooc_pcssjg_', '12476367', 'GuYz', '两位教授讲的课非常好，至少是我在MOOC以及各大网络学习平台上上过的最好的课之一。看过之后对我整体提升非常有价值，谢谢网易提供这么好的一个良心的平台给我们方便优质地进行网络学习，谢谢浙江大学，谢谢两位教授！', '发表于 2018-01-19', '第6次开课', '140', '5.0');
INSERT INTO `raw_comments` VALUES (132, '数据结构', '数据结构', '浙江大学', '陈越 教授 何钦铭 教授', 'https://www.icourse163.org/course/ZJU-93001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1135099140', '芒果菌zz', '在酱的一个数据类型里，就像酱紫。', '发表于 2018-10-08', '第6次开课', '92', '5.0');
INSERT INTO `raw_comments` VALUES (133, '数据结构', '数据结构', '浙江大学', '陈越 教授 何钦铭 教授', 'https://www.icourse163.org/course/ZJU-93001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1146470382', '张dragon涛', '能不能早点开课。。。我假期时间多，开学时间就少了。', '发表于 2019-01-01', '第8次开课', '71', '5.0');
INSERT INTO `raw_comments` VALUES (134, '数据结构', '数据结构', '浙江大学', '陈越 教授 何钦铭 教授', 'https://www.icourse163.org/course/ZJU-93001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1150499400', 'mooc79651060236539478', '机械专业转cs，看完翁恺的c就看了这个，觉得看起来没什么压力，没想到难度其实还挺大，这下心里美滋滋。', '发表于 2019-05-25', '第8次开课', '62', '5.0');
INSERT INTO `raw_comments` VALUES (135, '数据结构', '数据结构', '浙江大学', '陈越 教授 何钦铭 教授', 'https://www.icourse163.org/course/ZJU-93001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1148546714', 'HandsomeBoyGirl', '何老师那部分我是给5颗星的，但看了陈老师的部分只能给三颗星了，她讲的内容中经常充斥着\'好像....好像...\'，我都有点怀疑陈老师是不是数学系毕业的了，何老师就不同了，遇到问题就用数学公式，比如平衡树的高度为什么可以是logn，如果是给陈老师讲，可能一笔略过。何老师真的讲的太好了，但何老师给出的实例代码不比陈老师给的实例代码全，然而何老师的讲解很棒，虽然我之前有提前学过数据结构，但听了何老师的讲解感觉又收获了不少，十分感谢！至于陈老师，就是废话有点多，经常...\n\n更多', '发表于 2019-08-22', '第9次开课', '55', '3.0');
INSERT INTO `raw_comments` VALUES (136, '数据结构', '数据结构', '浙江大学', '陈越 教授 何钦铭 教授', 'https://www.icourse163.org/course/ZJU-93001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1035341119', '今朝有悔', '老师，希望可不可以用java代码来实现呢？', '发表于 2019-02-23', '第8次开课', '47', '5.0');
INSERT INTO `raw_comments` VALUES (137, '数据结构', '数据结构', '浙江大学', '陈越 教授 何钦铭 教授', 'https://www.icourse163.org/course/ZJU-93001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1034230964', 'SEU-研54班-九-184470-刘鹏', '浙大数据结构吃透了贼靠谱。。', '发表于 2019-05-13', '第7次开课', '38', '5.0');
INSERT INTO `raw_comments` VALUES (138, '数据结构', '数据结构', '浙江大学', '陈越 教授 何钦铭 教授', 'https://www.icourse163.org/course/ZJU-93001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1141839033', '夢叶四月', '一个非科班的转行狗。现在课件出到第8八周了, 题目才做到第5周。每周都抽出16小时左右时间(社畜能抽出时间的极限了)学习数据结构,  题目还是做不全对(总有那么一个测试点对不了)，做不熟练(疯狂看课件和源码来参考)。当然这不怪老师, 而是这门课本身太难，倒不如说正是两位老师教得好，教得深, 我才不会自欺欺人地觉得学好了(然而什么都不会)。能够让我看清自己和科班生的差距，才能让目标更清晰。已做好二刷准备, 程序员的内功，一定要学扎实！', '发表于 2019-07-27', '第9次开课', '29', '5.0');
INSERT INTO `raw_comments` VALUES (139, '数据结构', '数据结构', '浙江大学', '陈越 教授 何钦铭 教授', 'https://www.icourse163.org/course/ZJU-93001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1029252893', '被吊打的学渣', '还有人竟然只给两星？', '发表于 2018-02-15', '第6次开课', '29', '5.0');
INSERT INTO `raw_comments` VALUES (140, '数据结构', '数据结构', '浙江大学', '陈越 教授 何钦铭 教授', 'https://www.icourse163.org/course/ZJU-93001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1147049404', '南亦秋', '喜欢陈越老师，能表白吗～课超级好', '发表于 2019-04-03', '第8次开课', '24', '5.0');
INSERT INTO `raw_comments` VALUES (141, '数据结构', '数据结构', '浙江大学', '陈越 教授 何钦铭 教授', 'https://www.icourse163.org/course/ZJU-93001?from=searchPage&outVendor=zw_mooc_pcssjg_', '1023904741', '好久不见mooc201', '老师讲的很棒，祝我圆梦浙大', '发表于 2019-04-07', '第8次开课', '22', '5.0');

SET FOREIGN_KEY_CHECKS = 1;
