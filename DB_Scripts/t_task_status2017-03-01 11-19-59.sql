USE workforce;

CREATE TABLE `t_task_status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(200) DEFAULT NULL,
  `status_desc` varchar(200) DEFAULT NULL,
  `created_dt` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `active_flag` varchar(20) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


