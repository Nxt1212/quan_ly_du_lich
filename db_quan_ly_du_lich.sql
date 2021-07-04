-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2021 at 04:47 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_quan_ly_du_lich`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_show_home` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `a_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_title`, `a_slug`, `a_show_home`, `a_active`, `a_view`, `a_description`, `a_avatar`, `a_content`, `a_category_id`, `a_user_id`, `created_at`, `updated_at`) VALUES
(1, 'Ưu đãi Tháng 5, cơ hội vàng săn tour du lịch hè giá tốt', '', 0, 1, 0, '<p>M&ugrave;a h&egrave; bắt đầu chạm ng&otilde;, cũng l&agrave; l&uacute;c c&aacute;c doanh nghiệp bắt đầu tung ra nhiều chương tr&igrave;nh khuyến m&atilde;i. Đ&acirc;y cũng l&agrave; cơ hội tốt để &ldquo;săn&rdquo; ưu đ&atilde;i th&aacute;ng 5 với nhiều chương tr&igrave;nh hấp dẫn c&oacute; gi&aacute; ưu đ&atilde;i bất ngờ.</p>', '2021-07-03__63bcf3f3fb8d1f6b13518ab9668b4d88.jpg', '<p>Th&aacute;ng 5 cũng l&agrave; thời điểm khởi đầu m&ugrave;a h&egrave;, để đ&aacute;p ứng nhu cầu giải tr&iacute;, thư gi&atilde;n của du kh&aacute;ch muốn &ldquo;trốn nắng&rdquo; v&agrave; nạp lại năng lượng sau những ng&agrave;y tất bật với gi&aacute;o &aacute;n, thi cử. Nhằm mang đến cho du kh&aacute;ch một m&ugrave;a h&egrave; s&ocirc;i động nhưng vẫn đảm bảo t&iacute;nh &ldquo;du lịch an to&agrave;n&rdquo; với gi&aacute; tốt nhất, Vietravel mang đến cho du kh&aacute;ch loạt ưu đ&atilde;i th&aacute;ng 5 với c&aacute;c chương tr&igrave;nh tour trọn g&oacute;i độc đ&aacute;o, g&oacute;i dịch vụ chất lượng, gi&aacute; giảm sốc l&ecirc;n đến 49%. Nhiều sản phẩm giảm từ 500.000 - 1.000.000 đồng.<br />\r\n<br />\r\nCombo gi&aacute; tốt giảm đến 500.000 đồng đặc biệt d&agrave;nh cho ưu đ&atilde;i th&aacute;ng 5<br />\r\n<br />\r\nVới lợi thế khi sở hữu X&iacute; nghiệp vận chuyển Xuy&ecirc;n &Aacute; v&agrave; H&atilde;ng h&agrave;ng kh&ocirc;ng Vietravel Airlines với c&aacute;c đường bay kết nối c&aacute;c v&ugrave;ng kinh tế trọng điểm, c&aacute;c điểm đến du lịch nổi tiếng trong cả nước, Vietravel sẽ mang đến cho du kh&aacute;ch những g&oacute;i dịch vụ tốt nhất với gi&aacute; thấp nhất, chỉ từ 1.190.000 đồng bao gồm v&eacute; m&aacute;y bay khứ hồi + 2 đ&ecirc;m kh&aacute;ch sạn 3*,4*,5* tại c&aacute;c kh&aacute;ch sạn nổi tiếng như Dragon King Đ&agrave; Lạt, Sunset Beach Resort &amp; Spa Ph&uacute; Quốc,&hellip;<br />\r\n&nbsp;</p>', 1, 1, '2021-07-03 13:47:02', '2021-07-03 13:47:02'),
(2, 'Nhiều ưu đãi du lịch hè hấp dẫn nhân dịp Ngày hội Du lịch Thành phố Hồ Chí Minh lần thứ 17', '', 0, 1, 0, '<p>Nhiều ưu đ&atilde;i du lịch h&egrave; hấp dẫn nh&acirc;n dịp Ng&agrave;y hội Du lịch Th&agrave;nh phố Hồ Ch&iacute; Minh lần thứ 17</p>', '2021-07-03__7c0f878f09f49a0b8abc3c194313e34b.jpg', '<p>Nhiều ưu đ&atilde;i du lịch h&egrave; hấp dẫn nh&acirc;n dịp Ng&agrave;y hội Du lịch Th&agrave;nh phố Hồ Ch&iacute; Minh lần thứ 17<br />\r\n&nbsp;</p>', 1, 1, '2021-07-03 13:48:13', '2021-07-03 13:56:58');

-- --------------------------------------------------------

--
-- Table structure for table `book_tours`
--

CREATE TABLE `book_tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `b_tour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `b_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `b_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_start_date` date DEFAULT NULL,
  `b_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_number_adults` int(11) DEFAULT 0,
  `b_number_children` int(11) DEFAULT 0,
  `b_status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_parent_id` int(11) DEFAULT 0,
  `c_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `c_type` tinyint(4) DEFAULT NULL,
  `c_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_parent_id`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_hot`, `c_status`, `c_type`, `c_user_id`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức', 0, 'tin-tuc', NULL, NULL, NULL, 0, 1, NULL, NULL, '2021-07-03 13:36:58', '2021-07-03 13:36:58'),
(2, 'Cẩm nang du lịch', 0, 'cam-nang-du-lich', NULL, NULL, NULL, 0, 1, NULL, NULL, '2021-07-03 13:37:12', '2021-07-03 13:37:12'),
(3, 'Kinh nghiệm du lịch', 0, 'kinh-nghiem-du-lich', NULL, NULL, NULL, 0, 1, NULL, NULL, '2021-07-03 13:37:27', '2021-07-03 13:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_permission`
--

CREATE TABLE `group_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `h_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h_anbum_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h_acreage` int(11) NOT NULL DEFAULT 0,
  `h_beds` int(11) NOT NULL DEFAULT 0,
  `h_number_people` int(11) NOT NULL DEFAULT 0,
  `h_price` int(11) NOT NULL DEFAULT 0,
  `h_sale` int(11) NOT NULL DEFAULT 0,
  `h_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h_status` tinyint(4) NOT NULL DEFAULT 0,
  `h_start_date` date DEFAULT NULL,
  `h_end_date` date DEFAULT NULL,
  `h_location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `h_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `l_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_status` tinyint(4) DEFAULT 0,
  `l_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `l_name`, `l_slug`, `l_image`, `l_description`, `l_content`, `l_status`, `l_user_id`, `created_at`, `updated_at`) VALUES
(1, 'Du lịch miền bắc', 'du-lich-mien-bac', NULL, 'Du lịch miền bắc', '<p>Du lịch miền bắc</p>', 2, 1, '2021-07-03 15:20:40', '2021-07-03 19:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_09_171541_laravel_entrust_setup_tables', 1),
(5, '2021_04_04_032200_create_categories_table', 1),
(6, '2021_04_04_080911_create_articles_table', 1),
(7, '2021_06_26_151636_create_locations_table', 1),
(8, '2021_06_26_151750_create_tours_table', 1),
(9, '2021_06_26_151830_create_hotels_table', 1),
(10, '2021_06_26_162813_create_contacts_table', 1),
(11, '2021_07_03_110944_create_book_tours_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `t_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_journeys` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_schedule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_move_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_starting_gate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_start_date` date DEFAULT NULL,
  `t_end_date` date DEFAULT NULL,
  `t_number_guests` int(11) NOT NULL DEFAULT 0,
  `t_price_adults` int(11) NOT NULL DEFAULT 0,
  `t_price_children` int(11) NOT NULL DEFAULT 0,
  `t_sale` int(11) NOT NULL DEFAULT 0,
  `t_view` int(11) NOT NULL DEFAULT 0,
  `t_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_anbum_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `t_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `t_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id`, `t_title`, `t_journeys`, `t_schedule`, `t_move_method`, `t_starting_gate`, `t_start_date`, `t_end_date`, `t_number_guests`, `t_price_adults`, `t_price_children`, `t_sale`, `t_view`, `t_description`, `t_content`, `t_anbum_image`, `t_image`, `t_location_id`, `t_user_id`, `t_status`, `created_at`, `updated_at`) VALUES
(1, 'Du lịch Hà Nội - Yên Tử - Hạ Long - Tràng An - Sapa - Fansipan từ Sài Gòn', '6 ngày 5 đêm', 'Hà Nội - Yên Tử - Hạ Long - Tràng An - Sapa - Fansipan', NULL, NULL, '2021-07-04', '2021-07-07', 20, 560000, 560000, 78, 0, '<p><em>Miền Bắc l&agrave; nơi khởi nguồn văn h&oacute;a ng&agrave;n năm văn hiến của d&acirc;n tộc Việt Nam.&nbsp;<strong>Du lịch miền Bắc</strong>&nbsp;du kh&aacute;ch sẽ được kh&aacute;m ph&aacute; những thắng cảnh thi&ecirc;n nhi&ecirc;n đẹp m&ecirc; hồn c&ugrave;ng nhiều c&ocirc;ng tr&igrave;nh kiến tr&uacute;c ấn tượng được tạo n&ecirc;n bởi b&agrave;n tay kh&eacute;o l&eacute;o của con người. Điểm du lịch Tr&agrave;ng An l&agrave; nơi&nbsp;du kh&aacute;ch sẽ được kh&aacute;m ph&aacute; một trong những địa điểm du lịch đẹp nhất Ninh B&igrave;nh. Tạo h&oacute;a đ&atilde; v&ocirc; c&ugrave;ng ưu &aacute;i ban tặng cho nơi đ&acirc;y một cảnh quan thi&ecirc;n nhi&ecirc;n tuyệt đẹp với c&aacute;c d&atilde;y n&uacute;i uốn lượn bao quanh c&aacute;c d&ograve;ng Suối nước tự nhi&ecirc;n, tạo n&ecirc;n v&ocirc; v&agrave;n c&aacute;c hang động kỳ ảo, huyền b&iacute;....&nbsp;C&ugrave;ng Du Lịch Việt kh&aacute;m ph&aacute; những địa điểm du lịch miền bắc hấp dẫn nhất như&nbsp;<strong>H&agrave; Nội - Y&ecirc;n Tử - Hạ Long - Ch&ugrave;a B&aacute;i Đ&iacute;nh - Tr&agrave;ng An - Sapa - Bản C&aacute;t C&aacute;t - Đỉnh Fansipan</strong>,... để bắt đầu l&ecirc;n kế hoạch cho chuyến du lịch ngay nh&eacute;!</em></p>', '<p>NG&Agrave;Y 1 |&nbsp;TP.HCM &ndash; H&Agrave; NỘI &ndash; HẠ LONG (Ăn trưa, chiều)</p>\r\n\r\n<p><strong>S&aacute;ng:&nbsp;&nbsp; &nbsp;Qu&yacute; kh&aacute;ch c&oacute; mặt tại ga quốc nội, s&acirc;n bay T&acirc;n Sơn Nhất trước giờ bay &iacute;t nhất ba tiếng.</strong></p>\r\n\r\n<ul>\r\n	<li>Đại diện c&ocirc;ng ty Du Lịch Việt đ&oacute;n v&agrave; hỗ trợ Qu&yacute; Kh&aacute;ch l&agrave;m thủ tục đ&oacute;n chuyến bay đi H&agrave; Nội.</li>\r\n	<li>Đến s&acirc;n bay Nội B&agrave;i, Hướng Dẫn Vi&ecirc;n đ&oacute;n đo&agrave;n, Khởi h&agrave;nh đến Hạ Long. Đến n&uacute;i Y&ecirc;n Tử - ngọn n&uacute;i cao 1068 m so với mực nước biển, một thắng cảnh thi&ecirc;n nhi&ecirc;n c&ograve;n lưu giữ hệ thống c&aacute;c di t&iacute;ch lịch sử văn h&oacute;a gắn với sự ra đời, h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển của thiền ph&aacute;i Tr&uacute;c L&acirc;m Y&ecirc;n Tử, được mệnh danh l&agrave; &ldquo;đất tổ Phật gi&aacute;o Việt Nam&rdquo;.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trưa: D&ugrave;ng cơm trưa.</strong></p>\r\n\r\n<ul>\r\n	<li>Qu&yacute; kh&aacute;ch l&ecirc;n n&uacute;i bằng c&aacute;p treo (chi ph&iacute; c&aacute;p treo tự t&uacute;c), tham quan ch&ugrave;a Hoa Y&ecirc;n, Bảo Th&aacute;p, Tr&uacute;c L&acirc;m Tam Tổ, H&agrave;ng T&ugrave;ng 700 tuổi&hellip;xuống n&uacute;i tham quan Thiền Viện Tr&uacute;c L&acirc;m với quả cầu Như &Yacute; nặng 6 tấn được xếp kỷ lục guiness Việt Nam.</li>\r\n	<li>Đo&agrave;n khởi h&agrave;nh đến Hạ Long.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tối:&nbsp; D&ugrave;ng bữa tối. Nghỉ đ&ecirc;m tại Hạ Long.</strong></p>\r\n\r\n<ul>\r\n	<li>Qu&yacute; kh&aacute;ch tự do dạo phố, mua sắm tại chợ đ&ecirc;m hoặc tham gia khu Sunworld Hạ Long Park với tất cả khu tr&ograve; chơi trong nh&agrave;, ngo&agrave;i trời ho&agrave;nh tr&aacute;ng c&oacute; c&aacute;c khu C&ocirc;ng vi&ecirc;n Rồng, C&aacute;p treo Nữ Ho&agrave;ng v&ograve;ng quay Sun wheel&hellip;(chi ph&iacute; tự t&uacute;c).</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 2 |&nbsp;HẠ LONG &ndash; NINH B&Igrave;NH (Ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m)</p>\r\n\r\n<p>NG&Agrave;Y 3 |&nbsp;NINH B&Igrave;NH &ndash; H&Agrave; NỘI (Ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m)</p>\r\n\r\n<p>NG&Agrave;Y 4 |&nbsp;H&Agrave; NỘI &ndash; L&Agrave;O CAI - SAPA (Ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m)</p>\r\n\r\n<p>NG&Agrave;Y 5 |&nbsp;SAPA &ndash; FANSIPAN &ndash; H&Agrave; NỘI (Ăn s&aacute;ng, trưa, chiều) (Xem th&ecirc;m)</p>\r\n\r\n<p>NG&Agrave;Y 6 |&nbsp;H&Agrave; NỘI &ndash; TP.HCM (Ăn s&aacute;ng, trưa) (Xem th&ecirc;m)</p>', NULL, '2021-07-04__db79dedc6747e24c8215c1e83deb2cf3.jpg', 1, 1, 1, '2021-07-03 19:20:09', '2021-07-03 19:39:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `avatar`, `address`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '0928817228', NULL, '$2y$10$pXiF9Y65kXEAaEgvM84RauX3gR0V60a7Bscin3haG32tzTRemAtYa', '', NULL, 1, 'mj3uTuIm9frFWZagAAt27eVc7pXI0b2Yox3UgnSdXJzlHO1iJ6rxhMDaDkBD', '2021-07-03 13:35:20', '2021-07-03 13:35:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_show_home_index` (`a_show_home`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_category_id_index` (`a_category_id`),
  ADD KEY `articles_a_user_id_index` (`a_user_id`);

--
-- Indexes for table `book_tours`
--
ALTER TABLE `book_tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_tours_b_tour_id_index` (`b_tour_id`),
  ADD KEY `book_tours_b_user_id_index` (`b_user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`),
  ADD KEY `categories_c_user_id_index` (`c_user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_c_user_id_index` (`c_user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `group_permission`
--
ALTER TABLE `group_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_permission_name_unique` (`name`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotels_h_location_id_index` (`h_location_id`),
  ADD KEY `hotels_h_user_id_index` (`h_user_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locations_l_user_id_index` (`l_user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD KEY `permissions_group_permission_id_foreign` (`group_permission_id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tours_t_location_id_index` (`t_location_id`),
  ADD KEY `tours_t_user_id_index` (`t_user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_tours`
--
ALTER TABLE `book_tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_permission`
--
ALTER TABLE `group_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_a_category_id_foreign` FOREIGN KEY (`a_category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_a_user_id_foreign` FOREIGN KEY (`a_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_tours`
--
ALTER TABLE `book_tours`
  ADD CONSTRAINT `book_tours_b_tour_id_foreign` FOREIGN KEY (`b_tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_tours_b_user_id_foreign` FOREIGN KEY (`b_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_c_user_id_foreign` FOREIGN KEY (`c_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_c_user_id_foreign` FOREIGN KEY (`c_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `hotels_h_location_id_foreign` FOREIGN KEY (`h_location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hotels_h_user_id_foreign` FOREIGN KEY (`h_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_l_user_id_foreign` FOREIGN KEY (`l_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_group_permission_id_foreign` FOREIGN KEY (`group_permission_id`) REFERENCES `group_permission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tours`
--
ALTER TABLE `tours`
  ADD CONSTRAINT `tours_t_location_id_foreign` FOREIGN KEY (`t_location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tours_t_user_id_foreign` FOREIGN KEY (`t_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
