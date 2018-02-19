# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.35)
# Database: advBlogger
# Generation Time: 2018-02-19 16:16:26 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table activations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `activations`;

CREATE TABLE `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`)
VALUES
	(1,4,'haS692GQwsRp5o8wy19hhHhWVxQTjxv7',1,'2017-12-17 16:13:55','2017-12-17 16:13:55','2017-12-17 16:13:55'),
	(2,5,'MqbCxwLJXeJ8SEZkGYVR7rywQ7QM7ZSd',1,'2017-12-18 11:44:28','2017-12-18 11:44:28','2017-12-18 11:44:28'),
	(3,6,'v49PQPBN2AeOlj8OhVCqw4PemsjIYzWd',1,'2017-12-18 12:14:41','2017-12-18 12:14:41','2017-12-18 12:14:41'),
	(4,7,'oHaOTLtDZgoiMjBxDmFjzMvIsgooZE5Z',1,'2017-12-18 13:35:40','2017-12-18 13:35:40','2017-12-18 13:35:40'),
	(6,9,'t3IQxn7D6SjP5L5q69IyfeXvvcekjucV',1,'2017-12-18 15:48:37','2017-12-18 15:48:37','2017-12-18 15:48:37'),
	(7,10,'oYD8oN5f1CWqFQqVYcIu8Fq5wuC2KlgI',1,'2017-12-18 15:52:07','2017-12-18 15:52:07','2017-12-18 15:52:07'),
	(8,11,'w0q1f2XkHCbRzJW4RS9LeOCMEK3tbklz',1,'2017-12-18 16:07:53','2017-12-18 16:06:52','2017-12-18 16:07:53'),
	(9,12,'2DryQOIDE8Qrr6uL0FfMUavCvsrOiS0l',0,NULL,'2018-02-19 16:08:34','2018-02-19 16:08:34'),
	(10,13,'bJ8j4OrM6cd9psgXmklcrUfQXzKCC0bX',1,'2018-02-19 16:14:41','2018-02-19 16:12:39','2018-02-19 16:14:41');

/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_07_02_230147_migration_cartalyst_sentinel',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table persistences
# ------------------------------------------------------------

DROP TABLE IF EXISTS `persistences`;

CREATE TABLE `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `persistences` WRITE;
/*!40000 ALTER TABLE `persistences` DISABLE KEYS */;

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`)
VALUES
	(37,6,'EMjfTm2yeprqRjmhIfTFHT5F81LHg1sa','2017-12-18 15:13:40','2017-12-18 15:13:40'),
	(38,6,'TT3aRza4KwF3E2IcMyAGXUXUDDMGurjW','2017-12-18 15:13:44','2017-12-18 15:13:44'),
	(42,8,'EvoJ26sXMhDP608EqNPFV6ZSe7dtKAJV','2017-12-18 15:46:14','2017-12-18 15:46:14'),
	(45,6,'TrY2h3mTvaLkD4Y2zmoWquZ71s3OiwAX','2017-12-18 15:51:21','2017-12-18 15:51:21'),
	(48,13,'jEX8g7agY1JPg6Utnmzygqtl2V5svQdo','2018-02-19 16:14:41','2018-02-19 16:14:41');

/*!40000 ALTER TABLE `persistences` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table reminders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reminders`;

CREATE TABLE `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table role_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `role_users`;

CREATE TABLE `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`)
VALUES
	(4,4,'2017-12-18 13:35:40','2017-12-18 13:35:40'),
	(7,5,'2017-12-18 13:35:40','2017-12-18 13:35:40'),
	(9,5,'2017-12-18 15:48:37','2017-12-18 15:48:37'),
	(10,5,'2017-12-18 15:52:07','2017-12-18 15:52:07'),
	(11,5,'2017-12-18 16:06:53','2017-12-18 16:06:53'),
	(12,5,'2018-02-19 16:08:35','2018-02-19 16:08:35'),
	(13,5,'2018-02-19 16:12:41','2018-02-19 16:12:41');

/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`)
VALUES
	(1,'subscribers','Subscribers','{\"subscribers.show\":true,\"subscribers.list\":true}','2017-12-18 12:02:33','2017-12-18 12:04:20'),
	(3,'moderator','Moderator','{\"moderator.show\":true,\"moderator.edit\":true,\"moderator.delete\":false,\"moderator.create\":true,\"moderator.approve\":false}','2017-12-18 12:07:58','2017-12-18 12:07:58'),
	(4,'admin','Administrator','{\"admin.show\":true,\"admin.edit\":true,\"admin.delete\":true,\"admin.create\":true,\"admin.approve\":true}','2017-12-18 12:08:18','2017-12-18 12:08:18'),
	(5,'user','Normal User','{\"user.show\":true,\"user.edit\":false,\"user.delete\":false,\"user.create\":false,\"user.approve\":false}','2017-12-18 12:09:45','2017-12-18 12:09:45');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table throttle
# ------------------------------------------------------------

DROP TABLE IF EXISTS `throttle`;

CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `dob`, `username`, `location`, `created_at`, `updated_at`)
VALUES
	(2,'hadeel@gmail.com','$2y$10$QClEn7PdYV1lr6n2qkxEBOwIxdEs1BZ0nkyYcPJhzeghJPwMWnnEq',NULL,NULL,'Hadeel','Alhazem','1991-02-12','HadeelAlhazem','Syria','2017-12-17 16:06:31','2017-12-17 16:06:31'),
	(3,'hadeel1@gmail.com','$2y$10$E7FhodEo.u8aNpHQ5OH7cODWS2lJyilKKDJmhtfJhz184gO.O/vpu',NULL,NULL,'Hadeell','Alhazemm','1997-01-12','Hadeel1Alhazem','Syria1','2017-12-17 16:09:27','2017-12-17 16:09:27'),
	(4,'Ahmad@gmail.com','$2y$10$8Ax4TLwD/1k3fGTBnU/9gO.uImkSsSADAxCXq9bf3gkVo93PqQ.He',NULL,'2018-02-19 14:59:29','Ahmad','Haleem','1992-01-12','AhmadHaleem','Netherlands','2017-12-17 16:13:55','2018-02-19 14:59:29'),
	(5,'feras@gmail.com','$2y$10$TECCT6/dqi67j.qVWQoBSOMA8tjd020HwD0e06TAG4L4xjkZ/EGse',NULL,'2017-12-18 11:44:34','Feras','Alzoubi','1994-02-12','ferasAlzoubi','United States','2017-12-18 11:44:28','2017-12-18 11:44:34'),
	(6,'azzam@gmail.com','$2y$10$w.93CnICWEJRMKfh0Kjz0ezT/Dkfcgvn3McyLkQ9adm1Cepja/duW',NULL,'2017-12-18 15:51:21','Azzam','Azzam','1992-01-12','AzzamAzzam','Holand','2017-12-18 12:14:41','2017-12-18 15:51:21'),
	(7,'Fahed@gmail.com','$2y$10$Lol8RJmvA.Qj1zytSHVVOOO2Lbij.qYgf3N05/joigrX.g7uPrqo6',NULL,'2017-12-18 15:51:28','Fahed','Alfahed','1992-01-12','FahedAlfahed','Syria','2017-12-18 13:35:40','2017-12-18 15:51:28'),
	(9,'Ahmad@gmail.comd','$2y$10$HNC3.EpLPuPwBylvPDwgX../J2DvJvvqmiS20lPxTIXtheLd5DOAS',NULL,NULL,'Hadeeld','Alhazemd','1991-01-11','AhmaddHaleem','Netherlands','2017-12-18 15:48:37','2017-12-18 15:48:37'),
	(10,'hanii@gmail.com','$2y$10$L7UKunSDQl9V4lzQIjdX1.AasZPH1q0S8DIEu4eyRy7EO1/ZQmv22','{\"user.create\":true,\"user.update\":false}','2018-02-19 15:00:33','sadasd','asdsad','1992-02-02','sadsadasdsa','Syria','2017-12-18 15:52:07','2018-02-19 15:17:29'),
	(11,'azzamm@gmail.com','$2y$10$5vrLiqDywfJBCJlVQNF5Iu9BoXNivlkeT7AXi22bJ1hHLKgEiyZom',NULL,'2017-12-18 16:07:53','Azamm','Azzamm','1992-01-12','AzzammDergham','Netherlands','2017-12-18 16:06:52','2017-12-18 16:07:53'),
	(13,'coldman2999@gmail.com','$2y$10$OZdcJEDesHsHI2pZatVzleC5OntX4xZ3Ou4o/nj8tXzE8WkBh.hOm',NULL,'2018-02-19 16:14:41','Ahmad','Haleem','1992-01-12','AhmadHaleemmm','Netherlands','2018-02-19 16:12:39','2018-02-19 16:14:41');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
