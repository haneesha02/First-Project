USE workforce;

CREATE TABLE `t_skill` (
  `skill_id` int(11) NOT NULL,
  `skill_name` varchar(100) DEFAULT NULL,
  `skill_desc` varchar(100) DEFAULT NULL,
  `active_flag` varchar(20) NOT NULL,
  `create_dt` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


