USE workforce;

CREATE TABLE `t_res_alloc` (
  `alloc_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `assigned_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `proposed_end_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actual_end_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `alloc_percentage` bigint(20) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `res_skill_id` int(11) DEFAULT NULL,
  `start_dt` datetime DEFAULT NULL,
  `end_dt` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_dt` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  `active_flag` varchar(200) NOT NULL,
  PRIMARY KEY (`alloc_id`),
  KEY `fk_t_res` (`res_id`),
  KEY `fk_t_task` (`task_id`),
  KEY `fk_t_res_skills` (`res_skill_id`),
  CONSTRAINT `fk_t_res` FOREIGN KEY (`res_id`) REFERENCES `t_res` (`res_id`),
  CONSTRAINT `fk_t_task` FOREIGN KEY (`task_id`) REFERENCES `t_task` (`task_id`),
  CONSTRAINT `fk_t_res_skills` FOREIGN KEY (`res_skill_id`) REFERENCES `t_res_skills` (`res_skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


