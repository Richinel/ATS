# ************************************************************
# Sequel Ace SQL dump
# Version 20096
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 9.6.0)
# Database: ats_rijplaten
# Generation Time: 2026-03-03 21:13:03 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table addon_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `addon_settings`;

CREATE TABLE `addon_settings` (
  `addon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  PRIMARY KEY (`addon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table asset_containers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_containers`;

CREATE TABLE `asset_containers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `asset_containers_handle_unique` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `asset_containers` WRITE;
/*!40000 ALTER TABLE `asset_containers` DISABLE KEYS */;

INSERT INTO `asset_containers` (`id`, `handle`, `title`, `disk`, `settings`, `created_at`, `updated_at`)
VALUES
	(1,'assets','Assets','assets','{\"sort_by\": \"basename\", \"sort_dir\": \"asc\", \"search_index\": null, \"warm_presets\": null, \"source_preset\": null, \"validation_rules\": []}','2026-02-28 13:54:06','2026-02-28 13:54:06');

/*!40000 ALTER TABLE `asset_containers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table assets_meta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `assets_meta`;

CREATE TABLE `assets_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `container` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `assets_meta_container_folder_basename_unique` (`container`,`folder`,`basename`),
  KEY `assets_meta_container_index` (`container`),
  KEY `assets_meta_folder_index` (`folder`),
  KEY `assets_meta_basename_index` (`basename`),
  KEY `assets_meta_filename_index` (`filename`),
  KEY `assets_meta_extension_index` (`extension`),
  KEY `assets_meta_path_index` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `assets_meta` WRITE;
/*!40000 ALTER TABLE `assets_meta` DISABLE KEYS */;

INSERT INTO `assets_meta` (`id`, `container`, `folder`, `basename`, `filename`, `extension`, `path`, `meta`, `created_at`, `updated_at`)
VALUES
	(1,'assets','img/products','kunststof-rijplaten-m.png','kunststof-rijplaten-m','png','img/products/kunststof-rijplaten-m.png','{\"data\": [], \"size\": 49815, \"width\": 1000, \"height\": 227, \"duration\": null, \"mime_type\": \"image/png\", \"last_modified\": 1772383646}','2026-03-01 16:47:26','2026-03-01 16:47:26'),
	(2,'assets','img/products','stalen-rijplaten-m.png','stalen-rijplaten-m','png','img/products/stalen-rijplaten-m.png','{\"data\": [], \"size\": 167451, \"width\": 1209, \"height\": 274, \"duration\": null, \"mime_type\": \"image/png\", \"last_modified\": 1772383679}','2026-03-01 16:47:59','2026-03-01 16:47:59'),
	(3,'assets','img/products','stempelplaten-bestellen-m-nl.png','stempelplaten-bestellen-m-nl','png','img/products/stempelplaten-bestellen-m-nl.png','{\"data\": [], \"size\": 164604, \"width\": 1000, \"height\": 227, \"duration\": null, \"mime_type\": \"image/png\", \"last_modified\": 1772383708}','2026-03-01 16:48:28','2026-03-01 16:48:28'),
	(4,'assets','img/products','kunststof-rijplaten-xl.png','kunststof-rijplaten-xl','png','img/products/kunststof-rijplaten-xl.png','{\"data\": [], \"size\": 189679, \"width\": 857, \"height\": 652, \"duration\": null, \"mime_type\": \"image/png\", \"last_modified\": 1772385068}','2026-03-01 17:11:08','2026-03-01 17:11:08'),
	(5,'assets','img/products','stalen-rijplaten-xl.png','stalen-rijplaten-xl','png','img/products/stalen-rijplaten-xl.png','{\"data\": [], \"size\": 436778, \"width\": 857, \"height\": 652, \"duration\": null, \"mime_type\": \"image/png\", \"last_modified\": 1772385083}','2026-03-01 17:11:23','2026-03-01 17:11:23'),
	(6,'assets','img/products','stempelplaten-xl.webp','stempelplaten-xl','webp','img/products/stempelplaten-xl.webp','{\"data\": [], \"size\": 114198, \"width\": 857, \"height\": 652, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1772385099}','2026-03-01 17:11:39','2026-03-01 17:11:39'),
	(7,'assets','img','avezaat.webp','avezaat','webp','img/avezaat.webp','{\"data\": {\"alt\": \"Avezaat\"}, \"size\": 16758, \"width\": 577, \"height\": 164, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1772479245}','2026-03-02 19:20:45','2026-03-02 20:04:47'),
	(8,'assets','img','ats-green.webp','ats-green','webp','img/ats-green.webp','{\"data\": [], \"size\": 17702, \"width\": 572, \"height\": 173, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1772563186}','2026-03-03 18:39:46','2026-03-03 18:39:46'),
	(9,'assets','img','rijplaten-staal.png','rijplaten-staal','png','img/rijplaten-staal.png','{\"data\": {\"alt\": \"Stalen rijplaten\"}, \"size\": 339505, \"width\": 651, \"height\": 366, \"duration\": null, \"mime_type\": \"image/png\", \"last_modified\": 1772567142}','2026-03-03 19:45:42','2026-03-03 20:35:10'),
	(10,'assets','img','stapelbox-met-kunststof-rijplaten-20mm-1714399010.png','stapelbox-met-kunststof-rijplaten-20mm-1714399010','png','img/stapelbox-met-kunststof-rijplaten-20mm-1714399010.png','{\"data\": {\"alt\": \"Stapelbox 20 rijplaten\"}, \"size\": 595210, \"width\": 1040, \"height\": 585, \"duration\": null, \"mime_type\": \"image/png\", \"last_modified\": 1772570924}','2026-03-03 20:48:44','2026-03-03 20:48:57');

/*!40000 ALTER TABLE `assets_meta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blueprints
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blueprints`;

CREATE TABLE `blueprints` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blueprints_handle_namespace_unique` (`handle`,`namespace`),
  KEY `blueprints_namespace_index` (`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `blueprints` WRITE;
/*!40000 ALTER TABLE `blueprints` DISABLE KEYS */;

INSERT INTO `blueprints` (`id`, `namespace`, `handle`, `data`, `created_at`, `updated_at`)
VALUES
	(1,NULL,'default','{\"tabs\": {\"main\": {\"sections\": [{\"fields\": [{\"field\": {\"type\": \"markdown\", \"display\": \"Content\", \"localizable\": true}, \"handle\": \"content\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}, {\"field\": {\"type\": \"template\", \"display\": \"Template\", \"localizable\": true}, \"handle\": \"template\"}]}]}}, \"title\": \"Default\"}','2026-02-16 12:23:35','2026-02-16 12:23:35'),
	(2,'assets','assets','{\"tabs\": {\"main\": {\"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Alt Text\", \"instructions\": \"Description of the image\"}, \"handle\": \"alt\"}]}]}}, \"title\": \"Asset\"}','2026-02-16 12:23:35','2026-02-16 12:23:35'),
	(3,NULL,'user','{\"tabs\": {\"main\": {\"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Name\"}, \"handle\": \"name\"}, {\"field\": {\"type\": \"text\", \"input\": \"email\", \"display\": \"Email Address\"}, \"handle\": \"email\"}, {\"field\": {\"type\": \"user_roles\", \"width\": 50}, \"handle\": \"roles\"}, {\"field\": {\"type\": \"user_groups\", \"width\": 50}, \"handle\": \"groups\"}, {\"field\": {\"type\": \"assets\", \"container\": \"assets\", \"max_files\": 1}, \"handle\": \"avatar\"}]}]}}, \"title\": \"User\"}','2026-02-16 12:23:35','2026-02-16 12:23:35'),
	(4,'navigation','header_ctas','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Additional class\"}, \"handle\": \"additional_class\"}], \"__count\": 0}]}}}','2026-03-01 16:07:50','2026-03-01 16:07:54'),
	(5,'collections.pages','page','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"cta\": {\"fields\": [{\"import\": \"cta\"}], \"display\": \"CTA\"}, \"quote\": {\"fields\": [{\"import\": \"quote\"}], \"display\": \"Quote\"}, \"divider\": {\"fields\": [{\"import\": \"divider\"}], \"display\": \"Divider\"}, \"knoppen\": {\"fields\": [{\"import\": \"buttons\"}], \"display\": \"Knoppen\"}, \"home_products\": {\"fields\": [{\"import\": \"home_products\"}], \"display\": \"Home - Products\"}, \"tekstkolommen\": {\"fields\": [{\"import\": \"tekstkolommen\"}], \"display\": \"Tekstkolommen\"}, \"producten_latest\": {\"fields\": [{\"import\": \"producten_latest\"}], \"display\": \"Producten (latest)\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"Page content\", \"collapse\": \"accordion\"}, \"handle\": \"page_content\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}], \"__count\": 0}]}}, \"title\": \"Page\"}','2026-03-01 16:29:54','2026-03-03 20:30:53'),
	(6,'globals','adres','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"bard\", \"display\": \"Adresveld\", \"container\": \"assets\", \"remove_empty_nodes\": false}, \"handle\": \"adresveld\"}], \"__count\": 0}]}}, \"title\": \"Adres\"}','2026-03-02 19:15:57','2026-03-02 19:15:59'),
	(7,'globals','bedrijfsinformatie','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Footer upper\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Titel blok links\"}, \"handle\": \"titel_blok_links\"}, {\"field\": {\"type\": \"text\", \"display\": \"Bedrijfsnaam\"}, \"handle\": \"bedrijfsnaam\"}, {\"field\": {\"type\": \"bard\", \"display\": \"Adres\", \"container\": \"assets\", \"remove_empty_nodes\": false}, \"handle\": \"adres\"}, {\"field\": {\"type\": \"text\", \"display\": \"Telefoonnummer\"}, \"handle\": \"telefoonnummer\"}, {\"field\": {\"type\": \"text\", \"display\": \"E-mailadres\"}, \"handle\": \"e_mailadres\"}, {\"field\": {\"type\": \"bard\", \"display\": \"KvK & VAT\", \"container\": \"assets\", \"remove_empty_nodes\": false}, \"handle\": \"kvk_vat\"}, {\"field\": {\"type\": \"bard\", \"display\": \"Openingstijden\", \"container\": \"assets\", \"remove_empty_nodes\": false}, \"handle\": \"openingstijden\"}], \"__count\": 0, \"display\": \"Algemene informatie\", \"collapsible\": true}, {\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Titel blok midden\"}, \"handle\": \"titel_blok_midden\"}, {\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"links\": {\"fields\": [{\"field\": {\"type\": \"link\", \"display\": \"Link\"}, \"handle\": \"link\"}, {\"field\": {\"type\": \"text\", \"display\": \"Link tag\"}, \"handle\": \"link_tag\"}], \"display\": \"Links\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"Links\"}, \"handle\": \"links\"}], \"__count\": 1, \"display\": \"Footer - Blok midden\", \"collapsed\": true, \"collapsible\": true}, {\"fields\": [{\"field\": {\"type\": \"assets\", \"display\": \"Footer logo\", \"container\": \"assets\"}, \"handle\": \"footer_logo\"}, {\"field\": {\"type\": \"bard\", \"display\": \"Disclaimer\", \"container\": \"assets\", \"remove_empty_nodes\": false}, \"handle\": \"disclaimer\"}, {\"field\": {\"type\": \"text\", \"display\": \"Titel blok rechts\"}, \"handle\": \"titel_blok_rechts\"}], \"__count\": 2, \"display\": \"Footer - Blok rechts\", \"collapsed\": true, \"collapsible\": true}]}, \"footer_lower\": {\"__count\": 1, \"display\": \"Footer lower\", \"sections\": [{\"fields\": [{\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"new_set\": {\"fields\": [{\"field\": {\"type\": \"link\", \"display\": \"Link\"}, \"handle\": \"footer_lower_link\"}, {\"field\": {\"type\": \"text\", \"display\": \"Link tag\"}, \"handle\": \"footer_lower_link_tag\"}], \"display\": \"New Set\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"Footer lower links\"}, \"handle\": \"footer_lower_links\"}], \"__count\": 0, \"display\": \"Footer lower - Links\"}, {\"fields\": [{\"field\": {\"type\": \"bard\", \"display\": \"The cool folks who made this\", \"container\": \"assets\", \"remove_empty_nodes\": false}, \"handle\": \"yours_truly\"}, {\"field\": {\"type\": \"link\", \"display\": \"LinkedIn\"}, \"handle\": \"linkedin\"}], \"__count\": 1, \"display\": \"Yours truly\", \"collapsible\": true}]}}, \"title\": \"Bedrijfsinformatie\"}','2026-03-02 19:16:30','2026-03-02 20:23:39'),
	(8,'collections.products_home','products_home','{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"text\", \"display\": \"Type\"}, \"handle\": \"type\"}, {\"field\": {\"type\": \"assets\", \"display\": \"Foto\", \"container\": \"assets\", \"max_files\": 1}, \"handle\": \"foto\"}, {\"field\": {\"type\": \"bard\", \"display\": \"Omschrijving\", \"container\": \"assets\", \"remove_empty_nodes\": false}, \"handle\": \"omschrijving\"}, {\"field\": {\"type\": \"text\", \"display\": \"Maten\"}, \"handle\": \"maten\"}, {\"field\": {\"type\": \"text\", \"display\": \"Prijs\"}, \"handle\": \"prijs\"}, {\"field\": {\"type\": \"text\", \"display\": \"Extra info\"}, \"handle\": \"extra_info\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}], \"__count\": 0}]}}, \"title\": \"Products (Home)\"}','2026-03-03 20:23:39','2026-03-03 20:34:34');

/*!40000 ALTER TABLE `blueprints` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cache`;

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cache_locks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cache_locks`;

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table collections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `collections`;

CREATE TABLE `collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `collections_handle_unique` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;

INSERT INTO `collections` (`id`, `handle`, `title`, `settings`, `created_at`, `updated_at`)
VALUES
	(1,'pages','Pages','{\"dated\": false, \"mount\": null, \"sites\": [\"default\"], \"slugs\": true, \"inject\": [], \"layout\": null, \"routes\": \"{parent_uri}/{slug}\", \"sort_dir\": null, \"template\": null, \"propagate\": true, \"revisions\": false, \"structure\": {\"root\": true}, \"sort_field\": null, \"taxonomies\": null, \"entry_class\": null, \"search_index\": null, \"title_formats\": [], \"default_status\": true, \"origin_behavior\": \"select\", \"preview_targets\": [{\"label\": \"Entry\", \"format\": \"{permalink}\", \"refresh\": true}], \"past_date_behavior\": \"public\", \"future_date_behavior\": \"public\"}','2026-02-16 12:23:35','2026-02-16 12:23:35'),
	(2,'products_home','Products (Home)','{\"dated\": false, \"mount\": null, \"sites\": null, \"slugs\": true, \"inject\": [], \"layout\": \"layout\", \"routes\": \"products/{slug}\", \"sort_dir\": \"asc\", \"template\": \"products_home/show\", \"propagate\": false, \"revisions\": false, \"structure\": null, \"sort_field\": null, \"taxonomies\": [], \"entry_class\": null, \"search_index\": null, \"title_formats\": [], \"default_status\": true, \"origin_behavior\": \"select\", \"preview_targets\": [{\"id\": \"VjVd5gK9\", \"label\": \"Entry\", \"format\": \"{permalink}\", \"refresh\": true}], \"past_date_behavior\": \"public\", \"future_date_behavior\": \"public\"}','2026-03-03 20:19:21','2026-03-03 20:26:37');

/*!40000 ALTER TABLE `collections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table entries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `entries`;

CREATE TABLE `entries` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int DEFAULT NULL,
  `collection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blueprint` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entries_site_index` (`site`),
  KEY `entries_origin_id_index` (`origin_id`),
  KEY `entries_uri_index` (`uri`),
  KEY `entries_date_index` (`date`),
  KEY `entries_order_index` (`order`),
  KEY `entries_collection_index` (`collection`),
  KEY `entries_blueprint_index` (`blueprint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;

INSERT INTO `entries` (`id`, `site`, `origin_id`, `published`, `slug`, `uri`, `date`, `order`, `collection`, `blueprint`, `data`, `created_at`, `updated_at`)
VALUES
	('9a290549-1762-40e8-b336-0512f084ecb1','default',NULL,1,'stapelbox-20-budget-rijplaten','/products/stapelbox-20-budget-rijplaten',NULL,NULL,'products_home','products_home','{\"foto\": \"img/stapelbox-met-kunststof-rijplaten-20mm-1714399010.png\", \"type\": \"Aanbieding\", \"maten\": \"3000 x 1000 x 20 mm\", \"prijs\": \"Voor € 1.790,-\", \"title\": \"Stapelbox + 20 budget rijplaten\", \"updated_by\": \"59176fe1-94c5-4edd-af24-38a1d07ba844\", \"omschrijving\": [{\"type\": \"paragraph\", \"content\": [{\"text\": \"Set: verzinkte stapelbox + 20 kunststof rijplaten\", \"type\": \"text\"}]}]}','2026-03-03 20:48:16','2026-03-03 20:48:59'),
	('9b15ff53-5cbe-442c-8d4f-8d4f4b02bf00','default',NULL,1,'nieuwe-stalen-rijplaten','/products/nieuwe-stalen-rijplaten',NULL,NULL,'products_home','products_home','{\"foto\": \"img/rijplaten-staal.png\", \"type\": \"Aanbieding\", \"maten\": \"5000 x 1500 x14 mm\", \"prijs\": \"Vanaf: € 630,- per plaat\", \"title\": \"Nieuwe stalen rijplaten\", \"extra_info\": \"Tijdelijke aanbieding!\", \"updated_by\": \"59176fe1-94c5-4edd-af24-38a1d07ba844\", \"omschrijving\": [{\"type\": \"paragraph\", \"content\": [{\"text\": \"Stalen rijplaten zijn de sterkste rijplaten in zijn soort. Aanbieding: Zolang de voorraad strekt!\", \"type\": \"text\"}]}]}','2026-03-03 20:25:31','2026-03-03 20:34:52'),
	('home','default',NULL,1,'home','/',NULL,1,'pages','pages','{\"title\": \"Home\", \"content\": \"## Welcome to your brand new Statamic site!\\n\\nNot sure what to do next? Here are a few ideas, but feel free to explore in your own way, in your own time.\\n\\n- [Jump into the Control Panel](/cp) and edit this page or begin setting up your own collections and blueprints.\\n- [Head to the docs](https://statamic.dev) and learn how Statamic works.\\n- [Watch some Statamic videos](https://youtube.com/statamic) on YouTube.\\n- [Join our Discord chat](https://statamic.com/discord) and meet thousands of other Statamic developers.\\n- [Start a discussion](https://github.com/statamic/cms/discussions) and get answers to your questions.\\n- [Star Statamic on Github](https://github.com/statamic/cms) if you enjoy using it!\\n\", \"template\": \"home\", \"updated_by\": \"59176fe1-94c5-4edd-af24-38a1d07ba844\", \"page_content\": [{\"id\": \"EVyDH4ZxN4GCh49lqfjGi\", \"type\": \"home_products\", \"enabled\": true, \"producten\": [{\"id\": \"9MrPaGQSJpnMm2FqBzo9L\", \"foto\": \"img/products/kunststof-rijplaten-xl.png\", \"link\": \"#!\", \"type\": \"new_set\", \"titel\": \"**Kunststof**\\nrijplaten\", \"enabled\": true, \"foto_mobiel\": \"img/products/kunststof-rijplaten-m.png\"}, {\"id\": \"-yOcyCuVQHR8TAGUU2Wl7\", \"foto\": \"img/products/stalen-rijplaten-xl.png\", \"link\": \"#!\", \"type\": \"new_set\", \"titel\": \"**Stalen**\\nrijplaten\", \"enabled\": true, \"foto_mobiel\": \"img/products/stalen-rijplaten-m.png\"}, {\"id\": \"6tFmD5xwcMwCIrPuczQNS\", \"foto\": \"img/products/stempelplaten-xl.webp\", \"link\": \"#!\", \"type\": \"new_set\", \"titel\": \"**Stempel**\\nplaten\", \"enabled\": true, \"foto_mobiel\": \"img/products/stempelplaten-bestellen-m-nl.png\"}], \"tekstkolommen_kolommen\": [{\"id\": \"xedfZcCqHri-SO_a-9txO\", \"type\": \"new_set\", \"enabled\": true}, {\"id\": \"NBTJbAl7FUUdDKoqb0hgM\", \"type\": \"new_set\", \"enabled\": true}]}, {\"id\": \"pRw_zOW_2ak32mD06XNGE\", \"type\": \"tekstkolommen\", \"enabled\": true, \"tekstkolommen_kolommen\": [{\"id\": \"J56GccVLuIywzgd9hjwgk\", \"type\": \"new_set\", \"enabled\": true, \"tekstkolommen_content\": [{\"type\": \"heading\", \"attrs\": {\"level\": 2, \"textAlign\": null}, \"content\": [{\"text\": \"Uw specialist in kunststof rijplaten, stalen rijplaten en stempelplaten.\", \"type\": \"text\"}]}, {\"type\": \"heading\", \"attrs\": {\"level\": 3, \"textAlign\": null}, \"content\": [{\"text\": \"Tegen uiterst scherpe prijzen en met zeer korte levertijden\", \"type\": \"text\", \"marks\": [{\"type\": \"bold\"}]}, {\"text\": \"!\", \"type\": \"text\", \"marks\": [{\"type\": \"bold\"}, {\"type\": \"italic\"}]}]}]}]}, {\"id\": \"o3oxe8O4J0WEWoIjwVYyl\", \"type\": \"tekstkolommen\", \"enabled\": true, \"tekstkolommen_kolommen\": [{\"id\": \"gKuLLF2HRHiqNXYdJNwKK\", \"type\": \"new_set\", \"enabled\": true, \"tekstkolommen_content\": [{\"type\": \"paragraph\", \"attrs\": {\"textAlign\": null}, \"content\": [{\"text\": \"ATS-rijplaten is dé specialist op het gebied van kunststof rijplaten, stalen rijplaten en stempelplaten. We leveren doorgaans binnen 3 werkdagen in Nederland, België en Duitsland. Al jaren is ATS-rijplaten een bekende naam in de wereld van rijplaten.\", \"type\": \"text\"}]}]}, {\"id\": \"fqS58Tnp3F2RNNKxiuTLS\", \"type\": \"new_set\", \"enabled\": true, \"tekstkolommen_content\": [{\"type\": \"paragraph\", \"attrs\": {\"textAlign\": null}, \"content\": [{\"text\": \"We leveren duurzame kunststof rijplaten en stalen rijplaten die tot wel tientallen jaren meegaan. Daarnaast kun je bij ons ook terecht voor handige hulpmiddelen om het werk nog veiliger en efficiënter te laten verlopen.\", \"type\": \"text\"}]}]}]}, {\"id\": \"xm59D03OOYhSEXzlyykNE\", \"type\": \"tekstkolommen\", \"enabled\": true, \"tekstkolommen_kolommen\": [{\"id\": \"6H9S-aXCvI_jY4VcEoPf_\", \"type\": \"new_set\", \"enabled\": true, \"tekstkolommen_content\": [{\"type\": \"paragraph\", \"attrs\": {\"textAlign\": null}, \"content\": [{\"text\": \"Geïnteresseerd in onze rijplaten en hulpmaterialen?\", \"type\": \"text\", \"marks\": [{\"type\": \"bold\"}]}, {\"type\": \"hardBreak\"}, {\"text\": \"Vraag een vrijblijvende \", \"type\": \"text\"}, {\"text\": \"offerte\", \"type\": \"text\", \"marks\": [{\"type\": \"link\", \"attrs\": {\"rel\": null, \"href\": \"https://www.ats-trading.nl/nl/offerte\", \"title\": null, \"target\": null}}]}, {\"text\": \" aan en je ontvangt de offerte binnen twee werkdagen. Nog vragen? Neem dan contact op per \", \"type\": \"text\"}, {\"text\": \"e-mail\", \"type\": \"text\", \"marks\": [{\"type\": \"link\", \"attrs\": {\"rel\": null, \"href\": \"mailto:info@ats-trading.nl\", \"title\": null, \"target\": null}}]}, {\"text\": \" of doe een \", \"type\": \"text\"}, {\"text\": \"terugbelverzoek\", \"type\": \"text\", \"marks\": [{\"type\": \"link\", \"attrs\": {\"rel\": null, \"href\": \"https://www.ats-trading.nl/nl/terugbelverzoek\", \"title\": null, \"target\": null}}]}, {\"text\": \".\", \"type\": \"text\"}, {\"type\": \"hardBreak\"}, {\"type\": \"hardBreak\"}]}, {\"type\": \"paragraph\", \"attrs\": {\"textAlign\": null}, \"content\": [{\"text\": \"Meer over ATS\", \"type\": \"text\", \"marks\": [{\"type\": \"link\", \"attrs\": {\"rel\": null, \"href\": \"#!\", \"title\": \"button\", \"target\": null}}]}, {\"text\": \" \", \"type\": \"text\"}, {\"text\": \"Bekijk en vergelijk\", \"type\": \"text\", \"marks\": [{\"type\": \"link\", \"attrs\": {\"rel\": null, \"href\": \"#!\", \"title\": \"button\", \"target\": null}}]}]}]}, {\"id\": \"Vqh6wxc5xxxJkZ2SFJtVS\", \"type\": \"new_set\", \"enabled\": true}]}, {\"id\": \"p8cedqnn6xj8n6d1QGhAb\", \"type\": \"quote\", \"enabled\": true, \"quote_content\": \"Onze kunststof rijplaten zijn in verschillende standaard afmetingen verkrijgbaar.\"}, {\"id\": \"uNxyQGc9CvXlUqjtUFdmj\", \"type\": \"cta\", \"enabled\": true, \"cta_link\": \"#!\", \"cta_titel\": \"Kunststof rijplaten hebben de mogelijkheid tot het infrezen van uw bedrijfsnaam\", \"cta_content\": \"Mogelijk vanaf 10 stuks // v.a. € 10,- per stuk\", \"cta_link_tag\": \"Bekijk hier enkele voorbeelden\"}, {\"id\": \"h6YJK3MfkurmezChEhWBl\", \"type\": \"divider\", \"enabled\": true}, {\"id\": \"jABBxx_hmXwBSwQVJ09PD\", \"type\": \"producten_latest\", \"enabled\": true}]}','2026-02-16 12:23:35','2026-03-03 20:31:12');

/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table fieldsets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fieldsets`;

CREATE TABLE `fieldsets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fieldsets_handle_unique` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `fieldsets` WRITE;
/*!40000 ALTER TABLE `fieldsets` DISABLE KEYS */;

INSERT INTO `fieldsets` (`id`, `handle`, `data`, `created_at`, `updated_at`)
VALUES
	(1,'home_products','{\"title\": \"Home - Products\", \"fields\": [{\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"new_set\": {\"fields\": [{\"field\": {\"type\": \"markdown\", \"display\": \"Titel\"}, \"handle\": \"titel\"}, {\"field\": {\"type\": \"link\", \"display\": \"Link\"}, \"handle\": \"link\"}, {\"field\": {\"type\": \"assets\", \"display\": \"Foto\", \"container\": \"assets\", \"max_files\": 1}, \"handle\": \"foto\"}, {\"field\": {\"type\": \"assets\", \"display\": \"Foto mobiel\", \"container\": \"assets\", \"max_files\": 1}, \"handle\": \"foto_mobiel\"}], \"display\": \"New Set\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"Producten\", \"max_sets\": 3}, \"handle\": \"producten\"}]}','2026-03-01 16:31:00','2026-03-01 17:40:29'),
	(3,'tekstkolommen','{\"title\": \"Tekstkolommen\", \"fields\": [{\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"new_set\": {\"fields\": [{\"field\": {\"type\": \"bard\", \"buttons\": [\"h2\", \"h3\", \"bold\", \"italic\", \"unorderedlist\", \"orderedlist\", \"removeformat\", \"quote\", \"anchor\", \"image\", \"table\", \"underline\", \"strikethrough\", \"alignleft\", \"aligncenter\", \"alignright\", \"alignjustify\"], \"display\": \"Tekstkolommen - Content\", \"container\": \"assets\", \"word_count\": true, \"reading_time\": true, \"remove_empty_nodes\": false}, \"handle\": \"tekstkolommen_content\"}], \"display\": \"New Set\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"Tekstkolommen - Kolommen\", \"max_sets\": 2}, \"handle\": \"tekstkolommen_kolommen\"}]}','2026-03-01 18:25:03','2026-03-01 18:29:01'),
	(4,'buttons','{\"title\": \"Buttons\", \"fields\": [{\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"new_set\": {\"fields\": [{\"field\": {\"type\": \"link\", \"display\": \"Button link\"}, \"handle\": \"button_link\"}, {\"field\": {\"type\": \"text\", \"display\": \"Button tag\"}, \"handle\": \"button_tag\"}], \"display\": \"New Set\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"Buttons\"}, \"handle\": \"buttons\"}]}','2026-03-03 18:13:23','2026-03-03 18:14:01'),
	(5,'cta','{\"title\": \"CTA\", \"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Titel\"}, \"handle\": \"cta_titel\"}, {\"field\": {\"type\": \"textarea\", \"display\": \"Content\"}, \"handle\": \"cta_content\"}, {\"field\": {\"type\": \"link\", \"display\": \"Link\"}, \"handle\": \"cta_link\"}, {\"field\": {\"type\": \"text\", \"display\": \"Link tag\"}, \"handle\": \"cta_link_tag\"}]}','2026-03-03 18:59:51','2026-03-03 19:13:46'),
	(6,'quote','{\"title\": \"Quote\", \"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Quote content\"}, \"handle\": \"quote_content\"}]}','2026-03-03 19:23:32','2026-03-03 19:23:45'),
	(7,'divider','{\"title\": \"Divider\", \"fields\": []}','2026-03-03 20:08:29','2026-03-03 20:08:29'),
	(8,'producten_latest','{\"title\": \"Producten (latest)\", \"fields\": []}','2026-03-03 20:28:52','2026-03-03 20:30:06');

/*!40000 ALTER TABLE `fieldsets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table form_submissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `form_submissions`;

CREATE TABLE `form_submissions` (
  `id` decimal(14,4) NOT NULL,
  `form` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `form_submissions_id_unique` (`id`),
  UNIQUE KEY `form_submissions_form_created_at_unique` (`form`,`created_at`),
  KEY `form_submissions_form_index` (`form`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table forms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `forms`;

CREATE TABLE `forms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forms_handle_unique` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table global_set_variables
# ------------------------------------------------------------

DROP TABLE IF EXISTS `global_set_variables`;

CREATE TABLE `global_set_variables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `global_set_variables_handle_index` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `global_set_variables` WRITE;
/*!40000 ALTER TABLE `global_set_variables` DISABLE KEYS */;

INSERT INTO `global_set_variables` (`id`, `handle`, `locale`, `data`, `created_at`, `updated_at`)
VALUES
	(2,'bedrijfsinformatie','default','{\"adres\": [{\"type\": \"paragraph\", \"content\": [{\"text\": \"Schiedamsedijk 72\", \"type\": \"text\"}, {\"type\": \"hardBreak\"}, {\"text\": \"3134 KK Vlaardingen\", \"type\": \"text\"}, {\"type\": \"hardBreak\"}, {\"text\": \"Nederland\", \"type\": \"text\"}]}], \"links\": [{\"id\": \"x9nfNUvdOqAU8odPxWqxX\", \"link\": \"#!\", \"type\": \"links\", \"enabled\": true, \"link_tag\": \"Geperste kunststof platen\"}, {\"id\": \"xZNG-UyQEEN3BbkkO7wWW\", \"link\": \"#!\", \"type\": \"links\", \"enabled\": true, \"link_tag\": \"Stalen platen kopen\"}, {\"id\": \"nTStJY30_-MUiZVSH_Jti\", \"link\": \"#!\", \"type\": \"links\", \"enabled\": true, \"link_tag\": \"Kunststof stempelplaten\"}], \"kvk_vat\": [{\"type\": \"paragraph\", \"content\": [{\"text\": \"COC: 56384858\", \"type\": \"text\"}, {\"type\": \"hardBreak\"}, {\"text\": \"VAT: NL852100383B01\", \"type\": \"text\"}]}], \"linkedin\": \"https://nl.linkedin.com/company/esensdesign\", \"disclaimer\": [{\"type\": \"paragraph\", \"content\": [{\"text\": \"Onderdeel van de\", \"type\": \"text\"}, {\"type\": \"hardBreak\"}, {\"text\": \"AVEZAAT Bedrijvengroep\", \"type\": \"text\"}]}], \"e_mailadres\": \"info@ats-trading.nl\", \"footer_logo\": [\"img/avezaat.webp\"], \"yours_truly\": [{\"type\": \"paragraph\", \"content\": [{\"text\": \"Ontwerp en realisatie: \", \"type\": \"text\"}, {\"text\": \"Esens Design\", \"type\": \"text\", \"marks\": [{\"type\": \"link\", \"attrs\": {\"rel\": null, \"href\": \"https://www.esens.nl/\", \"title\": null, \"target\": \"_blank\"}}]}]}], \"bedrijfsnaam\": \"ATS Trading B.V.\", \"openingstijden\": [{\"type\": \"paragraph\", \"content\": [{\"text\": \"Openingstijden\", \"type\": \"text\"}]}], \"telefoonnummer\": \"010 - 437 71 01\", \"titel_blok_links\": \"Contact\", \"titel_blok_midden\": \"Producten\", \"footer_lower_links\": [{\"id\": \"39mzsflzCz5VFFwMvI4F_\", \"type\": \"new_set\", \"enabled\": true, \"footer_lower_link\": \"#!\", \"footer_lower_link_tag\": \"Privacy\"}, {\"id\": \"8ay28S8aVhu13Z-tqvdRL\", \"type\": \"new_set\", \"enabled\": true, \"footer_lower_link\": \"#!\", \"footer_lower_link_tag\": \"Disclaimer\"}, {\"id\": \"IR7hzzk_l8PuG9MOCCbKG\", \"type\": \"new_set\", \"enabled\": true, \"footer_lower_link\": \"#!\", \"footer_lower_link_tag\": \"Cookies\"}, {\"id\": \"pUyAdib5zefiMyTVbM-Hr\", \"type\": \"new_set\", \"enabled\": true, \"footer_lower_link\": \"#!\", \"footer_lower_link_tag\": \"Sitemap\"}, {\"id\": \"qmANZg-IAzgKBKHCm7nLT\", \"type\": \"new_set\", \"enabled\": true, \"footer_lower_link\": \"#!\", \"footer_lower_link_tag\": \"Voorwaarden\"}]}','2026-03-02 19:16:21','2026-03-02 20:24:22');

/*!40000 ALTER TABLE `global_set_variables` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table global_sets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `global_sets`;

CREATE TABLE `global_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `global_sets_handle_unique` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `global_sets` WRITE;
/*!40000 ALTER TABLE `global_sets` DISABLE KEYS */;

INSERT INTO `global_sets` (`id`, `handle`, `title`, `settings`, `created_at`, `updated_at`)
VALUES
	(2,'bedrijfsinformatie','Bedrijfsinformatie','{\"sites\": {\"default\": null}}','2026-03-02 19:16:21','2026-03-02 19:16:21');

/*!40000 ALTER TABLE `global_sets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table job_batches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `job_batches`;

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'0001_01_01_000000_create_users_table',1),
	(2,'0001_01_01_000001_create_cache_table',1),
	(3,'0001_01_01_000002_create_jobs_table',1),
	(4,'2025_07_07_100000_create_addon_settings_table',2),
	(5,'2024_03_07_100000_create_asset_containers_table',3),
	(6,'2024_03_07_100000_create_asset_table',4),
	(7,'2024_03_07_100000_create_blueprints_table',5),
	(8,'2024_03_07_100000_create_collections_table',6),
	(9,'2024_03_07_100000_create_navigation_trees_table',7),
	(10,'2024_03_07_100000_create_entries_table_with_string_ids',8),
	(11,'2024_03_07_100000_create_fieldsets_table',9),
	(12,'2024_03_07_100000_create_forms_table',10),
	(13,'2024_03_07_100000_create_form_submissions_table',11),
	(14,'2024_05_15_100000_modify_form_submissions_id',11),
	(15,'2024_03_07_100000_create_globals_table',12),
	(16,'2024_03_07_100000_create_global_variables_table',13),
	(17,'2024_03_07_100000_create_navigations_table',14),
	(18,'2024_07_16_100000_create_sites_table',15),
	(19,'2024_03_07_100000_create_taxonomies_table',16),
	(20,'2024_03_07_100000_create_terms_table',17),
	(21,'2024_03_07_100000_create_tokens_table',18);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table navigations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `navigations`;

CREATE TABLE `navigations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `navigations_handle_unique` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `navigations` WRITE;
/*!40000 ALTER TABLE `navigations` DISABLE KEYS */;

INSERT INTO `navigations` (`id`, `handle`, `title`, `settings`, `created_at`, `updated_at`)
VALUES
	(1,'main_navigation','Main navigation','{\"max_depth\": null, \"collections\": [], \"expects_root\": false, \"select_across_sites\": false}','2026-02-28 16:34:19','2026-02-28 16:34:19'),
	(2,'header_ctas','Header CTA\'s','{\"max_depth\": null, \"collections\": [], \"expects_root\": false, \"select_across_sites\": false}','2026-03-01 13:04:03','2026-03-01 13:04:03');

/*!40000 ALTER TABLE `navigations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_reset_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_reset_tokens`;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sites`;

CREATE TABLE `sites` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` json NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sites_handle_unique` (`handle`),
  KEY `sites_order_index` (`order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;

INSERT INTO `sites` (`id`, `handle`, `name`, `url`, `locale`, `lang`, `attributes`, `order`, `created_at`, `updated_at`)
VALUES
	(1,'default','{{ config:app:name }}','/','{{ config:app:locale }}','{{ config:app:locale }}','[]',1,'2026-02-28 13:54:17','2026-02-28 13:54:17');

/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table taxonomies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `taxonomies`;

CREATE TABLE `taxonomies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sites` json DEFAULT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taxonomies_handle_unique` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table taxonomy_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `taxonomy_terms`;

CREATE TABLE `taxonomy_terms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `site` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxonomy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taxonomy_terms_slug_taxonomy_site_unique` (`slug`,`taxonomy`,`site`),
  KEY `taxonomy_terms_site_index` (`site`),
  KEY `taxonomy_terms_uri_index` (`uri`),
  KEY `taxonomy_terms_taxonomy_index` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tokens`;

CREATE TABLE `tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handler` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `expire_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokens_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table trees
# ------------------------------------------------------------

DROP TABLE IF EXISTS `trees`;

CREATE TABLE `trees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tree` json DEFAULT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trees_handle_type_locale_unique` (`handle`,`type`,`locale`),
  KEY `trees_type_index` (`type`),
  KEY `trees_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `trees` WRITE;
/*!40000 ALTER TABLE `trees` DISABLE KEYS */;

INSERT INTO `trees` (`id`, `handle`, `type`, `locale`, `tree`, `settings`, `created_at`, `updated_at`)
VALUES
	(1,'pages','collection','default','[{\"entry\": \"home\"}]','[]','2026-02-16 12:23:35','2026-02-16 12:23:35'),
	(2,'main_navigation','navigation','default','[{\"id\": \"bd45a2c8-8ee2-4b80-b5a4-eff19d75e2ab\", \"url\": \"/\", \"title\": \"Home\"}, {\"id\": \"91c0aa0f-d5af-4e7e-b369-5070f8c39998\", \"url\": \"#!\", \"title\": \"Over ATS\"}, {\"id\": \"8b4ff879-b43a-40c0-a52e-4faec08f8003\", \"url\": \"#!\", \"title\": \"Toepassingen\"}, {\"id\": \"b8597cb3-1312-46f5-bca1-bbcbe39110eb\", \"url\": \"#!\", \"title\": \"Accessoires\"}, {\"id\": \"00f8a515-2c14-4b2f-aa24-d5840c0f2bef\", \"url\": \"#!\", \"title\": \"Best verkocht\"}, {\"id\": \"7060a321-8472-4bd7-9dde-abdba6764e52\", \"url\": \"#!\", \"title\": \"Blog\"}, {\"id\": \"b1d35cb6-ce67-430c-9cfc-3bdded3ebe94\", \"url\": \"#!\", \"title\": \"FAQ\"}, {\"id\": \"5ec8f7d8-20a6-4265-b92f-d4cc9a4e7f63\", \"url\": \"#!\", \"title\": \"Contact\"}]','[]','2026-02-28 16:34:19','2026-02-28 16:36:01'),
	(3,'header_ctas','navigation','default','[{\"id\": \"57a108e4-2c3f-41da-883e-2ee31320dbee\", \"url\": \"#!\", \"title\": \"Aanbiedingen\"}, {\"id\": \"fffc3cd8-b08b-42b7-8649-3ec5d9589bf1\", \"url\": \"#!\", \"title\": \"Offerte\"}, {\"id\": \"aa5eebbd-00ed-441d-af05-327497d340a4\", \"url\": \"tel:010 473 71 01\", \"data\": {\"additional_class\": \"is-phone\"}, \"title\": \"T 010 473 71 01\"}]','[]','2026-03-01 13:04:03','2026-03-01 16:08:17');

/*!40000 ALTER TABLE `trees` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
