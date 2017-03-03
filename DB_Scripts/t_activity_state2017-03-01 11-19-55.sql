USE workforce;

CREATE TABLE `t_activity_state` (
  `state_id` int(11) NOT NULL,
  `state_desc` varchar(200) DEFAULT NULL,
  `locale_id` varchar(200) DEFAULT NULL,
  `active_flag` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


