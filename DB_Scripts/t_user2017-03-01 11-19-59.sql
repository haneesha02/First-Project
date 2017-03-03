USE workforce;

CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_dt` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  `active_flag` varchar(20) NOT NULL,
  `res_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `res_id` (`res_id`),
  CONSTRAINT `t_user_ibfk_1` FOREIGN KEY (`res_id`) REFERENCES `t_res` (`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


