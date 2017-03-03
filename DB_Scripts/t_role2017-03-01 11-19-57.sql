USE workforce;

CREATE TABLE `t_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(100) DEFAULT NULL,
  `role_desc` varchar(100) DEFAULT NULL,
  `active_flag` varchar(20) NOT NULL,
  `create_dt` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_dt` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


