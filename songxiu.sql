/*
Navicat MySQL Data Transfer


Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-05-09 09:05:15
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

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
INSERT INTO `other` VALUES ('17', '5', '1', '管理岗');
INSERT INTO `other` VALUES ('18', '5', '1', '继电自动化一班');
INSERT INTO `other` VALUES ('19', '5', '1', '继电自动化二班');
INSERT INTO `other` VALUES ('23', '5', '1', '电气试验班');
INSERT INTO `other` VALUES ('24', '5', '1', '变电检修一班');
INSERT INTO `other` VALUES ('25', '5', '1', '变电检修二班');
INSERT INTO `other` VALUES ('26', '5', '1', '江北巡维班');
INSERT INTO `other` VALUES ('27', '5', '1', '江南巡维班');
INSERT INTO `other` VALUES ('28', '5', '1', '桂平巡维班');
INSERT INTO `other` VALUES ('29', '5', '1', '覃塘巡维班');
INSERT INTO `other` VALUES ('30', '5', '1', '平南巡维班');
INSERT INTO `other` VALUES ('31', '5', '1', '500Kv逢宜站');
INSERT INTO `other` VALUES ('32', '4', '2', '输电管理所');
INSERT INTO `other` VALUES ('33', '5', '2', '管理岗');
INSERT INTO `other` VALUES ('34', '5', '2', '输电运维一班');
INSERT INTO `other` VALUES ('35', '5', '2', '输电运维二班');
INSERT INTO `other` VALUES ('36', '5', '2', '输电运维三班');
INSERT INTO `other` VALUES ('37', '5', '2', '输电运维四班');
INSERT INTO `other` VALUES ('38', '5', '2', '输电运维五班');
INSERT INTO `other` VALUES ('39', '5', '3', '管理岗');
INSERT INTO `other` VALUES ('40', '5', '3', '主网调度班');
INSERT INTO `other` VALUES ('41', '5', '3', '配网调度班');
INSERT INTO `other` VALUES ('42', '5', '3', '设备监控班');
INSERT INTO `other` VALUES ('43', '5', '3', '通信班');
INSERT INTO `other` VALUES ('44', '5', '3', '自动化班');
INSERT INTO `other` VALUES ('45', '4', '3', '电力调度控制中心');
INSERT INTO `other` VALUES ('46', '4', '4', '供电服务中心');
INSERT INTO `other` VALUES ('47', '5', '4', '管理岗');
INSERT INTO `other` VALUES ('48', '5', '4', '电费班');
INSERT INTO `other` VALUES ('49', '5', '4', '客户服务班');
INSERT INTO `other` VALUES ('50', '5', '4', '业扩班');
INSERT INTO `other` VALUES ('51', '5', '4', '服务调度班');
INSERT INTO `other` VALUES ('52', '5', '4', '营销稽查班');
INSERT INTO `other` VALUES ('53', '4', '5', '项目管理中心');
INSERT INTO `other` VALUES ('54', '4', '6', '信息中心');
INSERT INTO `other` VALUES ('55', '4', '7', '物流服务中心');
INSERT INTO `other` VALUES ('56', '4', '8', '计量中心');
INSERT INTO `other` VALUES ('57', '4', '9', '综合服务中心');
INSERT INTO `other` VALUES ('58', '4', '10', '港北供电分局');
INSERT INTO `other` VALUES ('59', '4', '11', '港南供电分局');
INSERT INTO `other` VALUES ('60', '4', '12', '覃塘供电分局');
INSERT INTO `other` VALUES ('61', '4', '13', '办公室');
INSERT INTO `other` VALUES ('62', '4', '14', '计划发展部');
INSERT INTO `other` VALUES ('63', '4', '15', '财务部');
INSERT INTO `other` VALUES ('64', '4', '16', '生产技术部');
INSERT INTO `other` VALUES ('65', '4', '17', '安全监管部');
INSERT INTO `other` VALUES ('66', '4', '18', '市场营销部');
INSERT INTO `other` VALUES ('67', '4', '19', '建设管理部');
INSERT INTO `other` VALUES ('68', '4', '20', '审计部');
INSERT INTO `other` VALUES ('69', '4', '21', '党建人事部');
INSERT INTO `other` VALUES ('70', '4', '22', '人力资源部');
INSERT INTO `other` VALUES ('71', '4', '23', '监察部');
INSERT INTO `other` VALUES ('72', '4', '24', '工会');
INSERT INTO `other` VALUES ('73', '5', '5', '管理岗');
INSERT INTO `other` VALUES ('74', '5', '6', '管理岗');
INSERT INTO `other` VALUES ('75', '5', '6', '网络安全与数据应用班');
INSERT INTO `other` VALUES ('76', '5', '7', '管理岗');
INSERT INTO `other` VALUES ('77', '5', '7', '仓储班');
INSERT INTO `other` VALUES ('78', '5', '7', '配送班');
INSERT INTO `other` VALUES ('79', '5', '8', '管理岗');
INSERT INTO `other` VALUES ('80', '5', '8', '计量运维一班');
INSERT INTO `other` VALUES ('81', '5', '8', '计量运维二班');
INSERT INTO `other` VALUES ('82', '5', '8', '计量运维三班');
INSERT INTO `other` VALUES ('83', '5', '8', '电能量数据班');
INSERT INTO `other` VALUES ('84', '5', '8', '计量检定班');
INSERT INTO `other` VALUES ('85', '5', '9', '管理岗');
INSERT INTO `other` VALUES ('86', '5', '10', '管理岗');
INSERT INTO `other` VALUES ('87', '5', '10', '配电运维一班');
INSERT INTO `other` VALUES ('88', '5', '10', '配电运维二班');
INSERT INTO `other` VALUES ('89', '5', '10', '配电带电班');
INSERT INTO `other` VALUES ('90', '5', '10', '配电抢修班');
INSERT INTO `other` VALUES ('91', '5', '10', '荷城营业班');
INSERT INTO `other` VALUES ('92', '5', '10', '芙蓉营业班');
INSERT INTO `other` VALUES ('93', '5', '11', '管理岗');
INSERT INTO `other` VALUES ('94', '5', '11', '供电服务班');
INSERT INTO `other` VALUES ('95', '5', '11', '港城供电服务班');
INSERT INTO `other` VALUES ('96', '5', '11', '港城配电运维班');
INSERT INTO `other` VALUES ('97', '5', '11', '大圩供电服务班');
INSERT INTO `other` VALUES ('98', '5', '11', '大圩配电运维班');
INSERT INTO `other` VALUES ('99', '5', '11', '八塘供电服务班');
INSERT INTO `other` VALUES ('100', '5', '11', '新塘配电运维班');
INSERT INTO `other` VALUES ('101', '5', '11', '桥圩供电服务班');
INSERT INTO `other` VALUES ('102', '5', '11', '桥圩配电运维班');
INSERT INTO `other` VALUES ('103', '5', '12', '管理岗');
INSERT INTO `other` VALUES ('104', '5', '12', '覃塘供电服务班');
INSERT INTO `other` VALUES ('105', '5', '12', '覃塘配电运维班');
INSERT INTO `other` VALUES ('106', '5', '12', '石卡供电服务班');
INSERT INTO `other` VALUES ('107', '5', '12', '石卡配电运维班');
INSERT INTO `other` VALUES ('108', '5', '13', '管理岗');
INSERT INTO `other` VALUES ('109', '5', '14', '管理岗');
INSERT INTO `other` VALUES ('110', '5', '15', '管理岗');
INSERT INTO `other` VALUES ('111', '5', '16', '管理岗');
INSERT INTO `other` VALUES ('112', '5', '17', '管理岗');
INSERT INTO `other` VALUES ('113', '5', '18', '管理岗');
INSERT INTO `other` VALUES ('114', '5', '19', '管理岗');
INSERT INTO `other` VALUES ('115', '5', '20', '管理岗');
INSERT INTO `other` VALUES ('116', '5', '21', '管理岗');
INSERT INTO `other` VALUES ('117', '5', '22', '管理岗');
INSERT INTO `other` VALUES ('118', '5', '23', '管理岗');
INSERT INTO `other` VALUES ('119', '5', '24', '管理岗');

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
  `why` char(50) DEFAULT '' COMMENT '故障原因',
  `way` char(30) DEFAULT '' COMMENT '修理办法',
  `note` char(30) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repair
-- ----------------------------
