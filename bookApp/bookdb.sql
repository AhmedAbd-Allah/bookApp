-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 09, 2018 at 10:49 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

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
(19, 'Can add author', 7, 'add_author'),
(20, 'Can change author', 7, 'change_author'),
(21, 'Can delete author', 7, 'delete_author'),
(22, 'Can add category', 8, 'add_category'),
(23, 'Can change category', 8, 'change_category'),
(24, 'Can delete category', 8, 'delete_category'),
(25, 'Can add user_author', 9, 'add_user_author'),
(26, 'Can change user_author', 9, 'change_user_author'),
(27, 'Can delete user_author', 9, 'delete_user_author'),
(28, 'Can add book', 10, 'add_book'),
(29, 'Can change book', 10, 'change_book'),
(30, 'Can delete book', 10, 'delete_book'),
(31, 'Can add profile', 11, 'add_profile'),
(32, 'Can change profile', 11, 'change_profile'),
(33, 'Can delete profile', 11, 'delete_profile'),
(34, 'Can add category_book', 12, 'add_category_book'),
(35, 'Can change category_book', 12, 'change_category_book'),
(36, 'Can delete category_book', 12, 'delete_category_book'),
(37, 'Can add cat_user', 13, 'add_cat_user'),
(38, 'Can change cat_user', 13, 'change_cat_user'),
(39, 'Can delete cat_user', 13, 'delete_cat_user'),
(40, 'Can add user_book', 14, 'add_user_book'),
(41, 'Can change user_book', 14, 'change_user_book'),
(42, 'Can delete user_book', 14, 'delete_user_book');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$100000$m0aQWJknvE8r$blceTL7zglCwyYC35NNFURvO06vO4H4ZO6CtWZjLCt8=', '2018-02-09 22:36:01', 1, 'minanasr', 'mina', 'nasrr', 'menahemaya@yahoo.com', 1, 1, '2018-02-06 08:52:25'),
(9, 'pbkdf2_sha256$100000$7BfrHD4TrXvq$/diZj3A3VBwxmROZIdGBGbjdmWslUn4iX8OMPhsgUbU=', '2018-02-09 22:48:54', 0, 'ahmedkhamis', '', '', '', 0, 1, '2018-02-09 16:43:57'),
(10, 'pbkdf2_sha256$100000$E6O4dcFgBvKl$ywmLFT/QW0jOBpgtq3zFcXoXTfOaH5SV2j2xiyVdIMw=', '2018-02-09 22:48:09', 0, 'ahmedabdallah', 'ahmed', 'abdallah', 'abdallah@gmail.com', 0, 1, '2018-02-09 16:45:07');

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
-- Table structure for table `books_author`
--

CREATE TABLE IF NOT EXISTS `books_author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(200) NOT NULL,
  `Dob` date NOT NULL,
  `Bio` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `contact` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_author`
--

INSERT INTO `books_author` (`author_id`, `author_name`, `Dob`, `Bio`, `image`, `contact`) VALUES
(6, 'Charles Dickens', '2015-12-08', 'A great English Novel Writer', 'books/images/authors/Dickens_Gurney_head.jpg', 'charlesdickens@RIP.com'),
(7, 'Shakespeare', '2018-02-21', 'My favourite novel and poems writer', 'books/images/authors/shakespeare.jpg', 'shakespeare@RIP.com'),
(8, 'Paolo Couelho', '2018-02-22', 'is a novel by Brazilian author Paulo Coelho which was first published in 1988. Originally written in Portuguese, it became an international bestseller translated into some 70 languages as of 2016.[1][2] An allegorical novel, The Alchemist follows a young Andalusian shepherd in his journey to the pyramids of Egypt, after having a recurring dream of finding treasure there.', 'books/images/authors/paulo-coelho.jpg', 'Paolocoelho@RIP.com'),
(9, 'Agatha Christie', '2018-02-24', 'she is an English writer. She is known for her 66 detective novels and 14 short story collections, particularly those revolving around her fictional detectives Hercule Poirot and Miss Marple. Christie also wrote the world''s longest-running play, a murder mystery, The Mousetrap, and six romances under the name Mary Westmacott. In 1971 she was elevated to Dame Commander of the Order of the British Empire (DBE) for her contribution to literature.', 'books/images/authors/agatha-christie-e1505461541415.jpg', 'Agathachristie@RIP.com'),
(10, 'Ernest Hemengway', '2017-07-12', 'he is an American novelist, short story writer, and journalist. His economical and understated style had a strong influence on 20th-century fiction, while his life of adventure and his public image influenced later generations. Hemingway produced most of his work between the mid-1920s and the mid-1950s, and won the Nobel Prize in Literature in 1954', 'books/images/authors/450px-Ernest_Hemingway_1923_passport_photo.jpg', 'ernesthemngwat@RIP.com');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_book`
--

INSERT INTO `books_book` (`book_id`, `book_name`, `published_at`, `country`, `link`, `summary`, `image`, `author_id_id`) VALUES
(3, 'Hamlet', '2018-02-19', 'UK', 'http://shakespeare.mit.edu/hamlet/full.html', 'a very famous play of shakespeare', 'books/images/books/5a43a3e23efa648e7c88f6461c4b1633.jpg', 7),
(4, 'The Haunted House', '2018-02-16', 'UK', 'https://en.wikipedia.org/wiki/The_Haunted_House_(story)', 'The story appeared in the Extra Christmas Number on 13 December 1859. Dickens began a tradition of Christmas publications with A Christmas Carol in 1843 and his Christmas stories soon became a national institution. The Haunted House was his 1859 offering', 'books/images/books/51AUfUp9TVL._SX310_BO1204203200_.jpg', 6),
(5, 'The Merchant Of Venice', '2018-02-05', 'Italy', 'http://shakespeare.mit.edu/merchant/full.html', 'ajsd;ajffalfm;dlfmld;fnw;ekfwelf', 'books/images/books/8399726a0a47849af120c6d928f47e94--cover-design-book-covers.jpg', 7),
(6, 'The Alchemist', '2018-02-09', 'Brazil', 'https://docs.djangoproject.com/en/1.7/ref/templates/', '[ls[kspk[apdadmlasmd;as', 'books/images/books/tumblr_m5hlp1SgUb1qbaom0.jpg', 8),
(7, 'Oliver Twist', '2018-02-22', 'USA', 'https://www.planetebook.com/ebooks/Oliver-Twist.pdf', 'lasjxsmal;sxas', 'books/images/books/51QlFshMbfL._SX360_BO1204203200_.jpg', 6),
(8, 'The Supreme Gidt', '2018-02-16', 'Portugal', 'https://www.amazon.com/Supreme-Gift-Paulo-Coelho/dp/1519006462', 'lmdelfmlemgwekngw,asdlvfLE WKe WEFA''SD.A\\''SD', 'books/images/books/the-supreme-gift-by-paulo-coelho.jpg', 8),
(9, 'Death On The Nile', '2018-02-14', 'Egypt', 'https://en.wikipedia.org/wiki/Death_on_the_Nile', 'knfkwenfgjbgslngklnfqkanfanflkasna', 'books/images/books/Death-on-the-Nile1.jpeg', 9),
(10, 'Macbeth', '2018-02-09', 'UK', 'https://en.wikipedia.org/wiki/Macbeth', 'lsmcalmfqk;nfkalsnlksda', 'books/images/books/2ddec1cafd72401e5ff7ebd0b3202f53.jpg', 7),
(11, 'The Tempest', '2018-02-14', 'UK', 'https://en.wikipedia.org/wiki/The_Tempest', '.,a cka ckansasknd;sdma;ls', 'books/images/books/a70618ed1d81a045a6aa63ad2c5f2434--edmund-dulac-william-shakespeare.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `books_category`
--

CREATE TABLE IF NOT EXISTS `books_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_category`
--

INSERT INTO `books_category` (`category_id`, `category_name`) VALUES
(1, 'Art'),
(2, 'Romance'),
(3, 'Action'),
(4, 'Science fiction'),
(5, 'Drama'),
(6, 'Politics');

-- --------------------------------------------------------

--
-- Table structure for table `books_category_book`
--

CREATE TABLE IF NOT EXISTS `books_category_book` (
  `id` int(11) NOT NULL,
  `book_id_id` int(11) NOT NULL,
  `category_id_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_category_book`
--

INSERT INTO `books_category_book` (`id`, `book_id_id`, `category_id_id`) VALUES
(5, 3, 5),
(6, 7, 4),
(7, 6, 4),
(8, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `books_cat_user`
--

CREATE TABLE IF NOT EXISTS `books_cat_user` (
  `id` int(11) NOT NULL,
  `category_id_id` int(11) NOT NULL,
  `user_id_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_cat_user`
--

INSERT INTO `books_cat_user` (`id`, `category_id_id`, `user_id_id`) VALUES
(4, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `books_profile`
--

CREATE TABLE IF NOT EXISTS `books_profile` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_profile`
--

INSERT INTO `books_profile` (`id`, `image`, `user_id`) VALUES
(2, 'books/images/users/user1.png', 2),
(9, 'books/images/users/casual-user---no-circle.jpg', 9),
(10, 'books/images/users/1195445301811339265dagobert83_female_user_icon.svg.med.png', 10);

-- --------------------------------------------------------

--
-- Table structure for table `books_user_author`
--

CREATE TABLE IF NOT EXISTS `books_user_author` (
  `id` int(11) NOT NULL,
  `author_id_id` int(11) NOT NULL,
  `user_id_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_user_author`
--

INSERT INTO `books_user_author` (`id`, `author_id_id`, `user_id_id`) VALUES
(6, 7, 2),
(7, 10, 9),
(8, 9, 10),
(9, 9, 2),
(10, 8, 2),
(11, 6, 9),
(12, 6, 10);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_user_book`
--

INSERT INTO `books_user_book` (`id`, `status`, `rate`, `book_id_id`, `user_id_id`) VALUES
(4, 'r', '3', 10, 2),
(5, 'w', '5', 7, 2),
(6, 'w', '4', 3, 2),
(7, 'r', '5', 5, 2),
(8, 'n', '2', 6, 2),
(9, 'r', '5', 8, 9),
(10, 'w', '5', 10, 10),
(11, 'r', '5', 11, 9),
(12, 'w', '4', 5, 9),
(13, 'w', '5', 4, 10);

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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-02-06 21:51:21', '6', 'sarahhisham', 3, '', 2, 2),
(2, '2018-02-06 22:51:25', '1', 'george', 1, '[{"added": {}}]', 7, 2),
(3, '2018-02-07 00:46:30', '2', 'mina', 1, '[{"added": {}}]', 7, 2),
(4, '2018-02-07 01:25:23', '3', 'maro', 1, '[{"added": {}}]', 7, 2),
(5, '2018-02-07 01:53:41', '1', 'hamlet', 1, '[{"added": {}}]', 10, 2),
(6, '2018-02-07 20:42:59', '1', 'User_author object (1)', 1, '[{"added": {}}]', 9, 2),
(7, '2018-02-08 14:25:01', '8', 'davidsalib', 2, '[{"changed": {"fields": ["image"]}}]', 11, 2),
(8, '2018-02-08 18:25:49', '2', 'the tales of two cicties', 1, '[{"added": {}}]', 10, 2),
(9, '2018-02-08 20:39:55', '1', 'Art', 1, '[{"added": {}}]', 8, 2),
(10, '2018-02-08 20:40:01', '2', 'Romance', 1, '[{"added": {}}]', 8, 2),
(11, '2018-02-08 20:40:06', '3', 'Action', 1, '[{"added": {}}]', 8, 2),
(12, '2018-02-08 20:40:18', '4', 'Science fiction', 1, '[{"added": {}}]', 8, 2),
(13, '2018-02-08 20:40:23', '5', 'Drama', 1, '[{"added": {}}]', 8, 2),
(14, '2018-02-08 20:40:32', '6', 'Politics', 1, '[{"added": {}}]', 8, 2),
(15, '2018-02-08 21:56:08', '1', 'Category_book object (1)', 1, '[{"added": {}}]', 12, 2),
(16, '2018-02-08 21:56:16', '2', 'Category_book object (2)', 1, '[{"added": {}}]', 12, 2),
(17, '2018-02-08 21:56:25', '3', 'Category_book object (3)', 1, '[{"added": {}}]', 12, 2),
(18, '2018-02-08 21:56:35', '4', 'Category_book object (4)', 1, '[{"added": {}}]', 12, 2),
(19, '2018-02-08 22:09:49', '4', 'hossam', 1, '[{"added": {}}]', 7, 2),
(20, '2018-02-08 22:10:40', '5', 'khamis', 1, '[{"added": {}}]', 7, 2),
(21, '2018-02-09 15:34:56', '1', 'george', 2, '[{"changed": {"fields": ["image"]}}]', 7, 2),
(22, '2018-02-09 15:35:21', '3', 'maro', 2, '[{"changed": {"fields": ["image"]}}]', 7, 2),
(23, '2018-02-09 15:35:28', '3', 'maro', 2, '[]', 7, 2),
(24, '2018-02-09 15:35:32', '3', 'maro', 2, '[]', 7, 2),
(25, '2018-02-09 15:35:53', '2', 'mina', 2, '[{"changed": {"fields": ["image"]}}]', 7, 2),
(26, '2018-02-09 15:46:49', '2', 'the tales of two cicties', 2, '[{"changed": {"fields": ["image"]}}]', 10, 2),
(27, '2018-02-09 15:55:49', '2', 'the tales of two cicties', 2, '[{"changed": {"fields": ["image"]}}]', 10, 2),
(28, '2018-02-09 15:56:10', '1', 'hamlet', 2, '[{"changed": {"fields": ["image"]}}]', 10, 2),
(29, '2018-02-09 16:40:40', '3', 'ahmedabdallah', 3, '', 2, 2),
(30, '2018-02-09 16:40:40', '1', 'ahmedkhamis', 3, '', 2, 2),
(31, '2018-02-09 16:40:40', '8', 'davidsalib', 3, '', 2, 2),
(32, '2018-02-09 16:40:40', '4', 'georgesamir', 3, '', 2, 2),
(33, '2018-02-09 16:40:40', '5', 'hello', 3, '', 2, 2),
(34, '2018-02-09 16:40:40', '7', 'sarahhisham', 3, '', 2, 2),
(35, '2018-02-09 16:43:57', '9', 'ahmedkhamis', 1, '[{"added": {}}]', 2, 2),
(36, '2018-02-09 16:46:32', '9', 'ahmedkhamis', 2, '[{"changed": {"fields": ["image"]}}]', 11, 2),
(37, '2018-02-09 20:21:25', '1', 'User_book object (1)', 1, '[{"added": {}}]', 14, 2),
(38, '2018-02-09 20:21:38', '2', 'User_book object (2)', 1, '[{"added": {}}]', 14, 2),
(39, '2018-02-09 20:21:48', '3', 'User_book object (3)', 1, '[{"added": {}}]', 14, 2),
(40, '2018-02-09 20:22:07', '1', 'Cat_user object (1)', 1, '[{"added": {}}]', 13, 2),
(41, '2018-02-09 20:22:13', '2', 'Cat_user object (2)', 1, '[{"added": {}}]', 13, 2),
(42, '2018-02-09 20:22:18', '3', 'Cat_user object (3)', 1, '[{"added": {}}]', 13, 2),
(43, '2018-02-09 20:22:38', '2', 'User_author object (2)', 1, '[{"added": {}}]', 9, 2),
(44, '2018-02-09 20:22:43', '3', 'User_author object (3)', 1, '[{"added": {}}]', 9, 2),
(45, '2018-02-09 20:22:48', '4', 'User_author object (4)', 1, '[{"added": {}}]', 9, 2),
(46, '2018-02-09 20:22:54', '5', 'User_author object (5)', 1, '[{"added": {}}]', 9, 2),
(47, '2018-02-09 22:13:10', '5', 'khamis', 3, '', 7, 2),
(48, '2018-02-09 22:13:10', '4', 'hossam', 3, '', 7, 2),
(49, '2018-02-09 22:13:10', '3', 'maro', 3, '', 7, 2),
(50, '2018-02-09 22:13:10', '2', 'mina', 3, '', 7, 2),
(51, '2018-02-09 22:13:10', '1', 'george', 3, '', 7, 2),
(52, '2018-02-09 22:13:28', '3', 'Cat_user object (3)', 3, '', 13, 2),
(53, '2018-02-09 22:13:28', '2', 'Cat_user object (2)', 3, '', 13, 2),
(54, '2018-02-09 22:13:28', '1', 'Cat_user object (1)', 3, '', 13, 2),
(55, '2018-02-09 22:17:54', '6', 'Charles Dickens', 1, '[{"added": {}}]', 7, 2),
(56, '2018-02-09 22:18:54', '7', 'William Shakespeare', 1, '[{"added": {}}]', 7, 2),
(57, '2018-02-09 22:20:42', '8', 'Paolo Couelho', 1, '[{"added": {}}]', 7, 2),
(58, '2018-02-09 22:22:09', '9', 'Agatha Christie', 1, '[{"added": {}}]', 7, 2),
(59, '2018-02-09 22:23:26', '10', 'Ernest Hemengway', 1, '[{"added": {}}]', 7, 2),
(60, '2018-02-09 22:24:44', '3', 'Hamlet', 1, '[{"added": {}}]', 10, 2),
(61, '2018-02-09 22:26:06', '4', 'The Haunted House', 1, '[{"added": {}}]', 10, 2),
(62, '2018-02-09 22:29:04', '5', 'The Merchant Of Venice', 1, '[{"added": {}}]', 10, 2),
(63, '2018-02-09 22:30:18', '6', 'The Alchemist', 1, '[{"added": {}}]', 10, 2),
(64, '2018-02-09 22:31:14', '7', 'Oliver Twist', 1, '[{"added": {}}]', 10, 2),
(65, '2018-02-09 22:33:25', '7', 'William Shakespeare', 2, '[{"changed": {"fields": ["image"]}}]', 7, 2),
(66, '2018-02-09 22:33:54', '7', 'Shakespeare', 2, '[{"changed": {"fields": ["author_name"]}}]', 7, 2),
(67, '2018-02-09 22:36:20', '4', 'Cat_user object (4)', 1, '[{"added": {}}]', 13, 2),
(68, '2018-02-09 22:36:36', '5', 'Category_book object (5)', 1, '[{"added": {}}]', 12, 2),
(69, '2018-02-09 22:36:41', '6', 'Category_book object (6)', 1, '[{"added": {}}]', 12, 2),
(70, '2018-02-09 22:36:46', '7', 'Category_book object (7)', 1, '[{"added": {}}]', 12, 2),
(71, '2018-02-09 22:36:52', '8', 'Category_book object (8)', 1, '[{"added": {}}]', 12, 2),
(72, '2018-02-09 22:39:40', '8', 'The Supreme Gidt', 1, '[{"added": {}}]', 10, 2),
(73, '2018-02-09 22:40:45', '9', 'Death On The Nile', 1, '[{"added": {}}]', 10, 2),
(74, '2018-02-09 22:41:29', '10', 'Macbeth', 1, '[{"added": {}}]', 10, 2),
(75, '2018-02-09 22:42:20', '11', 'The Tempest', 1, '[{"added": {}}]', 10, 2),
(76, '2018-02-09 22:42:35', '6', 'User_author object (6)', 1, '[{"added": {}}]', 9, 2),
(77, '2018-02-09 22:42:39', '7', 'User_author object (7)', 1, '[{"added": {}}]', 9, 2),
(78, '2018-02-09 22:42:43', '8', 'User_author object (8)', 1, '[{"added": {}}]', 9, 2),
(79, '2018-02-09 22:42:48', '9', 'User_author object (9)', 1, '[{"added": {}}]', 9, 2),
(80, '2018-02-09 22:42:52', '10', 'User_author object (10)', 1, '[{"added": {}}]', 9, 2),
(81, '2018-02-09 22:42:58', '11', 'User_author object (11)', 1, '[{"added": {}}]', 9, 2),
(82, '2018-02-09 22:43:02', '12', 'User_author object (12)', 1, '[{"added": {}}]', 9, 2),
(83, '2018-02-09 22:43:17', '4', 'User_book object (4)', 1, '[{"added": {}}]', 14, 2),
(84, '2018-02-09 22:43:29', '5', 'User_book object (5)', 1, '[{"added": {}}]', 14, 2),
(85, '2018-02-09 22:43:44', '6', 'User_book object (6)', 1, '[{"added": {}}]', 14, 2),
(86, '2018-02-09 22:43:57', '7', 'User_book object (7)', 1, '[{"added": {}}]', 14, 2),
(87, '2018-02-09 22:44:07', '8', 'User_book object (8)', 1, '[{"added": {}}]', 14, 2),
(88, '2018-02-09 22:44:15', '9', 'User_book object (9)', 1, '[{"added": {}}]', 14, 2),
(89, '2018-02-09 22:44:23', '10', 'User_book object (10)', 1, '[{"added": {}}]', 14, 2),
(90, '2018-02-09 22:44:30', '11', 'User_book object (11)', 1, '[{"added": {}}]', 14, 2),
(91, '2018-02-09 22:44:41', '12', 'User_book object (12)', 1, '[{"added": {}}]', 14, 2),
(92, '2018-02-09 22:44:50', '13', 'User_book object (13)', 1, '[{"added": {}}]', 14, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(4, 'auth', 'permission'),
(2, 'auth', 'user'),
(7, 'books', 'author'),
(10, 'books', 'book'),
(8, 'books', 'category'),
(12, 'books', 'category_book'),
(13, 'books', 'cat_user'),
(11, 'books', 'profile'),
(9, 'books', 'user_author'),
(14, 'books', 'user_book'),
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
(1, 'contenttypes', '0001_initial', '2018-02-06 03:40:14'),
(2, 'auth', '0001_initial', '2018-02-06 03:40:15'),
(3, 'admin', '0001_initial', '2018-02-06 03:40:15'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-02-06 03:40:16'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-02-06 03:40:16'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-02-06 03:40:16'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-02-06 03:40:16'),
(8, 'auth', '0004_alter_user_username_opts', '2018-02-06 03:40:16'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-02-06 03:40:16'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-02-06 03:40:16'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-02-06 03:40:16'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-02-06 03:40:17'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-02-06 03:40:17'),
(14, 'books', '0001_initial', '2018-02-06 03:40:19'),
(15, 'sessions', '0001_initial', '2018-02-06 03:40:19');

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
('1luxy591vu6c6yyxxno3o1gtqmg5j9mp', 'N2M3ZTQ1ZGQwNWE4Njg2OTgwZGY4MjYxYjE2MGQ0OGJmMzhmY2ZiYzp7fQ==', '2018-02-23 16:44:28'),
('1ok2mv7idfdwyz28tp7ads8of80bmx9m', 'N2M3ZTQ1ZGQwNWE4Njg2OTgwZGY4MjYxYjE2MGQ0OGJmMzhmY2ZiYzp7fQ==', '2018-02-23 21:03:26'),
('8pnsdw7b43krhh1y87n3hl4l305y1hs8', 'N2M3ZTQ1ZGQwNWE4Njg2OTgwZGY4MjYxYjE2MGQ0OGJmMzhmY2ZiYzp7fQ==', '2018-02-23 16:28:42'),
('901qml3pmmd9iesondwogw05e5q5vasv', 'N2M3ZTQ1ZGQwNWE4Njg2OTgwZGY4MjYxYjE2MGQ0OGJmMzhmY2ZiYzp7fQ==', '2018-02-23 16:39:21'),
('btt58uyok54idrz29gnikvgfnxgdlz44', 'N2M3ZTQ1ZGQwNWE4Njg2OTgwZGY4MjYxYjE2MGQ0OGJmMzhmY2ZiYzp7fQ==', '2018-02-23 16:21:31'),
('cvcm220xvza4b721axn4v8vwpc1254yg', 'N2M3ZTQ1ZGQwNWE4Njg2OTgwZGY4MjYxYjE2MGQ0OGJmMzhmY2ZiYzp7fQ==', '2018-02-23 17:00:16'),
('e78bugv4evk0fh6xkbicz1xc00pf6xtx', 'ZThkNjUyNjI4MzRhMjA4ZGY5N2RkYmJkNzBkY2RmZDA4YjMxNTQ5NDp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NWMyNjY2OTk4MDcwOWVlN2JiNDk0YTZkNzgzMGE2OWNiYTE1ODg2In0=', '2018-02-23 22:48:54'),
('hommrdlk6lbfj8d1qb23u4f0vihrisfk', 'N2M3ZTQ1ZGQwNWE4Njg2OTgwZGY4MjYxYjE2MGQ0OGJmMzhmY2ZiYzp7fQ==', '2018-02-23 17:17:47'),
('shxf4qtnnbcnbmcwh856y0roe2a4qzhr', 'N2M3ZTQ1ZGQwNWE4Njg2OTgwZGY4MjYxYjE2MGQ0OGJmMzhmY2ZiYzp7fQ==', '2018-02-23 20:53:17'),
('tmvf5t4p1gkhw00rz5yda81hipfbef8z', 'N2M3ZTQ1ZGQwNWE4Njg2OTgwZGY4MjYxYjE2MGQ0OGJmMzhmY2ZiYzp7fQ==', '2018-02-23 16:38:08'),
('vrj7chm83bph3e8396n0ydqcvt27sg4t', 'N2M3ZTQ1ZGQwNWE4Njg2OTgwZGY4MjYxYjE2MGQ0OGJmMzhmY2ZiYzp7fQ==', '2018-02-23 17:01:29'),
('z8c69i8ephexy09edy5h5el1csd8271t', 'N2M3ZTQ1ZGQwNWE4Njg2OTgwZGY4MjYxYjE2MGQ0OGJmMzhmY2ZiYzp7fQ==', '2018-02-23 16:45:14'),
('zenspu6w8ewj1youzmwo6hbkeiw76yfc', 'N2M3ZTQ1ZGQwNWE4Njg2OTgwZGY4MjYxYjE2MGQ0OGJmMzhmY2ZiYzp7fQ==', '2018-02-23 16:59:10'),
('zl2mjwgbkp10bp3icm3aab7ej9rv5gvg', 'N2M3ZTQ1ZGQwNWE4Njg2OTgwZGY4MjYxYjE2MGQ0OGJmMzhmY2ZiYzp7fQ==', '2018-02-23 16:33:17');

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
-- Indexes for table `books_author`
--
ALTER TABLE `books_author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `books_book`
--
ALTER TABLE `books_book`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `books_book_author_id_id_78aac9b7_fk_books_author_author_id` (`author_id_id`);

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
-- Indexes for table `books_profile`
--
ALTER TABLE `books_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `books_user_author`
--
ALTER TABLE `books_user_author`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_user_author_author_id_id_8a1e4092_fk_books_aut` (`author_id_id`),
  ADD KEY `books_user_author_user_id_id_029938ac_fk_auth_user_id` (`user_id_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
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
-- AUTO_INCREMENT for table `books_author`
--
ALTER TABLE `books_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `books_book`
--
ALTER TABLE `books_book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `books_category`
--
ALTER TABLE `books_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `books_category_book`
--
ALTER TABLE `books_category_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `books_cat_user`
--
ALTER TABLE `books_cat_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `books_profile`
--
ALTER TABLE `books_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `books_user_author`
--
ALTER TABLE `books_user_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `books_user_book`
--
ALTER TABLE `books_user_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
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
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `books_book`
--
ALTER TABLE `books_book`
  ADD CONSTRAINT `books_book_author_id_id_78aac9b7_fk_books_author_author_id` FOREIGN KEY (`author_id_id`) REFERENCES `books_author` (`author_id`);

--
-- Constraints for table `books_category_book`
--
ALTER TABLE `books_category_book`
  ADD CONSTRAINT `books_category_book_book_id_id_1fbba076_fk_books_book_book_id` FOREIGN KEY (`book_id_id`) REFERENCES `books_book` (`book_id`),
  ADD CONSTRAINT `books_category_book_category_id_id_b8347154_fk_books_cat` FOREIGN KEY (`category_id_id`) REFERENCES `books_category` (`category_id`);

--
-- Constraints for table `books_cat_user`
--
ALTER TABLE `books_cat_user`
  ADD CONSTRAINT `books_cat_user_category_id_id_a139fb3c_fk_books_cat` FOREIGN KEY (`category_id_id`) REFERENCES `books_category` (`category_id`),
  ADD CONSTRAINT `books_cat_user_user_id_id_1c60dbe5_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `books_profile`
--
ALTER TABLE `books_profile`
  ADD CONSTRAINT `books_profile_user_id_9c3ff544_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `books_user_author`
--
ALTER TABLE `books_user_author`
  ADD CONSTRAINT `books_user_author_author_id_id_8a1e4092_fk_books_aut` FOREIGN KEY (`author_id_id`) REFERENCES `books_author` (`author_id`),
  ADD CONSTRAINT `books_user_author_user_id_id_029938ac_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `books_user_book`
--
ALTER TABLE `books_user_book`
  ADD CONSTRAINT `books_user_book_book_id_id_723bb49c_fk_books_book_book_id` FOREIGN KEY (`book_id_id`) REFERENCES `books_book` (`book_id`),
  ADD CONSTRAINT `books_user_book_user_id_id_11d60fab_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
