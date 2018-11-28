/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : graduation

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-11-28 18:55:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_account_log
-- ----------------------------
DROP TABLE IF EXISTS `auth_account_log`;
CREATE TABLE `auth_account_log` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户账户操作日志主键',
  `LOG_NAME` varchar(255) DEFAULT NULL COMMENT '日志名称(login,register,logout)',
  `USER_ID` varchar(100) DEFAULT NULL COMMENT '用户id',
  `CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `SUCCEED` tinyint(4) DEFAULT NULL COMMENT '是否执行成功(0失败1成功)',
  `MESSAGE` varchar(255) DEFAULT NULL COMMENT '具体消息',
  `IP` varchar(255) DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='登录注册登出记录';

-- ----------------------------
-- Records of auth_account_log
-- ----------------------------
INSERT INTO `auth_account_log` VALUES ('23', '用户注册日志', 'C5B03231832F41E6AD4E3975E1F08068', '2018-10-27 17:36:05', '1', '注册成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('24', '用户注册日志', '70D682A5256D4BB885EC1EEE3AD48914', '2018-10-27 18:04:06', '1', '注册成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('25', '用户注册日志', '6FEF49125DB94966A48A3C382784878A', '2018-10-27 18:14:11', '1', '注册成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('26', '用户登录日志', 'yangyi', '2018-10-27 18:36:06', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('27', '用户登录日志', 'yangyi', '2018-10-28 19:21:46', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('28', '用户登录日志', 'yangyi', '2018-10-28 19:26:32', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('29', '用户登录日志', 'yangyi', '2018-10-28 19:30:17', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('30', '用户登录日志', 'yangyi', '2018-10-29 19:39:09', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('31', '用户登录日志', 'yangyi', '2018-10-29 19:43:09', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('32', '用户登录日志', 'yangyi', '2018-10-29 19:43:37', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('33', '用户登录日志', 'yangyi', '2018-10-29 19:44:23', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('34', '用户登录日志', 'yangyi', '2018-10-29 19:46:22', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('35', '用户登录日志', 'yangyi', '2018-10-29 19:49:58', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('36', '用户登录日志', 'yangyi', '2018-10-29 19:51:56', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('37', '用户登录日志', 'yangyi', '2018-10-29 19:53:23', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('38', '用户登录日志', 'yangyi', '2018-10-29 20:42:04', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('39', '用户登录日志', 'yangyi', '2018-10-29 20:52:59', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('40', '用户登录日志', 'yangyi', '2018-10-29 21:14:12', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('41', '用户登录日志', 'yangyi', '2018-10-29 21:15:03', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('42', '用户登录日志', 'yangyi', '2018-10-29 21:47:55', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('43', '用户登录日志', 'yangyi', '2018-10-29 22:12:55', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('44', '用户登录日志', 'yangyi', '2018-10-30 11:23:05', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('45', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-10-30 18:11:57', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('46', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-10-30 18:20:26', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('47', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-10-30 18:21:40', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('48', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-10-30 21:49:28', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('49', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-10-30 22:19:57', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('50', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-10-31 14:32:16', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('51', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-10-31 14:33:07', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('52', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-10-31 15:06:41', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('53', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-10-31 15:15:33', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('54', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-10-31 15:22:22', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('55', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-10-31 15:53:47', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('56', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-10-31 15:54:03', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('57', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-10-31 19:28:10', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('58', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-10-31 19:34:53', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('59', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-10-31 19:54:00', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('60', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-01 09:45:38', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('61', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-01 09:47:20', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('62', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-01 09:51:38', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('63', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-01 10:09:37', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('64', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-01 10:12:31', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('65', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-01 18:46:56', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('66', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-01 19:06:03', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('67', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-01 19:17:14', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('68', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-01 21:13:26', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('69', '用户注册日志', '3A00E3002B204D598D1561B977E89996', '2018-11-02 10:43:54', '1', '注册成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('70', '用户登录日志', '3A00E3002B204D598D1561B977E89996', '2018-11-02 10:44:02', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('71', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-02 20:07:50', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('72', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-02 20:10:07', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('73', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-02 20:10:20', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('74', '用户注册日志', '5B88DD8480544258B425AAA085D60ECA', '2018-11-02 20:10:57', '1', '注册成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('75', '用户登录日志', '5B88DD8480544258B425AAA085D60ECA', '2018-11-02 20:11:05', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('76', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-02 20:48:19', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('77', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-05 21:47:45', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('78', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-05 22:20:14', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('79', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-06 17:19:26', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('80', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-06 17:24:19', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('81', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-06 17:24:37', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('82', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-06 19:28:25', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('83', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-06 19:36:22', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('84', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-07 21:15:25', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('85', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-08 13:08:40', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('86', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-08 15:59:05', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('87', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-08 17:00:25', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('88', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-08 17:02:29', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('89', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-09 20:36:23', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('90', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-09 22:05:26', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('91', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-11 19:51:31', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('92', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-11 19:57:39', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('93', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-13 15:48:59', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('94', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-13 17:55:02', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('95', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-13 19:27:52', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('96', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-13 20:33:53', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('97', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-13 20:34:14', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('98', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-13 21:51:10', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('99', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-14 19:04:32', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('100', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-17 13:35:23', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('101', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-17 13:41:04', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('102', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-17 19:33:40', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('103', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-17 20:18:22', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('104', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-18 19:33:06', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('105', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-18 20:01:19', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('106', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-19 21:21:35', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('107', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-20 12:50:20', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('108', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-20 18:51:05', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('109', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-20 19:31:33', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('110', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-21 12:17:01', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('111', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-21 15:05:17', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('112', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-21 15:05:18', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('113', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-21 15:13:58', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('114', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-22 16:33:56', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('115', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-27 20:18:47', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('116', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-27 20:39:45', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('117', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-28 12:53:35', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('118', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-28 13:05:00', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('119', '用户登录日志', '5B88DD8480544258B425AAA085D60ECA', '2018-11-28 13:06:00', '1', '登录成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('120', '用户登录日志', '6FEF49125DB94966A48A3C382784878A', '2018-11-28 13:43:15', '1', '登录成功', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for auth_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `auth_operation_log`;
CREATE TABLE `auth_operation_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户操作日志主键',
  `LOG_NAME` varchar(255) DEFAULT NULL COMMENT '日志名称',
  `USER_ID` varchar(100) DEFAULT NULL COMMENT '用户id',
  `API` varchar(255) DEFAULT NULL COMMENT 'api名称',
  `METHOD` varchar(255) DEFAULT NULL COMMENT '方法名称',
  `CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `SUCCEED` tinyint(4) DEFAULT NULL COMMENT '是否执行成功(0失败1成功)',
  `MESSAGE` varchar(255) DEFAULT NULL COMMENT '具体消息备注',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1640 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='操作日志';

-- ----------------------------
-- Records of auth_operation_log
-- ----------------------------
INSERT INTO `auth_operation_log` VALUES ('1', '业务操作日志', null, '/account/info/yangyi', 'GET', '2018-10-30 11:16:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('2', '业务操作日志', null, '/account/info/yangyi', 'GET', '2018-10-30 11:23:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('3', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/account/info/yangyi', 'GET', '2018-10-30 18:22:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('4', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/account/info/yangyi', 'GET', '2018-10-30 21:59:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('5', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/account/info/yangyi', 'GET', '2018-10-30 22:08:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('6', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '//set/password', 'PUT', '2018-10-30 22:10:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('7', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '//set/password', 'PUT', '2018-10-30 22:11:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('8', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '//set/password', 'PUT', '2018-10-30 22:14:58', '1', null);
INSERT INTO `auth_operation_log` VALUES ('9', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '//set/password', 'PUT', '2018-10-30 22:16:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('10', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '//set/password', 'PUT', '2018-10-30 22:18:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('11', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-10-31 15:05:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('12', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '//set/password', 'PUT', '2018-10-31 15:08:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('13', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '//set/password', 'PUT', '2018-10-31 15:08:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('14', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '//set/password', 'PUT', '2018-10-31 15:08:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('15', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '//set/password', 'PUT', '2018-10-31 15:14:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('16', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '//set/password', 'PUT', '2018-10-31 15:14:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('17', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '//set/password', 'PUT', '2018-10-31 15:14:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('18', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-10-31 15:14:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('19', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-10-31 15:14:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('20', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-10-31 15:14:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('21', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-10-31 15:14:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('22', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-10-31 15:14:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('23', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-10-31 15:23:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('24', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-10-31 15:23:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('25', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-10-31 15:23:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('26', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-10-31 15:23:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('27', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-10-31 15:26:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('28', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-10-31 15:29:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('29', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-10-31 15:29:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('30', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-10-31 15:30:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('31', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-10-31 15:32:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('32', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-10-31 15:36:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('33', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-10-31 15:40:45', '1', null);
INSERT INTO `auth_operation_log` VALUES ('34', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-10-31 15:57:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('35', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-10-31 18:35:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('36', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 09:47:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('37', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 09:51:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('38', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 09:56:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('39', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 09:59:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('40', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:01:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('41', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:05:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('42', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:06:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('43', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:08:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('44', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:10:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('45', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:10:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('46', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:10:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('47', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:10:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('48', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:10:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('49', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:10:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('50', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:10:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('51', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:10:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('52', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:10:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('53', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:10:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('54', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:10:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('55', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:10:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('56', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:13:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('57', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:22:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('58', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:33:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('59', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 10:42:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('60', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 18:47:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('61', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 19:06:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('62', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 19:07:55', '1', null);
INSERT INTO `auth_operation_log` VALUES ('63', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 19:10:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('64', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 19:12:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('65', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 19:15:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('66', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 19:16:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('67', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/set/password', 'PUT', '2018-11-01 20:22:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('68', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-01 21:13:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('69', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/info', 'GET', '2018-11-01 21:13:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('70', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-01 21:14:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('71', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-01 21:15:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('72', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-01 21:31:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('73', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-01 21:31:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('74', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-01 22:01:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('75', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-01 22:16:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('76', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-01 22:16:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('77', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-01 22:18:19', '1', null);
INSERT INTO `auth_operation_log` VALUES ('78', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-01 22:22:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('79', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 10:43:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('80', '业务操作日志', '3A00E3002B204D598D1561B977E89996', '/getAccount/username', 'GET', '2018-11-02 10:44:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('81', '业务操作日志', '3A00E3002B204D598D1561B977E89996', '/getAccount/username', 'GET', '2018-11-02 20:05:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('82', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 20:07:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('83', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 20:09:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('84', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/setAccount/password', 'PUT', '2018-11-02 20:09:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('85', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 20:10:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('86', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 20:10:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('87', '业务操作日志', '5B88DD8480544258B425AAA085D60ECA', '/getAccount/username', 'GET', '2018-11-02 20:11:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('88', '业务操作日志', '5B88DD8480544258B425AAA085D60ECA', '/getAccount/username', 'GET', '2018-11-02 20:13:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('89', '业务操作日志', '5B88DD8480544258B425AAA085D60ECA', '/getAccount/username', 'GET', '2018-11-02 20:15:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('90', '业务操作日志', '5B88DD8480544258B425AAA085D60ECA', '/getAccount/username', 'GET', '2018-11-02 20:29:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('91', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 20:48:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('92', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-02 20:49:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('93', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-02 20:52:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('94', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-02 21:00:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('95', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-02 21:01:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('96', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-02 21:08:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('97', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-02 21:09:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('98', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-02 21:12:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('99', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-02 21:13:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('100', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-02 21:20:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('101', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-02 21:22:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('102', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-02 21:23:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('103', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-02 21:24:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('104', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-02 21:27:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('105', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 21:32:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('106', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 21:33:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('107', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 21:38:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('108', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 21:43:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('109', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 21:44:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('110', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 21:51:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('111', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 21:51:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('112', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 21:54:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('113', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 21:55:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('114', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 21:57:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('115', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 21:57:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('116', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:03:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('117', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:06:44', '1', null);
INSERT INTO `auth_operation_log` VALUES ('118', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:08:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('119', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:10:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('120', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:11:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('121', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:12:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('122', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:13:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('123', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:14:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('124', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:14:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('125', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:15:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('126', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:16:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('127', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:16:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('128', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:17:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('129', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:18:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('130', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:20:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('131', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:20:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('132', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:20:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('133', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:20:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('134', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:21:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('135', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:22:19', '1', null);
INSERT INTO `auth_operation_log` VALUES ('136', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:22:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('137', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:22:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('138', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:22:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('139', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:22:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('140', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-02 22:23:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('141', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-05 21:45:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('142', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-05 21:47:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('143', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-05 21:57:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('144', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-05 21:58:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('145', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-05 21:58:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('146', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-05 22:07:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('147', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-05 22:09:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('148', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-05 22:10:54', '1', null);
INSERT INTO `auth_operation_log` VALUES ('149', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-05 22:11:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('150', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-05 22:19:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('151', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-05 22:20:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('152', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-06 17:18:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('153', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-06 17:19:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('154', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-06 17:19:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('155', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-06 17:19:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('156', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-06 17:19:55', '1', null);
INSERT INTO `auth_operation_log` VALUES ('157', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-06 17:21:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('158', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-06 17:21:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('159', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-06 17:24:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('160', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-06 17:24:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('161', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-06 17:24:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('162', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-06 17:24:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('163', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-06 17:25:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('164', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-06 17:27:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('165', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-06 17:27:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('166', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-06 17:27:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('167', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-06 17:27:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('168', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-06 17:27:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('169', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-06 17:27:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('170', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-06 17:28:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('171', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-06 17:29:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('172', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-06 17:29:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('173', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-06 17:29:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('174', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-06 17:29:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('175', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-06 17:29:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('176', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-06 17:29:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('177', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-06 17:31:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('178', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-06 17:31:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('179', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getAccount/username', 'GET', '2018-11-06 17:31:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('180', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-06 17:31:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('181', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-06 17:32:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('182', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-06 17:32:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('183', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-06 17:32:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('184', '业务操作日志', '6FEF49125DB94966A48A3C382784878A', '/getStudentInformation/all', 'GET', '2018-11-06 17:33:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('185', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 19:26:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('186', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 19:28:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('187', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 19:30:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('188', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 19:32:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('189', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-06 19:34:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('190', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 19:35:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('191', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 19:36:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('192', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-06 19:36:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('193', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-06 19:36:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('194', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 19:37:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('195', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 19:41:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('196', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 19:42:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('197', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 19:50:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('198', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 19:52:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('199', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 19:52:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('200', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 19:55:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('201', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 19:59:54', '1', null);
INSERT INTO `auth_operation_log` VALUES ('202', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 20:03:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('203', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 20:10:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('204', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 20:13:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('205', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 20:18:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('206', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 20:23:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('207', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 20:32:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('208', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 20:32:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('209', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 20:33:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('210', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-06 20:33:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('211', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 20:33:43', '1', null);
INSERT INTO `auth_operation_log` VALUES ('212', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-06 20:33:43', '1', null);
INSERT INTO `auth_operation_log` VALUES ('213', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-06 20:43:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('214', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-06 20:43:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('215', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-06 20:44:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('216', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-06 20:44:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('217', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-06 20:44:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('218', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 20:52:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('219', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 20:52:43', '1', null);
INSERT INTO `auth_operation_log` VALUES ('220', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 20:53:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('221', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 20:53:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('222', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 20:53:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('223', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 21:01:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('224', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 21:01:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('225', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 21:02:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('226', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 21:03:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('227', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 21:03:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('228', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 21:04:19', '1', null);
INSERT INTO `auth_operation_log` VALUES ('229', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 21:08:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('230', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 21:09:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('231', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 21:14:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('232', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 21:15:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('233', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 21:15:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('234', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 21:15:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('235', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 21:16:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('236', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 21:39:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('237', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 21:43:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('238', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 21:46:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('239', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 21:59:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('240', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 22:02:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('241', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 22:04:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('242', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 22:05:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('243', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 22:17:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('244', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 22:27:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('245', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 22:30:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('246', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 22:30:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('247', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 22:31:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('248', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 22:31:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('249', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 22:33:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('250', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 22:34:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('251', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 22:34:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('252', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 22:40:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('253', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 22:41:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('254', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 22:41:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('255', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 22:42:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('256', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 22:42:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('257', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 22:44:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('258', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 22:44:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('259', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 22:48:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('260', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 22:48:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('261', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 22:49:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('262', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 22:49:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('263', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 22:49:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('264', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 22:49:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('265', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 22:50:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('266', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 22:50:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('267', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-07 22:50:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('268', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-07 22:50:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('269', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 13:08:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('270', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 13:08:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('271', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:08:43', '1', null);
INSERT INTO `auth_operation_log` VALUES ('272', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:12:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('273', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 13:12:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('274', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:12:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('275', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 13:17:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('276', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:17:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('277', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 13:23:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('278', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:23:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('279', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 13:24:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('280', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:24:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('281', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:25:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('282', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 13:28:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('283', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:28:54', '1', null);
INSERT INTO `auth_operation_log` VALUES ('284', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:31:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('285', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 13:47:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('286', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:47:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('287', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:48:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('288', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:48:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('289', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:48:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('290', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:48:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('291', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 13:48:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('292', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:48:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('293', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:52:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('294', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 13:52:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('295', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:52:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('296', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 13:53:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('297', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:53:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('298', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 13:55:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('299', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:55:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('300', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 13:56:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('301', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:56:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('302', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 13:58:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('303', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:58:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('304', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 13:58:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('305', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:58:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('306', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 13:59:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('307', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 13:59:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('308', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:01:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('309', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:01:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('310', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:05:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('311', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:05:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('312', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:08:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('313', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:08:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('314', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:08:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('315', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:08:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('316', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:14:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('317', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:14:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('318', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:21:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('319', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:24:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('320', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:25:19', '1', null);
INSERT INTO `auth_operation_log` VALUES ('321', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:31:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('322', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:32:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('323', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:34:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('324', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:34:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('325', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:37:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('326', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:37:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('327', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:37:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('328', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:37:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('329', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:40:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('330', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:41:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('331', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:41:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('332', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:45:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('333', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:45:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('334', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:46:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('335', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:46:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('336', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:46:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('337', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:46:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('338', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:47:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('339', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:47:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('340', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:47:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('341', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:47:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('342', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:48:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('343', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:48:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('344', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:48:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('345', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:48:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('346', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:49:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('347', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:49:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('348', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:49:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('349', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:49:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('350', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:50:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('351', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:50:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('352', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:50:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('353', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:50:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('354', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:50:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('355', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:50:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('356', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:51:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('357', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:51:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('358', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:51:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('359', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:51:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('360', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:56:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('361', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 14:57:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('362', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 14:58:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('363', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 15:02:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('364', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 15:02:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('365', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 15:10:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('366', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 15:17:19', '1', null);
INSERT INTO `auth_operation_log` VALUES ('367', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 15:17:19', '1', null);
INSERT INTO `auth_operation_log` VALUES ('368', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 15:19:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('369', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 15:19:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('370', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 15:59:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('371', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-08 15:59:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('372', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 16:03:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('373', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 16:04:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('374', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-08 16:04:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('375', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 16:11:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('376', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 16:14:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('377', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 16:14:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('378', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 17:00:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('379', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 17:00:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('380', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 17:00:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('381', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-08 17:00:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('382', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 17:00:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('383', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-08 17:00:45', '1', null);
INSERT INTO `auth_operation_log` VALUES ('384', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-08 17:00:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('385', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-08 17:01:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('386', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-08 17:02:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('387', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-08 17:02:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('388', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-09 13:59:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('389', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-09 20:36:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('390', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-09 20:36:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('391', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-09 21:36:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('392', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-09 21:45:55', '1', null);
INSERT INTO `auth_operation_log` VALUES ('393', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-09 21:49:55', '1', null);
INSERT INTO `auth_operation_log` VALUES ('394', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-09 21:56:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('395', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-09 21:56:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('396', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-09 21:57:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('397', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-09 21:57:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('398', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-09 21:57:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('399', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-09 21:57:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('400', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-09 21:58:44', '1', null);
INSERT INTO `auth_operation_log` VALUES ('401', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-09 22:01:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('402', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-09 22:05:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('403', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-11 19:51:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('404', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-11 19:51:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('405', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-11 19:51:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('406', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-11 19:51:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('407', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-11 19:51:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('408', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-11 19:52:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('409', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-11 19:57:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('410', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-11 20:02:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('411', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-11 20:02:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('412', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-11 20:03:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('413', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-11 20:06:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('414', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-11 20:06:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('415', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-11 20:08:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('416', '业务操作日志', null, '//getDepartmentInformation/all', 'GET', '2018-11-11 21:18:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('417', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-11 21:18:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('418', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-11 21:20:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('419', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-11 21:20:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('420', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-11 21:20:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('421', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-11 21:20:54', '1', null);
INSERT INTO `auth_operation_log` VALUES ('422', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 15:48:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('423', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 15:49:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('424', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 15:49:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('425', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-13 15:49:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('426', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 16:07:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('427', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 16:10:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('428', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 16:10:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('429', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 16:10:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('430', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 16:10:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('431', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 16:10:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('432', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 16:10:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('433', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 16:10:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('434', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 16:12:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('435', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 16:15:19', '1', null);
INSERT INTO `auth_operation_log` VALUES ('436', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-13 16:15:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('437', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 16:15:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('438', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 16:19:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('439', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-13 16:19:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('440', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 16:19:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('441', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-13 16:19:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('442', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 16:22:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('443', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 16:22:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('444', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 16:23:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('445', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-13 16:23:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('446', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 16:24:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('447', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-13 16:24:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('448', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 16:25:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('449', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-13 16:25:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('450', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 16:26:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('451', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-13 16:26:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('452', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 16:31:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('453', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 16:35:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('454', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 16:37:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('455', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 16:41:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('456', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 16:41:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('457', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 16:41:43', '1', null);
INSERT INTO `auth_operation_log` VALUES ('458', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 16:41:58', '1', null);
INSERT INTO `auth_operation_log` VALUES ('459', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 16:41:58', '1', null);
INSERT INTO `auth_operation_log` VALUES ('460', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 16:44:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('461', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 16:50:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('462', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 16:50:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('463', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 16:59:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('464', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 16:59:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('465', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:03:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('466', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:03:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('467', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:04:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('468', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:04:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('469', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:05:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('470', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:05:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('471', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:05:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('472', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:06:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('473', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:06:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('474', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:07:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('475', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:07:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('476', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:10:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('477', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:22:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('478', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:22:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('479', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:22:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('480', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:23:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('481', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:24:58', '1', null);
INSERT INTO `auth_operation_log` VALUES ('482', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:26:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('483', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:26:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('484', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:27:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('485', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:27:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('486', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:28:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('487', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:28:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('488', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:28:19', '1', null);
INSERT INTO `auth_operation_log` VALUES ('489', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:28:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('490', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:28:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('491', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:28:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('492', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:32:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('493', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:32:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('494', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:38:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('495', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:38:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('496', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:38:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('497', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:39:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('498', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:39:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('499', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:39:54', '1', null);
INSERT INTO `auth_operation_log` VALUES ('500', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:39:54', '1', null);
INSERT INTO `auth_operation_log` VALUES ('501', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:39:55', '1', null);
INSERT INTO `auth_operation_log` VALUES ('502', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:40:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('503', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:40:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('504', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:40:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('505', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:40:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('506', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:42:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('507', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:42:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('508', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:42:43', '1', null);
INSERT INTO `auth_operation_log` VALUES ('509', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:43:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('510', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:43:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('511', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:46:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('512', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:46:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('513', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:49:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('514', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-13 17:50:19', '1', null);
INSERT INTO `auth_operation_log` VALUES ('515', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:50:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('516', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:50:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('517', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:50:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('518', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:51:44', '1', null);
INSERT INTO `auth_operation_log` VALUES ('519', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:51:44', '1', null);
INSERT INTO `auth_operation_log` VALUES ('520', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:51:45', '1', null);
INSERT INTO `auth_operation_log` VALUES ('521', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:54:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('522', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:54:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('523', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:54:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('524', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:55:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('525', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:56:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('526', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:56:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('527', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:56:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('528', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:56:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('529', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:56:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('530', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 17:58:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('531', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 17:58:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('532', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 17:58:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('533', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 19:07:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('534', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-13 19:07:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('535', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:07:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('536', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 19:08:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('537', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:08:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('538', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 19:09:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('539', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:09:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('540', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 19:10:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('541', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:10:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('542', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 19:10:58', '1', null);
INSERT INTO `auth_operation_log` VALUES ('543', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:10:58', '1', null);
INSERT INTO `auth_operation_log` VALUES ('544', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:11:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('545', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 19:12:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('546', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:12:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('547', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:12:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('548', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 19:13:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('549', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:13:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('550', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:13:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('551', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 19:15:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('552', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:15:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('553', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:15:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('554', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 19:17:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('555', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:17:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('556', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:17:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('557', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:18:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('558', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:18:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('559', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:18:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('560', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 19:18:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('561', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:19:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('562', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:19:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('563', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 19:20:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('564', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:20:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('565', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:20:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('566', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 19:23:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('567', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:23:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('568', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:23:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('569', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:23:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('570', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:23:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('571', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:26:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('572', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:26:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('573', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 19:26:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('574', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:26:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('575', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:26:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('576', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 19:27:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('577', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:28:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('578', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:28:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('579', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 19:29:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('580', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:29:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('581', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:29:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('582', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:29:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('583', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 19:38:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('584', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:38:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('585', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:38:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('586', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:38:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('587', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 19:40:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('588', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:40:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('589', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:40:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('590', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:40:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('591', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 19:43:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('592', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 19:43:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('593', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:43:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('594', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 19:57:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('595', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 19:57:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('596', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:07:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('597', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 20:07:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('598', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:15:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('599', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 20:15:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('600', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:15:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('601', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 20:15:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('602', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:20:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('603', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 20:20:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('604', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:31:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('605', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 20:31:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('606', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:32:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('607', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 20:32:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('608', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:33:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('609', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 20:33:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('610', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:33:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('611', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 20:33:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('612', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:33:54', '1', null);
INSERT INTO `auth_operation_log` VALUES ('613', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:34:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('614', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:34:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('615', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 20:34:19', '1', null);
INSERT INTO `auth_operation_log` VALUES ('616', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 20:37:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('617', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:37:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('618', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:42:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('619', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 20:42:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('620', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-13 20:42:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('621', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:42:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('622', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-13 20:42:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('623', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:45:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('624', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-13 20:45:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('625', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 20:45:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('626', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:46:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('627', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 20:46:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('628', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:47:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('629', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 20:47:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('630', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:49:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('631', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 20:49:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('632', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 20:53:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('633', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:53:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('634', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 20:56:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('635', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 20:56:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('636', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 21:05:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('637', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 21:05:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('638', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 21:07:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('639', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 21:07:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('640', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 21:09:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('641', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 21:09:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('642', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 21:25:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('643', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 21:25:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('644', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 21:26:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('645', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 21:26:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('646', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 21:28:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('647', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 21:28:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('648', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 21:31:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('649', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 21:31:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('650', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 21:32:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('651', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 21:32:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('652', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 21:35:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('653', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 21:50:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('654', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 21:50:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('655', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 21:51:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('656', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 21:51:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('657', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 21:51:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('658', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 21:53:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('659', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 21:53:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('660', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 21:53:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('661', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 21:53:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('662', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 21:54:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('663', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 21:54:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('664', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 21:54:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('665', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 21:55:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('666', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 21:55:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('667', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 21:56:45', '1', null);
INSERT INTO `auth_operation_log` VALUES ('668', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 21:57:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('669', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 21:59:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('670', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 22:00:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('671', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 22:00:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('672', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:01:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('673', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:01:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('674', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 22:01:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('675', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:01:44', '1', null);
INSERT INTO `auth_operation_log` VALUES ('676', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:01:44', '1', null);
INSERT INTO `auth_operation_log` VALUES ('677', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 22:01:45', '1', null);
INSERT INTO `auth_operation_log` VALUES ('678', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:03:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('679', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:03:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('680', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:15:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('681', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:15:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('682', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:16:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('683', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:16:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('684', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:16:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('685', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:16:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('686', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:18:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('687', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:18:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('688', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:19:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('689', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:19:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('690', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:20:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('691', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:20:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('692', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:20:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('693', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:20:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('694', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:20:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('695', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:20:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('696', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:21:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('697', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:21:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('698', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:21:55', '1', null);
INSERT INTO `auth_operation_log` VALUES ('699', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:21:55', '1', null);
INSERT INTO `auth_operation_log` VALUES ('700', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:22:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('701', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:22:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('702', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:22:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('703', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:22:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('704', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 22:23:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('705', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 22:23:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('706', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 22:24:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('707', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:25:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('708', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:25:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('709', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:26:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('710', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:26:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('711', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 22:27:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('712', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 22:28:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('713', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 22:28:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('714', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:29:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('715', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:29:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('716', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:34:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('717', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:34:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('718', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 22:34:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('719', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:39:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('720', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:39:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('721', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 22:39:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('722', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:42:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('723', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:42:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('724', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:44:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('725', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:44:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('726', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:44:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('727', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:44:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('728', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 22:44:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('729', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:47:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('730', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:47:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('731', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 22:47:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('732', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 22:48:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('733', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 22:48:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('734', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-13 22:48:19', '1', null);
INSERT INTO `auth_operation_log` VALUES ('735', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-13 22:48:19', '1', null);
INSERT INTO `auth_operation_log` VALUES ('736', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-13 22:48:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('737', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 19:04:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('738', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 19:04:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('739', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 19:04:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('740', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 19:10:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('741', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 19:10:45', '1', null);
INSERT INTO `auth_operation_log` VALUES ('742', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 19:10:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('743', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 19:13:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('744', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 19:13:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('745', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 19:13:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('746', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 19:18:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('747', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 19:18:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('748', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 19:18:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('749', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 19:19:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('750', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 19:19:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('751', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 19:19:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('752', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 19:19:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('753', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 19:34:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('754', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 19:34:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('755', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 19:34:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('756', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-14 19:34:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('757', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 19:34:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('758', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 19:36:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('759', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 19:36:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('760', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 19:36:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('761', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 19:41:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('762', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 19:41:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('763', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 19:41:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('764', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 20:08:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('765', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 20:08:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('766', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 20:08:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('767', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 20:23:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('768', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 20:24:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('769', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 20:24:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('770', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 20:24:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('771', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 20:25:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('772', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 20:25:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('773', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 20:25:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('774', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 20:25:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('775', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 20:25:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('776', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 20:26:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('777', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 20:26:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('778', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 20:26:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('779', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 20:28:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('780', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 20:28:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('781', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 20:28:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('782', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 20:29:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('783', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 20:30:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('784', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 20:35:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('785', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 20:35:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('786', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 20:35:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('787', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 20:37:44', '1', null);
INSERT INTO `auth_operation_log` VALUES ('788', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 20:37:44', '1', null);
INSERT INTO `auth_operation_log` VALUES ('789', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 20:37:44', '1', null);
INSERT INTO `auth_operation_log` VALUES ('790', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 20:38:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('791', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 20:38:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('792', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 20:38:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('793', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 20:39:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('794', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 20:39:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('795', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 20:39:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('796', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 20:39:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('797', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 20:39:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('798', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 20:39:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('799', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 20:39:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('800', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 20:51:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('801', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 20:59:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('802', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 20:59:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('803', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 20:59:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('804', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 20:59:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('805', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 21:09:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('806', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 21:09:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('807', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 21:09:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('808', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 21:09:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('809', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 21:09:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('810', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 21:12:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('811', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 21:12:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('812', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 21:12:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('813', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-14 21:16:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('814', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-14 21:16:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('815', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 21:51:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('816', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 21:51:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('817', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 21:52:44', '1', null);
INSERT INTO `auth_operation_log` VALUES ('818', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 21:53:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('819', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 21:54:58', '1', null);
INSERT INTO `auth_operation_log` VALUES ('820', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 21:58:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('821', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 22:02:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('822', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 22:02:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('823', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 22:02:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('824', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 22:02:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('825', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 22:02:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('826', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-14 22:02:44', '1', null);
INSERT INTO `auth_operation_log` VALUES ('827', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 22:04:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('828', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 22:04:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('829', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 22:04:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('830', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 22:04:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('831', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 22:04:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('832', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 22:07:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('833', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 22:08:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('834', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-14 22:08:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('835', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 22:08:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('836', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 22:08:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('837', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-14 22:08:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('838', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 13:35:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('839', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-17 13:35:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('840', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-17 13:35:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('841', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-17 13:39:44', '1', null);
INSERT INTO `auth_operation_log` VALUES ('842', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 13:39:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('843', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-17 13:39:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('844', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 13:41:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('845', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-17 13:42:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('846', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 13:54:43', '1', null);
INSERT INTO `auth_operation_log` VALUES ('847', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-17 13:54:43', '1', null);
INSERT INTO `auth_operation_log` VALUES ('848', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 13:58:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('849', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-17 13:58:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('850', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 15:57:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('851', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-17 15:57:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('852', '业务操作日志', null, '/getStudentInformation/all', 'GET', '2018-11-17 15:57:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('853', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 15:58:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('854', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 16:00:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('855', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 16:06:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('856', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 16:08:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('857', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 16:19:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('858', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 16:23:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('859', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-17 16:24:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('860', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-17 16:24:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('861', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 16:30:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('862', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-17 16:30:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('863', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 16:37:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('864', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-17 16:37:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('865', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 16:37:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('866', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-17 16:37:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('867', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 16:41:43', '1', null);
INSERT INTO `auth_operation_log` VALUES ('868', '业务操作日志', null, '/getDepartmentInformation/all', 'GET', '2018-11-17 16:41:43', '1', null);
INSERT INTO `auth_operation_log` VALUES ('869', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 17:20:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('870', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 17:21:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('871', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:21:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('872', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 17:21:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('873', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:21:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('874', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:22:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('875', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 17:22:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('876', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 17:23:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('877', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:23:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('878', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 17:24:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('879', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:24:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('880', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 17:24:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('881', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:24:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('882', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 17:26:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('883', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:26:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('884', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 17:41:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('885', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:41:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('886', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 17:42:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('887', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:42:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('888', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 17:43:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('889', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:43:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('890', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:49:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('891', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:49:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('892', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:50:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('893', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:50:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('894', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:50:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('895', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:50:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('896', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:50:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('897', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:50:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('898', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:50:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('899', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:50:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('900', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:50:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('901', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:51:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('902', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:51:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('903', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:51:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('904', '业务操作日志', null, '/departmentInformation/post', 'POST', '2018-11-17 17:52:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('905', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 17:52:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('906', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:52:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('907', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 17:59:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('908', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:59:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('909', '业务操作日志', null, '/departmentInformation/post', 'POST', '2018-11-17 17:59:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('910', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 17:59:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('911', '业务操作日志', null, '/departmentInformation/post', 'POST', '2018-11-17 17:59:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('912', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 18:02:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('913', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 18:02:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('914', '业务操作日志', null, '/departmentInformation/post', 'POST', '2018-11-17 18:02:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('915', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 19:33:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('916', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:33:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('917', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 19:33:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('918', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:33:45', '1', null);
INSERT INTO `auth_operation_log` VALUES ('919', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 19:34:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('920', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:34:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('921', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:34:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('922', '业务操作日志', null, '/departmentInformation/post', 'POST', '2018-11-17 19:34:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('923', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 19:34:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('924', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:34:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('925', '业务操作日志', null, '/departmentInformation/post', 'POST', '2018-11-17 19:34:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('926', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:34:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('927', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 19:35:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('928', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:35:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('929', '业务操作日志', null, '/departmentInformation/post', 'POST', '2018-11-17 19:35:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('930', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:35:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('931', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 19:35:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('932', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:35:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('933', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 19:35:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('934', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:35:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('935', '业务操作日志', null, '/departmentInformation/post', 'POST', '2018-11-17 19:35:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('936', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 19:36:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('937', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:36:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('938', '业务操作日志', null, '/departmentInformation/post', 'POST', '2018-11-17 19:36:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('939', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 19:37:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('940', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:37:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('941', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 19:38:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('942', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:38:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('943', '业务操作日志', null, '/departmentInformation/post', 'POST', '2018-11-17 19:38:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('944', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:38:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('945', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 19:38:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('946', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:38:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('947', '业务操作日志', null, '/departmentInformation/post', 'POST', '2018-11-17 19:39:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('948', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:39:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('949', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 19:40:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('950', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:40:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('951', '业务操作日志', null, '/departmentInformation/post', 'POST', '2018-11-17 19:40:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('952', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:40:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('953', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 19:40:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('954', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:40:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('955', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 19:47:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('956', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:47:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('957', '业务操作日志', null, '/departmentInformation/post', 'POST', '2018-11-17 19:47:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('958', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:47:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('959', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 19:50:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('960', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:50:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('961', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:50:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('962', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 19:57:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('963', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:57:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('964', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 19:58:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('965', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 19:58:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('966', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:01:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('967', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:01:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('968', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:02:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('969', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:02:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('970', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:03:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('971', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:03:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('972', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:04:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('973', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:04:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('974', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:08:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('975', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:08:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('976', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:08:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('977', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:11:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('978', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:11:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('979', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:12:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('980', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:12:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('981', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:12:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('982', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:13:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('983', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:13:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('984', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:13:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('985', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:14:58', '1', null);
INSERT INTO `auth_operation_log` VALUES ('986', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:14:58', '1', null);
INSERT INTO `auth_operation_log` VALUES ('987', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:15:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('988', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:17:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('989', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:17:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('990', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:17:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('991', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:18:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('992', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:20:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('993', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:20:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('994', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:20:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('995', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:21:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('996', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:21:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('997', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:21:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('998', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:24:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('999', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:24:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1000', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:25:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1001', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:25:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1002', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:25:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1003', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:25:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1004', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:28:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1005', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:28:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1006', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:28:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1007', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:30:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1008', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:30:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1009', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:31:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1010', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:31:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1011', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:31:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1012', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:37:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1013', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:37:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1014', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:37:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1015', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:39:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1016', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:39:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1017', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:39:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1018', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-17 20:39:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1019', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-17 20:41:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1020', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:41:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1021', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:43:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1022', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:44:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1023', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:44:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1024', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:46:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1025', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:46:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1026', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:46:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1027', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:46:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1028', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:50:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1029', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:50:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1030', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:50:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1031', '业务操作日志', null, '/departmentInformation/post', 'POST', '2018-11-17 20:50:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1032', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:50:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1033', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 20:50:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1034', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:50:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1035', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 20:50:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1036', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 21:03:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1037', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 21:03:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1038', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 21:05:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1039', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 21:05:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1040', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 21:05:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1041', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 21:05:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1042', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 21:05:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1043', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 21:05:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1044', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 21:05:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1045', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 21:05:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1046', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 21:07:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1047', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 21:13:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1048', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 21:13:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1049', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 21:13:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1050', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 21:33:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1051', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 21:33:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1052', '业务操作日志', null, '/departmentInformation/deleteLots', 'DELETE', '2018-11-17 21:34:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1053', '业务操作日志', null, '/departmentInformation/deleteLots', 'DELETE', '2018-11-17 21:38:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1054', '业务操作日志', null, '/departmentInformation/deleteLots', 'DELETE', '2018-11-17 21:57:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1055', '业务操作日志', null, '/departmentInformation/deleteLots', 'POST', '2018-11-17 22:01:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1056', '业务操作日志', null, '/departmentInformation/deleteLots', 'DELETE', '2018-11-17 22:09:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1057', '业务操作日志', null, '/departmentInformation/deleteLots', 'DELETE', '2018-11-17 22:11:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1058', '业务操作日志', null, '/departmentInformation/deleteLots', 'DELETE', '2018-11-17 22:13:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1059', '业务操作日志', null, '/departmentInformation/deleteLots', 'DELETE', '2018-11-17 22:15:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1060', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 22:20:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1061', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-17 22:20:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1062', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-17 22:21:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1063', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 19:32:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1064', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 19:33:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1065', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:33:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1066', '业务操作日志', null, '/setAccount/password', 'PUT', '2018-11-18 19:33:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1067', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-18 19:33:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1068', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:33:45', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1069', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-18 19:33:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1070', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-18 19:34:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1071', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 19:36:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1072', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-18 19:38:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1073', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:38:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1074', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-18 19:38:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1075', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 19:40:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1076', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 19:41:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1077', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1078', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1079', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1080', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1081', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1082', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1083', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1084', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1085', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1086', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1087', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1088', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1089', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1090', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1091', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1092', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1093', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1094', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1095', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1096', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1097', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1098', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:41:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1099', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 19:43:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1100', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-18 19:43:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1101', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 20:01:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1102', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 20:01:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1103', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-18 20:01:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1104', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 20:15:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1105', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 20:15:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1106', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-18 20:15:58', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1107', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 20:25:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1108', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 20:25:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1109', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 20:26:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1110', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 20:26:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1111', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 20:28:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1112', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 20:28:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1113', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 20:29:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1114', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 20:29:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1115', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 20:32:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1116', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 20:32:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1117', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 20:46:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1118', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 20:46:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1119', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 20:52:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1120', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 20:52:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1121', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-18 20:52:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1122', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-18 20:57:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1123', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:01:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1124', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:01:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1125', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:13:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1126', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:13:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1127', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:13:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1128', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:13:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1129', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:13:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1130', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:13:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1131', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:14:44', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1132', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:14:44', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1133', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:15:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1134', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:15:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1135', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:16:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1136', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:16:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1137', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:16:55', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1138', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:16:55', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1139', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:17:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1140', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:17:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1141', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-18 21:17:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1142', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:19:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1143', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:19:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1144', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-18 21:19:45', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1145', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:20:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1146', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:20:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1147', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:33:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1148', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:33:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1149', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:34:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1150', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:34:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1151', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-18 21:34:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1152', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:35:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1153', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:35:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1154', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-18 21:35:43', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1155', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:41:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1156', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:41:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1157', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:43:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1158', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:43:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1159', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:51:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1160', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:51:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1161', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:54:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1162', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:54:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1163', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:54:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1164', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:54:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1165', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:54:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1166', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:54:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1167', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 21:56:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1168', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 21:56:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1169', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 22:05:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1170', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 22:05:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1171', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 22:06:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1172', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 22:06:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1173', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 22:06:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1174', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 22:06:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1175', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 22:10:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1176', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 22:10:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1177', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 22:10:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1178', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 22:10:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1179', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-18 22:17:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1180', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 22:31:54', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1181', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 22:31:54', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1182', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-18 22:32:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1183', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-18 22:32:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1184', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-18 22:32:58', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1185', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 21:21:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1186', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 21:21:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1187', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 21:21:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1188', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 21:21:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1189', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:21:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1190', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:29:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1191', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:29:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1192', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:30:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1193', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:30:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1194', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:32:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1195', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-19 21:32:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1196', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:32:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1197', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 21:32:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1198', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 21:32:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1199', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:32:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1200', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:33:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1201', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 21:40:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1202', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 21:40:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1203', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-19 21:41:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1204', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-19 21:43:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1205', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-19 21:45:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1206', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:45:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1207', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:45:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1208', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:48:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1209', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:49:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1210', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 21:50:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1211', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:50:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1212', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-19 21:50:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1213', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:50:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1214', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-19 21:50:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1215', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:51:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1216', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:51:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1217', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 21:51:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1218', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 21:51:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1219', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:51:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1220', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:51:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1221', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:51:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1222', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-19 21:54:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1223', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 21:56:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1224', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 21:56:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1225', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 21:56:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1226', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-19 22:03:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1227', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 22:03:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1228', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-19 22:04:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1229', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 22:04:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1230', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-19 22:04:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1231', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:08:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1232', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:08:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1233', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:08:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1234', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:08:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1235', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:09:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1236', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:09:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1237', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:15:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1238', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:15:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1239', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:16:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1240', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:16:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1241', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:16:58', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1242', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:16:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1243', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:18:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1244', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:18:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1245', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:21:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1246', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:21:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1247', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:30:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1248', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:30:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1249', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:30:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1250', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:30:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1251', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:32:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1252', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:32:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1253', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:32:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1254', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:32:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1255', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:34:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1256', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:34:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1257', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:39:55', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1258', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:39:55', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1259', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:40:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1260', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:40:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1261', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:40:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1262', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:40:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1263', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:41:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1264', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:41:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1265', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:42:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1266', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:42:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1267', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:43:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1268', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:43:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1269', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:43:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1270', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:43:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1271', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:44:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1272', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:44:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1273', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:47:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1274', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:47:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1275', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:47:54', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1276', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:47:54', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1277', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:49:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1278', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:49:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1279', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:49:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1280', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:49:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1281', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:51:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1282', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:51:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1283', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:52:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1284', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:52:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1285', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:53:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1286', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:53:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1287', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:54:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1288', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:54:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1289', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-19 22:55:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1290', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-19 22:55:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1291', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 12:49:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1292', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 12:50:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1293', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 12:50:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1294', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-20 12:50:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1295', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 12:50:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1296', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 12:51:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1297', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 12:51:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1298', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 12:51:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1299', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 12:51:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1300', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 13:42:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1301', '业务操作日志', null, '/getAccount/info', 'GET', '2018-11-20 13:42:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1302', '业务操作日志', null, '/getAccount/info', 'GET', '2018-11-20 13:42:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1303', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 13:43:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1304', '业务操作日志', null, '/getAccount/info', 'GET', '2018-11-20 13:43:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1305', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 13:45:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1306', '业务操作日志', null, '/getAccount/info', 'GET', '2018-11-20 13:45:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1307', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 13:45:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1308', '业务操作日志', null, '/getAccount/info', 'GET', '2018-11-20 13:45:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1309', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:46:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1310', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 13:46:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1311', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:46:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1312', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 13:46:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1313', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:46:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1314', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:48:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1315', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:48:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1316', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:48:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1317', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-20 13:50:19', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1318', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-20 13:50:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1319', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-20 13:50:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1320', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 13:54:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1321', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:54:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1322', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:54:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1323', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:54:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1324', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 13:55:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1325', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:55:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1326', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 13:56:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1327', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:56:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1328', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:56:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1329', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:56:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1330', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:56:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1331', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:56:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1332', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:56:58', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1333', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 13:57:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1334', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:57:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1335', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:57:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1336', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 13:58:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1337', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:58:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1338', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 13:58:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1339', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 13:58:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1340', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:02:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1341', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:02:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1342', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:02:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1343', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:02:54', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1344', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:03:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1345', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:03:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1346', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:03:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1347', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:03:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1348', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:03:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1349', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:03:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1350', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:03:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1351', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:03:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1352', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:04:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1353', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:04:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1354', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:04:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1355', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:04:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1356', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:04:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1357', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:04:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1358', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:04:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1359', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:07:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1360', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:07:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1361', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:11:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1362', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:11:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1363', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:12:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1364', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:12:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1365', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:14:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1366', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:14:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1367', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:15:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1368', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:15:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1369', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:16:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1370', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:16:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1371', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:21:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1372', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:21:16', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1373', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:27:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1374', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:27:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1375', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:27:58', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1376', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:27:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1377', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:28:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1378', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:28:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1379', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:31:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1380', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:31:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1381', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:34:45', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1382', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:34:45', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1383', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:35:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1384', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:35:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1385', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:47:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1386', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:47:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1387', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:48:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1388', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:48:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1389', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:49:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1390', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:49:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1391', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:49:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1392', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:49:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1393', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:50:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1394', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:50:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1395', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-20 14:50:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1396', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:53:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1397', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:53:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1398', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 14:56:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1399', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 14:56:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1400', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 15:04:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1401', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 15:04:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1402', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 15:05:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1403', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 15:06:19', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1404', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 15:06:43', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1405', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 15:06:43', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1406', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 15:11:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1407', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 15:11:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1408', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 15:12:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1409', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 15:12:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1410', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 15:13:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1411', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 15:13:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1412', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 15:13:55', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1413', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 15:13:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1414', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-20 15:14:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1415', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-20 15:14:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1416', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-20 15:14:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1417', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 15:15:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1418', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 15:15:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1419', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-20 15:15:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1420', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-20 15:15:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1421', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-20 15:15:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1422', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-20 15:16:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1423', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-20 15:17:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1424', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 15:18:54', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1425', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 15:18:54', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1426', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-20 15:18:58', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1427', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-20 15:21:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1428', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-20 15:21:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1429', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-20 15:21:45', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1430', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-20 15:21:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1431', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-20 15:21:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1432', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-20 15:22:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1433', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-20 15:22:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1434', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-20 15:22:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1435', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-20 15:22:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1436', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-20 15:22:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1437', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-20 18:50:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1438', '业务操作日志', null, '/getAccount/info', 'GET', '2018-11-20 18:50:54', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1439', '业务操作日志', null, '/getAccount/username', 'GET', '2018-11-20 18:51:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1440', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-20 18:51:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1441', '业务操作日志', null, '/getAccount/info', 'GET', '2018-11-20 18:51:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1442', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-20 19:41:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1443', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-20 19:41:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1444', '业务操作日志', null, '/accountInfo/getInfo', 'GET', '2018-11-20 19:41:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1445', '业务操作日志', null, '/accountInfo/setInfo', 'PUT', '2018-11-20 19:42:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1446', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-20 19:42:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1447', '业务操作日志', null, '/accountInfo/getInfo', 'GET', '2018-11-20 19:42:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1448', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-20 19:42:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1449', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 19:42:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1450', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 22:37:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1451', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-20 22:37:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1452', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-20 22:38:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1453', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-20 22:38:35', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1454', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-20 22:38:42', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1455', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-20 22:38:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1456', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-20 22:39:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1457', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-20 22:39:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1458', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-20 22:39:28', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1459', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-20 22:39:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1460', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-21 12:16:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1461', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-21 12:17:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1462', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 12:17:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1463', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 12:17:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1464', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 12:18:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1465', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-21 12:54:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1466', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 12:54:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1467', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 12:54:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1468', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-21 13:38:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1469', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 13:38:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1470', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 13:38:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1471', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 13:38:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1472', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 13:38:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1473', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 14:17:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1474', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-21 14:17:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1475', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 14:18:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1476', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 14:18:07', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1477', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 14:18:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1478', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 14:18:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1479', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 14:19:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1480', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 14:21:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1481', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 14:22:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1482', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 14:23:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1483', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 14:26:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1484', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-21 14:26:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1485', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 14:26:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1486', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 14:28:44', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1487', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 14:28:54', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1488', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 14:30:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1489', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-21 14:33:45', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1490', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 14:33:45', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1491', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 14:33:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1492', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 14:33:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1493', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 14:34:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1494', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 14:34:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1495', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 14:35:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1496', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 14:35:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1497', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 14:35:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1498', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 14:35:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1499', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 14:35:32', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1500', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 14:35:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1501', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 14:36:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1502', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 14:36:19', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1503', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 14:36:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1504', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 14:37:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1505', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 14:39:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1506', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 14:41:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1507', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 14:41:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1508', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 14:41:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1509', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-21 14:42:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1510', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 14:42:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1511', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 14:42:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1512', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 14:42:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1513', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 14:42:45', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1514', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-21 14:42:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1515', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 14:42:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1516', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 14:42:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1517', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-21 14:42:58', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1518', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 14:42:58', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1519', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-21 14:42:58', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1520', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 14:42:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1521', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 14:42:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1522', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 14:43:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1523', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 14:43:09', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1524', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-21 14:58:04', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1525', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 14:58:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1526', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 14:58:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1527', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 14:58:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1528', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 14:58:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1529', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 14:58:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1530', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-21 14:58:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1531', '业务操作日志', null, '/accountInfo/getInfo', 'GET', '2018-11-21 14:58:43', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1532', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 15:01:46', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1533', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-21 15:01:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1534', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 15:01:49', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1535', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 15:01:54', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1536', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 15:01:55', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1537', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 15:01:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1538', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 15:01:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1539', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 15:02:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1540', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 15:02:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1541', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 15:02:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1542', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 15:02:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1543', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 15:02:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1544', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-21 15:05:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1545', '业务操作日志', null, '/accountInfo/getInfo', 'GET', '2018-11-21 15:05:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1546', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-21 15:05:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1547', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 15:05:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1548', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-21 15:05:38', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1549', '业务操作日志', null, '/accountInfo/getInfo', 'GET', '2018-11-21 15:05:40', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1550', '业务操作日志', null, '/accountInfo/getInfo', 'GET', '2018-11-21 15:05:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1551', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 15:05:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1552', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-21 15:06:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1553', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-21 15:06:19', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1554', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 15:06:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1555', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 15:06:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1556', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 15:10:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1557', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 15:13:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1558', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-21 15:13:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1559', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-21 15:13:59', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1560', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 15:15:19', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1561', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 15:15:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1562', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 15:19:27', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1563', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 15:21:24', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1564', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 15:21:30', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1565', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-21 15:21:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1566', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-21 15:21:44', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1567', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-21 15:21:44', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1568', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-21 15:21:45', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1569', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-22 16:33:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1570', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-22 16:33:57', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1571', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-22 16:34:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1572', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-22 16:34:08', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1573', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-22 16:34:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1574', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-22 16:35:43', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1575', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-22 16:35:45', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1576', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-22 16:35:50', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1577', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-26 20:09:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1578', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-27 20:18:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1579', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-27 20:18:54', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1580', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-27 20:19:00', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1581', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-27 20:39:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1582', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-27 21:41:48', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1583', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-27 21:41:51', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1584', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-27 21:41:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1585', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-27 21:42:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1586', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-27 21:42:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1587', '业务操作日志', null, '/accountInfo/getInfo', 'GET', '2018-11-27 21:42:14', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1588', '业务操作日志', null, '/accountInfo/setInfo', 'PUT', '2018-11-27 21:42:20', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1589', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-27 21:42:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1590', '业务操作日志', null, '/accountInfo/getInfo', 'GET', '2018-11-27 21:42:23', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1591', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-27 21:42:36', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1592', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-28 12:53:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1593', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-28 12:53:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1594', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-28 13:03:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1595', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-28 13:03:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1596', '业务操作日志', null, '/accountInfo/getInfo', 'GET', '2018-11-28 13:03:53', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1597', '业务操作日志', null, '/accountInfo/getInfo', 'GET', '2018-11-28 13:03:56', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1598', '业务操作日志', null, '/accountInfo/setInfo', 'PUT', '2018-11-28 13:04:13', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1599', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-28 13:04:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1600', '业务操作日志', null, '/accountInfo/getInfo', 'GET', '2018-11-28 13:04:17', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1601', '业务操作日志', null, '/accountInfo/setInfo', 'PUT', '2018-11-28 13:04:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1602', '业务操作日志', null, '/accountInfo/getInfo', 'GET', '2018-11-28 13:04:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1603', '业务操作日志', null, '/accountInfo/setInfo', 'PUT', '2018-11-28 13:04:39', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1604', '业务操作日志', null, '/accountInfo/setInfo', 'PUT', '2018-11-28 13:04:43', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1605', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-28 13:05:01', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1606', '业务操作日志', null, '/accountInfo/getInfo', 'GET', '2018-11-28 13:05:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1607', '业务操作日志', null, '/accountInfo/setInfo', 'PUT', '2018-11-28 13:05:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1608', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-28 13:05:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1609', '业务操作日志', null, '/accountInfo/getInfo', 'GET', '2018-11-28 13:05:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1610', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-28 13:05:18', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1611', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-28 13:05:21', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1612', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-28 13:06:02', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1613', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-28 13:06:03', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1614', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-28 13:06:05', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1615', '业务操作日志', null, '/accountInfo/getInfo', 'GET', '2018-11-28 13:06:06', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1616', '业务操作日志', null, '/accountInfo/getInfo', 'GET', '2018-11-28 13:06:10', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1617', '业务操作日志', null, '/accountInfo/setInfo', 'PUT', '2018-11-28 13:06:15', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1618', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-28 13:06:22', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1619', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-28 13:06:25', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1620', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-28 13:06:29', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1621', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-28 13:06:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1622', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-28 13:06:34', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1623', '业务操作日志', null, '/student/photo/upload', 'POST', '2018-11-28 13:06:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1624', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-28 13:06:47', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1625', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-28 13:06:52', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1626', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-28 13:06:55', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1627', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-28 13:23:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1628', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-28 13:23:31', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1629', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-28 13:23:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1630', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-28 13:31:11', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1631', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-28 13:31:26', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1632', '业务操作日志', null, '/departmentInformation/get', 'GET', '2018-11-28 13:31:33', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1633', '业务操作日志', null, '/accountInfo/getInfo', 'GET', '2018-11-28 13:31:37', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1634', '业务操作日志', null, '/accountInfo/setInfo', 'PUT', '2018-11-28 13:31:41', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1635', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-28 13:31:43', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1636', '业务操作日志', null, '/accountInfo/getInfo', 'GET', '2018-11-28 13:31:43', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1637', '业务操作日志', null, '/getStudentInformation/condition', 'GET', '2018-11-28 13:39:44', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1638', '业务操作日志', null, '/student/photo/get', 'GET', '2018-11-28 13:42:12', '1', null);
INSERT INTO `auth_operation_log` VALUES ('1639', '业务操作日志', null, '/accountInfo/getUsername', 'GET', '2018-11-28 13:43:16', '1', null);

-- ----------------------------
-- Table structure for auth_resource
-- ----------------------------
DROP TABLE IF EXISTS `auth_resource`;
CREATE TABLE `auth_resource` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '资源ID',
  `CODE` varchar(30) DEFAULT NULL COMMENT '资源名称',
  `NAME` varchar(30) DEFAULT NULL COMMENT '资源描述',
  `PARENT_ID` int(11) DEFAULT NULL COMMENT '父资源编码->菜单',
  `URI` varchar(100) DEFAULT NULL COMMENT '访问地址URL',
  `TYPE` smallint(4) DEFAULT NULL COMMENT '类型 1:菜单menu 2:资源element(rest-api) 3:资源分类',
  `METHOD` varchar(10) DEFAULT NULL COMMENT '访问方式 GET POST PUT DELETE PATCH',
  `ICON` varchar(100) DEFAULT NULL COMMENT '图标',
  `STATUS` smallint(4) DEFAULT '1' COMMENT '状态   1:正常、9：禁用',
  `CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20205 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='资源信息表(菜单,资源)';

-- ----------------------------
-- Records of auth_resource
-- ----------------------------
INSERT INTO `auth_resource` VALUES ('101', 'ACCOUNT_LOGIN', '用户登录', '103', '/account/login', '2', 'POST', null, '1', null, null);
INSERT INTO `auth_resource` VALUES ('103', 'GROUP_ACCOUNT', '账户系列', '110', '', '3', 'POST', null, '1', null, null);
INSERT INTO `auth_resource` VALUES ('104', 'USER_MAGE', '用户管理', '-1', '', '1', 'POST', 'fa fa-user', '1', null, null);
INSERT INTO `auth_resource` VALUES ('106', 'RESOURCE_MAGE', '资源配置', '-1', '', '1', 'POST', 'fa fa-pie-chart', '1', null, null);
INSERT INTO `auth_resource` VALUES ('107', 'MENU_MANAGE', '菜单管理', '106', '/index/menu', '1', 'POST', 'fa fa-th', '1', null, null);
INSERT INTO `auth_resource` VALUES ('109', 'API_MANAGE', 'API管理', '106', '/index/api', '1', null, 'fa fa-share', '1', '2018-04-07 09:40:24', '2018-04-07 09:40:24');
INSERT INTO `auth_resource` VALUES ('110', 'CATEGORY_GROUP', '分类集合(API类别请放入此集合)', '-1', null, '3', null, null, '1', '2018-04-07 14:27:58', '2018-04-07 14:27:58');
INSERT INTO `auth_resource` VALUES ('112', 'ACCOUNT_REGISTER', '用户注册', '103', '/account/register', '2', 'POST', null, '1', '2018-04-07 16:21:45', '2018-04-07 16:21:45');
INSERT INTO `auth_resource` VALUES ('115', 'GROUP_USER', '用户系列', '110', '', '3', 'GET', null, '1', '2018-04-07 16:31:01', '2018-04-07 16:31:01');
INSERT INTO `auth_resource` VALUES ('117', 'ROLE_MANAGE', '角色管理', '106', '/index/role', '1', null, 'fa fa-adjust', '1', '2018-04-08 05:36:31', '2018-04-08 05:36:31');
INSERT INTO `auth_resource` VALUES ('118', 'GROUP_RESOURCE', '资源系列', '110', null, '3', null, null, '1', '2018-04-09 02:29:14', '2018-04-09 02:29:14');
INSERT INTO `auth_resource` VALUES ('119', 'USER_ROLE_APPID', '获取对应用户角色', '115', '/user/role/*', '2', 'GET', null, '1', '2018-04-12 03:07:22', '2018-04-12 03:07:22');
INSERT INTO `auth_resource` VALUES ('120', 'USER_LIST', '获取用户列表', '115', '/user/list', '2', 'GET', null, '1', '2018-04-12 03:08:30', '2018-04-12 03:08:30');
INSERT INTO `auth_resource` VALUES ('121', 'USER_AUTHORITY_ROLE', '给用户授权添加角色', '115', '/user/authority/role', '2', 'POST', null, '1', '2018-04-12 03:15:56', '2018-04-12 03:15:56');
INSERT INTO `auth_resource` VALUES ('122', 'USER_AUTHORITY_ROLE', '删除已经授权的用户角色', '115', '/user/authority/role', '2', 'DELETE', null, '1', '2018-04-12 03:29:03', '2018-04-12 03:29:03');
INSERT INTO `auth_resource` VALUES ('123', 'RESOURCE_AUTORITYMENU', '获取用户被授权菜单', '118', '/resource/authorityMenu', '2', 'GET', null, '1', '2018-04-12 05:30:03', '2018-04-12 05:30:03');
INSERT INTO `auth_resource` VALUES ('124', 'RESOURCE_MENUS', '获取全部菜单列', '118', '/resource/menus', '2', 'GET', null, '1', '2018-04-12 05:42:46', '2018-04-12 05:42:46');
INSERT INTO `auth_resource` VALUES ('125', 'RESOURCE_MENU', '增加菜单', '118', '/resource/menu', '2', 'POST', null, '1', '2018-04-12 06:15:39', '2018-04-12 06:15:39');
INSERT INTO `auth_resource` VALUES ('126', 'RESOURCE_MENU', '修改菜单', '118', '/resource/menu', '2', 'PUT', null, '1', '2018-04-12 06:16:35', '2018-04-12 06:16:35');
INSERT INTO `auth_resource` VALUES ('127', 'RESOURCE_MENU', '删除菜单', '118', '/resource/menu', '2', 'DELETE', null, '1', '2018-04-12 06:17:18', '2018-04-12 06:17:18');
INSERT INTO `auth_resource` VALUES ('128', 'RESOURCE_API', '获取API list', '118', '/resource/api/*/*/*', '2', 'GET', null, '1', '2018-04-12 06:18:02', '2018-04-12 06:18:02');
INSERT INTO `auth_resource` VALUES ('129', 'RESOURCE_API', '增加API', '118', '/resource/api', '2', 'POST', null, '1', '2018-04-12 06:18:42', '2018-04-12 06:18:42');
INSERT INTO `auth_resource` VALUES ('130', 'RESOURCE_API', '修改API', '118', '/resource/api', '2', 'PUT', null, '1', '2018-04-12 06:19:32', '2018-04-12 06:19:32');
INSERT INTO `auth_resource` VALUES ('131', 'RESOURCE_API', '删除API', '118', '/resource/api', '2', 'DELETE', null, '1', '2018-04-12 06:20:03', '2018-04-12 06:20:03');
INSERT INTO `auth_resource` VALUES ('132', 'GROUP_ROLE', '角色系列', '110', null, '3', null, null, '1', '2018-04-12 06:22:02', '2018-04-12 06:22:02');
INSERT INTO `auth_resource` VALUES ('133', 'ROLE_USER', '获取角色关联用户列表', '132', '/role/user/*/*/*', '2', 'GET', null, '1', '2018-04-12 06:22:59', '2018-04-12 06:22:59');
INSERT INTO `auth_resource` VALUES ('134', 'ROLE_USER', '获取角色未关联用户列表', '132', '/role/user/-/*/*/*', '2', 'GET', null, '1', '2018-04-12 06:24:09', '2018-04-12 06:24:09');
INSERT INTO `auth_resource` VALUES ('135', 'ROLE_API', '获取角色关联API资源', '132', '/role/api/*/*/*', '2', 'GET', null, '1', '2018-04-12 06:25:32', '2018-04-12 06:25:32');
INSERT INTO `auth_resource` VALUES ('136', 'ROLE_API', '获取角色未关联API资源', '132', '/role/api/-/*/*/*', '2', 'GET', null, '1', '2018-04-12 06:26:12', '2018-04-12 06:26:12');
INSERT INTO `auth_resource` VALUES ('137', 'ROLE_MENU', '获取角色关联菜单资源', '132', '/role/menu/*/*/*', '2', 'GET', null, '1', '2018-04-12 06:27:20', '2018-04-12 06:27:20');
INSERT INTO `auth_resource` VALUES ('138', 'ROLE_MENU', '获取角色未关联菜单资源', '132', '/role/menu/-/*/*/*', '2', 'GET', null, '1', '2018-04-12 06:27:56', '2018-04-12 06:27:56');
INSERT INTO `auth_resource` VALUES ('139', 'ROLE_AUTHORITY_RESOURCE', '授权资源给角色', '132', '/role/authority/resource', '2', 'POST', null, '1', '2018-04-12 06:29:45', '2018-04-12 06:29:45');
INSERT INTO `auth_resource` VALUES ('140', 'ROLE_AUTHORITY_RESOURCE', '删除角色的授权资源', '132', '/role/authority/resource', '2', 'DELETE', null, '1', '2018-04-12 06:31:12', '2018-04-12 06:31:12');
INSERT INTO `auth_resource` VALUES ('141', 'ROLE', '获取角色LIST', '132', '/role/*/*', '2', 'GET', null, '1', '2018-04-12 06:32:34', '2018-04-12 06:32:34');
INSERT INTO `auth_resource` VALUES ('142', 'ROLE', '添加角色', '132', '/role', '2', 'POST', null, '1', '2018-04-12 06:33:25', '2018-04-12 06:33:25');
INSERT INTO `auth_resource` VALUES ('143', 'USER', '更新角色', '132', '/role', '2', 'PUT', null, '1', '2018-04-12 06:34:27', '2018-04-12 06:34:27');
INSERT INTO `auth_resource` VALUES ('144', 'ROLE', '删除角色', '132', '/role', '2', 'DELETE', null, '1', '2018-04-12 06:35:15', '2018-04-12 06:35:15');
INSERT INTO `auth_resource` VALUES ('145', 'LOG_WATCH', '日志记录', '104', '/index/log', '1', null, 'fa fa-rss-square', '1', '2018-04-22 08:12:24', '2018-04-22 08:12:24');
INSERT INTO `auth_resource` VALUES ('146', 'ACCOUNT_SET_PASSWORD', '用户修改密码', '103', '/setAccount/password', '2', 'PUT', null, '1', '2018-10-30 21:10:29', '2018-10-30 21:10:29');
INSERT INTO `auth_resource` VALUES ('147', 'ACCOUNT_GET_USERNAME', '用户获取用户名', '103', '/getAccount/username', '2', 'GET', null, '1', '2018-11-01 20:44:29', '2018-11-01 20:44:29');
INSERT INTO `auth_resource` VALUES ('148', 'ACCOUNT_GET_INFO', '用户获取用户信息', '103', '/getAccount/info', '2', 'GET', null, '1', '2018-11-01 20:44:29', '2018-11-01 20:44:29');
INSERT INTO `auth_resource` VALUES ('149', 'GET_STUDENT_INFO', '获取学生信息', '103', '/getStudentInformation/all', '2', 'GET', null, '1', '2018-11-02 20:43:27', '2018-11-02 20:43:27');
INSERT INTO `auth_resource` VALUES ('151', 'STUDENT_PHOTO', '学生图片信息', '103', '/student/photo/upload', '2', 'POST', null, '1', '2018-11-09 19:20:58', '2018-11-09 19:20:58');
INSERT INTO `auth_resource` VALUES ('152', 'STUDENT_PHOTO', '学生图片信息', '103', '/student/photo/delete', '2', 'DELETE', null, '1', '2018-11-09 19:20:58', '2018-11-09 19:20:58');
INSERT INTO `auth_resource` VALUES ('153', 'STUDENT_PHOTO', '学生图片信息', '103', '/student/photo/get', '2', 'GET', null, '1', '2018-11-09 19:20:58', '2018-11-09 19:20:58');
INSERT INTO `auth_resource` VALUES ('154', 'GET_STUDENT_INFO', '获取部分学生信息', '103', '/getStudentInformation/condition', '2', 'GET', null, '1', '2018-11-15 21:52:32', '2018-11-15 21:52:32');
INSERT INTO `auth_resource` VALUES ('201', 'DEPARTMENT', '部门', '-1', null, '1', null, null, '1', '2018-11-17 17:06:20', '2018-11-17 17:06:20');
INSERT INTO `auth_resource` VALUES ('202', 'ACCOUNT_INFO', '账户信息', '-1', null, '1', null, null, '1', '2018-11-20 19:10:31', '2018-11-20 19:10:31');
INSERT INTO `auth_resource` VALUES ('20101', 'DEPARTMENT_INFORMATION_POST', '增加部门信息', '201', '/departmentInformation/post', '2', 'POST', null, '1', '2018-11-17 17:03:52', '2018-11-17 17:03:52');
INSERT INTO `auth_resource` VALUES ('20102', 'DEPARTMENT_INFORMATION_DELETE', '删除部门信息', '201', '/departmentInformation/delete', '2', 'POST', null, '1', '2018-11-17 17:03:52', '2018-11-17 17:03:52');
INSERT INTO `auth_resource` VALUES ('20103', 'GET_DEPARTMENT_INFO', '获取部门信息', '201', '/departmentInformation/get', '2', 'GET', null, '1', '2018-11-08 15:50:46', '2018-11-08 15:50:46');
INSERT INTO `auth_resource` VALUES ('20104', 'DEPARTMENT_INFORMATION_PUT', '更新部门信息', '201', '/departmentInformation/put', '2', 'POST', null, '1', '2018-11-17 17:03:52', '2018-11-17 17:03:52');
INSERT INTO `auth_resource` VALUES ('20105', 'DEPARTMENT_INFO_DELETE_LOTS', '删除多个部门信息', '201', '/departmentInformation/deleteLots', '2', 'POST', null, '1', '2018-11-17 21:31:59', '2018-11-17 21:31:59');
INSERT INTO `auth_resource` VALUES ('20201', 'ACCOUNT_SET_PASSWORD', '账户修改密码', '202', '/accountInfo/setPassword', '2', 'PUT', null, '1', '2018-11-20 19:17:12', '2018-11-20 19:17:12');
INSERT INTO `auth_resource` VALUES ('20202', 'ACCOUNT_GET_USERNAME', '获取账户名', '202', '/accountInfo/getUsername', '2', 'GET', null, '1', '2018-11-20 19:17:12', '2018-11-20 19:17:12');
INSERT INTO `auth_resource` VALUES ('20203', 'ACCOUNT_GET_INFO', '获取账户信息', '202', '/accountInfo/getInfo', '2', 'GET', null, '1', '2018-11-20 19:17:12', '2018-11-20 19:17:12');
INSERT INTO `auth_resource` VALUES ('20204', 'ACCOUNT_SET_INFO', '设置账户信息', '202', '/accountInfo/setInfo', '2', 'PUT', null, '1', '2018-11-20 19:17:12', '2018-11-20 19:17:12');

-- ----------------------------
-- Table structure for auth_role
-- ----------------------------
DROP TABLE IF EXISTS `auth_role`;
CREATE TABLE `auth_role` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `CODE` varchar(30) NOT NULL COMMENT '角色编码',
  `NAME` varchar(30) DEFAULT NULL COMMENT '角色名称',
  `STATUS` smallint(4) DEFAULT '1' COMMENT '状态   1:正常、9：禁用',
  `CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色信息表';

-- ----------------------------
-- Records of auth_role
-- ----------------------------
INSERT INTO `auth_role` VALUES ('100', 'role_admin', '管理员角色', '1', null, null);
INSERT INTO `auth_role` VALUES ('101', 'role_college', '学院管理员', '1', '2018-11-02 20:20:16', '2018-11-02 20:20:16');
INSERT INTO `auth_role` VALUES ('102', 'role_user', '用户角色', '1', null, null);
INSERT INTO `auth_role` VALUES ('103', 'role_department', '部门管理员', '1', '2018-11-08 17:07:35', '2018-11-08 17:07:35');

-- ----------------------------
-- Table structure for auth_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `auth_role_resource`;
CREATE TABLE `auth_role_resource` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `ROLE_ID` int(11) NOT NULL COMMENT '角色ID',
  `RESOURCE_ID` int(11) NOT NULL COMMENT '资源ID',
  `CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `ROLE_ID` (`ROLE_ID`,`RESOURCE_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='资源角色关联表';

-- ----------------------------
-- Records of auth_role_resource
-- ----------------------------
INSERT INTO `auth_role_resource` VALUES ('10', '103', '105', '2018-04-01 12:50:19', '2018-04-01 12:50:19');
INSERT INTO `auth_role_resource` VALUES ('21', '102', '102', '2018-04-09 21:09:09', '2018-04-09 21:09:09');
INSERT INTO `auth_role_resource` VALUES ('23', '103', '101', '2018-04-09 21:51:39', '2018-04-09 21:51:39');
INSERT INTO `auth_role_resource` VALUES ('24', '103', '102', '2018-04-09 21:51:43', '2018-04-09 21:51:43');
INSERT INTO `auth_role_resource` VALUES ('25', '103', '103', '2018-04-09 21:51:46', '2018-04-09 21:51:46');
INSERT INTO `auth_role_resource` VALUES ('26', '103', '112', '2018-04-09 21:51:49', '2018-04-09 21:51:49');
INSERT INTO `auth_role_resource` VALUES ('27', '101', '112', '2018-04-09 22:21:02', '2018-04-09 22:21:02');
INSERT INTO `auth_role_resource` VALUES ('28', '101', '103', '2018-04-09 22:21:06', '2018-04-09 22:21:06');
INSERT INTO `auth_role_resource` VALUES ('29', '100', '102', '2018-04-09 22:25:09', '2018-04-09 22:25:09');
INSERT INTO `auth_role_resource` VALUES ('30', '101', '101', '2018-04-09 22:39:28', '2018-04-09 22:39:28');
INSERT INTO `auth_role_resource` VALUES ('31', '103', '100', '2018-04-09 22:45:00', '2018-04-09 22:45:00');
INSERT INTO `auth_role_resource` VALUES ('32', '103', '104', '2018-04-09 22:46:26', '2018-04-09 22:46:26');
INSERT INTO `auth_role_resource` VALUES ('33', '103', '106', '2018-04-09 22:46:28', '2018-04-09 22:46:28');
INSERT INTO `auth_role_resource` VALUES ('34', '103', '107', '2018-04-09 22:46:31', '2018-04-09 22:46:31');
INSERT INTO `auth_role_resource` VALUES ('35', '103', '109', '2018-04-09 22:46:34', '2018-04-09 22:46:34');
INSERT INTO `auth_role_resource` VALUES ('36', '103', '116', '2018-04-09 22:46:37', '2018-04-09 22:46:37');
INSERT INTO `auth_role_resource` VALUES ('37', '103', '117', '2018-04-09 22:46:43', '2018-04-09 22:46:43');
INSERT INTO `auth_role_resource` VALUES ('38', '104', '101', '2018-04-09 22:49:46', '2018-04-09 22:49:46');
INSERT INTO `auth_role_resource` VALUES ('39', '104', '102', '2018-04-09 22:49:52', '2018-04-09 22:49:52');
INSERT INTO `auth_role_resource` VALUES ('40', '104', '103', '2018-04-09 22:49:55', '2018-04-09 22:49:55');
INSERT INTO `auth_role_resource` VALUES ('41', '100', '103', '2018-04-09 22:51:56', '2018-04-09 22:51:56');
INSERT INTO `auth_role_resource` VALUES ('42', '102', '101', '2018-04-11 09:35:37', '2018-04-11 09:35:37');
INSERT INTO `auth_role_resource` VALUES ('43', '103', '123', '2018-04-20 09:08:52', '2018-04-20 09:08:52');
INSERT INTO `auth_role_resource` VALUES ('44', '103', '119', '2018-04-20 09:23:51', '2018-04-20 09:23:51');
INSERT INTO `auth_role_resource` VALUES ('45', '103', '129', '2018-04-20 09:24:21', '2018-04-20 09:24:21');
INSERT INTO `auth_role_resource` VALUES ('46', '103', '128', '2018-04-20 09:25:58', '2018-04-20 09:25:58');
INSERT INTO `auth_role_resource` VALUES ('47', '102', '104', '2018-04-20 23:26:00', '2018-04-20 23:26:00');
INSERT INTO `auth_role_resource` VALUES ('48', '102', '107', '2018-04-20 23:26:04', '2018-04-20 23:26:04');
INSERT INTO `auth_role_resource` VALUES ('49', '102', '117', '2018-04-20 23:26:07', '2018-04-20 23:26:07');
INSERT INTO `auth_role_resource` VALUES ('50', '102', '109', '2018-04-20 23:26:10', '2018-04-20 23:26:10');
INSERT INTO `auth_role_resource` VALUES ('51', '102', '106', '2018-04-20 23:26:13', '2018-04-20 23:26:13');
INSERT INTO `auth_role_resource` VALUES ('52', '102', '123', '2018-04-21 00:24:38', '2018-04-21 00:24:38');
INSERT INTO `auth_role_resource` VALUES ('53', '104', '112', '2018-04-21 09:03:24', '2018-04-21 09:03:24');
INSERT INTO `auth_role_resource` VALUES ('54', '102', '128', '2018-04-21 09:27:08', '2018-04-21 09:27:08');
INSERT INTO `auth_role_resource` VALUES ('58', '102', '134', '2018-04-22 13:24:55', '2018-04-22 13:24:55');
INSERT INTO `auth_role_resource` VALUES ('59', '102', '135', '2018-04-22 13:25:00', '2018-04-22 13:25:00');
INSERT INTO `auth_role_resource` VALUES ('60', '102', '145', '2018-04-22 17:23:30', '2018-04-22 17:23:30');
INSERT INTO `auth_role_resource` VALUES ('83', '100', '124', '2018-04-25 16:05:11', '2018-04-25 16:05:11');
INSERT INTO `auth_role_resource` VALUES ('84', '103', '122', '2018-05-03 23:00:19', '2018-05-03 23:00:19');
INSERT INTO `auth_role_resource` VALUES ('85', '100', '120', '2018-05-03 23:02:14', '2018-05-03 23:02:14');
INSERT INTO `auth_role_resource` VALUES ('86', '100', '104', '2018-05-09 10:10:06', '2018-05-09 10:10:06');
INSERT INTO `auth_role_resource` VALUES ('87', '100', '107', '2018-05-09 10:10:13', '2018-05-09 10:10:13');
INSERT INTO `auth_role_resource` VALUES ('88', '102', '112', '2018-05-09 10:10:40', '2018-05-09 10:10:40');
INSERT INTO `auth_role_resource` VALUES ('89', '102', '119', '2018-05-09 10:10:45', '2018-05-09 10:10:45');
INSERT INTO `auth_role_resource` VALUES ('90', '102', '120', '2018-05-09 10:10:50', '2018-05-09 10:10:50');
INSERT INTO `auth_role_resource` VALUES ('91', '102', '121', '2018-05-09 10:10:55', '2018-05-09 10:10:55');
INSERT INTO `auth_role_resource` VALUES ('92', '102', '122', '2018-05-09 10:11:00', '2018-05-09 10:11:00');
INSERT INTO `auth_role_resource` VALUES ('93', '102', '124', '2018-05-09 10:11:05', '2018-05-09 10:11:05');
INSERT INTO `auth_role_resource` VALUES ('94', '102', '125', '2018-05-09 10:11:10', '2018-05-09 10:11:10');
INSERT INTO `auth_role_resource` VALUES ('95', '102', '126', '2018-05-09 10:11:15', '2018-05-09 10:11:15');
INSERT INTO `auth_role_resource` VALUES ('96', '102', '127', '2018-05-09 10:11:19', '2018-05-09 10:11:19');
INSERT INTO `auth_role_resource` VALUES ('97', '102', '129', '2018-05-09 10:11:24', '2018-05-09 10:11:24');
INSERT INTO `auth_role_resource` VALUES ('98', '102', '130', '2018-05-09 10:11:29', '2018-05-09 10:11:29');
INSERT INTO `auth_role_resource` VALUES ('99', '102', '131', '2018-05-09 10:11:34', '2018-05-09 10:11:34');
INSERT INTO `auth_role_resource` VALUES ('100', '102', '133', '2018-05-09 10:11:39', '2018-05-09 10:11:39');
INSERT INTO `auth_role_resource` VALUES ('101', '102', '136', '2018-05-09 10:11:44', '2018-05-09 10:11:44');
INSERT INTO `auth_role_resource` VALUES ('102', '102', '137', '2018-05-09 10:11:49', '2018-05-09 10:11:49');
INSERT INTO `auth_role_resource` VALUES ('103', '102', '138', '2018-05-09 10:11:54', '2018-05-09 10:11:54');
INSERT INTO `auth_role_resource` VALUES ('104', '102', '139', '2018-05-09 10:11:59', '2018-05-09 10:11:59');
INSERT INTO `auth_role_resource` VALUES ('105', '102', '140', '2018-05-09 10:12:04', '2018-05-09 10:12:04');
INSERT INTO `auth_role_resource` VALUES ('106', '102', '141', '2018-05-09 10:12:08', '2018-05-09 10:12:08');
INSERT INTO `auth_role_resource` VALUES ('107', '102', '142', '2018-05-09 10:12:13', '2018-05-09 10:12:13');
INSERT INTO `auth_role_resource` VALUES ('108', '102', '143', '2018-05-09 10:12:17', '2018-05-09 10:12:17');
INSERT INTO `auth_role_resource` VALUES ('109', '102', '144', '2018-05-09 10:12:21', '2018-05-09 10:12:21');
INSERT INTO `auth_role_resource` VALUES ('110', '103', '146', '2018-10-30 21:57:42', '2018-10-30 21:57:42');
INSERT INTO `auth_role_resource` VALUES ('111', '102', '146', '2018-10-30 21:57:42', '2018-10-30 21:57:42');
INSERT INTO `auth_role_resource` VALUES ('112', '101', '146', '2018-10-30 21:57:42', '2018-10-30 21:57:42');
INSERT INTO `auth_role_resource` VALUES ('113', '103', '147', '2018-11-01 20:47:40', '2018-11-01 20:47:40');
INSERT INTO `auth_role_resource` VALUES ('114', '103', '148', '2018-11-01 20:47:40', '2018-11-01 20:47:40');
INSERT INTO `auth_role_resource` VALUES ('115', '100', '146', '2018-11-02 20:26:56', '2018-11-02 20:26:56');
INSERT INTO `auth_role_resource` VALUES ('116', '100', '147', '2018-11-02 20:26:56', '2018-11-02 20:26:56');
INSERT INTO `auth_role_resource` VALUES ('117', '100', '148', '2018-11-02 20:26:56', '2018-11-02 20:26:56');
INSERT INTO `auth_role_resource` VALUES ('118', '100', '149', '2018-11-02 20:44:10', '2018-11-02 20:44:10');
INSERT INTO `auth_role_resource` VALUES ('119', '100', '150', '2018-11-08 15:51:47', '2018-11-08 15:51:47');
INSERT INTO `auth_role_resource` VALUES ('120', '100', '151', '2018-11-11 21:20:21', '2018-11-11 21:20:21');
INSERT INTO `auth_role_resource` VALUES ('121', '100', '152', '2018-11-11 21:20:21', '2018-11-11 21:20:21');
INSERT INTO `auth_role_resource` VALUES ('122', '100', '153', '2018-11-11 21:20:21', '2018-11-11 21:20:21');
INSERT INTO `auth_role_resource` VALUES ('123', '100', '154', '2018-11-15 21:53:00', '2018-11-15 21:53:00');
INSERT INTO `auth_role_resource` VALUES ('124', '100', '20101', '2018-11-17 17:08:43', '2018-11-17 17:08:43');
INSERT INTO `auth_role_resource` VALUES ('125', '100', '20102', '2018-11-17 17:08:43', '2018-11-17 17:08:43');
INSERT INTO `auth_role_resource` VALUES ('126', '100', '20103', '2018-11-17 17:08:43', '2018-11-17 17:08:43');
INSERT INTO `auth_role_resource` VALUES ('127', '100', '20104', '2018-11-17 17:08:44', '2018-11-17 17:08:44');
INSERT INTO `auth_role_resource` VALUES ('128', '100', '20105', '2018-11-17 21:32:27', '2018-11-17 21:32:27');
INSERT INTO `auth_role_resource` VALUES ('129', '100', '20201', '2018-11-20 19:18:16', '2018-11-20 19:18:16');
INSERT INTO `auth_role_resource` VALUES ('130', '100', '20202', '2018-11-20 19:18:16', '2018-11-20 19:18:16');
INSERT INTO `auth_role_resource` VALUES ('131', '100', '20203', '2018-11-20 19:18:16', '2018-11-20 19:18:16');
INSERT INTO `auth_role_resource` VALUES ('132', '100', '20204', '2018-11-20 19:18:16', '2018-11-20 19:18:16');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `uid` varchar(100) NOT NULL COMMENT 'uid,用户账号,主键',
  `username` varchar(30) NOT NULL COMMENT '用户名(nick_name)',
  `password` varchar(50) NOT NULL COMMENT '密码(MD5(密码+盐))',
  `salt` varchar(20) DEFAULT NULL COMMENT '盐',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话号码(唯一)',
  `email` varchar(50) DEFAULT NULL COMMENT '邮件地址(唯一)',
  `status` tinyint(4) DEFAULT NULL COMMENT '账户状态(1.正常 2.锁定 3.删除 4.非法)',
  `CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `CREATE_WHERE` tinyint(4) DEFAULT NULL COMMENT '创建来源(1.web 2.android 3.ios 4.win 5.macos 6.ubuntu)',
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE KEY `auth_user_username_uindex` (`username`),
  UNIQUE KEY `phone` (`phone`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('3A00E3002B204D598D1561B977E89996', 'yige', 'B46A36A5A86262BA7BB2113518512A73', 'e9k512', '15877777777', null, '1', '2018-11-02 10:43:54', '2018-11-02 10:43:53', null);
INSERT INTO `auth_user` VALUES ('5B88DD8480544258B425AAA085D60ECA', 'wocao', '0E50F8A568E3440B5FD1B28BAB34A3AE', 'bvkukt', '14777786548', '1111@qq.com', '1', '2018-11-02 20:10:57', '2018-11-02 20:10:57', null);
INSERT INTO `auth_user` VALUES ('70D682A5256D4BB885EC1EEE3AD48914', 'ADMIN', '09172E59649D196F4E6F67D7370D4FF8', 'rur8kr', '15855555546', null, '1', '2018-10-27 18:04:06', '2018-10-27 18:04:05', null);
INSERT INTO `auth_user` VALUES ('C5B03231832F41E6AD4E3975E1F08068', 'root', 'C7724EB93D6D9404CAC7484AFEB02047', 'cum0kp', '15800000000', null, '1', '2018-10-27 17:36:05', '2018-10-27 17:36:04', null);

-- ----------------------------
-- Table structure for auth_user_role
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_role`;
CREATE TABLE `auth_user_role` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户角色关联表主键',
  `USER_ID` varchar(100) NOT NULL COMMENT '用户UID',
  `ROLE_ID` int(11) NOT NULL COMMENT '角色ID',
  `CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `USER_ID` (`USER_ID`,`ROLE_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色关联表';

-- ----------------------------
-- Records of auth_user_role
-- ----------------------------
INSERT INTO `auth_user_role` VALUES ('24', 'C5B03231832F41E6AD4E3975E1F08068', '100', '2018-10-27 17:36:05', '2018-10-27 17:36:05');
INSERT INTO `auth_user_role` VALUES ('25', 'F23F8BD1A37542CE9E9A8BF422E6413D', '100', '2018-10-27 17:36:26', '2018-10-27 17:36:26');
INSERT INTO `auth_user_role` VALUES ('26', '70D682A5256D4BB885EC1EEE3AD48914', '100', '2018-10-27 18:04:06', '2018-10-27 18:04:06');
INSERT INTO `auth_user_role` VALUES ('27', '6FEF49125DB94966A48A3C382784878A', '100', '2018-10-27 18:14:11', '2018-10-27 18:14:11');
INSERT INTO `auth_user_role` VALUES ('28', '3A00E3002B204D598D1561B977E89996', '100', '2018-11-02 10:43:54', '2018-11-02 10:43:54');
INSERT INTO `auth_user_role` VALUES ('29', '5B88DD8480544258B425AAA085D60ECA', '100', '2018-11-02 20:10:57', '2018-11-02 20:10:57');

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `extra_information` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('10104', '软件工程18-4班', null);
INSERT INTO `class` VALUES ('10206', '计算机科学与技术18-6班', null);
INSERT INTO `class` VALUES ('10301', '网络安全18-1班', null);
INSERT INTO `class` VALUES ('10302', '网络安全18-2班', null);
INSERT INTO `class` VALUES ('10303', '网络安全18-3班', null);
INSERT INTO `class` VALUES ('20105', '应用数学18-5班', null);
INSERT INTO `class` VALUES ('20108', '应用数学18-8班', null);
INSERT INTO `class` VALUES ('20201', '应用物理18-1班', null);
INSERT INTO `class` VALUES ('20202', '应用物理18-2班', null);
INSERT INTO `class` VALUES ('40101', '兽医科学与自动化18-1班', null);
INSERT INTO `class` VALUES ('40102', '兽医科学与自动化18-2班', null);

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `college_id` int(11) NOT NULL,
  `college_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `extra_information` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`college_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES ('1', '信息科学与工程学院', null);
INSERT INTO `college` VALUES ('2', '理学院', null);
INSERT INTO `college` VALUES ('3', '材料学院', null);
INSERT INTO `college` VALUES ('4', '医学院', null);
INSERT INTO `college` VALUES ('5', '文学院', null);

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `department_description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('101', '财务处', 'have5');
INSERT INTO `department` VALUES ('102', '交通处', '交通运输');
INSERT INTO `department` VALUES ('103', '税务处', '收钱');
INSERT INTO `department` VALUES ('104', '水利处', '太水了');
INSERT INTO `department` VALUES ('105', '安全处', '安全第一');
INSERT INTO `department` VALUES ('106', '工业处', '工业第一');
INSERT INTO `department` VALUES ('107', '农业处', '不得了');
INSERT INTO `department` VALUES ('108', '44', 'ds');
INSERT INTO `department` VALUES ('109', 'dd', '请输入er');
INSERT INTO `department` VALUES ('110', '78', '请输入e');
INSERT INTO `department` VALUES ('111', 'dsf', 'e');
INSERT INTO `department` VALUES ('112', '请输入', '请输入e');
INSERT INTO `department` VALUES ('113', '请输入', '请输入sweqweqw');
INSERT INTO `department` VALUES ('114', '请输入', '请输入');
INSERT INTO `department` VALUES ('115', '请输入', '请输入');
INSERT INTO `department` VALUES ('116', '请输入', '请输入');
INSERT INTO `department` VALUES ('117', '请输入', '请输入');

-- ----------------------------
-- Table structure for fastdfsmap
-- ----------------------------
DROP TABLE IF EXISTS `fastdfsmap`;
CREATE TABLE `fastdfsmap` (
  `true_name` varchar(255) NOT NULL,
  `fast_dfs_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`true_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fastdfsmap
-- ----------------------------
INSERT INTO `fastdfsmap` VALUES ('181010411.jpg', 'group1/M00/00/00/rBJ5wVv2ahGAFIBoAAGiP5dQxK4695.jpg');
INSERT INTO `fastdfsmap` VALUES ('181010412.jpg', 'group1/M00/00/00/rBJ5wVv0_ZCAOE0KAAFWTW00sLM787.jpg');
INSERT INTO `fastdfsmap` VALUES ('181010413.jpg', 'group1/M00/00/00/rBJ5wVv-IlSAOXBtAAEOuU_VQEo873.jpg');
INSERT INTO `fastdfsmap` VALUES ('181010414.jpg', 'group1/M00/00/00/rBJ5wVv0_NeAILfSAALi7Bb7lDM337.jpg');
INSERT INTO `fastdfsmap` VALUES ('184010191.jpg', 'group1/M00/00/00/rBJ5wVv1AwSABPw0AAFWTW00sLM704.jpg');

-- ----------------------------
-- Table structure for graduation_flow
-- ----------------------------
DROP TABLE IF EXISTS `graduation_flow`;
CREATE TABLE `graduation_flow` (
  `graduation_flow_id` int(11) NOT NULL AUTO_INCREMENT,
  `graduation_flow_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `graduation_flow_enable_status` int(11) DEFAULT NULL,
  `graduation_flow_year` int(11) DEFAULT NULL,
  `graduation_flow_begin_time` datetime DEFAULT NULL,
  `graduation_flow_end_time` datetime DEFAULT NULL,
  `graduation_flow_student_num` int(11) DEFAULT NULL,
  `graduation_flow_set_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`graduation_flow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of graduation_flow
-- ----------------------------

-- ----------------------------
-- Table structure for graduation_link
-- ----------------------------
DROP TABLE IF EXISTS `graduation_link`;
CREATE TABLE `graduation_link` (
  `graduation_link_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '离校环节id',
  `graduation_link_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '离校环节名称',
  `graduation_link_announcement` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '离校环节公告',
  PRIMARY KEY (`graduation_link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of graduation_link
-- ----------------------------

-- ----------------------------
-- Table structure for specialty
-- ----------------------------
DROP TABLE IF EXISTS `specialty`;
CREATE TABLE `specialty` (
  `specialty_id` int(11) NOT NULL,
  `specialty_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `extra_information` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`specialty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of specialty
-- ----------------------------
INSERT INTO `specialty` VALUES ('101', '软件工程', null);
INSERT INTO `specialty` VALUES ('102', '计算机科学与技术', null);
INSERT INTO `specialty` VALUES ('103', '网络安全', '');
INSERT INTO `specialty` VALUES ('201', '应用数学', null);
INSERT INTO `specialty` VALUES ('202', '应用物理', null);
INSERT INTO `specialty` VALUES ('401', '兽医科学与自动化', null);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `student_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `student_photo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `graduation_year` int(11) DEFAULT NULL,
  `college_id` int(11) DEFAULT NULL,
  `specialty_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_sex` tinyint(1) DEFAULT NULL,
  `id_card_num` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `politics_status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('181010411', '徐凤娇', 'http://localhost:8080/student/photo/get?filename=181010411.jpg', '2018', '1', '101', '10104', '1', '380211298106135430', '团员', null, null);
INSERT INTO `student` VALUES ('181010412', '油晓萍', 'http://localhost:8080/student/photo/get?filename=181010412.jpg', '2018', '1', '101', '10104', '0', '471211298106139677', '团员', null, null);
INSERT INTO `student` VALUES ('181010413', '徐丹丹', 'http://localhost:8080/student/photo/get?filename=181010413.jpg', '2018', '1', '101', '10104', '0', '470211298106135430', '团员', null, null);
INSERT INTO `student` VALUES ('181010414', '夏晨铭', 'http://localhost:8080/student/photo/get?filename=181010414.jpg', '2018', '1', '101', '10104', '1', '471211198106135430', '党员', null, null);
INSERT INTO `student` VALUES ('181010415', '潘宇晖', 'http://localhost:8080/student/photo/get?filename=181010415.jpg', '2018', '1', '101', '10104', '0', '481211298106137532', '团员', null, null);
INSERT INTO `student` VALUES ('181010416', '宋景阳', 'http://localhost:8080/student/photo/get?filename=181010416.jpg', '2018', '1', '101', '10104', '1', '371211298106135430', '团员', null, null);
INSERT INTO `student` VALUES ('181010417', '郭茂昕', 'http://localhost:8080/student/photo/get?filename=181010417.jpg', '2018', '1', '101', '10104', '1', '481211198106135430', '党员', null, null);
INSERT INTO `student` VALUES ('181010418', '胡文琪', 'http://localhost:8080/student/photo/get?filename=181010418.jpg', '2018', '1', '101', '10104', '0', '471211298106138711', '团员', null, null);
INSERT INTO `student` VALUES ('181010419', '陶萌萌', 'http://localhost:8080/student/photo/get?filename=181010419.jpg', '2018', '1', '101', '10104', '1', '381211298106135430', '团员', null, null);
INSERT INTO `student` VALUES ('181010420', '李鑫', 'http://localhost:8080/student/photo/get?filename=181010420.jpg', '2018', '1', '101', '10104', '1', '370211298106135430', '党员', null, null);
INSERT INTO `student` VALUES ('181010421', '周明慧', 'http://localhost:8080/student/photo/get?filename=181010421.jpg', '2018', '1', '101', '10104', '1', '480211198106135430', '党员', null, null);
INSERT INTO `student` VALUES ('181020622', '黄亮', 'http://localhost:8080/student/photo/get?filename=181020622.jpg', '2018', '1', '102', '10206', '1', '380211298106138711', '团员', null, null);
INSERT INTO `student` VALUES ('181020623', '张玉宏', 'http://localhost:8080/student/photo/get?filename=181020623.jpg', '2018', '1', '102', '10206', '0', '471211298106138295', '团员', null, null);
INSERT INTO `student` VALUES ('181020624', '袁雨婷', 'http://localhost:8080/student/photo/get?filename=181020624.jpg', '2018', '1', '102', '10206', '0', '470211298106138711', '团员', null, null);
INSERT INTO `student` VALUES ('181020625', '刘莉莉', 'http://localhost:8080/student/photo/get?filename=181020625.jpg', '2018', '1', '102', '10206', '1', '471211198106138711', '党员', null, null);
INSERT INTO `student` VALUES ('181020626', '李旭', 'http://localhost:8080/student/photo/get?filename=181020626.jpg', '2018', '1', '102', '10206', '0', '481211298106132993', '团员', null, null);
INSERT INTO `student` VALUES ('181020627', '杨崴', 'http://localhost:8080/student/photo/get?filename=181020627.jpg', '2018', '1', '102', '10206', '1', '371211298106138711', '团员', null, null);
INSERT INTO `student` VALUES ('181020628', '张爽', 'http://localhost:8080/student/photo/get?filename=181020628.jpg', '2018', '1', '102', '10206', '1', '481211198106138711', '党员', null, null);
INSERT INTO `student` VALUES ('181020629', '杨威', 'http://localhost:8080/student/photo/get?filename=181020629.jpg', '2018', '1', '102', '10206', '0', '471211298106134817', '团员', null, null);
INSERT INTO `student` VALUES ('181020630', '凌霄', 'http://localhost:8080/student/photo/get?filename=181020630.jpg', '2018', '1', '102', '10206', '0', '480211298106138295', '团员', null, null);
INSERT INTO `student` VALUES ('181020631', '陈璐', 'http://localhost:8080/student/photo/get?filename=181020631.jpg', '2018', '1', '102', '10206', '1', '381211298106138711', '团员', null, null);
INSERT INTO `student` VALUES ('181020632', '丁宁', 'http://localhost:8080/student/photo/get?filename=181020632.jpg', '2018', '1', '102', '10206', '1', '370211298106138711', '党员', null, null);
INSERT INTO `student` VALUES ('181020633', '肖雅囡', 'http://localhost:8080/student/photo/get?filename=181020633.jpg', '2018', '1', '102', '10206', '1', '480211198106138711', '党员', null, null);
INSERT INTO `student` VALUES ('181030134', '张丽君', 'http://localhost:8080/student/photo/get?filename=181030134.jpg', '2018', '1', '103', '10301', '1', '371211298106135756', '团员', null, null);
INSERT INTO `student` VALUES ('181030135', '张俊龙', 'http://localhost:8080/student/photo/get?filename=181030135.jpg', '2018', '1', '103', '10301', '0', '480211298106135756', '团员', null, null);
INSERT INTO `student` VALUES ('181030136', '曲玮琦', 'http://localhost:8080/student/photo/get?filename=181030136.jpg', '2018', '1', '103', '10301', '1', '381211298106132993', '团员', null, null);
INSERT INTO `student` VALUES ('181030137', '张瑜', 'http://localhost:8080/student/photo/get?filename=181030137.jpg', '2018', '1', '103', '10301', '1', '370211298106132993', '党员', null, null);
INSERT INTO `student` VALUES ('181030138', '韩东初', 'http://localhost:8080/student/photo/get?filename=181030138.jpg', '2018', '1', '103', '10301', '1', '481211198106135756', '党员', null, null);
INSERT INTO `student` VALUES ('181030139', '史红', 'http://localhost:8080/student/photo/get?filename=181030139.jpg', '2018', '1', '103', '10301', '0', '481211298106130496', '团员', null, null);
INSERT INTO `student` VALUES ('181030140', '刘蓉', 'http://localhost:8080/student/photo/get?filename=181030140.jpg', '2018', '1', '103', '10301', '0', '471211298106135297', '团员', null, null);
INSERT INTO `student` VALUES ('181030141', '郭丽莎', 'http://localhost:8080/student/photo/get?filename=181030141.jpg', '2018', '1', '103', '10301', '0', '470211298106132993', '团员', null, null);
INSERT INTO `student` VALUES ('181030142', '邢丽丽', 'http://localhost:8080/student/photo/get?filename=181030142.jpg', '2018', '1', '103', '10301', '1', '380211298106132993', '团员', null, null);
INSERT INTO `student` VALUES ('181030143', '叶瑜', 'http://localhost:8080/student/photo/get?filename=181030143.jpg', '2018', '1', '103', '10301', '1', '370211298106135756', '党员', null, null);
INSERT INTO `student` VALUES ('181030144', '孙玉', 'http://localhost:8080/student/photo/get?filename=181030144.jpg', '2018', '1', '103', '10301', '1', '471211198106132993', '党员', null, null);
INSERT INTO `student` VALUES ('181030145', '孙清隆', 'http://localhost:8080/student/photo/get?filename=181030145.jpg', '2018', '1', '103', '10301', '0', '481211298106135078', '团员', null, null);
INSERT INTO `student` VALUES ('181030146', '肖秋红', 'http://localhost:8080/student/photo/get?filename=181030146.jpg', '2018', '1', '103', '10301', '0', '480211298106133419', '团员', null, null);
INSERT INTO `student` VALUES ('181030147', '李俊杰', 'http://localhost:8080/student/photo/get?filename=181030147.jpg', '2018', '1', '103', '10301', '1', '470211298106135756', '团员', null, null);
INSERT INTO `student` VALUES ('181030148', '关博', 'http://localhost:8080/student/photo/get?filename=181030148.jpg', '2018', '1', '103', '10301', '1', '371211298106132993', '团员', null, null);
INSERT INTO `student` VALUES ('181030149', '梁昕', 'http://localhost:8080/student/photo/get?filename=181030149.jpg', '2018', '1', '103', '10301', '1', '380211298106135756', '党员', null, null);
INSERT INTO `student` VALUES ('181030150', '田一鸣', 'http://localhost:8080/student/photo/get?filename=181030150.jpg', '2018', '1', '103', '10301', '1', '481211198106132993', '党员', null, null);
INSERT INTO `student` VALUES ('181030151', '杜鑫', 'http://localhost:8080/student/photo/get?filename=181030151.jpg', '2018', '1', '103', '10301', '1', '471211198106135756', '党员', null, null);
INSERT INTO `student` VALUES ('181030152', '肖凤华', 'http://localhost:8080/student/photo/get?filename=181030152.jpg', '2018', '1', '103', '10301', '0', '471211298106133419', '团员', null, null);
INSERT INTO `student` VALUES ('181030153', '赵娜', 'http://localhost:8080/student/photo/get?filename=181030153.jpg', '2018', '1', '103', '10301', '1', '381211298106135756', '团员', null, null);
INSERT INTO `student` VALUES ('181030254', '李丹', 'http://localhost:8080/student/photo/get?filename=181030254.jpg', '2018', '1', '103', '10302', '1', '371211298106135297', '团员', null, null);
INSERT INTO `student` VALUES ('181030255', '曲卫宁', 'http://localhost:8080/student/photo/get?filename=181030255.jpg', '2018', '1', '103', '10302', '0', '471211298106132993', '团员', null, null);
INSERT INTO `student` VALUES ('181030256', '陈志韬', 'http://localhost:8080/student/photo/get?filename=181030256.jpg', '2018', '1', '103', '10302', '0', '480211298106135297', '团员', null, null);
INSERT INTO `student` VALUES ('181030257', '巴雷', 'http://localhost:8080/student/photo/get?filename=181030257.jpg', '2018', '1', '103', '10302', '1', '381211298106137532', '团员', null, null);
INSERT INTO `student` VALUES ('181030258', '申梅子', 'http://localhost:8080/student/photo/get?filename=181030258.jpg', '2018', '1', '103', '10302', '1', '370211298106137532', '党员', null, null);
INSERT INTO `student` VALUES ('181030259', '许宝玉', 'http://localhost:8080/student/photo/get?filename=181030259.jpg', '2018', '1', '103', '10302', '1', '481211198106135297', '党员', null, null);
INSERT INTO `student` VALUES ('181030260', '吴福洪', 'http://localhost:8080/student/photo/get?filename=181030260.jpg', '2018', '1', '103', '10302', '0', '481211298106134550', '团员', null, null);
INSERT INTO `student` VALUES ('181030261', '何文龙', 'http://localhost:8080/student/photo/get?filename=181030261.jpg', '2018', '1', '103', '10302', '0', '480211298106134817', '团员', null, null);
INSERT INTO `student` VALUES ('181030262', '董静', 'http://localhost:8080/student/photo/get?filename=181030262.jpg', '2018', '1', '103', '10302', '0', '470211298106137532', '团员', null, null);
INSERT INTO `student` VALUES ('181030263', '李平', 'http://localhost:8080/student/photo/get?filename=181030263.jpg', '2018', '1', '103', '10302', '1', '380211298106137532', '团员', null, null);
INSERT INTO `student` VALUES ('181030264', '谭枭雄', 'http://localhost:8080/student/photo/get?filename=181030264.jpg', '2018', '1', '103', '10302', '1', '370211298106135297', '党员', null, null);
INSERT INTO `student` VALUES ('181030265', '何晶', 'http://localhost:8080/student/photo/get?filename=181030265.jpg', '2018', '1', '103', '10302', '1', '471211198106137532', '党员', null, null);
INSERT INTO `student` VALUES ('181030266', '张丽丽', 'http://localhost:8080/student/photo/get?filename=181030266.jpg', '2018', '1', '103', '10302', '0', '481211298106135756', '团员', null, null);
INSERT INTO `student` VALUES ('181030267', '秦海杰', 'http://localhost:8080/student/photo/get?filename=181030267.jpg', '2018', '1', '103', '10302', '0', '480211298106132993', '团员', null, null);
INSERT INTO `student` VALUES ('181030268', '桑田', 'http://localhost:8080/student/photo/get?filename=181030268.jpg', '2018', '1', '103', '10302', '1', '470211298106135297', '团员', null, null);
INSERT INTO `student` VALUES ('181030269', '王晓彤', 'http://localhost:8080/student/photo/get?filename=181030269.jpg', '2018', '1', '103', '10302', '1', '371211298106137532', '团员', null, null);
INSERT INTO `student` VALUES ('181030270', '邹铭超', 'http://localhost:8080/student/photo/get?filename=181030270.jpg', '2018', '1', '103', '10302', '1', '380211298106135297', '党员', null, null);
INSERT INTO `student` VALUES ('181030271', '杨敬伟', 'http://localhost:8080/student/photo/get?filename=181030271.jpg', '2018', '1', '103', '10302', '1', '481211198106137532', '党员', null, null);
INSERT INTO `student` VALUES ('181030272', '李娟', 'http://localhost:8080/student/photo/get?filename=181030272.jpg', '2018', '1', '103', '10302', '1', '471211198106135297', '党员', null, null);
INSERT INTO `student` VALUES ('181030273', '孔凡菲', 'http://localhost:8080/student/photo/get?filename=181030273.jpg', '2018', '1', '103', '10302', '1', '381211298106135297', '团员', null, null);
INSERT INTO `student` VALUES ('181030374', '刘莹', 'http://localhost:8080/student/photo/get?filename=181030374.jpg', '2018', '1', '103', '10303', '1', '380211298106134817', '团员', null, null);
INSERT INTO `student` VALUES ('181030375', '周宇航', 'http://localhost:8080/student/photo/get?filename=181030375.jpg', '2018', '1', '103', '10303', '0', '471211298106137532', '团员', null, null);
INSERT INTO `student` VALUES ('181030376', '苑潜雨', 'http://localhost:8080/student/photo/get?filename=181030376.jpg', '2018', '1', '103', '10303', '0', '470211298106134817', '团员', null, null);
INSERT INTO `student` VALUES ('181030377', '李炫虹', 'http://localhost:8080/student/photo/get?filename=181030377.jpg', '2018', '1', '103', '10303', '1', '381211298106138295', '团员', null, null);
INSERT INTO `student` VALUES ('181030378', '高源', 'http://localhost:8080/student/photo/get?filename=181030378.jpg', '2018', '1', '103', '10303', '1', '370211298106138295', '党员', null, null);
INSERT INTO `student` VALUES ('181030379', '田丛文', 'http://localhost:8080/student/photo/get?filename=181030379.jpg', '2018', '1', '103', '10303', '1', '471211198106134817', '党员', null, null);
INSERT INTO `student` VALUES ('181030380', '姜欢', 'http://localhost:8080/student/photo/get?filename=181030380.jpg', '2018', '1', '103', '10303', '0', '481211298106133419', '团员', null, null);
INSERT INTO `student` VALUES ('181030381', '申方涛', 'http://localhost:8080/student/photo/get?filename=181030381.jpg', '2018', '1', '103', '10303', '0', '480211298106138711', '团员', null, null);
INSERT INTO `student` VALUES ('181030382', '赵丽娜', 'http://localhost:8080/student/photo/get?filename=181030382.jpg', '2018', '1', '103', '10303', '0', '470211298106138295', '团员', null, null);
INSERT INTO `student` VALUES ('181030383', '刘松梅', 'http://localhost:8080/student/photo/get?filename=181030383.jpg', '2018', '1', '103', '10303', '1', '380211298106138295', '团员', null, null);
INSERT INTO `student` VALUES ('181030384', '田璐', 'http://localhost:8080/student/photo/get?filename=181030384.jpg', '2018', '1', '103', '10303', '1', '481211198106134817', '党员', null, null);
INSERT INTO `student` VALUES ('181030385', '罗微微', 'http://localhost:8080/student/photo/get?filename=181030385.jpg', '2018', '1', '103', '10303', '1', '471211198106138295', '党员', null, null);
INSERT INTO `student` VALUES ('181030386', '于海晶', 'http://localhost:8080/student/photo/get?filename=181030386.jpg', '2018', '1', '103', '10303', '0', '481211298106135297', '团员', null, null);
INSERT INTO `student` VALUES ('181030387', '朱娜', 'http://localhost:8080/student/photo/get?filename=181030387.jpg', '2018', '1', '103', '10303', '0', '480211298106137532', '团员', null, null);
INSERT INTO `student` VALUES ('181030388', '张娜', 'http://localhost:8080/student/photo/get?filename=181030388.jpg', '2018', '1', '103', '10303', '1', '381211298106134817', '团员', null, null);
INSERT INTO `student` VALUES ('181030389', '刘加慧', 'http://localhost:8080/student/photo/get?filename=181030389.jpg', '2018', '1', '103', '10303', '1', '371211298106138295', '团员', null, null);
INSERT INTO `student` VALUES ('181030390', '张丹', 'http://localhost:8080/student/photo/get?filename=181030390.jpg', '2018', '1', '103', '10303', '1', '370211298106134817', '党员', null, null);
INSERT INTO `student` VALUES ('181030391', '吴淑娜', 'http://localhost:8080/student/photo/get?filename=181030391.jpg', '2018', '1', '103', '10303', '1', '481211198106138295', '党员', null, null);
INSERT INTO `student` VALUES ('181030392', '赵成鑫', 'http://localhost:8080/student/photo/get?filename=181030392.jpg', '2018', '1', '103', '10303', '1', '480211198106134817', '党员', null, null);
INSERT INTO `student` VALUES ('181030393', '王金玲', 'http://localhost:8080/student/photo/get?filename=181030393.jpg', '2018', '1', '103', '10303', '1', '371211298106134817', '团员', null, null);
INSERT INTO `student` VALUES ('182010511', '张晓云', 'http://localhost:8080/student/photo/get?filename=182010511.jpg', '2018', '2', '201', '20105', '0', '470211298106130090', '团员', null, null);
INSERT INTO `student` VALUES ('182010512', '张三', 'http://localhost:8080/student/photo/get?filename=182010512.jpg', '2018', '2', '201', '20105', '1', '380211298106130090', '团员', null, null);
INSERT INTO `student` VALUES ('182010513', '张三', 'http://localhost:8080/student/photo/get?filename=182010513.jpg', '2018', '2', '201', '20105', '1', '370211298106138017', '党员', null, null);
INSERT INTO `student` VALUES ('182010514', '张三', 'http://localhost:8080/student/photo/get?filename=182010514.jpg', '2018', '2', '201', '20105', '1', '471211198106130090', '党员', null, null);
INSERT INTO `student` VALUES ('182010515', '张三', 'http://localhost:8080/student/photo/get?filename=182010515.jpg', '2018', '2', '201', '20105', '0', '481211298106133910', '团员', null, null);
INSERT INTO `student` VALUES ('182010516', '张三', 'http://localhost:8080/student/photo/get?filename=182010516.jpg', '2018', '2', '201', '20105', '0', '480211298106136978', '团员', null, null);
INSERT INTO `student` VALUES ('182010517', '张三', 'http://localhost:8080/student/photo/get?filename=182010517.jpg', '2018', '2', '201', '20105', '0', '470211298106138017', '团员', null, null);
INSERT INTO `student` VALUES ('182010518', '张三', 'http://localhost:8080/student/photo/get?filename=182010518.jpg', '2018', '2', '201', '20105', '1', '371211298106130090', '团员', null, null);
INSERT INTO `student` VALUES ('182010519', '张三', 'http://localhost:8080/student/photo/get?filename=182010519.jpg', '2018', '2', '201', '20105', '1', '380211298106138017', '团员', null, null);
INSERT INTO `student` VALUES ('182010520', '许力允', 'http://localhost:8080/student/photo/get?filename=182010520.jpg', '2018', '2', '201', '20105', '1', '481211198106130090', '党员', null, null);
INSERT INTO `student` VALUES ('182010521', '朱宏璐', 'http://localhost:8080/student/photo/get?filename=182010521.jpg', '2018', '2', '201', '20105', '1', '471211198106138017', '党员', null, null);
INSERT INTO `student` VALUES ('182010522', '宿艳萍', 'http://localhost:8080/student/photo/get?filename=182010522.jpg', '2018', '2', '201', '20105', '0', '471211298106136978', '团员', null, null);
INSERT INTO `student` VALUES ('182010523', '盖宇龙', 'http://localhost:8080/student/photo/get?filename=182010523.jpg', '2018', '2', '201', '20105', '0', '480211298106138017', '团员', null, null);
INSERT INTO `student` VALUES ('182010524', '李鸿梅', 'http://localhost:8080/student/photo/get?filename=182010524.jpg', '2018', '2', '201', '20105', '1', '381211298106130090', '团员', null, null);
INSERT INTO `student` VALUES ('182010525', '王柳', 'http://localhost:8080/student/photo/get?filename=182010525.jpg', '2018', '2', '201', '20105', '1', '371211298106138017', '团员', null, null);
INSERT INTO `student` VALUES ('182010526', '王在钰', 'http://localhost:8080/student/photo/get?filename=182010526.jpg', '2018', '2', '201', '20105', '1', '381211298106138017', '团员', null, null);
INSERT INTO `student` VALUES ('182010594', '王欣', 'http://localhost:8080/student/photo/get?filename=182010594.jpg', '2018', '2', '201', '20105', '1', '370211298106130090', '党员', null, null);
INSERT INTO `student` VALUES ('182010595', '沈志龙', 'http://localhost:8080/student/photo/get?filename=182010595.jpg', '2018', '2', '201', '20105', '1', '481211198106138017', '党员', null, null);
INSERT INTO `student` VALUES ('182010596', '辛月', 'http://localhost:8080/student/photo/get?filename=182010596.jpg', '2018', '2', '201', '20105', '1', '480211198106130090', '党员', null, null);
INSERT INTO `student` VALUES ('182010597', '汤宇', 'http://localhost:8080/student/photo/get?filename=182010597.jpg', '2018', '2', '201', '20105', '0', '481211298106135430', '团员', null, null);
INSERT INTO `student` VALUES ('182010598', '乔英龙', 'http://localhost:8080/student/photo/get?filename=182010598.jpg', '2018', '2', '201', '20105', '0', '471211298106139730', '团员', null, null);
INSERT INTO `student` VALUES ('182010827', '王雨晴', 'http://localhost:8080/student/photo/get?filename=182010827.jpg', '2018', '2', '201', '20108', '1', '370211298106130496', '党员', null, null);
INSERT INTO `student` VALUES ('182010828', '兰爽', 'http://localhost:8080/student/photo/get?filename=182010828.jpg', '2018', '2', '201', '20108', '1', '481211198106139730', '党员', null, null);
INSERT INTO `student` VALUES ('182010829', '郭晓飞', 'http://localhost:8080/student/photo/get?filename=182010829.jpg', '2018', '2', '201', '20108', '0', '481211298106134438', '团员', null, null);
INSERT INTO `student` VALUES ('182010830', '卢哲', 'http://localhost:8080/student/photo/get?filename=182010830.jpg', '2018', '2', '201', '20108', '0', '471211298106139431', '团员', null, null);
INSERT INTO `student` VALUES ('182010831', '张芬', 'http://localhost:8080/student/photo/get?filename=182010831.jpg', '2018', '2', '201', '20108', '0', '470211298106130496', '团员', null, null);
INSERT INTO `student` VALUES ('182010832', '尚光宏', 'http://localhost:8080/student/photo/get?filename=182010832.jpg', '2018', '2', '201', '20108', '1', '380211298106130496', '团员', null, null);
INSERT INTO `student` VALUES ('182010833', '陈天娇', 'http://localhost:8080/student/photo/get?filename=182010833.jpg', '2018', '2', '201', '20108', '1', '370211298106139730', '党员', null, null);
INSERT INTO `student` VALUES ('182010834', '梁佳', 'http://localhost:8080/student/photo/get?filename=182010834.jpg', '2018', '2', '201', '20108', '1', '471211198106130496', '党员', null, null);
INSERT INTO `student` VALUES ('182010835', '薛洪霞', 'http://localhost:8080/student/photo/get?filename=182010835.jpg', '2018', '2', '201', '20108', '0', '481211298106138017', '团员', null, null);
INSERT INTO `student` VALUES ('182010836', '庞金龙', 'http://localhost:8080/student/photo/get?filename=182010836.jpg', '2018', '2', '201', '20108', '0', '480211298106130090', '团员', null, null);
INSERT INTO `student` VALUES ('182010837', '王丹', 'http://localhost:8080/student/photo/get?filename=182010837.jpg', '2018', '2', '201', '20108', '1', '470211298106139730', '团员', null, null);
INSERT INTO `student` VALUES ('182010838', '王萌', 'http://localhost:8080/student/photo/get?filename=182010838.jpg', '2018', '2', '201', '20108', '1', '371211298106130496', '团员', null, null);
INSERT INTO `student` VALUES ('182010839', '庞琳琳', 'http://localhost:8080/student/photo/get?filename=182010839.jpg', '2018', '2', '201', '20108', '1', '380211298106139730', '团员', null, null);
INSERT INTO `student` VALUES ('182010840', '王达', 'http://localhost:8080/student/photo/get?filename=182010840.jpg', '2018', '2', '201', '20108', '1', '481211198106130496', '党员', null, null);
INSERT INTO `student` VALUES ('182010841', '张晟熙', 'http://localhost:8080/student/photo/get?filename=182010841.jpg', '2018', '2', '201', '20108', '1', '471211198106139730', '党员', null, null);
INSERT INTO `student` VALUES ('182010842', '侯春颖', 'http://localhost:8080/student/photo/get?filename=182010842.jpg', '2018', '2', '201', '20108', '0', '471211298106130090', '团员', null, null);
INSERT INTO `student` VALUES ('182010843', '李广友', 'http://localhost:8080/student/photo/get?filename=182010843.jpg', '2018', '2', '201', '20108', '0', '480211298106139730', '团员', null, null);
INSERT INTO `student` VALUES ('182010844', '许春艳', 'http://localhost:8080/student/photo/get?filename=182010844.jpg', '2018', '2', '201', '20108', '1', '381211298106130496', '团员', null, null);
INSERT INTO `student` VALUES ('182010845', '周圣楠', 'http://localhost:8080/student/photo/get?filename=182010845.jpg', '2018', '2', '201', '20108', '1', '480211198106130496', '党员', null, null);
INSERT INTO `student` VALUES ('182010846', '赵海葳', 'http://localhost:8080/student/photo/get?filename=182010846.jpg', '2018', '2', '201', '20108', '1', '371211298106139730', '团员', null, null);
INSERT INTO `student` VALUES ('182010847', '杨宇', 'http://localhost:8080/student/photo/get?filename=182010847.jpg', '2018', '2', '201', '20108', '1', '381211298106139730', '团员', null, null);
INSERT INTO `student` VALUES ('182020148', '俞朝元', 'http://localhost:8080/student/photo/get?filename=182020148.jpg', '2018', '2', '202', '20201', '1', '371211298106139431', '团员', null, null);
INSERT INTO `student` VALUES ('182020149', '李丹丹', 'http://localhost:8080/student/photo/get?filename=182020149.jpg', '2018', '2', '202', '20201', '1', '381211298106134550', '团员', null, null);
INSERT INTO `student` VALUES ('182020150', '张南南', 'http://localhost:8080/student/photo/get?filename=182020150.jpg', '2018', '2', '202', '20201', '1', '370211298106134550', '党员', null, null);
INSERT INTO `student` VALUES ('182020151', '高鑫', 'http://localhost:8080/student/photo/get?filename=182020151.jpg', '2018', '2', '202', '20201', '1', '481211198106139431', '党员', null, null);
INSERT INTO `student` VALUES ('182020152', '洪岩', 'http://localhost:8080/student/photo/get?filename=182020152.jpg', '2018', '2', '202', '20201', '0', '481211298106136978', '团员', null, null);
INSERT INTO `student` VALUES ('182020153', '杨一', 'http://localhost:8080/student/photo/get?filename=182020153.jpg', '2018', '2', '202', '20201', '0', '471211298106135078', '团员', null, null);
INSERT INTO `student` VALUES ('182020154', '牛翘楚', 'http://localhost:8080/student/photo/get?filename=182020154.jpg', '2018', '2', '202', '20201', '0', '470211298106134550', '团员', null, null);
INSERT INTO `student` VALUES ('182020155', '王胜楠', 'http://localhost:8080/student/photo/get?filename=182020155.jpg', '2018', '2', '202', '20201', '1', '380211298106134550', '团员', null, null);
INSERT INTO `student` VALUES ('182020156', '康灵宇', 'http://localhost:8080/student/photo/get?filename=182020156.jpg', '2018', '2', '202', '20201', '1', '370211298106139431', '党员', null, null);
INSERT INTO `student` VALUES ('182020157', '赵芳', 'http://localhost:8080/student/photo/get?filename=182020157.jpg', '2018', '2', '202', '20201', '1', '471211198106134550', '党员', null, null);
INSERT INTO `student` VALUES ('182020158', '张俊福', 'http://localhost:8080/student/photo/get?filename=182020158.jpg', '2018', '2', '202', '20201', '0', '481211298106139730', '团员', null, null);
INSERT INTO `student` VALUES ('182020159', '徐博', 'http://localhost:8080/student/photo/get?filename=182020159.jpg', '2018', '2', '202', '20201', '0', '480211298106130496', '团员', null, null);
INSERT INTO `student` VALUES ('182020160', '张琳', 'http://localhost:8080/student/photo/get?filename=182020160.jpg', '2018', '2', '202', '20201', '1', '470211298106139431', '团员', null, null);
INSERT INTO `student` VALUES ('182020161', '邢海丰', 'http://localhost:8080/student/photo/get?filename=182020161.jpg', '2018', '2', '202', '20201', '1', '371211298106134550', '团员', null, null);
INSERT INTO `student` VALUES ('182020162', '于妍', 'http://localhost:8080/student/photo/get?filename=182020162.jpg', '2018', '2', '202', '20201', '1', '380211298106139431', '党员', null, null);
INSERT INTO `student` VALUES ('182020163', '戴建群', 'http://localhost:8080/student/photo/get?filename=182020163.jpg', '2018', '2', '202', '20201', '1', '481211198106134550', '党员', null, null);
INSERT INTO `student` VALUES ('182020164', '李丹丹', 'http://localhost:8080/student/photo/get?filename=182020164.jpg', '2018', '2', '202', '20201', '1', '471211198106139431', '党员', null, null);
INSERT INTO `student` VALUES ('182020165', '韩冬', 'http://localhost:8080/student/photo/get?filename=182020165.jpg', '2018', '2', '202', '20201', '0', '471211298106130496', '团员', null, null);
INSERT INTO `student` VALUES ('182020166', '郭宇', 'http://localhost:8080/student/photo/get?filename=182020166.jpg', '2018', '2', '202', '20201', '0', '480211298106139431', '团员', null, null);
INSERT INTO `student` VALUES ('182020167', '马源', 'http://localhost:8080/student/photo/get?filename=182020167.jpg', '2018', '2', '202', '20201', '1', '480211198106134550', '党员', null, null);
INSERT INTO `student` VALUES ('182020168', '陈瑛琦', 'http://localhost:8080/student/photo/get?filename=182020168.jpg', '2018', '2', '202', '20201', '1', '381211298106139431', '团员', null, null);
INSERT INTO `student` VALUES ('182020269', '姚红雪', 'http://localhost:8080/student/photo/get?filename=182020269.jpg', '2018', '2', '202', '20202', '1', '371211298106135078', '团员', null, null);
INSERT INTO `student` VALUES ('182020270', '陈莹', 'http://localhost:8080/student/photo/get?filename=182020270.jpg', '2018', '2', '202', '20202', '1', '381211298106133419', '团员', null, null);
INSERT INTO `student` VALUES ('182020271', '王春林', 'http://localhost:8080/student/photo/get?filename=182020271.jpg', '2018', '2', '202', '20202', '1', '370211298106133419', '党员', null, null);
INSERT INTO `student` VALUES ('182020272', '袁月明', 'http://localhost:8080/student/photo/get?filename=182020272.jpg', '2018', '2', '202', '20202', '1', '481211198106135078', '党员', null, null);
INSERT INTO `student` VALUES ('182020273', '张三', 'http://localhost:8080/student/photo/get?filename=182020273.jpg', '2018', '2', '202', '20202', '0', '481211298106130090', '团员', null, null);
INSERT INTO `student` VALUES ('182020274', '赵越', 'http://localhost:8080/student/photo/get?filename=182020274.jpg', '2018', '2', '202', '20202', '0', '471211298106135756', '团员', null, null);
INSERT INTO `student` VALUES ('182020275', '秦俭', 'http://localhost:8080/student/photo/get?filename=182020275.jpg', '2018', '2', '202', '20202', '0', '470211298106133419', '团员', null, null);
INSERT INTO `student` VALUES ('182020276', '刘杨', 'http://localhost:8080/student/photo/get?filename=182020276.jpg', '2018', '2', '202', '20202', '1', '380211298106133419', '团员', null, null);
INSERT INTO `student` VALUES ('182020277', '王桂霞', 'http://localhost:8080/student/photo/get?filename=182020277.jpg', '2018', '2', '202', '20202', '1', '370211298106135078', '党员', null, null);
INSERT INTO `student` VALUES ('182020278', '戚丽娜', 'http://localhost:8080/student/photo/get?filename=182020278.jpg', '2018', '2', '202', '20202', '1', '471211198106133419', '党员', null, null);
INSERT INTO `student` VALUES ('182020279', '王欢', 'http://localhost:8080/student/photo/get?filename=182020279.jpg', '2018', '2', '202', '20202', '0', '481211298106139431', '团员', null, null);
INSERT INTO `student` VALUES ('182020280', '张晓卉', 'http://localhost:8080/student/photo/get?filename=182020280.jpg', '2018', '2', '202', '20202', '0', '480211298106134550', '团员', null, null);
INSERT INTO `student` VALUES ('182020281', '刘达', 'http://localhost:8080/student/photo/get?filename=182020281.jpg', '2018', '2', '202', '20202', '1', '470211298106135078', '团员', null, null);
INSERT INTO `student` VALUES ('182020282', '孟亦飞', 'http://localhost:8080/student/photo/get?filename=182020282.jpg', '2018', '2', '202', '20202', '1', '371211298106133419', '团员', null, null);
INSERT INTO `student` VALUES ('182020283', '慕羡', 'http://localhost:8080/student/photo/get?filename=182020283.jpg', '2018', '2', '202', '20202', '1', '380211298106135078', '党员', null, null);
INSERT INTO `student` VALUES ('182020284', '马欣', 'http://localhost:8080/student/photo/get?filename=182020284.jpg', '2018', '2', '202', '20202', '1', '481211198106133419', '党员', null, null);
INSERT INTO `student` VALUES ('182020285', '费岳', 'http://localhost:8080/student/photo/get?filename=182020285.jpg', '2018', '2', '202', '20202', '1', '471211198106135078', '党员', null, null);
INSERT INTO `student` VALUES ('182020286', '张志军', 'http://localhost:8080/student/photo/get?filename=182020286.jpg', '2018', '2', '202', '20202', '0', '471211298106134550', '团员', null, null);
INSERT INTO `student` VALUES ('182020287', '牟相曦', 'http://localhost:8080/student/photo/get?filename=182020287.jpg', '2018', '2', '202', '20202', '0', '480211298106135078', '团员', null, null);
INSERT INTO `student` VALUES ('182020288', '张三', 'http://localhost:8080/student/photo/get?filename=182020288.jpg', '2018', '2', '202', '20202', '1', '480211198106133419', '党员', null, null);
INSERT INTO `student` VALUES ('182020289', '田丽婷', 'http://localhost:8080/student/photo/get?filename=182020289.jpg', '2018', '2', '202', '20202', '1', '381211298106135078', '团员', null, null);
INSERT INTO `student` VALUES ('184010111', '宋玥', 'http://localhost:8080/student/photo/get?filename=184010111.jpg', '2018', '4', '401', '40101', '0', '470211298106139677', '团员', null, null);
INSERT INTO `student` VALUES ('184010112', '李桐', 'http://localhost:8080/student/photo/get?filename=184010112.jpg', '2018', '4', '401', '40101', '1', '371211298106134438', '团员', null, null);
INSERT INTO `student` VALUES ('184010113', '果薇', 'http://localhost:8080/student/photo/get?filename=184010113.jpg', '2018', '4', '401', '40101', '1', '481211198106134438', '党员', null, null);
INSERT INTO `student` VALUES ('184010114', '孙维楠', 'http://localhost:8080/student/photo/get?filename=184010114.jpg', '2018', '4', '401', '40101', '1', '471211198106139677', '党员', null, null);
INSERT INTO `student` VALUES ('184010115', '任斐', 'http://localhost:8080/student/photo/get?filename=184010115.jpg', '2018', '4', '401', '40101', '0', '471211298106135430', '团员', null, null);
INSERT INTO `student` VALUES ('184010116', '张鹤群', 'http://localhost:8080/student/photo/get?filename=184010116.jpg', '2018', '4', '401', '40101', '0', '480211298106139677', '团员', null, null);
INSERT INTO `student` VALUES ('184010117', '侯英旭', 'http://localhost:8080/student/photo/get?filename=184010117.jpg', '2018', '4', '401', '40101', '1', '381211298106134438', '团员', null, null);
INSERT INTO `student` VALUES ('184010118', '赵晓宇', 'http://localhost:8080/student/photo/get?filename=184010118.jpg', '2018', '4', '401', '40101', '1', '370211298106134438', '党员', null, null);
INSERT INTO `student` VALUES ('184010119', '宋海', 'http://localhost:8080/student/photo/get?filename=184010119.jpg', '2018', '4', '401', '40101', '1', '481211198106139677', '党员', null, null);
INSERT INTO `student` VALUES ('184010120', '廉尉', 'http://localhost:8080/student/photo/get?filename=184010120.jpg', '2018', '4', '401', '40101', '1', '480211198106134438', '党员', null, null);
INSERT INTO `student` VALUES ('184010121', '李美微', 'http://localhost:8080/student/photo/get?filename=184010121.jpg', '2018', '4', '401', '40101', '0', '470211298106134438', '团员', null, null);
INSERT INTO `student` VALUES ('184010122', '张诚诚', 'http://localhost:8080/student/photo/get?filename=184010122.jpg', '2018', '4', '401', '40101', '1', '371211298106139677', '团员', null, null);
INSERT INTO `student` VALUES ('184010190', '刘冬丽', 'http://localhost:8080/student/photo/get?filename=184010190.jpg', '2018', '4', '401', '40101', '1', '380211298106139677', '团员', null, null);
INSERT INTO `student` VALUES ('184010191', '张三', 'http://localhost:8080/student/photo/get?filename=184010191.jpg', '2018', '4', '401', '40101', '0', '481211298106134817', '团员', null, null);
INSERT INTO `student` VALUES ('184010192', '张三', 'http://localhost:8080/student/photo/get?filename=184010192.jpg', '2018', '4', '401', '40101', '0', '471211298106133910', '团员', null, null);
INSERT INTO `student` VALUES ('184010193', '张三', 'http://localhost:8080/student/photo/get?filename=184010193.jpg', '2018', '4', '401', '40101', '1', '381211298106139677', '团员', null, null);
INSERT INTO `student` VALUES ('184010194', '张三', 'http://localhost:8080/student/photo/get?filename=184010194.jpg', '2018', '4', '401', '40101', '1', '380211298106134438', '团员', null, null);
INSERT INTO `student` VALUES ('184010195', '宋斯文', 'http://localhost:8080/student/photo/get?filename=184010195.jpg', '2018', '4', '401', '40101', '1', '370211298106139677', '党员', null, null);
INSERT INTO `student` VALUES ('184010196', '邵华', 'http://localhost:8080/student/photo/get?filename=184010196.jpg', '2018', '4', '401', '40101', '1', '471211198106134438', '党员', null, null);
INSERT INTO `student` VALUES ('184010197', '王力岩', 'http://localhost:8080/student/photo/get?filename=184010197.jpg', '2018', '4', '401', '40101', '0', '481211298106138295', '团员', null, null);
INSERT INTO `student` VALUES ('184010198', '王媛媛', 'http://localhost:8080/student/photo/get?filename=184010198.jpg', '2018', '4', '401', '40101', '0', '480211298106135430', '团员', null, null);
INSERT INTO `student` VALUES ('184010223', '王婷婷', 'http://localhost:8080/student/photo/get?filename=184010223.jpg', '2018', '4', '401', '40102', '0', '481211298106138711', '团员', null, null);
INSERT INTO `student` VALUES ('184010224', '张敏', 'http://localhost:8080/student/photo/get?filename=184010224.jpg', '2018', '4', '401', '40102', '0', '471211298106138017', '团员', null, null);
INSERT INTO `student` VALUES ('184010225', '邵丹丹', 'http://localhost:8080/student/photo/get?filename=184010225.jpg', '2018', '4', '401', '40102', '1', '381211298106133910', '团员', null, null);
INSERT INTO `student` VALUES ('184010226', '王海娇', 'http://localhost:8080/student/photo/get?filename=184010226.jpg', '2018', '4', '401', '40102', '1', '380211298106136978', '团员', null, null);
INSERT INTO `student` VALUES ('184010227', '左妍', 'http://localhost:8080/student/photo/get?filename=184010227.jpg', '2018', '4', '401', '40102', '1', '370211298106133910', '党员', null, null);
INSERT INTO `student` VALUES ('184010228', '戎娜', 'http://localhost:8080/student/photo/get?filename=184010228.jpg', '2018', '4', '401', '40102', '1', '471211198106136978', '党员', null, null);
INSERT INTO `student` VALUES ('184010229', '张敬奇', 'http://localhost:8080/student/photo/get?filename=184010229.jpg', '2018', '4', '401', '40102', '0', '481211298106139677', '团员', null, null);
INSERT INTO `student` VALUES ('184010230', '李坤', 'http://localhost:8080/student/photo/get?filename=184010230.jpg', '2018', '4', '401', '40102', '0', '480211298106134438', '团员', null, null);
INSERT INTO `student` VALUES ('184010231', '孟玲玉', 'http://localhost:8080/student/photo/get?filename=184010231.jpg', '2018', '4', '401', '40102', '0', '470211298106133910', '团员', null, null);
INSERT INTO `student` VALUES ('184010232', '朱琳', 'http://localhost:8080/student/photo/get?filename=184010232.jpg', '2018', '4', '401', '40102', '1', '371211298106136978', '团员', null, null);
INSERT INTO `student` VALUES ('184010233', '顾竟诺', 'http://localhost:8080/student/photo/get?filename=184010233.jpg', '2018', '4', '401', '40102', '1', '380211298106133910', '团员', null, null);
INSERT INTO `student` VALUES ('184010234', '王琳', 'http://localhost:8080/student/photo/get?filename=184010234.jpg', '2018', '4', '401', '40102', '1', '481211198106136978', '党员', null, null);
INSERT INTO `student` VALUES ('184010235', '李晓庆', 'http://localhost:8080/student/photo/get?filename=184010235.jpg', '2018', '4', '401', '40102', '1', '471211198106133910', '党员', null, null);
INSERT INTO `student` VALUES ('184010236', '关海唤', 'http://localhost:8080/student/photo/get?filename=184010236.jpg', '2018', '4', '401', '40102', '0', '471211298106134438', '团员', null, null);
INSERT INTO `student` VALUES ('184010237', '张迎', 'http://localhost:8080/student/photo/get?filename=184010237.jpg', '2018', '4', '401', '40102', '0', '480211298106133910', '团员', null, null);
INSERT INTO `student` VALUES ('184010238', '吴姗', 'http://localhost:8080/student/photo/get?filename=184010238.jpg', '2018', '4', '401', '40102', '1', '381211298106136978', '团员', null, null);
INSERT INTO `student` VALUES ('184010239', '曹鹤岩', 'http://localhost:8080/student/photo/get?filename=184010239.jpg', '2018', '4', '401', '40102', '1', '370211298106136978', '党员', null, null);
INSERT INTO `student` VALUES ('184010240', '李灵', 'http://localhost:8080/student/photo/get?filename=184010240.jpg', '2018', '4', '401', '40102', '1', '481211198106133910', '党员', null, null);
INSERT INTO `student` VALUES ('184010241', '张皓淼', 'http://localhost:8080/student/photo/get?filename=184010241.jpg', '2018', '4', '401', '40102', '1', '480211198106136978', '党员', null, null);
INSERT INTO `student` VALUES ('184010242', '贾中贵', 'http://localhost:8080/student/photo/get?filename=184010242.jpg', '2018', '4', '401', '40102', '0', '470211298106136978', '团员', null, null);
INSERT INTO `student` VALUES ('184010243', '张昊', 'http://localhost:8080/student/photo/get?filename=184010243.jpg', '2018', '4', '401', '40102', '1', '371211298106133910', '团员', null, null);
