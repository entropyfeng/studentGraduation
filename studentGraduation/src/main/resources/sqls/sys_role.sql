SET FOREIGN_KEY_CHECKS=0;


DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `sys_role_id` int AUTO_INCREMENT NOT NULL,
  `sys_rolename` varchar(255)  unique NOT NULL,
  `description` varchar(255)  DEFAULT NULL,
  `state` int(11) NOT NULL,
  `create_time` timestamp  NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sys_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
