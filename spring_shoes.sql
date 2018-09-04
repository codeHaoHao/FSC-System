/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : spring_shoes

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2018-09-04 09:53:44
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL auto_increment,
  `categoryName` varchar(30) default NULL,
  `description` varchar(30) default NULL,
  `sort` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '文科', '文科', '1');
INSERT INTO `category` VALUES ('2', '理科', '理科', '2');
INSERT INTO `category` VALUES ('3', '其他', '其他', '3');

-- ----------------------------
-- Table structure for `class_schedule`
-- ----------------------------
DROP TABLE IF EXISTS `class_schedule`;
CREATE TABLE `class_schedule` (
  `id` int(11) NOT NULL auto_increment,
  `CCT_id` int(11) NOT NULL default '0',
  `classTime` int(11) default NULL,
  `classLength` int(11) default NULL,
  PRIMARY KEY  (`id`,`CCT_id`),
  KEY `class_schedule_CCT_id` (`CCT_id`),
  CONSTRAINT `class_schedule_CCT_id` FOREIGN KEY (`CCT_id`) REFERENCES `classbean_commodity_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_schedule
-- ----------------------------
INSERT INTO `class_schedule` VALUES ('90', '1', '1', '5');
INSERT INTO `class_schedule` VALUES ('91', '2', '2', '9');
INSERT INTO `class_schedule` VALUES ('92', '3', '2', '6');
INSERT INTO `class_schedule` VALUES ('93', '4', '1', '3');
INSERT INTO `class_schedule` VALUES ('94', '5', '1', '4');
INSERT INTO `class_schedule` VALUES ('95', '6', '1', '8');
INSERT INTO `class_schedule` VALUES ('96', '7', '1', '7');
INSERT INTO `class_schedule` VALUES ('97', '8', '1', '2');
INSERT INTO `class_schedule` VALUES ('98', '9', '1', '6');
INSERT INTO `class_schedule` VALUES ('99', '10', '1', '9');
INSERT INTO `class_schedule` VALUES ('100', '11', '1', '3');
INSERT INTO `class_schedule` VALUES ('101', '12', '2', '8');
INSERT INTO `class_schedule` VALUES ('102', '13', '2', '9');
INSERT INTO `class_schedule` VALUES ('103', '14', '1', '2');
INSERT INTO `class_schedule` VALUES ('104', '15', '1', '6');
INSERT INTO `class_schedule` VALUES ('105', '16', '1', '7');
INSERT INTO `class_schedule` VALUES ('106', '17', '1', '4');
INSERT INTO `class_schedule` VALUES ('107', '18', '1', '8');
INSERT INTO `class_schedule` VALUES ('108', '19', '1', '5');
INSERT INTO `class_schedule` VALUES ('109', '20', '1', '9');
INSERT INTO `class_schedule` VALUES ('110', '1', '2', '7');
INSERT INTO `class_schedule` VALUES ('111', '1', '4', '8');
INSERT INTO `class_schedule` VALUES ('112', '1', '5', '9');
INSERT INTO `class_schedule` VALUES ('113', '2', '3', '7');
INSERT INTO `class_schedule` VALUES ('114', '2', '4', '7');
INSERT INTO `class_schedule` VALUES ('115', '2', '5', '7');
INSERT INTO `class_schedule` VALUES ('116', '36', '2', '2');
INSERT INTO `class_schedule` VALUES ('117', '37', '3', '4');
INSERT INTO `class_schedule` VALUES ('118', '37', '4', '3');
INSERT INTO `class_schedule` VALUES ('119', '37', '5', '4');
INSERT INTO `class_schedule` VALUES ('120', '5', '2', '4');
INSERT INTO `class_schedule` VALUES ('121', '5', '3', '2');
INSERT INTO `class_schedule` VALUES ('122', '5', '4', '2');
INSERT INTO `class_schedule` VALUES ('123', '5', '5', '3');
INSERT INTO `class_schedule` VALUES ('124', '6', '2', '8');
INSERT INTO `class_schedule` VALUES ('125', '6', '3', '6');
INSERT INTO `class_schedule` VALUES ('126', '6', '4', '5');
INSERT INTO `class_schedule` VALUES ('127', '7', '2', '5');
INSERT INTO `class_schedule` VALUES ('128', '7', '3', '9');
INSERT INTO `class_schedule` VALUES ('129', '7', '5', '6');
INSERT INTO `class_schedule` VALUES ('130', '36', '2', '3');
INSERT INTO `class_schedule` VALUES ('131', '8', '3', '3');
INSERT INTO `class_schedule` VALUES ('132', '8', '4', '4');
INSERT INTO `class_schedule` VALUES ('133', '8', '5', '2');
INSERT INTO `class_schedule` VALUES ('134', '9', '3', '5');
INSERT INTO `class_schedule` VALUES ('135', '9', '4', '9');
INSERT INTO `class_schedule` VALUES ('136', '9', '5', '5');
INSERT INTO `class_schedule` VALUES ('137', '10', '3', '8');
INSERT INTO `class_schedule` VALUES ('138', '10', '4', '6');
INSERT INTO `class_schedule` VALUES ('139', '10', '5', '8');
INSERT INTO `class_schedule` VALUES ('140', '11', '2', '2');
INSERT INTO `class_schedule` VALUES ('141', '11', '3', '4');
INSERT INTO `class_schedule` VALUES ('142', '11', '4', '4');
INSERT INTO `class_schedule` VALUES ('143', '11', '5', '2');
INSERT INTO `class_schedule` VALUES ('144', '12', '3', '5');
INSERT INTO `class_schedule` VALUES ('145', '12', '3', '9');
INSERT INTO `class_schedule` VALUES ('146', '12', '5', '9');
INSERT INTO `class_schedule` VALUES ('147', '67', '2', '4');
INSERT INTO `class_schedule` VALUES ('148', '14', '3', '3');
INSERT INTO `class_schedule` VALUES ('149', '14', '4', '2');
INSERT INTO `class_schedule` VALUES ('150', '14', '5', '3');
INSERT INTO `class_schedule` VALUES ('151', '15', '3', '7');
INSERT INTO `class_schedule` VALUES ('152', '15', '4', '9');
INSERT INTO `class_schedule` VALUES ('153', '15', '5', '5');
INSERT INTO `class_schedule` VALUES ('154', '16', '2', '6');
INSERT INTO `class_schedule` VALUES ('155', '16', '4', '8');
INSERT INTO `class_schedule` VALUES ('156', '16', '5', '6');
INSERT INTO `class_schedule` VALUES ('157', '17', '2', '3');
INSERT INTO `class_schedule` VALUES ('158', '17', '3', '2');
INSERT INTO `class_schedule` VALUES ('159', '17', '4', '3');
INSERT INTO `class_schedule` VALUES ('160', '17', '5', '4');
INSERT INTO `class_schedule` VALUES ('161', '18', '3', '6');
INSERT INTO `class_schedule` VALUES ('162', '18', '4', '7');
INSERT INTO `class_schedule` VALUES ('163', '18', '5', '8');
INSERT INTO `class_schedule` VALUES ('164', '19', '2', '7');
INSERT INTO `class_schedule` VALUES ('165', '19', '4', '5');
INSERT INTO `class_schedule` VALUES ('166', '19', '5', '7');
INSERT INTO `class_schedule` VALUES ('167', '20', '2', '5');
INSERT INTO `class_schedule` VALUES ('168', '20', '3', '8');
INSERT INTO `class_schedule` VALUES ('169', '20', '4', '6');

-- ----------------------------
-- Table structure for `classbean`
-- ----------------------------
DROP TABLE IF EXISTS `classbean`;
CREATE TABLE `classbean` (
  `id` int(11) NOT NULL auto_increment,
  `classBeanName` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classbean
-- ----------------------------
INSERT INTO `classbean` VALUES ('2', '2');
INSERT INTO `classbean` VALUES ('3', '3');
INSERT INTO `classbean` VALUES ('4', '4');

-- ----------------------------
-- Table structure for `classbean_commodity_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `classbean_commodity_teacher`;
CREATE TABLE `classbean_commodity_teacher` (
  `id` int(11) NOT NULL auto_increment,
  `classBean_id` int(11) NOT NULL default '0',
  `commodity_id` int(11) NOT NULL default '0',
  `teacher_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`,`classBean_id`,`commodity_id`,`teacher_id`),
  KEY `classBean_id` (`classBean_id`),
  KEY `commodity_id` (`commodity_id`),
  KEY `teacher_id` (`teacher_id`),
  KEY `id` (`id`),
  CONSTRAINT `classBean_id` FOREIGN KEY (`classBean_id`) REFERENCES `classbean` (`id`),
  CONSTRAINT `commodity_id` FOREIGN KEY (`commodity_id`) REFERENCES `commodity` (`id`),
  CONSTRAINT `teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classbean_commodity_teacher
-- ----------------------------
INSERT INTO `classbean_commodity_teacher` VALUES ('1', '2', '5', '3');
INSERT INTO `classbean_commodity_teacher` VALUES ('2', '2', '9', '1');
INSERT INTO `classbean_commodity_teacher` VALUES ('3', '2', '4', '1');
INSERT INTO `classbean_commodity_teacher` VALUES ('4', '2', '12', '12');
INSERT INTO `classbean_commodity_teacher` VALUES ('5', '2', '2', '4');
INSERT INTO `classbean_commodity_teacher` VALUES ('6', '2', '6', '7');
INSERT INTO `classbean_commodity_teacher` VALUES ('7', '2', '7', '5');
INSERT INTO `classbean_commodity_teacher` VALUES ('8', '2', '1', '8');
INSERT INTO `classbean_commodity_teacher` VALUES ('9', '2', '10', '9');
INSERT INTO `classbean_commodity_teacher` VALUES ('10', '2', '8', '10');
INSERT INTO `classbean_commodity_teacher` VALUES ('36', '2', '11', '11');
INSERT INTO `classbean_commodity_teacher` VALUES ('37', '2', '3', '6');
INSERT INTO `classbean_commodity_teacher` VALUES ('11', '3', '3', '7');
INSERT INTO `classbean_commodity_teacher` VALUES ('12', '3', '6', '8');
INSERT INTO `classbean_commodity_teacher` VALUES ('13', '3', '4', '5');
INSERT INTO `classbean_commodity_teacher` VALUES ('14', '3', '1', '4');
INSERT INTO `classbean_commodity_teacher` VALUES ('15', '3', '5', '6');
INSERT INTO `classbean_commodity_teacher` VALUES ('16', '3', '10', '9');
INSERT INTO `classbean_commodity_teacher` VALUES ('17', '3', '2', '10');
INSERT INTO `classbean_commodity_teacher` VALUES ('18', '3', '7', '1');
INSERT INTO `classbean_commodity_teacher` VALUES ('19', '3', '8', '2');
INSERT INTO `classbean_commodity_teacher` VALUES ('20', '3', '9', '3');
INSERT INTO `classbean_commodity_teacher` VALUES ('67', '3', '11', '11');

-- ----------------------------
-- Table structure for `commodity`
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `id` int(11) NOT NULL auto_increment,
  `commodityName` varchar(30) default NULL,
  `categoryName` varchar(30) default NULL,
  `description` varchar(30) default NULL,
  `createDate` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  `photo` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('1', '语文', '其他', '语文', '2018-09-03 07:48:57', '/uploadImages/03cb4355-9f2a-4c78-a6f8-6a8e6a313823_高一语文.jpg');
INSERT INTO `commodity` VALUES ('2', '英语', '其他', '英语', '2018-09-03 07:49:09', '/uploadImages/b9804f14-ed06-456a-b954-7cfd0c9c8751_高一英语.jpg');
INSERT INTO `commodity` VALUES ('3', '数学', '其他', '数学', '2018-09-03 07:49:19', '/uploadImages/07d19d96-5f9e-4391-9a0d-24142f4a27be_高一数学.jpg');
INSERT INTO `commodity` VALUES ('4', '体育', '其他', '体育', '2018-09-03 07:49:30', '/uploadImages/e1d4f461-82df-42c4-9a18-4f456325de45_体育.jpg');
INSERT INTO `commodity` VALUES ('5', '物理', '理科', '物理', '2018-09-03 07:49:41', '/uploadImages/22016dcf-bd08-42b5-b6e4-8f48c92aeb3e_高一物理.jpg');
INSERT INTO `commodity` VALUES ('6', '生物', '理科', '生物', '2018-09-03 07:49:51', '/uploadImages/7526d513-024b-4b20-8f16-7a4e95a92534_高一生物.jpg');
INSERT INTO `commodity` VALUES ('7', '化学', '理科', '化学', '2018-09-03 07:50:10', '/uploadImages/cd2a2624-b934-44be-832f-57773d6fad7c_高一化学.jpg');
INSERT INTO `commodity` VALUES ('8', '历史', '文科', '历史', '2018-09-03 07:50:23', '/uploadImages/8d9f4ea5-bab6-4428-bc4d-ca9d2412950d_高一历史.jpg');
INSERT INTO `commodity` VALUES ('9', '地理', '文科', '地理', '2018-09-03 07:50:32', '/uploadImages/6aa0289a-c968-499b-94bd-8bf13fdc37cc_高一地理.jpg');
INSERT INTO `commodity` VALUES ('10', '政治', '文科', '政治', '2018-09-03 07:50:44', '/uploadImages/ccd68b7f-4a76-4cf8-8808-c48fc22b8e4b_高一政治.jpg');
INSERT INTO `commodity` VALUES ('11', '音乐', '其他', '音乐课', '2018-08-28 17:33:46', null);
INSERT INTO `commodity` VALUES ('12', '美术', '其他', '美术', '2018-08-28 17:59:10', null);
INSERT INTO `commodity` VALUES ('13', '计算机', '其他', '计算机', '2018-09-03 16:55:32', null);

-- ----------------------------
-- Table structure for `homework`
-- ----------------------------
DROP TABLE IF EXISTS `homework`;
CREATE TABLE `homework` (
  `H_ID` int(40) NOT NULL,
  `H_name` varchar(40) default NULL,
  `H_content` text,
  `H_startTime` datetime default NULL,
  `H_endTime` datetime default NULL,
  PRIMARY KEY  (`H_ID`),
  KEY `H_name` (`H_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of homework
-- ----------------------------
INSERT INTO `homework` VALUES ('1', '陈一鸣的物理作业', '求20kg的物体从10米高空做自由落体在落地的一瞬间对地面的压力（忽略空气阻力）', '2018-08-23 10:13:54', '2018-08-31 10:14:00');
INSERT INTO `homework` VALUES ('4', '456', '1234', '2018-08-23 11:01:00', '2018-08-30 11:01:00');
INSERT INTO `homework` VALUES ('23211916', '第二个作业', '自由落体运动', '2018-08-23 10:10:00', '2018-08-31 10:01:00');
INSERT INTO `homework` VALUES ('27113208', 'styktdk', 'jdkdk', '2018-08-27 10:10:00', '2018-08-30 10:11:00');
INSERT INTO `homework` VALUES ('28174747', '2班音乐作业', '听卡农钢琴曲', '2018-08-28 10:10:00', '2018-08-31 10:10:00');
INSERT INTO `homework` VALUES ('28175429', '跳绳180', '一分钟180', '2018-08-28 17:25:00', '2018-08-28 17:55:00');
INSERT INTO `homework` VALUES ('28180338', '美术作业', '写生', '2018-08-28 18:02:00', '2018-08-31 19:00:00');

-- ----------------------------
-- Table structure for `parent`
-- ----------------------------
DROP TABLE IF EXISTS `parent`;
CREATE TABLE `parent` (
  `id` int(11) NOT NULL auto_increment,
  `userName` varchar(40) default NULL,
  `password` varchar(40) default NULL,
  `parentName` varchar(40) default NULL,
  `profession` varchar(40) default NULL,
  `workspace` varchar(40) default NULL,
  `student_id` int(11) default NULL,
  `telephone` varchar(40) default NULL,
  `gender` varchar(40) default NULL,
  PRIMARY KEY  (`id`),
  KEY `parent_student_id` (`student_id`),
  CONSTRAINT `parent_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parent
-- ----------------------------
INSERT INTO `parent` VALUES ('1', 'niuqiuzhen', '111111', '牛秋珍', '工人', '睢县石棉瓦厂', '8', '15138931676', '女');
INSERT INTO `parent` VALUES ('2', 'hemeili', '222222', '95', '工人', '睢县酱菜厂', '9', '15589675125', '女');
INSERT INTO `parent` VALUES ('3', 'dailuming', '333333', '戴鹿明', '教师', '睢县高级中学', '10', '18546815394', '女');
INSERT INTO `parent` VALUES ('4', 'shenzhuoren', '444444', '沈卓仁', '教师', '睢县回族高级中学', '11', '13569845675', '男');
INSERT INTO `parent` VALUES ('5', 'yaoyanmei', '555555', '姚艳梅', '农民', '睢县城郊乡', '12', '15538456155', '女');
INSERT INTO `parent` VALUES ('6', 'hehuiying', '666666', '何慧颖', '工人', '睢县等级面粉厂', '13', '15637845813', '女');
INSERT INTO `parent` VALUES ('7', 'liuyunzhi', '777777', '刘云志', '农民', '睢县城郊乡', '14', '18563492487', '男');
INSERT INTO `parent` VALUES ('8', 'wangzixuan', '888888', '王子轩', '会计', '睢县天明会计有限公司', '15', '15556841384', '男');
INSERT INTO `parent` VALUES ('9', 'liumingchao', '999999', '刘明超', '医生', '睢县人民医院', '16', '13216849848', '男');
INSERT INTO `parent` VALUES ('10', 'liderong', '101010', '李德荣', '程序员', '睢县创新电脑科技有限公司', '17', '13546868485', '男');
INSERT INTO `parent` VALUES ('11', 'hequnying', '121212', '何群英', '军人', null, '18', '15579845194', '男');
INSERT INTO `parent` VALUES ('12', 'xuxiushan', '131313', '徐秀山', '农民', '睢县董店乡', '19', '15684157951', '男');
INSERT INTO `parent` VALUES ('13', 'chenchaoen', '141414', '陈超恩', '医生', '睢县中医院', '20', '18568741325', '男');
INSERT INTO `parent` VALUES ('14', 'lizhenxiang', '151515', '李振祥', '教师', '睢县实验中学', '21', '17718495485', '男');
INSERT INTO `parent` VALUES ('15', 'xiaaili', '161616', '夏爱丽', '公务员', '睢县政府', '22', '15516875945', '女');
INSERT INTO `parent` VALUES ('16', 'liyueqian', '171717', '李月倩', '工人', '睢县诚誉手套厂', '23', '13568415486', '女');
INSERT INTO `parent` VALUES ('17', 'majiehao', '181818', '马杰浩', '农民', '睢县涧岗乡', '24', '15549813548', '男');
INSERT INTO `parent` VALUES ('18', 'liangsiqing', '191919', '梁思卿', '医生', '睢县同济医院', '25', '18535481534', '女');
INSERT INTO `parent` VALUES ('19', 'zhusuhua', '202020', '朱素华', '个体', '河南省商丘市睢县民主二路39号附近服装店', '26', '13518743141', '女');
INSERT INTO `parent` VALUES ('20', 'lixiangen', '212121', '李祥恩', '个体', '河南省商丘市睢县民主路与049县道交叉口东150米华联超市', '27', '13154841354', '男');
INSERT INTO `parent` VALUES ('21', 'tanmeilan', '232323', '谭美兰', '会计', '睢县鼎诺会计有限公司', '28', '13016841215', '女');
INSERT INTO `parent` VALUES ('22', 'zhanghuifang', '242424', '张慧芳', '医生', '睢县中医院', '29', '15083504058', '女');
INSERT INTO `parent` VALUES ('23', 'xulijie', '252525', '徐丽洁', '教师', '睢县育才学校', '30', '15506844184', '女');
INSERT INTO `parent` VALUES ('24', 'huangyanhong', '262626', '黄艳红', '程序员', '睢县菁美互联网科技发展有限公司', '31', '18506840684', '女');
INSERT INTO `parent` VALUES ('25', 'chenmeiling', '272727', '陈美玲', '会计', '睢县悦来商贸', '32', '15506987416', '女');
INSERT INTO `parent` VALUES ('26', 'guoqin', '282828', '郭琴', '工人', '睢县黄庄海绵厂', '33', '18538410548', '女');
INSERT INTO `parent` VALUES ('27', 'wangguifen', '292929', '王贵芬', '工人', '睢县华路诗葡萄酒厂', '34', '15138480814', '女');
INSERT INTO `parent` VALUES ('28', 'yuanxiaobi', '303030', '袁晓碧', '工人', '睢县成裕电子厂', '35', '17703789215', '女');
INSERT INTO `parent` VALUES ('29', 'mahuiwei', '313131', '马慧伟', '农民', '睢县河堤乡', '36', '17706848405', '男');
INSERT INTO `parent` VALUES ('30', 'caoguangrui', '323232', '曹广瑞', '医生', '睢县公疗医院', '37', '15516014463', '男');
INSERT INTO `parent` VALUES ('31', 'liangminghui', '343434', '梁明辉', '教师', '睢县第二初级中学', '38', '13518460485', '男');
INSERT INTO `parent` VALUES ('32', 'wangrunzhe', '353535', '王润哲', '程序员', '睢县伟信互联网商贸有限公司', '39', '17884304864', '男');
INSERT INTO `parent` VALUES ('33', 'huangguogong', '363636', '黄国功', '会计', '睢县欢乐熊家装易配店', '40', '18803594844', '男');
INSERT INTO `parent` VALUES ('34', 'liuyifei', '373737', '刘逸飞', '医生', '睢县人民医院', '41', '15838710568', '男');
INSERT INTO `parent` VALUES ('35', 'wuliwan', '383838', '吴丽婉', '农民', '睢县匡城乡', '42', '17735481054', '女');
INSERT INTO `parent` VALUES ('36', 'chenhaoxian', '393939', '陈浩贤', '农民', '睢县何集乡', '43', '13591493845', '男');
INSERT INTO `parent` VALUES ('37', 'xuyingwen', '404040', '徐颖文', '工人', '睢县迎喜机制瓦厂', '44', '13549684135', '女');
INSERT INTO `parent` VALUES ('38', 'xiaomingai', '414141', '肖明爱', '个体', '河南省商丘市睢县老东关街老烟草局对面水果店', '45', '13248056875', '男');
INSERT INTO `parent` VALUES ('39', 'huangqingying', '424242', '黄庆英', '个体', '河南省商丘市睢县007乡道与211省道交叉口西南100米爱家超市', '46', '13156016848', '男');
INSERT INTO `parent` VALUES ('40', 'lvshaoqun', '434343', '吕少群', '个体', '河南省商丘市睢县325省道北100米服装店', '47', '18538740488', '男');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL auto_increment,
  `studentName` varchar(30) default NULL,
  `idCard` varchar(30) default NULL,
  `password` varchar(30) default NULL,
  `classNum` int(11) default NULL,
  `idNumber` varchar(40) default NULL,
  `gender` varchar(10) default NULL,
  `enrollyear` varchar(10) default NULL,
  PRIMARY KEY  (`id`),
  KEY `classNum` (`classNum`),
  KEY `idCard` (`idCard`),
  CONSTRAINT `classNum` FOREIGN KEY (`classNum`) REFERENCES `classbean` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('8', '黄竞', '10101', '123456', '2', '410185199612167618', '男', '2017');
INSERT INTO `student` VALUES ('9', '王坤鹏', '10102', '123456', '2', '4.11621199809211E17', '男', '2017');
INSERT INTO `student` VALUES ('10', '张思雨', '10103', '123456', '2', '4.11621199809201E17', '女', '2017');
INSERT INTO `student` VALUES ('11', '张晴', '10104', '123456', '2', '4.11621199803231E17', '女', '2017');
INSERT INTO `student` VALUES ('12', '张麟泷', '10105', '123456', '2', '4.11621199703232E17', '男', '2017');
INSERT INTO `student` VALUES ('13', '刘少博 ', '10106', '123456', '2', '4.11621199701012E17', '男', '2017');
INSERT INTO `student` VALUES ('14', '黄雨菡', '10107', '123456', '2', '4.11621199701022E17', '女', '2017');
INSERT INTO `student` VALUES ('15', '宋吴', '10108', '123456', '2', '4.11621200001032E17', '男', '2017');
INSERT INTO `student` VALUES ('16', '刘嘉龙', '10109', '123456', '2', '4.11621200001042E17', '男', '2017');
INSERT INTO `student` VALUES ('17', '孙浩然', '10110', '123456', '2', '4.11621200001052E17', '男', '2017');
INSERT INTO `student` VALUES ('18', '韩娟', '10111', '123456', '2', '4.11621200101062E17', '女', '2017');
INSERT INTO `student` VALUES ('19', '范莹莹', '10112', '123456', '2', '4.1162120000101E17', '女', '2017');
INSERT INTO `student` VALUES ('20', '李士江', '10113', '123456', '2', '4.11621200002232E17', '男', '2017');
INSERT INTO `student` VALUES ('21', '吴东杰', '10114', '123456', '2', '4.11621200003202E17', '女', '2017');
INSERT INTO `student` VALUES ('22', '胡梦蝶', '10115', '123456', '2', '4.11621200012032E17', '女', '2017');
INSERT INTO `student` VALUES ('23', '泰世遥', '10116', '123456', '2', '4.11621200011202E17', '女', '2017');
INSERT INTO `student` VALUES ('24', '甘晓亮', '10117', '123456', '2', '4.11621200005012E17', '男', '2017');
INSERT INTO `student` VALUES ('25', '上官成成', '10118', '123456', '2', '4.11621200003122E17', '男', '2017');
INSERT INTO `student` VALUES ('26', '张文丹', '10119', '123456', '2', '4.11621200004052E17', '女', '2017');
INSERT INTO `student` VALUES ('27', '江萌', '10120', '123456', '2', '4.11621200010022E17', '女', '2017');
INSERT INTO `student` VALUES ('28', '张志鹏', '20101', '123456', '3', '4.11621200010222E17', '男', '2018');
INSERT INTO `student` VALUES ('29', '朱星宇', '20102', '123456', '3', '4.11621200003022E17', '男', '2018');
INSERT INTO `student` VALUES ('30', '武敬', '20103', '123456', '3', '4.11621200006122E17', '男', '2018');
INSERT INTO `student` VALUES ('31', '梁艳丽 ', '20104', '123456', '3', '4.11621200004032E17', '女', '2018');
INSERT INTO `student` VALUES ('32', '王贺品', '20105', '123456', '3', '4.11621200003082E17', '女', '2018');
INSERT INTO `student` VALUES ('33', '樊慧敏', '20106', '123456', '3', '4.11621200009062E17', '女', '2018');
INSERT INTO `student` VALUES ('34', '王益清', '20107', '123456', '3', '4.11621200004262E17', '男', '2018');
INSERT INTO `student` VALUES ('35', '李俞铮', '20108', '123456', '3', '4.11621200003272E17', '男', '2018');
INSERT INTO `student` VALUES ('36', '张怀春', '20109', '123456', '3', '4.11621200012062E17', '男', '2018');
INSERT INTO `student` VALUES ('37', '吴林翰', '20110', '123456', '3', '4.11621200011232E17', '男', '2018');
INSERT INTO `student` VALUES ('38', '曹文才', '20111', '123456', '3', '4.11621200011122E17', '男', '2018');
INSERT INTO `student` VALUES ('39', '徐荣婷', '20112', '123456', '3', '4.11621200011092E17', '女', '2018');
INSERT INTO `student` VALUES ('40', '刘洋', '20113', '123456', '3', '4.11621200009182E17', '女', '2018');
INSERT INTO `student` VALUES ('41', '李宁', '20114', '123456', '3', '4.11621200106082E17', '女', '2018');
INSERT INTO `student` VALUES ('42', '韩永辉', '20115', '123456', '3', '4.11621200102032E17', '男', '2018');
INSERT INTO `student` VALUES ('43', '李航', '20116', '123456', '3', '4.11621200105092E17', '男', '2018');
INSERT INTO `student` VALUES ('44', '黄筝', '20117', '123456', '3', '4.11621200105022E17', '女', '2018');
INSERT INTO `student` VALUES ('45', '彭利平', '20118', '123456', '3', '4.11621200104072E17', '男', '2018');
INSERT INTO `student` VALUES ('46', '高事成', '20119', '123456', '3', '4.11621200104062E17', '男', '2018');
INSERT INTO `student` VALUES ('47', '刘学东', '20120', '123456', '3', '4.11621200105042E17', '男', '2018');

-- ----------------------------
-- Table structure for `student_commodity`
-- ----------------------------
DROP TABLE IF EXISTS `student_commodity`;
CREATE TABLE `student_commodity` (
  `id` int(255) NOT NULL auto_increment,
  `student_id` int(255) NOT NULL,
  `commodity_id` int(255) NOT NULL,
  `grade` double(255,0) default NULL,
  PRIMARY KEY  (`id`,`student_id`,`commodity_id`),
  KEY `student_id` (`student_id`),
  KEY `commodity_id` (`commodity_id`),
  CONSTRAINT `student_commodity_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  CONSTRAINT `student_commodity_ibfk_2` FOREIGN KEY (`commodity_id`) REFERENCES `commodity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=451 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_commodity
-- ----------------------------
INSERT INTO `student_commodity` VALUES ('1', '8', '1', '100');
INSERT INTO `student_commodity` VALUES ('2', '8', '2', '123');
INSERT INTO `student_commodity` VALUES ('3', '8', '3', '112');
INSERT INTO `student_commodity` VALUES ('4', '8', '4', '96');
INSERT INTO `student_commodity` VALUES ('5', '8', '5', '63');
INSERT INTO `student_commodity` VALUES ('6', '8', '6', '89');
INSERT INTO `student_commodity` VALUES ('7', '8', '7', '60');
INSERT INTO `student_commodity` VALUES ('8', '8', '8', '89');
INSERT INTO `student_commodity` VALUES ('9', '8', '9', '89');
INSERT INTO `student_commodity` VALUES ('10', '8', '10', '79');
INSERT INTO `student_commodity` VALUES ('11', '9', '1', '100');
INSERT INTO `student_commodity` VALUES ('12', '9', '2', '133');
INSERT INTO `student_commodity` VALUES ('13', '9', '3', '145');
INSERT INTO `student_commodity` VALUES ('14', '9', '4', '69');
INSERT INTO `student_commodity` VALUES ('15', '9', '5', '89');
INSERT INTO `student_commodity` VALUES ('16', '9', '6', '78');
INSERT INTO `student_commodity` VALUES ('17', '9', '7', '89');
INSERT INTO `student_commodity` VALUES ('18', '9', '8', '89');
INSERT INTO `student_commodity` VALUES ('19', '9', '9', '96');
INSERT INTO `student_commodity` VALUES ('20', '9', '10', '56');
INSERT INTO `student_commodity` VALUES ('21', '10', '1', '112');
INSERT INTO `student_commodity` VALUES ('22', '10', '2', '136');
INSERT INTO `student_commodity` VALUES ('23', '10', '3', '116');
INSERT INTO `student_commodity` VALUES ('24', '10', '4', '78');
INSERT INTO `student_commodity` VALUES ('25', '10', '5', '89');
INSERT INTO `student_commodity` VALUES ('26', '10', '6', '68');
INSERT INTO `student_commodity` VALUES ('27', '10', '7', '78');
INSERT INTO `student_commodity` VALUES ('28', '10', '8', '78');
INSERT INTO `student_commodity` VALUES ('29', '10', '9', '89');
INSERT INTO `student_commodity` VALUES ('30', '10', '10', '89');
INSERT INTO `student_commodity` VALUES ('31', '11', '1', '113');
INSERT INTO `student_commodity` VALUES ('32', '11', '2', '135');
INSERT INTO `student_commodity` VALUES ('33', '11', '3', '102');
INSERT INTO `student_commodity` VALUES ('34', '11', '4', '96');
INSERT INTO `student_commodity` VALUES ('35', '11', '5', '63');
INSERT INTO `student_commodity` VALUES ('36', '11', '6', '78');
INSERT INTO `student_commodity` VALUES ('37', '11', '7', '89');
INSERT INTO `student_commodity` VALUES ('38', '11', '8', '89');
INSERT INTO `student_commodity` VALUES ('39', '11', '9', '56');
INSERT INTO `student_commodity` VALUES ('40', '11', '10', '79');
INSERT INTO `student_commodity` VALUES ('41', '12', '1', '124');
INSERT INTO `student_commodity` VALUES ('42', '12', '2', '106');
INSERT INTO `student_commodity` VALUES ('43', '12', '3', '112');
INSERT INTO `student_commodity` VALUES ('44', '12', '4', '96');
INSERT INTO `student_commodity` VALUES ('45', '12', '5', '63');
INSERT INTO `student_commodity` VALUES ('46', '12', '6', '96');
INSERT INTO `student_commodity` VALUES ('47', '12', '7', '78');
INSERT INTO `student_commodity` VALUES ('48', '12', '8', '68');
INSERT INTO `student_commodity` VALUES ('49', '12', '9', '85');
INSERT INTO `student_commodity` VALUES ('50', '12', '10', '79');
INSERT INTO `student_commodity` VALUES ('51', '13', '1', '109');
INSERT INTO `student_commodity` VALUES ('52', '13', '2', '125');
INSERT INTO `student_commodity` VALUES ('53', '13', '3', '136');
INSERT INTO `student_commodity` VALUES ('54', '13', '4', '95');
INSERT INTO `student_commodity` VALUES ('55', '13', '5', '84');
INSERT INTO `student_commodity` VALUES ('56', '13', '6', '86');
INSERT INTO `student_commodity` VALUES ('57', '13', '7', '78');
INSERT INTO `student_commodity` VALUES ('58', '13', '8', '89');
INSERT INTO `student_commodity` VALUES ('59', '13', '9', '56');
INSERT INTO `student_commodity` VALUES ('60', '13', '10', '79');
INSERT INTO `student_commodity` VALUES ('61', '14', '1', '124');
INSERT INTO `student_commodity` VALUES ('62', '14', '2', '100');
INSERT INTO `student_commodity` VALUES ('63', '14', '3', '111');
INSERT INTO `student_commodity` VALUES ('64', '14', '4', '70');
INSERT INTO `student_commodity` VALUES ('65', '14', '5', '78');
INSERT INTO `student_commodity` VALUES ('66', '14', '6', '89');
INSERT INTO `student_commodity` VALUES ('67', '14', '7', '45');
INSERT INTO `student_commodity` VALUES ('68', '14', '8', '56');
INSERT INTO `student_commodity` VALUES ('69', '14', '9', '86');
INSERT INTO `student_commodity` VALUES ('70', '14', '10', '78');
INSERT INTO `student_commodity` VALUES ('71', '15', '1', '110');
INSERT INTO `student_commodity` VALUES ('72', '15', '2', '120');
INSERT INTO `student_commodity` VALUES ('73', '15', '3', '100');
INSERT INTO `student_commodity` VALUES ('74', '15', '4', '96');
INSERT INTO `student_commodity` VALUES ('75', '15', '5', '85');
INSERT INTO `student_commodity` VALUES ('76', '15', '6', '87');
INSERT INTO `student_commodity` VALUES ('77', '15', '7', '78');
INSERT INTO `student_commodity` VALUES ('78', '15', '8', '69');
INSERT INTO `student_commodity` VALUES ('79', '15', '9', '69');
INSERT INTO `student_commodity` VALUES ('80', '15', '10', '79');
INSERT INTO `student_commodity` VALUES ('81', '16', '1', '136');
INSERT INTO `student_commodity` VALUES ('82', '16', '2', '123');
INSERT INTO `student_commodity` VALUES ('83', '16', '3', '112');
INSERT INTO `student_commodity` VALUES ('84', '16', '4', '80');
INSERT INTO `student_commodity` VALUES ('85', '16', '5', '63');
INSERT INTO `student_commodity` VALUES ('86', '16', '6', '89');
INSERT INTO `student_commodity` VALUES ('87', '16', '7', '56');
INSERT INTO `student_commodity` VALUES ('88', '16', '8', '67');
INSERT INTO `student_commodity` VALUES ('89', '16', '9', '86');
INSERT INTO `student_commodity` VALUES ('90', '16', '10', '79');
INSERT INTO `student_commodity` VALUES ('92', '27', '1', '112');
INSERT INTO `student_commodity` VALUES ('93', '27', '2', '145');
INSERT INTO `student_commodity` VALUES ('94', '27', '3', '139');
INSERT INTO `student_commodity` VALUES ('95', '27', '4', '96');
INSERT INTO `student_commodity` VALUES ('96', '27', '5', '97');
INSERT INTO `student_commodity` VALUES ('97', '27', '6', '92');
INSERT INTO `student_commodity` VALUES ('98', '27', '7', '94');
INSERT INTO `student_commodity` VALUES ('99', '27', '8', '93');
INSERT INTO `student_commodity` VALUES ('100', '27', '9', '86');
INSERT INTO `student_commodity` VALUES ('101', '27', '10', '89');
INSERT INTO `student_commodity` VALUES ('102', '28', '1', '136');
INSERT INTO `student_commodity` VALUES ('103', '28', '2', '145');
INSERT INTO `student_commodity` VALUES ('104', '28', '3', '128');
INSERT INTO `student_commodity` VALUES ('105', '28', '4', '100');
INSERT INTO `student_commodity` VALUES ('106', '28', '5', '63');
INSERT INTO `student_commodity` VALUES ('107', '28', '6', '67');
INSERT INTO `student_commodity` VALUES ('108', '28', '7', '78');
INSERT INTO `student_commodity` VALUES ('109', '28', '8', '89');
INSERT INTO `student_commodity` VALUES ('110', '28', '9', '86');
INSERT INTO `student_commodity` VALUES ('111', '28', '10', '79');
INSERT INTO `student_commodity` VALUES ('112', '29', '1', '103');
INSERT INTO `student_commodity` VALUES ('113', '29', '2', '106');
INSERT INTO `student_commodity` VALUES ('114', '29', '3', '121');
INSERT INTO `student_commodity` VALUES ('115', '29', '4', '56');
INSERT INTO `student_commodity` VALUES ('116', '29', '5', '63');
INSERT INTO `student_commodity` VALUES ('117', '29', '6', '61');
INSERT INTO `student_commodity` VALUES ('118', '29', '7', '56');
INSERT INTO `student_commodity` VALUES ('119', '29', '8', '73');
INSERT INTO `student_commodity` VALUES ('120', '29', '9', '65');
INSERT INTO `student_commodity` VALUES ('121', '29', '10', '88');
INSERT INTO `student_commodity` VALUES ('122', '30', '1', '122');
INSERT INTO `student_commodity` VALUES ('123', '30', '2', '125');
INSERT INTO `student_commodity` VALUES ('124', '30', '3', '111');
INSERT INTO `student_commodity` VALUES ('125', '30', '4', '68');
INSERT INTO `student_commodity` VALUES ('126', '30', '5', '63');
INSERT INTO `student_commodity` VALUES ('127', '30', '6', '78');
INSERT INTO `student_commodity` VALUES ('128', '30', '7', '78');
INSERT INTO `student_commodity` VALUES ('129', '30', '8', '45');
INSERT INTO `student_commodity` VALUES ('130', '30', '9', '86');
INSERT INTO `student_commodity` VALUES ('131', '30', '10', '62');
INSERT INTO `student_commodity` VALUES ('132', '31', '1', '103');
INSERT INTO `student_commodity` VALUES ('133', '31', '2', '123');
INSERT INTO `student_commodity` VALUES ('134', '31', '3', '99');
INSERT INTO `student_commodity` VALUES ('135', '31', '4', '96');
INSERT INTO `student_commodity` VALUES ('136', '31', '5', '63');
INSERT INTO `student_commodity` VALUES ('137', '31', '6', '89');
INSERT INTO `student_commodity` VALUES ('138', '31', '7', '78');
INSERT INTO `student_commodity` VALUES ('139', '31', '8', '89');
INSERT INTO `student_commodity` VALUES ('140', '31', '9', '75');
INSERT INTO `student_commodity` VALUES ('141', '31', '10', '79');
INSERT INTO `student_commodity` VALUES ('142', '32', '1', '89');
INSERT INTO `student_commodity` VALUES ('143', '32', '2', '123');
INSERT INTO `student_commodity` VALUES ('144', '32', '3', '112');
INSERT INTO `student_commodity` VALUES ('145', '32', '4', '96');
INSERT INTO `student_commodity` VALUES ('146', '32', '5', '63');
INSERT INTO `student_commodity` VALUES ('147', '32', '6', '89');
INSERT INTO `student_commodity` VALUES ('148', '32', '7', '78');
INSERT INTO `student_commodity` VALUES ('149', '32', '8', '89');
INSERT INTO `student_commodity` VALUES ('150', '32', '9', '70');
INSERT INTO `student_commodity` VALUES ('151', '32', '10', '79');
INSERT INTO `student_commodity` VALUES ('152', '33', '1', '90');
INSERT INTO `student_commodity` VALUES ('153', '33', '2', '102');
INSERT INTO `student_commodity` VALUES ('154', '33', '3', '123');
INSERT INTO `student_commodity` VALUES ('155', '33', '4', '96');
INSERT INTO `student_commodity` VALUES ('156', '33', '5', '63');
INSERT INTO `student_commodity` VALUES ('157', '33', '6', '89');
INSERT INTO `student_commodity` VALUES ('158', '33', '7', '78');
INSERT INTO `student_commodity` VALUES ('159', '33', '8', '89');
INSERT INTO `student_commodity` VALUES ('160', '33', '9', '68');
INSERT INTO `student_commodity` VALUES ('161', '33', '10', '79');
INSERT INTO `student_commodity` VALUES ('162', '34', '1', '145');
INSERT INTO `student_commodity` VALUES ('163', '34', '2', '112');
INSERT INTO `student_commodity` VALUES ('164', '34', '3', '135');
INSERT INTO `student_commodity` VALUES ('165', '34', '4', '96');
INSERT INTO `student_commodity` VALUES ('166', '34', '5', '63');
INSERT INTO `student_commodity` VALUES ('167', '34', '6', '89');
INSERT INTO `student_commodity` VALUES ('168', '34', '7', '78');
INSERT INTO `student_commodity` VALUES ('169', '34', '8', '89');
INSERT INTO `student_commodity` VALUES ('170', '34', '9', '79');
INSERT INTO `student_commodity` VALUES ('171', '34', '10', '96');
INSERT INTO `student_commodity` VALUES ('172', '35', '1', '123');
INSERT INTO `student_commodity` VALUES ('173', '35', '2', '90');
INSERT INTO `student_commodity` VALUES ('174', '35', '3', '110');
INSERT INTO `student_commodity` VALUES ('175', '35', '4', '65');
INSERT INTO `student_commodity` VALUES ('176', '35', '5', '63');
INSERT INTO `student_commodity` VALUES ('177', '35', '6', '89');
INSERT INTO `student_commodity` VALUES ('178', '35', '7', '78');
INSERT INTO `student_commodity` VALUES ('179', '35', '8', '89');
INSERT INTO `student_commodity` VALUES ('180', '35', '9', '79');
INSERT INTO `student_commodity` VALUES ('181', '35', '10', '96');
INSERT INTO `student_commodity` VALUES ('182', '36', '1', '145');
INSERT INTO `student_commodity` VALUES ('183', '36', '2', '112');
INSERT INTO `student_commodity` VALUES ('184', '36', '3', '135');
INSERT INTO `student_commodity` VALUES ('185', '36', '4', '96');
INSERT INTO `student_commodity` VALUES ('186', '36', '5', '63');
INSERT INTO `student_commodity` VALUES ('187', '36', '6', '96');
INSERT INTO `student_commodity` VALUES ('188', '36', '7', '78');
INSERT INTO `student_commodity` VALUES ('189', '36', '8', '68');
INSERT INTO `student_commodity` VALUES ('190', '36', '9', '79');
INSERT INTO `student_commodity` VALUES ('191', '36', '10', '78');
INSERT INTO `student_commodity` VALUES ('192', '37', '1', '135');
INSERT INTO `student_commodity` VALUES ('193', '37', '2', '125');
INSERT INTO `student_commodity` VALUES ('194', '37', '3', '120');
INSERT INTO `student_commodity` VALUES ('195', '37', '4', '85');
INSERT INTO `student_commodity` VALUES ('196', '37', '5', '87');
INSERT INTO `student_commodity` VALUES ('197', '37', '6', '98');
INSERT INTO `student_commodity` VALUES ('198', '37', '7', '78');
INSERT INTO `student_commodity` VALUES ('199', '37', '8', '96');
INSERT INTO `student_commodity` VALUES ('200', '37', '9', '79');
INSERT INTO `student_commodity` VALUES ('201', '37', '10', '96');
INSERT INTO `student_commodity` VALUES ('202', '38', '1', '135');
INSERT INTO `student_commodity` VALUES ('203', '38', '2', '139');
INSERT INTO `student_commodity` VALUES ('204', '38', '3', '96');
INSERT INTO `student_commodity` VALUES ('205', '38', '4', '98');
INSERT INTO `student_commodity` VALUES ('206', '38', '5', '68');
INSERT INTO `student_commodity` VALUES ('207', '38', '6', '79');
INSERT INTO `student_commodity` VALUES ('208', '38', '7', '78');
INSERT INTO `student_commodity` VALUES ('209', '38', '8', '89');
INSERT INTO `student_commodity` VALUES ('210', '38', '9', '79');
INSERT INTO `student_commodity` VALUES ('211', '38', '10', '89');
INSERT INTO `student_commodity` VALUES ('212', '39', '1', '100');
INSERT INTO `student_commodity` VALUES ('213', '39', '2', '132');
INSERT INTO `student_commodity` VALUES ('214', '39', '3', '123');
INSERT INTO `student_commodity` VALUES ('215', '39', '4', '69');
INSERT INTO `student_commodity` VALUES ('216', '39', '5', '89');
INSERT INTO `student_commodity` VALUES ('217', '39', '6', '78');
INSERT INTO `student_commodity` VALUES ('218', '39', '7', '95');
INSERT INTO `student_commodity` VALUES ('219', '39', '8', '96');
INSERT INTO `student_commodity` VALUES ('220', '39', '9', '79');
INSERT INTO `student_commodity` VALUES ('221', '39', '10', '96');
INSERT INTO `student_commodity` VALUES ('222', '40', '1', '106');
INSERT INTO `student_commodity` VALUES ('223', '40', '2', '95');
INSERT INTO `student_commodity` VALUES ('224', '40', '3', '96');
INSERT INTO `student_commodity` VALUES ('225', '40', '4', '78');
INSERT INTO `student_commodity` VALUES ('226', '40', '5', '89');
INSERT INTO `student_commodity` VALUES ('227', '40', '6', '56');
INSERT INTO `student_commodity` VALUES ('228', '40', '7', '69');
INSERT INTO `student_commodity` VALUES ('229', '40', '8', '89');
INSERT INTO `student_commodity` VALUES ('230', '40', '9', '97');
INSERT INTO `student_commodity` VALUES ('231', '40', '10', '65');
INSERT INTO `student_commodity` VALUES ('232', '41', '1', '103');
INSERT INTO `student_commodity` VALUES ('233', '41', '2', '123');
INSERT INTO `student_commodity` VALUES ('234', '41', '3', '92');
INSERT INTO `student_commodity` VALUES ('235', '41', '4', '63');
INSERT INTO `student_commodity` VALUES ('236', '41', '5', '86');
INSERT INTO `student_commodity` VALUES ('237', '41', '6', '45');
INSERT INTO `student_commodity` VALUES ('238', '41', '7', '65');
INSERT INTO `student_commodity` VALUES ('239', '41', '8', '68');
INSERT INTO `student_commodity` VALUES ('240', '41', '9', '69');
INSERT INTO `student_commodity` VALUES ('241', '41', '10', '67');
INSERT INTO `student_commodity` VALUES ('242', '42', '1', '103');
INSERT INTO `student_commodity` VALUES ('243', '42', '2', '106');
INSERT INTO `student_commodity` VALUES ('244', '42', '3', '46');
INSERT INTO `student_commodity` VALUES ('245', '42', '4', '59');
INSERT INTO `student_commodity` VALUES ('246', '42', '5', '68');
INSERT INTO `student_commodity` VALUES ('247', '42', '6', '67');
INSERT INTO `student_commodity` VALUES ('248', '42', '7', '56');
INSERT INTO `student_commodity` VALUES ('249', '42', '8', '69');
INSERT INTO `student_commodity` VALUES ('250', '42', '9', '64');
INSERT INTO `student_commodity` VALUES ('251', '42', '10', '68');
INSERT INTO `student_commodity` VALUES ('252', '43', '1', '90');
INSERT INTO `student_commodity` VALUES ('253', '43', '2', '96');
INSERT INTO `student_commodity` VALUES ('254', '43', '3', '106');
INSERT INTO `student_commodity` VALUES ('255', '43', '4', '46');
INSERT INTO `student_commodity` VALUES ('256', '43', '5', '68');
INSERT INTO `student_commodity` VALUES ('257', '43', '6', '67');
INSERT INTO `student_commodity` VALUES ('258', '43', '7', '64');
INSERT INTO `student_commodity` VALUES ('259', '43', '8', '61');
INSERT INTO `student_commodity` VALUES ('260', '43', '9', '69');
INSERT INTO `student_commodity` VALUES ('261', '43', '10', '94');
INSERT INTO `student_commodity` VALUES ('262', '44', '1', '96');
INSERT INTO `student_commodity` VALUES ('263', '44', '2', '109');
INSERT INTO `student_commodity` VALUES ('264', '44', '3', '106');
INSERT INTO `student_commodity` VALUES ('265', '44', '4', '68');
INSERT INTO `student_commodity` VALUES ('266', '44', '5', '67');
INSERT INTO `student_commodity` VALUES ('267', '44', '6', '64');
INSERT INTO `student_commodity` VALUES ('268', '44', '7', '69');
INSERT INTO `student_commodity` VALUES ('269', '44', '8', '69');
INSERT INTO `student_commodity` VALUES ('270', '44', '9', '67');
INSERT INTO `student_commodity` VALUES ('271', '44', '10', '90');
INSERT INTO `student_commodity` VALUES ('272', '45', '1', '109');
INSERT INTO `student_commodity` VALUES ('273', '45', '2', '129');
INSERT INTO `student_commodity` VALUES ('274', '45', '3', '128');
INSERT INTO `student_commodity` VALUES ('275', '45', '4', '87');
INSERT INTO `student_commodity` VALUES ('276', '45', '5', '98');
INSERT INTO `student_commodity` VALUES ('277', '45', '6', '56');
INSERT INTO `student_commodity` VALUES ('278', '45', '7', '68');
INSERT INTO `student_commodity` VALUES ('279', '45', '8', '76');
INSERT INTO `student_commodity` VALUES ('280', '45', '9', '68');
INSERT INTO `student_commodity` VALUES ('281', '45', '10', '79');
INSERT INTO `student_commodity` VALUES ('282', '46', '1', '103');
INSERT INTO `student_commodity` VALUES ('283', '46', '2', '126');
INSERT INTO `student_commodity` VALUES ('284', '46', '3', '139');
INSERT INTO `student_commodity` VALUES ('285', '46', '4', '76');
INSERT INTO `student_commodity` VALUES ('286', '46', '5', '86');
INSERT INTO `student_commodity` VALUES ('287', '46', '6', '94');
INSERT INTO `student_commodity` VALUES ('288', '46', '7', '78');
INSERT INTO `student_commodity` VALUES ('289', '46', '8', '89');
INSERT INTO `student_commodity` VALUES ('290', '46', '9', '65');
INSERT INTO `student_commodity` VALUES ('291', '46', '10', '68');
INSERT INTO `student_commodity` VALUES ('292', '47', '1', '102');
INSERT INTO `student_commodity` VALUES ('293', '47', '2', '135');
INSERT INTO `student_commodity` VALUES ('294', '47', '3', '125');
INSERT INTO `student_commodity` VALUES ('295', '47', '4', '96');
INSERT INTO `student_commodity` VALUES ('296', '47', '5', '89');
INSERT INTO `student_commodity` VALUES ('297', '47', '6', '86');
INSERT INTO `student_commodity` VALUES ('298', '47', '7', '78');
INSERT INTO `student_commodity` VALUES ('299', '47', '8', '89');
INSERT INTO `student_commodity` VALUES ('300', '47', '9', '79');
INSERT INTO `student_commodity` VALUES ('301', '47', '10', '96');
INSERT INTO `student_commodity` VALUES ('303', '20', '1', '109');
INSERT INTO `student_commodity` VALUES ('304', '20', '2', '132');
INSERT INTO `student_commodity` VALUES ('305', '20', '3', '106');
INSERT INTO `student_commodity` VALUES ('306', '20', '4', '68');
INSERT INTO `student_commodity` VALUES ('307', '20', '5', '89');
INSERT INTO `student_commodity` VALUES ('308', '20', '6', '56');
INSERT INTO `student_commodity` VALUES ('309', '20', '7', '59');
INSERT INTO `student_commodity` VALUES ('310', '20', '8', '89');
INSERT INTO `student_commodity` VALUES ('311', '20', '9', '79');
INSERT INTO `student_commodity` VALUES ('312', '20', '10', '96');
INSERT INTO `student_commodity` VALUES ('313', '21', '1', '95');
INSERT INTO `student_commodity` VALUES ('314', '21', '2', '96');
INSERT INTO `student_commodity` VALUES ('315', '21', '3', '103');
INSERT INTO `student_commodity` VALUES ('316', '21', '4', '48');
INSERT INTO `student_commodity` VALUES ('317', '21', '5', '56');
INSERT INTO `student_commodity` VALUES ('318', '21', '6', '56');
INSERT INTO `student_commodity` VALUES ('319', '21', '7', '35');
INSERT INTO `student_commodity` VALUES ('320', '21', '8', '98');
INSERT INTO `student_commodity` VALUES ('321', '21', '9', '35');
INSERT INTO `student_commodity` VALUES ('322', '21', '10', '35');
INSERT INTO `student_commodity` VALUES ('323', '22', '1', '102');
INSERT INTO `student_commodity` VALUES ('324', '22', '2', '35');
INSERT INTO `student_commodity` VALUES ('325', '22', '3', '76');
INSERT INTO `student_commodity` VALUES ('326', '22', '4', '89');
INSERT INTO `student_commodity` VALUES ('327', '22', '5', '66');
INSERT INTO `student_commodity` VALUES ('328', '22', '6', '69');
INSERT INTO `student_commodity` VALUES ('329', '22', '7', '69');
INSERT INTO `student_commodity` VALUES ('330', '22', '8', '56');
INSERT INTO `student_commodity` VALUES ('331', '22', '9', '48');
INSERT INTO `student_commodity` VALUES ('332', '22', '10', '89');
INSERT INTO `student_commodity` VALUES ('333', '23', '1', '123');
INSERT INTO `student_commodity` VALUES ('334', '23', '2', '112');
INSERT INTO `student_commodity` VALUES ('335', '23', '3', '86');
INSERT INTO `student_commodity` VALUES ('336', '23', '4', '45');
INSERT INTO `student_commodity` VALUES ('337', '23', '5', '65');
INSERT INTO `student_commodity` VALUES ('338', '23', '6', '65');
INSERT INTO `student_commodity` VALUES ('339', '23', '7', '45');
INSERT INTO `student_commodity` VALUES ('340', '23', '8', '79');
INSERT INTO `student_commodity` VALUES ('341', '23', '9', '62');
INSERT INTO `student_commodity` VALUES ('342', '23', '10', '36');
INSERT INTO `student_commodity` VALUES ('343', '24', '1', '140');
INSERT INTO `student_commodity` VALUES ('344', '24', '2', '132');
INSERT INTO `student_commodity` VALUES ('345', '24', '3', '120');
INSERT INTO `student_commodity` VALUES ('346', '24', '4', '15');
INSERT INTO `student_commodity` VALUES ('347', '24', '5', '54');
INSERT INTO `student_commodity` VALUES ('348', '24', '6', '24');
INSERT INTO `student_commodity` VALUES ('349', '24', '7', '65');
INSERT INTO `student_commodity` VALUES ('350', '24', '8', '23');
INSERT INTO `student_commodity` VALUES ('351', '24', '9', '59');
INSERT INTO `student_commodity` VALUES ('352', '24', '10', '39');
INSERT INTO `student_commodity` VALUES ('353', '25', '1', '106');
INSERT INTO `student_commodity` VALUES ('354', '25', '2', '45');
INSERT INTO `student_commodity` VALUES ('355', '25', '3', '23');
INSERT INTO `student_commodity` VALUES ('356', '25', '4', '56');
INSERT INTO `student_commodity` VALUES ('357', '25', '5', '63');
INSERT INTO `student_commodity` VALUES ('358', '25', '6', '89');
INSERT INTO `student_commodity` VALUES ('359', '25', '7', '78');
INSERT INTO `student_commodity` VALUES ('360', '25', '8', '89');
INSERT INTO `student_commodity` VALUES ('361', '25', '9', '89');
INSERT INTO `student_commodity` VALUES ('362', '25', '10', '96');
INSERT INTO `student_commodity` VALUES ('363', '26', '1', '123');
INSERT INTO `student_commodity` VALUES ('364', '26', '2', '123');
INSERT INTO `student_commodity` VALUES ('365', '26', '3', '95');
INSERT INTO `student_commodity` VALUES ('366', '26', '4', '96');
INSERT INTO `student_commodity` VALUES ('367', '26', '5', '12');
INSERT INTO `student_commodity` VALUES ('368', '26', '6', '89');
INSERT INTO `student_commodity` VALUES ('369', '26', '7', '32');
INSERT INTO `student_commodity` VALUES ('370', '26', '8', '89');
INSERT INTO `student_commodity` VALUES ('371', '26', '9', '59');
INSERT INTO `student_commodity` VALUES ('372', '26', '10', '96');
INSERT INTO `student_commodity` VALUES ('373', '17', '1', '106');
INSERT INTO `student_commodity` VALUES ('374', '17', '2', '123');
INSERT INTO `student_commodity` VALUES ('375', '17', '3', '136');
INSERT INTO `student_commodity` VALUES ('376', '17', '4', '96');
INSERT INTO `student_commodity` VALUES ('377', '17', '5', '63');
INSERT INTO `student_commodity` VALUES ('378', '17', '6', '89');
INSERT INTO `student_commodity` VALUES ('379', '17', '7', '45');
INSERT INTO `student_commodity` VALUES ('380', '17', '8', '12');
INSERT INTO `student_commodity` VALUES ('381', '17', '9', '79');
INSERT INTO `student_commodity` VALUES ('382', '17', '10', '96');
INSERT INTO `student_commodity` VALUES ('383', '18', '1', '123');
INSERT INTO `student_commodity` VALUES ('384', '18', '2', '86');
INSERT INTO `student_commodity` VALUES ('385', '18', '3', '79');
INSERT INTO `student_commodity` VALUES ('386', '18', '4', '69');
INSERT INTO `student_commodity` VALUES ('387', '18', '5', '86');
INSERT INTO `student_commodity` VALUES ('388', '18', '6', '65');
INSERT INTO `student_commodity` VALUES ('389', '18', '7', '23');
INSERT INTO `student_commodity` VALUES ('390', '18', '8', '9');
INSERT INTO `student_commodity` VALUES ('391', '18', '9', '32');
INSERT INTO `student_commodity` VALUES ('392', '18', '10', '87');
INSERT INTO `student_commodity` VALUES ('393', '19', '1', '106');
INSERT INTO `student_commodity` VALUES ('394', '19', '2', '135');
INSERT INTO `student_commodity` VALUES ('395', '19', '3', '120');
INSERT INTO `student_commodity` VALUES ('396', '19', '4', '45');
INSERT INTO `student_commodity` VALUES ('397', '19', '5', '56');
INSERT INTO `student_commodity` VALUES ('398', '19', '6', '89');
INSERT INTO `student_commodity` VALUES ('399', '19', '7', '78');
INSERT INTO `student_commodity` VALUES ('400', '19', '8', '96');
INSERT INTO `student_commodity` VALUES ('401', '19', '9', '79');
INSERT INTO `student_commodity` VALUES ('402', '19', '10', '96');
INSERT INTO `student_commodity` VALUES ('409', '8', '11', '100');
INSERT INTO `student_commodity` VALUES ('410', '9', '11', '100');
INSERT INTO `student_commodity` VALUES ('411', '10', '11', '100');
INSERT INTO `student_commodity` VALUES ('412', '11', '11', '100');
INSERT INTO `student_commodity` VALUES ('413', '12', '11', '0');
INSERT INTO `student_commodity` VALUES ('414', '13', '11', '100');
INSERT INTO `student_commodity` VALUES ('415', '14', '11', '100');
INSERT INTO `student_commodity` VALUES ('416', '15', '11', '100');
INSERT INTO `student_commodity` VALUES ('417', '16', '11', '100');
INSERT INTO `student_commodity` VALUES ('418', '17', '11', '100');
INSERT INTO `student_commodity` VALUES ('419', '18', '11', '100');
INSERT INTO `student_commodity` VALUES ('420', '19', '11', '100');
INSERT INTO `student_commodity` VALUES ('421', '20', '11', '100');
INSERT INTO `student_commodity` VALUES ('422', '21', '11', '100');
INSERT INTO `student_commodity` VALUES ('423', '22', '11', '100');
INSERT INTO `student_commodity` VALUES ('424', '23', '11', '100');
INSERT INTO `student_commodity` VALUES ('425', '24', '11', '100');
INSERT INTO `student_commodity` VALUES ('426', '25', '11', '100');
INSERT INTO `student_commodity` VALUES ('427', '26', '11', '100');
INSERT INTO `student_commodity` VALUES ('428', '27', '11', '100');
INSERT INTO `student_commodity` VALUES ('430', '28', '11', '95');
INSERT INTO `student_commodity` VALUES ('431', '29', '11', '95');
INSERT INTO `student_commodity` VALUES ('432', '30', '11', '95');
INSERT INTO `student_commodity` VALUES ('433', '31', '11', '95');
INSERT INTO `student_commodity` VALUES ('434', '32', '11', '95');
INSERT INTO `student_commodity` VALUES ('435', '33', '11', '95');
INSERT INTO `student_commodity` VALUES ('436', '34', '11', '95');
INSERT INTO `student_commodity` VALUES ('437', '35', '11', '95');
INSERT INTO `student_commodity` VALUES ('438', '36', '11', '95');
INSERT INTO `student_commodity` VALUES ('439', '37', '11', '95');
INSERT INTO `student_commodity` VALUES ('440', '38', '11', '95');
INSERT INTO `student_commodity` VALUES ('441', '39', '11', '95');
INSERT INTO `student_commodity` VALUES ('442', '40', '11', '95');
INSERT INTO `student_commodity` VALUES ('443', '41', '11', '95');
INSERT INTO `student_commodity` VALUES ('444', '42', '11', '95');
INSERT INTO `student_commodity` VALUES ('445', '43', '11', '95');
INSERT INTO `student_commodity` VALUES ('446', '44', '11', '95');
INSERT INTO `student_commodity` VALUES ('447', '45', '11', '95');
INSERT INTO `student_commodity` VALUES ('448', '46', '11', '95');
INSERT INTO `student_commodity` VALUES ('449', '47', '11', '95');
INSERT INTO `student_commodity` VALUES ('450', '8', '12', '95');

-- ----------------------------
-- Table structure for `student_homework`
-- ----------------------------
DROP TABLE IF EXISTS `student_homework`;
CREATE TABLE `student_homework` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) NOT NULL default '0',
  `H_ID` int(11) NOT NULL default '0',
  `grade` double(11,0) default NULL,
  `isDone` int(11) default '0',
  `content` text,
  `wordFilePath` varchar(255) default NULL,
  PRIMARY KEY  (`id`,`student_id`,`H_ID`),
  KEY `student_homework_student_id` (`student_id`),
  KEY `student_homework_H_ID` (`H_ID`),
  CONSTRAINT `student_homework_H_ID` FOREIGN KEY (`H_ID`) REFERENCES `homework` (`H_ID`),
  CONSTRAINT `student_homework_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_homework
-- ----------------------------
INSERT INTO `student_homework` VALUES ('4', '8', '1', '60', '1', '1234568949456', '6cbc6068-2ba2-47b4-9a99-1d2aaf8af829_第一个上传word文件.doc');
INSERT INTO `student_homework` VALUES ('5', '28', '27113208', '60', '1', '555555555555', null);
INSERT INTO `student_homework` VALUES ('6', '8', '28180338', '100', '1', 'lllll', null);

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL auto_increment,
  `userName` varchar(40) default NULL,
  `password` varchar(40) default NULL,
  `teacherName` varchar(40) default NULL,
  `age` int(11) default NULL,
  `telephone` varchar(40) default NULL,
  `gender` varchar(40) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '11111111', '11111111', '任子贤', '35', '13333333333', '男');
INSERT INTO `teacher` VALUES ('2', '22222222', '22222222', '张永泰', '38', '13365489416', '男');
INSERT INTO `teacher` VALUES ('3', '33333333', '33333333', '陈一鸣', '26', '13484901684', '男');
INSERT INTO `teacher` VALUES ('4', '44444444', '44444444', '陈琦雯', '28', '13549816015', '女');
INSERT INTO `teacher` VALUES ('5', '55555555', '55555555', '林俊彦', '32', '18518016840', '男');
INSERT INTO `teacher` VALUES ('6', '66666666', '66666666', '王浩洋', '31', '18935481054', '男');
INSERT INTO `teacher` VALUES ('7', '77777777', '77777777', '谢子建', '27', '13248610518', '女');
INSERT INTO `teacher` VALUES ('8', '88888888', '88888888', '陈静仪', '30', '18503786158', '女');
INSERT INTO `teacher` VALUES ('9', '99999999', '99999999', '袁学文', '39', '15508548345', '男');
INSERT INTO `teacher` VALUES ('10', '10101010', '10101010', '谭志仁', '28', '13506848124', '男');
INSERT INTO `teacher` VALUES ('11', 'yinyuelaoshi', 'yinyuelaoshi', '王菲', '37', '13500000000', '女');
INSERT INTO `teacher` VALUES ('12', 'meishu', '123', '灭鼠', '55', '11111111111', '女');
INSERT INTO `teacher` VALUES ('13', 'jisuanji', '123456', '计算机', '32', '12300000000', '男');

-- ----------------------------
-- Table structure for `teacher_commodity_homework`
-- ----------------------------
DROP TABLE IF EXISTS `teacher_commodity_homework`;
CREATE TABLE `teacher_commodity_homework` (
  `id` int(11) NOT NULL auto_increment,
  `H_ID` int(11) NOT NULL default '0',
  `commodity_id` int(11) NOT NULL default '0',
  `teacher_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`,`H_ID`,`commodity_id`,`teacher_id`),
  KEY `H_ID` (`H_ID`),
  KEY `commodity_homework_commodity_id` (`commodity_id`),
  KEY `commodity_homework_teacher_teacher_id` (`teacher_id`),
  CONSTRAINT `commodity_homework_commodity_id` FOREIGN KEY (`commodity_id`) REFERENCES `commodity` (`id`),
  CONSTRAINT `commodity_homework_teacher_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`),
  CONSTRAINT `H_ID` FOREIGN KEY (`H_ID`) REFERENCES `homework` (`H_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_commodity_homework
-- ----------------------------
INSERT INTO `teacher_commodity_homework` VALUES ('1', '1', '5', '3');
INSERT INTO `teacher_commodity_homework` VALUES ('2', '4', '5', '3');
INSERT INTO `teacher_commodity_homework` VALUES ('3', '23211916', '5', '3');
INSERT INTO `teacher_commodity_homework` VALUES ('4', '27113208', '9', '3');
INSERT INTO `teacher_commodity_homework` VALUES ('5', '28174747', '11', '11');
INSERT INTO `teacher_commodity_homework` VALUES ('6', '28175429', '4', '1');
INSERT INTO `teacher_commodity_homework` VALUES ('7', '28180338', '12', '12');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `userName` varchar(30) NOT NULL default '',
  `password` varchar(30) default NULL,
  `email` varchar(30) default NULL,
  `phone` varchar(30) default NULL,
  `createDate` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  `isadmin` int(11) default '0',
  PRIMARY KEY  (`id`,`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'admin', 'admin', null, null, null, '1');
