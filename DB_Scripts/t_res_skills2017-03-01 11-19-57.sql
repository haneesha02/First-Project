USE workforce;

CREATE TABLE `t_res_skills` (
  `res_skill_id` int(11) NOT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `res_id` int(11) DEFAULT NULL,
  `expert_lvl_id` int(11) DEFAULT NULL,
  `active_flag` varchar(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`res_skill_id`),
  KEY `t_res_skills_ibfk_1` (`expert_lvl_id`),
  KEY `t_res_skills_ibfk_2` (`skill_id`),
  KEY `t_res_skills_ibfk_3` (`res_id`),
  CONSTRAINT `t_res_skills_ibfk_1` FOREIGN KEY (`expert_lvl_id`) REFERENCES `t_prof_exp` (`expert_lvl_id`),
  CONSTRAINT `t_res_skills_ibfk_2` FOREIGN KEY (`skill_id`) REFERENCES `t_skill` (`skill_id`),
  CONSTRAINT `t_res_skills_ibfk_3` FOREIGN KEY (`res_id`) REFERENCES `t_res` (`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


