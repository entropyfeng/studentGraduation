/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : graduation

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-10-02 10:10:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `sys_permission_id` int(11) NOT NULL,
  `sys_permission_name` varchar(255) COLLATE utf8_bin unique NOT NULL ,
  `resource_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `resource_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '权限字符串',
  `parent_id` int(255) DEFAULT NULL,
  `parent_ids` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sys_permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
