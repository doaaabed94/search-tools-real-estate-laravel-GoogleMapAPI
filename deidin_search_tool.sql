-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2021 at 05:32 AM
-- Server version: 5.7.35-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deidin_search_tool`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf16_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'A عقارات فاخرة', '2021-08-12 08:50:27', NULL),
(2, 'B عقارات متوسطة', '2021-08-12 08:50:27', NULL),
(3, 'C عقارات رخيصة', '2021-08-12 08:50:27', NULL),
(4, 'D اطلالات', '2021-09-09 10:04:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'istanbul', '2020-07-22 11:58:50', '2020-07-22 11:58:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instalments`
--

CREATE TABLE `instalments` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instalments`
--

INSERT INTO `instalments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'cash', '2021-08-12 08:54:22', NULL),
(2, '50/6', '2021-08-12 08:54:22', NULL),
(3, '50/12', '2021-08-12 08:54:22', NULL),
(4, '50/18', '2021-08-12 08:54:22', NULL),
(5, '50/24', '2021-08-12 08:54:22', NULL),
(8, '50/36', '2021-08-12 08:54:22', NULL),
(9, '35/15-24', '2021-08-12 08:54:22', NULL),
(10, '40/108', '2021-08-12 08:54:22', NULL),
(11, '35/24', '2021-08-12 08:54:22', NULL),
(12, '50/36 - 40/24', '2021-08-12 08:56:33', NULL);

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_07_22_132335_create_city_table', 2),
(4, '2020_07_22_132800_create_regions_table', 2),
(5, '2020_07_23_075515_create_number_of_rooms_table', 3),
(6, '2020_07_23_084803_create_project_table', 4),
(8, '2020_07_23_092116_create_project_number_of_rooms_table', 5),
(9, '2020_07_28_140959_add_columns_to_project_table', 6),
(10, '2020_07_29_080131_add_link_field_to_project', 7),
(11, '2020_08_14_125940_create_offer_orders_table', 8),
(12, '2020_08_31_072736_alter_projects_table', 9),
(13, '2021_03_02_121626_add_max_price_for_m_and_min_price_for_m_to_projects', 10);

-- --------------------------------------------------------

--
-- Table structure for table `number_of_rooms`
--

CREATE TABLE `number_of_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `number_of_rooms`
--

INSERT INTO `number_of_rooms` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'تجاري', NULL, NULL),
(5, '0+1', '2020-07-23 05:34:28', '2020-07-23 05:34:28'),
(6, '1+1', '2020-07-23 05:34:34', '2020-07-23 05:34:34'),
(7, '2+1', '2020-07-23 05:34:39', '2020-07-23 05:34:39'),
(8, '3+1', '2020-07-23 05:35:13', '2020-07-23 05:35:13'),
(9, '4+1', '2020-07-23 05:35:19', '2020-07-23 05:35:19'),
(10, '5+1', '2020-07-23 05:35:25', '2020-07-23 05:35:25'),
(11, '3,5+1', '2020-08-10 05:42:11', '2020-08-10 05:42:11'),
(12, '4,5+1', '2020-08-10 05:42:18', '2020-08-10 05:42:18'),
(13, 'DUBLEX', '2020-08-10 05:42:37', '2020-08-10 05:42:37'),
(14, 'VİLLA', '2020-08-10 05:42:49', '2020-08-10 05:42:49'),
(16, '4+2', '2020-08-26 06:00:08', '2020-08-26 06:00:08'),
(17, '5+2', '2020-08-26 06:00:14', '2020-08-26 06:00:14'),
(18, '6+2', '2020-08-26 06:00:22', '2020-08-26 06:00:22'),
(19, '2+1 Duplex', '2020-10-20 11:11:06', '2020-10-20 11:11:06'),
(20, '3+1 Duplex', '2020-10-20 11:11:20', '2020-10-20 11:11:20'),
(21, '3+1 Triplex', '2020-10-20 11:11:42', '2020-10-20 11:11:42'),
(22, '4+1 Triplex', '2020-10-20 11:12:04', '2020-10-20 11:12:04'),
(24, '4.5+1 Triplex', '2020-10-20 11:12:48', '2020-10-20 11:12:48'),
(25, '5+1 Triplex', '2020-10-20 11:13:11', '2020-10-20 11:13:11'),
(26, '5.5+1', '2020-10-20 12:06:16', '2020-10-20 12:06:16'),
(27, 'Dukkan', '2020-10-20 12:25:12', '2020-10-20 12:25:12'),
(28, 'Office', '2020-10-21 10:41:47', '2020-10-21 10:41:47'),
(29, '4+1 Duplesx', '2020-10-26 06:19:31', '2020-10-26 06:19:31'),
(30, '5+1 Duplesx', '2020-10-26 06:19:38', '2020-10-26 06:19:38'),
(31, '8+2', '2020-10-26 11:45:01', '2020-10-26 11:45:01'),
(32, '6+1 Duplex', '2020-11-03 09:14:31', '2020-11-03 09:14:31'),
(33, '7+2', '2020-11-03 11:12:54', '2020-11-03 11:12:54'),
(34, '6+1', '2020-11-04 06:11:38', '2020-11-04 06:11:38'),
(35, '3+2', '2020-11-21 07:12:40', '2020-11-21 07:12:40'),
(36, '7+1 Duplex', '2020-11-25 05:48:17', '2020-11-25 05:48:17'),
(37, 'Penthouse', '2020-11-27 05:42:20', '2020-11-27 05:42:20'),
(38, '1.5+1', '2020-12-18 05:29:22', '2020-12-18 05:29:22'),
(39, '4+2 Duplex', '2021-01-13 10:26:25', '2021-01-13 10:26:25'),
(40, '1+2.5', '2021-09-17 10:49:00', '2021-09-17 10:49:00');

-- --------------------------------------------------------

--
-- Table structure for table `offer_orders`
--

CREATE TABLE `offer_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_visit` date DEFAULT NULL,
  `responsilble_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  `prop_type` enum('villa','duplex','land','store','office') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_id` bigint(20) UNSIGNED DEFAULT NULL,
  `number_of_rooms_id` bigint(20) UNSIGNED DEFAULT NULL,
  `prop_status` enum('ready','under_construction','ready_in_6_months') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_price` int(11) DEFAULT NULL,
  `payment` enum('cash','install','cash_install') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `look` enum('sea','city','forest','bosphorus') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interested_in_turkish_citizenship` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purpose_of_purchase` enum('investment','residence_investment','family_house','vacationing') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urgent` enum('yes','no','normal') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `checked` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offer_orders`
--

INSERT INTO `offer_orders` (`id`, `date_visit`, `responsilble_id`, `client_name`, `link`, `prop_type`, `region_id`, `number_of_rooms_id`, `prop_status`, `expected_price`, `payment`, `look`, `nationality`, `interested_in_turkish_citizenship`, `purpose_of_purchase`, `urgent`, `notes`, `checked`, `created_at`, `updated_at`) VALUES
(31, NULL, 2, 'dasdasd', 'https://study.kabulturk.com/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdasdaDA', 'no', '2021-09-20 07:00:13', '2021-09-20 07:00:13');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `display_website` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_project` text COLLATE utf8mb4_unicode_ci,
  `image_whatsapp` text COLLATE utf8mb4_unicode_ci,
  `project_type` enum('invest_resident','resident','hotel','invest') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contact_person_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment` enum('cash','cash_install') COLLATE utf8mb4_unicode_ci DEFAULT 'cash',
  `video_link` text COLLATE utf8mb4_unicode_ci,
  `plan1_percentage` int(11) DEFAULT NULL,
  `plan1_months` int(11) DEFAULT NULL,
  `plan2_percentage` int(11) DEFAULT NULL,
  `plan2_months` int(11) DEFAULT NULL,
  `plan3_percentage` int(11) DEFAULT NULL,
  `plan3_months` int(11) DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cash_discount` int(11) DEFAULT NULL,
  `prop_status` enum('ready','under_construction','used') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `looks` text COLLATE utf8mb4_unicode_ci,
  `max_price_for_meter` int(11) DEFAULT NULL,
  `min_price_for_meter` int(11) DEFAULT NULL,
  `category_id_fk` int(11) DEFAULT NULL,
  `instalment_id_fk` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `notes` longtext COLLATE utf8mb4_unicode_ci,
  `nationality` enum('YES','NO','','') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `display_website`, `name`, `title_project`, `image_whatsapp`, `project_type`, `region_id`, `contact_person_name`, `contact_person_phone`, `created_at`, `updated_at`, `payment`, `video_link`, `plan1_percentage`, `plan1_months`, `plan2_percentage`, `plan2_months`, `plan3_percentage`, `plan3_months`, `link`, `cash_discount`, `prop_status`, `delivery_date`, `looks`, `max_price_for_meter`, `min_price_for_meter`, `category_id_fk`, `instalment_id_fk`, `description`, `notes`, `nationality`) VALUES
(34, 1, 'WHYNDHAM', NULL, NULL, 'hotel', 3, 'أحمد', '05368148144', '2020-07-24 05:37:01', '2021-06-17 06:51:05', 'cash_install', '0', 50, 12, NULL, NULL, NULL, NULL, 'https://www.dropbox.com/sh/8v7jtvqfyqcxtnk/AACLVZolDQsQ2wdsYapn9YOWa?dl=0', 10, 'under_construction', '2021-03-21', 'city', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 1, 'VIRA ISTANBUL', 'مشروع عائلي بأعلى المواصفات في منطقة بيليك دوزو على القرب من وادي الحياة', '1633014478.jpeg', 'resident', 4, 'سلمى', '05523253000', '2020-08-05 05:46:00', '2021-10-27 17:54:18', 'cash', 'https://drive.google.com/file/d/1twVfSLjeoju5d67gmaiifktJxCyPpH70/preview', 50, 18, 50, 12, 0, NULL, 'https://drive.google.com/drive/folders/13ian_Y3U7HwCVRuJnxkBi-gg-gsKCTeu?usp=sharing', 10, 'ready', '2020-12-31', 'sea,greenSpace', NULL, NULL, 2, 1, 'مشروع عائلي بأعلى المواصفات في منطقة بيليك دوزو على القرب من وادي الحياة ( الذي سيصبح أكبر حديقة في تركيا ) والمارينا البحرية على ساحل بحر مرمرة \r\n📍 مزايا الموقع :\r\n- يبعد عن طريق E5 و عن خط مواصلات ( الميتروبوس ) نحو 2 كم\r\n- يبعد عن مارينا اليخوت و المرفئ التجاري وساحل البحر 3 كم\r\nيبعد عن المطار الجديد 45 كم\r\nيبعد عن تقسيم 35 كم\r\n\r\n📍 مزايا المشروع : \r\nيمتد المجمع على مساحة 90 الف متر مربع و يضم نحو 17 مبنى ( بلوك ) و يحتوي على 1156 شقة بنماذج من 1+1 الى 4+1 إضافةً الى 39 محل تجاري ويتوفر فيه مساحات كبيرة مرغوبة للعائلة كما يتمتع باجمل الخدمات الداخلية من حدائق وغيره \r\n📍خدمات المجمع :\r\nمراقبة و حراسة ( 24/7 )\r\nمسبح مفتوح\r\nمسبح مغلق حدائق و اماكن مخصصة للاطفال\r\nحمام بخار + ساونا + حمام تركي\r\nصالة ألعاب رياضية\r\nروضة أطفال ضمن المجمع\r\nاماكن خاصة للتزلج و ملعب كرة سلة\r\nأماكن مخصصة للصلاة\r\nمواقف خاصة للسيارات', 'جاهز للتسليم \r\nالخصم على الكاش 15 %', 'YES'),
(63, 1, 'biz tower', 'مشروع برج اسنيورت', '1632216999.jpg', 'resident', 3, 'TUĞÇE', '05347722546', '2020-08-05 08:53:43', '2021-11-23 14:16:04', 'cash_install', NULL, 50, 18, NULL, NULL, NULL, NULL, 'https://www.dropbox.com/sh/8ohmgdi0oool224/AAC18exo8lrge58lAa7_DT2Pa?dl=0', 15, 'ready', '2020-12-30', 'sea,city', NULL, NULL, 3, 3, 'مشروع برج اسنيورت \r\n\r\n📍مزايا الموقع : \r\nالموقع : اسنيورت قريب من الطريق السريع E5 \r\nيبعد  5 عن الطريق السريع E5   \r\n -محطة المتروباص: (7 دقائق سيرا على الأقدام)\r\n - مركز تسوق (7 دقائق سيرا على الأقدام)\r\n - بحر مرمرة (15 دقيقة بالسيارة)\r\n- مركز اسطنبول 50 دقيقة \r\n🔻 مزايا المشروع \r\nيتكون البرج من 400 شقة سكنية \r\n 48 محل تجاري\r\n\r\n🔻الخدمات الاجتماعية :\r\n -مسبح داخلي\r\n -ساونا\r\n -حمام تركي\r\n -نادي رياضي\r\n - مركز تسويق\r\n -موقف سيارات\r\n - سينما خارجية\r\n -حديقة اطفال \r\n\r\n تاريخ التسليم: أغسطس 2021\r\nالطابو جاهز للتسليم', 'طرق الدفع:\r\n 1-نقدا مغ خصم مرتفع \r\n 2-تقسيط:\r\n * 50٪ دفعة أولى 50٪ في 6 شهور\r\n * 50٪ دفعة أولى 50٪ خلال 12 شهر', 'YES'),
(117, 1, 'Düşler Vadisi Riva', 'بأحضان الطبيعة في أجمل أرياف اسطنبول منطقة ريفا الساحلية', '1632150925.jpg', 'resident', 25, 'ARZU', '05316858448', '2020-10-20 11:10:43', '2021-11-08 16:44:50', 'cash_install', 'https://drive.google.com/file/d/1EMfn6y8a93TAvE5I30EFBffQ_XUUS2R5/preview', NULL, NULL, NULL, NULL, NULL, NULL, 'https://drive.google.com/drive/folders/18o8tzNPPFze3x6E_YH32uRORt6D9mTee?usp=sharing', 7, 'under_construction', '2021-12-20', 'sea,forest,greenSpace', NULL, NULL, 4, 5, 'بأحضان الطبيعة في أجمل أرياف اسطنبول منطقة ريفا الساحلية \r\n مشروع فلل بضمان الحكومة التركية ،\r\n▪️أهم مايميز المشروع قدرتك على اختيار تفاصيل الفيلا الخاصة بك من الديكور والتشطيبات\r\n\r\n▪️كما أن المشروع مناسب للحصول على الجنسية التركية .\r\n\r\n▪️موقع مشروع :\r\n\r\nيقع المشروع في منطقة بيكوز في القسم الآسيوي من مدينة اسطنبول وتعتبر من مناطق اسطنبول السياحية بسبب وجود الغابات والمعالم السياحية العديدة .\r\n\r\n▪️يعد موقع المشروع استراتيجياً حيث يبعد عن :\r\n\r\nغابة ريفا 1 دقيقة .\r\n\r\nساحل ريفا 4 دقائق .\r\n\r\nجسر السلطان يافوز سليم 15 دقيقة .\r\n\r\nجسر السلطان محمد الفاتح 27 دقيقة .\r\n\r\nمنطقة تقسيم 15 دقيقة.\r\n\r\nمطار اسطنبول الدولي 45 دقيقة .\r\n\r\nمطار صبيحة الدولي 35 دقيقة .\r\n\r\nمنطقة شيشلي 30 دقيقة .\r\n\r\nمنطقة ليفينت ومسلك 32 دقيقة .\r\n\r\nمنطقة بيشكتاش 37 دقيقة .\r\n\r\nشواطئ البحر الأسود 15 دقيقة .\r\n\r\nمشفى تشيكمه كوي 18 دقيقة .\r\n\r\nملخص عن المشروع : \r\n- المجموع الكلي 1400 فيلا \r\n- المرحلة الأولى : التسليم في ديسمبر 2021 / 509 فيلا المتاح 15 فيلا ( 4+1 / 5+1 ) \r\n- المرحلة الثانية : التسليم بين 2021-2023 على مراحل ( المتاح فيه 100 فيلا ) من 3+1 الى 2+5 \r\n- المرحلة الثالثة : لم تبدأ بعد وغير مطروحة للبيع حالياً 2023-2025\r\nكل الخدمات الاجتماعية والبحيرات والحدائق سيتم تسليمها بنهاية 2021 \r\nالمساحات للأنماط : \r\n3 + 1 = 192 m² \r\n 4 + 1 = 265 m² \r\n 5 + 1 = 440 m² \r\n 4 + 2 = 323 m² \r\n 5 + 2 = 495 m² \r\nبالإضافة للحدائق \r\n- مزايا اضافية للمشروع : \r\n- مركز تسوق على مساحة 14.000م2 \r\n- مرافق اجتماعية وترفيهية على مساحة 14.000 م2 ( 5 مسابح ونادي رياضي ومنتجع صحي )\r\n- محمية طبيعية على مساحة 207.000 م2\r\n- ملاعب ( سلة , كرة قدم , تنس ) \r\n- نادي خيول \r\n- حديقة بمساحة 72.000 م2\r\n- مدرسة خاصة مساحة 20.000 م2\r\n- مدرسة حكومية مساحة 8.000 م2\r\n- ملعب للأطفال على مساحة 4.000 م2\r\n- بحيرة صناعية على مساحة 25.000 م2\r\n- مسجد \r\n- مطار للمروحيات \r\n- ملعب غولف \r\n- مارينا بحرية \r\n- كراج خاص بكل فيلا', 'المشروع بضمان الحكومة التركية', 'YES'),
(144, 1, 'Prime Istanbul', 'شقق فندقية في باسن اكسبريس اسطنبول الاوروبية', '1632212634.jpg', 'hotel', 9, 'Aras', '05554825675', '2020-10-30 10:27:17', '2021-11-22 21:32:02', 'cash_install', '0', 50, 12, NULL, NULL, NULL, NULL, 'https://www.dropbox.com/sh/q2tr88n1sqjpp28/AABg02djMtHLSWrMhVawY48Ba?dl=0', 12, 'ready', NULL, 'city', NULL, NULL, 2, 11, 'شقق فندقية في باسن اكسبريس اسطنبول الاوروبية \r\n📍مزايا الموقع :\r\n-في الطرف الأوروبي من مدينة إسطنبول وتحديداً في منطقة باسن اكسبريس\r\n- يبعد المشروع \r\n• 20 كم عن مطار إسطنبول الجديد.\r\n• 400 م عن المترو.\r\n•  دقيقة عن الباسن اكسبريس والطريق السريع TEM.\r\n• 1 كم عن الطريق الرئيسي E5.\r\n• 7 كم عن فلوريا \r\n• دقيقة عن طريق باسن اكسبريس.\r\n• 20دقيقة عن مول اوف إسطنبول.\r\n\r\n\r\n🔻 مميزات المشروع\r\n• يتمركز على أحد أهم الطرق الرئيسية ضمن مدينة إسطنبول وهو الباسن اكسبريس الذي يعتبر العصب الرئيسي لمدينة إسطنبول يبدأ من مطار اتاتورك وينتهي بمطار إسطنبول الجديد.\r\n\r\n• المشروع مصمم على شكل فندق تماماً ويحتوي على فندقين أيضاً  وهذا يعني أن خدمات هذا المشروع كاملة هي على النظام الفندقي.\r\n\r\n• خدمات المشروع الفندقية كمطعم وقاعة استقبال ومركز صحي وخدمة تنظيف الغرف \r\n\r\n• مشروع استثماري بشكل كامل وله عائد استثماري جيد \r\n\r\n• خدمات المشروع\r\n• المشروع مؤمن 24/7.\r\n• مسبح مغلق ومفتوح بنفس الوقت.\r\n• تكييف مركزي.\r\n• تدفئة مركزية.\r\n• مواصفات قياسية مناسبة للزلازل.\r\n• أماكن لعب للأطفال.\r\n• مركز لياقة بدنية.\r\n• مرآب سيارات خاص بالمشروع.\r\n• مساحات خضراء.\r\n• حمام تركي وساونا.\r\n• نظام البيوت الذكية.\r\n• خدمات فندقية بالكامل.', 'جاهز للتسليم \r\nيوجد خصم في حال الدفع كاش 15%\r\nتواصل مع استشاري المبيعات لمعرفة مقدار الخصم\r\nمتوفر بالاقساط بالطرق التالية : \r\n20% مقدم والباقي على 36 شهر \r\n20% مقدم والباقي على 24 شهر \r\n20% مقدم والباقي على 12 شهر', 'YES'),
(152, 1, 'AHTERAN', 'امتلك شقق بمساحات واسعة واطلالات جميلة بأسعار مناسبة', '1632995612.jpg', 'resident', 3, 'Zehra', '05427417191', '2020-11-03 09:59:50', '2021-11-25 14:11:59', 'cash_install', '0', 35, 24, NULL, NULL, NULL, NULL, 'https://temeltas.bitrix24.com.tr/~IoTnC', 15, 'under_construction', '2022-04-03', 'city,greenSpace', NULL, NULL, 2, 3, '• مشروع سكني مناسب للعائلات في المنطقة الواقعة بين اسنيورت وباهشة شهير في محلة أرديشلي الراقية\r\nفرصة لتملك شقق بمساحات واسعة ضمن مجمع حديث بأسعار مناسبة \r\n📍 مزايا الموقع : \r\n• 700 متر عن خط TEM السريع.\r\n• 750 متر عن مركز تسوق أكباتي مول.\r\n• 50 متر عن محطة المترو قيد الانشاء\r\n• 100 متر عن أقرب محطة حافلات\r\n• 4 كم عن بحيرة كوتشوك شيكمجه. \r\n• 7.2 كم عن مركز تسوق مرمرة بارك.\r\n• 6.5 كم - 12 دقيقة عن خط المتروباص E5 الطريق السريع.\r\n• 3 كم عن جامعة اسنيورت.\r\n• 800 متر عن مشفى استينيه. \r\n• 800 متر عن جامعة استينيه.\r\n• 1.5 كم عن مركز تسوق اسينجان مول.\r\n• 2.7 كم عن مدينة الألعاب المائية أكوا دولفين.\r\n• 36 كم عن مطار اسطنبول الجديد.\r\n\r\n🔻 مزايا المشروع : \r\n• تبلغ مساحة المشروع 25.000 متر مربع منها 16.500 متر مربع مساحات خضراء.\r\n• يتكون المشروع من 8 أبنية سكنية ، عدد الطوابق ما بين 6 إلى 9 طوابق وعدد الشقق 340 شقة.\r\n• يحتوي المشروع على 70 متجر بمساحات تبدأ من 27 مترًا مربعًا وحتى 504 مترًا مربعًا.\r\n• جميع الشقق بها شرفات ، وتتوفر شقق دوبلكس.\r\n•جميع الشقق بمطبخ مغلق.\r\n• يتوفر شقق بإطلالة على بحيرة كوتشوك تشكمجة. \r\n• تتوفر شقق مع تراسات بمساحة تبدأ من 12 متر مربع .\r\n• يشتمل المشروع على مناطق ترفيهية متكاملة ، ومسبح خارجي ، ومسبحين داخليين بشكل منفصل للرجال والنساء ، وملعب كرة قدم ، وملعب كرة سلة ، ومناطق ألعاب أطفال داخلية وخارجية ، وساونا ، وحمام تركي ، ومسارات للركض.', '* تاريخ التسليم: \r\n تاريخ التلسيم 30.05.2022.\r\n• سند الملكية جاهز.\r\n* خطط الدفع:\r\n• نقدا\r\n•  تقسيط بدفعة اولى %50على12شهر\r\nخصم الكاش 15 %', 'YES'),
(207, 1, 'nouvel maltepe', 'مشروع بإطلالات على جزر الاميرات في اسطنبول آسيا', '1632231626.jpg', 'resident', 32, NULL, NULL, '2021-02-24 05:40:06', '2021-10-28 19:01:13', 'cash_install', 'https://drive.google.com/file/d/1s-dNCRPhllcTvBBsyZKt7VAHp_piNU2S/preview', 50, 18, NULL, NULL, NULL, NULL, 'https://drive.google.com/drive/folders/1GsMO3zBjl39fd6q6J1hdzbKCDcO9mXL8', 15, 'under_construction', '2021-01-10', 'sea', NULL, NULL, 4, 1, 'بإطلالات على جزر الاميرات في اسطنبول وفي واحدة من أرقى المناطق في اسطنبول الاسيوية وبالقرب من كورنيش مالتيبه الجميل \r\n📍مزايا الموقع \r\n• يقع المشروع في الطرف الاسيوي من مدينة إسطنبول وتحديداً في منطقة مالتيبه الساحلية، المنطقة التي تعتبر واحدة من المناطق التي تسكنها الطبقات الراقية \r\n• يبعد المشروع عن\r\n• 5 كم عن الطريق الرئيسي E5.\r\n• 20 دقيقة عن نفق اوراسيا.\r\n• 45 دقيقة عن مطار إسطنبول.\r\n• 20 دقيقة عن مطار صبيحة.\r\n\r\n🔻 مميزات المشروع\r\n• يتميز المشروع أيضاً في الاطلالات البحرية وبعض الاطلالات الجزئية على جزر الاميرات التي تتواجد مقابل منطقة مالتيبي، والتي يتواجد فيها مارينا ضخمة تُعد من أحد أفضل المارينات في إسطنبول.\r\n\r\n• يمتاز المشروع  بقربه من أهم متروهات إسطنبول مترو مرمراي الشهير، وعلى بعد أمتار من شارع بغداد الشهير في مدينة إسطنبول.\r\n\r\n🔻 خدمات المشروع\r\n• المشروع مؤمن 7/24.\r\n• مسبح وحمام تركي.\r\n• ساونا.\r\n• صالون رياضي.\r\n• نادي للأطفال.\r\n• نظام السيستم الذكي\r\n• مرآب سيارات خاص بالمشروع.\r\n• ملاعب ومساحات خضراء.', '• التسليم 30.11.2021', 'YES'),
(225, 1, 'IMPERIUM RESIDENCE', NULL, '1632221075.jpeg', 'invest_resident', 14, NULL, NULL, '2021-03-16 05:23:30', '2021-09-21 07:50:54', 'cash', 'https://drive.google.com/file/d/1cKlAgimC-mrHbfzBj6Vo6nfrXmGDHqYZ/preview', NULL, NULL, NULL, NULL, NULL, NULL, 'https://drive.google.com/drive/folders/1QIsDaB8Mcp5On9_c_uLUN-Jy8uxL9vS4', 10, 'ready', '2021-01-05', 'city', NULL, NULL, 1, 1, 'مشروع بيريوم شيشلي \r\nشقق سكنية في وسط اسطنبول مقابل محطة متروبوس \r\n📍مزايا الموقع : \r\nيقع المشروع في منطقة شيشلي مركز الاعمال في اسطنبول الاوروبية على الطريق السريع E5 مباشرة \r\nيبعد 2 كم عن مركز شيشلي منطقة مجيدية كوي و 3 كم عن تقسيم \r\n🔻 مزايا المشروع : \r\nأهم ميزة للمشروع وجوده عند محطة المتروبوس الأمر الذي يجعل التنقل اسهل لكل أماكن اسطنبول \r\nعدد الطوابق 13 طابق \r\nالمشروع كامل الخدمات', 'المشروع جاهز للتسليم \r\nيوجد خصم عند الدفع كاش يصل الى 12 %', 'YES'),
(304, 1, 'noral tower', 'برج مجيديه كوي التجاري في شيشلي', '1632229720.jpeg', 'invest', 14, NULL, NULL, '2021-08-27 05:57:38', '2021-10-01 12:28:35', 'cash', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 1, 1, 'برج مجيديه كوي التجاري في شيشلي \r\n\r\n📍مزايا الموقع \r\nيقع المشروع في مجيدية كوي شيشلي في مركز اسطنبول الأوروبية \r\n\r\n🔻مزايا المشروع \r\n\r\n 243 مكتب منزلي و 12 مكتب و 36 محل تجاري. . \r\n\r\n تم بناء المساحات العامة والمتاجر والمقاهي ومصففي الشعر المشتركة للتواصل الاجتماعي. ومواقف الدراجات ن الأسقف التي يبلغ ارتفاعها أربعة أمتار ، ونوافذ عازلة للصوت ولكنها منبثقة ، وتكييف مركزي ، و 11 مصعد\r\n\r\n🔻 الخدمات الاجتماعية\r\nمع N-More ، نقوم بإنشاء حلول غرف جديدة تمامًا من شأنها أن تثري حياتك وستسمح لك باستعادة وقتك. نحن نعلم أنه عندما يمكنك الوصول بسهولة إلى المناطق التي تحتاج إليها ، ستزيد من فرص قضاء وقت ممتع.\r\n\r\nمنزل الضيوف\r\nمساحة العمل وقاعة الاجتماعات\r\nمسبح التراس والكافيه\r\nسبا ، ساونا وغرفة بخار\r\nغرفة الالعاب\r\nسينما\r\nستوديو اليوغا والرقص\r\nنادي رياضي', NULL, 'YES'),
(306, 1, 'otto kağıthane', 'مشروع استثماري في قلب اسطنبول الاوروبية بمحيط شيشلي منطقة كاتهانه', '1632150305.jpeg', 'invest_resident', 22, NULL, NULL, '2021-08-27 06:19:28', '2021-09-24 09:21:10', 'cash', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 2, 1, 'مشروع استثماري في قلب اسطنبول الاوروبية بمحيط شيشلي منطقة كاتهانه \r\nمزايا الموقع : \r\nالمنطقة تعتبر من المناطق المركزية القريبة من قلب مدينة إسطنبول والتي تخضع للتجديد على الطراز الحديث وهو ما أعطاها أهمية خاصة حيث تقع بجوار منطقة أيوب الشهيرة ومنطقة شيشلي مركز الأعمال\r\nالمبنى السكني يحتوي على خدمات الفنادق ، بمساحة أرض 5000 متر مربع ، 17 طابقًا و 3 مواقف للسيارات .\r\nمزايا المشروع : \r\nالمبنى يتكون من 228 مسكن ، 36 مكتبًا ووحدتين تجاريتين بمساحة 4000 متر مربع.\r\n\r\nالخدمات الاجتماعية :\r\nمجمع الصالة الرياضية بأحدث الأجهزة وصالة ساونا  مع شرفة في الطابق 17.\r\nمنطقة ترفيهية في الهواء الطلق ، مع سينما في الهواء الطلق ومقهى ومطعم.\r\nغرف اجتماعات ، سينما مغلقة ، غرفة للألعاب:  PlayStation ، billiard , tennis table.\r\nالاستقبال على المدخل\r\nالأمن الخاص\r\nالدوائر التلفزيونية المغلقة.\r\nمحطة الشحن الكهربائية في مكان وقوف السيارات\r\nخدمة التنظيف\r\nمكاتب جاهزة ، مقهى ، صيدلية ، غرفة غسيل ، حديقة نباتية.\r\nالطابق الثاني سيعمل كفندق.', 'تسليم المشروع نهاية السنة 2021', 'YES'),
(307, 1, 'dap vadisi', 'مشروع مكاتب كاتهانة التجارية', '1632222183.jpg', 'invest', 22, NULL, NULL, '2021-08-27 06:21:14', '2021-10-11 10:03:10', 'cash', 'https://drive.google.com/file/d/1ZV3DzBu6WiShxNIxnnRn8qx4v-tGCdjE/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 5, 'مشروع مكاتب كاتهانة التجارية \r\n📍مزايا الموقع : \r\nيقع المشروع في منطقة كاتهانةفي اسطنبول الاوروبية  المحيطة بشيشلي \r\nيبعد عن \r\n150 متر فقط من محطة مترو كاتهانة.\r\n36  كم من مطار إسطنبول الجديد.\r\n 9   كم من ميدان تقسيم الشهير.\r\n 4   كم من مول جواهر.\r\n10  كم من جسر البوسفور \r\n 7   كم من مول سفير و 8 كم من مول Axis.\r\n 7   كم من منطقة ليفانت و 10 كم من منطقة مسلك.\r\n\r\n🔻 مزايا المشروع : \r\nيتكون من 932 وحدة تجارية مستقلة. \r\n يوفر لكم خدمات VIP  تشمل غرف اجتماعات و محلات تجارية و مقاهي و مطاعم و أسواق وفروع للبنوك الكبيرة .', 'طرق الدفع : \r\nنقداً ( كاش ) مع خصم \r\nأقساط على طريقتين \r\n50% مقدم وأقساط لمدة 36 شهر \r\n40% مقدم والباقي أقساط لمدة 24 شهر', 'YES'),
(310, 1, 'topkapı evleri', 'امتلك في قلب اسطنبول منطقة توب كابي', '1632213404.jpg', 'resident', 30, NULL, NULL, '2021-08-27 06:24:32', '2021-09-24 09:31:29', 'cash_install', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 1, 5, 'امتلك في قلب اسطنبول منطقة توب كابي \r\n🔸البلدية التابع لها المشروع: zeytınburnu\r\n🔸 تاريخ التسليم:  01/06/2022 \r\n🔸نوع المشروع : سكني \r\n🔸عدد البلوكات: 8\r\n🔸عدد المحلات التجاريه : 24\r\n🔸الخدمات المتوفرة في المشروع: نظام استقبال 24/7 – مسابح عدد 2 –غرف ساونا – غرف بخار – نادي رياضي – حدائق اطفال – كافيه \r\n🔸البعد عن محطة ميترو:  davatpasa  1.5km \r\n🔸البعد عن محطة ميتروباص:  şahıt Mustafa cambaz 450 m\r\n🔸البعد عن محطة الترام :  topkapı 800 m\r\n🔸البعد عن خط E5 : 450 m\r\n🔸البعد عن المطار الجديد:.  .45 كم\r\n🔸البعد عن مول هستوريا :4 كم\r\n🔸 البعد عن ميدان تقسيم :8 كم\r\n🔸 البعد عن الفاتح :1 كم\r\n🔸اقرب مول : مول هيسترويا 3 كم \r\n🔸اقرب مشفى : مشفى koç Üniversite hastanesı 100 m\r\n🔸اقرب وسيلة مواصلات: محطة موقف المتروبوس 450 متر', NULL, 'YES'),
(314, 1, 'nivo istanbul', 'مشروع استثماري بالقرب من مترو الباسن اكسبريس', '1632143569.jpg', 'invest', 9, NULL, NULL, '2021-08-27 06:36:14', '2021-09-24 09:19:27', 'cash_install', 'https://drive.google.com/file/d/1bJoeQ3cHw_LHD5mGdlCo2rfi5BEdl_br/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 2, 3, 'مشروع سكني استثماري مركزي (الباسن اكسبرس)\r\n\r\n✅ تصميم مميز \r\n\r\n✅ خدمات متكاملة (صالات رياضيةة,ساونا,حمام بخار,حدائق,حراسة..)\r\n\r\n✅ 20 دقيقة عن تقسيم\r\n\r\n✅30 دقيقة عن مطار اسطنبول\r\n\r\n✅ 10 دقائق عن مول اوف اسطنبول\r\n\r\n✅ 200 متر عن محطة الميترو\r\n\r\n✅ بالقرب من العديد من الجامعات  والكليات \r\n\r\n✅ اسعار المشروع دائماً في ارتفاع  لكون ضمن منطقة الباسن اكسبرس والايجار فيه يصل لحد ممتاز', NULL, 'YES'),
(315, 1, 'gül express', 'شقق مكتبية فندقية مقابل مول اوف اسطنبول وعلى بعد 50 م من محطة مترو', '1632213978.jpg', 'invest', 9, NULL, NULL, '2021-08-27 06:36:58', '2021-09-24 09:07:33', 'cash', 'https://drive.google.com/file/d/1eGzjZE4WUbTWg8FXgzl-8I6Pa0GJTUSB/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 1, '✅  الوصف : شقق مكتبية فندقية مقابل مول اوف اسطنبول وعلى بعد 50 م من محطة مترو     \r\n\r\n✅  الموقع : اسطنبول الأوروبية – باسن اكسبريس \r\n\r\n✅ ميزة المشروع : قربه من اكبر مول في اسطنبول بالاضافة لمحطة مترو ووجوده على شارع الباسن اكسبريس المركز التجاري \r\n\r\n✅ نمط العرض : استثماري \r\n\r\n✅ القيمة الاستثمارية :  عائد ايجاري مرتفع – المشروع مقيم وموجود في منصة Booking  الفندقية المشهورة   \r\n\r\n✅  الأنماط المتاحة : 0+1 / 2+1', NULL, 'YES'),
(317, 1, 'Güneşli homes', 'مشروع بيوت غونيشلي', '1634028109.jpg', 'invest_resident', 5, NULL, NULL, '2021-08-27 06:38:02', '2021-11-22 21:29:19', 'cash', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 2, 3, 'مشروع بيوت غونيشلي \r\nالسكن المثالي بالقرب من مركز اسطنبول وشارع الباسن اكسبريس التجاري \r\nأسعار مميزة - لايوجد مصاريف طابو - الضريبة 1% فقط - الطابو جاهز !! \r\n📍مزايا الموقع :\r\nيقع في مدينة إسطنبول في منطقة غونشلي \r\nمحيط المشروع حيوي للغاية لوجود العديد من مراكز التسوق و اقترابه من المطار ومحطات المترو \r\nيبعد عن : \r\nMetro 5 min\r\nBasın Express 10 min\r\nالمطارات \r\nAtatürk Airport 20min\r\nİstanbul Airport 35 min\r\nمراكز التسوق \r\nGüneşli Park 6 min\r\nMall of istanbul 10 min\r\nArena Park 10 min\r\nالجامعات\r\nAltınbaş 5 min\r\nİstinye 15 min\r\nKültür 15 min\r\nAydın 15 min\r\nالمشافي \r\nErdem hastanesi 2 min\r\nMedipol Mega 13 min\r\nMedilife 15 min\r\n\r\n🔻 مزايا المشروع : \r\n▪️المشروع عائلي بامتياز ( لايوجد فيه نمط 1+1) \r\n▪️ على مساحة أرض 8600 م2 مؤلفة من 4 بلوكات سكنية وبلوك تجاري\r\n▪️تشكل الحدائق المساحات الخضراء نسبة 60% من المساحة الإجمالية\r\n▪️إجمالي عدد الشقق 289 شقة و 12 محل تجاري\r\n▪️الضريبة 1% فقط ✅\r\n🔻خدمات المشروع\r\nاوتوبارك يتسع لأكثر من 350 سيارة \r\nحمام تركي و ساونا \r\nنادي رياض \r\nمسبح مغلق \r\nأمن 24/7', '▪️تاريخ التسليم في 01-10-2022\r\nخصم الكاش يصل الى 15 %', 'YES'),
(318, 1, 'polat tower', 'مشروع برج باسن اكسبرس', '1632234188.jpeg', 'invest', 9, NULL, NULL, '2021-08-27 06:38:43', '2021-09-24 09:21:50', 'cash', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 1, 'تملك ضمن أفخم مشاريع اسطنبول في قلب مدينة إسطنبول حيث تجتمع الرفاهية والاسترخاء في آن واحد في مشروع برج باسن اكسبرس \r\nمميزات المشروع:\r\n-	يقع في منطقة باسن اكسبرس. \r\n-	وجود مدخل الى محطة المترو من داخل المشروع.\r\n-	يوجد العديد من المولات التجارية بقرب المشروع أقربها مول 212. \r\n-	اطلالات بانورامية 360 درجة اطلالات من أربع جهات. \r\n-	ارتفاع السقف 3 متر مما يعطي شعور بكبر المساحة. \r\n-	مركز تجاري من 3 طوابق من ضمن المشروع.', 'ضريبة المشروع 18% لأنه تجاري في حال عدم التملك سابقا في تركيا او عدم وجود اقامة بإمكاننا الحصول على إعفاء ضريبي وعدم دفع الضريبة', 'YES'),
(320, 1, 'Empire Avcılar', 'مشروع برج افجلار الراقي', NULL, 'invest_resident', 20, NULL, NULL, '2021-08-27 06:45:02', '2021-09-24 09:01:24', 'cash_install', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 5, '✅ افجلار - اسطنبول الاوروبية \r\n\r\n✅المواصلات المحيطة : محطة متروباص بجانب المشروع \r\n\r\n✅ ميزة المشروع : وجوده على الطريق السريع ومحطة المتروباص_بالقرب من مول بيليكان التجاري _ من المشاريع المحيطة بقناة اسطنبول _ اطلالات على البحيرة والبحر من الطوابق العليا \r\n\r\n✅الأنماط المتوفرة :  1+1 \\  2+1 \\ 3+1  \r\n\r\n✅طريقة الدفع :  تقسيط تصل الى 36 شهر \r\n\r\nضمان إعادة بيع بعد ثلاث سنوات بربح 35% 📢', NULL, 'YES'),
(322, 1, 'bey garden', 'مشروع بيكينت بالقرب من الوادي الاخضر', '1632215132.jpeg', 'resident', 4, NULL, NULL, '2021-08-27 06:47:04', '2021-09-25 04:46:02', 'cash_install', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 3, 2, 'منطقة بيلكدوزو ، بيكانت \r\n\r\n✅يبعد فقط  10 دقائق من طريق السريع (E5 🛣️ والمتروبوس 🚍 )\r\n\r\n✅ 10 دقائق من ساحل gürpınar\r\n\r\n✅اكبر حديقة عامة  في بيلكدوزو (yaşam vadisi)\r\n\r\n✅المشروع محاط بكل الخدمات ، مستشفيات خاصة وحكومية\r\n\r\n✅محطة باصات، ومراكز تجارية Migros – şok - File بمسافة سير على الاقدام\r\n\r\n✅ المشروع  عبارة عن 3 ابنية مجهزة بخدمات عديدة :\r\n-	مشروع سكني عائلي بامتياز \r\n-	الامن وحراسة 24 ساعة \r\n-	مواقف سيارات \r\n-	صالة رياضة بمساحة كبيرة \r\n-	حمام تركي  و ساونا \r\n-	حديقة', NULL, 'YES'),
(323, 1, 'AKS focus', 'مشروع عدنان قهوجي في بيليك دوزو', '1632143291.jpeg', 'resident', 4, NULL, NULL, '2021-08-27 06:47:43', '2021-11-19 19:15:06', 'cash_install', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 3, 4, 'مشروع سكني طابع عائلي \r\n\r\n✅ 800 متر من محطة الميتر التي يتم انشائها \r\n\r\n✅ قريب من كافة الخدمات (مشافي ,مدارس,مولات,حدائق ..)\r\n\r\n✅يتميز بالعديد من الخدمات الداخلية(ساونا, صالات رياضية ,مسابح , حدائق,حمام بخار تركي,حراسة 24 ساعة ..)\r\n\r\n✅ الطابو جاهز \r\n\r\n✅ امكانية التقسيط المريح حتى ثلاث سنوات بدفعة اولى 50% والباقي على ثلاث سنوات \r\n\r\n✅ قسم جاهز للسكن والقسم الاخر سيتم تسليمه في الشهر الثامن \r\n\r\n✅ اطلالة على لاند سكيب (حديقة داخلية مميزة )', NULL, 'YES'),
(324, 1, 'Meydan yakuplu', 'مشروع سكني طابع عائلي في المدينة الساحلية ( بيلك دوزو)', '1632228532.jpg', 'resident', 4, NULL, NULL, '2021-08-27 08:01:09', '2021-11-22 15:50:35', 'cash_install', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 3, 'مشروع سكني طابع عائلي في المدينة الساحلية ( بيلك دوزو)\r\n\r\n✅ المشروع جاهز للسكن\r\n\r\n✅ طابو جاهز \r\n\r\n✅ متكامل الخدمات\r\n\r\n✅ دقيقتين الى طريق الرئيسي E5 ويبعد ثلاث دقائق الى الساحل البحري \r\n\r\n✅ ضمن بيئة تتميز بهوائها النقي لقربها من الساحل \r\n\r\n✅ قربه من عدة مدارس وجامعات بالاضافة للمشافي واكبر حديقة نباتية', 'خصم الكاش يصل الى 12 % \r\nالمشروع جاهز للتسليم', 'YES'),
(325, 1, 'Marmara 4', 'بالقرب من بحر مرمرة والمارينا ومسجد على طراز ايا صوفيا', '1632223303.jpg', 'resident', 4, NULL, NULL, '2021-08-27 08:02:40', '2021-11-09 15:59:48', 'cash', 'https://drive.google.com/file/d/1l0ZL3YcDjT0WRzUGPs9KkUpkdn2X0UYb/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 1, 'بالقرب من بحر مرمرة والمارينا ومسجد على طراز ايا صوفيا \r\nالموقع : منطقة بيلك دوزو يعقوبلو\r\n\r\n▪️ميزات الموقع : \r\n- يبعد مشروعنا 5 دقائق فقط عن خط المتروبوس.\r\n- يبعد عن مارينا بيلك دوزو 2 دقيقة فقط.\r\n- يمر من أمام المشروع مباشرة باص و مينى بوص.\r\n\r\n*لمحة خارجية عن المشروع*\r\n- مشروعنا يتكون من 9 بلوكات\r\n- كل بلوك يتكون من 12 طابق\r\n- يوجد 2 طابق أسفل المشروع اوتو بارك\r\n- مساحة المشروع 36.000 م و منها 21.000 م مساحات خضراء و مسطحات مائية\r\n- يضم المشروع عدد 44 محل تجارى مما سيجعل المنطقة مخدمة بشكل كبير.\r\n-توجد خدمات منفصلة بالمشروع للرجال و النساء ( ساونا - صالة رياضية - حمام تركى-........)\r\n-‏يمتاز المشروع بالطابع العائلى حيث أن جميع الشقق من غرفتين وصالة حتى أربعة غرف وصالة \r\n-‏المشروع تحت الإنشاء سيتم تسليمه في منتصف الشهر السابع \r\n\r\n▪️*ما يميز المشروع*\r\n- يمتاز مشروعنا بموقعه المميز حيث انه قريب من البحر والمواصلات \r\n- ‏يمتاز بالطابع العائلى المحافظ حيث أن كل الخدمات منفصلة للرجال و النساء \r\n- ‏يمتاز بإطلالاته المميزة حيث أن جميع اطلالاته مفتوحة على الاند سكيب و الطوابق العليا اطلالة بحرية', 'المشروع يقدم خصومات عالية على الكاش , اطلب من استشاري المبيعات الخصم', 'YES'),
(328, 1, 'Göktaş', NULL, NULL, 'resident', 4, NULL, NULL, '2021-08-27 08:05:16', '2021-08-27 08:05:16', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL, NULL, NULL),
(329, 1, 'gül konakları', NULL, NULL, 'resident', 4, NULL, NULL, '2021-08-27 08:06:02', '2021-08-27 08:06:02', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL, '2.000.000 / 5+2', NULL),
(330, 1, 'qarat', NULL, NULL, 'invest_resident', 4, NULL, NULL, '2021-08-27 08:06:38', '2021-08-27 08:06:38', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 4, NULL, NULL, NULL),
(331, 1, 'Olcay Point', 'مشروع سكني طابع عائلي واستثماري', '1632228901.jpeg', 'invest_resident', 3, NULL, NULL, '2021-08-27 08:08:01', '2021-09-24 09:20:50', 'cash', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 3, 1, 'مشروع سكني طابع عائلي واستثماري \r\n\r\n✅ مشروع ريسيدانس كامل الخدمات فيه ثلاث طوابق محلات تجارية ومطاعم على نظام القرية العالمية \r\n\r\n✅بالقرب من طريق E5 (الرئيسي)\r\n\r\n✅ خلف مول مرمرة بارك (اكبر مولات المنطقة)\r\n\r\n✅ 800 متر من محطة الميتر التي يتم انشائها \r\n\r\n✅ قريب من كافة الخدمات (مشافي ,مدارس,مولات,حدائق ..)\r\n\r\n✅يتميز بالعديد من الخدمات الداخلية(ساونا, صالات رياضية ,مسابح , حدائق,حمام بخار تركي,حراسة 24 ساعة ..)\r\n\r\n✅ الطابو جاهز', 'التسليم في 2022\r\nاستفد من خصومات الكاش العالية في هذا المشروع', 'YES'),
(333, 1, 'N logo', 'أبراج اسنيورت في اسطنبول الاوروبية بمحاذاة جامعة اسنيورت', '1632228562.jpg', 'resident', 3, NULL, NULL, '2021-08-27 08:22:38', '2021-09-24 09:16:10', 'cash', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 5, '✅الموقع : اسنيورت - اسطنبول الاوروبية \r\n\r\n✅ المواصلات المحيطة : باصات النقل العام – 400 م عن محطة مترو قيد انشاء   \r\n\r\n✅ميزة المشروع : قربه من جامعة اسنيورت 5 دقائق – بالقرب من مول سيتي سنتر – بمحيطه مشروع مترو انفاق مما يرفع السعر \r\nمشروع عائلي – محلات تجارية داخل المشروع   \r\n\r\n✅الأنماط المتوفرة : 1+1/2+1/3+1', '- الخصم أعلى في حال الاهتمام بالدفع كاش\r\n- يتوفر بالمشروع شقق مستعملة أقل سعراً ولكن فيها مشكلة بالتقييم العقاري بالإضافة لأنها مستهلكة', NULL),
(334, 1, 'S tower es', 'أبراج سكنية واستثمارية ومحلات تجارية تلبي جميع الاحتياجات', '1632232206.jpg', 'invest', 3, NULL, NULL, '2021-08-27 08:24:04', '2021-09-24 10:06:46', 'cash_install', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 3, '▪️5 أبراج سكنية واستثمارية ومحلات تجارية تلبي جميع الاحتياجات \r\n\r\n▪️مساحات خضراء 85% من مساحة المشروع \r\n\r\n▪️يتضمن مرافق اجتماعية خاصة بسكان البناء :\r\nمسبح مفتوح - مسبح مغلق \r\nساونا - حمام تركي \r\nصالة رياضية \r\nملاعب كرة سلة \r\nمساحات لالعاب الاطفال \r\nجلسات عائلية \r\n▪️يوجد مدخلين للمشروع ومدخل للاوتوبارك \r\nلكل شقة مكان مخصص للسيارات \r\n\r\n▪️ميزات الموقع : \r\nمول التوريوم 3km \r\nمول مرمرة بارك 2.5km \r\nمول سيتي سنتر 1.5km \r\n\r\n\r\nالمرافق الحكومية مثل البلدية و النفوس  1.5km \r\nجامعة اسنيورت 1.5km\r\n\r\nمطار اسطنبول 40 دقيقة \r\nمطار اتاتورك 15 دقيقة \r\n\r\nمدارس لجميع الفئات العمرية \r\nمشافي خاصة وحكومية ومستوصفات ومراكز صحية\r\n\r\nالتسليم :\r\nالقسم الاول 02/2021\r\nلقسم الثاني 01/2022', NULL, NULL),
(335, 1, 'kılıç gold', 'مشروع كليش اسنيورت', '1632221690.jpg', 'resident', 3, NULL, NULL, '2021-08-27 08:25:09', '2021-11-16 15:17:23', 'cash_install', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 3, 5, '▪️يقع المشروع في منطقة اسنيورت في اسطنبول الاوروبية \r\n▪️بتصميمات ومساحات مختلفة وشرفة خاصة لكل شقة من شقق المشروع  لتلبي كل الاحتياجات والاذواق.\r\n▪️المتضمن عند تسليم الشقة :  خزن المطبخ – الفرن – الطباخ – شفاط الهواء\r\n▪️كما يتضمن المشروع على 17 محلا تجاريا وذلك لتلبية الحاجيات اليومية لسكان المشروع \r\n▪️خدمات المشروع:\r\n•	مساحات خضراء\r\n•	مسبحين مفتوحين \r\n•	مسبحين مغلقين منفصلين للرجال والنساء\r\n•	صالة لياقة بدنية \\ حمام تركي \\ ساونا \\  مصلى منفصلة للرجال والنساء\r\n•	مسارات للمشي\r\n•	ملعب تنس  ملعب كرة سلة /  /  ملعب كرة قدم\r\n•	مساحات مفتوحة مخصصة لألعاب الأطفال \r\n•	موقف سيارات طابقي مغلق\r\n•	موقف سيارات مفتوح\r\n•	نظام امني متكامل وحراسة على مدار الساعة\r\n•	معهد لتعليم اللغات\r\n▪️ميزات الموقع : \r\nرغم قرب المسافة بين المشروع والمترو بوس فالمشروع يقدم خدمة نقل مجانية من المشروع الى محطة المتروبوس واهم المولات التجارية ك الميغروس , مرمرة بارك , التوريوم ..\r\n•	حالة الطابو جاهز – مناسب للجنسية\r\n•	تاريخ التسليم 06/2022', 'تاريخ التسليم 06/2022\r\nراجع خصم الكاش مع استشاري المبيعات', 'YES'),
(336, 1, 'live terrace es', 'مجمع سكني طابع عائلي بالقرب من خط المتروبوس ومول مرمرة بارك', '1632221900.jpeg', 'resident', 3, NULL, NULL, '2021-08-27 08:25:39', '2021-09-24 09:12:45', 'cash_install', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 3, 1, 'مجمع سكني طابع عائلي بالقرب من خط المتروبوس ومول مرمرة بارك \r\n\r\n✅ الموقع : اسطنبول الاوروبية - اسنيورت  \r\n\r\n✅ جاهز للسكن \r\n\r\n✅تشطيب راقي \r\n\r\n✅موقع حيوي مميز \r\n\r\n✅الطابو جاهز  \r\n\r\n✅ خدمات متكاملة ضمن المشروع \r\n\r\n✅دقائق قليلة عن محطة الميتروبوس \r\n\r\n✅تراسات لأغلب الشقق', NULL, 'YES'),
(337, 1, 'wyndham', 'مشروع ويندهام الفندقي ( شقق فندقية مؤثثة )', '1632234950.jpg', 'invest', 3, NULL, NULL, '2021-08-27 08:26:22', '2021-09-24 09:32:16', 'cash', 'https://drive.google.com/file/d/13Xg04hZGftZuEdqrbP8v-GEOtFJoJWxi/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 3, 1, '✅  الوصف :  مشروع ويندهام الفندقي ( شقق فندقية مؤثثة )  \r\n\r\n✅  الموقع : اسطنبول الأوروبية – اسنيورت \r\n\r\n✅ ميزة المشروع : مشروع فندقي تابع لسلسلة ويندهام الشهيرة \r\n\r\n✅ نمط العرض : استثماري \r\n\r\n✅ القيمة الاستثمارية :  عائد فندقي *يصل الى 7 % وعقد إدارة للشقق لمدة عشرين سنة من قبل ويندهام* \r\n\r\n✅ عقد إدارة لمدة 20 سنة من إدارة المشروع وويندهام', NULL, 'YES'),
(338, 1, 'radius', 'شقق بجوار جامعة اسنيورت في اسطنبول', '1632232080.jpg', 'resident', 3, NULL, NULL, '2021-08-27 08:29:12', '2021-11-23 14:17:11', 'cash', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, 'شقق بجوار جامعة اسنيورت في اسطنبول \r\nمجمع كامل الخدمات بمحيط مناسب من جامعة ومول ومحطة مترو مستقبلية \r\n▪️أسعار اقتصادية \r\n▪️ميزات الموقع : \r\n1 دقيقة عن محطة مترو الجامعة المقرر انشاءها سنة 2023 \r\n1 دقيقة عن مول سيتي سنتر \r\n5 دقائق عن طريق E5  السريع \r\n5 دقائق عن طريق TEM الدولي \r\n40 دقيقة عن المطار الجديد', 'المشروع تم تسليمه في 2020 والشقق المتبقية مازالت ملك للشركة', NULL),
(339, 1, 'yalçıntepe', 'مشروع سكني تجاري في بهجة شهير ( شقق بهجة شهير الاقتصادية )', '1632151362.jpeg', 'invest_resident', 8, NULL, NULL, '2021-08-27 08:51:44', '2021-09-24 09:32:37', 'cash', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 3, 1, '▪️مشروع سكني تجاري في بهجة شهير ( شقق بهجة شهير الاقتصادية ) \r\n_الموقع : يقع بمنطقة Bahçeşehir في اسطنبول \r\n▪️ ميزات الموقع : \r\n-مدارس انترناشيونال : (جيهان جير ١ دقيقة مشيا)  -مولات : (اكباتي مول ٤ دقيقة مشيا) \r\n-مشافي (مشفى جامعة استينيا ٥ دقيقة)\r\n_يتالف المشروع من: 23طابق لكل طابق 14شقة _بخيارات:\r\n1_  0+1 (استوديو)\r\n2_  1+1 (غرفة وصالة)\r\n▪️حالة المشروع : جاهز للسكن الفوري\r\n▪️حالة الطابو : جاهز ومناسب للجنسية', NULL, 'YES'),
(341, 1, 'strada', 'شقق مدينة الحدائق بهجة شهير', '1632234415.jpg', 'resident', 8, NULL, NULL, '2021-08-27 08:57:28', '2021-11-18 19:10:41', 'cash_install', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 2, 2, 'شقق مدينة الحدائق بهجة شهير \r\n▪️في المرحلة الأولى من المشروع ، الذي يتم بناؤه على *3 مراحل* ، تم طرح 747 شقة للبيع وبيعت 90 من هذه الشقق من قبل الشركة قبل الإطلاق.\r\n\r\n▪️يقع على *طريق المطار الثالث* ، وبالقرب من ميدان كينت الحكومي الراقي \r\n\r\n▪️*الخدمات الاجتماعية*\r\nتشمل المرافق الاجتماعية في بهشى شهير *مواقف للسيارات* في الهواء الطلق و*موقف سيارات داخلي* و*مسبح خارجي* و*مسبح للأطفال* و*مقهى ومطعم ومتجر وسوق وملاعب خارجية وحدائق كبيرة* ومرافق اجتماعية غنية ومنطقة خضراء ومناطق اجتماعية مثل *مناطق المشي*.', 'التسليم في نهاية 2021', 'YES'),
(342, 1, 'reference bahçeşehir', 'شقق بهجة شهير الراقية', '1632233524.png', 'resident', 8, NULL, NULL, '2021-08-27 08:58:31', '2021-10-02 08:10:43', 'cash_install', 'https://drive.google.com/file/d/1YUHeAf2EXOK2q4dzNswJOUkyNbGM4DTk/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 3, 'شقق بهجة شهير الراقية \r\n\r\n▪️هناك 34 وحدة تجارية  لتلبية متطلبات العائلات التي تعلق أهمية على الجودة والراحة.\r\nيرتفع المشروع في قلب بهجة شهير ، بجوار الطريق السريع TEM\r\nيعتبر من المشاريع القريبة جدا من منتزه غوليت الذي يحتوي على أكبر بحيرة صناعية في اسطنبول \r\n\r\n▪️يقع عند نقطة تقاطع مشاريع مثل طريق مرمرة الشمالي السريع وجسر يافوز سلطان سليم والطريق الدائري الثالث وطرق التوصيل ومرمراي وخط المترو والمطار الثالث.\r\n▪️ أهم ما يميز المشروع المساحات الداخلية الواسعة للشقق', 'الخصم في حال الدفع كاش 15 % \r\nالخصم في حال الدفع أقساط 5 %', 'YES'),
(343, 1, 'semt es', 'مشروع حكومي بأقساط طويلة في مدينة الحدائق بهجة شهير في اسطنبول', '1632234268.jpeg', 'resident', 8, NULL, NULL, '2021-08-27 08:59:46', '2021-09-28 11:08:45', 'cash_install', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 10, 'مشروع حكومي في مدينة الحدائق بهجة شهير في اسطنبول \r\n\r\n 📌يقع المشروع في منطقة وبهجة شهير وهي  واحدة من أهم المناطق التي يتم فيها إنشاء مشاريع عمرانية وسكنية جديدة.\r\n\r\n📌مشروع جاهز.\r\n\r\n📌خطة الدفع 50% دفعة اولى والأقساط شهرية مريحة لمدة 9 سنوات.\r\n\r\n📌على بعد 2 كم من الطريق السريع TEM.\r\n\r\n📌يتوفر في المشروع موقف سيارات يتكون من طابقين. \r\n📌يوجد مكاتب استقبال وحراسة على مدار 24 ساعة .\r\n📌يضم المشروع مسبح مغلق. قاعة رياضة. ساونا. بالإضافة إلى 65% من المساحة الإجمالية مساحات خضراء بمسارات محددة للمشي و أماكن خاصة للجلوس.\r\n📌يوجد مدخل  استقبال خاص وخدمات شخصية في انتظارك في كل مبنى. \r\n📌المشروع محاط بالعديد من المدارس الحكومية التركية المناسبة لجميع المراحل الدراسية من روضة الأطفال إلى المدرسة الثانوية.', 'طرق الدفع في المشاريع الحكومية تختلف عن المشاريع العادية وكذلك طريقة الدفع كاش تختلف ايضا \r\nبامكانك الحصول على خصم يصل الى 25% في حال رغبتم في تسديد كامل الاقساط في مواعيد تحددها الدولة خلال فترة الأقساط \r\n                                        ***راجع استشاري المبيعات لتحصل على التفاصيل كاملة***', 'NO'),
(344, 1, 'Air başak', 'شقق فندقية في الوجهة الأولى للمطار الجديد', '1632147250.jpg', 'invest', 7, NULL, NULL, '2021-08-27 09:00:37', '2021-11-22 17:02:22', 'cash', 'https://drive.google.com/file/d/1DmeFH-tqkwCcF5rWDRNWzryITzd8gkxm/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 2, 5, '✅  الوصف : مشروع بمفهوم شقق فندقية 5 نجوم في باشاك شهير   الأقرب إلى المطار الجديد \r\n\r\n✅  الموقع : اسطنبول الأوروبية – باشاك شهير  \r\n\r\n✅ ميزة المشروع : يقدم المشروع فكرة استثمارية كشقق فندقية في الوجهة الأولى للمطار الجديد ومنطقة حيوية يخدمها المشروع بمحلات تجارية ومطاعم وخدمات ترفيهية فندقية\r\n5 دقيقة عن المدينة الطبية \r\n5 دقيقة عن محطة ميترو الأنفاق المزمع افتتاحها في وقتٍ قريب.( نقطة استثمارية مهمة جدا ) \r\n10 دقيقة عن مول أوف إسطنبول.\r\n12 دقيقة عن مطار إسطنبول الدولي.\r\n\r\n✅ نمط العرض : استثماري \r\n\r\n\r\nدفعات أولى 40% وأقساط تصل إلى 24 شهر يوجد أكثر من طريقة دفع يحدد على أساسها الخصم \r\nالتسليم شهر 6/2023', 'عائد الغرفة وصالة الفندقية في القسم الجاهز من المشروع  يصل الى 1500 دولار شهريا \r\nبشكل عام العائد يتراوح من 1000 الى 1500 دولار على حسب ذروة الموسم \r\nالمشروع بمفهوم فندق 5 نجوم \r\nالتسليم 6/2023\r\n                       ////////// خصم الكاش  يصل الى 15% //////////', 'YES'),
(346, 1, 'casa blue', 'مشروع سكني باطلالات بحرية', '1632149808.jpeg', 'resident', 6, NULL, NULL, '2021-08-27 09:02:41', '2021-11-19 15:22:25', 'cash_install', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 4, 3, 'مشروع سكني باطلالات بحرية \r\n▪️ يقع في بيوك شكمجه المطلة على بحر مرمرة\r\n▪️يبعد عن الساحل 1.3كم. \r\n▪️يبعد عن الميتروبوس عشر دقائق، عشر دقائق عن بيوك شكمجة ايدو ،وخمسة عشر دقائق عن ويست اسطنبول مارينا. \r\n▪️يوجد بجانب المشروع العديد من المطاعم والكافيهات ومراكز التسوق والتي تبعد فقط عشر دقائق عن المشروع.\r\n▪️اطلالات ساحرة على البحر \r\n\r\nتاريخ التسليم :31.12.2021  \r\n▪️الطابو جاهز', NULL, 'YES'),
(347, 1, 'prestej evleri', 'مشروع باطلالة بحرية بأقل الأسعار', NULL, 'resident', 6, NULL, NULL, '2021-08-27 09:03:57', '2021-09-24 09:22:25', 'cash', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 4, 1, 'مشروع باطلالة بحرية بأقل الأسعار \r\nميزات الموقع : \r\n-  يبعد فقط 1.6 كم عن الطريق العام E5,\r\nكما أنه يطل على بحيرة Büyükçekmece و بحر مرمرة\r\nالمسافات\r\nجامعة: 12 كم / 24 دقيقة\r\nمدرسة تركية: 2 كم / 4 دقيقة\r\nمستشفى: 3 كم / 7 دقيقة\r\nالميترو باص: 2 كم / 5 دقيقة\r\nالبحر: 2 كم / 5 دقيقة\r\nأكسراي: 36 كم / 73 دقيقة\r\nسلطان أحمد: 37 كم / 78 دقيقة\r\nتقسيم: 42 كم / 86 دقيقة\r\nمطار اتاتورك: 23 كم / 43 دقيقة\r\n\r\nتم تصميم المنازل كمساحات معيشة للعائلة, و جميع المرافق التي تحتاجها لعائلتك قياسية في هذا المشروع.\r\nلكل شقة تم تخصيص كراج مسقوف لسيارتين.\r\n\r\nمساحات خضراء، ملاعب الكاميليا وحمامات البخار منفصلة للرجال والنساء\r\nهذا المشروع مثالي للسكن في الصيف و الشتاء\r\n\r\n\r\n\r\nالميزات\r\nساونا نادي تربية بدنية مركز لياقة قاعات آيروبيك كراج سيارات حماية أمنية مضخة ماء إنذار حريق موقف سيارات هاتف أرضي انترفون انترنت كبل انترنت معدات كهربائية شرفة\r\n\r\nجميع الشقق مطلة على البحر', NULL, 'YES'),
(348, 1, 'demir life', 'مشروع منتجع اسطنبول', '1632147528.jpeg', 'invest_resident', 6, NULL, NULL, '2021-08-27 09:05:08', '2021-09-24 08:54:54', 'cash_install', 'https://drive.google.com/file/d/17cShWsmTB1fejM6aufXtt5kkgwBW0U8d/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 4, 11, 'مشروع منتجع اسطنبول \r\n المشروع الاول من نوعه في اسطنبول عبارة عن منتجع سكني مستوحى من فنادق انطاليا ال 7 نجوم شقق سكنية مع كامل الخدمات الفندقية والنشاطات الترفيهية \r\n\r\n▪️ يقع المشروع في القسم الاوروبي من اسطنبول منطقة بيوك تشكمجه يطل على بحيرة بيوك تشكمجه وبحر مرمرة وجسر السلطان سليمان ( معمار سنان ) \r\n \r\n▪️عدد الشقق بالمشروع 821 شقة \r\n52 محل تجاري / مطاعم بماركات عالمية \r\n\r\n▪️طابو جاهز / مناسب للجنسية التركية\r\nضمان اعادة بيع ٣٥٪؜ بعد ٣ سنوات \r\n\r\n▪️ مزايا الموقع : \r\n- يبعد عن مطار اسطنبول الثالث 15 دقيقة\r\n- مطار خاص على بعد 15 كم\r\n- يبعد عن المتروباص 8 دقائق\r\n- محطة الباصات 2 دقيقة\r\n- يبعد عن البحيرة 10 دقائق\r\n- يبعد عن الساحل بيوك تشكمجه وساحل الباتروس 15 دقيقة\r\n- يقع بجانب اكبر مدينة معارض في تركيا 5 دقايق\r\n- يوجد تقريبا 240 مرفق صحي بين مشافي جامعية وعيادات ومستوصفات حكومية وخاصة\r\n- جامعات ومدارس حكومية وخاصة\r\n- مراكز تسوق تجارية 10 دقائق\r\n\r\n▪️خدمات المشروع : \r\nمسابح أولومبية داخلية وخارجية تقريبا يوجد 5 مسابح \r\nملاعب كرة سلة / قدم / تنس / غولف لاول مرة في اسطنبول\r\nنادي رياضي\r\nمسارات للمشي والدراجات\r\nملاعب للاطفال \r\nساونا وحمام تركي ومساج\r\nمواقف سيارات داخلية وخارجية\r\nحراسة 24/7', 'التسليم منتصف 2023\r\nالأسعار أدناه هي الأسعار الكاش النهائية', 'YES'),
(349, 1, 'sea palm', NULL, '1632149713.jpg', 'resident', 6, NULL, NULL, '2021-08-27 09:08:26', '2021-09-21 10:50:16', 'cash_install', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 4, 3, '▪️مشروع جزيرة النخيل \r\n\r\nشقق بحرية على ساحل بحر مرمرة \r\n\r\n▪️الموقع: Buyukcekmece \r\n\r\n▪️ الموقع والمميزات\r\nيقع في منطقة Büyükçekmece على الطريق الواصل بين خطي ال E5 و ال E80\r\n- يبعد 800 عن البحر\r\n- يبعد 10 دقائق عن اقرب مستشفى\r\n- يبعد 25 دقيقة عن المطار\r\n- خدمة توصيل إلى الشاطىء\r\n- إطلالات كاملة على البحر\r\n\r\n• خدمات المشروع\r\n- مسبح خارجي و داخلي\r\n- نادي رياضي\r\n- بخار ، ساونا و حمام تركي\r\n- باركينج مغلق\r\n- محلات تجارية\r\n- مستوصف خاص بالمشروع\r\n- مساحات خضراء و اماكن مخصصة للاطفال\r\n- بالإضافة لتراس مشترك بإطلالة مباشرة على البحر يحتوي على اماكن مخصصة للشواء والجلسات العائلية\r\n\r\nالموقع:\r\n800 متر عن البحر .\r\nعلى طريق الواصل بين الطرق السريعة E5- TEM.\r\n-25 دقيقة من مطار اسطنبول .\r\n-الجامعة والكليات والمستشفيات بالجوار .\r\nخدمات النقل إلى الشاطئ .\r\nشقق مطلة على البحر بالكامل\r\n\r\n▪️تاريخ التسليم: 06.30.2021', '▪️تاريخ التسليم: 06.30.2021\r\nالأسعار أدناه هي أسعار الشقق بالمشروع عموماً \r\nالشقق بالاطلالة البحرية تختلف بحسب الارتفاع والاطلالة الجزئية أو الكاملة', 'YES'),
(359, 1, 'Mahal istanbul', 'مشروع عائلي في منطقة حيوية بشكل كبير بمحيط ساحة المطاعم والكافيهات', '1632151287.jpg', 'resident', 3, NULL, NULL, '2021-09-14 05:26:19', '2021-09-24 09:13:03', 'cash', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 3, 1, 'الموقع اسينيورت شارع جمهوريات  الحيوي \r\nمشروع عائلي في منطقة حيوية بشكل كبير بمحيط ساحة المطاعم والكافيهات \r\nقريبة من المشافي. والمطاعم والكافيهات والطريق الرئيسي \r\nتبعد عن أقرب محطة متروبوس 10 دقائق', 'جاهز للسكن العائلي \r\nالمشروع غير مقيم للجنسية التركية', 'NO'),
(361, 1, 'focus eyüp', 'مشروع جديد في قلب اسطنبول القديمة منطقة السلطان أيوب', '1632485203.jpg', 'resident', 15, NULL, NULL, '2021-09-14 08:47:37', '2021-09-24 09:06:43', 'cash', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 1, 'مشروع جديد في قلب اسطنبول القديمة منطقة السلطان أيوب \r\nمزايا الموقع : \r\n- 400 متر عن المترو محطة yaşil pınar \r\n- 500 متر عن الترام فاي\r\n- 2.5 كم عن ( فيا لاند – vialand ) اكبر مدينة ملاهي في اسطنبول\r\n- 15 دقيقة عن تقسيم\r\nيقع في محيط 3 كم من المشروع عدد من المشافي و الجامعات و المراكز التجارية المهمة\r\n\r\n-الخدمات الاجتماعية : \r\nمسبح داخلي أماكن مخصصة للعب لاطفال\r\nمسبح داخلي مغلق \r\nصالات رياضية وساونا وحمام بخار وحمام تركي \r\nملاعب كرة سلة وقاعات للترفيه\r\nسينما \r\nأماكن مخصصة لاستقبال الضيوف\r\n\r\nالأنماط المتوفرة : \r\n2+1 / 3+1', 'العروض المرفقة لفترة محدودة \r\nخصم الكاش يبدأ من 15%', 'YES'),
(364, 1, 'Tem Avrasya', 'مساكن غازي عثمان باشا في مركز اسطنبول الأوروبية', '1632150806.jpeg', 'invest_resident', 16, NULL, NULL, '2021-09-14 11:03:15', '2021-09-24 09:34:10', 'cash', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 1, 'مساكن غازي عثمان باشا في مركز اسطنبول الأوروبية \r\nموقع المشروع : \r\n- يقع المشروع في بلدية غازي عثمان باشا في اسطنبول بمحيط ليفنت وشيشلي \r\nعلى طريق تيم السريع والمستشفى الحكومي الذي يبعد 200 متر فقط عن المشروع \r\n\r\nخدمات المشروع : \r\n مسابح داخلية عدد 2 ، وحمام تركي ، وساونا ، وغرفة بخار ، ومركز للياقة البدنية ، ، وتراس للجلسات العائلية ، وكافيتريا داخلية ، ومسار للمشي و ملاعب للأطفال ، و المناظر الطبيعية والحدائق الخضراء .\r\n\r\nعلى بعد خطوات قليلة فقط شارع التسوق مع المتاجر والمطاعم والمقاهي \r\n\r\nالأنماط المتوفرة : 2+1', NULL, 'YES'),
(365, 1, 'banu evleri', 'شقق اسبارطة كوليه الحديثة', '1632149891.jpg', 'resident', 8, NULL, NULL, '2021-09-15 06:05:06', '2021-11-08 16:42:09', 'cash', 'https://drive.google.com/file/d/1r9hmY6Illop7o7AEivCw91ngp2NFXq5_/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 3, 1, 'مزايا الموقع : \r\nيقع المشروع في القسم الأوروبي من مدينة إسطنبول في منطقة بهجة شهير مدينة الحدائق  اسبارطة كوليه \r\n• من أحد المميزات أيضاً للمشروع هي تواجده بالقرب من قناة إسطنبول المستقبلية وهو ماجعل منه مشروع ذو قيمة استثمارية، ويوجد في المشروع الكثير من الشقق المطلة على بحيرة كوتشوك شكمجة.\r\n\r\n• يبعد المشروع عن\r\n• 2 دقيقة عن قناة إسطنبول المستقبلية.\r\n• 5 دقائق عن الطريق السريع TEM.\r\n• 10 دقائق عن الطريق الرئيسي E5.\r\n• 40 دقيقة عن مطار إسطنبول الجديد.\r\n\r\n• خدمات المشروع\r\n• حدائق ألعاب للأطفال.\r\n• مساحات خضراء واسعة.\r\n• مسارات للمشي والركض.\r\n• ملاعب كرة قدم وسلة وتنس.\r\n• مسابح مغلقة ومكشوفة.\r\n• حمام تركي.\r\n• ساونا.\r\n• صالون رياضي.\r\n• مرآب مغلق ومفتوحة للسيارات.\r\n• تدفئة وتبريد مركزي.\r\n• المشروع مؤمن 24/7.\r\n• تصميم مقاوم للزلازل.', 'التسليم بنهاية السنة 2021 \r\nيتوفر بعض الخيارات عدد قليل جدا في القسم الجاهز للتسليم\r\nمتوفر في القسم الجاهز 4+1 فقط مساحة 205 \r\nالسعر المبدأي 2.200.000 ليرة تركية', 'YES'),
(366, 1, 'ROSE MARINE', 'مشروع بتصاميم عصرية وبموقع مباشر على البحر وكورنيش الساحل', '1632149323.jpg', 'resident', 6, NULL, NULL, '2021-09-15 10:07:21', '2021-10-05 10:59:18', 'cash_install', 'https://drive.google.com/file/d/1h18BLtTqrn--Np7Psm-uRxZM33CLw_Ix/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 4, 5, 'مشروع بتصاميم عصرية وبموقع مباشر على البحر وكورنيش الساحل \r\nمزايا الموقع :\r\n▪️في منطقه بيوك جكمجه على ساحل بحر مرمره في القسم الاوروبي  من مدينة اسطنبول\r\n\r\n▪️تضم المنطقه معالم سياحيه اضافة الى وجوده مباشرة على البحر يوجد جانب  مجموعة من المعالم المهمة  مثل جسر سلطان سليمان القانوني -جامع صوكوللو محمد باشا والحديقة العملاقة \r\n▪️ يبعد عن المطار 40 دقيقة و50 دقيقة عن المركز \r\n\r\nيتألف المشروع من 10 بلوكات بأرتفاع 5طوابق /142 شقه سكنيه/14 محل تجاري\r\n\r\nمميزات المشروع :\r\n🔺 خدمات ترفيهية من :\r\nمسابح مغلقه ومفتوحه \r\n🔺ساونا\r\n 🔺حمام تركي \r\nونادي رياضي\r\n🔺كاميرات مراقبة وأمن على مدار 24/7الساعه.\r\n🔺 طابقين كراج للسيارات مغلق\r\n\r\nمميزات الموقع :-\r\nيبعد عن البحر بمسافه 150m\r\nيبعد عن طريق E5بمسافه 750m\r\nيبعد عن حديقه اتاتورك 500m\r\nيبعد عن سوبرماركت مجروس المشهور 750m\r\nوسوبر ماركت File 200m\r\nعن okynus school 600m\r\nيبعد عن  Mimar sinan Devlet Hastanesi /3km\r\nعن محطه المترو Tüyap metrobüs/10 Dk\r\nعن جامعه Aydın üniversitesi / 2.5 km\r\n\r\nالتسليم : القسم الأول يسلم في 31/12/2021\r\nالقسم الثاني بعد 18 شهر.', 'التسليم : القسم الأول يسلم في 31/12/2021\r\nالقسم الثاني بعد 18 شهر.', 'YES'),
(367, 1, 'Palm marine', 'مشروع بإطلالات بحرية بالقرب من مارينا اسطنبول', '1632214727.jpg', 'resident', 4, NULL, NULL, '2021-09-15 10:38:50', '2021-09-29 06:52:41', 'cash_install', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 4, 3, 'مشروع بإطلالات بحرية بالقرب من مارينا اسطنبول \r\nمزايا الموقع :\r\n- يقع في منطقة بيليك دوزو على مقربة 300 متر من المارينا ويبعد عن خط المتروبوس 15 دقيقة \r\n- يبعد 45 دقيقة عن المطار الجديد \r\n- يبعد 50 دقيقة عن المركز \r\n\r\nمزايا المشروع : \r\n-شاطئ سباحة قريب\r\n- المساحات الواسعة \r\n-مشروع عائلي بمرافق عامة وخدمات منفصلة\r\n- مصيف متكامل بخدماته الداخلية \r\n-اطلالته المباشرة على بحر مرمرة\r\n\r\nالخدمات الاجتماعية للمشروع :\r\n\r\nأماكن مخخصة للجلسات العائلية \r\nأماكن مخصصة للعب الأطفال \r\nسينما خارجية\r\nملاعب تنس وكرة سلة وكرة قدم\r\nكراج سيارات مغلق\r\nنادي رياضي\r\nساونا\r\nحمام تركي\r\nماركت\r\nكافيه داخلية \r\nمسابح مغلقة منفصلة للرجال والسيدات\r\nمواصلات للمارينا والمتروبوس بنظام شاتل باص', 'تاريخ التسليم : بداية 2022\r\nيختلف سعر الأطلالة البحرية باختلاف الطابق والارتفاع \r\nيوجد خصم في حال الدفع كاش يصل الى 15%', 'YES'),
(368, 1, 'Onur park life', 'مشروع سكني بامتياز في بهجة شهير مدينة الحدائق اسطنبول', '1632147737.jpg', 'resident', 8, NULL, NULL, '2021-09-15 11:20:52', '2021-09-24 09:21:00', 'cash_install', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 4, 'مشروع سكني بامتياز في بهجة شهير مدينة الحدائق اسطنبول \r\n\r\nيتضمن 9 مباني , بخدمات كاملة  , \r\nمزايا الموقع :\r\n- تبعد مستشفى إستينيا و مركز تسوق أكباتي مسافة 5 دقائق .\r\n-تبعد اقرب محطة ميترو مخططة  300 متر فقط .\r\n-عن مطار إسطنبول بمسافة 30 دقيقة فقـط .\r\nإطلالة بحر و بحـيرة من الطابق 16 .\r\nالخدمات الاجتماعية : \r\n ، 3 حمامات سباحة داخلية ، حمام تركي ، ساونا ، سبا ، مركز للياقة البدنية ، ملعب كرة سلة وتنس ، ملاعب للأطفال ، أنشطة داخلية وخارجية .\r\n85 محل تجاري على مدار المشروع كمجمع تسوق  .\r\n\r\nميزات المشروع الخاصة : \r\n- ارتفاع السقف 4 م\r\n-مساحات شقق المشروع واسعة مقارنة بباقي المشاريع \r\n- سعر المشروع معقول جدا مقارنة بسعر متر المنطقة \r\n- المشروع جاهز للتسليم وممكن أن يؤجر بعائد ايجاري جيد', 'في حال الدفع كاش ممكن الحصول على خصم يصل الى 15 %', 'YES'),
(369, 1, 'nef 22', 'شقق استثمارية ذكية في منطقة اتاكوي الراقية في اسطنبول', '1632143871.jpg', 'invest_resident', 11, NULL, NULL, '2021-09-15 11:35:01', '2021-11-04 15:08:52', 'cash', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 1, 'شقق استثمارية ذكية في منطقة اتاكوي الراقية في اسطنبول \r\nمزايا الموقع :\r\n- يقع المشروع في حي اتاكوي في اسطنبول الاوروبية \r\n- يبعد مسافة 300 م عن محطة مترو بوس \r\n- بجانب المشروع محطة مترو انفاق \r\n- يبعد عن المطار الجديد 15 كم \r\n- يبعد عن الباسن اكسبريس مركز الأعمال الجديد 1 كم فقط \r\n\r\nمزايا المشروع : \r\nيتالف من 6 ابنية سكنية \r\nويحتوي على 1500 شقة سكنية ، بنظام الهوم اوفيس  \r\nمركز تسوق كامل داخل المشروع \r\n24 غرفة خدمية مميزة  بالمشروع تتضمن غرفة سينما خاصة وغرفة بلاي ستيشن وغرفة اجتماعات وغرف للضيوف  \r\nمنطقة حيوية مطلوبة في اسطنبول لوجودها عند خط المتروبوس وخط مترو ومول تجاري وجامعتين بالمحيط \r\nجاهز للتسليم', NULL, 'YES'),
(371, 1, 'yedi mavi', 'مشروع أزرق اسطنبول شقق فاخرة  على ساحل زيتون بورنو', '1632147378.jpg', 'resident', 12, NULL, NULL, '2021-09-16 05:48:01', '2021-09-24 09:32:49', 'cash', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 4, 1, 'مشروع أزرق اسطنبول شقق فاخرة \r\nعلى ساحل زيتون بورنو \r\n واحد من افخم المشاريع في اسطنبول يتألف من 7 بلوكات وحاصل على جائزة أفضل تصميم في اسطنبول من انشاء شركة غول العريقة\r\n\r\n📍مزايا الموقع : \r\nيقع المشروع في منطقة زيتون بورنو على البحر مباشرةً \r\n3 دقيقة عن محطة الميتروبوس  و طريق E5\r\n2 دقيقة عن ساحل البحر \r\n12 كم عن اكوا فلوريا \r\n4 كم عن نفق أوراسيا \r\n6 كم عن عبارات يني كابي \r\n9 كم عن منطقة الأمينونو \r\n11 كم عن تقسيم \r\n47 كم عن مطار اسطنبول الثالث \r\n\r\n🔻مزايا المشروع : \r\n▪️اطلالات مباشرة على بحر مرمرة  كما صممت الشقق لتكون زجاج بالكامل من جهة البحر لتعطي اطلالة بانورامية \r\n ▪️مساحات خضراء على امتداد 50.000 متر مربع اضافة لوجود طريق خاص من المجمع الى ساحل البحر مباشرةً \r\n ▪️وجود 78 محل تجاري في المشروع \r\n▪️ أحد المباني السبعة تعاقد ليكون فندق فخم\r\n🔻 الخدمات الاجتماعية \r\nحمام تركي\r\nخدمة نقل الى المطار و خدمة تسوق و حمل الامتعة\r\nساونا\r\nكراج سيارات\r\nمراقبة وحراسة على مدار الساعة\r\nمسبح مفتوح', NULL, 'YES');
INSERT INTO `projects` (`id`, `display_website`, `name`, `title_project`, `image_whatsapp`, `project_type`, `region_id`, `contact_person_name`, `contact_person_phone`, `created_at`, `updated_at`, `payment`, `video_link`, `plan1_percentage`, `plan1_months`, `plan2_percentage`, `plan2_months`, `plan3_percentage`, `plan3_months`, `link`, `cash_discount`, `prop_status`, `delivery_date`, `looks`, `max_price_for_meter`, `min_price_for_meter`, `category_id_fk`, `instalment_id_fk`, `description`, `notes`, `nationality`) VALUES
(373, 1, 'yeni eyüp', 'مشروع شقق أيوب الحديثة', '1631881038.jpg', 'resident', 15, NULL, NULL, '2021-09-16 07:45:20', '2021-11-16 15:14:31', 'cash_install', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 2, 4, 'مشروع شقق أيوب الحديثة \r\n📍مزايا الموقع : \r\n-المشروع يقع في منطقة \'علي بي كوي\' تحديدا في بلدية \'ايوب\'. \r\nيعتبر موقعه مركزي لسهولة الوصول  بمدة لا تتجاوز ال15 دقيقة الى المناطق الرئيسية في اسطنبول مثل: الفاتح، شيشلي، تقسيم، بيشكتاش..\r\n-أما بالنسبة للمواصلات العامة: يقع المشروع بين خطين مهمين جدا في مدينة اسطنبول\r\nالأول خط الترام (ايميننو-علي بي كوي) مسافة 900 متر\r\nالثاني خط المترو (شيشلي-محمود بي) مسافة 700 متر\r\nبالإضافة الى قربه من احد الطرق السريعة في اسطنبول وهو TEM OTOYOLU \r\n\r\n🔻*معلومات المشروع:*\r\n-المشروع مؤلف من 7 أبنية على ارض مساحتها 10.700م٢، كل بناء مؤلف من 9 طوابق.  389 اجمالي عددالشقق  في المشروع من نماذج (1+1,2+1,3+1)\r\n*خدمات المشروع*\r\n صالة رياضية، ساونا، حديقة العاب للأطفال، مواقف للسيارات و كافيه.\r\nمزايا اضافية : \r\n-الطابو جاهز للتسليم\r\n-مناسب لشروط الجنسية التركية', '-تاريخ التسليم: شهر آذار 2022', 'YES'),
(377, 1, 'nef bahçelievler', 'لمن يريدون السكن في مركز اسطنبول ضمن شقق راقية', '1632146641.jpg', 'resident', 21, NULL, NULL, '2021-09-17 06:43:49', '2021-11-19 19:53:43', 'cash', 'https://drive.google.com/file/d/1S6DjcTAn7KXtNzakxg-nVZzUO9urKnow/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 1, 1, 'لمن يريدون السكن في مركز اسطنبول ضمن شقق راقية \r\nالمشروع من اجمل المشاريع التي فيها حدائق ولاند سكيب كبير يناسب مفهوم العائلة \r\n\r\n📍مزايا الموقع : \r\n الموقع : باهجالي ايفلار- اسطنبول الاوروبية  على بعد دقيقتين عن محطة الترامواي  _ 5 دقائق عن المترو والمتروبوس وبجوار مركز تسوق ومنتزه \r\nيبعد عن تقسيم مسافة 20 دقيقة \r\n\r\n✅ ميزة المشروع : تصميم داخلي عصري بنظام أوروبي \r\n-أكثر ما يميز هذا المشروع هو مساحاته الخضراء الواسعة و خدماته المتكاملة\r\n-مجمع محاط ب 19 محل تجاري لتخدم سكانه \r\n- تشطيباته الداخلية ومساحات الشقق الواسعة \r\n\r\n✅الأنماط المتوفرة : 2+1 / 2.5+1 / 3+1 / 3.5+1 / 4.5+1 \r\n\r\n✅ طريقة الدفع : كاش مع امكانية حصول على خصم', 'الأسعار أعلاه قبل الخصم \r\nبإمكانكم الحصول على خصم يصل الى 15 %', 'YES'),
(379, 1, 'real merter', 'كن قريباً من مركز الأعمال والتسوق مارتر في اسطنبول', '1632144573.jpg', 'resident', 35, NULL, NULL, '2021-09-17 10:36:00', '2021-10-11 11:20:24', 'cash', 'https://drive.google.com/file/d/1_auYwx2y3cXYsTEY9nWxrIeB7EAKaJrh/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 1, 'كن قريباً من مركز الأعمال والتسوق مارتر في اسطنبول \r\nمشروع سكني مؤلف من 3 أبنية مع مركز للتسوق تحت المباني التي تضم 148 \r\n📍مزايا الموقع : \r\n• يقع المشروع  في الطرف الأوروبي من مدينة إسطنبول وتحديداً في منطقة مارتر التابعة لبلدية غونغرن،\r\n• المنطقة هي عملية جداً للأشخاص الذين يرغبون أن يسكنوا أماكن قريبة من عملهم، ويحيط بالمنطقة العديد من المناطق المهمة مثل باغجلار واسنلر والفاتح وذلك ما يعطيها أهمية بالغة ويُضفي عليها أهمية كبيرة.\r\n• يقع المشروع على بعد مسافة قليلة من الطريق الرئيسي E5 \r\n• 1 كم عن المترو.\r\n• 40 دقيقة عن مطار إسطنبول الجديد.\r\n• 10 دقائق عن الطريق الرئيسي E5.\r\n• 10 دقائق عن الطريق السريع TEM.\r\n\r\n🔻 مميزات المشروع\r\n فرصة للباحثين عن مشروع سكني وتجاري في وسط إسطنبول ولاسيما أنه في مركز مدينة إسطنبول الصناعية والتجارية والاستثمارية.\r\n\r\n• خدمات المشروع\r\n• المشروع مؤمن 24/7.\r\n• مسبح داخلي.\r\n• ساونا.\r\n• حمام تركي.\r\n• مركز لياقة بدنية.\r\n• حدائق وملاعب للأطفال.\r\n• المشروع مطابق لنظام الزلازل.\r\n• موقف سيارات خاص بالمشروع.', 'الأسعار أدناه هي أسعار مبدأية للمشاريع \r\nفي حال الدفع كاش ممكن الحصول على خصم يصل الى 15 % \r\nتواصل مع استشاري المبيعات لمعرفة مقدار الخصم على الأسعار', 'YES'),
(380, 1, 'blue garden', 'تملك عقار في كوتشوك جيكمجه بالقرب من محطة المترو ومركز اسطنبول', '1632146301.jpeg', 'resident', 10, NULL, NULL, '2021-09-17 11:07:17', '2021-09-24 08:05:21', 'cash', 'https://drive.google.com/file/d/1tcdCdOkJKCMD9hAO9C604S00WKVF4bbQ/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 1, 'تملك عقار في كوتشوك جيكمجه بالقرب من محطة المترو ومركز اسطنبول \r\n📍 مزايا الموقع : \r\nيقع المشروع في منطقة كوتشوك شكمجة على الجانب الأوروبي من اسطنبول مع خيارات الإسكان المطلة على بحيرة كوتشوك شكمجة.\r\nدقيقتين عن محطة مترو مرمراي \r\n15 دقائق عن شاطئ فلوريا\r\n25دقيقة عن بيليك دوزو مارينا\r\n40دقيقة عن مطار اسطنبول الجديد\r\n30دقيقة عن الفاتح\r\n🔻 مزايا الموقع : \r\n يتألف المشروع من بنائين ، كل بناء يضم 10 طوابق . يتوفر في المشروع اطلالات البحرية\r\n•	المشروع مناسب للجنسية التركية \r\n•	الطابو جاهز\r\n\r\n🔻الخدمات المتوفرة في المشروع :\r\nحراسة وأمن\r\nحمام سباحة داخلي\r\nساونا\r\nحمام تركي \r\nقاعة رياضة\r\nجلسات عائلية \r\nألعاب أطفال \r\nطابقين تحت الأرض لموقف السيارات', 'الأسعار أدناه هي أسعار مبدأية للمشاريع \r\nفي حال الدفع كاش ممكن الحصول على خصم يصل الى 15 % \r\nتواصل مع استشاري المبيعات لمعرفة مقدار الخصم على الأسعار', 'YES'),
(381, 1, 'bakırcı', 'شقق توب كابي الفاخرة .. استثمارك في وسط اسطنبول', '1632137281.jpg', 'invest_resident', 30, NULL, NULL, '2021-09-20 08:28:01', '2021-10-28 14:56:07', 'cash_install', 'https://drive.google.com/file/d/1mgN2KEVvPKvqWJN1OZdRkR8WJVC66OPS/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 1, 3, 'شقق توب كابي الفاخرة .. استثمارك في وسط اسطنبول \r\n📍مزايا الموقع : \r\n- في منطقة زيتون بورنو في إسطنبول الأوروبية، يمتاز المجمع بقسميه السكني، والاستثماري الفندقي. \r\n- يبعد المشروع عن محطة Cevizlibağ Tramway حوالي 900 متر،\r\n- كما يبعد عن محطة مترو Davutpaşa حوالي 1 كلم، \r\n-عن خط E5 السريع 1 كلم، \r\n- يحيط بالمجمع 3 جامعات، جامعة Yuzyil University وجامعة Maltepe Istinye University على بعد 400 متر فقط. علاوة على ذلك ، يبعد المشروع حوالي 1.5 كم عن جامعة Yildiz Technical University، وحوالي 6 كم عن جامعة اسطنبول الحكومية.\r\n🔻 مزايا المشروع : \r\nيتألف المجمع من 3 بلوكات، بلوكين سكني، وبلوك استثماري فندقي، عدد الشقق 264 وحدة سكنية و 23 محل تجاري. \r\nالقسم السكني منفصل بشكل كامل عن القسم الفندقي، \r\n\r\n🔻الخدمات الإجتماعية : \r\n، المسبح، والساونا، والحمام التركي، وملاعب الأطفال، ومواقف السيارات.', 'تسليم المشروع \r\nشهر 10/2022\r\nخصم الكاش يصل الى 12%', 'YES'),
(385, 1, 'gul park yuvam', 'شقق سكنية في بايرام باشا', '1632142973.jpeg', 'resident', 29, NULL, NULL, '2021-09-20 09:44:58', '2021-11-12 18:35:01', 'cash', 'https://drive.google.com/file/d/1czyrPThGtUIPkrYEHIX17Ab9Dd9GqcEw/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 1, 'شقق سكنية في بايرام باشا \r\n📍مزايا الموقع : \r\nيقع المشروع في منطقة  بايرام باشا  التي تعتبر من مناطق مركز اسطنبول الاوروبية \r\n- قريب من المناطق الحيوية والسياحية في اسطنبول\r\n-يبعد عن محطات الميترو 5 دقائق فقط otogar -terazidere\r\n-يبعد عن مركز تسوق 10 دقائق   FORUM ISTANBUL\r\n-بقربه العديد من المدارس والجامعات والمشافي\r\n                        Davutpaşa üniversitesi\r\n                         bayrampaşa hastanesi\r\n\r\n🔻 مزايا المشروع : \r\n- ثلاث أبنية سكنية تحوي على محلات تجارية \r\n-يحتوي 159 شقة و 30 محل تجاري\r\n- مشروع عائلي بامتياز كونه يضم شقق 2+1  و 3+1 فقط\r\n-عدد الطوابق في المجمع 14 طابق\r\n-عدد الشقق في الطابق 4 شقق فقط\r\n- مستوى عالي في جودة البناء و التشطيبات الداخلية والخارجية\r\n- خدمات متعددة منفصلة للرجال والنساء\r\n- المشروع جاهز للتسليم', 'المشروع جاهز للتسليم \r\nخصم الكاش يصل الى 15  %', 'YES'),
(387, 1, 'beyaz residence', 'شقق الباسن اكسبريس الاقتصادية', '1632390229.jpg', 'invest_resident', 21, NULL, NULL, '2021-09-23 06:43:49', '2021-10-30 14:45:11', 'cash_install', 'https://drive.google.com/file/d/1cPoZ6TwRTyJSXKnR5MDts4vwG9V5iTLB/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 3, 3, 'شقق الباسن اكسبريس السكنية \r\nمزايا الموقع :\r\n📍يقع  ضمن منطقة باسن اكسبريس احد اهم المناطق التجارية والاستثمارية في اسطنبول \r\nيبعد المشروع 25 دقيقة عن مركز المدينة على بعد 5 دقائق من الطريق السريع E80 \r\nعلى بعد 10  دقائق من مول اوف اسطنبول ومول 212\r\nيبعد يبعد المشروع 10 دقائق عن جامعة ايدن اسطنبول \r\n يبعد المشروع 30 دقيقة عن مطار اسطنبول الجديد \r\nيبعد 10 دقائق عن محطة مترو محمود بيه التي تصل الى مركز اسطنبول\r\n\r\nمزايا المشروع : \r\nيتألف المشروع من بناء واحد فقط \r\nب 11 طابق\r\nيضم خيارات شقق غرفة وصالون و غرفتين وصالون \r\n\r\nيحتوي المشروع على كافة الخدمات من سيكسوريتي 24 ساعة\r\nحديقة اطفال\r\nساونا\r\nحمام تركي\r\nنادي رياضي\r\nاوتوبارك مغلق ومفتوح\r\n مصاعد \r\nبإجمالي 70 شقة ضمن المشروع \r\n\r\n\r\nخصم عند الدفع كاش 10% \r\nدفعة اولية 50% والاقساط على 24 شهر', 'التسليم بعد 6 اشهر \r\n\r\nخصم عند الدفع كاش 10% \r\nطريقة التقسيط : دفعة اولية 50% والاقساط على 24 شهر', 'YES'),
(388, 1, 'demir countrey', 'مشروع شارع تقسيم في بيليك دوزو', '1632395844.jpg', 'resident', 4, NULL, NULL, '2021-09-23 08:17:24', '2021-09-24 08:06:49', 'cash', 'https://drive.google.com/file/d/1-G95dWH978avDC39AZsoDLl1osNtFeTZ/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 1, 'مشروع شارع تقسيم في بيليك دوزو \r\nاقتباس التصميم المعماري لأشهر معالم إسطنبول “شارع الاستقلال مع برج غلاتا” إلى بيليك دوزو!.\r\n📍مزايا الموقع : \r\nيقع المشروع في الجانب الأوروبي من اسطنبول في منطقة بيليك دوزو \r\n يقع المشروع على بعد بضع دقائق فقط من الطريق السريع (E5) الذي يعتبر أحد الطرق الرئيسية في اسطنبول.\r\nيبعد عن البحر 5 دقائق بالسيارة \r\nيبعد عن المارينا ومرفأ اليخوت 5 دقائق \r\nيبعد عن المطار الجديد 45 دقيقة \r\nيبعد عن مركز اسطنبول 50 دقيقة \r\n\r\n🔻 مزايا المشروع : \r\nتم بناء المشروع على مساحة 44.426 متر مربع بجوار بحر مرمرة، \r\n ويتكون من 9 أبنية و 1160 شقة و 77 وحدة تجارية.\r\nيتوفر في المشروع شقق ذكية \"نظام المنزل الذكي\".\r\nمساحات خضراء طبيعية.\r\nحمامات سباحة داخلية وخارجية.\r\nبرك مزينة داخل المشروع.\r\nمسارات المشي وركوب الدراجات.\r\nمناظر طبيعية خلابة.\r\nمدارس و ملاعب للأطفال.\r\nتراسات للتشمس.\r\nمراكز تسوق.\r\nبنوك.\r\nمقاه ومطاعم.\r\nمركز لياقة بدنية.\r\nنظام الدخول عن طريق البطاقة.\r\nمواقف سيارات داخلية.\r\nأمن و كاميرات المراقبة على مدار 24 ساعة.\r\nنظام إنذار للحرائق', 'المشروع جاهز للتسليم \r\nالأسعار أعلاه بعد الخصم', 'YES'),
(389, 1, 'mavera villa', 'مشروع فلل بالقرب من المارينا البحرية على بحر مرمرة', '1632485684.jpeg', 'resident', 4, NULL, NULL, '2021-09-23 11:39:02', '2021-09-24 09:14:44', 'cash', 'https://drive.google.com/file/d/1p_qJIn2NGntKwYyKAanivIwRpNvXyMDQ/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 1, 1, 'مشروع فلل بالقرب من المارينا البحرية على بحر مرمرة \r\nالموقع :\r\nيقع المشروع في منطقة بيليك دوزو في اسطنبول الاوروبية \r\nيبعد عن المارينا ومرفأ اليخوت والمطاعم الساحلية حوالي 5 دقائق \r\nيبعد المشروع 10 دقائق عن الطريق السريع \r\n40دقيقة للمطار الجديد \r\n50 دقيقة لمركز اسطنبول الأوروبية \r\nمزايا المشروع : \r\nيقع المشروع علي مساحة ارض 9000 متر مربع و يتكون من 20 فيلا مستقلة 730 متر مربع\r\nتتكون من 7 غرف و 2 صالون\r\nالخدمات الاجتماعية : \r\nمسبح خاص + حديقة + موقف سيارات + امن و كاميرات مراقبة\r\nالبيت الذكي باجمل التصاميم\r\nولشمول كل فيلا على مسبح خاص بها\r\nمواصفات داخل الفيلا \r\nاتوبارك مغلق بجهاز تحكم , نظام ايطالي بي في تي للابواب ، خزان مياه، موتور كهربائي،\r\nتدفئة وتكييف، وجميع تجهيزات المنزل اللازمة الاساسية على احدث مستوى تكنولوجي\r\nمواصفات خارجية', 'التسليم خلال شهرين \r\nخصم الكاش يصل الى 15 %', 'YES'),
(390, 1, 'seven hill', 'فلل ساريير القريبة من البوسفور', '1632408900.jpeg', 'resident', 36, NULL, NULL, '2021-09-23 11:55:00', '2021-09-24 09:25:29', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 1, 1, 'فلل ساريير القريبة من البوسفور \r\nالموقع : \r\nاسطنبول الاوروبية - منطقة سارييير \r\n3 كم عن شاطئ البحر الأسود \r\n20 دقيقة عن جسر البوسفور \r\nمزايا المشروع : \r\nيتكون المشروع من 7 فلل على مساحة 3544 م2 \r\nلكل فيلا لها مسبح خاص \r\nلكل غرفة حمامها الخاص \r\nبإمكانك اختيار التشطيب الداخلي للفيلا لتنفيذها من قبل شركة الانشاء \r\nالتسليم في نهاية عام 2022', 'التسليم في نهاية عام 2022\r\nخصم الكاش يصل الى 20 %', 'YES'),
(391, 1, 'Leda marine', 'مشروع كافاكلي مارين', '1632410100.jpeg', 'resident', 4, NULL, NULL, '2021-09-23 12:15:00', '2021-09-24 09:12:27', 'cash', 'https://drive.google.com/file/d/1Z5p8rrG2lzD88dY-f12evJbKFScZZ7lp/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 1, 'مشروع كافاكلي مارين \r\nتصميم داخلي فريد بالقرب من ساحل بحر مرمرة \r\nيقع مشروعنا على ساحل كافاكلي في منطقة بيليك دوزو في اسطنبول الاوروبية \r\nيبعد المشروع عن وادي حياة ( أكبر وادي صناعي في اسطنبول ) 4 دقيقة \r\nويبعد 5 دقائق عن ساحل البحر \r\nيبعد عن الطريق السريع 15 دقيقة \r\nويبعد عن المطار الجديد 45 دقيقة \r\nيبعد المشروع عن مركز اسطنبول 50 دقيقة \r\nمزايا المشروع : \r\n يتميز المشروع بجمال حدائقه الداخلية حيث تبلغ نسبة المساحات الخضراء 75٪ \r\nيتكون المشروع 120 شقة و 17 وحدة تجارية \r\nاطلالات المشروع المختلفةمن البحر والوادي ، \r\nميزة الشقق مع حديقة واسعة \r\nخدمات المشروع : \r\nمناطق طبيعية ، موقف سيارات مغطى ، موقف سيارات خارجي ، تدفئة\r\nيوجد مسبح داخلي ولياقة بدنية وساونا وحمام فنلندي.', 'جاهز للتسليم \r\nيصل خصم الكاش الى 15 %', 'YES'),
(392, 1, 'Tual comfort', 'المشروع الأقرب لقناة اسطنبول ..المشروع الاستثماري الأمثل في بهجة شهير التابعة لبلدية باشاك شهير', '1632473860.jpg', 'invest_resident', 8, NULL, NULL, '2021-09-24 05:53:38', '2021-11-22 18:44:14', 'cash_install', 'https://drive.google.com/file/d/1CPcg7Pf7DAbDaw5ne3hMvLWjQeDgSNEd/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 2, 8, 'المشروع الأقرب لقناة اسطنبول ..المشروع الاستثماري الأمثل في بهجة شهير التابعة لبلدية باشاك شهير\r\n\r\n📍مزايا الموقع : \r\nيقع المشروع في منطقة بهجة شهير الواعدة استثماريا بجانب قناة اسطنبول (البوسفور الجديد)\r\nيبعد\r\n900 م عن قناة اسطنبول الجديدة \r\n 2 كيلومتر عن طريق TEM الدولي الذي يصل طرفي اسطنبول \r\n5دقائق فقط عن حديقة غوليت الخضراء وبحيرتها الجميلة\r\n10دقائق عن المدينة المائية أكوا دولفن \r\n12 كم عن أحد أهم مراكز التسوق في اسطنبول مول أكباتي\r\n\r\n🔻 مزايا المشروع : \r\nالقيمة الاستثمارية لبهجة شهير واسبارطة كوليه زادت بشكل ملحوظ وخاصة بعد قرار الحكومة ببدء العمل في مشروع قناة اسطنبول المشروع العالمي الذي سيحول مركز المدينة باتجاه المنطقة الأقرب إلى المطار الجديد\r\n\r\n✅المشروع مقام على أرض مساحتها 24000 متر مربع 70% منها مساحات خضراء\r\nوهو مكون من ٦ أبراج تحوي خيارات عديدة 480 شقة سكنية متنوعة الأنماط \r\n\r\n✅يوجد شرفة مفتوحة لكل شقة في المجمع\r\n\r\n⭕الخدمات تشمل المسبح المغلق و غرف الساونا وغرف البخار و الحمام تركي ونادي رياضي  ، بالإضافة للنظام الأمني 24/7 و الموقف الخاصة بالسيارات \r\nإضافة إلى روضة للأطفال خاصة بالمجمع\r\n\r\n⭕المولات القريبة : \r\nAkbatı Mall\r\nPrestige Mall\r\nMall of istanbul\r\n\r\n\r\n⭕الجامعات القريبة جامعة Sabahettin Zaim الشهيرة الخاصة وفرع لجامعة اسطنبول وجامعة Beykent\r\nإضافة إلى جامعة Esenyurt Üniversite🏫\r\n \r\n⭕يوجد في المنطقة العديد من وسائل النقل و يتم العمل على افتتاح المترو السريعⓂ️ في عام 2023 إضافة لوجود حافلات النقل الكبيرة العامة و الصغيرة الخاصة🚌🚍\r\n\r\nالطابو جاهز (خلال شهر) و مناسب للحصول على الجنسية التركية', 'المشروع قيد الانشاء و التسليم في عام 2024 \r\nخصم الكاش يصل الى 17 % \r\nخطة الأقساط :\r\n50% و دفعات على 24 شهر\r\n35% و دفعات على 30 شهر', 'YES'),
(393, 1, 'Gop plevne', 'مشروع مركز غازي عثمان باشا في اسطنبول بمحيط شيشلي وبشراكة مع البلدية', '1632476676.jpg', 'invest_resident', 16, NULL, NULL, '2021-09-24 06:44:36', '2021-11-06 16:33:41', 'cash', 'https://drive.google.com/file/d/1yZ03rYzg5pZGQSGJSwdP2x45gSJgTFT7/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 2, 1, 'مشروع مركز غازي عثمان باشا في اسطنبول بمحيط شيشلي وبشراكة مع البلدية \r\n\r\n📍مزايا الموقع : \r\nيقع المشروع  في منطقة غازي عثمان باشا والتي تتميز بقربها من جميع المناطق الحيوية في اسطنبول مثل مسلك وبيشكتاش وشيشلي بلإضافة لإطلالتها على غابات غازي وبحيرية علي بيه ويبعد :  \r\n10 كم عن شيشلي \r\n2.5 عن مدينة الملاهي الضخمة فيا لاند \r\n13 كم عن مضيق البوسفور \r\n11 كم عن ميدان تقسيم \r\n\r\n🔻مزايا المشروع: \r\n\r\n- تم إنشاء المشروع بالشراكة مع بلدية غازي عثمان باشا  \r\n -تم إفتتاح محطة مترو جديدة مؤخراً بجانب المشروع مباشرةً (محمود بيه – مجيدية كوي) , \r\n-  يوجد مول مفتوح اسفل المشروع بمعدل 43 محل تجاري , وتم إنشاء المشروع على أرض مساحتها 71.734 متر مربع \r\n- المشروع عبارة عن بنائين يوجد فيها 400 وحدة سكنية + 42 محل تجاري \r\n\r\n🔻خدمات المشروع: \r\n\r\nمسبح مغلق بمساحة 1200 متر \r\nوجود مواقف سيارات مغلقة ومفتوحة \r\nمسبح للأطفال \r\nحمام تركي و ساونا \r\nملاعب \r\nمقاهي وحدائق و ملاهي للأطفال \r\nمركز تسوق \r\nتدفئة مركزية', 'التسليم في شهر 4 / 2022 \r\nخصم الكاش المبدأي  10 %', 'YES'),
(394, 1, 'bizim evler güzelce', 'مشروع الحدائق الداخلية والإطلالات البحرية اسطنبول', '1632826526.jpg', 'resident', 6, NULL, NULL, '2021-09-28 07:55:28', '2021-11-17 15:00:10', 'cash', 'https://drive.google.com/file/d/1ElZShziKXp01Is4ojinnAg7YG1vLZHbk/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 4, 1, 'إذا كنت تبحث عن أكبر مساحات خضراء داخلية وإطلالات بحرية فمشروعنا على بعد 400 م عن البحر فقط \r\nإطلالات مفتوحة وبحرية ومساحات واسعة \r\n- مزايا الموقع : \r\nيقع المشروع  في مصيف اسطنبول منطقة Büyükçekmece  في القسم الاوروبي \r\nيبعد عن البحر مسافة 400 م وعم الطريق السريع حوالي 500 م \r\nيبعد حوالي 2 كم عن أقرب محطة متروبوس \r\nيبعد حوالي 45 كم عن المطار الجديد \r\nويبعد عن المركز( الفاتح)  50 كم \r\n- مزايا المشروع : \r\nيتألف المشروع من (17) برج (709) وحدة سكنية و (111) محل تجاري \r\nاطلالاته البحرية الساحرة على بحر مرمرة وقربه من الشاطئ حوالي 400 م فقط \r\n يتميز المشروع  بمساحاته الخضراء (64 دونم ) المليئة بالخدمات الاجتماعية منها مفتوحة كـ :\r\nمناطق مخصصة لرياضة المشي و الجري و ركوب الداراجات , ملعبين كرة قدم , ملعب كبير متعدد الاستخدامات , حدائق أطفال تناسب كافة الأعمار , مطعم و كافيه \r\nوخدمات اجتماعية مغلقة كـ : \r\nحوض سباحة , نادي رياضي , غرف ساونا , حمام تركي ,', 'الخصم في حال الدفع كاش 20 % \r\nالمشروع جاهز للتسليم', 'YES'),
(395, 1, 'altun', 'شقق بيليك دوزو الحديثة', '1632838999.jpeg', 'resident', 4, NULL, NULL, '2021-09-28 11:23:19', '2021-11-19 18:29:35', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 2, 1, 'مزايا الموقع : \r\nيقع المشروع في بيليك دوزو في القسم الاوروبي في اسطنبول \r\nمعالم قريبة من المشروع ( المارينا - الوادي الاخضر - خط المتروبوس - ساحل غوربينار-مول مرمرة بارك )\r\nمزايا المشروع :\r\n- يقع المشروع في شارع حيوي وتجاري بسبب وجود شارع التسوق الكبير \r\nجميع الشقق تتمتع بسقف عال يعطي الشقة طابع واسع \r\nوعزل صوتي فائق\r\n وزجاج مصفح غير قابل للكسر ،\r\nمشروع عائلي بامتياز لوجوده في منطقة بيليك دوزو الراقية والتي تعتبر من أكثر المناطق هدوءا في اسطنبول ولقرب المشروع من الساحل والشارع التجاري \r\nالخدمات الاجتماعية : \r\n- حراسة \r\n- ساونا وحمام تركي \r\n- مسبح مغلق \r\n- أماكن مخصصة للعب الأطفال \r\nالتسليم بعد شهرين في شهر 12 /2021', 'التسليم في شهر 12 / 2021', 'YES'),
(396, 1, 'stay çeken', 'امتلك بالقرب من مسلك وعلى بعد 300 م عن المترو', '1632842729.jpg', 'invest_resident', 22, NULL, NULL, '2021-09-28 12:25:29', '2021-09-28 12:42:15', 'cash', 'https://drive.google.com/file/d/1fQvfdaO38bZ3P652B7Wjjks2hx9KykkE/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 1, 3, 'مشروع سكني تجاري في مركز اسطنبول الاوروبية منطقة كاتهانة وعلى بعد 300 م فقط عن محطة المترو \r\n- مزايا الموقع : \r\n  يبعد المشروع دقيقتين عن الطريق السريع TEM.\r\n  يبعد المشروع دقيقه واحده عن المترو\r\nيبعد الترام تي 7 عنه 10 دقائق\r\n يبعد المشروع دقيقتين عن أكسيس مول.\r\n    10 دقائق من حي مسلك\r\n   15 دقائق من حي ليفنت\r\n    40 دقيقة من مطار اسطنبول الجديد\r\n\r\n- مزايا المشروع : \r\nيتميز المشروع بمساحات شققه الكبيرة فمساحة ال ١+١ تصل الى ١١٠م٢ وال ٢+١ تصل الى ٢٠٠م٢\r\n 9 محلات تجارية \r\n\r\n- المرافق الاجتماعية \r\n     نادي رياضي\r\n    ملعب للأطفال\r\n    كافيهات\r\n  المطاعم', '* تاريخ التسليم * ديسمبر 2022\r\n    * سند الملكية جاهز *\r\n    * لا يوجد مصاريف سند ملكية *\r\nخصم الكاش 20 %', 'YES'),
(397, 1, 'Baharyaka', 'في منطقة أيوب التاريخية وباطلالات على خليج القرن الذهبي', '1632919912.jpg', 'invest_resident', 15, NULL, NULL, '2021-09-29 09:51:52', '2021-11-19 19:47:18', 'cash_install', 'https://drive.google.com/file/d/1ro5pGmjv0TaqIpbkVxadQzQuI-huFfH5/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 1, 8, 'مشروع في السطان أيوب العريقة وبإطلالات على خليج القرن الذهبي \r\nموقع متميز مناسب للعائلة أو لمن يبحث عن ارتفاع سعر الشقة مستقبلاً \r\n📍مزايا الموقع : \r\nيقع المشروع  في منطقة سلطان أيوب  في القسم الأوروبي\r\nتتوسط منطقة السلطان أيوب الواقعة في الشق الأوروبي لمدينة اسطنبول وتحتضن المنطقة العديد من المعالم السياحية والتاريخية . وتتميز المنطقة بأهميتها الجغرافية بسبب عدة عوامل منها قربها من الطرق المفصلية والحيوية مثل طريق E- 5 وطريق E- 80. وبجانب أكسس مول التجاري وتوفر المواصلات فيها بشكل مريح من مترو وترامواي ومتروبوس \r\nيحيط بمنطقة أيوب مناطق ( الفاتح والسلطان أحمد وتقسيم ) ويمكن وصولها بسهولة لوجود خط مترو وترام وباصات النقل العام \r\n\r\n🔻 مزايا المشروع :\r\nيتكون المشروع من 27 بناءاً موزعاً على 5 بلوكات سكنية بإرتفاع 10 طوابق على أرض مساحتها 20,800 متر مربع، \r\nيحتوي المشروع على 593 وحدة سكنية. \r\nيتميز المشروع بإطلالاته الساحرة على خليج القرن الذهبي وإطلالات داخلية على حدائق المشروع والمدينة.\r\n\r\n مول اكسس اسطنبول2 دقيقة\r\n الخليج القرن الذهبي:4 دقيقة \r\n مسجد ابي ايوب الانصاري: 5 دقيقة\r\nمنطقة الفاتح 7 دقيقة \r\nجسر البوسفور15 دقيقة\r\nمطار اسطنبول الجديد: 40 دقيقة', 'التسليم في شهر 4 / 2023  \r\nخصم الكاش يبدأ من 15 %\r\n طرق التقسيط : \r\n- 25% دفعة اولى و25% تقسيط ل 18 شهر و 25% بعد 9 أشهر و25% عند التسليم \r\n- 40% دفعة أولى و 20% تقسيط لمدة 24 شهر و 20% بعد 9 أشهر و 20% وقت التسليم \r\n- 50% دفعة اولى و 30% تقسيم ل 30 شهر و 20% وقت التسليم', 'YES'),
(398, 1, 'G tower', 'شقق بنظام فندقي في شارع الباسن اكسبريس', '1632925827.jpg', 'hotel', 9, NULL, NULL, '2021-09-29 11:30:27', '2021-10-27 17:55:20', 'cash', 'https://drive.google.com/file/d/1eOs7Y73gAsWpO-1tCDLa5sOTJPb3o721/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 1, 'شقق بنظام فندقي على شارع الباسن اكسبريس التجاري في اسطنبول \r\n📍مزايا الموقع : \r\nيقع المشروع في الطرف الأوروبي من مدينة إسطنبول وتحديداً على طريق الباسن اكسبريس والذي يعتبر المركز التجاري والمالي الجديد في اسطنبول \r\n- يبعد المشروع عن\r\n• 1 كم عن مول اوف اسطنبول \r\n• 800 م عن مول 212 \r\n• 10 كم عن مطار اتاتورك.سابقاً\r\n• 10 دقيقة عن المترو.\r\n• 5 دقيقة عن الطريق السريع TEM.\r\n• 4 كم عن الطريق الرئيسي E5.\r\n• 30 كم عن مطار إسطنبول الجديد.\r\n• 30 كم عن مركز اسطنبول ( تقسيم ) \r\n\r\n🔻 مميزات المشروع\r\nالمشروع عبارة عن برج ضخم يتوسط شارع الباسن اكسبريس ويقع المشروع بالقرب من محطة مترو تصلكم الى اغلب المناطق المركزية في إسطنبول \r\n\r\nهو من سلسلة المشاريع التي طرحتها شركة MAR YAPI التي أسست أهم الفنادق الدولية والتركية ومنها ديوان اوتيل الذي يقع في المشروع \r\n\r\n🔻 خدمات المشروع\r\n• المشروع مؤمن 24/7.\r\n• مواصفات قياسية مناسبة للزلازل.\r\n• مرآب سيارات خاص بالمشروع.\r\n• شرفات خاصة بكل شقة.\r\n• عزل الأصوات.\r\n• صالون لياقة بدنية.\r\n• مسبح مغلق\r\n• حمام تركي\r\n• ساونا', 'خصم الكاش 15 % \r\nالشقق من شركة الانشاء مباشرة وهي مناسبة للجنسية التركية', 'YES'),
(399, 1, 'E5 residence', 'استثمر في ريسيدانس على الطريق السريع بالقرب من مجيدية كوي', '1632990277.jpeg', 'invest_resident', 22, NULL, NULL, '2021-09-30 05:24:38', '2021-09-30 05:24:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 2, 3, 'أفضل مشروع إستثماري على خط ال E5 في محيط شيشلي .. استفد من أسعار الآن لتحقق ربح ارتفاع السعر \r\n2 كم فقط عن مجيدية كوي وعند محطة متروبوس ومترو \r\n📍مزايا الموقع : \r\n- يقع على خط الـ E5 \r\n- يبعد مسافة 200 متر عن محطة الميتروبوس .\r\n- يبعد مسافة 900 متر عن محطة الميترو . \r\n- يوجد محطة ميترو تبعد عن المشروع مسافة كيلو ونصف قيد الانشاء توصل بشكل مباشر إلى مطار اسطنبول الجديد .\r\n\r\n🔻 معلومات عن المشروع : \r\n- مكون من بنائين ( A-B blok ) \r\n- نمط الشقق المتوفرة ( 1+1 / 2+1 ) \r\n- طابو جاهز .\r\n- شقق مناسبة للحصول على الجنسية التركية \r\n\r\nالمراكز التسوقية القريبة من المشروع : \r\n‏- istanbul Cevahir \r\n‏- City’s Nişantaşı \r\n‏- Profilo AVM \r\n‏- Zorlu Center \r\n‏- Trump Tower \r\n\r\nالجامعات القريبة من المشروع : \r\n‏- istanbul Bilgi Uni. \r\n‏- Bahçeşehir Uni. \r\n‏- İstanbul Uni. \r\n‏- Yıldız Teknik Uni. \r\n‏- koç Uni. \r\n\r\nالمراكز الصحية القريبة على المشروع : \r\n‏- Memorial Şişli Hastanesi \r\n‏- Kolan Hastanesi \r\n‏- American Hospital \r\n‏- Acıbadem Fulya Hastanesi \r\n‏- Liv Hastanesi', 'التسليم في شهر 9/2022 \r\nخصم الكاش يصل الى 15 % \r\nخصم الأقساط 5 % \r\nطريقة الدفع : 50 % مقدم وأقساط على سنة', 'YES'),
(400, 1, 'MARINA KONAKLARI', 'شقق المارينا في بيليك دوزو', '1633163762.png', 'resident', 4, NULL, NULL, '2021-10-02 05:34:31', '2021-11-16 15:08:31', 'cash_install', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 2, 3, 'شقق المارينا في بيليك دوزو اسطنبول \r\nاستمتع بالمساحات الكبيرة والقرب من ويست مارينا على بحر مرمرة \r\n📍 مزايا الموقع : \r\nيقع المشروع في بلدية بيليك دوزو الساحلية في اسطنبول الاروبية ويبعد عن : \r\n 5 دقائق عن المارينا \r\n10 دقائق للمتروبوس \r\n10 دقائق لمول مرمرة بارك \r\n1 دقيقة واحدة عن وادي حياة اكبر حديقة صناعية في اسطنبول \r\n40دقيقة للمطار الجديد \r\n50 دقيقة لمركز المدينة \r\nالمنطقة المحيطة مخدمة بالمدارس وجامعة ومستشفى وماركات تسوق \r\n\r\n🔻 مزايا المشروع : \r\n🔸عدد البلوكات: 5\r\n🔸عدد الشقق: 105\r\n🔸الأنماط المتوفرة: 1+2 حتى 1+7\r\n🔸ارتفاع الطوابق: 4\r\n🔸عدد الشقق في كل طابق: 2\r\n🔸اطلالة بحر وحديقة وادالحياة\r\n🔸الأدوات المسلمة مع الشقة: فرن\r\n🔸طباخ كهربائي-غسالة لصحون-ساحب الهواء\r\n🔸الخدمات المتوفرة في المشروع\r\n🔸مسبحين مغلقين، حمام تركي ،ساونا ، صالة للرياضة ،العاب للأطفال ،مساحات خضراء وممرات للمشي.', '🔸تاريخ التسليم: 01/06/2022\r\n🔸الطابو جاهز مناسب للجنسية\r\n التركية\r\nالخصم في حال الدفع كاش يصل الى 15 % \r\nالتقسيط : 50% مقدم والباقي اقساط لمدة 12 شهر', 'YES'),
(401, 1, 'MINA TOWERS', 'أبراج كاديكوي الحديثة', '1633167906.jpg', 'invest_resident', 27, NULL, NULL, '2021-10-02 06:45:08', '2021-10-08 09:48:12', 'cash_install', 'https://drive.google.com/file/d/1mS04si9wmKb4Ad5Bqnyw9wn0JKWeP2mp/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 2, 3, 'أبراج كاديكوي \r\nشقق ذكية ضمن أرقى مناطق اسطنبول الاسيوية ودقائق فقط عن شارع بغداد الشهير و 25 دقيقة عن مطار صبيحة و 35 دقيقة عن تقسيم \r\n📍مزايا الموقع : \r\nيقع المشروع في منطقة كاديكوي وهي من المناطق القريبة من البوسفور في القسم الاسيوي \r\nيبعد المشروع 15 دقيقة عن شارع بغداد الشهير \r\nوهو شارع التسوق والأعمال والمطاعم الشهيرة \r\nويقع على بعد 10 دقائق من الساخل \r\n25 دقيقة عن مطار صبيحة \r\n35 دقيقة عن تقسيم \r\n🔻 مزايا المشروع \r\nيتكون المشروع من 3 بلوكات و 23 طابق  \r\nالطوابق الأربع الاولى من كل بناء عبارة عن وحدات تجارية ومطاعم \r\n بامكانك التمتع بجمال الاطلالة من الشقق الكبيرة مع تراس يطل على بحر مرمرة \r\n🔻 خدمات المشروع : \r\nأمن \r\nكافيه ومطاعم \r\nخدمات الاستقبال والريسبشن \r\nمركز اللياقة البدنية \r\nحمامات سباحة داخلية وخارجية \r\nاوتوبارك للسيارات \r\nساونا \r\nحمام تركي \r\nسوبر ماركت \r\nيحتوي كل سطح على مساحات خضراء وحمامات سباحة باطلالات رائعة', 'التسليم 6/2023\r\nنظام الاقساط فقط لنمط 3+1 \r\n50% مقدم والباقي اقساط لمدة 12 شهر', 'YES'),
(402, 1, 'up life', 'مشروع كاديكوي لايف', '1633173285.jpeg', 'invest_resident', 27, NULL, NULL, '2021-10-02 08:14:45', '2021-10-02 08:36:05', 'cash_install', 'https://drive.google.com/file/d/1KID9GLwgrXy-v7s5tO3t0DHKNMLMe97u/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 2, 5, 'مشروع كاديكوي لايف \r\nفي أرقى مناطق اسطنبول الاسيوية , مشروع استثماري باطلالات مميزة \r\n\r\n📍مزايا الموقع :  \r\nاسطنبول القسم الاسيوي - كاديكوي \r\n5 دقائق إلى مترو كاديكوي\r\n10 دقيقة إلى محطة الميتروبوس \r\n10 دقيقة إلى مشفى كاديكوي\r\n10 دقائق إلى مركز تسوق أكاسيا\r\n يقع المشروع في أكثر الأحياء حيوية في المنطقة بالقرب من المقاهي والمطاعم و الجامعات و الخدمات اليومية \r\nالمشروع محاط ب 3 جامعات كبيرة مثل (اسطنبول مدنيات , باهتشي شهير و جامعة مرمرة)\r\n\r\n🔻 مزايا المشروع \r\n- يتكون المشروع من 4 بلوكات سكنية \r\n- 22 طابقًا ضمن كل بلوك سكني .\r\n-20 محل تجاري \r\n-يحتوي المشروع على خمس طوابق مواقف سيارات\r\n- أطلالة مفتوحة على المدينة و Çamlıcatepe\r\n- مشروع كامل المرافق (مسبح خارجي وداخلي ، صالة رياضية ، سبا ، ساونا، صالون يوجا)\r\n\r\n✔️أفضل سعر في كاديكوي حاليا', 'تسليم المشروع في عام 2023 \r\nالخصم على الكاش 5 % \r\nميزة استثمارية بارتفاع سعر المتر كلما اقترب موعد التسليم', 'YES'),
(403, 1, 'reference kartal', 'مشروع كارتال الحديثة', '1633431095.jpg', 'resident', 33, NULL, NULL, '2021-10-05 07:51:35', '2021-10-05 07:51:35', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 1, 'مشروع كوردون كارتال \r\nشقق بإطلالات مميزة على البحر وجزر الأميرات وبالقرب من أهم المواصلات في الطرف الآسيوي ومطار صبيحة \r\n📍مزايا الموقع : \r\nيقع المشروع في الطرف الآسيوي من اسطنبول والمطلوب بسبب الهدوء وجمال المناطق المتواجدة فيه \r\nيبعد المشروع عن محطة مرمراي دقيقتين \r\nو5 دقائق عن طريق الساحل كاراتال \r\n5 دقائق عن الطريق السريع E5\r\nوقريب من مولات اهمها اناتوليوم ومالتابا بارك \r\nيبعد المشروع 20 دقيقة عن مطار صبيحة \r\n📍مزايا المشروع : \r\nالمشروع جاهز للتسليم يتكون من أبراج فيها 93 شقة و 11 محل تجاري تخدم المشروع \r\nللمشروع مفهوم عائلي لمن يبحث عن الهدوء والقرب من المواصلات بالاضافة لمساحاته الداخليه وخدماته المتكاملة وهي : \r\n- جلسات عائلية \r\n- صالة رياضية \r\n- حمام تركي \r\n- غرفة بخار \r\n- حديقة خاصة \r\n- ألعاب الأطفال', 'المشروع جاهز للتسليم \r\nخصم الكاش يصل الى 10%', 'YES'),
(404, 1, 'reference kartal towers', 'ابراج كارتال', '1633438502.jpg', 'invest_resident', 33, NULL, NULL, '2021-10-05 09:53:15', '2021-10-05 09:55:02', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 1, 'مشروع أبراج كارتال \r\nشقق بإطلالات مميزة وبالقرب من أهم المواصلات في الطرف الآسيوي \r\n📍مزايا الموقع : \r\nيقع المشروع في الطرف الآسيوي من اسطنبول والمطلوب بسبب الهدوء وجمال المناطق المتواجدة فيه \r\nيبعد المشروع 3 دقائق عن ساحل كارتال \r\nيبعد المشروع عن محطة مرمراي دقيقتين \r\nو5 دقائق عن طريق الساحل كاراتال \r\n5 دقائق عن الطريق السريع E5\r\nوقريب من مولات اهمها اناتوليوم ومالتابا بارك \r\nيبعد المشروع 20 دقيقة عن مطار صبيحة \r\n📍مزايا المشروع : \r\nالمشروع جاهز للتسليم يتكون من أبراج فيها 93 شقة و 11 محل تجاري تخدم المشروع \r\nللمشروع مفهوم عائلي لمن يبحث عن الهدوء والقرب من المواصلات بالاضافة لمساحاته الداخليه وخدماته المتكاملة وهي : \r\n- جلسات عائلية \r\n- صالة رياضية \r\n- حمام تركي \r\n- غرفة بخار \r\n- حديقة خاصة \r\n- ألعاب الأطفال\r\n- مقهى \r\n- غرفة يوغا', 'المشروع جاهز للتسليم \r\n60% من المشروع مباع بالكامل \r\nخصم الكاش يصل الى 10%', 'YES'),
(405, 1, 'AVCILAR GARDEN', 'مشروع حدائق افجلار', '1633531182.jpeg', 'resident', 20, NULL, NULL, '2021-10-06 11:39:44', '2021-11-16 15:09:43', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 1, 'مشروع حدائق افجلار \r\nلمحبي التشطيبات الراقية والحدائق الجميلة \r\n📍مزايا الموقع \r\nيقع المشروع في قلب أفجلار ويبعد فقط  5 دقائق من طريق السريع (E5 والمتروبوس )،\r\n3 دقائق من ساحل امبارلي  واكبر حديقة عامة  في افجلار مباشرة على البحر،\r\nالمشروع محاط بكل الخدمات مدارس مستشفيات محطة باصات ومراكز تجارية \r\n(Migros – Carrefour - File) \r\n\r\n🔻 مزايا المشروع \r\nالمشروع مجهز بنظام شقق ( 2+1 بمساحة 121 متر مربع و 3+1 بمساحة 155 متر مربع)  وكل الشقق مع تراس، المشروع يمتاز بطابع  هاديء في وسط عائلي\r\nالمشروع  عبارة عن مرحلتين كل مرحلة مجهزة بخدمات عديدة :\r\n-	مشروع سكني عائلي بامتياز \r\n-	الامن وحراسة 24 ساعة \r\n-	مواقف انتظار سيارات \r\n-	مسابح للكبار والاطفال\r\n-	صالة رياضة بمساحة كبيرة \r\n-	حمام تركي  و ساونا \r\n-	حديقة مجهزة بالعاب للاطفال   \r\nالمشروع جاهز للتسليم', 'المشروع جاهز للتسليم \r\nالخصم عند الدفع يصل الى 15 %', 'YES'),
(407, 1, 'nef kandille', 'مشروع بوسفور بانوراما', '1635322433.jpg', 'resident', 37, NULL, NULL, '2021-10-27 15:13:53', '2021-11-03 14:38:03', 'cash_install', 'https://drive.google.com/file/d/16K8FxBgVj21joQflDMr5r3ap9DmqGRo-/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 1, 8, 'مشروع  عائلي فاخر بإطلالات لا مثيل لها على مضيق البوسفور يقع على الجانب الآسيوي من اسطنبول / منطقة أوسكودار ، وسط المدينة القديمة في اسطنبول ، محاط بالمجمعات الراقية والاثرية\r\n\r\nمزايا الموقع : \r\nالمشروع على بعد 5 دقائق من (جسر البوسفور - ساحل اسكودار - قصر السلطان عديل - قصر السلطان جميل - حديقة قينديلي - هضبة تشاملجا) \r\n على بعد 20 دقيقة من (تقسيم - كاديكوي - أكاسيا مول - كابيتول مول) \r\n\r\nمزايا المشروع : \r\nتصميم المهندس المعماري ايمري ارولات حيث قام بالدمج بين الطابع الاثري والحديث على مشارف مضيق البوسفور\r\nمساحة المشروع 40.000 م 2\r\n29 عدد الابنية\r\n406 وحدة سكنية\r\nأنماط الشقق 2.5+1 - 3+1 - 3.5+1 - 4+1 - 5+1 دوبلكس\r\n تبدأ المساحات من 157 حتى 411 متر مربع\r\nكل بناء مؤلف من 6 طوابق \r\nكل طابق يحتوي على شقتين واسعتين فقط\r\n\r\nالخدمات الاجتماعية\r\n- مسبح خارجي وداخلي\r\n- مركز اللياقة البدنية\r\n- ساونا\r\n- حمام تركي\r\n- غرفة لاقامة الحفلات\r\n- غرفة لاستقبال الضيوف\r\n- غرفة الالعاب\r\n- غرفة الموسيقى\r\n- غرفة سينما\r\n- ستوديو خاص\r\n- ملعب كرة سلة مغلق\r\n- ملعب كرة قدم مغلق\r\n- ملعب تنس\r\n \r\n_ مناسب للحصول على الجنسية التركية\r\n_ سند الملكية جاهز', 'التسليم\r\nسيتم تسليم المشروع على مرحلتين:\r\nالمرحلة الأولى   أغسطس 2022\r\nالمرحلة الثانية   أغسطس 2023', 'YES'),
(408, 1, 'Avangard', 'شقق مسلك الراقية', '1635496580.jpg', 'resident', 18, NULL, NULL, '2021-10-29 15:36:20', '2021-11-23 14:20:57', 'cash', 'https://drive.google.com/file/d/1lZLOevSFSotjlrvACCgFhLtfiMoS7mF5/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 1, 1, 'مشروع مسلك الراقي ..للباحثين عن الفخامة في أرقى مناطق اسطنبول الأوروبية \r\n\r\n📍مزايا الموقع : \r\n - في المركز الراقي والأكثر تطوراً في اسطنبول وفي قلب المدينة الراقي, وعلى بعد دقائق من جسر البوسفور \r\n- يقع على الطريق الدولي والسريع لاسطنبول E80 أو TEM\r\n- يبعد أيضا مسافة 10 دقائق عن جسر البوسفور الثاني ( السلطان محمد الفاتح )\r\n- ملاصق لأحد أهم وأضخم مراكز التسوّق في المدينة ( وادي اسطنبول )\r\n- يبعد المشروع عن محطة مترو الأنفاق مسافة 3 دقائق\r\n\r\n🔻مزايا المشروع : \r\nالمشروع بشراكة حكومية بأرقى مستوى تشطيب داخلي واطلالات على غابات بلغراد \r\n مساحة أرض 36.750 متر موزعة 11 بناء سكني 16 طابق\r\nما يميز المشروع أيضا إطلالاته الجميلة والمميزة على غابات بلغراد\r\nيتواجد في محيط المشروع 22 محل تجاري لتخديم سكان المشروع ومحيطه\r\n\r\n🔻 خدمات المشروع : \r\nأمن\r\nالنظام الذكي\r\nبالقرب من المترو\r\nحمام و ساونا\r\nخدمات عائلية منفصلة\r\nغرفة العاب\r\nمحلات تسوق\r\nمساحات خضراء\r\nمسبح مغلق\r\nملعب كرة سلة\r\nملعب كرة قدم\r\nمواقف سيارات\r\nنادي رياضي', 'الطابو جاهز ومقيم للجنسية التركية \r\nالخصم يبدأ من 15 %', 'YES'),
(409, 1, 'AS MASLAK', 'شقق بلغراد مسلك', '1635773875.jpeg', 'invest_resident', 18, NULL, NULL, '2021-11-01 20:37:55', '2021-11-01 20:44:08', 'cash', 'https://drive.google.com/file/d/1M9gQfGfNu0EU9yDjvmi_NynOjaXHu9qE/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 1, 2, 'شقق بلغراد مسلك \r\nشقق ذكية في أرقى أحياء اسطنبول الاوروبية \r\n📍مزايا الموقع : \r\nيقع المشروع في منطقة مسلك بمحاذاة غابات منطقة ساريير\r\n ويميز المشروع قربه من مضيق البوسفور وبالقرب من مناطق مركز اسطنبول مثل تقسيم و ليفنت حوالي 10 دقائق  و 25 دقيقة الى مطار اسطنبول الثالث مما يعطيها أهمية استثمارية كبيرة\r\n🔻مزايا المشروع : \r\nيتضمن المشروع شارعاً للتسوق يوفر كل شيء بدءًا من الصيدليات إلى صالونات تصفيف الشعر ، من المقاهي إلى المتاجر الفاخرة .\r\nتتمتع اغلبية الشقق باطلالة على غابات بلغراد \r\nقريب لخط المترو مارماراي\r\nالمشروع تسليم في نوفمبر 2021\r\nمناسب للجنسية التركية', 'خصم 7٪ للدفع نقدي كاش\r\n الدفع حصرا بالدولار الأمريكي\r\nنظام التقسيط 60 ٪ مقدمة والباقي تقسيط على 6 أشهر فقط', 'YES'),
(410, 1, 'şehri deniz', 'مشروع المدينة البيضاء في بيليك دوزو', '1636031340.png', 'resident', 4, NULL, NULL, '2021-11-04 20:09:00', '2021-11-04 20:09:00', 'cash', 'https://drive.google.com/file/d/1m6jQ8ZzXqB7P1nM_hiY6rtQMmbUP--Jx/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 2, 2, 'في منطقة بيليك دوزو الهادئة و الراقية المتميز بقربه من بحر مرمرة و المارينا  ، بكونه مشروع سكني و عائلي \r\n\r\n✔موقع المشروع : \r\n متواجد بالقرب من  : \r\n•	طريق  E5 و محطة ميتروبوس 7 دقائق\r\n•	بالقرب من مارينا اسطنبول و شاطئ مرمرة  10 دقائق\r\n•	يبعد عن مول مارمارا بارك 7 دقائق \r\n•	يبعد عن مول PERLAVISTA  عشر دقائق \r\n•	جامعات و مدارس هامه حوالي ال 5 دقائق و من ضمنها مدرسة الفنار العربية الخاصة \r\n•	مشافي 5 دقائق \r\n\r\n✔مزايا المشروع : \r\nيتألف المشروع من 4 مراحل بمساحة ارض اجمالية 20.000 متر مربع  \r\nكل مرحلة 5.000 متر مربع و تحتوي كل مرحلة عل 5 بلوكات سكنية  بارتفاعات 4 الى 5 طوابق \r\nو بخيارات مختلفه عن باقي المشاريع بنوع   1+1 - 1+2 - 1+3  1+4  5+1 -  6+1 - 7+1\r\n\r\n✔خدمات المشروع الداخليه : \r\nمساحات خضراء واسعة , مسبح خارجي , مسبح اطفال , نادي رياضي , ساونا , حمام تركي , ساحات لعب أطفال , مواقف سيارات داخلية \r\n\r\n✔طريقة الدفع تكون : \r\n•	كاش \r\n•	أقساط', '•	المرحلة الاولى و الثانية جاهزة للتسليم الفوري\r\n•	المرحلة الثالثة سوف يتم التسليم في شهر شباط 2022/02/01', 'YES'),
(411, 1, 'hazal', 'بوتيك بيوك جيكمجه', '1636034842.jpeg', 'invest_resident', 6, NULL, NULL, '2021-11-04 21:07:22', '2021-11-04 21:07:22', 'cash', 'https://drive.google.com/file/d/1Dekd14odJpD6Bb52PXYBVVFRCME29673/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 3, 1, 'جار البحر في مركز بلدية بيوك جيكمجه الساحلية في شارع حيوي شارع المطاعم والكافيهات \r\nمزايا الموقع : \r\nيقع المشروع في منطقة بيوك جيكمجه في اسطنبول الاوروبية بالقرب من ساحل بحر مرمرة والمارينا \r\nيبعد المشروع 850 م عن الساحل \r\nويبعد مسافة 1 كم عن الطريق السريع E5\r\nمزايا المشروع : \r\nيتكون المشروع من 164 شقة و 12 محل تجاري يخدمه كامل الخدمات من أمن واوتوبارك سيارات مسابح إلى حديقة العاب أطفال وملعب كرة سلة ونادي رياضي وساونا \r\nالمشروع جاهز للتسليم', NULL, 'YES'),
(412, 1, 'babacan port royal', 'شقق استثمارية بالقرب من مطار اتاتوك والباسن اكسبريس', '1636102427.jpg', 'invest_resident', 10, NULL, NULL, '2021-11-05 15:53:47', '2021-11-05 15:54:50', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 1, 'شقق استثمارية بالقرب من مطار اتاتوك والباسن اكسبريس\r\nبمحيط ثلاث جامعات كبرى وعدلية كوتشوك جيكمجه \r\n📍مزايا الموقع : \r\nيقع المشروع على الطريق السريع E5 وبالقرب من المتروبوس 5 دقائق \r\nو 10 دقائق عن شارع الباسن اكسبريس التجاري \r\nالمشرو مطل على مطار اتاتورك سابقا والذي سيكون حديقة الشعب الكبرى \r\nبمحيط المشروع ثلاث جامعات ( آيدن-والبيروني -كولتور ) \r\nويقع المشروع خلف مبنى عدلية كوتشوك جيكمجه مما يرفع من العائد الايجاري للمشروع\r\n🔻مزايا المشروع : \r\nيتكون من اربع بلوكات \r\nبرجين فندقيين وبرج مكاتب ومحلات تجارية وبرج سكني \r\nيضم المشروع نماذج من 0+1 لغاية 3+1\r\n🔻الخدمات الاجتماعية : \r\nمركز لياقة بدنية \r\nساونا و مركز علاج صحي و غرفة مساج \r\nحمام تركي و حمام بخار \r\nمسابح مفتوحة و مغلقة \r\nغرف اجتماعات و سينما \r\nحراسة و مراقبة ( 24/7 ) \r\nمواقف خاصة للسيارات مغلقة و مكشوفة', 'جاهز للتسليم ومطابق لشروط الجنسية التركية \r\nعائد ايجاري مرتفع\r\nخصم الكاش يصل إلى 15%', 'YES'),
(413, 1, 'deniz istanbul', 'المدينة الساحلية الأكبر في اسطنبول', '1636104332.jpg', 'resident', 4, NULL, NULL, '2021-11-05 16:25:32', '2021-11-05 16:25:32', 'cash', 'https://drive.google.com/file/d/1SuRmZDl12A6-AeRvWPzaM893hKnLNE3D/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'under_construction', NULL, NULL, NULL, NULL, 4, 1, '*المدينة الساحلية الوحيدة في اسطنبول*\r\n*مارينا ونادي يخوت وحياة فاخرة وشاطئ خاص للمشروع 79 في المئة من المدينة هي مناطق خضراء.*\r\n\r\n🔹 واحد من أكبر وأنجح المشاريع في منطقة بيليك دوزو اسطنبول الأوروبية\r\n🔹 المناسب للسكن والاصطياف والاستثمار الدائم من حيث الموقع والجودة والاطلالات والخدمات.\r\n🔹 يقع المجمع مباشرة على البحر \r\n\r\n🔶 يضم 5000 شقة فاخرة\r\n🔶المساحة السكانية: 20000 نسمة\r\n🔶 المشروع مبني على أرض بمساحة 1.500.000 متر مربع\r\n🔶 فلل وشقق للبيع باطلالة ساحرة على بحر مرمرة\r\n🔶 *مدينة* يمكنها تلبية جميع احتياجاتها داخلها.\r\n🔶 أهم ميزة في المشروع هو *المارينا.*\r\n▪ يحتوي على كافة المرافق مثل :\r\n▪ حمامات السباحة المفتوحة والمغلقة\r\n▪ *وساونا ، وحمام تركي* ، وبار فيتامين\r\n▪ *والاسكواش ، وملعب تنس* بحجم 5 آلاف متر مربع.\r\n▪ يمكن *للمقيمين فقط* استخدام هذا المكان.\r\n▪ *مدرسة خاصة* تقدم التعليم من *المرحلة الابتدائية إلى الجامعة*\r\n▪ كما ان المشروع مجهز *بمستشفى خاص*\r\n▪ *مرسى وشاطئ* وسواحل طولها 1.5 كم\r\n▪ *ومركز تسوق ونادى لركوب الخيل.*\r\n▪ 7/24 أمن و كاميرات مراقبة\r\n▪ مشفى, مدرسة انترناشيونال\r\n▪ فندق خمس نجوم, نادي للفروسية, اكادمية للتنس\r\n▪ مطاعم و مقاهي\r\n▪ مركز تسوق و ترفيه - مركز الألعاب\r\n▪ ملاعب ومسارات للجري والمشي و ركوب الدراجات\r\n▪ حدائق وملاعب خاصة للأطفال.\r\n▪ مواقف سيارات مغلقة ومفتوحة\r\n\r\n⭐ خدمة نقل خاصة داخل المشروع بين المرافق الاجتماعية وإلى المتروباص ووسائل النقل العام.\r\n خدمة النقل البحري يمكن الوصول إلى *Yenikapı و Eminönü و Beşiktaş* من المشروع.\r\n*من بين المشاريع ذات أعلى عائد محتمل في اسطنبول.*\r\nنشرت *مجلة فوربس* التركية العام الماضي في اسطنبول أعلى مشاريع العائد المحتملة في الخمسة الأولى في *تصنيف المارينا* في اسطنبول ، *بيليك دوزو*. ويجري بناء *شاطئ يعقوب* على 1.5 مليون متر مربع\r\nمن الأراضي *داخل المشروع.*', 'الخصم عند الدفع كاش يصل الى 8 %', 'YES'),
(414, 1, 'Asfor kartal', 'استمتع باطلالات جزر الاميرات والبحر والمترو', '1636454592.jpg', 'resident', 33, NULL, NULL, '2021-11-09 17:43:12', '2021-11-22 16:19:37', 'cash', 'https://drive.google.com/file/d/1g0veH-ecll8mFqbgqjAUwGD0WImM1vgI/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 1, 'بإطلالات على بحر مرمرة وجزر الأميرات وبالقرب من محطتين مترو \r\n📍الموقع:\r\n• یقع المشروع  في الطرف االسیوي في اسطنبول في منطقة كارتال الساحلیة.\r\n• یتمیز المشروع بقربه من طریق D100 المنتھي بنفق اوراسیا والواصل بالطریق السریع 5-E والطریق السریع E-80\r\n• بالإضافة لقربه من خطین میترو الأول ھو مرمراي والثاني میترو كادي كوي M4\r\n• وقربه من مجموعة من مراكز التسوق والمدارس والمشافي والجامعات.\r\n🔻خدمات المشروع : \r\n• مسبح مغلقة – صالة ریاضیة – ساونا- غرفة بخار –حمام تركي- بارك سيارات - ومنطقة لألعاب الأطفال .', 'خصم الكاش يصل إلى 15 % \r\nالمشروع جاهز للتسليم', 'YES'),
(415, 1, 'GÜNEŞ BAHÇE', 'مشروع حدائق غونيشلي', '1637056424.jpg', 'resident', 5, NULL, NULL, '2021-11-16 16:53:44', '2021-11-16 17:45:52', 'cash_install', 'https://drive.google.com/file/d/1E5mqJUzkNHSWKTPrDWr9GcxEMnhgdiqo/preview', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 4, 'مشروع حدائق غونيشلي \r\nشقق بالقرب من الباسن اكسبريس بأسعار منافسة \r\n📍موقع المشروع : \r\nيقع المشروع في اسطنبول الأوروبية في منطقة باغجلار Bağcılar\r\n700 متر عن شارع الباسن اكسبرس الاقتصادي\r\n4 كم عن طريق E5 و الميتروبوس\r\n3 كم عن طريق tem السريع\r\n10 كم عن مركز اسطنبول و منطقة الفاتح\r\n30 كم عن المطار الثالث\r\n🔻مزايا المشروع \r\nيتكون المشروع من 4 ابراج بارتفاع 12 طابق تضم 314\r\nوحدة سكنية بنماذج 1+1 و 2+1 و 3+1 اضافة الى 10 متاجر\r\n🔻خدمات المجمع :\r\nمسابح داخلية و ساونا و حمام تركي\r\n( منفصلة للرجال و النساء )\r\nصالة رياضية كاملة التجهيزات\r\nأماكن مخصصة للعب الاطفال\r\nحدائق و مسطحات مائية\r\nمسارات للمشي و الدراجة\r\nمواقف سيارات مغلقة للمقيمين و مفتوحة للزوار\r\nحراسة و مراقبة على مدار الساعة', 'حسم الكاش يصل الى 15% \r\nبامكانكم الشراء بالتقسيط', 'YES'),
(416, 1, 'test', 'امتلك شقق بمساحات واسعة واطلالات جميلة بأسعار', NULL, 'invest', 6, NULL, NULL, '2021-11-22 14:36:54', '2021-11-22 14:48:09', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 4, 'fasASFADS fasASFADS fasASFADS', 'fasASFADS', 'YES'),
(423, 1, 'dgs', 'gsdfgasd', '1637568267.jpg', 'hotel', 4, NULL, NULL, '2021-11-22 15:04:27', '2021-11-22 15:08:00', 'cash_install', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 3, 'sdggsdag', 'gsdasd', 'YES'),
(424, 1, 'self istanbul', 'مشروع سيلف اسطنبول', '1637653370.jpg', 'invest_resident', 3, NULL, NULL, '2021-11-23 14:42:50', '2021-11-23 14:43:48', 'cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 1, 'مشروع شقق سيلف \r\n\r\n📍 مزايا المشروع :\r\n\r\nيتبع المشروع لبلدية اسنيورت في القسم الجنوبي القريب من المتروبوس ومنطقة بيليك دوزو \r\n يبعد عن :\r\n\r\nالطريق السريع E5   خمس دقائق .\r\n\r\nمحطة المتروبوس 5 دقيقة .\r\n\r\nمول مرمرة بارك 10 دقيقة .\r\n\r\n \r\n🔻 مزايا المشروع \r\n\r\nيضم المشروع 4 أبراج سكنية بمجموع شقق يصل إلى 609 شقة سكنية بارتفاع 15 – 29 طابق .\r\n\r\nكما يحيط بالمشروع 60 محل تجاري حيث يستطيع سكان المشروع تأمين احتياجاتهم المختلفة\r\n\r\nكما تبلغ المساحات الخضراء 85% من مساحة المشروع .\r\n\r\nالخدمات الاجتماعية :\r\nمسبح خارجي مفتوح ومسبح داخلي مغلق ، ومسابح خاصة للأطفال ،\r\n ونادي رياضي وصحي مجهز بأحدث الآلات ، \r\nوأيضاً حمام ساونا وغرف بخار وحمام تركي ، \r\nالأماكن الخاصة بالجلوس والاسترخاء ، \r\nإلى جانب وجود حدائق مخصصة للعب الأطفال ،\r\nمع توافر مساحات خاصة للركض والمشي وركوب الدراجات ، مع توافرمساحات مخصصة\r\nللتخزين .\r\n\r\nومن أفضل الخدمات التي يقدمها مشروع سيلف اسطنبول مدرسة مخصصة لسكان المشروع\r\n\r\nفي مرحلة الروضة والإعدادية .\r\n\r\nالمشروع جاهز للتسليم', 'المشروع جاهز للتسليم \r\nالخصم في حال الدفع كاش يصل الى 15 %', 'YES'),
(425, 1, 'EBRULI', 'شقق بضمان الحكومة التركية في بهجة شهير مدينة الحدائق', '1637671018.jpg', 'resident', 8, NULL, NULL, '2021-11-23 19:36:58', '2021-11-23 19:36:58', 'cash_install', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ready', NULL, NULL, NULL, NULL, 2, 3, 'شقق بضمان حكومي في بهجة شهير مدينة الحدائق \r\n📍مزايا الموقع :\r\nيقع المشروع في منطقة إسبارطة كولة التي تعتبر مدخل منطقة بهجة شهير , ويتميز بقربه من الخط السريع E80 بمسافة 1 كم فقط، ووقوعه مباشرة على الطريق السريع (مرمرة الشمالي) الجديد الذي سيصل منطقة إسبارطة كولة بمنطقة باشاك شهير مباشرة، مما يتيح الوصول للمطار الثالث خلال 25 دقيقة.\r\nيبعد المشروع مسافة دقائق عن محطة مترو مستقبلية تصل منطقة بهجة شهير بمنطقة مجيدية كوي وبمختلف مناطق إسطنبول\r\n🔻مزايا المشروع : \r\nيتميز المشروع بإطلالة مباشرة على الوادي المزمع تجهيزه بوسائل الترفيه. \r\nيتميز المشروع بأنه بضمان الحكومة التركية، وذلك يعني أن الدولة شريك في المشروع وأنها مشرفة على سير المشروع ومطابقته للمواصفات القياسية.\r\nإحاطة المشروع بالعديد من مراكز التسوق التجارية والترفيهية والمدارس، إضافة لما يحتويه المجمع من مطاعم وخدمات ترفيهية تؤمن كافة احتياجات ساكني المجمع.\r\nتبلغ مساحة المشروع 41168 م2 , \r\nيتألف المشروع من مرحلتين، مكونتين من 9 أبراج مختلفة الارتفاعات، بعضها 4 طوابق وبعضها 28 طابقاً، تحوي 724 شقة.\r\n🔻الخدمات الاجتماعية : \r\n55 محلاً تجارياً متوزعاً على دورين تحت الأبنية.\r\nالمطاعم والمقاهي ومحلات تجارية أسفل المجمع.\r\nألعاب للأطفال.\r\nحمام سباحة مغلق وساونا.\r\nمدارس قريبة وملاعب للأطفال\r\nقواعد مقاومة للزلازل\r\nمركز لياقة بدنية.\r\nمواقف سيارات مغلقة وأخرى مفتوحة، لكن أماكن الترفيه والتنزه في ساحات المشروع لا مكان فيها لتجول السيارات حفظاً على سلامة الأطفال.\r\nحراسة أمنية وكاميرات مراقبة على مدار الساعة.', 'يبدأ خصم الكاش 15% \r\nمع امكانية التقسيط 50% مقدم والباقي على 12 شهر', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `project_google_map`
--

CREATE TABLE `project_google_map` (
  `id` int(11) NOT NULL,
  `lat` text,
  `lng` text,
  `project_id` int(11) DEFAULT NULL,
  `title` text,
  `description` text,
  `image` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project_imgs`
--

CREATE TABLE `project_imgs` (
  `id` bigint(20) NOT NULL,
  `lang_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `img` varchar(191) DEFAULT NULL,
  `order_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_imgs`
--

INSERT INTO `project_imgs` (`id`, `lang_id`, `project_id`, `img`, `order_number`, `created_at`, `updated_at`) VALUES
(257, 1, 349, '01631098365.mp4', 4, '2021-09-08 07:52:57', '2021-09-21 10:50:16'),
(265, 1, 333, '01631198827.jpg', 0, '2021-09-09 11:47:07', '2021-09-24 09:16:10'),
(266, 1, 334, '01631199083.jpeg', 0, '2021-09-09 11:51:23', '2021-09-24 10:06:46'),
(267, 1, 334, '11631199083.jpeg', 1, '2021-09-09 11:51:23', '2021-09-24 10:06:46'),
(268, 1, 334, '21631199083.jpeg', 2, '2021-09-09 11:51:23', '2021-09-24 10:06:46'),
(269, 1, 334, '31631199083.jpeg', 3, '2021-09-09 11:51:23', '2021-09-24 10:06:46'),
(270, 1, 334, '41631199083.jpg', 4, '2021-09-09 11:51:23', '2021-09-24 10:06:46'),
(271, 1, 334, '51631199083.jpg', 5, '2021-09-09 11:51:25', '2021-09-24 10:06:46'),
(272, 1, 334, '61631199085.jpg', 6, '2021-09-09 11:51:25', '2021-09-24 10:06:46'),
(273, 1, 334, '71631199085.jpg', 7, '2021-09-09 11:51:25', '2021-09-24 10:06:46'),
(274, 1, 335, '01631260511.jpg', 9, '2021-09-10 04:55:11', '2021-11-16 15:17:23'),
(275, 1, 335, '11631260511.jpeg', 17, '2021-09-10 04:55:13', '2021-11-16 15:17:23'),
(276, 1, 335, '21631260513.jpeg', 16, '2021-09-10 04:55:13', '2021-11-16 15:17:23'),
(277, 1, 335, '31631260513.jpeg', 15, '2021-09-10 04:55:13', '2021-11-16 15:17:23'),
(278, 1, 335, '41631260513.jpg', 14, '2021-09-10 04:55:23', '2021-11-16 15:17:23'),
(279, 1, 335, '51631260523.jpg', 13, '2021-09-10 04:55:23', '2021-11-16 15:17:23'),
(280, 1, 335, '61631260523.jpg', 12, '2021-09-10 04:55:25', '2021-11-16 15:17:23'),
(281, 1, 335, '71631260525.jpg', 11, '2021-09-10 04:55:27', '2021-11-16 15:17:23'),
(282, 1, 335, '81631260527.jpg', 10, '2021-09-10 04:55:29', '2021-11-16 15:17:23'),
(283, 1, 335, '01631260579.jpg', 0, '2021-09-10 04:56:21', '2021-11-16 15:17:23'),
(284, 1, 335, '11631260581.jpeg', 8, '2021-09-10 04:56:21', '2021-11-16 15:17:23'),
(285, 1, 335, '21631260581.jpeg', 7, '2021-09-10 04:56:21', '2021-11-16 15:17:23'),
(286, 1, 335, '31631260581.jpeg', 6, '2021-09-10 04:56:21', '2021-11-16 15:17:23'),
(287, 1, 335, '41631260581.jpg', 5, '2021-09-10 04:56:31', '2021-11-16 15:17:23'),
(288, 1, 335, '51631260591.jpg', 4, '2021-09-10 04:56:33', '2021-11-16 15:17:23'),
(289, 1, 335, '61631260593.jpg', 3, '2021-09-10 04:56:35', '2021-11-16 15:17:23'),
(290, 1, 335, '71631260595.jpg', 2, '2021-09-10 04:56:37', '2021-11-16 15:17:23'),
(291, 1, 335, '81631260597.jpg', 1, '2021-09-10 04:56:37', '2021-11-16 15:17:23'),
(292, 1, 336, '01631261461.jpeg', 0, '2021-09-10 05:11:01', '2021-09-24 09:12:45'),
(293, 1, 336, '11631261461.jpeg', 1, '2021-09-10 05:11:01', '2021-09-24 09:12:45'),
(294, 1, 336, '21631261461.jpeg', 2, '2021-09-10 05:11:01', '2021-09-24 09:12:45'),
(295, 1, 336, '31631261461.jpeg', 3, '2021-09-10 05:11:01', '2021-09-24 09:12:45'),
(296, 1, 336, '41631261461.jpeg', 4, '2021-09-10 05:11:01', '2021-09-24 09:12:45'),
(297, 1, 336, '51631261461.jpeg', 5, '2021-09-10 05:11:03', '2021-09-24 09:12:45'),
(298, 1, 336, '61631261463.jpeg', 6, '2021-09-10 05:11:03', '2021-09-24 09:12:45'),
(299, 1, 336, '71631261463.jpeg', 7, '2021-09-10 05:11:03', '2021-09-24 09:12:45'),
(300, 1, 336, '81631261463.jpeg', 8, '2021-09-10 05:11:03', '2021-09-24 09:12:45'),
(301, 1, 336, '91631261463.jpeg', 9, '2021-09-10 05:11:03', '2021-09-24 09:12:45'),
(302, 1, 336, '101631261463.jpeg', 10, '2021-09-10 05:11:03', '2021-09-24 09:12:45'),
(303, 1, 336, '111631261463.jpeg', 11, '2021-09-10 05:11:03', '2021-09-24 09:12:45'),
(304, 1, 336, '121631261463.jpeg', 12, '2021-09-10 05:11:03', '2021-09-24 09:12:45'),
(305, 1, 336, '131631261463.jpeg', 13, '2021-09-10 05:11:03', '2021-09-24 09:12:45'),
(306, 1, 336, '141631261463.jpeg', 14, '2021-09-10 05:11:03', '2021-09-24 09:12:45'),
(309, 1, 341, '01631281884.jpeg', 0, '2021-09-10 10:51:24', '2021-11-18 19:10:41'),
(310, 1, 341, '11631281884.jpeg', 1, '2021-09-10 10:51:24', '2021-11-18 19:10:41'),
(311, 1, 341, '21631281884.jpg', 2, '2021-09-10 10:51:24', '2021-11-18 19:10:41'),
(312, 1, 338, '01631283572.jpg', 0, '2021-09-10 11:19:42', '2021-11-23 14:17:11'),
(313, 1, 318, '01631284076.jpeg', 0, '2021-09-10 11:27:56', '2021-09-24 09:21:50'),
(314, 1, 343, '01631284691.jpeg', 0, '2021-09-10 11:38:11', '2021-09-28 11:08:45'),
(316, 1, 344, '11631285434.jpg', 16, '2021-09-10 11:50:34', '2021-11-22 17:02:22'),
(317, 1, 344, '21631285434.jpg', 15, '2021-09-10 11:50:34', '2021-11-22 17:02:22'),
(318, 1, 344, '31631285434.jpg', 14, '2021-09-10 11:50:37', '2021-11-22 17:02:22'),
(319, 1, 344, '41631285437.jpg', 13, '2021-09-10 11:50:37', '2021-11-22 17:02:22'),
(320, 1, 344, '51631285437.jpg', 12, '2021-09-10 11:50:37', '2021-11-22 17:02:22'),
(321, 1, 344, '61631285437.jpg', 11, '2021-09-10 11:50:37', '2021-11-22 17:02:22'),
(322, 1, 344, '71631285437.jpg', 10, '2021-09-10 11:50:37', '2021-11-22 17:02:22'),
(323, 1, 344, '81631285437.jpg', 9, '2021-09-10 11:50:41', '2021-11-22 17:02:22'),
(325, 1, 344, '101631285441.jpg', 8, '2021-09-10 11:50:41', '2021-11-22 17:02:22'),
(326, 1, 344, '111631285441.jpg', 7, '2021-09-10 11:50:41', '2021-11-22 17:02:22'),
(327, 1, 344, '121631285441.jpg', 6, '2021-09-10 11:50:41', '2021-11-22 17:02:22'),
(328, 1, 344, '131631285441.jpg', 5, '2021-09-10 11:50:41', '2021-11-22 17:02:22'),
(329, 1, 344, '141631285441.jpg', 4, '2021-09-10 11:50:43', '2021-11-22 17:02:22'),
(330, 1, 344, '151631285443.jpg', 3, '2021-09-10 11:50:43', '2021-11-22 17:02:22'),
(331, 1, 344, '161631285443.jpg', 2, '2021-09-10 11:50:43', '2021-11-22 17:02:22'),
(332, 1, 344, '171631285443.jpg', 1, '2021-09-10 11:50:43', '2021-11-22 17:02:22'),
(334, 1, 348, '01631287326.jpeg', 0, '2021-09-10 12:22:06', '2021-09-24 08:54:54'),
(335, 1, 346, '01631287588.jpg', 0, '2021-09-10 12:26:28', '2021-11-19 15:22:25'),
(336, 1, 346, '11631287588.jpeg', 1, '2021-09-10 12:26:28', '2021-11-19 15:22:25'),
(337, 1, 331, '01631351832.jpeg', 0, '2021-09-11 06:17:12', '2021-09-24 09:20:50'),
(338, 1, 325, '01631352382.jpg', 0, '2021-09-11 06:26:22', '2021-11-09 15:59:48'),
(339, 1, 325, '11631352382.jpg', 1, '2021-09-11 06:26:22', '2021-11-09 15:59:48'),
(340, 1, 324, '01631352767.jpg', 0, '2021-09-11 06:32:47', '2021-11-22 15:50:35'),
(341, 1, 323, '01631353160.jpg', 0, '2021-09-11 06:39:20', '2021-11-19 19:15:06'),
(342, 1, 323, '11631353160.jpg', 1, '2021-09-11 06:39:22', '2021-11-19 19:15:06'),
(343, 1, 323, '21631353162.jpg', 2, '2021-09-11 06:39:22', '2021-11-19 19:15:06'),
(344, 1, 323, '31631353162.jpeg', 3, '2021-09-11 06:39:22', '2021-11-19 19:15:06'),
(345, 1, 323, '41631353162.jpeg', 4, '2021-09-11 06:39:22', '2021-11-19 19:15:06'),
(346, 1, 323, '51631353162.mp4', 5, '2021-09-11 06:39:28', '2021-11-19 19:15:06'),
(347, 1, 322, '01631356587.jpeg', 0, '2021-09-11 07:36:27', '2021-09-25 04:46:02'),
(348, 1, 322, '11631356587.jpeg', 1, '2021-09-11 07:36:27', '2021-09-25 04:46:02'),
(349, 1, 322, '21631356587.jpeg', 2, '2021-09-11 07:36:27', '2021-09-25 04:46:02'),
(350, 1, 322, '31631356587.jpeg', 3, '2021-09-11 07:36:27', '2021-09-25 04:46:02'),
(351, 1, 320, '01631356921.jpg', 0, '2021-09-11 07:42:15', '2021-09-24 09:01:24'),
(352, 1, 320, '11631356935.jpg', 1, '2021-09-11 07:42:25', '2021-09-24 09:01:24'),
(353, 1, 320, '21631356945.jpeg', 2, '2021-09-11 07:42:27', '2021-09-24 09:01:24'),
(354, 1, 320, '31631356947.jpeg', 3, '2021-09-11 07:42:27', '2021-09-24 09:01:24'),
(360, 1, 315, '01631358278.jpg', 0, '2021-09-11 08:04:38', '2021-09-24 09:07:33'),
(361, 1, 315, '11631358278.jpg', 1, '2021-09-11 08:04:40', '2021-09-24 09:07:33'),
(362, 1, 310, '01631359110.jpg', 0, '2021-09-11 08:18:32', '2021-09-24 09:31:29'),
(363, 1, 310, '11631359112.jpg', 1, '2021-09-11 08:18:32', '2021-09-24 09:31:29'),
(364, 1, 310, '21631359112.jpg', 2, '2021-09-11 08:18:32', '2021-09-24 09:31:29'),
(365, 1, 310, '31631359112.jpg', 3, '2021-09-11 08:18:32', '2021-09-24 09:31:29'),
(366, 1, 310, '41631359112.jpg', 4, '2021-09-11 08:18:32', '2021-09-24 09:31:29'),
(367, 1, 310, '51631359112.jpg', 5, '2021-09-11 08:18:32', '2021-09-24 09:31:29'),
(368, 1, 310, '61631359112.jpg', 6, '2021-09-11 08:18:32', '2021-09-24 09:31:29'),
(369, 1, 310, '71631359112.jpg', 7, '2021-09-11 08:18:34', '2021-09-24 09:31:29'),
(370, 1, 310, '81631359114.jpg', 8, '2021-09-11 08:18:34', '2021-09-24 09:31:29'),
(371, 1, 310, '91631359114.jpg', 9, '2021-09-11 08:18:34', '2021-09-24 09:31:29'),
(372, 1, 310, '101631359114.jpg', 10, '2021-09-11 08:18:34', '2021-09-24 09:31:29'),
(402, 1, 339, '01631537131.jpeg', 0, '2021-09-13 09:45:31', '2021-09-24 09:32:37'),
(403, 1, 359, '01631607979.jpg', 0, '2021-09-14 05:26:24', '2021-09-24 09:13:03'),
(404, 1, 359, '11631607984.jpg', 1, '2021-09-14 05:26:29', '2021-09-24 09:13:03'),
(405, 1, 359, '21631607989.jpg', 2, '2021-09-14 05:26:34', '2021-09-24 09:13:03'),
(406, 1, 359, '31631607994.jpg', 3, '2021-09-14 05:26:39', '2021-09-24 09:13:03'),
(407, 1, 359, '41631607999.jpg', 4, '2021-09-14 05:26:44', '2021-09-24 09:13:03'),
(408, 1, 359, '51631608004.jpg', 5, '2021-09-14 05:26:50', '2021-09-24 09:13:03'),
(409, 1, 361, '01631620057.jpeg', 2, '2021-09-14 08:47:38', '2021-09-24 09:06:43'),
(410, 1, 361, '11631620058.jpeg', 3, '2021-09-14 08:47:38', '2021-09-24 09:06:43'),
(416, 1, 361, '01631622801.jpg', 0, '2021-09-14 09:33:21', '2021-09-24 09:06:43'),
(420, 1, 364, '11631628195.jpeg', 1, '2021-09-14 11:03:15', '2021-09-24 09:34:10'),
(421, 1, 364, '21631628195.jpeg', 2, '2021-09-14 11:03:15', '2021-09-24 09:34:10'),
(422, 1, 364, '31631628195.jpeg', 5, '2021-09-14 11:03:15', '2021-09-24 09:34:10'),
(423, 1, 364, '41631628195.jpeg', 6, '2021-09-14 11:03:15', '2021-09-24 09:34:10'),
(424, 1, 364, '51631628195.jpg', 3, '2021-09-14 11:03:15', '2021-09-24 09:34:10'),
(425, 1, 364, '61631628195.jpg', 7, '2021-09-14 11:03:15', '2021-09-24 09:34:10'),
(426, 1, 364, '71631628195.jpg', 8, '2021-09-14 11:03:16', '2021-09-24 09:34:10'),
(427, 1, 306, '01631693781.jpeg', 0, '2021-09-15 05:16:21', '2021-09-24 09:21:10'),
(428, 1, 306, '11631693781.jpeg', 1, '2021-09-15 05:16:21', '2021-09-24 09:21:10'),
(429, 1, 306, '21631693781.jpeg', 2, '2021-09-15 05:16:21', '2021-09-24 09:21:10'),
(430, 1, 306, '31631693781.jpeg', 3, '2021-09-15 05:16:21', '2021-09-24 09:21:10'),
(431, 1, 342, '01631695418.jpg', 2, '2021-09-15 05:43:38', '2021-10-02 08:10:43'),
(432, 1, 342, '11631695418.png', 1, '2021-09-15 05:43:40', '2021-10-02 08:10:43'),
(433, 1, 342, '01631695586.JPG', 0, '2021-09-15 05:46:28', '2021-10-02 08:10:43'),
(434, 1, 342, '11631695588.JPG', 1, '2021-09-15 05:46:30', '2021-10-02 08:10:43'),
(435, 1, 342, '21631695590.JPG', 2, '2021-09-15 05:46:32', '2021-10-02 08:10:43'),
(436, 1, 342, '31631695592.JPG', 3, '2021-09-15 05:46:36', '2021-10-02 08:10:43'),
(437, 1, 342, '41631695596.JPG', 4, '2021-09-15 05:46:38', '2021-10-02 08:10:43'),
(438, 1, 342, '51631695598.JPG', 5, '2021-09-15 05:46:41', '2021-10-02 08:10:43'),
(445, 1, 365, '61631696706.jpg', 10, '2021-09-15 06:05:06', '2021-11-08 16:42:09'),
(446, 1, 365, '71631696706.jpg', 9, '2021-09-15 06:05:06', '2021-11-08 16:42:09'),
(447, 1, 349, '01631703090.jpg', 0, '2021-09-15 07:51:32', '2021-09-21 10:50:16'),
(448, 1, 349, '11631703092.jpeg', 1, '2021-09-15 07:51:32', '2021-09-21 10:50:16'),
(449, 1, 349, '21631703092.jpeg', 2, '2021-09-15 07:51:32', '2021-09-21 10:50:16'),
(450, 1, 347, '01631703868.jpg', 0, '2021-09-15 08:04:28', '2021-09-24 09:22:25'),
(451, 1, 347, '11631703868.jpg', 1, '2021-09-15 08:04:28', '2021-09-24 09:22:25'),
(452, 1, 347, '21631703868.jpg', 2, '2021-09-15 08:04:28', '2021-09-24 09:22:25'),
(453, 1, 366, '01631711241.jpg', 0, '2021-09-15 10:07:21', '2021-10-05 10:59:18'),
(454, 1, 366, '11631711241.jpg', 1, '2021-09-15 10:07:24', '2021-10-05 10:59:18'),
(455, 1, 366, '21631711244.jpg', 2, '2021-09-15 10:07:26', '2021-10-05 10:59:18'),
(456, 1, 366, '31631711246.jpg', 3, '2021-09-15 10:07:27', '2021-10-05 10:59:18'),
(457, 1, 366, '41631711247.jpg', 4, '2021-09-15 10:07:28', '2021-10-05 10:59:18'),
(458, 1, 366, '51631711248.jpg', 5, '2021-09-15 10:07:30', '2021-10-05 10:59:18'),
(459, 1, 366, '61631711250.jpg', 6, '2021-09-15 10:07:31', '2021-10-05 10:59:18'),
(460, 1, 366, '71631711251.jpeg', 7, '2021-09-15 10:07:32', '2021-10-05 10:59:18'),
(461, 1, 366, '81631711252.jpeg', 8, '2021-09-15 10:07:32', '2021-10-05 10:59:18'),
(462, 1, 366, '91631711252.jpeg', 9, '2021-09-15 10:07:33', '2021-10-05 10:59:18'),
(463, 1, 366, '101631711253.jpeg', 10, '2021-09-15 10:07:33', '2021-10-05 10:59:18'),
(464, 1, 367, '01631713130.jpg', 0, '2021-09-15 10:38:50', '2021-09-29 06:52:41'),
(465, 1, 367, '11631713130.jpg', 1, '2021-09-15 10:38:51', '2021-09-29 06:52:41'),
(466, 1, 367, '21631713131.jpeg', 2, '2021-09-15 10:38:51', '2021-09-29 06:52:41'),
(467, 1, 368, '01631715652.jpg', 0, '2021-09-15 11:20:54', '2021-09-24 09:21:00'),
(468, 1, 368, '11631715654.jpg', 1, '2021-09-15 11:20:56', '2021-09-24 09:21:00'),
(469, 1, 369, '01631716501.jpeg', 2, '2021-09-15 11:35:01', '2021-11-04 15:08:52'),
(470, 1, 369, '11631716501.jpeg', 4, '2021-09-15 11:35:01', '2021-11-04 15:08:52'),
(471, 1, 369, '01631717712.jpeg', 0, '2021-09-15 11:55:13', '2021-11-04 15:08:52'),
(472, 1, 369, '11631717713.jpeg', 1, '2021-09-15 11:55:13', '2021-11-04 15:08:52'),
(474, 1, 371, '11631782081.jpg', 1, '2021-09-16 05:48:02', '2021-09-24 09:32:49'),
(475, 1, 371, '21631782082.jpg', 2, '2021-09-16 05:48:02', '2021-09-24 09:32:49'),
(485, 1, 373, '01631789120.jpg', 0, '2021-09-16 07:45:20', '2021-11-16 15:14:31'),
(486, 1, 373, '11631789120.jpg', 1, '2021-09-16 07:45:23', '2021-11-16 15:14:31'),
(487, 1, 373, '21631789123.jpg', 2, '2021-09-16 07:45:26', '2021-11-16 15:14:31'),
(488, 1, 373, '31631789126.jpg', 3, '2021-09-16 07:45:27', '2021-11-16 15:14:31'),
(489, 1, 373, '41631789127.jpg', 4, '2021-09-16 07:45:29', '2021-11-16 15:14:31'),
(490, 1, 373, '51631789129.jpg', 5, '2021-09-16 07:45:30', '2021-11-16 15:14:31'),
(491, 1, 373, '61631789130.jpg', 6, '2021-09-16 07:45:32', '2021-11-16 15:14:31'),
(492, 1, 373, '71631789132.jpg', 7, '2021-09-16 07:45:33', '2021-11-16 15:14:31'),
(493, 1, 373, '81631789133.jpg', 8, '2021-09-16 07:45:34', '2021-11-16 15:14:31'),
(494, 1, 373, '91631789134.jpg', 9, '2021-09-16 07:45:35', '2021-11-16 15:14:31'),
(502, 1, 377, '01631871829.jpg', 0, '2021-09-17 06:43:51', '2021-11-19 19:53:43'),
(513, 1, 379, '01631885760.jpg', 0, '2021-09-17 10:36:00', '2021-10-11 11:20:24'),
(514, 1, 379, '11631885760.jpg', 1, '2021-09-17 10:36:00', '2021-10-11 11:20:24'),
(515, 1, 379, '21631885760.jpg', 2, '2021-09-17 10:36:00', '2021-10-11 11:20:24'),
(516, 1, 379, '31631885760.jpg', 3, '2021-09-17 10:36:00', '2021-10-11 11:20:24'),
(517, 1, 314, '01632124253.jpg', 0, '2021-09-20 04:50:54', '2021-09-24 09:19:27'),
(518, 1, 381, '01632137281.jpg', 0, '2021-09-20 08:28:01', '2021-10-28 14:56:07'),
(519, 1, 381, '11632137281.jpg', 1, '2021-09-20 08:28:03', '2021-10-28 14:56:07'),
(520, 1, 381, '21632137283.jpg', 2, '2021-09-20 08:28:03', '2021-10-28 14:56:07'),
(521, 1, 381, '31632137283.jpg', 3, '2021-09-20 08:28:03', '2021-10-28 14:56:07'),
(522, 1, 381, '41632137283.jpg', 4, '2021-09-20 08:28:03', '2021-10-28 14:56:07'),
(523, 1, 385, '01632141898.jpeg', 0, '2021-09-20 09:44:58', '2021-11-12 18:35:01'),
(524, 1, 385, '11632141898.jpeg', 1, '2021-09-20 09:44:58', '2021-11-12 18:35:01'),
(525, 1, 380, '01632146301.jpeg', 0, '2021-09-20 10:58:21', '2021-09-24 08:05:21'),
(526, 1, 380, '11632146301.jpeg', 1, '2021-09-20 10:58:21', '2021-09-24 08:05:21'),
(527, 1, 380, '21632146301.jpeg', 2, '2021-09-20 10:58:21', '2021-09-24 08:05:21'),
(528, 1, 380, '31632146301.jpeg', 3, '2021-09-20 10:58:21', '2021-09-24 08:05:21'),
(529, 1, 380, '41632146301.jpeg', 4, '2021-09-20 10:58:21', '2021-09-24 08:05:21'),
(530, 1, 380, '51632146301.jpeg', 5, '2021-09-20 10:58:23', '2021-09-24 08:05:21'),
(531, 1, 380, '61632146303.jpeg', 6, '2021-09-20 10:58:23', '2021-09-24 08:05:21'),
(555, 1, 144, '01632212725.jpg', 0, '2021-09-21 05:25:25', '2021-11-22 21:32:02'),
(556, 1, 144, '11632212725.jpg', 1, '2021-09-21 05:25:25', '2021-11-22 21:32:02'),
(557, 1, 144, '21632212725.jpg', 2, '2021-09-21 05:25:26', '2021-11-22 21:32:02'),
(558, 1, 144, '31632212726.jpg', 3, '2021-09-21 05:25:26', '2021-11-22 21:32:02'),
(559, 1, 144, '41632212726.jpg', 4, '2021-09-21 05:25:26', '2021-11-22 21:32:02'),
(560, 1, 144, '51632212726.jpg', 5, '2021-09-21 05:25:26', '2021-11-22 21:32:02'),
(561, 1, 144, '61632212726.jpg', 6, '2021-09-21 05:25:26', '2021-11-22 21:32:02'),
(562, 1, 144, '71632212726.jpg', 7, '2021-09-21 05:25:27', '2021-11-22 21:32:02'),
(563, 1, 144, '81632212727.jpg', 8, '2021-09-21 05:25:27', '2021-11-22 21:32:02'),
(564, 1, 63, '01632216999.jpg', 0, '2021-09-21 06:36:39', '2021-11-23 14:16:04'),
(565, 1, 63, '11632216999.jpg', 1, '2021-09-21 06:36:41', '2021-11-23 14:16:04'),
(566, 1, 63, '21632217001.jpg', 2, '2021-09-21 06:36:48', '2021-11-23 14:16:04'),
(567, 1, 63, '31632217008.jpeg', 3, '2021-09-21 06:36:49', '2021-11-23 14:16:04'),
(568, 1, 225, '01632221075.jpeg', 0, '2021-09-21 07:44:35', '2021-09-21 07:50:54'),
(569, 1, 225, '11632221075.jpeg', 1, '2021-09-21 07:44:38', '2021-09-21 07:50:54'),
(570, 1, 225, '21632221078.jpeg', 2, '2021-09-21 07:44:38', '2021-09-21 07:50:54'),
(571, 1, 225, '31632221078.jpeg', 3, '2021-09-21 07:44:38', '2021-09-21 07:50:54'),
(572, 1, 225, '41632221078.jpeg', 4, '2021-09-21 07:44:38', '2021-09-21 07:50:54'),
(573, 1, 307, '01632222183.jpg', 0, '2021-09-21 08:03:03', '2021-10-11 10:03:10'),
(574, 1, 307, '11632222183.jpg', 1, '2021-09-21 08:03:04', '2021-10-11 10:03:10'),
(575, 1, 307, '21632222184.jpg', 2, '2021-09-21 08:03:04', '2021-10-11 10:03:10'),
(576, 1, 304, '01632229720.jpg', 0, '2021-09-21 10:08:40', '2021-10-01 12:28:35'),
(577, 1, 304, '11632229720.jpg', 1, '2021-09-21 10:08:40', '2021-10-01 12:28:35'),
(578, 1, 304, '21632229720.jpeg', 2, '2021-09-21 10:08:42', '2021-10-01 12:28:35'),
(579, 1, 207, '01632231626.jpg', 0, '2021-09-21 10:40:29', '2021-10-28 19:01:13'),
(580, 1, 207, '11632231629.jpg', 1, '2021-09-21 10:40:29', '2021-10-28 19:01:13'),
(581, 1, 207, '21632231629.jpg', 2, '2021-09-21 10:40:29', '2021-10-28 19:01:13'),
(582, 1, 337, '01632234950.jpg', 0, '2021-09-21 11:35:50', '2021-09-24 09:32:16'),
(583, 1, 337, '11632234950.jpg', 1, '2021-09-21 11:35:52', '2021-09-24 09:32:16'),
(584, 1, 117, '01632238597.jpg', 0, '2021-09-21 12:36:37', '2021-11-08 16:44:50'),
(585, 1, 387, '01632390229.JPG', 0, '2021-09-23 06:43:52', '2021-10-30 14:45:11'),
(586, 1, 387, '11632390232.jpg', 1, '2021-09-23 06:43:52', '2021-10-30 14:45:11'),
(587, 1, 387, '21632390232.jpg', 2, '2021-09-23 06:43:52', '2021-10-30 14:45:11'),
(588, 1, 388, '01632395845.jpg', 0, '2021-09-23 08:17:25', '2021-09-24 08:06:49'),
(589, 1, 388, '11632395845.jpg', 1, '2021-09-23 08:17:25', '2021-09-24 08:06:49'),
(590, 1, 388, '21632395845.jpg', 2, '2021-09-23 08:17:28', '2021-09-24 08:06:49'),
(591, 1, 388, '31632395848.jpg', 3, '2021-09-23 08:17:28', '2021-09-24 08:06:49'),
(592, 1, 389, '01632407942.jpeg', 10, '2021-09-23 11:39:03', '2021-09-24 09:14:44'),
(593, 1, 389, '11632407943.jpeg', 19, '2021-09-23 11:39:03', '2021-09-24 09:14:44'),
(594, 1, 389, '21632407943.jpeg', 18, '2021-09-23 11:39:03', '2021-09-24 09:14:44'),
(595, 1, 389, '31632407943.jpeg', 17, '2021-09-23 11:39:03', '2021-09-24 09:14:44'),
(596, 1, 389, '41632407943.jpeg', 16, '2021-09-23 11:39:08', '2021-09-24 09:14:44'),
(597, 1, 389, '51632407948.jpeg', 15, '2021-09-23 11:39:08', '2021-09-24 09:14:44'),
(598, 1, 389, '61632407948.jpeg', 14, '2021-09-23 11:39:08', '2021-09-24 09:14:44'),
(599, 1, 389, '71632407948.jpeg', 13, '2021-09-23 11:39:08', '2021-09-24 09:14:44'),
(600, 1, 389, '81632407948.jpeg', 12, '2021-09-23 11:39:09', '2021-09-24 09:14:44'),
(601, 1, 389, '91632407949.jpeg', 11, '2021-09-23 11:39:09', '2021-09-24 09:14:44'),
(602, 1, 389, '101632407949.jpeg', 0, '2021-09-23 11:39:09', '2021-09-24 09:14:44'),
(603, 1, 389, '111632407949.jpeg', 9, '2021-09-23 11:39:09', '2021-09-24 09:14:44'),
(604, 1, 389, '121632407949.jpeg', 8, '2021-09-23 11:39:10', '2021-09-24 09:14:44'),
(605, 1, 389, '131632407950.jpeg', 7, '2021-09-23 11:39:10', '2021-09-24 09:14:44'),
(606, 1, 389, '141632407950.jpeg', 6, '2021-09-23 11:39:10', '2021-09-24 09:14:44'),
(607, 1, 389, '151632407950.jpeg', 5, '2021-09-23 11:39:10', '2021-09-24 09:14:44'),
(608, 1, 389, '161632407950.jpeg', 4, '2021-09-23 11:39:10', '2021-09-24 09:14:44'),
(609, 1, 389, '171632407950.jpeg', 3, '2021-09-23 11:39:11', '2021-09-24 09:14:44'),
(610, 1, 389, '181632407951.jpeg', 2, '2021-09-23 11:39:11', '2021-09-24 09:14:44'),
(611, 1, 389, '191632407951.jpeg', 1, '2021-09-23 11:39:11', '2021-09-24 09:14:44'),
(612, 1, 390, '01632408901.jpeg', 0, '2021-09-23 11:55:01', '2021-09-24 09:25:29'),
(613, 1, 390, '11632408901.jpeg', 1, '2021-09-23 11:55:02', '2021-09-24 09:25:29'),
(614, 1, 390, '21632408902.jpeg', 2, '2021-09-23 11:55:02', '2021-09-24 09:25:29'),
(615, 1, 390, '31632408902.jpeg', 3, '2021-09-23 11:55:02', '2021-09-24 09:25:29'),
(616, 1, 391, '01632410100.jpg', 6, '2021-09-23 12:15:00', '2021-09-24 09:12:27'),
(617, 1, 391, '01632410195.jpeg', 0, '2021-09-23 12:16:35', '2021-09-24 09:12:27'),
(618, 1, 391, '11632410195.jpeg', 1, '2021-09-23 12:16:37', '2021-09-24 09:12:27'),
(619, 1, 391, '21632410197.jpeg', 2, '2021-09-23 12:16:37', '2021-09-24 09:12:27'),
(620, 1, 391, '31632410197.jpeg', 3, '2021-09-23 12:16:37', '2021-09-24 09:12:27'),
(621, 1, 391, '41632410197.jpeg', 4, '2021-09-23 12:16:37', '2021-09-24 09:12:27'),
(622, 1, 392, '01632473618.jpg', 0, '2021-09-24 05:53:38', '2021-11-22 18:44:14'),
(623, 1, 392, '11632473618.jpg', 1, '2021-09-24 05:53:40', '2021-11-22 18:44:14'),
(624, 1, 392, '21632473620.jpg', 2, '2021-09-24 05:53:40', '2021-11-22 18:44:14'),
(625, 1, 393, '01632476676.jpg', 0, '2021-09-24 06:44:39', '2021-11-06 16:33:41'),
(626, 1, 393, '11632476679.jpg', 1, '2021-09-24 06:44:39', '2021-11-06 16:33:41'),
(627, 1, 393, '21632476679.jpg', 2, '2021-09-24 06:44:39', '2021-11-06 16:33:41'),
(628, 1, 393, '31632476679.jpg', 3, '2021-09-24 06:44:40', '2021-11-06 16:33:41'),
(629, 1, 394, '01632826528.jpg', 0, '2021-09-28 07:55:28', '2021-11-17 15:00:10'),
(630, 1, 394, '11632826528.jpg', 1, '2021-09-28 07:55:28', '2021-11-17 15:00:10'),
(631, 1, 394, '21632826528.jpg', 2, '2021-09-28 07:55:28', '2021-11-17 15:00:10'),
(632, 1, 394, '31632826528.jpg', 3, '2021-09-28 07:55:29', '2021-11-17 15:00:10'),
(633, 1, 394, '41632826529.jpg', 4, '2021-09-28 07:55:29', '2021-11-17 15:00:10'),
(634, 1, 394, '51632826529.jpeg', 5, '2021-09-28 07:55:30', '2021-11-17 15:00:10'),
(635, 1, 394, '61632826530.jpeg', 6, '2021-09-28 07:55:30', '2021-11-17 15:00:10'),
(636, 1, 394, '71632826530.jpeg', 7, '2021-09-28 07:55:31', '2021-11-17 15:00:10'),
(637, 1, 395, '01632838999.jpeg', 6, '2021-09-28 11:23:19', '2021-11-19 18:29:35'),
(638, 1, 395, '11632838999.jpeg', 2, '2021-09-28 11:23:19', '2021-11-19 18:29:35'),
(639, 1, 395, '01632839147.jpg', 0, '2021-09-28 11:25:47', '2021-11-19 18:29:35'),
(640, 1, 395, '11632839147.jpg', 1, '2021-09-28 11:25:49', '2021-11-19 18:29:35'),
(641, 1, 395, '21632839149.jpg', 2, '2021-09-28 11:25:49', '2021-11-19 18:29:35'),
(642, 1, 395, '31632839149.jpg', 3, '2021-09-28 11:25:49', '2021-11-19 18:29:35'),
(643, 1, 396, '01632842729.jpeg', 0, '2021-09-28 12:25:29', '2021-09-28 12:42:15'),
(644, 1, 396, '11632842729.jpg', 1, '2021-09-28 12:25:30', '2021-09-28 12:42:15'),
(645, 1, 396, '21632842730.jpg', 2, '2021-09-28 12:25:30', '2021-09-28 12:42:15'),
(646, 1, 396, '31632842730.jpg', 3, '2021-09-28 12:25:30', '2021-09-28 12:42:15'),
(647, 1, 396, '41632842730.jpg', 4, '2021-09-28 12:25:30', '2021-09-28 12:42:15'),
(648, 1, 397, '01632919912.jpg', 0, '2021-09-29 09:51:52', '2021-11-19 19:47:18'),
(649, 1, 397, '11632919912.jpg', 1, '2021-09-29 09:51:54', '2021-11-19 19:47:18'),
(650, 1, 397, '21632919914.jpg', 2, '2021-09-29 09:51:54', '2021-11-19 19:47:18'),
(651, 1, 397, '31632919914.jpg', 3, '2021-09-29 09:51:54', '2021-11-19 19:47:18'),
(652, 1, 397, '41632919914.jpg', 4, '2021-09-29 09:51:54', '2021-11-19 19:47:18'),
(653, 1, 397, '51632919914.jpg', 5, '2021-09-29 09:51:54', '2021-11-19 19:47:18'),
(654, 1, 397, '61632919914.jpg', 6, '2021-09-29 09:51:54', '2021-11-19 19:47:18'),
(655, 1, 398, '01632925827.jpg', 0, '2021-09-29 11:30:27', '2021-10-27 17:55:20'),
(656, 1, 398, '11632925827.jpg', 1, '2021-09-29 11:30:27', '2021-10-27 17:55:20'),
(657, 1, 399, '01632990278.jpg', NULL, '2021-09-30 05:24:38', '2021-09-30 05:24:38'),
(658, 1, 399, '11632990278.jpeg', NULL, '2021-09-30 05:24:38', '2021-09-30 05:24:38'),
(659, 1, 399, '21632990278.jpeg', NULL, '2021-09-30 05:24:38', '2021-09-30 05:24:38'),
(660, 1, 399, '31632990278.jpeg', NULL, '2021-09-30 05:24:38', '2021-09-30 05:24:38'),
(661, 1, 399, '41632990278.jpeg', NULL, '2021-09-30 05:24:38', '2021-09-30 05:24:38'),
(662, 1, 399, '51632990278.jpeg', NULL, '2021-09-30 05:24:38', '2021-09-30 05:24:38'),
(663, 1, 399, '61632990278.jpeg', NULL, '2021-09-30 05:24:38', '2021-09-30 05:24:38'),
(664, 1, 399, '71632990278.jpeg', NULL, '2021-09-30 05:24:39', '2021-09-30 05:24:39'),
(665, 1, 399, '81632990279.jpeg', NULL, '2021-09-30 05:24:39', '2021-09-30 05:24:39'),
(666, 1, 152, '01632995617.jpg', 0, '2021-09-30 06:53:37', '2021-11-25 14:11:59'),
(667, 1, 152, '11632995617.jpg', 1, '2021-09-30 06:53:37', '2021-11-25 14:11:59'),
(668, 1, 152, '21632995617.jpg', 2, '2021-09-30 06:53:37', '2021-11-25 14:11:59'),
(669, 1, 152, '31632995617.jpg', 3, '2021-09-30 06:53:37', '2021-11-25 14:11:59'),
(670, 1, 53, '01633014480.jpeg', 0, '2021-09-30 12:08:00', '2021-10-27 17:54:18'),
(671, 1, 53, '11633014480.jpeg', 1, '2021-09-30 12:08:00', '2021-10-27 17:54:18'),
(672, 1, 53, '21633014480.jpeg', 2, '2021-09-30 12:08:00', '2021-10-27 17:54:18'),
(673, 1, 53, '31633014480.jpeg', 3, '2021-09-30 12:08:00', '2021-10-27 17:54:18'),
(674, 1, 400, '01633163671.jpg', 0, '2021-10-02 05:34:34', '2021-11-16 15:08:31'),
(675, 1, 400, '11633163674.jpg', 1, '2021-10-02 05:34:34', '2021-11-16 15:08:31'),
(676, 1, 400, '21633163674.jpg', 2, '2021-10-02 05:34:34', '2021-11-16 15:08:31'),
(677, 1, 400, '31633163674.png', 3, '2021-10-02 05:34:35', '2021-11-16 15:08:31'),
(678, 1, 401, '01633167909.jpg', 0, '2021-10-02 06:45:09', '2021-10-08 09:48:12'),
(679, 1, 401, '11633167909.jpg', 1, '2021-10-02 06:45:09', '2021-10-08 09:48:12'),
(680, 1, 401, '21633167909.jpeg', 2, '2021-10-02 06:45:09', '2021-10-08 09:48:12'),
(681, 1, 401, '31633167909.jpg', 3, '2021-10-02 06:45:09', '2021-10-08 09:48:12'),
(682, 1, 401, '41633167909.jpg', 4, '2021-10-02 06:45:10', '2021-10-08 09:48:12'),
(683, 1, 402, '01633173285.jpeg', 0, '2021-10-02 08:14:45', '2021-10-02 08:36:04'),
(684, 1, 402, '11633173285.jpeg', 1, '2021-10-02 08:14:45', '2021-10-02 08:36:05'),
(685, 1, 402, '21633173285.jpeg', 2, '2021-10-02 08:14:47', '2021-10-02 08:36:05'),
(686, 1, 402, '31633173287.jpeg', 3, '2021-10-02 08:14:47', '2021-10-02 08:36:05'),
(687, 1, 403, '01633431095.jpg', NULL, '2021-10-05 07:51:36', '2021-10-05 07:51:36'),
(688, 1, 403, '11633431096.jpg', NULL, '2021-10-05 07:51:36', '2021-10-05 07:51:36'),
(689, 1, 403, '21633431096.jpg', NULL, '2021-10-05 07:51:36', '2021-10-05 07:51:36'),
(690, 1, 403, '31633431096.jpg', NULL, '2021-10-05 07:51:37', '2021-10-05 07:51:37'),
(691, 1, 403, '41633431097.jpg', NULL, '2021-10-05 07:51:37', '2021-10-05 07:51:37'),
(692, 1, 404, '01633438395.jpg', 0, '2021-10-05 09:53:15', '2021-10-05 09:55:02'),
(693, 1, 404, '11633438395.jpg', 1, '2021-10-05 09:53:15', '2021-10-05 09:55:02'),
(694, 1, 404, '21633438395.jpg', 2, '2021-10-05 09:53:16', '2021-10-05 09:55:02'),
(695, 1, 405, '01633531184.jpeg', 0, '2021-10-06 11:39:44', '2021-11-16 15:09:43'),
(696, 1, 405, '11633531184.jpeg', 1, '2021-10-06 11:39:44', '2021-11-16 15:09:43'),
(697, 1, 405, '21633531184.jpeg', 2, '2021-10-06 11:39:44', '2021-11-16 15:09:43'),
(698, 1, 365, '01633607747.jpeg', 0, '2021-10-07 08:55:48', '2021-11-08 16:42:09'),
(699, 1, 365, '11633607748.jpeg', 1, '2021-10-07 08:55:51', '2021-11-08 16:42:09'),
(700, 1, 365, '21633607751.jpeg', 2, '2021-10-07 08:55:51', '2021-11-08 16:42:09'),
(701, 1, 365, '31633607751.jpeg', 3, '2021-10-07 08:55:51', '2021-11-08 16:42:09'),
(702, 1, 365, '41633607751.jpeg', 4, '2021-10-07 08:55:51', '2021-11-08 16:42:09'),
(703, 1, 365, '51633607751.jpeg', 5, '2021-10-07 08:55:51', '2021-11-08 16:42:09'),
(704, 1, 365, '61633607751.jpeg', 6, '2021-10-07 08:55:52', '2021-11-08 16:42:09'),
(705, 1, 365, '71633607752.jpeg', 7, '2021-10-07 08:55:52', '2021-11-08 16:42:09'),
(706, 1, 317, '01634027944.jpg', 0, '2021-10-12 05:39:04', '2021-11-22 21:29:19'),
(707, 1, 317, '11634027944.jpg', 1, '2021-10-12 05:39:04', '2021-11-22 21:29:19'),
(708, 1, 317, '21634027944.jpg', 2, '2021-10-12 05:39:04', '2021-11-22 21:29:19'),
(709, 1, 317, '31634027944.jpg', 3, '2021-10-12 05:39:05', '2021-11-22 21:29:19'),
(710, 1, 317, '41634027945.jpg', 4, '2021-10-12 05:39:05', '2021-11-22 21:29:19'),
(711, 1, 317, '51634027945.jpg', 5, '2021-10-12 05:39:05', '2021-11-22 21:29:19'),
(715, 1, 407, '01635322433.jpg', 0, '2021-10-27 15:13:53', '2021-11-03 14:38:03'),
(716, 1, 407, '11635322433.jpg', 1, '2021-10-27 15:13:53', '2021-11-03 14:38:03'),
(717, 1, 407, '21635322433.jpg', 2, '2021-10-27 15:13:53', '2021-11-03 14:38:03'),
(718, 1, 407, '31635322433.jpg', 3, '2021-10-27 15:13:53', '2021-11-03 14:38:03'),
(719, 1, 407, '41635322433.jpg', 4, '2021-10-27 15:13:53', '2021-11-03 14:38:03'),
(720, 1, 407, '51635322433.jpg', 5, '2021-10-27 15:13:53', '2021-11-03 14:38:03'),
(721, 1, 407, '61635322433.jpg', 6, '2021-10-27 15:13:53', '2021-11-03 14:38:03'),
(722, 1, 407, '71635322433.jpg', 7, '2021-10-27 15:13:53', '2021-11-03 14:38:03'),
(723, 1, 407, '81635322433.jpg', 8, '2021-10-27 15:13:53', '2021-11-03 14:38:03'),
(724, 1, 407, '91635322433.jpg', 9, '2021-10-27 15:13:53', '2021-11-03 14:38:03'),
(725, 1, 407, '101635322433.mp4', 10, '2021-10-27 15:13:54', '2021-11-03 14:38:03'),
(726, 1, 407, '111635322434.jpg', 11, '2021-10-27 15:13:54', '2021-11-03 14:38:03'),
(727, 1, 407, '121635322434.jpg', 12, '2021-10-27 15:13:54', '2021-11-03 14:38:03'),
(728, 1, 408, '01635496580.jpeg', 0, '2021-10-29 15:36:20', '2021-11-23 14:20:57'),
(729, 1, 408, '11635496580.jpeg', 1, '2021-10-29 15:36:20', '2021-11-23 14:20:57'),
(730, 1, 408, '21635496580.jpeg', 2, '2021-10-29 15:36:20', '2021-11-23 14:20:57'),
(731, 1, 408, '31635496580.jpg', 3, '2021-10-29 15:36:20', '2021-11-23 14:20:57'),
(732, 1, 408, '41635496580.jpeg', 4, '2021-10-29 15:36:20', '2021-11-23 14:20:57'),
(733, 1, 409, '01635773875.jpg', 0, '2021-11-01 20:37:55', '2021-11-01 20:44:08'),
(734, 1, 409, '11635773875.jpg', 1, '2021-11-01 20:37:55', '2021-11-01 20:44:08'),
(735, 1, 409, '21635773875.jpg', 2, '2021-11-01 20:37:55', '2021-11-01 20:44:08'),
(736, 1, 409, '31635773875.jpg', 3, '2021-11-01 20:37:55', '2021-11-01 20:44:08'),
(737, 1, 409, '41635773875.jpg', 4, '2021-11-01 20:37:55', '2021-11-01 20:44:08'),
(738, 1, 409, '51635773875.jpeg', 5, '2021-11-01 20:37:55', '2021-11-01 20:44:08'),
(739, 1, 409, '61635773875.jpeg', 6, '2021-11-01 20:37:55', '2021-11-01 20:44:08'),
(740, 1, 410, '01636031340.jpg', NULL, '2021-11-04 20:09:00', '2021-11-04 20:09:00'),
(741, 1, 410, '11636031340.jpg', NULL, '2021-11-04 20:09:00', '2021-11-04 20:09:00'),
(742, 1, 410, '21636031340.jpg', NULL, '2021-11-04 20:09:00', '2021-11-04 20:09:00'),
(743, 1, 410, '31636031340.png', NULL, '2021-11-04 20:09:00', '2021-11-04 20:09:00'),
(744, 1, 410, '41636031340.jpg', NULL, '2021-11-04 20:09:00', '2021-11-04 20:09:00'),
(745, 1, 411, '01636034842.jpeg', NULL, '2021-11-04 21:07:22', '2021-11-04 21:07:22'),
(746, 1, 411, '11636034842.jpeg', NULL, '2021-11-04 21:07:22', '2021-11-04 21:07:22'),
(747, 1, 411, '21636034842.jpeg', NULL, '2021-11-04 21:07:22', '2021-11-04 21:07:22'),
(748, 1, 411, '31636034842.jpeg', NULL, '2021-11-04 21:07:22', '2021-11-04 21:07:22'),
(749, 1, 411, '41636034842.jpeg', NULL, '2021-11-04 21:07:22', '2021-11-04 21:07:22'),
(750, 1, 411, '51636034842.jpeg', NULL, '2021-11-04 21:07:22', '2021-11-04 21:07:22'),
(751, 1, 411, '61636034842.jpeg', NULL, '2021-11-04 21:07:22', '2021-11-04 21:07:22'),
(752, 1, 411, '71636034842.jpeg', NULL, '2021-11-04 21:07:22', '2021-11-04 21:07:22'),
(753, 1, 411, '81636034842.jpeg', NULL, '2021-11-04 21:07:22', '2021-11-04 21:07:22'),
(754, 1, 411, '91636034842.jpeg', NULL, '2021-11-04 21:07:22', '2021-11-04 21:07:22'),
(755, 1, 412, '01636102427.jpg', 0, '2021-11-05 15:53:47', '2021-11-05 15:54:50'),
(756, 1, 412, '11636102427.jpg', 1, '2021-11-05 15:53:47', '2021-11-05 15:54:50'),
(757, 1, 412, '21636102427.jpg', 2, '2021-11-05 15:53:47', '2021-11-05 15:54:50'),
(758, 1, 412, '31636102427.jpg', 3, '2021-11-05 15:53:47', '2021-11-05 15:54:50'),
(759, 1, 412, '41636102427.jpg', 4, '2021-11-05 15:53:47', '2021-11-05 15:54:50'),
(760, 1, 412, '51636102427.jpg', 5, '2021-11-05 15:53:47', '2021-11-05 15:54:50'),
(761, 1, 412, '61636102427.jpg', 6, '2021-11-05 15:53:47', '2021-11-05 15:54:50'),
(762, 1, 412, '71636102427.jpg', 7, '2021-11-05 15:53:47', '2021-11-05 15:54:50'),
(763, 1, 412, '81636102427.jpeg', 8, '2021-11-05 15:53:47', '2021-11-05 15:54:50'),
(764, 1, 412, '91636102427.jpeg', 9, '2021-11-05 15:53:47', '2021-11-05 15:54:50'),
(765, 1, 412, '101636102427.jpeg', 10, '2021-11-05 15:53:47', '2021-11-05 15:54:50'),
(766, 1, 412, '111636102427.jpeg', 11, '2021-11-05 15:53:47', '2021-11-05 15:54:50'),
(767, 1, 412, '121636102427.jpeg', 12, '2021-11-05 15:53:47', '2021-11-05 15:54:50'),
(768, 1, 413, '01636104332.jpg', NULL, '2021-11-05 16:25:32', '2021-11-05 16:25:32'),
(769, 1, 413, '11636104332.jpg', NULL, '2021-11-05 16:25:32', '2021-11-05 16:25:32'),
(770, 1, 413, '21636104332.jpg', NULL, '2021-11-05 16:25:32', '2021-11-05 16:25:32'),
(771, 1, 413, '31636104332.jpg', NULL, '2021-11-05 16:25:32', '2021-11-05 16:25:32'),
(772, 1, 413, '41636104332.jpg', NULL, '2021-11-05 16:25:32', '2021-11-05 16:25:32'),
(773, 1, 413, '51636104332.jpeg', NULL, '2021-11-05 16:25:32', '2021-11-05 16:25:32'),
(774, 1, 413, '61636104332.jpeg', NULL, '2021-11-05 16:25:32', '2021-11-05 16:25:32'),
(775, 1, 413, '71636104332.jpeg', NULL, '2021-11-05 16:25:32', '2021-11-05 16:25:32'),
(776, 1, 413, '81636104332.jpeg', NULL, '2021-11-05 16:25:32', '2021-11-05 16:25:32'),
(777, 1, 413, '91636104332.jpeg', NULL, '2021-11-05 16:25:32', '2021-11-05 16:25:32'),
(778, 1, 414, '01636454592.jpg', 0, '2021-11-09 17:43:12', '2021-11-22 16:19:37'),
(779, 1, 415, '01637056424.jpg', 0, '2021-11-16 16:53:44', '2021-11-16 17:45:52'),
(780, 1, 415, '11637056424.jpg', 1, '2021-11-16 16:53:44', '2021-11-16 17:45:52'),
(781, 1, 415, '21637056424.jpg', 2, '2021-11-16 16:53:44', '2021-11-16 17:45:52'),
(782, 1, 415, '31637056424.jpg', 3, '2021-11-16 16:53:45', '2021-11-16 17:45:52'),
(783, 1, 415, '41637056425.jpg', 4, '2021-11-16 16:53:45', '2021-11-16 17:45:52'),
(784, 1, 415, '51637056425.jpg', 5, '2021-11-16 16:53:45', '2021-11-16 17:45:52'),
(785, 1, 415, '61637056425.jpg', 6, '2021-11-16 16:53:45', '2021-11-16 17:45:52'),
(786, 1, 415, '71637056425.jpg', 7, '2021-11-16 16:53:45', '2021-11-16 17:45:52'),
(787, 1, 415, '81637056425.jpg', 8, '2021-11-16 16:53:45', '2021-11-16 17:45:52'),
(788, 1, 415, '91637056425.jpg', 9, '2021-11-16 16:53:45', '2021-11-16 17:45:52'),
(789, 1, 415, '101637056425.jpg', 10, '2021-11-16 16:53:45', '2021-11-16 17:45:52'),
(790, 1, 424, '01637653370.jpg', 0, '2021-11-23 14:42:50', '2021-11-23 14:43:48'),
(791, 1, 424, '11637653370.jpg', 1, '2021-11-23 14:42:50', '2021-11-23 14:43:48'),
(792, 1, 424, '21637653370.jpg', 2, '2021-11-23 14:42:50', '2021-11-23 14:43:48'),
(793, 1, 424, '31637653370.jpg', 3, '2021-11-23 14:42:50', '2021-11-23 14:43:48'),
(794, 1, 424, '41637653370.jpg', 4, '2021-11-23 14:42:50', '2021-11-23 14:43:48'),
(795, 1, 424, '51637653370.jpg', 5, '2021-11-23 14:42:50', '2021-11-23 14:43:48'),
(796, 1, 424, '61637653370.jpg', 6, '2021-11-23 14:42:50', '2021-11-23 14:43:48'),
(797, 1, 424, '71637653370.jpg', 7, '2021-11-23 14:42:50', '2021-11-23 14:43:48'),
(798, 1, 424, '81637653370.jpg', 8, '2021-11-23 14:42:50', '2021-11-23 14:43:48'),
(799, 1, 424, '91637653370.jpg', 9, '2021-11-23 14:42:50', '2021-11-23 14:43:48'),
(800, 1, 424, '101637653370.jpg', 10, '2021-11-23 14:42:50', '2021-11-23 14:43:48'),
(801, 1, 424, '111637653370.jpg', 11, '2021-11-23 14:42:50', '2021-11-23 14:43:48'),
(802, 1, 425, '01637671018.jpg', NULL, '2021-11-23 19:36:58', '2021-11-23 19:36:58'),
(803, 1, 425, '11637671018.jpg', NULL, '2021-11-23 19:36:58', '2021-11-23 19:36:58'),
(804, 1, 425, '21637671018.jpg', NULL, '2021-11-23 19:36:58', '2021-11-23 19:36:58'),
(805, 1, 425, '31637671018.jpg', NULL, '2021-11-23 19:36:58', '2021-11-23 19:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `project_maps`
--

CREATE TABLE `project_maps` (
  `id` int(11) NOT NULL,
  `lat` text,
  `lng` text,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` text,
  `description` text,
  `image` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_maps`
--

INSERT INTO `project_maps` (`id`, `lat`, `lng`, `project_id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(20, '40.96997705858292', '28.820782203813597', 152, NULL, NULL, NULL, '2021-11-22 16:19:19', '2021-11-25 14:11:59'),
(21, '41.02568731414462', '41.02568731414462', 414, NULL, NULL, NULL, '2021-11-22 16:19:37', '2021-11-22 16:19:37'),
(22, '40.979049378422545', '28.823067810590278', 344, NULL, NULL, NULL, '2021-11-22 16:20:03', '2021-11-22 17:02:22'),
(23, '0', '0', 392, NULL, NULL, NULL, '2021-11-22 18:44:14', '2021-11-22 18:44:14'),
(24, '0', '0', 317, NULL, NULL, NULL, '2021-11-22 21:29:19', '2021-11-22 21:29:19'),
(25, '0', '0', 144, NULL, NULL, NULL, '2021-11-22 21:32:02', '2021-11-22 21:32:02'),
(26, '0', '0', 63, NULL, NULL, NULL, '2021-11-23 14:16:04', '2021-11-23 14:16:04'),
(27, '0', '0', 338, NULL, NULL, NULL, '2021-11-23 14:17:11', '2021-11-23 14:17:11'),
(28, '0', '0', 408, NULL, NULL, NULL, '2021-11-23 14:20:57', '2021-11-23 14:20:57'),
(29, NULL, NULL, 424, NULL, NULL, NULL, '2021-11-23 14:42:50', '2021-11-23 14:42:50'),
(30, NULL, NULL, 425, NULL, NULL, NULL, '2021-11-23 19:36:58', '2021-11-23 19:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `project_number_of_rooms`
--

CREATE TABLE `project_number_of_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `number_of_rooms_id` bigint(20) UNSIGNED DEFAULT NULL,
  `area_from` int(11) DEFAULT NULL,
  `area_to` int(11) DEFAULT NULL,
  `price_from` int(11) DEFAULT NULL,
  `price_to` int(11) DEFAULT NULL,
  `price_from_dollar` int(11) NOT NULL,
  `price_to_dollar` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_number_of_rooms`
--

INSERT INTO `project_number_of_rooms` (`id`, `project_id`, `number_of_rooms_id`, `area_from`, `area_to`, `price_from`, `price_to`, `price_from_dollar`, `price_to_dollar`, `created_at`, `updated_at`) VALUES
(13, 34, 6, 88, 101, 810000, 990000, 0, 0, '2020-07-24 06:54:38', '2020-12-01 02:16:50'),
(14, 34, 7, 110, 135, 1154000, 1275000, 0, 0, '2020-07-24 06:54:38', '2020-12-01 02:16:50'),
(43, 53, 6, 71, 71, 1004570, 1183958, 0, 0, '2020-08-05 02:46:00', '2021-09-30 12:08:00'),
(44, 53, 7, 127, 137, 1765173, 1987614, 0, 0, '2020-08-05 02:46:00', '2021-09-30 12:08:00'),
(45, 53, 8, 199, 199, 2627980, 2820141, 0, 0, '2020-08-05 02:46:00', '2021-09-30 12:10:08'),
(46, 53, 9, 200, 200, 2813700, 3261180, 0, 0, '2020-08-05 02:46:00', '2021-09-30 12:08:00'),
(77, 63, 6, 63, 70, 979000, 990000, 0, 0, '2020-08-05 05:53:43', '2021-11-23 14:16:04'),
(385, 144, 5, 73, 88, 0, 0, 127000, 186000, '2020-10-30 07:27:17', '2021-11-22 21:32:02'),
(386, 144, 6, 88, 118, 0, 0, 202000, 303000, '2020-10-30 07:27:17', '2021-11-22 21:32:02'),
(387, 144, 7, 125, 186, 0, 0, 298000, 303000, '2020-10-30 07:27:17', '2021-11-22 21:32:02'),
(414, 152, 7, 113, 143, 1465000, 2338000, 0, 0, '2020-11-03 06:59:50', '2021-11-12 19:52:21'),
(415, 152, 8, 172, 175, 2032000, 2827000, 0, 0, '2020-11-03 06:59:50', '2021-11-12 19:52:21'),
(642, 207, 8, 133, 157, 3779236, 4455191, 0, 0, '2021-02-24 02:40:06', '2021-10-28 19:01:13'),
(643, 207, 9, 255, 255, 8126237, 11818750, 0, 0, '2021-02-24 02:40:06', '2021-10-28 19:01:13'),
(693, 225, 6, 73, 73, 1730000, 2076125, 0, 0, '2021-03-16 02:23:30', '2021-09-21 07:44:38'),
(694, 225, 7, 132, 132, 2643000, 3230442, 0, 0, '2021-03-16 02:23:30', '2021-09-21 07:44:38'),
(695, 225, 8, 169, 169, 3379516, 4130500, 0, 0, '2021-03-16 02:23:30', '2021-09-21 07:44:38'),
(805, 304, 1, 80, 0, 0, 0, 295000, 0, '2021-08-27 05:57:38', '2021-10-01 12:28:35'),
(809, 306, 6, 55, 67, 1278000, 1670000, 0, 0, '2021-08-27 06:19:28', '2021-09-15 05:16:21'),
(810, 306, 7, 95, 0, 2275000, 2750000, 0, 0, '2021-08-27 06:19:29', '2021-09-15 05:16:21'),
(811, 306, 8, 162, 0, 4024000, 0, 0, 0, '2021-08-27 06:19:29', '2021-09-15 05:16:21'),
(812, 307, 1, 65, 133, 1351000, 2266000, 0, 0, '2021-08-27 06:21:14', '2021-10-11 10:03:10'),
(817, 310, 7, 127, 0, 3216000, 0, 0, 0, '2021-08-27 06:24:32', '2021-09-11 08:18:34'),
(818, 310, 8, 120, 0, 2692000, 0, 0, 0, '2021-08-27 06:24:32', '2021-09-11 08:18:34'),
(819, 310, 9, 209, 0, 4856000, 0, 0, 0, '2021-08-27 06:24:32', '2021-09-11 08:18:34'),
(827, 314, 6, 52, 78, 965000, 1205000, 0, 0, '2021-08-27 06:36:14', '2021-09-22 12:12:09'),
(828, 314, 8, 133, 143, 2158000, 2600000, 0, 0, '2021-08-27 06:36:14', '2021-09-20 04:44:12'),
(829, 314, 7, 101, 180, 1812000, 2400000, 0, 0, '2021-08-27 06:36:14', '2021-09-20 04:44:12'),
(830, 315, 5, 55, 0, 720000, 0, 0, 0, '2021-08-27 06:36:58', '2021-09-21 08:04:04'),
(831, 315, 7, 125, 0, 1960000, 0, 0, 0, '2021-08-27 06:36:58', '2021-09-21 08:04:04'),
(834, 317, 7, 135, 133, 1590000, 1950000, 0, 0, '2021-08-27 06:38:02', '2021-11-22 21:29:19'),
(836, 318, 6, 100, 0, 2000000, 0, 0, 0, '2021-08-27 06:38:43', '2021-09-10 11:27:56'),
(842, 320, 6, 80, 0, 1370000, 0, 0, 0, '2021-08-27 06:45:03', '2021-09-11 07:44:28'),
(843, 320, 7, 103, 0, 1400000, 0, 0, 0, '2021-08-27 06:45:03', '2021-09-11 07:44:28'),
(844, 320, 8, 218, 0, 2637000, 0, 0, 0, '2021-08-27 06:45:03', '2021-09-11 07:44:28'),
(848, 322, 7, 105, 130, 957000, 2036000, 0, 0, '2021-08-27 06:47:04', '2021-09-21 06:05:32'),
(849, 322, 8, 135, 155, 1747000, 2377000, 0, 0, '2021-08-27 06:47:04', '2021-09-21 06:05:32'),
(851, 323, 7, 95, 115, 1250000, 1650000, 0, 0, '2021-08-27 06:47:43', '2021-10-28 20:20:55'),
(853, 325, 7, 126, 147, 1799000, 2502000, 0, 0, '2021-08-27 08:02:40', '2021-11-09 15:59:48'),
(854, 325, 8, 163, 176, 2150000, 3139000, 0, 0, '2021-08-27 08:02:40', '2021-11-09 15:59:48'),
(855, 325, 9, 202, 204, 2375000, 4095000, 0, 0, '2021-08-27 08:02:40', '2021-11-09 15:59:48'),
(860, 328, 7, 0, 0, 930000, 0, 0, 0, '2021-08-27 08:05:16', '2021-08-27 08:05:16'),
(861, 328, 8, 0, 0, 1430000, 0, 0, 0, '2021-08-27 08:05:16', '2021-08-27 08:05:16'),
(862, 328, 9, 0, 0, 1790000, 0, 0, 0, '2021-08-27 08:05:16', '2021-08-27 08:05:16'),
(863, 329, 8, 0, 0, 1216000, 0, 0, 0, '2021-08-27 08:06:02', '2021-08-27 08:06:02'),
(864, 330, 6, 0, 0, 1144000, 0, 0, 0, '2021-08-27 08:06:38', '2021-08-27 08:06:38'),
(865, 330, 7, 0, 0, 2198000, 0, 0, 0, '2021-08-27 08:06:38', '2021-08-27 08:06:38'),
(866, 331, 6, 82, 0, 1100000, 0, 0, 0, '2021-08-27 08:08:01', '2021-09-21 09:55:01'),
(867, 331, 7, 141, 0, 1450000, 0, 0, 0, '2021-08-27 08:08:01', '2021-09-21 09:55:01'),
(868, 331, 8, 184, 0, 1715000, 0, 0, 0, '2021-08-27 08:08:01', '2021-09-21 09:55:01'),
(875, 333, 7, 125, 125, 920000, 1050000, 0, 0, '2021-08-27 08:22:38', '2021-09-09 11:47:07'),
(877, 334, 6, 65, 65, 300000, 350000, 0, 0, '2021-08-27 08:24:04', '2021-09-09 11:51:25'),
(878, 334, 7, 120, 120, 530000, 660000, 0, 0, '2021-08-27 08:24:04', '2021-09-09 11:51:25'),
(879, 335, 6, 69, 106, 830000, 1250000, 0, 0, '2021-08-27 08:25:09', '2021-11-16 15:17:23'),
(880, 335, 7, 103, 153, 1145000, 1820000, 0, 0, '2021-08-27 08:25:09', '2021-11-16 15:17:23'),
(881, 336, 7, 125, 0, 690000, 0, 0, 0, '2021-08-27 08:25:39', '2021-09-21 07:58:20'),
(882, 337, 6, 88, 0, 900000, 0, 0, 0, '2021-08-27 08:26:22', '2021-09-24 09:32:16'),
(883, 337, 7, 108, 0, 1250000, 0, 0, 0, '2021-08-27 08:26:22', '2021-09-24 09:32:16'),
(885, 339, 6, 70, 0, 580000, 0, 0, 0, '2021-08-27 08:51:44', '2021-09-10 10:43:51'),
(890, 341, 6, 73, 92, 1170000, 1593000, 0, 0, '2021-08-27 08:57:28', '2021-11-18 19:10:41'),
(891, 341, 7, 116, 148, 1831000, 2393000, 0, 0, '2021-08-27 08:57:28', '2021-11-18 19:10:41'),
(892, 341, 8, 141, 172, 2242000, 3033000, 0, 0, '2021-08-27 08:57:28', '2021-11-18 19:10:41'),
(893, 341, 9, 212, 212, 3380000, 3380000, 0, 0, '2021-08-27 08:57:28', '2021-11-18 19:10:41'),
(894, 342, 7, 137, 202, 1758000, 2613000, 0, 0, '2021-08-27 08:58:31', '2021-10-02 08:10:43'),
(895, 342, 8, 165, 247, 1984000, 3014000, 0, 0, '2021-08-27 08:58:31', '2021-10-02 08:10:43'),
(897, 343, 6, 72, 76, 1036250, 1118059, 0, 0, '2021-08-27 08:59:46', '2021-09-28 11:08:45'),
(898, 343, 7, 99, 171, 1405268, 2154678, 0, 0, '2021-08-27 08:59:46', '2021-09-28 11:08:45'),
(899, 343, 8, 149, 352, 1923770, 3158830, 0, 0, '2021-08-27 08:59:46', '2021-09-28 11:08:45'),
(900, 343, 9, 200, 252, 2493805, 2902849, 0, 0, '2021-08-27 08:59:46', '2021-09-28 11:08:45'),
(901, 344, 6, 63, 0, 1315000, 0, 0, 0, '2021-08-27 09:00:37', '2021-09-13 09:24:18'),
(905, 346, 7, 100, 137, 1561000, 3272000, 0, 0, '2021-08-27 09:02:41', '2021-11-19 15:22:25'),
(906, 346, 8, 149, 190, 3832000, 4713000, 0, 0, '2021-08-27 09:02:41', '2021-11-19 15:22:25'),
(908, 347, 7, 0, 0, 690000, 0, 0, 0, '2021-08-27 09:03:57', '2021-08-27 09:03:57'),
(909, 347, 8, 0, 0, 1350000, 0, 0, 0, '2021-08-27 09:03:57', '2021-08-27 09:03:57'),
(910, 347, 9, 0, 0, 2890000, 0, 0, 0, '2021-08-27 09:03:57', '2021-08-27 09:03:57'),
(911, 348, 6, 66, 95, 1150000, 3000000, 0, 0, '2021-08-27 09:05:09', '2021-09-10 12:22:06'),
(912, 348, 7, 100, 265, 1575000, 4350000, 0, 0, '2021-08-27 09:05:09', '2021-09-10 12:22:06'),
(913, 348, 8, 167, 290, 2450000, 0, 0, 0, '2021-08-27 09:05:09', '2021-09-10 12:22:06'),
(914, 348, 9, 187, 0, 4300000, 0, 0, 0, '2021-08-27 09:05:09', '2021-09-10 12:22:06'),
(916, 349, 7, 147, 155, 985000, 1068000, 0, 0, '2021-08-27 09:08:26', '2021-09-15 07:51:32'),
(917, 349, 8, 191, 0, 1619000, 0, 0, 0, '2021-08-27 09:08:26', '2021-09-15 07:51:32'),
(919, 333, 8, 175, 175, 1200000, 1722000, 0, 0, '2021-09-09 12:18:01', '2021-09-09 12:18:01'),
(920, 336, 8, 151, 176, 1180000, 1230000, 0, 0, '2021-09-10 05:11:03', '2021-09-21 07:58:20'),
(924, 318, 7, 122, 0, 2440000, 0, 0, 0, '2021-09-10 11:27:56', '2021-09-10 11:27:56'),
(926, 324, 6, 75, 75, 1030000, 1030000, 0, 0, '2021-09-11 06:32:47', '2021-11-22 15:50:35'),
(927, 324, 7, 120, 125, 1545000, 1765000, 0, 0, '2021-09-11 06:32:47', '2021-11-22 15:50:35'),
(928, 324, 8, 165, 165, 1895000, 2125000, 0, 0, '2021-09-11 06:32:47', '2021-11-22 15:50:35'),
(933, 310, 6, 72, 0, 1772000, 0, 0, 0, '2021-09-11 08:18:34', '2021-09-11 08:18:34'),
(935, 359, 6, 63, 0, 471000, 0, 0, 0, '2021-09-14 05:26:19', '2021-09-14 05:26:19'),
(936, 359, 7, 134, 0, 790000, 0, 0, 0, '2021-09-14 05:26:19', '2021-09-14 05:26:19'),
(938, 359, 8, 197, 0, 1218000, 0, 0, 0, '2021-09-14 05:26:19', '2021-09-14 05:26:19'),
(940, 361, 7, 108, 125, 1582000, 1668000, 0, 0, '2021-09-14 08:47:37', '2021-09-14 08:47:37'),
(941, 361, 8, 125, 0, 1630000, 0, 0, 0, '2021-09-14 08:47:37', '2021-09-14 08:47:37'),
(944, 117, 20, 192, 0, 4036000, 0, 0, 0, '2021-09-14 10:17:34', '2021-11-08 16:44:50'),
(945, 117, 29, 286, 225, 6640000, 6717000, 0, 0, '2021-09-14 10:17:35', '2021-11-08 16:44:50'),
(946, 117, 30, 323, 0, 8085000, 8310000, 0, 0, '2021-09-14 10:17:35', '2021-11-08 16:44:50'),
(947, 117, 17, 495, 0, 12110000, 13295000, 0, 0, '2021-09-14 10:17:35', '2021-11-08 16:44:50'),
(948, 364, 7, 96, 0, 1600000, 0, 0, 0, '2021-09-14 11:03:15', '2021-09-14 11:03:15'),
(949, 342, 11, 180, 0, 2234000, 2314000, 0, 0, '2021-09-15 05:43:40', '2021-10-02 08:10:43'),
(950, 342, 12, 200, 302, 2506000, 3860000, 0, 0, '2021-09-15 05:43:40', '2021-10-02 08:10:43'),
(951, 365, 7, 135, 179, 1360000, 1700000, 0, 0, '2021-09-15 06:05:06', '2021-11-08 16:42:09'),
(952, 365, 8, 174, 174, 1680000, 2000000, 0, 0, '2021-09-15 06:05:06', '2021-11-08 16:42:09'),
(953, 365, 9, 215, 215, 2500000, 2800000, 0, 0, '2021-09-15 06:05:06', '2021-11-08 16:42:09'),
(955, 366, 7, 135, 135, 2683800, 2683800, 0, 0, '2021-09-15 10:07:21', '2021-10-05 10:59:18'),
(956, 366, 8, 168, 251, 3339000, 7028000, 0, 0, '2021-09-15 10:07:21', '2021-10-05 10:59:18'),
(957, 366, 9, 202, 202, 4015760, 4015760, 0, 0, '2021-09-15 10:07:21', '2021-10-05 10:59:18'),
(958, 367, 7, 103, 132, 2307000, 3385000, 0, 0, '2021-09-15 10:38:50', '2021-09-29 06:52:41'),
(959, 367, 8, 158, 165, 3466000, 3805000, 0, 0, '2021-09-15 10:38:50', '2021-09-29 06:52:41'),
(962, 368, 7, 137, 153, 1612150, 2215385, 0, 0, '2021-09-15 11:20:52', '2021-09-15 11:20:52'),
(963, 368, 8, 185, 0, 1999570, 2044601, 0, 0, '2021-09-15 11:20:52', '2021-09-15 11:20:52'),
(965, 369, 6, 79, 87, 1488000, 1584842, 0, 0, '2021-09-15 11:35:01', '2021-11-04 15:08:52'),
(966, 369, 7, 114, 114, 2145200, 2145200, 0, 0, '2021-09-15 11:35:01', '2021-11-04 15:08:52'),
(967, 371, 6, 70, 0, 2777000, 0, 0, 0, '2021-09-16 05:48:01', '2021-09-16 05:48:01'),
(968, 371, 7, 145, 167, 5712000, 6637000, 0, 0, '2021-09-16 05:48:01', '2021-09-16 05:48:01'),
(969, 371, 8, 143, 340, 5506000, 14451000, 0, 0, '2021-09-16 05:48:01', '2021-09-16 05:48:01'),
(970, 371, 9, 159, 392, 11333000, 25490000, 0, 0, '2021-09-16 05:48:01', '2021-09-16 05:48:01'),
(971, 373, 6, 64, 64, 1352000, 1606000, 0, 0, '2021-09-16 07:45:20', '2021-11-16 15:14:31'),
(972, 373, 7, 96, 131, 1730000, 2882000, 0, 0, '2021-09-16 07:45:20', '2021-11-16 15:14:31'),
(973, 373, 8, 130, 179, 2552000, 3819000, 0, 0, '2021-09-16 07:45:20', '2021-11-16 15:14:31'),
(974, 377, 7, 105, 194, 2415000, 4462000, 0, 0, '2021-09-17 06:43:49', '2021-09-17 06:43:49'),
(975, 377, 8, 153, 0, 3519000, 0, 0, 0, '2021-09-17 06:43:49', '2021-09-17 06:43:49'),
(976, 377, 11, 181, 0, 4163000, 0, 0, 0, '2021-09-17 06:43:49', '2021-09-17 06:43:49'),
(977, 377, 12, 239, 0, 5497000, 0, 0, 0, '2021-09-17 06:43:49', '2021-09-17 06:43:49'),
(978, 379, 6, 66, 89, 1410000, 1903000, 0, 0, '2021-09-17 10:36:00', '2021-10-11 11:20:24'),
(979, 379, 7, 97, 187, 2077000, 3997000, 0, 0, '2021-09-17 10:36:00', '2021-10-11 11:20:24'),
(980, 380, 7, 94, 128, 931000, 1613000, 0, 0, '2021-09-17 11:07:17', '2021-09-17 11:07:17'),
(981, 380, 8, 153, 153, 1493000, 1552000, 0, 0, '2021-09-17 11:07:17', '2021-09-17 11:07:17'),
(982, 380, 9, 222, 235, 3634000, 3648000, 0, 0, '2021-09-17 11:07:17', '2021-09-17 11:07:17'),
(983, 381, 6, 52, 53, 1898000, 2232000, 0, 0, '2021-09-20 08:28:01', '2021-10-28 14:56:07'),
(984, 381, 7, 75, 134, 2192000, 4471000, 0, 0, '2021-09-20 08:28:01', '2021-10-28 14:56:07'),
(985, 381, 8, 163, 204, 4146000, 5827000, 0, 0, '2021-09-20 08:28:01', '2021-10-28 14:56:07'),
(987, 385, 7, 121, 0, 1673000, 1914000, 0, 0, '2021-09-20 09:44:58', '2021-11-12 18:35:01'),
(988, 385, 8, 151, 0, 2340000, 2390000, 0, 0, '2021-09-20 09:44:58', '2021-11-12 18:35:01'),
(989, 367, 20, 170, 188, 3381000, 4489000, 0, 0, '2021-09-21 05:58:47', '2021-09-29 06:52:41'),
(990, 323, 8, 150, 150, 2180000, 2180000, 0, 0, '2021-09-21 06:01:14', '2021-10-28 20:20:55'),
(991, 322, 16, 238, 238, 2567000, 2900000, 0, 0, '2021-09-21 06:05:32', '2021-09-21 06:05:32'),
(992, 322, 17, 270, 270, 2734000, 3327000, 0, 0, '2021-09-21 06:05:32', '2021-09-21 06:05:32'),
(993, 387, 6, 70, 90, 942000, 1115000, 0, 0, '2021-09-23 06:43:49', '2021-10-30 14:45:11'),
(994, 387, 7, 110, 110, 1270000, 1385000, 0, 0, '2021-09-23 06:43:49', '2021-10-30 14:45:11'),
(996, 388, 6, 73, 0, 1050000, 0, 0, 0, '2021-09-23 08:17:24', '2021-09-23 08:17:24'),
(997, 388, 7, 110, 165, 1800000, 2800000, 0, 0, '2021-09-23 08:17:24', '2021-09-23 08:17:24'),
(998, 388, 8, 145, 191, 20115000, 3500000, 0, 0, '2021-09-23 08:17:24', '2021-09-23 08:17:24'),
(999, 388, 14, 211, 421, 2700000, 6600000, 0, 0, '2021-09-23 08:17:25', '2021-09-23 08:17:25'),
(1000, 389, 33, 350, 0, 6500000, 0, 0, 0, '2021-09-23 11:39:02', '2021-09-23 11:39:02'),
(1001, 390, 16, 323, 0, 0, 0, 765000, 0, '2021-09-23 11:55:01', '2021-09-23 11:55:01'),
(1002, 391, 7, 120, 0, 1000000, 1400000, 0, 0, '2021-09-23 12:15:00', '2021-09-23 12:15:00'),
(1003, 391, 8, 150, 0, 1750000, 1900000, 0, 0, '2021-09-23 12:15:00', '2021-09-23 12:15:00'),
(1004, 392, 7, 104, 132, 2066000, 2736000, 0, 0, '2021-09-24 05:53:38', '2021-11-22 18:44:14'),
(1006, 392, 8, 150, 172, 3153000, 3424000, 0, 0, '2021-09-24 05:53:38', '2021-11-22 18:44:14'),
(1008, 393, 7, 132, 136, 2431000, 2574000, 0, 0, '2021-09-24 06:44:36', '2021-11-06 16:33:41'),
(1011, 394, 7, 123, 130, 2238000, 3030000, 0, 0, '2021-09-28 07:55:28', '2021-11-17 15:00:10'),
(1012, 394, 8, 161, 179, 2422000, 4428000, 0, 0, '2021-09-28 07:55:28', '2021-11-17 15:00:10'),
(1013, 394, 9, 203, 214, 2903000, 5296000, 0, 0, '2021-09-28 07:55:28', '2021-11-17 15:00:10'),
(1014, 395, 6, 68, 76, 850000, 1000000, 0, 0, '2021-09-28 11:23:19', '2021-09-28 11:23:19'),
(1015, 395, 7, 133, 141, 1650000, 1800000, 0, 0, '2021-09-28 11:23:19', '2021-09-28 11:23:19'),
(1016, 395, 8, 166, 171, 2000000, 2400000, 0, 0, '2021-09-28 11:23:19', '2021-09-28 11:23:19'),
(1017, 395, 9, 203, 210, 2600000, 3000000, 0, 0, '2021-09-28 11:23:19', '2021-09-28 11:23:19'),
(1019, 396, 7, 88, 130, 1856000, 3037000, 0, 0, '2021-09-28 12:25:29', '2021-09-28 12:25:29'),
(1020, 367, 9, 196, 196, 4675000, 4675000, 0, 0, '2021-09-29 06:52:41', '2021-09-29 06:52:41'),
(1021, 367, 17, 236, 236, 5614000, 5614000, 0, 0, '2021-09-29 06:52:41', '2021-09-29 06:52:41'),
(1022, 367, 18, 308, 308, 6187000, 6187000, 0, 0, '2021-09-29 06:52:41', '2021-09-29 06:52:41'),
(1023, 397, 7, 105, 135, 2658000, 3248000, 0, 0, '2021-09-29 09:51:52', '2021-11-08 16:49:26'),
(1024, 397, 8, 132, 193, 3540000, 5840000, 0, 0, '2021-09-29 09:51:52', '2021-11-08 16:49:26'),
(1025, 397, 9, 260, 300, 5591000, 8752000, 0, 0, '2021-09-29 09:51:52', '2021-11-08 16:49:26'),
(1026, 397, 10, 301, 358, 9298000, 10554000, 0, 0, '2021-09-29 09:51:52', '2021-11-08 16:49:26'),
(1027, 398, 6, 72, 0, 1454000, 0, 0, 0, '2021-09-29 11:30:27', '2021-10-27 17:55:20'),
(1028, 398, 7, 116, 0, 2436000, 0, 0, 0, '2021-09-29 11:30:27', '2021-09-29 11:30:27'),
(1029, 399, 6, 75, 75, 1269000, 1269000, 0, 0, '2021-09-30 05:24:38', '2021-09-30 05:24:38'),
(1030, 399, 7, 100, 100, 1698000, 1698000, 0, 0, '2021-09-30 05:24:38', '2021-09-30 05:24:38'),
(1032, 400, 7, 138, 138, 1937000, 1937000, 0, 0, '2021-10-02 05:34:31', '2021-11-16 15:08:31'),
(1033, 400, 8, 157, 177, 2285000, 2793000, 0, 0, '2021-10-02 05:34:31', '2021-11-16 15:08:31'),
(1034, 400, 20, 273, 310, 3962000, 4505000, 0, 0, '2021-10-02 05:34:31', '2021-11-16 15:08:31'),
(1035, 400, 10, 270, 372, 3787000, 5215000, 0, 0, '2021-10-02 05:34:31', '2021-11-16 15:08:31'),
(1036, 400, 17, 296, 324, 4597000, 5115000, 0, 0, '2021-10-02 05:34:31', '2021-11-16 15:08:31'),
(1037, 400, 18, 317, 329, 5005000, 5190000, 0, 0, '2021-10-02 05:34:31', '2021-11-16 15:08:31'),
(1038, 401, 6, 78, 86, 1321456, 2115850, 0, 0, '2021-10-02 06:45:09', '2021-10-08 09:48:12'),
(1039, 401, 7, 109, 132, 1851610, 2277806, 0, 0, '2021-10-02 06:45:09', '2021-10-08 09:48:12'),
(1040, 401, 8, 137, 178, 2230571, 4800000, 0, 0, '2021-10-02 06:45:09', '2021-10-08 09:48:12'),
(1041, 402, 6, 56, 61, 1085800, 1388200, 0, 0, '2021-10-02 08:14:45', '2021-10-02 08:14:45'),
(1042, 402, 7, 86, 113, 1762500, 2428700, 0, 0, '2021-10-02 08:14:45', '2021-10-02 08:14:45'),
(1043, 402, 8, 129, 129, 2898200, 2898200, 0, 0, '2021-10-02 08:14:45', '2021-10-02 08:14:45'),
(1044, 403, 7, 119, 122, 1825000, 1830000, 0, 0, '2021-10-05 07:51:35', '2021-10-05 07:51:35'),
(1045, 403, 8, 157, 158, 2390000, 2630000, 0, 0, '2021-10-05 07:51:35', '2021-10-05 07:51:35'),
(1046, 404, 7, 182, 274, 3324000, 4168000, 0, 0, '2021-10-05 09:53:15', '2021-10-05 09:53:15'),
(1047, 404, 8, 252, 252, 3953000, 3000000, 0, 0, '2021-10-05 09:53:15', '2021-10-05 09:53:15'),
(1048, 366, 17, 284, 455, 5645920, 12712000, 0, 0, '2021-10-05 10:59:18', '2021-10-05 10:59:18'),
(1050, 405, 7, 107, 132, 1910000, 2445000, 0, 0, '2021-10-06 11:39:44', '2021-11-16 15:09:43'),
(1051, 405, 8, 155, 159, 2657000, 2657000, 0, 0, '2021-10-06 11:39:44', '2021-11-16 15:09:43'),
(1052, 381, 9, 198, 198, 5759000, 6140000, 0, 0, '2021-10-08 09:58:34', '2021-10-28 14:56:07'),
(1054, 346, 10, 234, 234, 4234000, 4897000, 0, 0, '2021-10-26 17:54:38', '2021-11-19 15:22:25'),
(1055, 407, 40, 157, 213, 6200000, 8200000, 0, 0, '2021-10-27 15:13:53', '2021-10-27 15:13:53'),
(1056, 407, 8, 181, 207, 6000000, 9000000, 0, 0, '2021-10-27 15:13:53', '2021-10-27 15:13:53'),
(1057, 407, 11, 166, 413, 5300000, 16000000, 0, 0, '2021-10-27 15:13:53', '2021-10-27 15:13:53'),
(1058, 407, 9, 255, 255, 8000000, 14000000, 0, 0, '2021-10-27 15:13:53', '2021-10-27 15:13:53'),
(1059, 407, 10, 384, 384, 15000000, 28000000, 0, 0, '2021-10-27 15:13:53', '2021-10-27 15:13:53'),
(1060, 207, 17, 250, 250, 8390094, 8390094, 0, 0, '2021-10-28 19:01:13', '2021-10-28 19:01:13'),
(1061, 408, 8, 157, 271, 5905000, 7820000, 0, 0, '2021-10-29 15:36:20', '2021-11-23 14:20:57'),
(1062, 408, 9, 200, 398, 7495000, 14900000, 0, 0, '2021-10-29 15:36:20', '2021-11-23 14:20:57'),
(1064, 409, 6, 70, 79, 0, 0, 437867, 475557, '2021-11-01 20:39:32', '2021-11-01 20:44:08'),
(1065, 409, 38, 77, 116, 0, 0, 466688, 483316, '2021-11-01 20:39:32', '2021-11-01 20:44:08'),
(1067, 410, 6, 100, 110, 900000, 950000, 0, 0, '2021-11-04 20:09:00', '2021-11-04 20:09:00'),
(1068, 410, 7, 110, 110, 1365000, 1365000, 0, 0, '2021-11-04 20:09:00', '2021-11-04 20:09:00'),
(1069, 410, 8, 125, 220, 1746000, 2439000, 0, 0, '2021-11-04 20:09:00', '2021-11-04 20:09:00'),
(1070, 410, 29, 160, 220, 2000000, 3235000, 0, 0, '2021-11-04 20:09:00', '2021-11-04 20:09:00'),
(1071, 410, 30, 200, 214, 3150000, 3150000, 0, 0, '2021-11-04 20:09:00', '2021-11-04 20:09:00'),
(1072, 411, 6, 65, 65, 0, 0, 138000, 138000, '2021-11-04 21:07:22', '2021-11-04 21:07:22'),
(1073, 411, 7, 0, 0, 0, 0, 182000, 0, '2021-11-04 21:07:22', '2021-11-04 21:07:22'),
(1074, 411, 9, 165, 165, 0, 0, 302000, 302000, '2021-11-04 21:07:22', '2021-11-04 21:07:22'),
(1075, 412, 5, 37, 37, 949000, 949000, 0, 0, '2021-11-05 15:53:47', '2021-11-05 15:53:47'),
(1076, 412, 6, 59, 63, 1527000, 1563000, 0, 0, '2021-11-05 15:53:47', '2021-11-05 15:53:47'),
(1077, 412, 7, 88, 106, 2084000, 2288000, 0, 0, '2021-11-05 15:53:47', '2021-11-05 15:53:47'),
(1078, 413, 6, 66, 66, 0, 0, 165000, 165000, '2021-11-05 16:25:32', '2021-11-05 16:25:32'),
(1079, 413, 7, 104, 104, 0, 0, 288000, 288000, '2021-11-05 16:25:32', '2021-11-05 16:25:32'),
(1080, 413, 8, 161, 161, 0, 0, 419000, 530000, '2021-11-05 16:25:32', '2021-11-05 16:25:32'),
(1081, 413, 9, 209, 209, 0, 0, 697000, 697000, '2021-11-05 16:25:32', '2021-11-05 16:25:32'),
(1082, 413, 25, 534, 534, 0, 0, 2394000, 2394000, '2021-11-05 16:25:32', '2021-11-05 16:25:32'),
(1083, 144, 8, 208, 346, 0, 0, 635000, 1587000, '2021-11-08 16:39:47', '2021-11-22 21:32:02'),
(1084, 144, 9, 358, 358, 0, 0, 1390000, 1390000, '2021-11-08 16:39:47', '2021-11-22 21:32:02'),
(1085, 397, 6, 78, 78, 2375000, 2375000, 0, 0, '2021-11-08 16:49:26', '2021-11-08 16:49:26'),
(1086, 414, 6, 83, 87, 1193000, 1306000, 0, 0, '2021-11-09 17:43:12', '2021-11-09 17:43:12'),
(1087, 414, 7, 125, 125, 2020000, 2580000, 0, 0, '2021-11-09 17:43:12', '2021-11-09 17:43:12'),
(1088, 414, 8, 170, 170, 2690000, 2950000, 0, 0, '2021-11-09 17:43:12', '2021-11-09 17:43:12'),
(1089, 414, 9, 318, 435, 6920000, 9100000, 0, 0, '2021-11-09 17:43:12', '2021-11-09 17:43:12'),
(1090, 346, 9, 270, 0, 7124000, 0, 0, 0, '2021-11-16 16:38:49', '2021-11-19 15:22:25'),
(1091, 415, 6, 73, 75, 1344191, 1404790, 0, 0, '2021-11-16 16:53:44', '2021-11-16 16:53:44'),
(1092, 415, 7, 139, 146, 2388143, 2751730, 0, 0, '2021-11-16 16:53:44', '2021-11-16 16:53:44'),
(1093, 415, 8, 169, 176, 3197600, 3671116, 0, 0, '2021-11-16 16:53:44', '2021-11-16 16:53:44'),
(1095, 338, 6, 60, 60, 671000, 671000, 0, 0, '2021-11-23 14:17:11', '2021-11-23 14:17:11'),
(1096, 424, 6, 0, 0, 0, 0, 110000, 130000, '2021-11-23 14:42:50', '2021-11-23 14:43:48'),
(1097, 424, 7, 0, 0, 0, 0, 170000, 230000, '2021-11-23 14:42:50', '2021-11-23 14:43:48'),
(1098, 424, 8, 0, 0, 0, 0, 220000, 300000, '2021-11-23 14:42:50', '2021-11-23 14:43:48'),
(1099, 425, 7, 127, 127, 2350000, 235000, 0, 0, '2021-11-23 19:36:58', '2021-11-23 19:36:58'),
(1100, 425, 8, 168, 168, 3250000, 3250000, 0, 0, '2021-11-23 19:36:58', '2021-11-23 19:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `project_videos`
--

CREATE TABLE `project_videos` (
  `id` bigint(20) NOT NULL,
  `lang_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `video` longtext,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_videos`
--

INSERT INTO `project_videos` (`id`, `lang_id`, `project_id`, `video`, `updated_at`, `created_at`) VALUES
(9, 1, 333, '01631198585.mp4', '2021-09-09 11:43:17', '2021-09-09 11:43:17'),
(10, 1, 334, '01631199075.mp4', '2021-09-09 11:51:23', '2021-09-09 11:51:23'),
(12, 1, 335, '01631260571.mp4', '2021-09-10 04:56:19', '2021-09-10 04:56:19'),
(13, 1, 336, '01631261444.mp4', '2021-09-10 05:11:01', '2021-09-10 05:11:01'),
(14, 1, 339, '01631281419.mp4', '2021-09-10 10:43:49', '2021-09-10 10:43:49'),
(15, 1, 341, '01631281870.mp4', '2021-09-10 10:51:24', '2021-09-10 10:51:24'),
(17, 1, 338, '01631282157.mp4', '2021-09-10 10:56:44', '2021-09-10 10:56:44'),
(19, 1, 318, '01631284116.mp4', '2021-09-10 11:28:42', '2021-09-10 11:28:42'),
(20, 1, 343, '01631284677.mp4', '2021-09-10 11:38:11', '2021-09-10 11:38:11'),
(23, 1, 346, '01631287588.mp4', '2021-09-10 12:26:28', '2021-09-10 12:26:28'),
(24, 1, 331, '01631351823.mp4', '2021-09-11 06:17:12', '2021-09-11 06:17:12'),
(26, 1, 324, '01631352765.mp4', '2021-09-11 06:32:47', '2021-09-11 06:32:47'),
(27, 1, 323, '01631353154.mp4', '2021-09-11 06:39:20', '2021-09-11 06:39:20'),
(28, 1, 322, '01631356571.mp4', '2021-09-11 07:36:27', '2021-09-11 07:36:27'),
(29, 1, 320, '01631356909.mp4', '2021-09-11 07:42:01', '2021-09-11 07:42:01'),
(32, 1, 310, '01631359088.mp4', '2021-09-11 08:18:30', '2021-09-11 08:18:30'),
(34, 1, 364, '01631628196.mp4', '2021-09-14 11:03:16', '2021-09-14 11:03:16'),
(35, 1, 347, '01631703858.mp4', '2021-09-15 08:04:28', '2021-09-15 08:04:28'),
(36, 1, 367, '01631713131.mp4', '2021-09-15 10:39:00', '2021-09-15 10:39:00'),
(37, 1, 368, '01631715656.mp4', '2021-09-15 11:21:06', '2021-09-15 11:21:06'),
(38, 1, 371, '01631782082.mp4', '2021-09-16 05:48:10', '2021-09-16 05:48:10'),
(40, 1, 63, '01632221242.mp4', '2021-09-21 07:47:31', '2021-09-21 07:47:31'),
(41, 1, 390, '01632408902.mp4', '2021-09-23 11:55:12', '2021-09-23 11:55:12'),
(42, 1, 152, '01632995612.mp4', '2021-09-30 06:53:37', '2021-09-30 06:53:37'),
(43, 1, 403, '01633431097.mp4', '2021-10-05 07:51:43', '2021-10-05 07:51:43'),
(44, 1, 404, '01633438396.mp4', '2021-10-05 09:53:19', '2021-10-05 09:53:19'),
(45, 1, 405, '01633531184.mp4', '2021-10-06 11:39:55', '2021-10-06 11:39:55'),
(46, 1, 317, '01634027934.mp4', '2021-10-12 05:39:04', '2021-10-12 05:39:04'),
(47, 1, 144, '01636191156.mp4', '2021-11-06 16:32:37', '2021-11-06 16:32:37'),
(48, 1, 424, '01637653370.mp4', '2021-11-23 14:42:50', '2021-11-23 14:42:50'),
(49, 1, 425, '01637671018.mp4', '2021-11-23 19:36:59', '2021-11-23 19:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name`, `city_id`, `created_at`, `updated_at`) VALUES
(3, 'ESENYURT', 2, '2020-07-24 05:27:13', '2020-07-24 05:27:13'),
(4, 'BEYLİKDÜZÜ', 2, '2020-07-24 05:27:26', '2020-07-24 05:27:26'),
(5, 'BAĞCILAR', 2, '2020-07-24 05:27:51', '2020-07-24 05:27:51'),
(6, 'BÜYÜKÇEKMECE', 2, '2020-07-24 05:28:02', '2020-07-24 05:28:02'),
(7, 'BAŞAKŞEHİR', 2, '2020-07-24 05:28:15', '2020-07-24 05:28:15'),
(8, 'BAHÇEŞEHİR', 2, '2020-07-24 05:28:25', '2020-07-24 05:28:25'),
(9, 'BASIN EXPRESS', 2, '2020-08-10 05:24:30', '2020-08-10 05:24:30'),
(10, 'KÜÇÜKCEKMECE', 2, '2020-08-10 05:30:18', '2020-08-10 05:30:18'),
(11, 'BAKIRKÖY', 2, '2020-08-10 05:30:36', '2020-08-10 05:30:36'),
(12, 'ZEYTİNBURNU', 2, '2020-08-10 05:30:51', '2020-08-10 05:30:51'),
(13, 'FATİH', 2, '2020-08-10 05:31:07', '2020-08-10 05:31:07'),
(14, 'ŞİŞLİ', 2, '2020-08-10 05:31:17', '2020-08-10 05:31:17'),
(15, 'EYÜP', 2, '2020-08-10 05:31:28', '2020-08-10 05:31:28'),
(16, 'GAZİOSMAN PAŞA', 2, '2020-08-10 05:31:46', '2020-08-10 05:31:46'),
(17, 'TAKSİM', 2, '2020-08-10 05:31:58', '2020-08-10 05:31:58'),
(18, 'MASLAK', 2, '2020-08-10 05:32:23', '2020-08-10 05:32:23'),
(19, 'İSPARTAKULE', 2, '2020-08-10 05:44:56', '2020-08-10 05:44:56'),
(20, 'AVCILAR', 2, '2020-08-10 06:46:28', '2020-08-10 06:46:28'),
(21, 'BAHÇELİEVLER', 2, '2020-08-12 04:39:45', '2020-08-12 04:39:45'),
(22, 'KAĞITHANE', 2, '2020-08-12 04:49:52', '2020-08-12 04:49:52'),
(23, 'ATAKÖY', 2, '2020-08-19 05:34:50', '2020-08-19 05:34:50'),
(24, 'Umraniye', 2, '2020-10-20 10:33:10', '2020-10-20 10:33:10'),
(25, 'Beykoz', 2, '2020-10-20 11:07:09', '2020-10-20 11:07:09'),
(26, 'Mahmutbey', 2, '2020-10-23 12:46:37', '2020-10-23 12:46:37'),
(27, 'Kadıköy', 2, '2020-11-21 06:52:58', '2020-11-21 06:52:58'),
(28, 'Şile', 2, '2020-11-30 05:15:41', '2020-11-30 05:15:41'),
(29, 'Bayrampaşa', 2, '2020-12-10 05:36:04', '2020-12-10 05:36:04'),
(30, 'Topkapi', 2, '2020-12-18 05:14:32', '2020-12-18 05:15:53'),
(31, 'Sancaktepe', 2, '2021-01-14 10:30:17', '2021-01-14 10:30:17'),
(32, 'MALTEPE', 2, '2021-01-14 10:40:05', '2021-01-14 10:40:05'),
(33, 'kartal', 2, '2021-02-15 09:00:19', '2021-02-15 09:00:19'),
(34, 'Ataşehir', 2, '2021-02-24 05:50:29', '2021-02-24 05:50:29'),
(35, 'Merter', 2, '2021-09-17 10:43:31', '2021-09-17 10:43:31'),
(36, 'sarıyer', 2, '2021-09-23 11:45:57', '2021-09-23 11:45:57'),
(37, 'üsküdar', 2, '2021-10-27 14:55:28', '2021-10-27 14:55:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@deidin.com', NULL, '$2y$10$eE3YkqMsPZTK3h6XG.7bYuySaSZHuJrZCaZkbiXdlH/NjQEeIB3EK', 'admin', NULL, '2020-07-21 11:45:48', '2021-09-17 05:48:55'),
(5, 'Monther Al Masri', 'monther@deidin.com.tr', NULL, '$2y$10$/..fyKt1Wst9Qw89jhAasOrV2Lhz0OfjT2rfWSsjfJDEQWyFt8fZa', 'admin', NULL, '2020-07-28 10:38:16', '2020-11-23 11:43:32'),
(13, 'Abdulbasit Bekar', 'abdulbasit.bekar@deidin.com.tr', NULL, '$2y$10$3NJkvPzPu8/.v.vOPCg3bOsicjnKklhxIuKzo0aXP/z4t7Pt7Ceu.', 'reader', 'J9YonRljjtsrkoT1btsZ2bvTPLpgFIM0PKuYHzFK97au4oTpbVSIpgJnPAbs', '2020-10-20 04:01:14', '2021-06-10 09:56:52'),
(16, 'Mustafa', 'mustafa@deidin.com.tr', NULL, '$2y$10$c1JIbuQ34ZA7vMfhHm80muiwmOftZ/xsbapCc7KOU9aQTQ593r9v6', 'admin', '94LiIPVbhxq1V2ySaB6vKRH05x23lMp2U4DSJMpNis1clBC1PgTk85BagqsQ', '2021-02-01 05:31:51', '2021-02-01 05:31:51'),
(17, 'Ahmad', 'ahmad@deidin.com.tr', NULL, '$2y$10$pKtvoSuO8aedx.WPRSz2xO/AQjyqVRlV6v2uLY8neV/v0VJT1VnUO', 'admin', '9pho16dvKX5TsuD1WrxKcnSVMkEYqafmR6fAT00hFpiKXxTMtocAuPHo0GtW', '2021-02-03 04:49:28', '2021-06-04 04:24:53'),
(21, 'test', 'test@deidin.com.tr', NULL, '$2y$10$kTdwslQIOzUwS4FNdS4rEOSdqcHfOznUDhDT81qLEVL5nkwd4bzFO', 'reader', 'kJ9bFQWaSFINt8dbqb6FLIgCM1RFoQaMaF5QjA4cEQTC9NUr2XHR8BCOcFGb', '2021-02-12 11:38:35', '2021-09-17 05:51:22'),
(24, 'oday', 'AHMADOTOL@DEIDIN.COM.TR', NULL, '$2y$10$/Lds.odmYuuP0UCKinyzf.xueFQo37LcjHHcx.3ih1AAryTsRBH4G', 'reader', 'S2H4y0DmmpHLvFzVz2Lk2OARP5JoyrvnXPLXPSiJqdlkX95Ol43W2W3M1d7c', '2021-03-02 05:31:05', '2021-09-20 05:23:55'),
(26, 'mbq', 'mbqazzaz@deidin.com', NULL, '$2y$10$aCmhwSY8ufNY342.5H5g2eRGsD1qkJmnrRpZ5ydxHcBEH2kGyvGKi', 'reader', 'smogF9NfVAyFFwhNGDzLYRKoqRgN5jNbfAHe9aaiP9IzNh0bQyk2cMCb8DAR', '2021-04-08 06:18:01', '2021-11-12 14:21:56'),
(27, 'aswan', 'aswan@deidin.com.tr', NULL, '$2y$10$.WzyVZC5J/YZfhFvT9TQweF0Im.mwiSw2/ahumdhCGJDziLKjR7k.', 'reader', 'rmYYJSa7ewr9GXq2LjQ1wraMt1OvbuiURBFtSv5q6Vlgn2AbtO256OaexKhR', '2021-06-04 04:33:39', '2021-06-04 04:33:50'),
(28, 'doaa', 'doaa@doaa.com', NULL, '$2y$10$bkfBKEU9UeDIq5zKyzjIauxv/osVBS29dyOozYwuzsyzkeWUT9baS', 'reader', NULL, '2021-09-17 05:54:14', '2021-09-17 05:54:14'),
(29, 'beyan', 'beyan@deidin.com.tr', NULL, '$2y$10$9dmxsyNdKhmG.zPC3mG.x.SvwxAytgg3zpf05kIqwo1swa6/0piOe', 'reader', 'Mh6MfsYzo3Uk7lXNCyXiyzVICkZBlnrxfduS7q00yrUB9f2jYSEm396SztN8', '2021-09-23 05:10:30', '2021-09-23 05:10:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instalments`
--
ALTER TABLE `instalments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `number_of_rooms`
--
ALTER TABLE `number_of_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_orders`
--
ALTER TABLE `offer_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offer_orders_responsilble_id_foreign` (`responsilble_id`),
  ADD KEY `offer_orders_region_id_foreign` (`region_id`),
  ADD KEY `offer_orders_number_of_rooms_id_foreign` (`number_of_rooms_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_region_id_foreign` (`region_id`),
  ADD KEY `instalment_id_fk` (`instalment_id_fk`),
  ADD KEY `category_id_fk` (`category_id_fk`);

--
-- Indexes for table `project_google_map`
--
ALTER TABLE `project_google_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_imgs`
--
ALTER TABLE `project_imgs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `project_maps`
--
ALTER TABLE `project_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `project_number_of_rooms`
--
ALTER TABLE `project_number_of_rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_number_of_rooms_project_id_number_of_rooms_id_unique` (`project_id`,`number_of_rooms_id`),
  ADD KEY `project_number_of_rooms_number_of_rooms_id_foreign` (`number_of_rooms_id`);

--
-- Indexes for table `project_videos`
--
ALTER TABLE `project_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regions_city_id_foreign` (`city_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instalments`
--
ALTER TABLE `instalments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `number_of_rooms`
--
ALTER TABLE `number_of_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `offer_orders`
--
ALTER TABLE `offer_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT for table `project_google_map`
--
ALTER TABLE `project_google_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_imgs`
--
ALTER TABLE `project_imgs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=806;

--
-- AUTO_INCREMENT for table `project_maps`
--
ALTER TABLE `project_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `project_number_of_rooms`
--
ALTER TABLE `project_number_of_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1101;

--
-- AUTO_INCREMENT for table `project_videos`
--
ALTER TABLE `project_videos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`instalment_id_fk`) REFERENCES `instalments` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`category_id_fk`) REFERENCES `categories` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `projects_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `project_imgs`
--
ALTER TABLE `project_imgs`
  ADD CONSTRAINT `project_imgs_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project_maps`
--
ALTER TABLE `project_maps`
  ADD CONSTRAINT `project_maps_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project_number_of_rooms`
--
ALTER TABLE `project_number_of_rooms`
  ADD CONSTRAINT `project_number_of_rooms_number_of_rooms_id_foreign` FOREIGN KEY (`number_of_rooms_id`) REFERENCES `number_of_rooms` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `project_number_of_rooms_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_videos`
--
ALTER TABLE `project_videos`
  ADD CONSTRAINT `project_videos_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
