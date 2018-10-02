SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `sys_permission_id` int NOT NULL  AUTO_INCREMENT,
  `sys_permission_name` varchar(255)  NOT NULL unique  ,
  `resource_type` varchar(255)  DEFAULT NULL,
  `resource_url` varchar(255)  DEFAULT NULL,
  `permission` varchar(255)  DEFAULT NULL COMMENT '权限字符串',
  `parent_id` int(255) DEFAULT NULL,
  `parent_ids` varchar(255)  DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `create_time` timestamp  NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sys_permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
