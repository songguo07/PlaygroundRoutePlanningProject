/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : playground_route_planning

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-04-20 17:52:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_name` varchar(50) NOT NULL,
  `admin_card` varchar(36) NOT NULL,
  `admin_sex` tinyint(4) NOT NULL,
  `admin_id` varchar(36) NOT NULL,
  `admin_password` varchar(32) NOT NULL,
  `admin_checkin` date NOT NULL,
  `admin_image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for `consult`
-- ----------------------------
DROP TABLE IF EXISTS `consult`;
CREATE TABLE `consult` (
  `consult_id` varchar(36) NOT NULL,
  `listen_id` varchar(36) DEFAULT NULL,
  `say_id` varchar(36) DEFAULT NULL,
  `content` text NOT NULL,
  `flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`consult_id`),
  KEY `listen_id_pk` (`listen_id`),
  KEY `say_id_pk` (`say_id`),
  CONSTRAINT `consult_ibfk_1` FOREIGN KEY (`listen_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `consult_ibfk_2` FOREIGN KEY (`say_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consult
-- ----------------------------

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `d_id` varchar(36) NOT NULL,
  `d_name` varchar(50) DEFAULT NULL,
  `d_aver_score` float DEFAULT '0',
  `d_des` text,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '船奇戏水滩', '0', null);
INSERT INTO `department` VALUES ('10', '七个小矮人矿山车', '0', null);
INSERT INTO `department` VALUES ('11', '小飞侠天空奇遇', '0', null);
INSERT INTO `department` VALUES ('12', '小熊维尼历险记', '0', null);
INSERT INTO `department` VALUES ('13', '旋转疯蜜罐', '0', null);
INSERT INTO `department` VALUES ('14', '迎宾阁', '0', null);
INSERT INTO `department` VALUES ('15', '巴斯光年星际营救', '0', null);
INSERT INTO `department` VALUES ('16', '创极速光轮-雪佛兰呈献', '0', null);
INSERT INTO `department` VALUES ('17', '创界：雪佛兰数字挑战', '0', null);
INSERT INTO `department` VALUES ('18', '喷气背包飞行器', '0', null);
INSERT INTO `department` VALUES ('19', '太空幸会史迪奇', '0', null);
INSERT INTO `department` VALUES ('2', '加勒比海盗-沉落宝藏之战', '0', null);
INSERT INTO `department` VALUES ('20', '幻想曲旋转木马', '0', null);
INSERT INTO `department` VALUES ('21', '漫威英雄总部', '0', null);
INSERT INTO `department` VALUES ('22', '米奇俱乐部', '0', null);
INSERT INTO `department` VALUES ('23', '小飞象', '0', null);
INSERT INTO `department` VALUES ('24', '翱翔-飞越地平线', '0', null);
INSERT INTO `department` VALUES ('25', '古迹探索营', '0', null);
INSERT INTO `department` VALUES ('26', '欢笑聚友会', '0', null);
INSERT INTO `department` VALUES ('27', '雷鸣山漂流', '0', null);
INSERT INTO `department` VALUES ('3', '探秘海妖复仇号', '0', null);
INSERT INTO `department` VALUES ('4', '探险家独木舟', '0', null);
INSERT INTO `department` VALUES ('5', '弹簧狗团团转', '0', null);
INSERT INTO `department` VALUES ('6', '胡迪牛仔嘉年华', '0', null);
INSERT INTO `department` VALUES ('7', '爱丽丝梦游仙境迷宫', '0', null);
INSERT INTO `department` VALUES ('8', '晶彩奇航', '0', null);
INSERT INTO `department` VALUES ('9', '漫游童话时光', '0', null);

-- ----------------------------
-- Table structure for `evaluate`
-- ----------------------------
DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE `evaluate` (
  `user_id` varchar(36) NOT NULL,
  `d_id` varchar(36) NOT NULL,
  `e_score` float NOT NULL,
  `e_evaluate` text,
  PRIMARY KEY (`user_id`,`d_id`),
  KEY `d_id_pk` (`d_id`),
  CONSTRAINT `evaluate_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `department` (`d_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `evaluate_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluate
-- ----------------------------

-- ----------------------------
-- Table structure for `hobby`
-- ----------------------------
DROP TABLE IF EXISTS `hobby`;
CREATE TABLE `hobby` (
  `user_id` varchar(36) NOT NULL,
  `d_id` varchar(36) NOT NULL,
  PRIMARY KEY (`user_id`,`d_id`),
  KEY `hobby_ibfk_1` (`d_id`),
  CONSTRAINT `hobby_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `department` (`d_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hobby_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hobby
-- ----------------------------
INSERT INTO `hobby` VALUES ('7f45b870-7de3-4e37-9153-632de9bab6b3', '1');
INSERT INTO `hobby` VALUES ('7f45b870-7de3-4e37-9153-632de9bab6b3', '2');
INSERT INTO `hobby` VALUES ('7f45b870-7de3-4e37-9153-632de9bab6b3', '3');
INSERT INTO `hobby` VALUES ('7f45b870-7de3-4e37-9153-632de9bab6b3', '4');

-- ----------------------------
-- Table structure for `service`
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service` (
  `ser_id` varchar(36) NOT NULL,
  `ser_name` varchar(50) NOT NULL,
  `ser_sex` tinyint(4) NOT NULL,
  `ser_card` varchar(36) NOT NULL,
  `ser_password` varchar(32) NOT NULL,
  `ser_checkin` date NOT NULL,
  `ser_image` varchar(50) NOT NULL,
  PRIMARY KEY (`ser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` varchar(36) NOT NULL,
  `user_telno` varchar(11) NOT NULL,
  `user_nickname` varchar(50) NOT NULL,
  `user_age` tinyint(4) DEFAULT NULL,
  `user_gender` tinyint(4) DEFAULT NULL,
  `user_password` varchar(32) NOT NULL,
  `user_image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('7f45b870-7de3-4e37-9153-632de9bab6b3', '15038306573', '李木子', null, null, 'b59c67bf196a4758191e42f76670ceba', null);
INSERT INTO `user` VALUES ('ee8b200c-e3a6-463b-af27-47fd6d23e630', '18838901098', '王三', null, null, '81dc9bdb52d04dc20036dbd8313ed055', null);
