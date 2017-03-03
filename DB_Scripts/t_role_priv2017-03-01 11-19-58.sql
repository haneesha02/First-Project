USE workforce;

CREATE TABLE `t_role_priv` (
  `role_priv_id` int(11) NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `priv_id` int(11) NOT NULL,
  `start_dt` datetime DEFAULT NULL,
  `end_dt` datetime DEFAULT NULL,
  `active_flag` varchar(20) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_dt` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`role_priv_id`),
  KEY `user_role_id` (`user_role_id`),
  KEY `priv_id` (`priv_id`),
  CONSTRAINT `t_role_priv_ibfk_1` FOREIGN KEY (`user_role_id`) REFERENCES `t_user_role` (`user_role_id`),
  CONSTRAINT `t_role_priv_ibfk_2` FOREIGN KEY (`priv_id`) REFERENCES `t_priv` (`priv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


