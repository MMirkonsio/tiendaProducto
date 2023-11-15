-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 15-11-2023 a las 07:14:18
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendaapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `auth_permission`
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
(25, 'Can add Categoria', 7, 'add_categoria'),
(26, 'Can change Categoria', 7, 'change_categoria'),
(27, 'Can delete Categoria', 7, 'delete_categoria'),
(28, 'Can view Categoria', 7, 'view_categoria'),
(29, 'Can add Producto', 8, 'add_producto'),
(30, 'Can change Producto', 8, 'change_producto'),
(31, 'Can delete Producto', 8, 'delete_producto'),
(32, 'Can view Producto', 8, 'view_producto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_spanish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_spanish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$vWNcW9IPnmOyhN5NzKUmrY$RO+RPcq/yDwsBIxApxRnvFhRovJbF3kx4igB6V0pOGY=', '2023-11-11 19:57:25.612601', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-11-11 19:57:12.571419');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `foto` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `foto`, `descripcion`) VALUES
(1, 'Celulares', 'static/images/celular.jpg', 'Smartphones y accesorios'),
(2, 'Computadores y Tablets', 'static/images/computadores.jpg', 'Portátiles, computadoras de escritorio y tabletas'),
(3, 'TV y Smart TV', 'static/images/tv.jpg', 'Televisores y televisores inteligentes'),
(4, 'Juegos y Consolas', 'static/images/juegos.jpg', 'Videojuegos y consolas de juegos'),
(5, 'Monitores y Proyectores', 'static/images/monitores.jpg', 'Monitores de pantalla y proyectores'),
(6, 'Fotografia y Video', 'static/images/fotografia.jpg', 'Cámaras, videocámaras y accesorios'),
(7, 'Impresoras y Suministros', 'static/images/impresoras.jpg', 'Impresoras y suministros de impresión'),
(8, 'Robotica y Electronica', 'static/images/robotica.jpg', 'Robótica y componentes electrónicos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_spanish_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_spanish_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'tiendaApp', 'categoria'),
(8, 'tiendaApp', 'producto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-11-11 19:54:40.940246'),
(2, 'auth', '0001_initial', '2023-11-11 19:54:41.848425'),
(3, 'admin', '0001_initial', '2023-11-11 19:54:42.042449'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-11-11 19:54:42.047584'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-11 19:54:42.052542'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-11-11 19:54:42.107064'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-11-11 19:54:42.133963'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-11-11 19:54:42.162802'),
(9, 'auth', '0004_alter_user_username_opts', '2023-11-11 19:54:42.168270'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-11-11 19:54:42.196866'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-11-11 19:54:42.197719'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-11-11 19:54:42.203706'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-11-11 19:54:42.230951'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-11-11 19:54:42.263245'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-11-11 19:54:42.289263'),
(16, 'auth', '0011_update_proxy_permissions', '2023-11-11 19:54:42.297221'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-11-11 19:54:42.324978'),
(18, 'sessions', '0001_initial', '2023-11-11 19:54:42.356712'),
(19, 'tiendaApp', '0001_initial', '2023-11-11 20:01:12.545450'),
(20, 'tiendaApp', '0002_initial', '2023-11-11 20:01:12.962513'),
(21, 'tiendaApp', '0003_alter_producto_id', '2023-11-12 01:54:26.091305'),
(22, 'tiendaApp', '0004_alter_producto_id', '2023-11-12 20:20:42.764873');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_spanish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('vnuyh7mrwo6ha7imy7g59f2ezl97lss3', '.eJxVjMsOwiAQRf-FtSFAKTAu3fsNzQwzlaqBpI-V8d-1SRe6veec-1IDbmsZtkXmYWJ1VladfjfC_JC6A75jvTWdW13nifSu6IMu-tpYnpfD_TsouJRvLb7HkBJYdo6DiwAGyYv01Bnpeh7J-Bw7iwBoKHrJwGMOCMmQZYnq_QHeezg5:1r1u6f:13J_jTt1Vl3p6955f2Qd3BS4hCnWx0RF14xTLOe_WBQ', '2023-11-25 19:57:25.613598');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_spanish_ci NOT NULL,
  `foto` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `categoria_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `producto_categoria_id_67131168` (`categoria_id`)
) ENGINE=MyISAM AUTO_INCREMENT=483 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `descripcion`, `foto`, `precio`, `categoria_id`) VALUES
(414, 'Microsoft Surface Pro 7', 'Tablet con funciones de laptop', 'static/images/SurfacePro7.jpg', '799.99', 2),
(401, 'Samsung Galaxy S21', 'Potente smartphone de Samsung', 'static/images/Samsung.jpg', '999.00', 1),
(403, 'Google Pixel 6', 'Teléfono Android con excelente cámara', 'static/images/Google.jpg', '799.99', 1),
(405, 'Xiaomi Mi 11', 'Buena relación calidad-precio', 'static/images/Xiaomi.png', '699.99', 1),
(406, 'Sony Xperia 1 III', 'Teléfono con enfoque en multimedia', 'static/images/Sony.jpg', '1199.99', 1),
(407, 'LG G8 ThinQ', 'Diseño elegante con tecnología avanzada', 'static/images/LG_jjKrrMn.jpg', '599.99', 1),
(408, 'Motorola Moto G Power', 'Gran duración de la batería', 'static/images/Motorola.jpg', '249.99', 1),
(422, 'Samsung QLED Q90T', 'Televisor QLED con resolución 4K', 'static/images/samsung_qled_q90t.jpeg', '1499.99', 3),
(413, 'MacBook Air M1', 'Laptop Apple con chip M1 para un rendimiento increíble', 'static/images/mac.jpg', '999.99', 2),
(410, 'Asus ROG Phone 5', 'Teléfono gaming con especificaciones potentes', 'static/images/AsusROG_X75oFfP.jpg', '1299.99', 1),
(482, 'IPhone 14', 'Caro', 'static/images/Iphone_J305kKz.jpg', '599.99', 1),
(412, 'Laptop Dell XPS 13', 'Potente laptop con pantalla InfinityEdge', 'static/images/dell.png', '1299.99', 2),
(415, 'HP Pavilion Gaming Desktop', 'Computadora de escritorio para juegos', 'static/images/hp.jpg', '899.99', 2),
(416, 'Lenovo ThinkPad X1 Carbon', 'Laptop empresarial ultradelgada', 'static/images/lenovo.webp', '1399.99', 2),
(417, 'Samsung Galaxy Tab S7', 'Tableta Android con pantalla AMOLED', 'static/images/tabs7.jpg', '649.99', 2),
(418, 'Acer Aspire 5', 'Laptop asequible con buen rendimiento', 'static/images/acer.jpg', '549.99', 2),
(419, 'iPad Pro 12.9 (2021)', 'Tableta profesional de Apple con pantalla Liquid Retina XDR', 'static/images/ipad.jpg', '1099.99', 2),
(420, 'Dell Alienware Aurora R10', 'Computadora de escritorio para juegos Alienware', 'static/images/alienware.webp', '1499.99', 2),
(421, 'Asus Chromebook Flip C434', 'Chromebook convertible con pantalla táctil', 'static/images/asus.png', '599.99', 2),
(423, 'LG OLED CX', 'Televisor OLED con calidad de imagen impresionante', 'static/images/lg_oled_cx.jpg', '1999.99', 3),
(424, 'Sony Bravia A8H', 'Televisor OLED con procesador X1 Ultimate', 'static/images/sony_bravia_a8h.webp', '1799.99', 3),
(425, 'TCL 6-Series', 'Televisor con tecnología Mini-LED y Roku integrado', 'static/images/tcl_6_series.png', '799.99', 3),
(426, 'Vizio P-Series Quantum X', 'Televisor Quantum Dot con alto brillo', 'static/images/vizio_p_series_quantum_x.webp', '1299.99', 3),
(427, 'Hisense H9G', 'Televisor ULED con Dolby Vision y Dolby Atmos', 'static/images/hisense_h9g.webp', '899.99', 3),
(428, 'Samsung The Frame', 'Televisor con diseño que se parece a un cuadro', 'static/images/samsung_the_frame.jpg', '1299.99', 3),
(429, 'Sony X950H', 'Televisor LED con retroiluminación Full Array', 'static/images/sony_x950h.jpg', '1399.99', 3),
(430, 'LG NanoCell NANO81', 'Televisor NanoCell con colores precisos', 'static/images/lg_nanocell_nano81.jpg', '999.99', 3),
(431, 'Toshiba Smart Fire TV', 'Televisor Fire TV con Alexa integrado', 'static/images/toshiba_smart_fire_tv.jpg', '549.99', 3),
(432, 'PlayStation 5', 'Consola de videojuegos de Sony de última generación', 'static/images/ps5.jpeg', '499.99', 4),
(433, 'Xbox Series X', 'Consola de videojuegos de Microsoft con potencia mejorada', 'static/images/xbox_series_x.jpg', '499.99', 4),
(434, 'Nintendo Switch', 'Consola híbrida para juegos en casa y portátiles', 'static/images/nintendo_switch.jpeg', '299.99', 4),
(435, 'PlayStation 4 Pro', 'Consola de videojuegos con gráficos mejorados', 'static/images/ps4_pro.webp', '399.99', 4),
(436, 'Xbox One X', 'Consola de videojuegos con resolución 4K', 'static/images/xbox_one_x.jpg', '399.99', 4),
(437, 'Nintendo Switch Lite', 'Versión compacta y ligera de la Nintendo Switch', 'static/images/nintendo_switch_lite.jpg', '199.99', 4),
(438, 'PlayStation VR', 'Sistema de realidad virtual para PlayStation', 'static/images/psvr.jpg', '299.99', 4),
(439, 'Xbox Elite Series 2 Controller', 'Controlador de élite para la consola Xbox', 'static/images/xbox_elite_controller.jpeg', '149.99', 4),
(440, 'Nintendo Switch Pro Controller', 'Controlador Pro para la Nintendo Switch', 'static/images/nintendo_switch_pro_controller.jpg', '69.99', 4),
(441, 'Juego FIFA 22', 'Última entrega del popular juego de fútbol', 'static/images/fifa_22.jpg', '59.99', 4),
(442, 'Dell Ultrasharp U2719D', 'Monitor IPS de 27 pulgadas con resolución QHD', 'static/images/dell_u2719d.webp', '349.99', 5),
(443, 'LG 27GL83A-B', 'Monitor para juegos de 27 pulgadas con resolución QHD y alta tasa de actualización', 'static/images/lg_27gl83a_b.jpg', '449.99', 5),
(444, 'BenQ EW3270U', 'Monitor LED de 32 pulgadas con resolución 4K HDR', 'static/images/benq_ew3270u.jpg', '499.99', 5),
(445, 'ASUS VG279Q', 'Monitor para juegos de 27 pulgadas con resolución Full HD y tecnología FreeSync', 'static/images/asus_vg279q.jpeg', '329.99', 5),
(446, 'Acer Predator XB271HU', 'Monitor para juegos de 27 pulgadas con resolución WQHD y tecnología G-Sync', 'static/images/acer_predator_xb271hu.webp', '599.99', 5),
(447, 'ViewSonic PA503W', 'Proyector WXGA de 3600 lúmenes para presentaciones y entretenimiento en casa', 'static/images/viewsonic_pa503w.jpg', '299.99', 5),
(448, 'Epson Home Cinema 2150', 'Proyector Full HD para entretenimiento en casa con tecnología de mejora de imagen', 'static/images/epson_home_cinema_2150.jpg', '699.99', 5),
(449, 'Optoma HD146X', 'Proyector HD para juegos y entretenimiento con alta tasa de actualización', 'static/images/optoma_hd146x.jpg', '549.99', 5),
(450, 'Samsung Odyssey G9', 'Monitor curvo de 49 pulgadas con resolución QHD y alta tasa de actualización', 'static/images/samsung_odyssey_g9.webp', '1399.99', 5),
(451, 'BenQ TK800M', 'Proyector 4K UHD para entretenimiento en casa con alta luminosidad', 'static/images/benq_tk800m.webp', '999.99', 5),
(452, 'Canon EOS 5D Mark IV', 'Cámara DSLR profesional de 30.4 MP', 'static/images/canon_eos_5d_mark_iv.jpeg', '2799.99', 6),
(453, 'Sony Alpha a7 III', 'Cámara sin espejo de fotograma completo con enfoque automático rápido', 'static/images/sony_alpha_a7_iii.jpg', '1999.99', 6),
(454, 'DJI Mavic Air 2', 'Dron plegable con cámara 4K y seguimiento inteligente', 'static/images/dji_mavic_air_2.jpg', '799.99', 6),
(455, 'GoPro HERO10 Black', 'Cámara de acción 5.3K con estabilización avanzada', 'static/images/gopro_hero10_black.jpeg', '499.99', 6),
(456, 'Nikon Z6', 'Cámara sin espejo de fotograma completo con grabación de video 4K', 'static/images/nikon_z6.jpg', '1999.99', 6),
(457, 'Sigma 24-70mm f/2.8 DG DN Art', 'Objetivo estándar para cámaras sin espejo con apertura constante f/2.8', 'static/images/sigma_24_70mm_f2.8.jpg', '1099.99', 6),
(458, 'Rode VideoMic Pro Plus', 'Micrófono direccional para grabación de video con suspensión Rycote Lyre', 'static/images/rode_videomic_pro_plus.jpg', '299.99', 6),
(459, 'Manfrotto MT190XPRO4', 'Trípode de aluminio con sistema de bloqueo QPL y columna central horizontal', 'static/images/manfrotto_mt190xpro4.jpg', '249.99', 6),
(460, 'SanDisk Extreme Pro 128GB', 'Tarjeta de memoria SDXC UHS-I de alta velocidad', 'static/images/sandisk_extreme_pro_128gb.jpg', '49.99', 6),
(461, 'Godox AD200Pro', 'Flash de estudio compacto y portátil con batería de litio', 'static/images/godox_ad200pro.jpg', '299.99', 6),
(462, 'Epson EcoTank ET-4760', 'Impresora multifunción con tanques de tinta recargables', 'static/images/epson_ecotank_et-4760.jpg', '499.99', 7),
(463, 'HP LaserJet Pro M404dn', 'Impresora láser monocromática de alta velocidad', 'static/images/hp_laserjet_pro_m404dn.jpg', '249.99', 7),
(464, 'Canon PIXMA MX922', 'Impresora multifunción con impresión inalámbrica', 'static/images/canon_pixma_mx922.jpg', '179.99', 7),
(465, 'Brother HL-L2395DW', 'Impresora láser monocromática compacta con escáner y copiadora', 'static/images/brother_hl-l2395dw.webp', '149.99', 7),
(466, 'Dymo LabelWriter 450', 'Etiquetadora térmica para impresión de etiquetas', 'static/images/dymo_labelwriter_450.webp', '89.99', 7),
(467, 'Canon CLI-251 Ink Cartridge', 'Cartucho de tinta original para impresoras Canon', 'static/images/canon_cli-251_ink_cartridge.jpg', '22.99', 7),
(468, 'Epson Premium Presentation Paper', 'Papel de presentación premium para impresoras de inyección de tinta', 'static/images/epson_premium_presentation_paper.jpg', '14.99', 7),
(469, 'HP 63 Black Original Ink Cartridge', 'Cartucho de tinta original negro para impresoras HP', 'static/images/hp_63_black_ink_cartridge.jpg', '19.99', 7),
(470, 'Brother TN660 Toner Cartridge', 'Cartucho de tóner compatible con impresoras Brother', 'static/images/brother_tn660_toner_cartridge.jpg', '29.99', 7),
(471, 'Canon KP-108IN Color Ink Paper Set', 'Conjunto de papel e tinta para impresión de fotos a color', 'static/images/canon_kp-108in_color_ink_paper_set.jpg', '34.99', 7),
(472, 'Arduino Uno R3', 'Placa de desarrollo para proyectos electrónicos', 'static/images/arduino_uno_r3.jpg', '24.99', 8),
(473, 'Raspberry Pi 4 Model B', 'Mini ordenador de una sola placa para proyectos de bricolaje', 'static/images/raspberry_pi_4_model_b.jpg', '39.99', 8),
(474, 'DJI RoboMaster S1', 'Robot educativo programable con capacidades de lucha y programación', 'static/images/dji_robomaster_s1.jpg', '549.99', 8),
(475, 'SparkFun Inventor\'s Kit v4.1', 'Kit de inicio para aprender electrónica y programación', 'static/images/sparkfun_inventors_kit_v4.1.webp', '99.99', 8),
(476, 'Adafruit NeoPixel Stick', 'Tira de LED RGB programable para proyectos de iluminación', 'static/images/adafruit_neopixel_stick.jpg', '8.99', 8),
(477, 'Makeblock mBot Robot Kit', 'Kit de construcción y programación de robots para principiantes', 'static/images/makeblock_mbot.webp', '69.99', 8),
(478, 'Pololu A-Star 32U4 Robot Controller', 'Controlador para robots con microcontrolador ATmega32U4', 'static/images/pololu_a-star_32u4.jpg', '24.95', 8),
(479, 'Anker PowerCore 20100', 'Batería portátil de gran capacidad para proyectos móviles', 'static/images/anker_powercore_20100.webp', '49.99', 8),
(480, 'Arduino Starter Kit', 'Kit completo para aprender electrónica y programación con Arduino', 'static/images/arduino_starter_kit.jpg', '89.99', 8),
(481, 'Intel RealSense Depth Camera D435', 'Cámara 3D para aplicaciones de percepción espacial', 'static/images/intel_realsense_d435.webp', '149.99', 8);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
