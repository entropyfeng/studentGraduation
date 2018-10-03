/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : graduation

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-10-03 17:06:36
*/

SET FOREIGN_KEY_CHECKS=0;

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
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `student_sex` int(11) DEFAULT NULL,
  `graduation_year` int(11) DEFAULT NULL,
  `id_card_num` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `politics_status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phone_num` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `sys_permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_permission_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `resource_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `resource_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '权限字符串',
  `parent_id` int(255) DEFAULT NULL,
  `parent_ids` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sys_permission_id`),
  UNIQUE KEY `sys_permission_name` (`sys_permission_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `sys_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_rolename` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `state` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sys_role_id`),
  UNIQUE KEY `sys_rolename` (`sys_rolename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `sys_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_username` varchar(255) COLLATE utf8_bin NOT NULL,
  `sys_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '名称，可以是昵称或真实姓名，不同系统不同定义',
  `sys_password` varchar(255) COLLATE utf8_bin NOT NULL,
  `sys_salt` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '加密密码的盐',
  `sys_state` int(255) NOT NULL COMMENT '用户状态，0：创建未认证：1：正常：2：用户被锁定',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sys_user_id`),
  UNIQUE KEY `sys_username` (`sys_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
