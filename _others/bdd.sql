-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour cardgame
CREATE DATABASE IF NOT EXISTS `cardgame` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cardgame`;

-- Listage de la structure de la table cardgame. cards
CREATE TABLE IF NOT EXISTS `cards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cards_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table cardgame.cards : ~24 rows (environ)
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` (`id`, `created_at`, `updated_at`, `name`, `type`, `image`, `description`, `cost`, `score`) VALUES
	(1, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Fauve roux', 'cat', 'cat_01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla id enim dui. Nunc at efficitur.', 1, 10),
	(2, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Albino, l\'enragé', 'cat', 'cat_02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt est vitae vulputate tempor. Pellentesque.', 2, 30),
	(3, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Guerrière chiba', 'dog', 'dog_01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent massa mauris, tristique vitae turpis ac.', 3, 30),
	(4, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Croquette, l\'assoupie', 'cat', 'cat_03', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus gravida nunc felis, non fringilla velit.', 1, 10),
	(5, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Duo canin', 'dog', 'dog_02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt id sem eget congue. Mauris.', 2, 20),
	(6, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Agent double', 'dog', 'dog_03', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida velit eu enim hendrerit, vitae.', 2, 10),
	(7, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Regard de jade', 'cat', 'cat_04', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla id enim dui. Nunc at efficitur.', 1, 10),
	(8, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Bête nocturne', 'cat', 'cat_05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt est vitae vulputate tempor. Pellentesque.', 2, 30),
	(9, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Grise, chasseuse experte', 'dog', 'dog_04', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent massa mauris, tristique vitae turpis ac.', 3, 30),
	(10, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Félin suspicieux', 'cat', 'cat_06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus gravida nunc felis, non fringilla velit.', 1, 10),
	(11, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Garde boxer', 'dog', 'dog_05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt id sem eget congue. Mauris.', 2, 20),
	(12, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Kenneth l\'érudit', 'dog', 'dog_06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida velit eu enim hendrerit, vitae.', 2, 10),
	(13, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Fuzzy, Maître du camouflage', 'cat', 'cat_07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla id enim dui. Nunc at efficitur.', 1, 10),
	(14, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Gardien rouge', 'cat', 'cat_08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt est vitae vulputate tempor. Pellentesque.', 2, 30),
	(15, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Brutus, Limier infernal', 'dog', 'dog_07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent massa mauris, tristique vitae turpis ac.', 3, 30),
	(16, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Rudy l\'élégant', 'cat', 'cat_09', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus gravida nunc felis, non fringilla velit.', 1, 10),
	(17, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Bête abandonnée', 'dog', 'dog_08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt id sem eget congue. Mauris.', 2, 20),
	(18, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Fauve géant', 'dog', 'dog_09', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida velit eu enim hendrerit, vitae.', 2, 10),
	(19, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Grizou, Hérault du sommeil', 'cat', 'cat_10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla id enim dui. Nunc at efficitur.', 1, 10),
	(20, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Fauve brun', 'cat', 'cat_11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt est vitae vulputate tempor. Pellentesque.', 2, 30),
	(21, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Antoinette, Noblesse incarnée', 'dog', 'dog_10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent massa mauris, tristique vitae turpis ac.', 3, 30),
	(22, '2021-02-13 12:55:58', '2021-02-13 12:55:58', 'Oracle félin', 'cat', 'cat_12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus gravida nunc felis, non fringilla velit.', 1, 10),
	(23, '2021-02-13 12:55:59', '2021-02-13 12:55:59', 'Bête flamboyante', 'dog', 'dog_11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt id sem eget congue. Mauris.', 2, 20),
	(24, '2021-02-13 12:55:59', '2021-02-13 12:55:59', 'Raton l\'imposteur', 'dog', 'dog_12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida velit eu enim hendrerit, vitae.', 2, 10);
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;

-- Listage de la structure de la table cardgame. card_deck
CREATE TABLE IF NOT EXISTS `card_deck` (
  `card_id` bigint(20) unsigned NOT NULL,
  `deck_id` bigint(20) unsigned NOT NULL,
  KEY `card_deck_card_id_foreign` (`card_id`),
  KEY `card_deck_deck_id_foreign` (`deck_id`),
  CONSTRAINT `card_deck_card_id_foreign` FOREIGN KEY (`card_id`) REFERENCES `cards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `card_deck_deck_id_foreign` FOREIGN KEY (`deck_id`) REFERENCES `decks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table cardgame.card_deck : ~70 rows (environ)
/*!40000 ALTER TABLE `card_deck` DISABLE KEYS */;
INSERT INTO `card_deck` (`card_id`, `deck_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(2, 10),
	(3, 10),
	(4, 10),
	(5, 10),
	(6, 10),
	(7, 10),
	(8, 10),
	(9, 10),
	(11, 10),
	(1, 11),
	(2, 11),
	(3, 11),
	(4, 11),
	(5, 11),
	(6, 11),
	(7, 11),
	(8, 11),
	(9, 11),
	(11, 11),
	(12, 8),
	(2, 8),
	(3, 8),
	(4, 8),
	(5, 8),
	(6, 8),
	(7, 8),
	(8, 8),
	(9, 8),
	(20, 8),
	(1, 12),
	(2, 12),
	(3, 12),
	(4, 12),
	(5, 12),
	(6, 12),
	(7, 12),
	(8, 12),
	(9, 12),
	(12, 12),
	(10, 10),
	(1, 6),
	(2, 6),
	(3, 6),
	(4, 6),
	(5, 6),
	(6, 6),
	(7, 6),
	(8, 6),
	(9, 6),
	(10, 6),
	(1, 13),
	(2, 13),
	(3, 13),
	(4, 13),
	(5, 13),
	(6, 13),
	(7, 13),
	(8, 13),
	(9, 13),
	(10, 13);
/*!40000 ALTER TABLE `card_deck` ENABLE KEYS */;

-- Listage de la structure de la table cardgame. decks
CREATE TABLE IF NOT EXISTS `decks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `decks_user_id_foreign` (`user_id`),
  CONSTRAINT `decks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table cardgame.decks : ~7 rows (environ)
/*!40000 ALTER TABLE `decks` DISABLE KEYS */;
INSERT INTO `decks` (`id`, `created_at`, `updated_at`, `user_id`) VALUES
	(1, '2021-02-13 12:56:44', '2021-02-13 12:56:44', 1),
	(6, '2021-02-15 13:15:31', '2021-02-15 13:15:31', 2),
	(8, '2021-02-15 13:18:00', '2021-02-15 13:18:00', 2),
	(10, '2021-02-15 13:51:01', '2021-02-15 13:51:01', 2),
	(11, '2021-02-15 14:32:06', '2021-02-15 14:32:06', 2),
	(12, '2021-02-15 15:10:41', '2021-02-15 15:10:41', 2),
	(13, '2021-02-20 13:00:57', '2021-02-20 13:00:57', 2);
/*!40000 ALTER TABLE `decks` ENABLE KEYS */;

-- Listage de la structure de la table cardgame. failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table cardgame.failed_jobs : ~0 rows (environ)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Listage de la structure de la table cardgame. migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table cardgame.migrations : ~6 rows (environ)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2021_02_09_094603_create_cards_table', 1),
	(5, '2021_02_12_125637_create_decks_table', 1),
	(6, '2021_02_12_130140_create_card_deck_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Listage de la structure de la table cardgame. password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table cardgame.password_resets : ~0 rows (environ)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Listage de la structure de la table cardgame. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table cardgame.users : ~2 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'test', 'test@test.com', NULL, '$2y$10$wLCLAcx63hcfs6TNLqZI0OoJhQnWIFijarzDweE7KTiKRrL8dum3G', NULL, '2021-02-13 12:56:39', '2021-02-13 12:56:39'),
	(2, 'a', 'a@a.a', NULL, '$2y$10$M2Y8YPXu0il48NK34N1LUetEydQUwszsWjeNSbmSnYPSqGnD5D5D.', NULL, '2021-02-15 09:58:01', '2021-02-15 09:58:01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
