USE workforce;

CREATE TABLE `t_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(20) DEFAULT NULL,
  `start_dt` date DEFAULT NULL,
  `end_dt` date DEFAULT NULL,
  `active_flag` int(11) NOT NULL,
  `create_dt` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `state_id` int(100) NOT NULL,
  PRIMARY KEY (`activity_id`),
  KEY `fk_t_owner` (`owner_id`),
  KEY `fk_t_activity_state` (`state_id`),
  CONSTRAINT `fk_t_owner` FOREIGN KEY (`owner_id`) REFERENCES `t_owner` (`owner_id`),
  CONSTRAINT `fk_t_activity_state` FOREIGN KEY (`state_id`) REFERENCES `t_activity_state` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


