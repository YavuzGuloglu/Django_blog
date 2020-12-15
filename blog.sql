-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 15 Ara 2020, 19:36:49
-- Sunucu sürümü: 10.4.10-MariaDB
-- PHP Sürümü: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blog`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `app_posts`
--

DROP TABLE IF EXISTS `app_posts`;
CREATE TABLE IF NOT EXISTS `app_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postheader` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `postcontent` longtext COLLATE utf8_turkish_ci NOT NULL,
  `postdate` date NOT NULL,
  `postauthor` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `postimage` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `app_posts`
--

INSERT INTO `app_posts` (`id`, `postheader`, `postcontent`, `postdate`, `postauthor`, `postimage`) VALUES
(1, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-12-14', 'Admin', 'https://cdn.pixabay.com/photo/2016/11/19/14/00/code-1839406_960_720.jpg'),
(2, 'Neden Kullanırız?', 'Lorem Ipsum pasajlarının birçok çeşitlemesi vardır. Ancak bunların büyük bir çoğunluğu mizah katılarak veya rastgele sözcükler eklenerek değiştirilmişlerdir. Eğer bir Lorem Ipsum pasajı kullanacaksanız, metin aralarına utandırıcı sözcükler gizlenmediğinden emin olmanız gerekir. İnternet\'teki tüm Lorem Ipsum üreteçleri önceden belirlenmiş metin bloklarını yineler. Bu da, bu üreteci İnternet üzerindeki gerçek Lorem Ipsum üreteci yapar. Bu üreteç, 200\'den fazla Latince sözcük ve onlara ait cümle yapılarını içeren bir sözlük kullanır. Bu nedenle, üretilen Lorem Ipsum metinleri yinelemelerden, mizahtan ve karakteristik olmayan sözcüklerden uzaktır.', '2020-12-17', 'Admin', 'https://cdn.pixabay.com/photo/2016/11/30/20/58/programming-1873854_960_720.png'),
(3, 'Nereden Bulabilirim?', 'Lorem Ipsum pasajlarının birçok çeşitlemesi vardır. Ancak bunların büyük bir çoğunluğu mizah katılarak veya rastgele sözcükler eklenerek değiştirilmişlerdir. Eğer bir Lorem Ipsum pasajı kullanacaksanız, metin aralarına utandırıcı sözcükler gizlenmediğinden emin olmanız gerekir. İnternet\'teki tüm Lorem Ipsum üreteçleri önceden belirlenmiş metin bloklarını yineler. Bu da, bu üreteci İnternet üzerindeki gerçek Lorem Ipsum üreteci yapar. Bu üreteç, 200\'den fazla Latince sözcük ve onlara ait cümle yapılarını içeren bir sözlük kullanır. Bu nedenle, üretilen Lorem Ipsum metinleri yinelemelerden, mizahtan ve karakteristik olmayan sözcüklerden uzaktır.', '2020-12-15', 'Admin', 'https://cdn.pixabay.com/photo/2016/10/12/19/50/matrix-1735640_960_720.jpg'),
(4, 'Neden Kullanırız?', 'Yinelenen bir sayfa içeriğinin okuyucunun dikkatini dağıttığı bilinen bir gerçektir. Lorem Ipsum kullanmanın amacı, sürekli \'buraya metin gelecek, buraya metin gelecek\' yazmaya kıyasla daha dengeli bir harf dağılımı sağlayarak okunurluğu artırmasıdır. Şu anda birçok masaüstü yayıncılık paketi ve web sayfa düzenleyicisi, varsayılan mıgır metinler olarak Lorem Ipsum kullanmaktadır. Ayrıca arama motorlarında \'lorem ipsum\' anahtar sözcükleri ile arama yapıldığında henüz tasarım aşamasında olan çok sayıda site listelenir. Yıllar içinde, bazen kazara, bazen bilinçli olarak (örneğin mizah katılarak), çeşitli sürümleri geliştirilmiştir.', '2020-12-19', 'Admin', 'https://cdn.pixabay.com/photo/2017/10/30/18/44/hacking-2903156_960_720.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add posts', 7, 'add_posts'),
(26, 'Can change posts', 7, 'change_posts'),
(27, 'Can delete posts', 7, 'delete_posts'),
(28, 'Can view posts', 7, 'view_posts');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_turkish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_turkish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$iXMJWa0D0UWt$mGBP2L2Z81zDM6GnjXJ1eRv+ePDbGCSpCUDs/HHMeKI=', '2020-12-14 21:39:24.671242', 1, 'admin', '', '', '', 1, 1, '2020-12-14 21:38:54.529608');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf8_turkish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-12-14 21:45:33.286643', '1', 'Posts object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-12-14 22:17:08.486781', '2', 'What issdas', 1, '[{\"added\": {}}]', 7, 1),
(3, '2020-12-14 22:17:16.040426', '3', 'asd', 1, '[{\"added\": {}}]', 7, 1),
(4, '2020-12-14 23:34:45.995756', '2', 'Neden Kullanırız?', 2, '[{\"changed\": {\"fields\": [\"Ba\\u015fl\\u0131k\", \"\\u0130\\u00e7erik\", \"Resim\"]}}]', 7, 1),
(5, '2020-12-14 23:35:42.630110', '3', 'Nereden Bulabilirim?', 2, '[{\"changed\": {\"fields\": [\"Ba\\u015fl\\u0131k\", \"\\u0130\\u00e7erik\", \"Resim\"]}}]', 7, 1),
(6, '2020-12-14 23:35:54.017240', '3', 'Nereden Bulabilirim?', 2, '[{\"changed\": {\"fields\": [\"Yazar\"]}}]', 7, 1),
(7, '2020-12-15 00:52:18.193649', '4', 'Neden Kullanırız?', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'App', 'posts');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-12-13 19:06:00.971945'),
(2, 'auth', '0001_initial', '2020-12-13 19:06:01.102596'),
(3, 'admin', '0001_initial', '2020-12-13 19:06:01.543088'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-12-13 19:06:01.665763'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-12-13 19:06:01.674736'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-12-13 19:06:01.752527'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-12-13 19:06:01.790428'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-12-13 19:06:01.828329'),
(9, 'auth', '0004_alter_user_username_opts', '2020-12-13 19:06:01.840379'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-12-13 19:06:01.882269'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-12-13 19:06:01.885259'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-12-13 19:06:01.902252'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-12-13 19:06:01.942630'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-12-13 19:06:01.983517'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-12-13 19:06:02.021416'),
(16, 'auth', '0011_update_proxy_permissions', '2020-12-13 19:06:02.032397'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-12-13 19:06:02.071284'),
(18, 'sessions', '0001_initial', '2020-12-13 19:06:02.092227'),
(19, 'App', '0001_initial', '2020-12-14 21:32:34.148009');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_turkish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('h1kjcbhv9rqpcddigtgg2l5e806bim04', '.eJxVjDsOwjAQBe_iGlleJ2u8lPScwVr_cADZUpxUiLuTSCmgfTPz3sLxuhS39jS7KYqLAHH63TyHZ6o7iA-u9yZDq8s8ebkr8qBd3lpMr-vh_h0U7mWrrVKUvUZlc0bSMBCMBADaosU4pMRkBzRsGYOhUYPSZ9xsjtGkDCw-X6PrNos:1kovYy:lDEjobaczOvvGVLfv5DPJXtM8WYuH9aeuc_KVd1d7hc', '2020-12-28 21:39:24.673248');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
