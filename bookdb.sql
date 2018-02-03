-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 03, 2018 at 11:00 PM
-- Server version: 5.5.56-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add user', 2, 'add_user'),
(5, 'Can change user', 2, 'change_user'),
(6, 'Can delete user', 2, 'delete_user'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add permission', 4, 'add_permission'),
(11, 'Can change permission', 4, 'change_permission'),
(12, 'Can delete permission', 4, 'delete_permission'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add user_auther', 7, 'add_user_auther'),
(20, 'Can change user_auther', 7, 'change_user_auther'),
(21, 'Can delete user_auther', 7, 'delete_user_auther'),
(22, 'Can add category', 8, 'add_category'),
(23, 'Can change category', 8, 'change_category'),
(24, 'Can delete category', 8, 'delete_category'),
(25, 'Can add auther', 9, 'add_auther'),
(26, 'Can change auther', 9, 'change_auther'),
(27, 'Can delete auther', 9, 'delete_auther'),
(28, 'Can add user_book', 10, 'add_user_book'),
(29, 'Can change user_book', 10, 'change_user_book'),
(30, 'Can delete user_book', 10, 'delete_user_book'),
(31, 'Can add book', 11, 'add_book'),
(32, 'Can change book', 11, 'change_book'),
(33, 'Can delete book', 11, 'delete_book'),
(34, 'Can add category_book', 12, 'add_category_book'),
(35, 'Can change category_book', 12, 'change_category_book'),
(36, 'Can delete category_book', 12, 'delete_category_book'),
(37, 'Can add cat_user', 13, 'add_cat_user'),
(38, 'Can change cat_user', 13, 'change_cat_user'),
(39, 'Can delete cat_user', 13, 'delete_cat_user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$FsAmXK10GIIA$OJv/Ib1wJlU7sOh/HnGBz/wk0epRLwevMJoQ2ri+dkk=', '2018-02-03 22:57:02', 1, 'minanasr', '', '', 'menahemaya@yahoo.com', 1, 1, '2018-02-03 22:56:54');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books_auther`
--

CREATE TABLE IF NOT EXISTS `books_auther` (
  `auther_id` int(11) NOT NULL,
  `auther_name` varchar(200) NOT NULL,
  `Dob` date NOT NULL,
  `Bio` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `contact` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_auther`
--

INSERT INTO `books_auther` (`auther_id`, `auther_name`, `Dob`, `Bio`, `image`, `contact`) VALUES
(1, 'Mina', '2017-04-05', 'he is a great writer', 'books/images/Mina.jpg', 'menahemaya@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `books_book`
--

CREATE TABLE IF NOT EXISTS `books_book` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(200) NOT NULL,
  `published_at` date NOT NULL,
  `country` varchar(100) NOT NULL,
  `link` varchar(1000) NOT NULL,
  `summary` varchar(1000) NOT NULL,
  `image` varchar(100) NOT NULL,
  `author_id_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_book`
--

INSERT INTO `books_book` (`book_id`, `book_name`, `published_at`, `country`, `link`, `summary`, `image`, `author_id_id`) VALUES
(1, 'hello world', '2018-02-13', 'Egypt', 'https://www.facebook.com/', 'great', 'books/images/1.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `books_category`
--

CREATE TABLE IF NOT EXISTS `books_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books_category_book`
--

CREATE TABLE IF NOT EXISTS `books_category_book` (
  `id` int(11) NOT NULL,
  `book_id_id` int(11) NOT NULL,
  `category_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books_cat_user`
--

CREATE TABLE IF NOT EXISTS `books_cat_user` (
  `id` int(11) NOT NULL,
  `category_id_id` int(11) NOT NULL,
  `user_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books_user_auther`
--

CREATE TABLE IF NOT EXISTS `books_user_auther` (
  `id` int(11) NOT NULL,
  `auther_id_id` int(11) NOT NULL,
  `user_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books_user_book`
--

CREATE TABLE IF NOT EXISTS `books_user_book` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `book_id_id` int(11) NOT NULL,
  `user_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-02-03 22:58:18', '1', 'Mina', 1, '[{"added": {}}]', 9, 1),
(2, '2018-02-03 22:58:52', '1', 'hello world', 1, '[{"added": {}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(4, 'auth', 'permission'),
(2, 'auth', 'user'),
(9, 'books', 'auther'),
(11, 'books', 'book'),
(8, 'books', 'category'),
(12, 'books', 'category_book'),
(13, 'books', 'cat_user'),
(7, 'books', 'user_auther'),
(10, 'books', 'user_book'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-02-03 22:56:10'),
(2, 'auth', '0001_initial', '2018-02-03 22:56:12'),
(3, 'admin', '0001_initial', '2018-02-03 22:56:12'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-02-03 22:56:12'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-02-03 22:56:12'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-02-03 22:56:12'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-02-03 22:56:12'),
(8, 'auth', '0004_alter_user_username_opts', '2018-02-03 22:56:12'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-02-03 22:56:13'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-02-03 22:56:13'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-02-03 22:56:13'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-02-03 22:56:13'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-02-03 22:56:13'),
(14, 'books', '0001_initial', '2018-02-03 22:56:15'),
(15, 'sessions', '0001_initial', '2018-02-03 22:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('t3h82xxbw7dep8btmwxe0mkm0aqjtfmu', 'MDRhNzhkOTMyY2YzOTQyOThjNTAyZGU3MjE5NWRmOWZlMWQzNzY0Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIxNzE4MmZjOGQzMjIyNGRiZGM4Y2JjNzVkNDMzNDk0MzIzOTk1NTU3In0=', '2018-02-17 22:57:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `books_auther`
--
ALTER TABLE `books_auther`
  ADD PRIMARY KEY (`auther_id`);

--
-- Indexes for table `books_book`
--
ALTER TABLE `books_book`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `books_book_author_id_id_78aac9b7_fk_books_auther_auther_id` (`author_id_id`);

--
-- Indexes for table `books_category`
--
ALTER TABLE `books_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `books_category_book`
--
ALTER TABLE `books_category_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_book_book_id_id_1fbba076_fk_books_book_book_id` (`book_id_id`),
  ADD KEY `books_category_book_category_id_id_b8347154_fk_books_cat` (`category_id_id`);

--
-- Indexes for table `books_cat_user`
--
ALTER TABLE `books_cat_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_cat_user_category_id_id_a139fb3c_fk_books_cat` (`category_id_id`),
  ADD KEY `books_cat_user_user_id_id_1c60dbe5_fk_auth_user_id` (`user_id_id`);

--
-- Indexes for table `books_user_auther`
--
ALTER TABLE `books_user_auther`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_user_auther_auther_id_id_ec376ad9_fk_books_aut` (`auther_id_id`),
  ADD KEY `books_user_auther_user_id_id_b09a9556_fk_auth_user_id` (`user_id_id`);

--
-- Indexes for table `books_user_book`
--
ALTER TABLE `books_user_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_user_book_book_id_id_723bb49c_fk_books_book_book_id` (`book_id_id`),
  ADD KEY `books_user_book_user_id_id_11d60fab_fk_auth_user_id` (`user_id_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `books_auther`
--
ALTER TABLE `books_auther`
  MODIFY `auther_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `books_book`
--
ALTER TABLE `books_book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `books_category`
--
ALTER TABLE `books_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `books_category_book`
--
ALTER TABLE `books_category_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `books_cat_user`
--
ALTER TABLE `books_cat_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `books_user_auther`
--
ALTER TABLE `books_user_auther`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `books_user_book`
--
ALTER TABLE `books_user_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `books_book`
--
ALTER TABLE `books_book`
  ADD CONSTRAINT `books_book_author_id_id_78aac9b7_fk_books_auther_auther_id` FOREIGN KEY (`author_id_id`) REFERENCES `books_auther` (`auther_id`);

--
-- Constraints for table `books_category_book`
--
ALTER TABLE `books_category_book`
  ADD CONSTRAINT `books_category_book_category_id_id_b8347154_fk_books_cat` FOREIGN KEY (`category_id_id`) REFERENCES `books_category` (`category_id`),
  ADD CONSTRAINT `books_category_book_book_id_id_1fbba076_fk_books_book_book_id` FOREIGN KEY (`book_id_id`) REFERENCES `books_book` (`book_id`);

--
-- Constraints for table `books_cat_user`
--
ALTER TABLE `books_cat_user`
  ADD CONSTRAINT `books_cat_user_user_id_id_1c60dbe5_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `books_cat_user_category_id_id_a139fb3c_fk_books_cat` FOREIGN KEY (`category_id_id`) REFERENCES `books_category` (`category_id`);

--
-- Constraints for table `books_user_auther`
--
ALTER TABLE `books_user_auther`
  ADD CONSTRAINT `books_user_auther_user_id_id_b09a9556_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `books_user_auther_auther_id_id_ec376ad9_fk_books_aut` FOREIGN KEY (`auther_id_id`) REFERENCES `books_auther` (`auther_id`);

--
-- Constraints for table `books_user_book`
--
ALTER TABLE `books_user_book`
  ADD CONSTRAINT `books_user_book_user_id_id_11d60fab_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `books_user_book_book_id_id_723bb49c_fk_books_book_book_id` FOREIGN KEY (`book_id_id`) REFERENCES `books_book` (`book_id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
