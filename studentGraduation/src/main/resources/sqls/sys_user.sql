SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `sys_user_id`  int AUTO_INCREMENT NOT NULL,
  `sys_username` varchar(255)  unique NOT NULL,
  `sys_name` varchar(255)  DEFAULT NULL COMMENT '名称，可以是昵称或真实姓名，不同系统不同定义',
  `sys_password` varchar(255)  NOT NULL,
  `sys_salt` varchar(255)  NOT NULL COMMENT '加密密码的盐',
  `sys_state` int(255) NOT NULL COMMENT '用户状态，0：创建未认证：1：正常：2：用户被锁定',
  `create_time` datetime DEFAULT NULL ON CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sys_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
