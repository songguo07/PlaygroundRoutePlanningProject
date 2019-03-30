/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : playground_route_planning

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-03-30 20:04:59
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
  CONSTRAINT `listen_id_pk` FOREIGN KEY (`listen_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `say_id_pk` FOREIGN KEY (`say_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE
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
  `d_name` varchar(50) NOT NULL,
  `d_aver_score` float NOT NULL DEFAULT '0',
  `d_des` text,
  `type_id` varchar(36) NOT NULL,
  PRIMARY KEY (`d_id`),
  KEY `type_id_pk` (`type_id`),
  CONSTRAINT `type_id_pk` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------

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
  CONSTRAINT `d_id_pk` FOREIGN KEY (`d_id`) REFERENCES `department` (`d_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `user_id_pk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE
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
  `type_id` varchar(36) NOT NULL,
  PRIMARY KEY (`user_id`,`type_id`),
  KEY `hobby_type_id_pk` (`type_id`),
  CONSTRAINT `hobby_type_id_pk` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hobby_user_id_pk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hobby
-- ----------------------------

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
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `type_id` varchar(36) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
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
  `user_image` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
