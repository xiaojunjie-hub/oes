/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50728
Source Host           : localhost:3306
Source Database       : db_learning

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2020-09-24 17:16:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hufu
-- ----------------------------
DROP TABLE IF EXISTS `hufu`;
CREATE TABLE `hufu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hufu
-- ----------------------------
INSERT INTO `hufu` VALUES ('5', '4', '171', '321', '2020-09-23 20:02:27');
INSERT INTO `hufu` VALUES ('6', '4', '212', '回复1', '2020-09-23 20:54:21');
INSERT INTO `hufu` VALUES ('7', '21', '208', '测试', '2020-09-23 22:53:09');
INSERT INTO `hufu` VALUES ('8', '22', '208', '测试', '2020-09-23 23:01:57');
INSERT INTO `hufu` VALUES ('9', '23', '233', '测试', '2020-09-23 23:12:27');
INSERT INTO `hufu` VALUES ('18', '4', '272', '222', '2020-09-24 09:04:29');
INSERT INTO `hufu` VALUES ('19', '4', '272', '333', '2020-09-24 09:08:29');
INSERT INTO `hufu` VALUES ('20', '4', '274', '111111111111111111', '2020-09-24 14:32:06');
INSERT INTO `hufu` VALUES ('21', '4', '274', '11111111111111', '2020-09-24 14:32:11');

-- ----------------------------
-- Table structure for kind
-- ----------------------------
DROP TABLE IF EXISTS `kind`;
CREATE TABLE `kind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kindname` varchar(255) DEFAULT NULL COMMENT '类别名称',
  `isexamine` int(11) DEFAULT NULL COMMENT '是否审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kind
-- ----------------------------
INSERT INTO `kind` VALUES ('2', 'C++', null);
INSERT INTO `kind` VALUES ('4', 'JAVA', null);
INSERT INTO `kind` VALUES ('5', 'C#', null);
INSERT INTO `kind` VALUES ('6', 'HTML', null);
INSERT INTO `kind` VALUES ('7', 'JQuery', null);
INSERT INTO `kind` VALUES ('8', 'SQL', null);
INSERT INTO `kind` VALUES ('9', '数据结构', null);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(10000) DEFAULT NULL COMMENT '内容',
  `pubtime` varchar(255) DEFAULT NULL COMMENT '发布时间',
  `uid` int(11) DEFAULT NULL COMMENT '发布人',
  `top` int(11) DEFAULT NULL COMMENT '1：话题 2：公告',
  `kindid` int(11) DEFAULT NULL COMMENT '类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('2', 'CCCCCCCCCCCCC', 'BBBBBBBBBBBBBBBBBBBBBBBBBB', '2020-09-23 16:10:43', '4', '1', '5');
INSERT INTO `news` VALUES ('3', '测试', '测试', '2020-09-23 23:12:11', '23', '2', null);
INSERT INTO `news` VALUES ('5', '最新公告', '12321321', '2020-09-23 15:26:03', '1', '2', null);
INSERT INTO `news` VALUES ('6', '测试', '其味无穷', '2020-09-23 18:25:38', '1', '2', null);
INSERT INTO `news` VALUES ('7', null, 'C#AAA', '2020-09-23 14:29:07', '4', null, '5');
INSERT INTO `news` VALUES ('8', '测试', '12', '2020-09-23 17:33:55', '26', '1', '5');
INSERT INTO `news` VALUES ('24', '未命名文件', '123', '2020-09-24 08:22:14', '1', '2', null);
INSERT INTO `news` VALUES ('25', 'sss', 'sssssssss', '2020-09-24 08:29:42', '1', '2', null);
INSERT INTO `news` VALUES ('26', 'ss', 'sssssssssss', '2020-09-24 08:30:37', '1', '2', null);
INSERT INTO `news` VALUES ('27', '图三', '33', '2020-09-24 08:58:25', '1', '2', null);

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) DEFAULT NULL COMMENT '时间',
  `uid` int(11) DEFAULT NULL COMMENT '用户',
  `nid` int(11) DEFAULT NULL COMMENT '对象',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `role` int(11) DEFAULT NULL COMMENT ' 3：评论视频 6:评论话题 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('272', '2020-09-24 09:04:20', '4', '2', '222', '6');
INSERT INTO `record` VALUES ('273', '2020-09-24 09:09:37', '4', '2', '测试', '6');
INSERT INTO `record` VALUES ('274', '2020-09-24 11:08:05', '31', '8', '66666', '6');
INSERT INTO `record` VALUES ('275', '2020-09-24 11:08:35', '31', '2', '3333', '6');
INSERT INTO `record` VALUES ('276', '2020-09-24 11:21:37', '32', '14', '111', '3');
INSERT INTO `record` VALUES ('277', '2020-09-24 14:31:12', '1', '8', '12321321', '6');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `realname` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `address` varchar(255) DEFAULT NULL COMMENT '住址',
  `role` int(11) DEFAULT NULL COMMENT '身份 1：超级管理员 2：管理员 3：用户 ',
  `headpic` varchar(255) DEFAULT NULL COMMENT '头像路劲',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', null, null, null, null, '1', null);
INSERT INTO `user` VALUES ('4', 'lisi', '123', '123', '22@w222', '李四', '321', '2', '1.jpg');
INSERT INTO `user` VALUES ('7', 'suqi', '123', '123', '22@w', '苏七', '321', '2', '2.jpg');
INSERT INTO `user` VALUES ('10', 'lilaoshi', '123', '123', '22@w', '李老师', '321', '2', '3.jpg');
INSERT INTO `user` VALUES ('11', '1', '123', '1', '22@w', '1', '321', '2', '1.jpg');
INSERT INTO `user` VALUES ('13', '3', '3', '3', '22@w', '3', '321', '2', '1.jpg');
INSERT INTO `user` VALUES ('14', '4', '4', '4', '22@w', '4', '4', '2', '1.jpg');
INSERT INTO `user` VALUES ('25', '测试', '123', '123123', '222@WE123', '测试', '123123', '2', '4.jpg');
INSERT INTO `user` VALUES ('26', '用户1', '123', '12', '12@12', '12', 'QW', '3', '5.jpg');
INSERT INTO `user` VALUES ('27', 'yonghu2', '123', '123', '12@ww', '啥的', '123', '2', '4.jpg');
INSERT INTO `user` VALUES ('28', 'yonghu3', '123', '123', '123@ww', '123', 'qwe', '3', '3.jpg');
INSERT INTO `user` VALUES ('29', 'yonghu4', '123', '123', '12@ww', '123', 'QW', '3', '2.jpg');
INSERT INTO `user` VALUES ('30', 'yonghu5', '123', '123', '123@ww', '123', 'QW', '3', '3.jpg');
INSERT INTO `user` VALUES ('31', 'test', '123', '17623368092', '1976419313@qq.com', '肖俊杰', '四川成都', '3', '02985eb05496a7dcb6f59200025ce019.jpg');
INSERT INTO `user` VALUES ('32', 'stest', '123', '17623368092', '1976419313@qq.com', '肖俊杰', '四川成都', '3', 'aeac20c68d93c034ee89c170ae6c9dd6.jpg');

-- ----------------------------
-- Table structure for void
-- ----------------------------
DROP TABLE IF EXISTS `void`;
CREATE TABLE `void` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voidname` varchar(255) DEFAULT NULL COMMENT '视频名称',
  `voidcontent` varchar(1000) DEFAULT NULL COMMENT '视屏介绍',
  `kindid` int(11) DEFAULT NULL COMMENT '视屏类别id',
  `uid` int(11) DEFAULT NULL COMMENT '发布人id',
  `teachername` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL COMMENT '发布时间',
  `viodpath` varchar(255) DEFAULT NULL COMMENT '路劲',
  `top` int(11) DEFAULT NULL,
  `role` int(11) DEFAULT NULL COMMENT '1：视频 2：资料 3：老师发布作业 4：学生t交作业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of void
-- ----------------------------
INSERT INTO `void` VALUES ('12', '第二讲', 'C#第二讲3333', '5', '4', 'lisi', '2020-09-22 22:27:01', '/upload/images/20190324102701691.ppt', '0', '2');
INSERT INTO `void` VALUES ('14', '第二讲', 'C#第二讲', '5', '7', 'suqi', '2020-09-22 23:08:00', '/upload/images/20190324110800582.mp4', '1', '1');
INSERT INTO `void` VALUES ('16', '第一讲', 'C#第一讲', '5', '4', 'lisi', '2020-09-22 23:10:57', '/upload/images/20190324111057713.ppt', '0', '2');
INSERT INTO `void` VALUES ('17', '第一讲', 'C#第一讲', '5', '4', 'lisi', '2020-09-22 23:11:30', '/upload/images/20190324111130819.mp4', '0', '1');
INSERT INTO `void` VALUES ('19', 'sss', 'sss', '7', '1', 'admin', '2020-09-22 17:51:08', '/upload/images/20200922055108911.jpg', null, '3');
INSERT INTO `void` VALUES ('20', 'vvv', 'zzz', '8', '31', 'test', '2020-09-24 08:27:35', '/upload/images/20200924082735787.jpg', null, '4');
INSERT INTO `void` VALUES ('21', 'ss', 'ssss', '7', '1', 'admin', '2020-09-24 14:29:35', '/upload/images/20200924022935908.jpg', null, '3');
