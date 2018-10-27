/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : graduation

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-10-27 18:39:07
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='登录注册登出记录';

-- ----------------------------
-- Records of auth_account_log
-- ----------------------------
INSERT INTO `auth_account_log` VALUES ('23', '用户注册日志', 'C5B03231832F41E6AD4E3975E1F08068', '2018-10-27 17:36:05', '1', '注册成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('24', '用户注册日志', '70D682A5256D4BB885EC1EEE3AD48914', '2018-10-27 18:04:06', '1', '注册成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('25', '用户注册日志', '6FEF49125DB94966A48A3C382784878A', '2018-10-27 18:14:11', '1', '注册成功', '0:0:0:0:0:0:0:1');
INSERT INTO `auth_account_log` VALUES ('26', '用户登录日志', 'yangyi', '2018-10-27 18:36:06', '1', '登录成功', '0:0:0:0:0:0:0:1');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='操作日志';

-- ----------------------------
-- Records of auth_operation_log
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='资源信息表(菜单,资源)';

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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色信息表';

-- ----------------------------
-- Records of auth_role
-- ----------------------------
INSERT INTO `auth_role` VALUES ('100', 'role_admin', '管理员角色', '1', null, null);
INSERT INTO `auth_role` VALUES ('102', 'role_user', '用户角色', '1', null, null);
INSERT INTO `auth_role` VALUES ('103', 'role_guest', '访客角色', '1', null, null);
INSERT INTO `auth_role` VALUES ('104', 'role_anon', '非角色', '1', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='资源角色关联表';

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

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `uid` varchar(100) NOT NULL COMMENT 'uid,用户账号,主键',
  `username` varchar(30) NOT NULL COMMENT '用户名(nick_name)',
  `password` varchar(50) NOT NULL COMMENT '密码(MD5(密码+盐))',
  `salt` varchar(20) DEFAULT NULL COMMENT '盐',
  `real_name` varchar(30) DEFAULT NULL COMMENT '用户真名',
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话号码(唯一)',
  `email` varchar(50) DEFAULT NULL COMMENT '邮件地址(唯一)',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别(1.男 2.女)',
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
INSERT INTO `auth_user` VALUES ('6FEF49125DB94966A48A3C382784878A', 'yangyi', '4ABAC7F391DF42B541B599E4B12CC322', 'jsm7da', null, null, '13211111111', null, null, '1', '2018-10-27 18:14:11', '2018-10-27 18:14:11', null);
INSERT INTO `auth_user` VALUES ('70D682A5256D4BB885EC1EEE3AD48914', 'ADMIN', '09172E59649D196F4E6F67D7370D4FF8', 'rur8kr', null, null, '15855555546', null, null, '1', '2018-10-27 18:04:06', '2018-10-27 18:04:05', null);
INSERT INTO `auth_user` VALUES ('C5B03231832F41E6AD4E3975E1F08068', 'root', 'C7724EB93D6D9404CAC7484AFEB02047', 'cum0kp', null, null, '15800000000', null, null, '1', '2018-10-27 17:36:05', '2018-10-27 17:36:04', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色关联表';

-- ----------------------------
-- Records of auth_user_role
-- ----------------------------
INSERT INTO `auth_user_role` VALUES ('24', 'C5B03231832F41E6AD4E3975E1F08068', '103', '2018-10-27 17:36:05', '2018-10-27 17:36:05');
INSERT INTO `auth_user_role` VALUES ('25', 'F23F8BD1A37542CE9E9A8BF422E6413D', '103', '2018-10-27 17:36:26', '2018-10-27 17:36:26');
INSERT INTO `auth_user_role` VALUES ('26', '70D682A5256D4BB885EC1EEE3AD48914', '103', '2018-10-27 18:04:06', '2018-10-27 18:04:06');
INSERT INTO `auth_user_role` VALUES ('27', '6FEF49125DB94966A48A3C382784878A', '103', '2018-10-27 18:14:11', '2018-10-27 18:14:11');
