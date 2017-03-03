USE workforce;

CREATE TABLE `t_res` (
  `first_name` varchar(80) DEFAULT NULL,
  `middle_name` varchar(80) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `gender` varchar(80) DEFAULT NULL,
  `birth_dt` date DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `create_dt` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `res_id` int(11) NOT NULL AUTO_INCREMENT,
  `active_flag` varchar(100) NOT NULL,
  `email_id` int(11) DEFAULT NULL,
  `contact` bigint(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


