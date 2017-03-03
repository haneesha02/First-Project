USE workforce;

CREATE TABLE `t_task` (
  `task_id` int(11) NOT NULL,
  `task_name` varchar(200) DEFAULT NULL,
  `task_desc` varchar(200) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `start_dt` datetime DEFAULT NULL,
  `end_dt` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active_flag` varchar(200) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`task_id`),
  KEY `activity_id` (`activity_id`),
  CONSTRAINT `t_task_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `t_activity` (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


