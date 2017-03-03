USE workforce;

CREATE TABLE `t_prof_exp` (
  `expert_lvl_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `active_flag` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`expert_lvl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


