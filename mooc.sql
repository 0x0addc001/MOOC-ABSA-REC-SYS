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

 Date: 03/03/2024 22:36:37
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
  `category_id` int(11) DEFAULT NULL,
  `opinion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sentiment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sentiment_probability` decimal(30, 20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `raw_id`(`raw_id`) USING BTREE,
  INDEX `category_id`(`category_id`) USING BTREE,
  CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `concern_categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `raw_id` FOREIGN KEY (`raw_id`) REFERENCES `raw_comments` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 299 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of absa_comments
-- ----------------------------
INSERT INTO `absa_comments` VALUES (250, 323, '难度', 6, '[\'高\']', '正向', 0.94184436460633590000);
INSERT INTO `absa_comments` VALUES (251, 325, '姥姥', 6, '[\'棒\']', '正向', 0.99116094684772090000);
INSERT INTO `absa_comments` VALUES (252, 327, '大学', 6, '[\'好\']', '正向', 0.75910873789553080000);
INSERT INTO `absa_comments` VALUES (253, 328, '地方', 6, '[\'迷茫\']', '正向', 0.99354804502262080000);
INSERT INTO `absa_comments` VALUES (254, 329, '课', 7, '[\'好\']', '正向', 0.99945743217366710000);
INSERT INTO `absa_comments` VALUES (255, 330, '灰', 6, '[\'好\']', '正向', 0.98733916687393730000);
INSERT INTO `absa_comments` VALUES (256, 331, '化学系的渣，希望能有助于我从化学转方向去大数据', 7, '[\'大\']', '负向', 0.43074485861140130000);
INSERT INTO `absa_comments` VALUES (257, 333, '时间', 6, '[\'少\', \'多\']', '正向', 0.43752666339727140000);
INSERT INTO `absa_comments` VALUES (258, 334, '难度', 6, '[\'大\']', '负向', 0.54201383706181970000);
INSERT INTO `absa_comments` VALUES (259, 335, '讲解', 7, '[\'棒\']', '正向', 0.99743420233477310000);
INSERT INTO `absa_comments` VALUES (260, 335, '代码', 6, '[\'不\', \'全\']', '正向', 0.51772871751236240000);
INSERT INTO `absa_comments` VALUES (261, 336, '老师', 7, 'None', '正向', 0.91050695200105030000);
INSERT INTO `absa_comments` VALUES (262, 337, '数据', 6, '[\'大\']', '正向', 0.99842490029688240000);
INSERT INTO `absa_comments` VALUES (263, 338, '老师', 7, '[\'深\', \'好\']', '正向', 0.97595501633611550000);
INSERT INTO `absa_comments` VALUES (264, 339, '人', 6, 'None', '负向', 0.99201319268182430000);
INSERT INTO `absa_comments` VALUES (265, 340, '课', 7, 'None', '正向', 0.99642340828612670000);
INSERT INTO `absa_comments` VALUES (266, 341, '老师', 7, '[\'棒\']', '正向', 0.99791651992237010000);
INSERT INTO `absa_comments` VALUES (267, 342, '时间', 6, '[\'很多\', \'精力，最终还是没有\']', '正向', 0.52005488783141020000);
INSERT INTO `absa_comments` VALUES (268, 343, '地方', 6, '[\'预期\']', '正向', 0.96180002041024440000);
INSERT INTO `absa_comments` VALUES (269, 344, '东西', 6, 'None', '正向', 0.99434009095041630000);
INSERT INTO `absa_comments` VALUES (270, 345, '字', 6, '[\'不能好看\']', '负向', 0.98984897314574030000);
INSERT INTO `absa_comments` VALUES (271, 347, '老师', 7, '[\'负责\']', '正向', 0.99465026616940120000);
INSERT INTO `absa_comments` VALUES (272, 348, '课程', 7, '[\'棒\']', '正向', 0.99968763599157740000);
INSERT INTO `absa_comments` VALUES (273, 348, '老师', 7, 'None', '正向', 0.98992008194777630000);
INSERT INTO `absa_comments` VALUES (274, 350, '感觉', 5, '[\'吃力\']', '未提及', 0.00000000000000000000);
INSERT INTO `absa_comments` VALUES (275, 351, '容量', 6, '[\'精彩\']', '正向', 0.99883146963074760000);
INSERT INTO `absa_comments` VALUES (276, 353, '老师', 7, '[\'棒\']', '正向', 0.99019095512692700000);
INSERT INTO `absa_comments` VALUES (277, 354, '老师', 7, 'None', '负向', 0.82150159901677710000);
INSERT INTO `absa_comments` VALUES (278, 355, '课程', 7, '[\'好\']', '正向', 0.99974538465913550000);
INSERT INTO `absa_comments` VALUES (279, 356, '设计', 5, '[\'好\']', '正向', 0.99944211408807600000);
INSERT INTO `absa_comments` VALUES (280, 357, '学习', 7, 'None', '正向', 0.99711595711627870000);
INSERT INTO `absa_comments` VALUES (281, 358, '老师', 7, '[\'提高\']', '负向', 0.27314106004155290000);
INSERT INTO `absa_comments` VALUES (282, 359, '课程', 7, '[\'好\']', '正向', 0.99979270555098760000);
INSERT INTO `absa_comments` VALUES (283, 360, '思路', 5, '[\'清晰\']', '正向', 0.99975134471242200000);
INSERT INTO `absa_comments` VALUES (284, 361, '算法', 7, '[\'不一样\']', '正向', 0.99353652780652620000);
INSERT INTO `absa_comments` VALUES (285, 362, '收获', 7, '[\'大\']', '正向', 0.99970247571535250000);
INSERT INTO `absa_comments` VALUES (286, 364, '内容', 7, '[\'不可以\']', '负向', 0.95920110031535440000);
INSERT INTO `absa_comments` VALUES (287, 365, '设置', 6, '[\'好\']', '正向', 0.99804723210384690000);
INSERT INTO `absa_comments` VALUES (288, 368, '质量', 6, '[\'差\']', '负向', 0.99285576574713730000);
INSERT INTO `absa_comments` VALUES (289, 369, '形式', 5, '[\'高效\']', '正向', 0.99950546160326680000);
INSERT INTO `absa_comments` VALUES (290, 370, '老师', 7, '[\'优秀\']', '正向', 0.99763967666489610000);
INSERT INTO `absa_comments` VALUES (291, 371, '作业', 7, 'None', '正向', 0.99659363941277590000);
INSERT INTO `absa_comments` VALUES (292, 374, '例子', 7, '[\'多\']', '正向', 0.99883869661976380000);
INSERT INTO `absa_comments` VALUES (293, 376, '课程', 7, '[\'好\']', '正向', 0.99977196561974320000);
INSERT INTO `absa_comments` VALUES (294, 378, '课程', 7, '[\'好\']', '正向', 0.99968638477497510000);
INSERT INTO `absa_comments` VALUES (295, 379, '课程', 7, '[\'精彩\']', '正向', 0.95025316256076310000);
INSERT INTO `absa_comments` VALUES (296, 379, '时间', 6, '[\'晚\']', '负向', 0.98331538487270360000);
INSERT INTO `absa_comments` VALUES (297, 380, '老师', 7, '[\'好\']', '正向', 0.98759164397980110000);
INSERT INTO `absa_comments` VALUES (298, 381, '音乐', 6, 'None', '正向', 0.97482727447134820000);

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
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_entities
-- ----------------------------
INSERT INTO `course_entities` VALUES (5, 1, '数据结构', '浙江大学', '陈越 教授 何钦铭 教授', 'https://www.icourse163.org/course/ZJU-93001?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (6, 1, '数据结构', '南京邮电大学', '王海艳 教授 肖甫 教授 朱洁 副教授', 'https://www.icourse163.org/course/NJUPT-1206361803?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (7, 1, '数据结构', '西北大学', '耿国华 教授 刘晓宁 副教授 卢燕宁 讲师', 'https://www.icourse163.org/course/NWU-298002?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (8, 1, '数据结构', '中国人民解放军陆军工程大学', '陈卫卫 教授 唐艳琴 副教授 吴永芬 讲师', 'https://www.icourse163.org/course/PAEU-1001660013?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (9, 1, '数据结构与算法', '电子科技大学', '林劼 副教授 戴波 副教授 刘震 副教授', 'https://www.icourse163.org/course/UESTC-1002532005?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (10, 1, '数据结构', '厦门大学', '郑旭玲 助理教授 曾华琳 讲师 陈毅东 副教授', 'https://www.icourse163.org/course/XMU-1206002801?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (11, 1, '数据结构', '华中科技大学', '李国徽 教授 袁凌 副教授 祝建华 副教授', 'https://www.icourse163.org/course/HUST-1001907004?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (12, 1, '数据结构', '青岛大学', '刘遵仁 教授 张志梅 副教授 马玉梅 副教授', 'https://www.icourse163.org/course/QDU-1206599808?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (13, 1, '数据结构', '武汉大学', '李春葆 教授', 'https://www.icourse163.org/course/WHU-1001539003?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (14, 1, '数据结构', '长沙民政职业技术学院', '雷军环 教授 吴名星 副教授/国家系统分析师 王涛 讲师', 'https://www.icourse163.org/course/CSMZXY-1206940806?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (15, 1, '数据结构', '苏州大学', '孔芳 教授 张玉华 副教授 唐自立 讲师', 'https://www.icourse163.org/course/SUDA-1206148814?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (16, 1, '数据结构与算法', '西安邮电大学', '王曙燕 教授 王燕 副教授 王春梅 副教授', 'https://www.icourse163.org/course/XIYOU-1002578005?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (17, 1, '数据结构', '南京中医药大学', '李新霞 讲师 丁有伟 讲师 苏传琦 讲师', 'https://www.icourse163.org/course/NJUTCM-1463948161?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (18, 1, '数据结构与算法', '北京大学', '张铭 教授 王腾蛟 教授 赵海燕 副教授', 'https://www.icourse163.org/course/PKU-1002534001?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (19, 1, '数据结构与算法', '常熟理工学院', '周思林 讲师 周蓓 讲师 龚声蓉 教授', 'https://www.icourse163.org/course/CSLG-1449649163?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (20, 1, '数据结构与算法Python版', '北京大学', '陈斌 教授', 'https://www.icourse163.org/course/PKU-1206307812?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (21, 1, '数据结构', '江苏电子信息职业学院', '李刚 副教授 徐义晗 教授 程乐 教授', 'https://www.icourse163.org/course/HCIT-1206627802?from=searchPage&outVendor=zw_mooc_pcssjg_');

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
  `course_entity_id` int(11) DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_time` date DEFAULT NULL,
  `course_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `voteup` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_entity_id`(`course_entity_id`) USING BTREE,
  CONSTRAINT `course_entity_id` FOREIGN KEY (`course_entity_id`) REFERENCES `course_entities` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 382 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of raw_comments
-- ----------------------------
INSERT INTO `raw_comments` VALUES (322, 5, '1030488535', '肖--生工--02-菅昊羽', '只有我一个人觉得课后编程题和老师讲的根本不在一个难度级别吗QAQ\n一杯茶一包烟 一道链表写一天', '2019-09-16', '第10次开课', 571, 5);
INSERT INTO `raw_comments` VALUES (323, 5, '4947184', '羽翼0星辰', '姥姥的数据结构MOOC可以说是我在中M见过的难度最高的几个课之一（其实我是很想把之一去掉的，但是话不能说的太死），每周都有几道非常难的编程难题，每次做的时候我都在想这真不愧是浙大，不过，话说回来，真想学数据结构的话，还是应该来听姥姥的课。毕竟有难度的练习对自身能力的提升才更有效。', '2018-01-12', '第6次开课', 546, 5);
INSERT INTO `raw_comments` VALUES (324, 5, '1029223008', 'jerry010201163com', 'for (int i = 0; i < 10000; i     ) printf(\"讲的太好了！！！\\n\");', '2018-02-22', '第5次开课', 459, 5);
INSERT INTO `raw_comments` VALUES (325, 5, '1017548170', 'SunHanxi', '考研成功~~~姥姥真棒~~~', '2018-03-27', '第5次开课', 301, 5);
INSERT INTO `raw_comments` VALUES (326, 5, '1142881726', '不太迷人的反派_', '.。。一开始我还以为自己跟不上，认为救我一个人跟不上节奏，后来才发现不只是我一个，我想对第一次学这门课的同学说啊，跟不上，听不懂，太难别放弃，过两天继续听，我个人参加了第八次的数据结构课程，一路糊糊涂涂听过来，拿了个合格的证书，不过我想说姥姥这也太勤了吧，第八次刚结束，第九次课就来了，没办法，这个暑假接着把第九次课再学一遍，希望能把布置的编程题全部做完，也希望能拿个优秀，同时希望大二能拿个全国计算机程序大赛奖哈哈', '2019-06-03', '第9次开课', 285, 5);
INSERT INTO `raw_comments` VALUES (327, 5, '1016694931', 'chopchop', '好的大学没有围墙', '2018-06-05', '第4次开课', 284, 5);
INSERT INTO `raw_comments` VALUES (328, 5, '1034753586', '滴滴大大大', '我是个专科生，学校没有开相关方面的课程，直到在大一下半年去参加ACM浙江赛区的时候，我才直到数据结构，虽然在平时敲代码的时候有用到这些东西，但是没有经过系统的学习，还是有些迷茫的地方。感谢陈姥姥，何教授的教导。', '2019-03-13', '第8次开课', 216, 5);
INSERT INTO `raw_comments` VALUES (329, 5, '12476367', 'GuYz', '两位教授讲的课非常好，至少是我在MOOC以及各大网络学习平台上上过的最好的课之一。看过之后对我整体提升非常有价值，谢谢网易提供这么好的一个良心的平台给我们方便优质地进行网络学习，谢谢浙江大学，谢谢两位教授！', '2018-01-19', '第6次开课', 140, 5);
INSERT INTO `raw_comments` VALUES (330, 5, '11051793', '活力男孩', '姥姥讲得灰常好，，不知道慕课和浙大真实的数据结构课堂有什么区别？：）', '2018-03-11', '第6次开课', 102, 5);
INSERT INTO `raw_comments` VALUES (331, 5, '1028495319', 'mooc1500718884391', '本人FDU化学系的渣，希望能有助于我从化学转方向去大数据。', '2018-04-21', '第6次开课', 98, 5);
INSERT INTO `raw_comments` VALUES (332, 5, '1135099140', '芒果菌zz', '在酱的一个数据类型里，就像酱紫。', '2018-10-08', '第6次开课', 92, 5);
INSERT INTO `raw_comments` VALUES (333, 5, '1146470382', '张dragon涛', '能不能早点开课。。。我假期时间多，开学时间就少了。', '2019-01-01', '第8次开课', 71, 5);
INSERT INTO `raw_comments` VALUES (334, 5, '1150499400', 'mooc79651060236539478', '机械专业转cs，看完翁恺的c就看了这个，觉得看起来没什么压力，没想到难度其实还挺大，这下心里美滋滋。', '2019-05-25', '第8次开课', 63, 5);
INSERT INTO `raw_comments` VALUES (335, 5, '1148546714', 'HandsomeBoyGirl', '何老师那部分我是给5颗星的，但看了陈老师的部分只能给三颗星了，她讲的内容中经常充斥着\'好像....好像...\'，我都有点怀疑陈老师是不是数学系毕业的了，何老师就不同了，遇到问题就用数学公式，比如平衡树的高度为什么可以是logn，如果是给陈老师讲，可能一笔略过。何老师真的讲的太好了，但何老师给出的实例代码不比陈老师给的实例代码全，然而何老师的讲解很棒，虽然我之前有提前学过数据结构，但听了何老师的讲解感觉又收获了不少，十分感谢！至于陈老师，就是废话有点多，经常...\n\n更多', '2019-08-22', '第9次开课', 56, 3);
INSERT INTO `raw_comments` VALUES (336, 5, '1035341119', '今朝有悔', '老师，希望可不可以用java代码来实现呢？', '2019-02-23', '第8次开课', 48, 5);
INSERT INTO `raw_comments` VALUES (337, 5, '1034230964', 'SEU-研54班-九-184470-刘鹏', '浙大数据结构吃透了贼靠谱。。', '2019-05-13', '第7次开课', 38, 5);
INSERT INTO `raw_comments` VALUES (338, 5, '1141839033', '夢叶四月', '一个非科班的转行狗。现在课件出到第8八周了, 题目才做到第5周。每周都抽出16小时左右时间(社畜能抽出时间的极限了)学习数据结构,  题目还是做不全对(总有那么一个测试点对不了)，做不熟练(疯狂看课件和源码来参考)。当然这不怪老师, 而是这门课本身太难，倒不如说正是两位老师教得好，教得深, 我才不会自欺欺人地觉得学好了(然而什么都不会)。能够让我看清自己和科班生的差距，才能让目标更清晰。已做好二刷准备, 程序员的内功，一定要学扎实！', '2019-07-27', '第9次开课', 29, 5);
INSERT INTO `raw_comments` VALUES (339, 5, '1029252893', '被吊打的学渣', '还有人竟然只给两星？', '2018-02-15', '第6次开课', 29, 5);
INSERT INTO `raw_comments` VALUES (340, 5, '1147049404', '南亦秋', '喜欢陈越老师，能表白吗～课超级好', '2019-04-03', '第8次开课', 24, 5);
INSERT INTO `raw_comments` VALUES (341, 5, '1023904741', '好久不见mooc201', '老师讲的很棒，祝我圆梦浙大', '2019-04-07', '第8次开课', 22, 5);
INSERT INTO `raw_comments` VALUES (342, 9, '6274004', 'willie710509', '    这是目前为止，我在“中国大学慕课”网上学的最难的一门课。非CS专业出身、离开大学20多年了，《数据结构与算法》课，对计算机专业也是难啃的骨头，我花费了很多时间和精力，最终还是没有完成，只学到了第三章《分治递归》。\n    根据课件和自己的理解，并参考《大话数据结构》，写了整整一个本子的笔记，补充、完成了大部分课上、课后练习和讨论题；通过独立思考，写了长整数加减法、带括号加减乘除四则运算两个对我来说稍难的程序。虽然未完成全部课程，但已完成的那部分还是...\n\n更多', '2019-01-31', '第2次开课', 129, 4);
INSERT INTO `raw_comments` VALUES (343, 9, '1018845843', 'ykt1469528202172', '超级细致，感觉和学校讲的基本一样，有很多地方是超出预期的，感谢老师们。\n希望能被评为国家级精品课程', '2018-03-03', '第1次开课', 33, 5);
INSERT INTO `raw_comments` VALUES (344, 9, '1026489562', 'fly_max', '戴波老师讲的真的很好，讲的很清楚，我学到了很多东西，甚至川普也能听懂了。\n在人工智能的路上我又迈出了坚实的一步。我寒假准备再看一遍哈哈。', '2019-01-05', '第2次开课', 14, 5);
INSERT INTO `raw_comments` VALUES (345, 9, '1028576207', 'mooc1501040072039', '能不能把课件发一下，这样我们也好复习，还有写的字能不能好看点', '2018-03-01', '第1次开课', 11, 5);
INSERT INTO `raw_comments` VALUES (346, 9, '1028978037', '弗洛伊德的遗言', '应该是门好课，反正我听不懂，以为会讲一些基础，概念等，有点懵，我去看基础课程了', '2018-03-07', '第1次开课', 10, 4);
INSERT INTO `raw_comments` VALUES (347, 9, '1024795855', '蓝宇真名', '老师非常负责，总是有问必答。\n讲的也非常非常清楚，真希望有机会能在戴老师手下读研究生。', '2018-03-29', '第1次开课', 8, 5);
INSERT INTO `raw_comments` VALUES (348, 9, '1385140866', 'mooc86328815728885964', '非常棒的课程，老师讲的很仔细，很用心。谢谢老师！666666', '2019-02-19', '第3次开课', 5, 5);
INSERT INTO `raw_comments` VALUES (349, 9, '1141168838', '信工171张哲圣1711013037', '一个一个小视频缓存点的手疼', '2019-02-28', '第3次开课', 4, 4);
INSERT INTO `raw_comments` VALUES (350, 9, '1024671176', '晨曦小媛', '感觉学起来有点吃力', '2018-06-16', '第1次开课', 4, 5);
INSERT INTO `raw_comments` VALUES (351, 9, '1137870511', '木大侠哈哈', '内容 有容量 很精彩 ', '2018-04-19', '第1次开课', 4, 5);
INSERT INTO `raw_comments` VALUES (352, 9, '1459443152', '陈好运.', '这个普通话听得有一点点点让我窒息', '2021-05-05', '第7次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (353, 9, '1396035905', 'ykt64788007542374995', '超爱戴波老师 讲得太棒哒 赞赞赞！！！', '2019-08-23', '第4次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (354, 9, '1142206090', 'SuperWhitee', '老师平翘舌不分，听起来贼不舒服', '2019-03-21', '第2次开课', 3, 3);
INSERT INTO `raw_comments` VALUES (355, 9, '1146343436', 'Luckymooc948', '非常好的课程', '2019-02-16', '第2次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (356, 9, '1139055279', 'mooc1523627093917', '课程设计很好', '2019-02-12', '第2次开课', 3, 4);
INSERT INTO `raw_comments` VALUES (357, 9, '1035383202', 'Starykt1515044613786', '好，很好，要好好学习', '2019-02-01', '第2次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (358, 9, '1035409226', 'Adda_Chen', '；老师普通话可以在提高一些，，，，', '2018-08-31', '第1次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (359, 9, '1138154198', '郑智勇zzy', '很好的课程，感谢戴波老师的授课', '2018-07-01', '第1次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (360, 9, '1018777893', '150mooc1', '很细致，思路清晰', '2018-02-28', '第1次开课', 3, 4);
INSERT INTO `raw_comments` VALUES (361, 9, '10739713', '重拾旧梦', '通过这一单元的学习对数据结构和算法有了不一样的认识，对程序有了更深入的了解，也认识到这门课程对于后台开发的重要性，自己还需要认真努力的学习重难点的知识。', '2018-02-28', '第1次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (362, 20, '1023674451', '__Quan__', '课程末期上的车，遇到的疑惑老师都给了解答，收获很大。\n\n以下是由各章节pdf合成的完整课件，做了目录，分享给需要的同学。\n链接:https://pan.baidu.com/s/1Ca2XxgerV8eUQZuUDMyxOA 密码:fiu1', '2019-12-14', '第1次开课', 230, 5);
INSERT INTO `raw_comments` VALUES (363, 20, '1014180924', 'hu-qiu-yu', '课程网站地址： http://gis4g.pku.edu.cn/course/pythonds/\n网易会把http协议变成https协议，导致网页打不开， 所有打不开的网址你都可以改一下协议试一试。', '2019-08-31', '第1次开课', 49, 5);
INSERT INTO `raw_comments` VALUES (364, 20, '2609039', '傥来', '可不可以把上一次开课的内容开一下，现在关闭了看不到', '2020-01-21', '第2次开课', 38, 5);
INSERT INTO `raw_comments` VALUES (365, 20, '11305118', '越秋', '一直很期待有一个Python版的数据结构与算法。\n因为相对比较熟的语言就是Python。但之前用Python主要都是做数据分析，调个pandas就行了。\n现在感觉如果要做数学建模，解决一些问题，DSA成了一个越不过去的坎。\n所以就开始自学算法，但发现大部分资源都是C，目前也就是看了看算法图解，也没有动力去敲代码。\n现在可以跟着mooc一起学习，老师的课程设置也很好，把理论和实践结合起来，真的太好了！', '2019-10-16', '第1次开课', 26, 5);
INSERT INTO `raw_comments` VALUES (366, 20, '1019937620', '小鑫同学', '期待课程\n参考资料---[数据结构与算法Python-中文版-内部教材](https://gis4g.pku.edu.cn/download/sessdsa-textbook/  )\n对应参考教材页面打不开啊,可以解决一下最好.', '2019-08-28', '第1次开课', 15, 5);
INSERT INTO `raw_comments` VALUES (367, 20, '1147265014', 'strawbest', '陈教授出品,必属精品，未看先赞！', '2019-09-06', '第1次开课', 13, 5);
INSERT INTO `raw_comments` VALUES (368, 20, '1023329282', 'vingtcent', '看过陈老师的另外一个离散数学，也是精品！\n实话说，这个课程是目前最好的Python版数据结构与算法。\n网上很多培训机构的课程都是几千块钱，而且质量比这个差多了。', '2019-12-31', '第1次开课', 8, 5);
INSERT INTO `raw_comments` VALUES (369, 20, '1024149793', 'seaweedman', '陈老师讲的也太好了，上学的时候，每次听数据结构和算法的课都会睡着，听陈老师的课，竟然一点都不困，清晰明白，简单直接。讲解完思路，直接上代码的教学形式也高效，节省时间，方便反复观看自己迷惑的点。总之，非常好。', '2019-12-01', '第1次开课', 8, 5);
INSERT INTO `raw_comments` VALUES (370, 20, '1425847083', '奋斗不息的小郡', '陈斌老师是一位非常优秀的老师，直接现身屏幕前授课，没有枯燥地简单照读PPT，而是现身说法，灵活地进行概念讲解、代码解释等等。每一节课，陈老师都会列出本节课的授课体系和刚要，然后按照顺序进行授课，这是非常适合我的。我就是需要构建体系框架才能记住、学明白的性格。正是因为慕课秉承着“大学没有围墙”的宗旨，加上有像陈斌老师这样学识渊博又认真做慕课的老师，平凡的我才能受益匪浅。', '2020-05-30', '第2次开课', 5, 5);
INSERT INTO `raw_comments` VALUES (371, 20, '1396052230', 'Pepeykt64853538264605977', '讲得很好，并且精心准备了作业，如果能公布答案就好了', '2019-10-24', '第1次开课', 5, 5);
INSERT INTO `raw_comments` VALUES (372, 20, '1137543245', '笏琴ykt1521456884546', '虽然没开课，但我一直很期待要一个python版的数据结构和算法，还是陈教授的，肯定很赞！', '2019-09-05', '第1次开课', 4, 5);
INSERT INTO `raw_comments` VALUES (373, 20, '1146148138', 'Kevin_994008019', '2018年上半年，在朋友的介绍下，以研究生身份在线下旁听了陈老师的这门课（因为是本科生的课，研究生不能选）。三年后，在中M上二刷陈老师的课，进一步加深了对相关概念的理解和方法的掌握。这门课有以下几个优点：① 基本是全网少有的用Python讲数算的课，对于非计算机专业人士来讲非常友好，省去了为了学数算而去专精C/C  的时间；② 陈老师的课循循善诱，总是以生活中的具体例子出发，来引入专业概念，使得概念的接受变得更加容易；③ 陈老师是设身处地从学生学习和掌握知...\n\n更多', '2021-06-06', '第4次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (374, 20, '1444990660', 'mooc34111421480519700', '我觉得程序，主要还是实践，例子多一点，事半功倍。如北大郭炜老师的课', '2021-12-08', '第5次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (375, 20, '1436112883', 'k1258769078196720730', '讲的太好了，我想看第二次开课，怎么关闭了看不到了，怎样才能看到啊', '2020-07-02', '第1次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (376, 20, '1150152420', '小元子321', '课程很好，基础、易懂，推荐', '2020-07-02', '第2次开课', 2, 4);
INSERT INTO `raw_comments` VALUES (377, 20, '1024338646', '网恋教父张艾宇', '感谢那位分享课件的帅哥/美女，刚刚下载下来，还没看', '2020-02-11', '第2次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (378, 20, '1547475327', '周韬顺', '很好的课程', '2023-06-20', '第7次开课', 1, 5);
INSERT INTO `raw_comments` VALUES (379, 20, '1406091683', '白白郭', '课程很精彩，可惜发现的时间太晚了。5.1号到6.1号没有修完。不知道结课后还能不能继续学习。', '2023-05-28', '第7次开课', 1, 5);
INSERT INTO `raw_comments` VALUES (380, 20, '1026279986', '糯米糯米99', '陈老师讲的也太好啦！！！', '2021-10-01', '第5次开课', 1, 5);
INSERT INTO `raw_comments` VALUES (381, 20, '1031588786', '保护好辣条', '求第一个视频背景音乐，贼嗨', '2020-07-20', '第1次开课', 1, 5);

-- ----------------------------
-- View structure for ck_ce
-- ----------------------------
DROP VIEW IF EXISTS `ck_ce`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `ck_ce` AS select `course_keys`.`id` AS `ck_id`,`course_keys`.`course_key` AS `course_key`,`course_entities`.`id` AS `ce_id`,`course_entities`.`course_name` AS `course_name`,`course_entities`.`university_name` AS `university_name`,`course_entities`.`teacher_name` AS `teacher_name`,`course_entities`.`url` AS `url` from (`course_keys` join `course_entities` on((`course_entities`.`course_key_id` = `course_keys`.`id`)));

-- ----------------------------
-- View structure for ck_ce_rc
-- ----------------------------
DROP VIEW IF EXISTS `ck_ce_rc`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `ck_ce_rc` AS select `course_keys`.`id` AS `ck_id`,`course_keys`.`course_key` AS `course_key`,`course_entities`.`id` AS `ce_id`,`course_entities`.`course_name` AS `course_name`,`course_entities`.`university_name` AS `university_name`,`course_entities`.`teacher_name` AS `teacher_name`,`course_entities`.`url` AS `url`,`raw_comments`.`id` AS `rc_id`,`raw_comments`.`user_id` AS `user_id`,`raw_comments`.`user_name` AS `user_name`,`raw_comments`.`comments` AS `comments`,`raw_comments`.`created_time` AS `created_time`,`raw_comments`.`course_time` AS `course_time`,`raw_comments`.`voteup` AS `voteup`,`raw_comments`.`rating` AS `rating` from ((`course_keys` join `course_entities` on((`course_entities`.`course_key_id` = `course_keys`.`id`))) join `raw_comments` on((`raw_comments`.`course_entity_id` = `course_entities`.`id`)));

-- ----------------------------
-- View structure for ck_ct_ce_rc_ac
-- ----------------------------
DROP VIEW IF EXISTS `ck_ct_ce_rc_ac`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `ck_ct_ce_rc_ac` AS select `course_keys`.`id` AS `ck_id`,`course_keys`.`course_key` AS `course_key`,`concern_categories`.`id` AS `ct_id`,`concern_categories`.`category` AS `category`,`course_entities`.`id` AS `ce_id`,`course_entities`.`course_name` AS `course_name`,`course_entities`.`university_name` AS `university_name`,`course_entities`.`teacher_name` AS `teacher_name`,`course_entities`.`url` AS `url`,`raw_comments`.`id` AS `rc_id`,`raw_comments`.`user_id` AS `user_id`,`raw_comments`.`user_name` AS `user_name`,`raw_comments`.`comments` AS `comments`,`raw_comments`.`created_time` AS `created_time`,`raw_comments`.`course_time` AS `course_time`,`raw_comments`.`voteup` AS `voteup`,`raw_comments`.`rating` AS `rating`,`absa_comments`.`id` AS `ac_id`,`absa_comments`.`aspect` AS `aspect`,`absa_comments`.`opinion` AS `opinion`,`absa_comments`.`sentiment` AS `sentiment`,`absa_comments`.`sentiment_probability` AS `sentiment_probability` from ((((`course_keys` join `course_entities` on((`course_entities`.`course_key_id` = `course_keys`.`id`))) join `raw_comments` on((`raw_comments`.`course_entity_id` = `course_entities`.`id`))) join `absa_comments` on((`absa_comments`.`raw_id` = `raw_comments`.`id`))) join `concern_categories` on((`absa_comments`.`category_id` = `concern_categories`.`id`)));

SET FOREIGN_KEY_CHECKS = 1;
