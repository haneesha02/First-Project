USE workforce;

CREATE TABLE `t_priv` (
  `priv_id` int(11) NOT NULL,
  `priv_name` varchar(100) DEFAULT NULL,
  `priv_desc` varchar(100) DEFAULT NULL,
  `active_flag` varchar(20) NOT NULL,
  `create_dt` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`priv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


