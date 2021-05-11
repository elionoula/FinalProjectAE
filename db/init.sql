CREATE DATABASE IF NOT EXISTS `pythonlogin` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `pythonlogin`;

CREATE TABLE IF NOT EXISTS `accounts` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
    `fullname` varchar(200) NOT NULL,
  	`username` varchar(50) NOT NULL,
  	`password` varchar(255) NOT NULL,
  	`email` varchar(100) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `accounts` (`id`, `fullname`, `username`, `password`, `email`) VALUES (1,'test', 'test', 'test', 'test@test.com');

CREATE TABLE `event` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_date` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

insert  into `event`(`id`,`title`,`url`,`class`,`start_date`,`end_date`) values
(1,'Example','http://www.example.com','event-sucess','2019-09-10 20:00:00','2019-09-10 20:01:02'),
(2,'Roy Tutorials','https://roytuts.com','event-important','2019-09-15 19:00:00','2019-09-15 19:42:45'),
(3,'Roy Tutorial','https://roytuts.com','event-info','2019-09-23 20:03:05','2019-09-24 08:45:53'),
(4,'Roy Tutorial','https://roytuts.com','event-error','2019-09-24 20:03:05','2019-09-25 08:45:53');