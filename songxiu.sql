/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : songxiu

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-05-04 13:30:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `other`
-- ----------------------------
DROP TABLE IF EXISTS `other`;
CREATE TABLE `other` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `flag` int(2) NOT NULL,
  `num` int(2) NOT NULL,
  `txt` char(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of other
-- ----------------------------
INSERT INTO `other` VALUES ('1', '2', '1', '联想');
INSERT INTO `other` VALUES ('2', '2', '1', '戴尔');
INSERT INTO `other` VALUES ('3', '2', '2', 'HP惠普');
INSERT INTO `other` VALUES ('4', '2', '2', 'Epson爱普生');
INSERT INTO `other` VALUES ('5', '2', '2', 'Canon佳能');
INSERT INTO `other` VALUES ('6', '2', '3', '联想');
INSERT INTO `other` VALUES ('7', '2', '3', '戴尔');
INSERT INTO `other` VALUES ('8', '3', '1', '开不了机');
INSERT INTO `other` VALUES ('9', '3', '1', '启动很慢');
INSERT INTO `other` VALUES ('10', '3', '2', '打印错误');
INSERT INTO `other` VALUES ('11', '3', '2', '启动失败');
INSERT INTO `other` VALUES ('12', '3', '3', '开不了机');
INSERT INTO `other` VALUES ('13', '3', '3', '蓝屏');
INSERT INTO `other` VALUES ('14', '3', '3', '启动运行很慢');
INSERT INTO `other` VALUES ('15', '3', '1', '开机蓝屏');
INSERT INTO `other` VALUES ('16', '4', '1', '变电管理所');
INSERT INTO `other` VALUES ('17', '4', '2', '输电管理所');
INSERT INTO `other` VALUES ('18', '5', '1', '继电保护一班');
INSERT INTO `other` VALUES ('19', '5', '1', '继电保护二班');
INSERT INTO `other` VALUES ('20', '5', '2', '输电运维一班');
INSERT INTO `other` VALUES ('21', '5', '2', '输电运维二班');

-- ----------------------------
-- Table structure for `repair`
-- ----------------------------
DROP TABLE IF EXISTS `repair`;
CREATE TABLE `repair` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `flag` int(2) NOT NULL COMMENT '0代表待修；1代表修理中；2代表待领；3代表已领',
  `ttype` char(20) NOT NULL DEFAULT '' COMMENT '类型,如‘主机’',
  `brand` char(30) NOT NULL DEFAULT '' COMMENT '品牌型号',
  `reason` char(30) NOT NULL DEFAULT '' COMMENT '存在问题',
  `depart` char(20) NOT NULL DEFAULT '' COMMENT '部门',
  `class` char(30) NOT NULL COMMENT '班组',
  `suser` char(20) NOT NULL COMMENT '送修人',
  `tel` char(15) NOT NULL COMMENT '联系电话',
  `uuser` char(20) NOT NULL COMMENT '使用人',
  `stime` char(20) NOT NULL DEFAULT '' COMMENT '送修时间',
  `luser` char(20) DEFAULT '' COMMENT '领取人',
  `ltime` char(16) DEFAULT '' COMMENT '领取时间',
  `way` char(30) DEFAULT '' COMMENT '修理办法',
  `note` char(30) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repair
-- ----------------------------
INSERT INTO `repair` VALUES ('9', '3', '打印机', 'Epson爱普生', '启动失败', '输电管理所', '输电运维一班', '章散', '12345678900', '章程', '201805021302', 'zhan', '201805021752', '', '');
INSERT INTO `repair` VALUES ('10', '3', '主机', '戴尔', '开机蓝屏', '输电管理所', '输电运维二班', '里乌', '12345678901', '李武', '201805021900', '罗正', '201805021906', '更换硬盘', '更换内存');
INSERT INTO `repair` VALUES ('11', '3', '主机', '联想', '启动很慢', '输电管理所', '输电运维二班', '张强', '12345678900', '张蔷', '201805030832', '张三', '201805031035', '重装系统', '加内存、固态');
INSERT INTO `repair` VALUES ('12', '2', '主机', '联想', '开不了机', '输电管理所', '输电运维二班', '杨洋', '12345678900', '杨洋', '201805031139', '', '', '联网升级入网软件', '加内存、固态');
INSERT INTO `repair` VALUES ('13', '3', '打印机', 'HP惠普', '打印错误', '输电管理所', '输电运维二班', '李素', '12345678901', '李四', '201805041238', '多多', '201805041240', '就这样', '更换损坏部件');
