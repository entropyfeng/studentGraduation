/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : graduation

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-10-02 10:11:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `sys_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_username` varchar(255) COLLATE utf8_bin unique NOT NULL,
  `sys_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '名称，可以是昵称或真实姓名，不同系统不同定义',
  `sys_password` varchar(255) COLLATE utf8_bin NOT NULL,
  `sys_salt` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '加密密码的盐',
  `sys_state` int(255) NOT NULL COMMENT '用户状态，0：创建未认证：1：正常：2：用户被锁定',
  `create_time` datetime DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sys_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
