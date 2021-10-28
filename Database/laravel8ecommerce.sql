-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2021 at 03:10 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'quis nisi', 'quis-nisi', '2021-10-27 11:41:00', '2021-10-27 11:41:00'),
(2, 'fugiat est', 'fugiat-est', '2021-10-27 11:41:00', '2021-10-27 11:41:00'),
(3, 'consequatur velit', 'consequatur-velit', '2021-10-27 11:41:00', '2021-10-27 11:41:00'),
(4, 'consequatur sed', 'consequatur-sed', '2021-10-27 11:41:00', '2021-10-27 11:41:00'),
(5, 'dolores adipisci', 'dolores-adipisci', '2021-10-27 11:41:00', '2021-10-27 11:41:00'),
(6, 'sed totam', 'sed-totam', '2021-10-27 11:41:00', '2021-10-27 11:41:00');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_09_21_055042_create_sessions_table', 1),
(8, '2021_10_27_165810_create_categories_table', 2),
(9, '2021_10_27_165830_create_products_table', 3);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outostock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'expedita ipsum', 'expedita-ipsum', 'Voluptatem praesentium atque optio praesentium sunt. Esse rem molestiae laboriosam ullam optio ad. Voluptas et quam cumque. Velit et voluptas iste sint in.', 'Suscipit eaque accusantium commodi sit natus sit corporis. Sed at eum dolor nam. Eveniet enim quo eum est ex. Et sit atque quidem. Totam illum atque exercitationem quaerat earum. Consequatur facere in minus ut doloribus exercitationem nesciunt. Sunt corporis consequuntur et consequatur dolorem dolor molestiae. Et inventore inventore sequi tempore hic dolorem est. Tenetur enim excepturi et ut.', '128.00', NULL, 'DIGI264', 'instock', 0, 175, 'digital_10.jpg', NULL, 1, '2021-10-27 11:41:00', '2021-10-27 11:41:00'),
(2, 'saepe cupiditate', 'saepe-cupiditate', 'Omnis dolores necessitatibus id enim in dolorum. Exercitationem vero ipsum minima odit quos esse tempore. Quibusdam quasi quo esse excepturi.', 'Quia est et incidunt numquam enim beatae porro. Ut maiores aut alias eveniet aut similique. Sit hic voluptate a occaecati beatae officiis. Ut veritatis officiis perferendis nobis. Ea aspernatur vel dolore ut est ut. Ipsam quos earum iste dolor dolor doloremque quia. Non dolorum voluptatem dolorum sequi et. In praesentium facilis odio itaque dolor itaque eum.', '326.00', NULL, 'DIGI393', 'instock', 0, 169, 'digital_7.jpg', NULL, 3, '2021-10-27 11:41:00', '2021-10-27 11:41:00'),
(3, 'sed commodi', 'sed-commodi', 'Iusto quae voluptatem molestiae saepe similique non repudiandae. Fuga ut provident quos tenetur aut dolor. Aliquid praesentium sit nobis ex ut a. Nobis mollitia explicabo est dolores.', 'Excepturi fugiat distinctio quibusdam autem. Ut quisquam labore consequatur. Enim qui nihil optio omnis. Asperiores ea corrupti reiciendis qui non esse sunt. Pariatur nostrum qui voluptas quo assumenda. Occaecati pariatur aspernatur delectus ut fugit vel esse. Maiores harum qui ea ut nihil deserunt ipsam vel. Exercitationem veniam incidunt ullam amet. Animi nihil rerum eaque ipsam molestias possimus. Explicabo non et labore est in maxime. Recusandae modi maxime quo aspernatur ea.', '194.00', NULL, 'DIGI246', 'instock', 0, 176, 'digital_18.jpg', NULL, 2, '2021-10-27 11:41:00', '2021-10-27 11:41:00'),
(4, 'velit temporibus', 'velit-temporibus', 'Quo aperiam corporis et fugit. Non occaecati nihil nihil numquam rerum enim. Est non necessitatibus aspernatur ut laborum sunt. Perferendis ea cum consequatur tempore velit vero numquam.', 'Numquam laboriosam neque minima et in rem sed. Esse modi nihil aut mollitia adipisci. Tenetur nesciunt ipsam voluptatem tempora et aut. Enim odio ducimus amet recusandae ipsa minima. Est sed ea ipsum dolorum eveniet distinctio qui. Magnam est est sit officiis deserunt architecto nam. Voluptate autem dolor reiciendis beatae. Alias vitae omnis alias aut eius alias. Omnis optio est velit ea porro laborum.', '156.00', NULL, 'DIGI406', 'instock', 0, 118, 'digital_1.jpg', NULL, 4, '2021-10-27 11:41:00', '2021-10-27 11:41:00'),
(5, 'sunt accusamus', 'sunt-accusamus', 'Voluptas qui exercitationem rerum ratione ipsa corrupti. Quia fugit quas aut quasi. Impedit laboriosam corrupti autem nihil dolor vero. Dicta quis aliquid vel quod omnis maxime.', 'Fugit ut minus fugit maxime nisi voluptatem esse fugit. Expedita rerum voluptatem expedita nemo voluptas. Rerum asperiores qui quos enim ad alias cum et. Vel occaecati nesciunt similique excepturi. Nobis accusamus quaerat eligendi qui. Id soluta sequi et sit. Voluptas vel ut itaque aperiam voluptatibus voluptatibus eum. Cumque explicabo voluptas enim voluptas fugit quaerat animi. In sint aut quidem reiciendis aut praesentium repudiandae.', '429.00', NULL, 'DIGI227', 'instock', 0, 199, 'digital_15.jpg', NULL, 5, '2021-10-27 11:41:00', '2021-10-27 11:41:00'),
(6, 'tenetur velit', 'tenetur-velit', 'Id sequi ea et et inventore. Et eum reprehenderit dolorem odio. Distinctio modi consequatur rerum omnis dolore.', 'Et voluptate temporibus deleniti quidem veniam suscipit. Nam eligendi architecto commodi molestiae quam quod. Quas iusto earum minima. Velit aut praesentium debitis beatae dolor accusantium voluptas. Pariatur minima quia et ut quis voluptatem delectus exercitationem. Adipisci officiis consequatur ea nihil neque distinctio doloremque. Recusandae maiores est omnis soluta consequatur. Optio officiis assumenda voluptatem nam. Et sunt est velit.', '153.00', NULL, 'DIGI467', 'instock', 0, 127, 'digital_16.jpg', NULL, 1, '2021-10-27 11:41:00', '2021-10-27 11:41:00'),
(7, 'est possimus', 'est-possimus', 'Quod ex fugiat corporis est sunt et. Quis molestias unde sunt quia sint eveniet. Pariatur neque beatae architecto nostrum autem. Provident labore magnam ut expedita qui illum consequatur dolore.', 'Exercitationem debitis laboriosam maiores saepe maiores eligendi blanditiis. Ut aut nulla sit illo iste dolore. Est nihil occaecati facere blanditiis quam commodi cumque. Quod et iusto deserunt incidunt sunt sint est. Omnis aut sunt eos magnam. Accusamus atque saepe maxime aut ab est. Maxime velit est ducimus ex hic eius magni voluptate. Quos aut iste expedita animi vero et ut. Quia voluptatem minima earum ea reiciendis. Modi autem ut ut perferendis.', '84.00', NULL, 'DIGI131', 'instock', 0, 188, 'digital_8.jpg', NULL, 2, '2021-10-27 11:41:01', '2021-10-27 11:41:01'),
(8, 'sit consequatur', 'sit-consequatur', 'Enim itaque consequatur et animi dicta voluptas. Nobis quia reiciendis eius iure qui atque in. Id reprehenderit porro a ut quisquam qui ea laboriosam.', 'Eius autem enim odio aperiam possimus. Aut ullam ducimus sequi non consequuntur voluptatum culpa. Sunt quas quaerat sit fugit. Qui voluptas cumque voluptates harum totam et voluptate. Id veniam quos reprehenderit sit corrupti id. Rerum praesentium alias adipisci tempore molestiae et repellendus error. Itaque quis mollitia nihil omnis perferendis dignissimos error. Est non alias ea nisi. Harum doloribus quisquam ut deleniti.', '161.00', NULL, 'DIGI326', 'instock', 0, 167, 'digital_21.jpg', NULL, 5, '2021-10-27 11:41:01', '2021-10-27 11:41:01'),
(9, 'nobis impedit', 'nobis-impedit', 'Explicabo eligendi nobis nostrum. Animi ea iure non sed voluptatibus quis tempore. Voluptatibus molestiae esse aliquid corporis ut reprehenderit.', 'Deleniti quia provident ut corrupti enim consequatur aliquam. Fuga et quidem libero similique excepturi sit cupiditate. Enim nihil sit tempora veniam atque dolorem sit. Eum qui impedit rerum. Autem aut qui ipsum architecto aut. Autem est sapiente dolore omnis qui dignissimos veniam. Id atque similique pariatur fuga qui. Distinctio quasi voluptatem corporis repudiandae. Deserunt adipisci provident molestiae rem consectetur et facilis.', '482.00', NULL, 'DIGI474', 'instock', 0, 134, 'digital_11.jpg', NULL, 1, '2021-10-27 11:41:01', '2021-10-27 11:41:01'),
(10, 'sint ea', 'sint-ea', 'Ea vero soluta culpa cumque perferendis sint. Accusamus laboriosam minus blanditiis in aperiam accusantium quae. Tempore quo fugit sed saepe a.', 'Harum alias qui laborum minus delectus repellendus. Voluptate autem quo nesciunt molestiae id ut tempora. Est eos ut rerum beatae incidunt architecto omnis. Sapiente dolores velit sint. Quidem dicta in quam velit rerum et. Est rerum in dolores alias at voluptatem ut. Cum voluptatem rem reprehenderit rem unde labore. Iusto vero delectus quaerat debitis ut laudantium vitae ipsum. Ea iste hic exercitationem repellat eius unde assumenda culpa. Sed ducimus corrupti odit delectus facilis et.', '83.00', NULL, 'DIGI485', 'instock', 0, 179, 'digital_22.jpg', NULL, 3, '2021-10-27 11:41:01', '2021-10-27 11:41:01'),
(11, 'officiis et', 'officiis-et', 'Veniam ab dolorem rem consequatur quasi impedit. Enim dolores fugit eaque autem sed. Ut dolores nihil blanditiis totam exercitationem amet. Iste doloremque deleniti quia eius non amet impedit.', 'Eos nemo sapiente eaque voluptatem nihil ducimus. Voluptatem et velit velit id ut in. Enim laboriosam ad et numquam vero ut odit. Deserunt totam beatae quis dolorum voluptatem. Eos pariatur velit dicta laborum error qui. Recusandae doloribus velit consequatur aperiam sit et in. Velit totam rerum modi sunt. Hic reprehenderit velit est dolorem ea aut. Optio quos consequatur at excepturi molestiae. Qui et reprehenderit veniam. Quas est reiciendis amet officiis molestiae rerum.', '308.00', NULL, 'DIGI195', 'instock', 0, 102, 'digital_12.jpg', NULL, 2, '2021-10-27 11:41:01', '2021-10-27 11:41:01'),
(12, 'repudiandae sunt', 'repudiandae-sunt', 'Voluptas ea similique fugit magni distinctio eos. Dolor dolor ut est excepturi voluptatem.', 'Expedita corrupti doloremque delectus ab et. Enim corporis quaerat consequuntur harum aut expedita. Quo voluptas quos atque earum id quam. Sit aliquam quia earum quo aut. Dolorem similique qui hic quo velit neque magnam. Aut sunt nemo sed mollitia. Consequuntur quibusdam cumque natus asperiores aut dolorum. Aut rem nobis autem recusandae architecto aliquam.', '180.00', NULL, 'DIGI200', 'instock', 0, 142, 'digital_13.jpg', NULL, 5, '2021-10-27 11:41:01', '2021-10-27 11:41:01'),
(13, 'sapiente a', 'sapiente-a', 'Deleniti id in beatae. Error mollitia at similique laboriosam. Autem est excepturi aut magnam.', 'Omnis delectus alias a. Ut est laudantium consectetur. A est quae corrupti voluptatem ex est. Aut aspernatur fuga placeat odio. Excepturi quas suscipit facilis consequatur eligendi maiores. Eum at ullam harum suscipit eum temporibus molestias. Non quia quidem error labore nam voluptate. Eum ducimus quia modi facilis error. Veritatis optio neque id tempore aspernatur voluptatibus.', '388.00', NULL, 'DIGI209', 'instock', 0, 167, 'digital_3.jpg', NULL, 5, '2021-10-27 11:41:01', '2021-10-27 11:41:01'),
(14, 'alias in', 'alias-in', 'Saepe et quo ratione quibusdam optio. Voluptatem id optio ratione ut sint aut. Molestiae et amet omnis iure labore quis similique.', 'Saepe non excepturi et ipsam. Magni aut velit molestiae nobis. Dolor aspernatur laudantium fugit inventore numquam pariatur non. Et vel harum eaque quaerat sunt consequuntur sint. Error id numquam perspiciatis. Ad commodi in laudantium ut qui molestias libero. Molestias maxime officia ad animi. Sapiente quos voluptas totam soluta. Nihil illo similique quaerat. Sint accusamus aliquam blanditiis omnis placeat molestiae. Magni aperiam accusantium numquam sed dolorem dolor omnis cupiditate.', '98.00', NULL, 'DIGI487', 'instock', 0, 140, 'digital_2.jpg', NULL, 5, '2021-10-27 11:41:01', '2021-10-27 11:41:01'),
(15, 'labore error', 'labore-error', 'Rerum sapiente explicabo culpa numquam. Vel distinctio ratione fuga aut sequi fugiat qui quidem. Illo nulla ut et.', 'At officia rem ea non qui unde. Esse labore excepturi tempore ratione aut. Quisquam sint illum delectus. Voluptate itaque alias vitae. Odit nihil repudiandae quibusdam cumque et ratione. Magni in sed vero quasi tempora. Odit officiis ipsum rerum aut harum qui qui. Laboriosam quia exercitationem accusantium sit. Iste sint voluptas enim non ut. Enim facilis amet non eaque. Eaque quia voluptatem reiciendis voluptate dolorum. Recusandae architecto laboriosam non numquam esse voluptatem.', '442.00', NULL, 'DIGI340', 'instock', 0, 143, 'digital_14.jpg', NULL, 5, '2021-10-27 11:41:01', '2021-10-27 11:41:01'),
(16, 'quia deserunt', 'quia-deserunt', 'Dolor blanditiis eligendi eius aut vero. Modi quos vel molestiae fugiat unde temporibus iste. Eaque cumque quae dolore ut blanditiis rerum omnis.', 'Vel aut accusamus aut. Ut dolor nihil voluptates aut. Repellendus repellat et iste repellat. Itaque ratione reprehenderit exercitationem harum quia veritatis optio laudantium. Nulla recusandae voluptatibus quisquam. Aspernatur ut repellat voluptas aut rerum. Maiores veniam et facere in aut. Exercitationem vel quas in exercitationem reprehenderit quia non. Et ut nesciunt rem omnis excepturi eos non. Magni officia sit animi sed. Pariatur quis veniam velit iste.', '175.00', NULL, 'DIGI202', 'instock', 0, 182, 'digital_19.jpg', NULL, 3, '2021-10-27 11:41:01', '2021-10-27 11:41:01'),
(17, 'eos et', 'eos-et', 'Deleniti perspiciatis culpa sapiente optio sit quidem molestiae. Et recusandae soluta consequatur illo soluta quasi. Voluptas et eius asperiores sint. Numquam distinctio dicta sint non quis omnis.', 'Ea ipsam aspernatur recusandae omnis autem dolorum qui. Quidem et ut nihil maiores. Ad ipsa tenetur omnis minima est. Dolores aspernatur illum aut officiis doloremque ut quia. Cumque provident alias repellat necessitatibus accusamus. Totam vel harum reprehenderit. Aut iste est quis quae. Numquam perspiciatis libero a. Provident et eum quidem voluptas. Nam suscipit vel quisquam earum atque. Eum dolorem aspernatur ut doloremque laboriosam et omnis.', '28.00', NULL, 'DIGI316', 'instock', 0, 176, 'digital_9.jpg', NULL, 4, '2021-10-27 11:41:01', '2021-10-27 11:41:01'),
(18, 'officiis autem', 'officiis-autem', 'Rerum illum blanditiis illo hic occaecati. Asperiores ea asperiores rerum. Quas illo vero voluptatibus repellat mollitia.', 'Laborum et ea unde asperiores. Est est alias et expedita optio veritatis. Ut eveniet perspiciatis quo nihil eum aut repudiandae aut. Ratione iste omnis dolores. Provident reprehenderit qui aliquid enim. Fugit sit cumque ut et. Doloremque quo omnis voluptatem fugit voluptatem vel molestiae. Et qui dolorem odit tempora quia consectetur.', '401.00', NULL, 'DIGI107', 'instock', 0, 162, 'digital_6.jpg', NULL, 3, '2021-10-27 11:41:01', '2021-10-27 11:41:01'),
(19, 'ea nihil', 'ea-nihil', 'Qui distinctio fugiat recusandae inventore. Aut in nulla quasi distinctio ipsum pariatur. Est iusto assumenda mollitia est.', 'Dolores eligendi velit possimus est aut quis quia. Harum culpa dolorum error modi. Non veritatis ducimus voluptatem in. Repellendus voluptatum accusantium adipisci sit cupiditate. Nulla mollitia quo eum eaque ullam. Quis velit qui cupiditate qui sed ut nesciunt nisi. Qui dolor incidunt maiores dolor sint facere. Quibusdam aliquam mollitia incidunt cum sequi. Animi omnis doloribus ad praesentium provident quas esse.', '448.00', NULL, 'DIGI344', 'instock', 0, 138, 'digital_17.jpg', NULL, 1, '2021-10-27 11:41:01', '2021-10-27 11:41:01'),
(20, 'quia aspernatur', 'quia-aspernatur', 'Id dolores dolor ut iste ut rerum dolor. Quia tempore unde eos saepe placeat quam.', 'Ipsam delectus officia ipsum ut. Explicabo exercitationem accusantium repellendus et cupiditate. Delectus aut qui ut omnis. Nesciunt et quia deleniti omnis. Sit et recusandae libero. Hic deserunt harum laboriosam cupiditate. Fuga sunt natus fuga nulla enim. Ipsum consequuntur sunt aut totam. Nobis cumque maxime ut dolore amet. Est quidem placeat quia impedit numquam possimus. Ex facere nobis corporis ad soluta expedita ab. Ut eos libero vel. Omnis qui libero reiciendis quaerat et ut.', '427.00', NULL, 'DIGI413', 'instock', 0, 104, 'digital_5.jpg', NULL, 4, '2021-10-27 11:41:01', '2021-10-27 11:41:01'),
(21, 'sed aut', 'sed-aut', 'Eaque excepturi voluptas consequatur non odio a culpa. Quisquam voluptatem et a non omnis ipsam illum. Rerum vel rem qui dolorem eos dolorem ipsam est.', 'Aut eos dolores enim laboriosam aspernatur iure. Et magni aut quibusdam alias. Voluptas est mollitia assumenda deleniti. Dolorem laboriosam sint maxime maiores rerum facilis. Delectus occaecati aliquid dolores. Omnis labore ratione corporis repellat enim voluptas. Ea voluptate qui commodi non perspiciatis aut. Id et et est qui vel voluptas molestias fugiat. Commodi qui officiis ut. Et nesciunt minima est porro voluptatem.', '113.00', NULL, 'DIGI182', 'instock', 0, 125, 'digital_20.jpg', NULL, 5, '2021-10-27 11:41:01', '2021-10-27 11:41:01'),
(22, 'sint sint', 'sint-sint', 'Nihil reiciendis nisi esse et consectetur porro. Voluptatum ipsum dolorem itaque exercitationem et. Non culpa ullam quis minima debitis enim tempore.', 'Ex perspiciatis dolor accusamus ab aut veritatis rerum earum. Sunt est et vero et ea in. Distinctio culpa deserunt nihil aut libero eum. Ex vero exercitationem odio iusto aut dolorem. Et quae soluta delectus ut consequatur eum non. Et consectetur est natus beatae eveniet. Beatae mollitia quia magni excepturi. Tempore eos non consequatur hic voluptates libero sequi. Accusamus omnis rerum earum dolorem dolor id. A fugiat placeat iusto sed corporis quibusdam deleniti quia.', '369.00', NULL, 'DIGI330', 'instock', 0, 179, 'digital_4.jpg', NULL, 4, '2021-10-27 11:41:01', '2021-10-27 11:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('YaySSux7FeDXiHEEOFPatZBTXBm1aIuDwlJaWwAr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN2swTzRkUFo5b0xlMWJaaDBEZm5hZ0ZLTGs4bXltZnhoMVVBODk0TiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0Ijt9czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6NDp7czozMjoiZWZiMjZlMmM2YWI2YmQ0ZDEzMjMyODg5MjM1MjJkNGUiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiJlZmIyNmUyYzZhYjZiZDRkMTMyMzI4ODkyMzUyMmQ0ZSI7czoyOiJpZCI7aTo0O3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjE2OiJ2ZWxpdCB0ZW1wb3JpYnVzIjtzOjU6InByaWNlIjtkOjE1NjtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6MTp7czo4OiIAKgBpdGVtcyI7YTowOnt9fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9czozMjoiNDY4Mzk5NTgxMzQyNTA1YzQ3ZjQ2MTViODFiZWRhYTkiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiI0NjgzOTk1ODEzNDI1MDVjNDdmNDYxNWI4MWJlZGFhOSI7czoyOiJpZCI7aTo1O3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjE0OiJzdW50IGFjY3VzYW11cyI7czo1OiJwcmljZSI7ZDo0Mjk7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fXM6MzI6IjM3MGQwODU4NTM2MGY1YzU2OGIxOGQxZjJlNGNhMWRmIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiMzcwZDA4NTg1MzYwZjVjNTY4YjE4ZDFmMmU0Y2ExZGYiO3M6MjoiaWQiO2k6MjtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czoxNjoic2FlcGUgY3VwaWRpdGF0ZSI7czo1OiJwcmljZSI7ZDozMjY7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fXM6MzI6IjAyN2M5MTM0MWZkNWNmNGQyNTc5YjQ5YzRiNmE5MGRhIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiMDI3YzkxMzQxZmQ1Y2Y0ZDI1NzliNDljNGI2YTkwZGEiO3M6MjoiaWQiO2k6MTtzOjM6InF0eSI7aTozO3M6NDoibmFtZSI7czoxNDoiZXhwZWRpdGEgaXBzdW0iO3M6NToicHJpY2UiO2Q6MTI4O3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoxOntzOjg6IgAqAGl0ZW1zIjthOjA6e319czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO319fX19', 1635400370);

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'm', 'mhpohely99@gmail.com', NULL, '$2y$10$Txf.5NjZHj0SR.vIaWTfgObZwVlpqZEQXmq2EadnKlQw6KqlfAI6.', NULL, NULL, 'YH0EvH46xxWtqmDnPg8nAeDuE7dG4fyF8dF64jzx1dLz07ZQcSeeCCOb2kMs', NULL, NULL, 'USR', '2021-09-21 04:38:24', '2021-09-21 04:38:24'),
(2, 'Admin', 'mp3@gmail.com', NULL, '$2y$10$x3VsQD0QN3BbhqgMocscMOgxXBU6jeWxBTyjNa/IWyKa29a9QvlpK', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-09-21 06:07:54', '2021-09-21 06:07:54'),
(3, 'user', 'user@gmail.com', NULL, '$2y$10$Bk/ZusI59pPm93Q5Elj4ju2QlToxgob53apxirfIBGIRyA1Hsn1Ge', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-09-21 06:08:36', '2021-09-21 06:08:36'),
(4, 'Admin', 'admin@gmail.com', NULL, '$2y$10$W9wFdA1EVbsg9FUnCFPryeS64pWJu//dZBtJcXQWh7/gk0CKjjkxq', NULL, NULL, 'UdEzsXaGXgnsNcQ808PtDUda0kqHgehOnwVC2jvyKHHYc1vkTqwox4qJUKpN', NULL, NULL, 'ADM', '2021-09-23 00:27:34', '2021-09-23 00:27:34'),
(5, 'pohely', 'pohely@gmail.com', NULL, '$2y$10$JhSXDxgWTKa65JE0FhR1juNl9wRVs1HqndahE8FoqllpgEtC6ERKW', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-09-23 00:30:43', '2021-09-23 00:30:43'),
(6, 'Marupa Akter', 'mp99@gmail', NULL, '$2y$10$VhpAVrCBtnk92BWPU2NkFuRP.7sVebY5sMv.f92LaToUZEtMXFMZy', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-10-04 01:56:06', '2021-10-04 01:56:06'),
(7, 'Marupa Akter', 'n@gmail.com', NULL, '$2y$10$GDc1..Nd2G9FV14eXEXI5.zxr9FmYBFN5DDrfRPKvdpRGoAWqKWzm', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-10-27 10:48:08', '2021-10-27 10:48:08'),
(8, 'Marupa Akter', 'np3@g', NULL, '$2y$10$3CpbiuXPZb02eANdxWtzAuJoHbZ/YpZhIjTYbS94/00zIirM102Iq', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-10-27 10:54:54', '2021-10-27 10:54:54'),
(9, 'mp', 'mn@gmail.com', NULL, '$2y$10$DdMbuLwwJrKx40W/jT6JuO38xHEdeK8e51eNJjTFloIgNK98lxPje', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-10-27 12:38:56', '2021-10-27 12:38:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
