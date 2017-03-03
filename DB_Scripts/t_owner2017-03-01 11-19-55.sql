USE workforce;

CREATE TABLE `t_owner` (
  `activity_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `owner_name` varchar(200) DEFAULT NULL,
  `active_flag` varchar(20) NOT NULL,
  PRIMARY KEY (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


