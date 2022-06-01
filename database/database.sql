CREATE TABLE IF NOT EXISTS `parents` (
  `parent_id` int(11) NOT NULL AUTO_INCREMENT,
  `hp` varchar(50) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO `parents` (`parent_id`, `hp`, `name`) VALUES
	(1, '0128436957', 'Ahmad Farid Kamil bin Ahmad'),
	(2, '0137965485', 'Siti Maimunah binti Ali'),
	(3, '0198756987', 'Zulfaris bin Muhammad'),
	(4, '0139854785', 'Nur Farisya binti Nur Muhammad'),
	(5, '0197634859', 'Muhammad Faris bin Muhammad Faisal'),
	(6, '0138432649', 'Siti Amirah binti Faizal');

CREATE TABLE IF NOT EXISTS `students` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL DEFAULT '0',
  `hp` varchar(50) DEFAULT '0',
  `p1_id` int(11) DEFAULT NULL,
  `p2_id` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO `students` (`student_id`, `name`, `hp`, `p1_id`, `p2_id`, `dob`) VALUES
	(1, 'Muhammad Faizul bin Ahmad Farid Kamil', '0139463285', 1, 2, '2000-06-01'),
	(2, 'Muhammad Nuaiman bin Zulfaris', '0176432569', 3, 4, '2000-05-01'),
	(3, 'Muhammad Hakimi bin Muhammad Faris', '0194863159', 5, 6, '2000-04-01'),
	(4, 'Muhammad Faizal bin Ahmad Farid Kamil', '0137463258', 1, 2, '2000-06-01'),
	(5, 'Muhammad Hariz bin Muhammad Faris', '0194785632', 5, 6, '1998-06-01');