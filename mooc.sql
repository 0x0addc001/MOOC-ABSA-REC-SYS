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

 Date: 17/03/2024 13:39:25
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
) ENGINE = InnoDB AUTO_INCREMENT = 438 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `absa_comments` VALUES (299, 382, '课程', 7, '[\'简短\']', '负向', 0.69855094405316360000);
INSERT INTO `absa_comments` VALUES (300, 383, '总结', 7, '[\'到位\']', '正向', 0.99936775374430910000);
INSERT INTO `absa_comments` VALUES (301, 384, '课程', 7, '[\'合理\']', '正向', 0.99757521697686970000);
INSERT INTO `absa_comments` VALUES (302, 386, '老师', 7, '[\'标准\']', '正向', 0.98335800778121650000);
INSERT INTO `absa_comments` VALUES (303, 387, '系统', 6, '[\'真正\', \'诚意\']', '正向', 0.99861478481510350000);
INSERT INTO `absa_comments` VALUES (304, 388, '内容', 7, '[\'全面\']', '正向', 0.99967500034462380000);
INSERT INTO `absa_comments` VALUES (305, 390, '讲解', 7, '[\'详细\']', '正向', 0.99935231660382940000);
INSERT INTO `absa_comments` VALUES (306, 390, '内容', 7, '[\'充实\']', '正向', 0.99966296411971460000);
INSERT INTO `absa_comments` VALUES (307, 393, '讲解', 7, '[\'详细\']', '正向', 0.99947334053835140000);
INSERT INTO `absa_comments` VALUES (308, 393, '学习', 7, '[\'方便\']', '正向', 0.99940898646624280000);
INSERT INTO `absa_comments` VALUES (309, 394, '结构', 5, '[\'清晰\']', '正向', 0.99941696781414180000);
INSERT INTO `absa_comments` VALUES (310, 394, '讲解', 7, '[\'详细\']', '正向', 0.99969437072292070000);
INSERT INTO `absa_comments` VALUES (311, 395, '内容', 7, '[\'充实\']', '正向', 0.99965509733797120000);
INSERT INTO `absa_comments` VALUES (312, 395, '讲解', 7, '[\'详细\']', '正向', 0.99967434667773600000);
INSERT INTO `absa_comments` VALUES (313, 396, '收获', 7, '[\'大\']', '正向', 0.99957875803759680000);
INSERT INTO `absa_comments` VALUES (314, 398, '讲课', 7, '[\'好\']', '正向', 0.99928349879259320000);
INSERT INTO `absa_comments` VALUES (315, 401, '内容', 7, '[\'充实\']', '正向', 0.99979199034305570000);
INSERT INTO `absa_comments` VALUES (316, 402, '能用', 6, '[\'简单\']', '正向', 0.87475625868343340000);
INSERT INTO `absa_comments` VALUES (317, 403, '条理', 3, '[\'清晰\']', '正向', 0.99967315483047510000);
INSERT INTO `absa_comments` VALUES (318, 405, '老师', 7, '[\'不错\']', '正向', 0.90838509160476730000);
INSERT INTO `absa_comments` VALUES (319, 406, '老师', 7, '[\'好\']', '正向', 0.98834194280325250000);
INSERT INTO `absa_comments` VALUES (320, 407, '老师', 7, '[\'认真\']', '正向', 0.99882706019498000000);
INSERT INTO `absa_comments` VALUES (321, 408, '老师', 7, '[\'棒\', \'棒\']', '正向', 0.99923738238489080000);
INSERT INTO `absa_comments` VALUES (322, 410, '内容', 7, '[\'充实\']', '正向', 0.99967136699288520000);
INSERT INTO `absa_comments` VALUES (323, 411, '课程', 7, '[\'喜欢\']', '正向', 0.99960855468173900000);
INSERT INTO `absa_comments` VALUES (324, 411, '成绩', 6, '[\'好\']', '正向', 0.99163058551965830000);
INSERT INTO `absa_comments` VALUES (325, 412, '老师', 7, '[\'不错\']', '正向', 0.97524176479554110000);
INSERT INTO `absa_comments` VALUES (326, 413, '成绩', 6, '[\'好\']', '正向', 0.99577492189018810000);
INSERT INTO `absa_comments` VALUES (327, 414, '感觉', 5, '[\'棒\']', '正向', 0.99689010417003130000);
INSERT INTO `absa_comments` VALUES (328, 414, '老师', 7, 'None', '正向', 0.99688139842405120000);
INSERT INTO `absa_comments` VALUES (329, 415, '条理', 3, '[\'清晰\']', '正向', 0.99964210585633140000);
INSERT INTO `absa_comments` VALUES (330, 416, '节课', 7, '[\'还行\']', '正向', 0.99955563705875860000);
INSERT INTO `absa_comments` VALUES (331, 419, '讲解', 7, '[\'详细\']', '正向', 0.99961141512926230000);
INSERT INTO `absa_comments` VALUES (332, 420, '声音', 6, 'None', '负向', 0.98887643582747840000);
INSERT INTO `absa_comments` VALUES (333, 422, '老师', 7, '[\'长\']', '正向', 0.99665771648707490000);
INSERT INTO `absa_comments` VALUES (334, 422, '说话', 6, '[\'好听\']', '正向', 0.99841365558927460000);
INSERT INTO `absa_comments` VALUES (335, 422, '系统', 6, '[\'好\']', '正向', 0.99881779028475750000);
INSERT INTO `absa_comments` VALUES (336, 423, '老师', 7, 'None', '正向', 0.98213479531511890000);
INSERT INTO `absa_comments` VALUES (337, 425, '知识', 7, '[\'实际\']', '正向', 0.99935541959570170000);
INSERT INTO `absa_comments` VALUES (338, 425, '老师', 7, '[\'好\']', '正向', 0.99356886424352810000);
INSERT INTO `absa_comments` VALUES (339, 426, '资料', 7, '[\'多\']', '正向', 0.99713586421417590000);
INSERT INTO `absa_comments` VALUES (340, 427, '老师', 7, '[\'好\']', '正向', 0.94883285712910490000);
INSERT INTO `absa_comments` VALUES (341, 428, '氛围', 4, '[\'好\']', '正向', 0.99749166739141510000);
INSERT INTO `absa_comments` VALUES (342, 429, '课程', 7, '[\'赞\']', '正向', 0.99975635096193120000);
INSERT INTO `absa_comments` VALUES (343, 429, '思路', 5, '[\'清晰\']', '正向', 0.99953334887297630000);
INSERT INTO `absa_comments` VALUES (344, 429, '老师', 7, '[\'佩服\', \'强\']', '正向', 0.99575529462575570000);
INSERT INTO `absa_comments` VALUES (345, 429, '举例', 7, '[\'精彩\']', '正向', 0.99960873321128930000);
INSERT INTO `absa_comments` VALUES (346, 430, '课程', 7, '[\'好\']', '正向', 0.99974586179541800000);
INSERT INTO `absa_comments` VALUES (347, 432, '感觉', 5, '[\'不错\']', '正向', 0.99453744109632680000);
INSERT INTO `absa_comments` VALUES (348, 432, '老师', 7, 'None', '正向', 0.96872581545847680000);
INSERT INTO `absa_comments` VALUES (349, 432, '形象', 5, '[\'干净\']', '正向', 0.99932728894733810000);
INSERT INTO `absa_comments` VALUES (350, 432, '吐字', 6, '[\'清晰\']', '正向', 0.99805782260451890000);
INSERT INTO `absa_comments` VALUES (351, 433, '老师', 7, '[\'渊博\']', '正向', 0.99052509629988000000);
INSERT INTO `absa_comments` VALUES (352, 434, '耳朵', 6, '[\'舒服\']', '正向', 0.99918905857094840000);
INSERT INTO `absa_comments` VALUES (353, 434, '大脑', 6, '[\'舒服\']', '正向', 0.99944545310563630000);
INSERT INTO `absa_comments` VALUES (354, 434, '眼睛', 6, '[\'舒服\']', '正向', 0.99978471911909140000);
INSERT INTO `absa_comments` VALUES (355, 436, '节奏', 4, '[\'好\']', '正向', 0.99883826009084590000);
INSERT INTO `absa_comments` VALUES (356, 438, '地方', 6, 'None', '正向', 0.42244172023738713000);
INSERT INTO `absa_comments` VALUES (357, 440, '理论', 5, '[\'宏观\']', '正向', 0.99211062343652050000);
INSERT INTO `absa_comments` VALUES (358, 441, '设计', 5, 'None', '正向', 0.99936817125160360000);
INSERT INTO `absa_comments` VALUES (359, 441, '知识', 7, '[\'全面\']', '正向', 0.99775707500312900000);
INSERT INTO `absa_comments` VALUES (360, 442, '老师', 7, '[\'好\']', '正向', 0.95334795173481620000);
INSERT INTO `absa_comments` VALUES (361, 443, '课程', 7, '[\'好\']', '正向', 0.99924989690835280000);
INSERT INTO `absa_comments` VALUES (362, 445, '感觉', 5, 'None', '正向', 0.91119216062134000000);
INSERT INTO `absa_comments` VALUES (363, 445, '收获', 7, 'None', '正向', 0.73482918672256400000);
INSERT INTO `absa_comments` VALUES (364, 447, '系统', 6, '[\'认真\', \'完全\']', '正向', 0.99853097861655020000);
INSERT INTO `absa_comments` VALUES (365, 450, '知识', 7, '[\'新\']', '正向', 0.99733429102289510000);
INSERT INTO `absa_comments` VALUES (366, 451, '节课', 7, '[\'好\']', '正向', 0.99962661155276320000);
INSERT INTO `absa_comments` VALUES (367, 453, '推荐', 5, '[\'好\']', '正向', 0.99882458280494650000);
INSERT INTO `absa_comments` VALUES (368, 454, '知识', 7, '[\'新\']', '正向', 0.99959592122526080000);
INSERT INTO `absa_comments` VALUES (369, 455, '结构', 5, '[\'合理\']', '正向', 0.99908423890693850000);
INSERT INTO `absa_comments` VALUES (370, 455, '方式', 5, '[\'简洁\']', '正向', 0.99323254902260060000);
INSERT INTO `absa_comments` VALUES (371, 456, '内容', 7, '[\'丰富\']', '正向', 0.75318539602128000000);
INSERT INTO `absa_comments` VALUES (372, 462, '形式', 5, '[\'方便\']', '正向', 0.99933194353764070000);
INSERT INTO `absa_comments` VALUES (373, 464, '比例', 6, '[\'大\']', '负向', 0.36174258350776256000);
INSERT INTO `absa_comments` VALUES (374, 465, '讲义', 7, '[\'精致\']', '正向', 0.99953096620146550000);
INSERT INTO `absa_comments` VALUES (375, 465, '效果', 6, '[\'显著\']', '正向', 0.99922844438223280000);
INSERT INTO `absa_comments` VALUES (376, 465, '内容', 7, '[\'详实\']', '正向', 0.99976743619373560000);
INSERT INTO `absa_comments` VALUES (377, 468, '内容', 7, '[\'完整\']', '正向', 0.99920991770321520000);
INSERT INTO `absa_comments` VALUES (378, 470, '讲课', 7, '[\'好\']', '正向', 0.99914008262129530000);
INSERT INTO `absa_comments` VALUES (379, 471, '讲解', 7, '[\'细致\']', '正向', 0.99914604561519130000);
INSERT INTO `absa_comments` VALUES (380, 472, '学习', 7, '[\'多\']', '正向', 0.99717789169512730000);
INSERT INTO `absa_comments` VALUES (381, 473, '课程', 7, '[\'不错\']', '正向', 0.99914175454145490000);
INSERT INTO `absa_comments` VALUES (382, 474, '课程', 7, '[\'不错\']', '正向', 0.99962041327248840000);
INSERT INTO `absa_comments` VALUES (383, 475, '老师', 7, '[\'棒\']', '正向', 0.99960819744319810000);
INSERT INTO `absa_comments` VALUES (384, 476, '用心', 5, '[\'棒\']', '正向', 0.99963978195613020000);
INSERT INTO `absa_comments` VALUES (385, 478, '时间', 6, '[\'长\']', '负向', 0.95047217313110370000);
INSERT INTO `absa_comments` VALUES (386, 480, '老师', 7, '[\'好\']', '正向', 0.99473834204988520000);
INSERT INTO `absa_comments` VALUES (387, 481, '流弊', 4, '[\'好\']', '正向', 0.98055780826985030000);
INSERT INTO `absa_comments` VALUES (388, 482, '老师', 7, '[\'好\']', '正向', 0.99814769053196530000);
INSERT INTO `absa_comments` VALUES (389, 482, '讲课', 7, '[\'好\']', '正向', 0.99945242747635280000);
INSERT INTO `absa_comments` VALUES (390, 485, '课程', 7, '[\'好\']', '正向', 0.99971874420025130000);
INSERT INTO `absa_comments` VALUES (391, 486, '汇编', 7, '[\'不行\']', '负向', 0.99691894277395220000);
INSERT INTO `absa_comments` VALUES (392, 488, '废话', 4, '[\'多\']', '正向', 0.96656275623072930000);
INSERT INTO `absa_comments` VALUES (393, 490, '老师', 7, '[\'好\']', '正向', 0.96466356022308730000);
INSERT INTO `absa_comments` VALUES (394, 491, '音乐', 6, '[\'难受\']', '负向', 0.29851087575991640000);
INSERT INTO `absa_comments` VALUES (395, 493, '音乐', 6, '[\'疼\']', '负向', 0.80444510994072970000);
INSERT INTO `absa_comments` VALUES (396, 495, '老师', 7, '[\'好\']', '正向', 0.99824695167285430000);
INSERT INTO `absa_comments` VALUES (397, 496, '音乐', 6, '[\'大\']', '负向', 0.87742697208314270000);
INSERT INTO `absa_comments` VALUES (398, 497, '老师', 7, '[\'不\']', '负向', 0.98105897770000890000);
INSERT INTO `absa_comments` VALUES (399, 500, '干扰', 6, '[\'大\']', '正向', 0.95709951267978970000);
INSERT INTO `absa_comments` VALUES (400, 502, '老师', 7, 'None', '正向', 0.98008467412047650000);
INSERT INTO `absa_comments` VALUES (401, 504, '课程', 7, '[\'不错\']', '正向', 0.99849975812685440000);
INSERT INTO `absa_comments` VALUES (402, 504, '味性', 6, '[\'低\']', '负向', 0.99592817053390800000);
INSERT INTO `absa_comments` VALUES (403, 505, '音乐', 6, '[\'好\']', '负向', 0.76021207417036150000);
INSERT INTO `absa_comments` VALUES (404, 509, '资料', 7, '[\'广泛\', \'丰富\']', '正向', 0.99878973560094410000);
INSERT INTO `absa_comments` VALUES (405, 509, '课程', 7, '[\'好\']', '正向', 0.99791021614340990000);
INSERT INTO `absa_comments` VALUES (406, 509, '资料', 7, '[\'广泛\', \'丰富\']', '正向', 0.99878973560094410000);
INSERT INTO `absa_comments` VALUES (407, 510, '知识', 7, '[\'到位\', \'普及\']', '正向', 0.44829862709486434000);
INSERT INTO `absa_comments` VALUES (408, 510, '老师', 7, '[\'详细\']', '正向', 0.99724855034657620000);
INSERT INTO `absa_comments` VALUES (409, 511, '课程', 7, 'None', '正向', 0.99162065940600290000);
INSERT INTO `absa_comments` VALUES (410, 512, '学者', 5, '[\'友好\']', '正向', 0.98313102189720780000);
INSERT INTO `absa_comments` VALUES (411, 513, '老师', 7, '[\'细致\']', '正向', 0.99742918320278660000);
INSERT INTO `absa_comments` VALUES (412, 514, '讲', 7, '[\'好\']', '正向', 0.99922331095306300000);
INSERT INTO `absa_comments` VALUES (413, 515, '老师', 7, 'None', '负向', 0.80889378751272290000);
INSERT INTO `absa_comments` VALUES (414, 517, '教学效果', 6, '[\'良好\']', '正向', 0.99875995114576450000);
INSERT INTO `absa_comments` VALUES (415, 517, '方法', 7, '[\'新颖\']', '正向', 0.99921593141248620000);
INSERT INTO `absa_comments` VALUES (416, 517, '气氛', 4, 'None', '正向', 0.99807128110419190000);
INSERT INTO `absa_comments` VALUES (417, 518, '质量', 6, '[\'高\']', '正向', 0.99963781180356650000);
INSERT INTO `absa_comments` VALUES (418, 518, '内容', 7, '[\'新颖\']', '正向', 0.99963829119177920000);
INSERT INTO `absa_comments` VALUES (419, 518, '课程', 7, '[\'好\']', '正向', 0.99863593244641180000);
INSERT INTO `absa_comments` VALUES (420, 518, '效果', 6, '[\'佳\']', '正向', 0.99958650567488760000);
INSERT INTO `absa_comments` VALUES (421, 518, '资料', 7, '[\'丰富\', \'广泛\']', '正向', 0.99886878550696780000);
INSERT INTO `absa_comments` VALUES (422, 518, '资料', 7, '[\'丰富\', \'广泛\']', '正向', 0.99886878550696780000);
INSERT INTO `absa_comments` VALUES (423, 518, '内容', 7, '[\'新颖\']', '正向', 0.99963829119177920000);
INSERT INTO `absa_comments` VALUES (424, 519, '知识', 7, '[\'很多\']', '正向', 0.99207093052482520000);
INSERT INTO `absa_comments` VALUES (425, 521, '管理', 5, '[\'详细\']', '正向', 0.99915998512265960000);
INSERT INTO `absa_comments` VALUES (426, 524, '内容', 7, '[\'丰富\']', '正向', 0.99963304717611830000);
INSERT INTO `absa_comments` VALUES (427, 525, '帮助', 7, '[\'大\']', '正向', 0.99949187478285140000);
INSERT INTO `absa_comments` VALUES (428, 527, '小白', 7, '[\'友好\']', '正向', 0.99592472823460550000);
INSERT INTO `absa_comments` VALUES (429, 528, '制作', 5, '[\'精致\']', '正向', 0.99700729802159320000);
INSERT INTO `absa_comments` VALUES (430, 529, '东西', 6, '[\'实用\']', '正向', 0.99792586056292270000);
INSERT INTO `absa_comments` VALUES (431, 530, '理论', 5, '[\'实践\']', '正向', 0.99638213991568850000);
INSERT INTO `absa_comments` VALUES (432, 531, '课程', 7, '[\'赞\']', '正向', 0.96762615451460480000);
INSERT INTO `absa_comments` VALUES (433, 532, '内容', 7, '[\'丰富\']', '正向', 0.99947137579887980000);
INSERT INTO `absa_comments` VALUES (434, 534, '时间', 6, '[\'长\']', '负向', 0.73717525745841780000);
INSERT INTO `absa_comments` VALUES (435, 538, '老师', 7, '[\'好\']', '正向', 0.99188346837595990000);
INSERT INTO `absa_comments` VALUES (436, 544, '知识', 7, '[\'很多\']', '正向', 0.99602600317235360000);
INSERT INTO `absa_comments` VALUES (437, 545, '课程', 7, '[\'好\']', '正向', 0.99973406168550130000);

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
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `course_entities` VALUES (22, 2, '操作系统', '苏州大学', '李培峰 教授 王红玲 副教授 吕强 教授', 'https://www.icourse163.org/course/SUDA-1001752241?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (23, 2, '操作系统A', '南京邮电大学', '徐小龙 教授 叶宁 教授 段卫华 讲师', 'https://www.icourse163.org/course/NJUPT-1003219004?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (24, 2, '操作系统原理', '华中科技大学', '苏曙光 副教授 邹德清 教授 肖来元 教授', 'https://www.icourse163.org/course/HUST-1003405007?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (25, 2, '操作系统', '北京交通大学', '翟高寿 副教授 何永忠 教授 黄华 副教授', 'https://www.icourse163.org/course/NJTU-1003245001?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (26, 2, '操作系统', '哈尔滨工业大学', '李治军 副教授 张丽杰 教授', 'https://www.icourse163.org/course/HIT-1002531008?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (27, 2, '操作系统', '郑州轻工业大学', '黄伟 副教授 张旭 讲师 钱慎一 教授', 'https://www.icourse163.org/course/ZZULI-1468794241?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (28, 2, '操作系统', '信阳师范学院', '柳春华 副教授', 'https://www.icourse163.org/course/XYTC-1465599169?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (29, 2, '操作系统', '郑州经贸学院', '李志民 副教授 张新彩 讲师 夏辉丽 副教授', 'https://www.icourse163.org/course/ZCIB-1002149003?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (30, 2, 'Linux操作系统', '浙江工贸职业技术学院', '王安曼 讲师 章增优 副教授 范渊 讲师', 'https://www.icourse163.org/course/ZJITC-1466093196?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (31, 2, '操作系统原理', '河南工业大学', '马宏琳 副教授 于俊伟 副教授 刘扬 教授', 'https://www.icourse163.org/course/HAUT-1462126172?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (32, 2, '操作系统', '东北大学', '王大玲 教授 林树宽 教授 冯时 副教授', 'https://www.icourse163.org/course/NEU-1002927012?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (33, 2, '操作系统原理及应用', '武汉理工大学', '江长斌 副教授', 'https://www.icourse163.org/course/WHUT-1001861003?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (34, 2, '计算机操作系统', '青岛大学', '孙英华 教授', 'https://www.icourse163.org/course/QDU-1206575805?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (35, 2, 'Linux操作系统编程', '电子科技大学', '肖堃 高级实验师 何中海 工程师 周无恙 实验师', 'https://www.icourse163.org/course/UESTC-1003040002?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (36, 2, '操作系统应用（Windows）', '湖南铁道职业技术学院', '颜珍平 教授、高级工程师', 'https://www.icourse163.org/course/HNRPC-1466004194?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (37, 2, 'Linux操作系统基础', '江苏电子信息职业学院', '乔琪 副教授、高级工程师、课程主讲教师 杜文龙 教授 苏红艳 副教授、高级工程师，课程主讲教师', 'https://www.icourse163.org/course/HCIT-1460295163?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (38, 2, '计算机操作系统', '电子科技大学', '蒲晓蓉 教授 秦科 教授，博士生导师 薛瑞尼 副教授', 'https://www.icourse163.org/course/UESTC-1205790811?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (39, 2, '操作系统原理', '西安交通大学', '田丽华 副教授', 'https://www.icourse163.org/course/XJTU-1003409001?from=searchPage&outVendor=zw_mooc_pcssjg_');
INSERT INTO `course_entities` VALUES (40, 2, '操作系统原理', '中南财经政法大学', '屈振新 副教授', 'https://www.icourse163.org/course/ZUEL-1206362803?from=searchPage&outVendor=zw_mooc_pcssjg_');

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
) ENGINE = InnoDB AUTO_INCREMENT = 546 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `raw_comments` VALUES (382, 22, '1030015168', 'Shouming-White', '课程太过简短了，当然你也可以说学生应该学会课后自学，但如果大部分都要自学的话就不用这个课程，而且那个男的老师，说话口齿不太清楚，不仅口吃不清，完全就是念ppt，居然还是国家精品？', '2019-04-27', '第4次开课', 119, 2);
INSERT INTO `raw_comments` VALUES (383, 22, '1027307290', '77777qazxsw7', '真心很推荐初学者选择这个课程，经常结合各种例子通俗易懂，而且总结也很到位，不像别的上来就一堆枯燥术语轮番轰炸。。', '2018-04-21', '第2次开课', 39, 5);
INSERT INTO `raw_comments` VALUES (384, 22, '5883336', '风同学', '我觉得这个课程完全可以作为国家精品课程。同时看过其他几个学校的操作系统课程，感觉这个讲的最具体清晰，课程结构合理。', '2018-03-17', '第1次开课', 25, 5);
INSERT INTO `raw_comments` VALUES (385, 22, '1148336980', 'wzmooc124', '学校里的操作系统上课我一节没有听，就听了这些课，都全靠各位老师教授相救，期末考了90，感谢各位老师教授。', '2021-01-26', '第6次开课', 18, 5);
INSERT INTO `raw_comments` VALUES (386, 22, '1385679743', '我是佘皮怪i', '很好，老师的普通话很标准。', '2019-03-07', '第4次开课', 18, 5);
INSERT INTO `raw_comments` VALUES (387, 22, '11274029', '飞飞肥肥废', '苏大的这个操作系统是真正的拿出诚意来了！第一次看到，还要上课实录的时候，非常惊喜，感觉就像在教室里一样，李培峰教授也讲的非常清楚，跟着课程走就不会有什么问题，推荐！', '2019-04-25', '第4次开课', 17, 5);
INSERT INTO `raw_comments` VALUES (388, 22, '7319844', 'daiqianjieaixia', '内容很全面，老师讲解也挺到位。可以适当增加实验课程，毕竟操作系统还是需要实验的。还有给老师们一个建议：就是讲课时可以稍微放松些，感觉有些太严肃了。', '2018-06-22', '第2次开课', 16, 5);
INSERT INTO `raw_comments` VALUES (389, 22, '1150726442', 'Mercymooc119', '能把那个blingbling的声音去掉吗 秋梨膏', '2019-08-04', '第4次开课', 12, 3);
INSERT INTO `raw_comments` VALUES (390, 22, '10005463', 'Mykrobin', '课程讲解详细，内容充实，受益匪浅。', '2018-07-21', '第2次开课', 10, 5);
INSERT INTO `raw_comments` VALUES (391, 22, '1385932608', '苏大_6066_王仁杰', 'ok111', '2019-07-03', '第4次开课', 9, 5);
INSERT INTO `raw_comments` VALUES (392, 22, '1408986476', 'mooc10960153699433080', '哇！超出预期了', '2020-04-03', '第6次开课', 8, 5);
INSERT INTO `raw_comments` VALUES (393, 22, '1428777209', 'sunmooc11583453387301', '学习起来非常方便，讲解也非常详细', '2020-03-15', '第6次开课', 8, 5);
INSERT INTO `raw_comments` VALUES (394, 22, '1385694969', '苏大_2016_郭梦琪', '结构清晰，讲解详细', '2020-01-12', '第4次开课', 8, 5);
INSERT INTO `raw_comments` VALUES (395, 22, '1471523273', '苏大青蔷薇', '结合各种例子通俗易懂，讲解详细，内容充实。推荐！', '2021-05-28', '第8次开课', 7, 5);
INSERT INTO `raw_comments` VALUES (396, 22, '1421377101', '20181696-胡毅', '很好，收获很大', '2021-04-17', '第8次开课', 7, 5);
INSERT INTO `raw_comments` VALUES (397, 22, '1401335604', '韩善峰', '好，特别棒，太棒了', '2021-03-29', '第8次开课', 7, 5);
INSERT INTO `raw_comments` VALUES (398, 22, '1427099960', '黄冠润', '老师讲课很好 题目针对性也很强', '2020-03-05', '第6次开课', 7, 5);
INSERT INTO `raw_comments` VALUES (399, 22, '1401378844', '18智能物联李金宇', '讲的太好了', '2020-02-17', '第6次开课', 7, 5);
INSERT INTO `raw_comments` VALUES (400, 22, '1147585638', 'XZit20180401117', '好好好好好好', '2020-02-17', '第6次开课', 7, 5);
INSERT INTO `raw_comments` VALUES (401, 22, '6406038', 'xinyuan2099', '非常棒，简单明了，内容也很充实。', '2019-03-12', '第4次开课', 7, 5);
INSERT INTO `raw_comments` VALUES (402, 23, '1395594520', '一尺天涯', '能用简单的话把有难度的课说清楚，我就喜欢这种课。', '2019-06-25', '第2次开课', 64, 5);
INSERT INTO `raw_comments` VALUES (403, 23, '1389103741', '月光小清新', '徐老师课讲的很好，生动形象，条理清晰，细节满满！\n如果能在之后的讲课中多结合一下现有的技术进行讲课，那就更好了。\n五星满分!徐老师加油！', '2019-06-25', '第2次开课', 54, 5);
INSERT INTO `raw_comments` VALUES (404, 23, '1389186388', '你是月色真美', '我是这位讲课老师——徐小龙老师的研究生，衷心希望徐老师的课越办越好。加油(ง •_•)ง', '2019-06-25', '第2次开课', 54, 5);
INSERT INTO `raw_comments` VALUES (405, 23, '1136200586', '木落成诗', '老师讲的很不错，认真学的话可以学到不少知识。感谢他。不像某某南京大学的教授讲的操作系统，只会照着ppt念，读的人云里雾里，昏昏欲睡！！！居然还国家精品。真是讽刺！', '2018-10-26', '第1次开课', 47, 5);
INSERT INTO `raw_comments` VALUES (406, 23, '1389186342', '我把你的长发盘起', '我觉得讲的最好的就是PV操作的部分了，书上讲的那是啥！还是听人讲容易懂。当然了，这老师讲的也是非常好啊。', '2019-06-25', '第2次开课', 46, 5);
INSERT INTO `raw_comments` VALUES (407, 23, '1389184672', '小师姐天下第一', '很明显能看出这个老师有认真地备课，不像某些网课，欸。一言难尽', '2019-06-25', '第2次开课', 40, 5);
INSERT INTO `raw_comments` VALUES (408, 23, '1389106476', '花开终究会花落', '很棒的老师，很棒的授课。虽然这是门打基础的课程，但如果能介绍点这门课与时下流行课程的关系就更好了。', '2019-06-25', '第2次开课', 37, 5);
INSERT INTO `raw_comments` VALUES (409, 23, '1389172224', '我随浪迹天涯', '有条理，有重点，热情又严格。很不错了。', '2019-06-25', '第2次开课', 36, 5);
INSERT INTO `raw_comments` VALUES (410, 23, '1389184316', '红萝卜呀', '能让人感兴趣的课才是好课。课上的很有趣，同时内容也很充实，细节部分也做了课本上没有的补充，炒鸡棒(๑•̀ㅂ•́)و✧', '2019-06-25', '第2次开课', 34, 5);
INSERT INTO `raw_comments` VALUES (411, 23, '1395575275', 'mooc87617462758335250', '这个课程我很喜欢，感觉老师说话很有耐心，知识点讲的足够细。\n我也推荐我的同学来听这门课了，他们都说挺好的。\n希望这位老师网课越办越好，也希望自己在最后的测验中能拿一个好成绩吧。', '2019-06-25', '第2次开课', 32, 5);
INSERT INTO `raw_comments` VALUES (412, 23, '1022380390', 'bryant_xw', '老师讲的很不错，到位，起码不想某些其他网课，只会读ppt！希望老师尽快更新~~~~~~~~~~~~', '2018-10-12', '第1次开课', 30, 5);
INSERT INTO `raw_comments` VALUES (413, 23, '1389190123', '我信杨超越', '希望大家最后都能考出一个好成绩吧！', '2019-06-25', '第2次开课', 27, 5);
INSERT INTO `raw_comments` VALUES (414, 23, '1389180467', '喜欢圆圆的东西', '一流的讲课，一流的老师，总体感觉很棒。就是没有考试重点什么的嘛┭┮﹏┭┮', '2019-06-25', '第2次开课', 19, 5);
INSERT INTO `raw_comments` VALUES (415, 23, '1389183629', '信的开头', '同样徐老师学生，网课完整的听完了，感觉讲的真的不错。条理清晰，细节到位。', '2019-06-25', '第2次开课', 19, 5);
INSERT INTO `raw_comments` VALUES (416, 23, '1135511869', 'afengykt1518232424338', '讲了前两节课还行，后面还是开始读ppt了。。。', '2018-11-08', '第1次开课', 7, 2);
INSERT INTO `raw_comments` VALUES (417, 23, '1395577804', 'mooc87617872465816230', '讲的不错，比那些只会读ppt的好多了，至少有动力看下去。', '2019-06-25', '第2次开课', 6, 5);
INSERT INTO `raw_comments` VALUES (418, 23, '1035261055', '半个橘子..', '有的课程没声音啊', '2018-12-27', '第1次开课', 5, 5);
INSERT INTO `raw_comments` VALUES (419, 23, '1145826392', 'NJUPTB16090803孔金迪', '整个课程，讲解十分详细，有些课堂上没仔细听的，几乎找到了答案哈哈。', '2018-12-19', '第1次开课', 4, 5);
INSERT INTO `raw_comments` VALUES (420, 23, '1032314251', 'Yukili', '4.5没声音辣', '2019-10-30', '第3次开课', 2, 4);
INSERT INTO `raw_comments` VALUES (421, 23, '1395594481', 'mooc87680295575623354', '我们学校老师上的操作系统有点无聊，我来试试网课', '2019-06-25', '第2次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (422, 24, '1020822695', '.ykt1476006395214', '这老师长得帅，说话还好听，ppt也做的好，讲得也是通俗易懂，感觉是整个mooc操作系统最好的课程了，唯一的缺点就是感觉不太深入，不过已经相当不错了，很是谢谢相关人员的精心准备的这个教学视频了', '2018-12-31', '第1次开课', 42, 5);
INSERT INTO `raw_comments` VALUES (423, 24, '1014280510', 'mooc1452818850221', '2.2是2.3的内容，重复了，老师讲的贴合实用，但开始不久就出现这样的失误，很遗憾，——今天看到已经更正了，很高兴，毕竟我认为讲得很有用，开始想把此前的评论删除，但老师这种虚心接受评论的态度是可贵的，所以保留下来。', '2018-11-17', '第1次开课', 28, 5);
INSERT INTO `raw_comments` VALUES (424, 24, '1398776903', 'ILoveJingmooc2164211342139117', '名校老师讲课就是牛。看了几门OS课程，能把OS前2章枯燥的基础概念讲的生动出彩，就是牛！老师没有照本宣科或念台词，也没有照念PPT，胸有成竹，例子信手拈来，非常棒！从这一点比较，这个老师的功力明显甩其他老师几条街。', '2019-09-08', '第3次开课', 18, 5);
INSERT INTO `raw_comments` VALUES (425, 24, '1029963837', '方伟ykt1505434920388', '慕课上所有操作系统相关课程中上的最好的老师，没有照读ppt，ppt上也没有成段成段的书本原话，十分精简，能感受到老师的精心准备；操作系统拓展知识贴合实际，有图有真相，免去了学生跟听天书似的冥想，节奏感带入很强。真心为学生考虑的老师，强烈推荐。', '2018-12-12', '第1次开课', 10, 5);
INSERT INTO `raw_comments` VALUES (426, 24, '1148288403', '苏曙光', '本学期在SPOC环节增加了较多拓展阅读资料，大多与Linux内核或Linux源代码相关，希望同学们学友所得！', '2021-04-29', '第6次开课', 9, 5);
INSERT INTO `raw_comments` VALUES (427, 24, '1148844886', 'YoungCmooc3', 'mooc里操作系统讲的最好的老师！！！没有之一！！！', '2019-01-05', '第1次开课', 8, 5);
INSERT INTO `raw_comments` VALUES (428, 24, '1029464924', '吴涛', '同学们在讨论区，答疑区，课堂交流区都有不少精彩的回复，我觉得这点非常棒！学习氛围很好！', '2019-09-24', '第3次开课', 6, 5);
INSERT INTO `raw_comments` VALUES (429, 24, '1150226006', 'mooc14366272775272180', '超赞的课程！非常佩服老师，讲解的思路超级清晰，举例丰富精彩。作为男老师，有这么清晰的口齿，超级难得，没有一点拖泥带水或其他老师那种“嗯-嗯-呀-呀”，“这个，那个”的口语。比我上过课的老师都强！', '2019-09-07', '第3次开课', 5, 5);
INSERT INTO `raw_comments` VALUES (430, 24, '1145887331', '数媒1701李一泓', '课程很好，老师讲得非常精彩！', '2019-08-04', '第2次开课', 5, 5);
INSERT INTO `raw_comments` VALUES (431, 24, '1021986733', '小kkkkk', '这种授课方式就是可以在我错过一个知识点的时候再回头补起来。高效', '2018-11-24', '第1次开课', 5, 5);
INSERT INTO `raw_comments` VALUES (432, 24, '1028333339', '金融专用号', '我觉得老师吐字清晰，形象很干净干练，光这一点就比那些邋遢和普通话不标准的老师强多少倍，再加上这个课程给人的感觉还是不错的，先写这么多，听完了再评价。', '2020-09-15', '第5次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (433, 24, '1412687380', 'mooc14783575614863205', '老师知识渊博，深入浅出，自信淡定！', '2020-02-09', '第4次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (434, 24, '10537146', '孤喵QAQ', '听老师讲课耳朵很舒服，眼睛很舒服，大脑也很舒服。', '2019-09-20', '第3次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (435, 24, '1389268036', '鲤萌萌', '挺好的，浅显易懂，感觉很有收获。', '2019-09-05', '第3次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (436, 24, '1030039009', 'chajnoven', '课程节奏好', '2019-09-05', '第3次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (437, 24, '1146465472', '软件工程1706-于沛琦-U201717090', '很好！ssgnb', '2019-06-05', '第2次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (438, 24, '1021111106', 'chenjianshidada163com', '我们用的汤子瀛老师那版操作系统,好多不懂的地方在老师这里串起来了,非常感谢!', '2019-05-06', '第2次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (439, 24, '1019075150', 'ykt1470365951604', '不多说，就是一个字，好！！！！！！！！！！！！！！', '2019-03-03', '第1次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (440, 24, '1149575534', 'Zihaomooc5', '很好很好！！！讲的深入浅出，既有宏观的理论，也有落地的实现！理解起来一点都不费劲', '2018-11-25', '第1次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (441, 24, '1148026378', '信安1804张哲玮U201813957', '课程设计清晰合理，涉及到的知识点很全面，并且操作系统中的重点老师也会仔细介绍。通过这门课的学习，初学者可以对操作系统原理有一个全面的了解，学习过的同学也会对操作系统原理产生更深刻的理解和认识。苏老师不仅讲课细致，对同学们也会认真负责，在课程中如果遇到问题可以积极向苏老师请教，苏老师都会耐心解答。', '2021-05-15', '第6次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (442, 30, '1498150016', '初晴Gentle', '老师讲的很好，可是这视频的开头声音要把耳机党震聋，声音开太小老师的说的就听不清，建议下次开课可别弄这样一个开头了，一点也不友好。', '2023-04-26', '第1次开课', 2, 2);
INSERT INTO `raw_comments` VALUES (443, 30, '1559190465', '寒江垂钓k1292052725825793772', '好课程，好好学习', '2024-01-30', '第3次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (444, 30, '1563950520', 'mooc4765682120845739', '非常的有用', '2023-12-29', '第3次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (445, 30, '1559438712', 'mooc92627411596831405', '太有收获的感觉', '2023-12-28', '第3次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (446, 30, '1563844294', '后藤老师', '非常不错呢', '2023-12-26', '第3次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (447, 30, '1559275748', 'mooc173059280875455986', '系统完全授课认真', '2023-12-26', '第3次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (448, 30, '1559578309', 'mooc103103346091065938', '非常不错受益匪浅讲的非常好', '2023-12-21', '第3次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (449, 30, '1559064813', '兰溪倩倩', '学了很有帮助', '2023-12-21', '第3次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (450, 30, '1561451824', 'mooc458228958441294', '学到了好多新知识', '2023-12-20', '第3次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (451, 30, '1511516504', 'mooc42074312099267931', '这节课非常好', '2023-12-19', '第3次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (452, 30, '1562958893', 'mooc165749939330588819', 'good！', '2023-12-19', '第3次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (453, 30, '1559444475', '电信2301_卢声佳', '值得推荐 非常好', '2023-12-17', '第3次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (454, 30, '1560112029', '8463464', '收获了新知识，开阔了眼见', '2023-12-14', '第3次开课', 0, 3);
INSERT INTO `raw_comments` VALUES (455, 30, '1558973920', 'y余斌', '课程组织结构合理，授课方式简洁明了，有一种在线下上课的感觉，认真上课，会有很大的收获', '2023-12-14', '第3次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (456, 30, '573095', 'liudong_xj', '对于linux的了解更深入了，之前是从一些博客网站了解到一些碎片化的linux的知识，在这节课中有了一个系统的学习，不过希望在内容上可以不断地丰富', '2023-12-12', '第3次开课', 0, 4);
INSERT INTO `raw_comments` VALUES (457, 30, '1558458850', 'mooc172120689499067582', 'bucuo', '2023-12-12', '第3次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (458, 30, '1562920596', 'mooc3009288752453640', '11111', '2023-12-11', '第3次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (459, 30, '1559844284', 'mooc92908766763933861', '老师教的特别好', '2023-12-11', '第3次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (460, 30, '1488607423', '学员590bkada29630163768710986', '酷酷酷酷酷', '2023-12-09', '第3次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (461, 30, '1559122070', '旅管2301肖建伟', '哇！超出预期了', '2023-12-06', '第3次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (462, 33, '1031570145', '信管1701+0121703490128', 'mooc的形式很方便学习，只是容易错过截止时间', '2019-06-21', '第5次开课', 8, 5);
INSERT INTO `raw_comments` VALUES (463, 33, '1146842043', '能源1803李淑华', '让我对计算机有了一个具体的了解，感谢老师。', '2019-10-16', '第6次开课', 5, 5);
INSERT INTO `raw_comments` VALUES (464, 33, '1023054417', '信管1603_0121603490332', '挺好的课，上课没听到的还能看看视频复习，就是忘记了互评被扣了一半的分，感觉这个比例有点大，心好痛...', '2018-07-05', '第3次开课', 5, 5);
INSERT INTO `raw_comments` VALUES (465, 33, '1721199', 'bwt1997', '内容详实，讲义精致，课程紧凑，效果显著', '2018-10-06', '第4次开课', 4, 5);
INSERT INTO `raw_comments` VALUES (466, 33, '1386312810', '城市猎人mooc21', '不错，联系增加一些移动端操作系统的内容', '2019-10-20', '第6次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (467, 33, '1146914674', 'icourse716238', '要是多一些操作系统基本的操作使用技巧和手机端操作系统的讲解就更完美了。', '2018-09-30', '第4次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (468, 33, '1403218420', '信管1903谭星', '老师线下课堂讲解重点突出，线上mooc平台内容丰富完整。从随堂讲解、平台资源、互动讨论再到作业测试，有一套完善高效的教学体系，为我们学习相关难点重点部分节约了不少时间，此外，平台还专门设置竞赛经验分享板块，在学到知识、感受到历届学长学姐的优异比赛成绩的同时，给我们提供了专业对口的计算机设计大赛的经验和思路。在课后，老师也在讨论区积极与我们互动、解惑。该平台课最亮眼的是不局限于OS知识的讲解，将各方面知识与思政元素相结合，意在“教书育人”，为新时代变革做好准...\n\n更多', '2021-07-01', '第9次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (469, 33, '1023048697', '信管1603杜俊健', '期待未来课程。目前学到了很多。感谢老师们', '2020-10-08', '第8次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (470, 33, '1147192007', '信管1802李嘉晖19', '老师讲课超级好！！！非常幽默，知识讲解也很到位', '2020-06-10', '第7次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (471, 33, '1147180988', '信管1801曲晨辉31', '老师的讲解非常细致，学了这门课对计算机系统的理解更加深入了，很好的一门课，推荐！', '2020-06-06', '第7次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (472, 33, '1147213648', '物联网1812唐露旭', '需要学习的太多了，还有更多的知识需要我们掌握', '2020-06-06', '第7次开课', 2, 3);
INSERT INTO `raw_comments` VALUES (473, 33, '1407730206', '20510717125聂金双', '课程很不错', '2019-12-19', '第6次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (474, 33, '1031536542', '信管17030121703490330', '课程很不错，让我对操作系统有了基本的认识，受益匪浅！感谢各位老师！', '2019-12-15', '第6次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (475, 33, '1407731630', '20510715403李京泽', '老师非常棒', '2019-12-03', '第6次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (476, 33, '1146899295', '专马汽2203孙二千', '很用心很棒的一套资料', '2019-12-03', '第6次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (477, 33, '1146841988', '专马汽2203刘素辉', '讲得很精彩', '2019-11-16', '第6次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (478, 33, '1018467276', '清凉一夏ykt1467983868320', '很好，关键点再讲透就好了，时间不要太长', '2018-08-10', '第3次开课', 2, 4);
INSERT INTO `raw_comments` VALUES (479, 33, '1024359564', 'souleaterddl', '好可以还不错', '2018-07-03', '第3次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (480, 33, '1035968723', '袁丹桂201640190134', '老师讲的真的非常非常好了！给老师递茶！', '2018-06-30', '第1次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (481, 33, '1015167411', '松山mooc1456918741566', '真流弊好吧！', '2018-03-28', '第3次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (482, 34, '1149354559', '2022020731陈国庆', '孙老师的忠实粉丝，一位非常尽职尽责的老师，讲课非常好，老师也很好。跟她学的没一门课我觉得都很好。', '2020-01-16', '第1次开课', 5, 5);
INSERT INTO `raw_comments` VALUES (483, 34, '1147696283', '182210712217', '侧重点在哪？', '2019-11-02', '第1次开课', 3, 1);
INSERT INTO `raw_comments` VALUES (484, 34, '1398161385', '深秋-微凉', '以应用能力为主线，学习任务和目标，综合提升专业能力，过程能力和职位能力。', '2019-09-12', '第1次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (485, 34, '1464246196', '陳怀瑾', '很好的课程，讲得很细致并且会适时有所延伸，适合新手', '2023-01-10', '第7次开课', 1, 5);
INSERT INTO `raw_comments` VALUES (486, 35, '1022380390', 'bryant_xw', '这不就是疯狂的读PPT吗？难道电子科技大学没有优质的网课吗？汇编不行，这个也不行？还有那神烦的背景音乐？都是些什么鬼！老师根本不管理后续的作业讨论，什么都没有。。。。。', '2019-01-21', '第1次开课', 96, 1);
INSERT INTO `raw_comments` VALUES (487, 35, '1028488504', 'ykt1500690636830', '佛性授课，佛性朗诵，佛性人生！', '2018-09-19', '第1次开课', 64, 1);
INSERT INTO `raw_comments` VALUES (488, 35, '1031167072', '善断樱', '我可以说这个老师讲课，基本照着课件念，以至于我看了几节课选择直接下载课件，自己看他们的课件学习，还没有那么烦人的BGM，而且讲课真的超级死板，建议听几节课，然后根据需要自己快进课程，因为废话太多，我自己读了一遍，写了一遍，还得听你在念一遍，之后像是实践课，可以认真琢磨一下，我还没有学习完，大家加油', '2019-06-02', '第1次开课', 26, 1);
INSERT INTO `raw_comments` VALUES (489, 35, '1029892473', 'NJUPT_B15031128宗辉', '把背景音乐去掉，还有老师讲课过于死板', '2019-06-07', '第2次开课', 14, 1);
INSERT INTO `raw_comments` VALUES (490, 35, '1031685210', '2017220303029', '朱老师讲的可好辽，我linux期末就靠这个了，朱老师的mooc评分由我来守护', '2018-12-30', '第1次开课', 14, 5);
INSERT INTO `raw_comments` VALUES (491, 35, '1137056178', 'vanlights', '背景音乐很难受，视频制作人将背景音乐去除最好。', '2019-04-11', '第2次开课', 11, 2);
INSERT INTO `raw_comments` VALUES (492, 35, '1028515950', 'JackieChoi', '听了一节放弃了，能不能把BGN关了', '2019-03-31', '第2次开课', 10, 1);
INSERT INTO `raw_comments` VALUES (493, 35, '1035199802', 'ykt1514532756257', '这讲的都是什么玩意，照着ppt念，连个实例都不给，背景音乐听到头疼', '2019-01-09', '第1次开课', 10, 1);
INSERT INTO `raw_comments` VALUES (494, 35, '1029611883', '小溪ykt1504758224406', '有点机械化了', '2019-04-19', '第2次开课', 7, 1);
INSERT INTO `raw_comments` VALUES (495, 35, '1142256013', '川力服务站', '尊敬的老师你好，我个人的觉得你的课程和照本宣科一模一样，完全没有任何价值，或许我的评论不对 但是我只是从我个人的角度做出的评价', '2018-10-25', '第1次开课', 7, 1);
INSERT INTO `raw_comments` VALUES (496, 35, '1390481783', 'Inuyashamooc27', '内容不够完善，背景音乐太大，', '2019-05-26', '第2次开课', 6, 3);
INSERT INTO `raw_comments` VALUES (497, 35, '1028393953', '升华mooc2', '老师讲的还不如自己看PPT', '2019-03-19', '第1次开课', 6, 1);
INSERT INTO `raw_comments` VALUES (498, 35, '7562072', 'hemzw1228', '讲课跟机器人一样 太失望了', '2018-09-17', '第1次开课', 6, 1);
INSERT INTO `raw_comments` VALUES (499, 35, '1145829856', 'mooc63394058987297607', '这讲的都是些啥东西，读ppt呢', '2018-09-18', '第1次开课', 5, 1);
INSERT INTO `raw_comments` VALUES (500, 35, '6690281', 'm13439103901', '能不能把背景音乐去掉，干扰很大', '2019-05-26', '第2次开课', 4, 4);
INSERT INTO `raw_comments` VALUES (501, 35, '1021236689', 'Cqwmooc1', '像是念ppt', '2019-04-04', '第2次开课', 4, 2);
INSERT INTO `raw_comments` VALUES (502, 35, '1147611483', '东北望射狮射猴射天狗1991', '传说中的PPT老师', '2019-06-27', '第2次开课', 3, 1);
INSERT INTO `raw_comments` VALUES (503, 35, '7664945', '夜熠星空', '不适合初学者吧，老师基本上是念的ppt,另外bgm感觉太吵啦', '2019-01-19', '第1次开课', 3, 3);
INSERT INTO `raw_comments` VALUES (504, 35, '1020902945', '运动鞋的骄傲', '课程很不错，但是实践部分讲解太少，内容趣味性低，对非计算机专业人员，听起来理解困难。', '2018-12-26', '第1次开课', 3, 4);
INSERT INTO `raw_comments` VALUES (505, 35, '3180540', '嘻嘻哈哈', '背景音乐取消掉就好了，不断循环，耳朵都要炸掉', '2018-10-08', '第1次开课', 3, 4);
INSERT INTO `raw_comments` VALUES (506, 36, '1034710080', 'mooc1513305989116', '学到网络操作系统的网络管理知识，好评！！！', '2022-04-14', '第1次开课', 8, 5);
INSERT INTO `raw_comments` VALUES (507, 36, '1139739995', 'mooc1524828003346', '本课程内容设计通俗易懂，可以了解很多关于网络操作系统知识，值得关注学习！', '2022-04-13', '第1次开课', 8, 5);
INSERT INTO `raw_comments` VALUES (508, 36, '1139818792', 'mooc1524967560720', '通过本课程学习了很多网络操作系统的应用知识，了解了网络管理员的职业道德和行为规范，很有收获！', '2022-04-16', '第1次开课', 6, 5);
INSERT INTO `raw_comments` VALUES (509, 36, '1446852316', 'AFC检修202-40-徐丹', '操作系统应用(Windows)这门课程非常好，课程重点突出，授课条理清晰，认真负责，严谨，资料丰富，涉及资料十分广泛。授课资料通俗易懂。', '2022-04-14', '第1次开课', 6, 5);
INSERT INTO `raw_comments` VALUES (510, 36, '1446568782', 'AFC检修202-20-\n彭璋维', '对网络知识普及的十分到位，老师也讲的很详细 很细心', '2022-04-14', '第1次开课', 6, 5);
INSERT INTO `raw_comments` VALUES (511, 36, '1446527694', 'AFC检修202-17-邓璨', '老师的课程讲解通俗易懂，是一门非常值得大家学习的课程', '2022-04-14', '第1次开课', 6, 5);
INSERT INTO `raw_comments` VALUES (512, 36, '1397780239', 'mooc92687352236631438', '虽然我以前没有学过相关的课程，但本课程通过通俗易懂的微课视频介绍了很多网络操作系统应用知识，对初学者很友好，拓宽了我的眼界，了解虚拟机的作用与应用，很有成就感，点赞，五星好评！！！', '2022-04-16', '第1次开课', 5, 5);
INSERT INTO `raw_comments` VALUES (513, 36, '1446610995', '物联网202-2-段泽军', '老师教的很细致，学会了很多东西', '2022-04-16', '第1次开课', 4, 5);
INSERT INTO `raw_comments` VALUES (514, 36, '1446723378', '物联网202-21-许然', '讲的特别好', '2022-04-16', '第1次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (515, 36, '1025606924', '蜗牛mooc343', '目前还没学完，感觉这个课程做的很用心，老师千万不要关闭啊，我还在学。真心觉得有用。', '2023-02-18', '第3次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (516, 36, '1150393709', '狗尾巴～草莓花', '清楚，详细', '2023-02-14', '第3次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (517, 36, '1447140818', '铁道电子-202-29-彭海洋', '通过对教材的深入讲解，取得了良好的教学效果。颜老师能够将各种教学方法结合起来，使学生更深入地掌握知识之道。教学内容突出，教学目的明确，教师具有极高的专业技能。教学方法新颖独特，能调动学生的兴趣。教师重视互动，课堂学习气氛轻松愉快，真正达到了教学目标和要求。', '2022-10-11', '第2次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (518, 36, '1493641882', 'AFC检修212-12文开禄', '操作系统应用(Windows)这门课程非常好，课程重点突出，授课条理清晰，认真负责，严谨，资料丰富，涉及资料十分广泛。授课资料通俗易懂。\n教师的教学效果极佳，可以使同学在领略知识魅力的同时提高自己实际技能。教师教课内容广大博深，高质量，高效率。教课内容新颖，独特，有个性。', '2022-10-05', '第2次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (519, 36, '1493640163', 'AFC检修212-39戴绍峰', '学到了很多知识，更加了解系统知识了', '2022-10-05', '第2次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (520, 36, '1493602879', 'AFC 212     05谭开泉', '学习了操作系统后会发现学到了很多关于这方面的知识', '2022-10-05', '第2次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (521, 36, '1493212149', 'AFC检修212-02刘科', '网络操作系统的管理非常详细', '2022-10-05', '第2次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (522, 36, '1495574946', 'AFC检修212—32何季明', '可以学到网络管理操作知识', '2022-10-05', '第2次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (523, 36, '1446514425', '移动互联201-10陆飞', '系统学习了网络操作系统知识', '2022-09-27', '第2次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (524, 36, '1493637446', 'AFC检修212-25-李林勇', '课程内容丰富，非常好', '2022-09-08', '第2次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (525, 36, '1493635562', 'AFC检修212_尹力春', '这个课对我帮助很大', '2022-09-08', '第2次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (526, 37, '1400366946', '大数据1903张协亮', '听不懂，属于纯念课本较死板的课吧!', '2020-09-05', '第1次开课', 8, 1);
INSERT INTO `raw_comments` VALUES (527, 37, '1402132434', '电19工程计网班刘高准', '已经学到很多，能够的到运用了，这些教学视频与教学内容对于小白非常友好，', '2021-08-12', '第3次开课', 3, 5);
INSERT INTO `raw_comments` VALUES (528, 37, '1150500628', '韦华ykt46363749630135217', '课程制作非常精致，老师讲解到位。', '2021-08-16', '第3次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (529, 37, '1408960148', '玉龙天彻', '非常实用，学到了许多东西！谢谢老师的细心讲解。', '2021-07-25', '第3次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (530, 37, '1390339973', '苏电院---1', '理论和实践都有，适合Linux初学者学习。', '2020-09-15', '第1次开课', 2, 5);
INSERT INTO `raw_comments` VALUES (531, 37, '1474301249', '350222刘强一', '计通李林杰实名点赞该课程，', '2023-05-24', '第6次开课', 1, 5);
INSERT INTO `raw_comments` VALUES (532, 37, '1449708575', 'mooc41612515615532261', '讲解通俗易懂，内容比较丰富，有理论，有案例。不足：有的只讲其然，没讲所以然。', '2022-01-07', '第3次开课', 1, 4);
INSERT INTO `raw_comments` VALUES (533, 37, '1447266561', '苏电-2020130832', '0000\n02020', '2021-12-25', '第2次开课', 1, 5);
INSERT INTO `raw_comments` VALUES (534, 37, '1406727183', 'mooc7784705359038535', '多长时间更新一次啊', '2021-08-19', '第3次开课', 1, 5);
INSERT INTO `raw_comments` VALUES (535, 37, '1476298021', '々违背的青春*', '讲的可以，能听得懂。', '2021-08-01', '第3次开课', 1, 5);
INSERT INTO `raw_comments` VALUES (536, 37, '1018858294', 'HI不睡的月亮', 'very good', '2020-09-21', '第1次开课', 1, 5);
INSERT INTO `raw_comments` VALUES (537, 37, '1418560462', '苗健壮', '12345', '2020-09-06', '第1次开课', 1, 3);
INSERT INTO `raw_comments` VALUES (538, 37, '1506209658', '学员081bkada38554335697521888', '老师讲得很好，鼓掌鼓掌，感谢老师的授课', '2023-12-15', '第7次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (539, 37, '1448745340', '359202李康2020131057', '666666', '2023-11-14', '第2次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (540, 37, '1554911865', 'IT小学弟', '讲的很仔细，小白也能听懂', '2023-08-31', '第7次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (541, 37, '1136406008', '爱吃山楂的麦子', '学习了一半，为啥要关闭该学期呢', '2023-08-18', '第6次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (542, 37, '1536273332', '2022221191程涛', '好好好好好好', '2023-06-27', '第6次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (543, 37, '1540747818', '359222斯朗措姆', '超级好哦，以后会继续努力', '2023-06-27', '第6次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (544, 37, '1540032678', '格桑旺庆', '学到了很多知识', '2023-06-27', '第6次开课', 0, 5);
INSERT INTO `raw_comments` VALUES (545, 37, '1531208877', '370211才仁培杰', '特别好的课程', '2023-06-27', '第6次开课', 0, 5);

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
