-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 28, 2015 at 01:34 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `marcador_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'your password', '2015-12-28 12:01:59', 1, 'admin', 'jack', 'sparrow', 'jpirates1@gmail.com', 1, 1, '2015-12-15 12:01:49'),
(2, 'your password', '2015-12-28 11:33:59', 0, 'devat73', 'Devat', 'Karetha', 'jpirates1@gmail.com', 1, 1, '2015-12-28 05:21:41');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2015-12-15 12:13:53', '1', 'admin', 2, 'Changed first_name and last_name.', 4, 1),
(2, '2015-12-28 11:25:41', '1', 'python', 1, '', 7, 1),
(3, '2015-12-28 11:25:51', '2', 'django', 1, '', 7, 1),
(4, '2015-12-28 11:25:58', '3', 'symfony', 1, '', 7, 1),
(5, '2015-12-28 11:26:06', '4', 'None', 1, '', 7, 1),
(6, '2015-12-28 11:26:13', '5', 'database', 1, '', 7, 1),
(7, '2015-12-28 11:26:18', '6', 'HTML', 1, '', 7, 1),
(8, '2015-12-28 11:26:23', '7', 'PHP', 1, '', 7, 1),
(9, '2015-12-28 11:26:28', '8', 'NodeJS', 1, '', 7, 1),
(10, '2015-12-28 11:26:34', '9', 'MVC', 1, '', 7, 1),
(11, '2015-12-28 11:26:38', '10', 'bootstrap', 1, '', 7, 1),
(12, '2015-12-28 11:26:43', '11', 'google', 1, '', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'marcador', 'tag'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2015-12-15 12:00:41'),
(2, 'auth', '0001_initial', '2015-12-15 12:00:47'),
(3, 'admin', '0001_initial', '2015-12-15 12:00:47'),
(4, 'admin', '0002_logentry_remove_auto_add', '2015-12-15 12:00:48'),
(5, 'contenttypes', '0002_remove_content_type_name', '2015-12-15 12:00:48'),
(6, 'auth', '0002_alter_permission_name_max_length', '2015-12-15 12:00:49'),
(7, 'auth', '0003_alter_user_email_max_length', '2015-12-15 12:00:49'),
(8, 'auth', '0004_alter_user_username_opts', '2015-12-15 12:00:49'),
(9, 'auth', '0005_alter_user_last_login_null', '2015-12-15 12:00:50'),
(10, 'auth', '0006_require_contenttypes_0002', '2015-12-15 12:00:50'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2015-12-15 12:00:50'),
(12, 'sessions', '0001_initial', '2015-12-15 12:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('deta9djihlbbsrrid7yk9dplidyujx6e', 'MzQzNmQ1MTM1MzAxN2QyZjUzOWYzM2QwMGVjM2NlNzdkOGM1NGUyNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjZkYzFmOTgyNGY5NGI2ZGQ5NDhkOTgzNWNkMWZmZmVjYjEwMGMzM2EiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-01-11 12:01:59'),
('vtcf8qjqsaivtj381sc68dk7s0nyxoda', 'OWZlYmY4ZDNiODAwMTExNTE0YzVmYTE3MDE3NmFjZDU1Y2NiNmI4NTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ2MzAyNjgyZDU3NjViZjQ3YTBlZWQwMWQ4YzM0NDg5MDk5ZTYyMjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-12-29 12:13:29'),
('vvsyq1vsaf56ua143sfx05f1kz8p3wly', 'ODRiOWU5MTE4NWUxMjNiNTA3NTliZmVkMWY1MWEwMTQ4NTlhNDgzNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjZkZjNmODNmNDc2OGY3YjZhOGVkMDBiYmI2YTg3NjUxYmQ0ZGJkMDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-01-05 05:20:39'),
('z3bg2vij2kf7r3i8jr43atwxt916loz5', 'ODRiOWU5MTE4NWUxMjNiNTA3NTliZmVkMWY1MWEwMTQ4NTlhNDgzNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjZkZjNmODNmNDc2OGY3YjZhOGVkMDBiYmI2YTg3NjUxYmQ0ZGJkMDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-12-29 13:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `marcador_bookmark`
--

CREATE TABLE IF NOT EXISTS `marcador_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `is_public` tinyint(1) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `marcador_bookmark`
--

INSERT INTO `marcador_bookmark` (`id`, `url`, `title`, `description`, `is_public`, `date_created`, `date_updated`, `owner_id`) VALUES
(1, 'http://google.co.in/', 'Google Search', 'This widely used search engine.', 1, '2015-12-28 11:27:40', '2015-12-28 11:27:40', 1),
(2, 'http://www.initializr.com/', 'Initializr', 'Start an HTML5 Boilerplate project in 15 seconds!', 1, '2015-12-28 11:29:10', '2015-12-28 11:29:10', 1),
(3, 'http://www.symfony2cheatsheet.com/', 'Symfony2', 'Symfony2 cheat sheet', 1, '2015-12-28 11:29:42', '2015-12-28 11:29:42', 1),
(4, 'http://todomvc.com/', 'TodoMVC', 'MVC structure programming', 1, '2015-12-28 11:30:20', '2015-12-28 11:30:20', 1),
(5, 'https://github.com/nodejs/node-v0.x-archive/wiki/projects,-applications,-and-companies-using-node', 'NodeJS', 'Projects, Applications, and Companies Using Node', 1, '2015-12-28 11:32:22', '2015-12-28 11:32:22', 1),
(6, 'http://www.nearbuy.com/deals/ahmedabad', 'nearbuy', 'Deals and Coupons for Restaurants, Beauty, Spa, Fitness, Travel, Products & more', 1, '2015-12-28 11:32:54', '2015-12-28 11:32:54', 1),
(7, 'http://www.formget.com/multi-page-form-php/', 'FormGet', 'PHP Multi Page Form | FormGet', 1, '2015-12-28 11:33:21', '2015-12-28 11:33:21', 1),
(8, 'http://api.propiet.com/admin/', 'api.propiet.com/admin/', 'Propiet API\r\nAdmin panel of my django project.', 1, '2015-12-28 11:35:06', '2015-12-28 11:35:06', 2),
(9, 'http://www.propiet.com/', 'propiet.com', 'Live site of my python-symfony project.', 1, '2015-12-28 11:35:44', '2015-12-28 11:35:44', 2),
(10, 'http://localhost:8000/admin/', 'localhost:8000/admin/', 'Admin Panel of my locahost project.\r\nFor present application.', 1, '2015-12-28 11:36:27', '2015-12-28 11:36:27', 2),
(11, 'http://localhost:8000', 'localhost:8000', 'Localhost of my Django project', 1, '2015-12-28 11:37:09', '2015-12-28 11:37:09', 2),
(12, 'http://localhost/phpmyadmin/', 'phpmyadmin', 'My standard database.', 1, '2015-12-28 11:37:40', '2015-12-28 11:38:35', 2);

-- --------------------------------------------------------

--
-- Table structure for table `marcador_bookmark_tags`
--

CREATE TABLE IF NOT EXISTS `marcador_bookmark_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookmark_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `marcador_bookmark_tags`
--

INSERT INTO `marcador_bookmark_tags` (`id`, `bookmark_id`, `tag_id`) VALUES
(1, 1, 11),
(2, 2, 10),
(3, 3, 3),
(4, 4, 9),
(5, 5, 8),
(6, 6, 4),
(7, 7, 6),
(8, 8, 1),
(9, 8, 2),
(10, 9, 1),
(11, 9, 2),
(12, 9, 3),
(13, 9, 5),
(14, 10, 1),
(15, 10, 2),
(16, 11, 5),
(17, 12, 5);

-- --------------------------------------------------------

--
-- Table structure for table `marcador_tag`
--

CREATE TABLE IF NOT EXISTS `marcador_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `marcador_tag`
--

INSERT INTO `marcador_tag` (`id`, `name`) VALUES
(1, 'python'),
(2, 'django'),
(3, 'symfony'),
(4, 'None'),
(5, 'database'),
(6, 'HTML'),
(7, 'PHP'),
(8, 'NodeJS'),
(9, 'MVC'),
(10, 'bootstrap'),
(11, 'google');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
