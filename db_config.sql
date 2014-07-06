
-- ----------------------------
--  Table structure for `teams`
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
	`team_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
	`team_name` varchar(70) NOT NULL
	PRIMARY KEY (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


-- ----------------------------
--  Table structure for `fixtures`
-- ----------------------------
DROP TABLE IF EXISTS `fixtures_results`;
CREATE TABLE `fixtures_results` (
	--`fixture_id` int unsigned NOT NULL AUTO_INCREMENT,
	`phase` varchar(20), 
	`group` int(5),
	`datetime` datetime NOT NULL,
	`team_a` varchar(50) NOT NULL,
	`team_b` varchar(50) NOT NULL,
	`team_a_score` smallint, 
	`team_b_score` smallint,
	PRIMARY KEY (`fixture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


-- ----------------------------
--  Table structure for `league_table`
-- ----------------------------
DROP TABLE IF EXISTS `league_table`;
CREATE TABLE `league_table` (
	`phase` varchar(10) NOT NULL,
	`division` varchar(10) NOT NULL,
	`team_id` int(8) NOT NULL,
	`points` smallint NOT NULL, 
	`played` smallint NOT NULL, 
	`win` smallint NOT NULL, 
	`draw` smallint NOT NULL, 
	`loss` smallint NOT NULL, 
	`for` smallint NOT NULL, 
	`against` smallint NOT NULL, 
	`diff` smallint NOT NULL,  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


-- ----------------------------
--  Table structure for `weather`
-- ----------------------------
DROP TABLE IF EXISTS `weather`;
CREATE TABLE `weather` (
	`country` varchar(30),
	`county` varchar(30),
	`datetime` datetime,
	`temp_cel` DOUBLE,
	`weather` varchar(120),
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
