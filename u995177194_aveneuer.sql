-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 28, 2025 at 05:05 AM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u995177194_aveneuer`
--

-- --------------------------------------------------------

--
-- Table structure for table `advanced`
--

CREATE TABLE `advanced` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `advanced`
--

INSERT INTO `advanced` (`id`, `name`, `status`) VALUES
(1, 'Special certifications', '1'),
(2, 'Groover activity', '1');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `release_date` varchar(255) DEFAULT NULL,
  `total_tracks` varchar(255) DEFAULT NULL,
  `genres` varchar(255) DEFAULT NULL,
  `artist_name` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `external_urls` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `user_id`, `name`, `label`, `release_date`, `total_tracks`, `genres`, `artist_name`, `images`, `external_urls`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Alludu Seenu', 'Aditya Music', '2014-06-29', '6', NULL, NULL, 'https://i.scdn.co/image/ab67616d00001e02bf71abc6a63b28374e64c391', NULL, 'deleted', '2024-05-28 09:21:15', '2024-06-07 04:50:09'),
(3, 1, 'THE ALBUM', 'YG Entertainment', '2020-10-02', '8', NULL, NULL, 'https://i.scdn.co/image/ab67616d00001e021895052324f123becdd0d53d', NULL, NULL, '2024-05-28 11:40:49', '2024-05-28 11:40:49'),
(4, 1, 'album1', 'bitbird', '2018-09-21', '12', NULL, NULL, 'https://i.scdn.co/image/ab67616d00001e02cb9bc0b84a5dc3979fee9abd', NULL, NULL, '2024-05-28 11:52:32', '2024-05-28 11:52:32'),
(5, 1, 'Made in India', 'Magnasound', '1996', '11', NULL, NULL, 'https://i.scdn.co/image/ab67616d0000b2733fc04c8fd6ddea81c83cc00e', NULL, NULL, '2024-05-29 05:28:30', '2024-05-29 05:28:30'),
(6, 8, 'Selezione di Yoga All\'alba', 'Gautama Music', '2024-06-03', '50', NULL, NULL, 'https://i.scdn.co/image/ab67616d0000b273163c11d217f6deebfdacccd2', NULL, NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `artist_id` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `user_id`, `artist_id`, `time`, `date`, `status`, `created_at`, `updated_at`) VALUES
(1, '5', '8', '05:05 PM - 05:35 PM', '06/19/2024', 'Pending', '2024-06-12 11:56:44', '2024-06-12 11:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `arplaylists`
--

CREATE TABLE `arplaylists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `genre_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `arplaylists`
--

INSERT INTO `arplaylists` (`id`, `user_id`, `name`, `image`, `genre_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 9, 'Test', 'just-good-thought-original-imagf97q8huhrjgh.webp', 4, 'test', '2024-05-08 09:51:16', '2024-05-08 09:51:16'),
(2, 9, 'Test', 'just-good-thought-original-imagf97q8huhrjgh.webp', 4, 'test', '2024-05-08 09:55:58', '2024-05-08 09:55:58'),
(3, 9, 'new playlist', 'images.jpg', 5, 'new playlist test', '2024-05-08 10:08:12', '2024-05-08 10:08:12'),
(4, 1, 'Best Bollywood Playlist', 'playlist-img (5).jpg', 2, 'since nobody made a playlist for you, sooo here I\'m with a cyuute playlist for a cute person 🌻', '2024-05-08 10:12:08', '2024-05-08 10:12:08'),
(5, 9, 'summer collection', '9.jpg', 15, 'Testing summer collection', '2024-05-08 10:52:29', '2024-05-08 10:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `biographies`
--

CREATE TABLE `biographies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `biography` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biographies`
--

INSERT INTO `biographies` (`id`, `user_id`, `biography`, `created_at`, `updated_at`) VALUES
(1, 9, 'Derek Johnson, Jr. is a Dove Award-winning rapper, producer, actor, and label head, who has become one of Christian rap’s most sought-after artists in recent years. With an impressive discography that includes top charting albums like Minorville, Reflection, and The Trap, as well as two Grammy Awards for his production work for Lecrae, Derek Minor’s contributions to the genre are unparalleled. He has also collaborated with R.M.G and 116 Clique, and most recently, he has teamed up with Greg James and Thicc James for the EP I’m Lovely. Despite growing up in Michigan and relocating to Tennessee at a young age, Johnson’s passion for music led him towards a career in the industry. He attended Middle Tennessee State University and graduated with a degree in recording industry management. Throughout his career, he has released several mixtapes and albums, including Redemption, which peaked at number eight on Billboard’s gospel chart. In 2011, he released his second album, the conceptual masterpiece, Dying to Live, which topped the Christian chart and reached number two on the gospel chart.', '2024-05-13 06:40:21', '2024-05-13 06:48:27'),
(2, 8, 'American record producer and multi-instrumentalist. He specializes in gospel music and R&B. Campbell originally got his start as a session musician and producer under the tutelage of DJ Quik on his third album Safe + Sound. His work includes production and songwriting credits for Mary Mary, Kanye West, Alicia Keys, Xzibit, Yolanda Adams, Dayna Caddell, Mos Def, Missy Elliott, Kierra Sheard, Brandy, Dave Hollister, Men of Standard, Mario, Kelly Price, Shanice, Dru Hill, Dorinda Clark-Cole, Musiq Soulchild and more. He is also a member of the modern quartet-styled traditional gospel group The Soul Seekers signed to GospoCentric Records. As a record executive, he briefly served as vice president of A&R for Elektra Records. Warryn recently helped produce Australian R&B Singer Jade MacRae’s second album “Get Me Home,” which was released February 2008 in Australia. He recently collaborated with R&B/Pop singer Amerie on a Rock & Roll track titled “Higher” for her 4th album In Love & War.', '2024-05-13 07:22:24', '2024-05-13 07:22:24');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `author_name`, `image`, `content`, `tags`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Hello music WordPress theme', 'Karan', 'blogs/1716966733_blueart.png', '<p>Stunning WP themes for Music Bands that stand out with continuous player. Our Music and Podcast Themes will jumpstart your website as a starting point. No coding skills…</p>', 'UNCATEGORIZED', 'draft', '2024-05-29 07:12:13', '2024-05-29 07:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `status` enum('1','0') DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `status`) VALUES
(1, 'Pop', '1'),
(2, 'Electronic', '1'),
(3, 'Hip-Hop/Rap', '1'),
(4, 'Rock/Punk', '1'),
(5, 'R&B/Soul', '1'),
(6, 'Folk/Acoustic', '1'),
(7, 'World', '1'),
(8, 'Classical/Instrumental', '1'),
(9, 'Metal', '1'),
(10, 'Jazz', '1'),
(11, 'Reggae', '1'),
(12, 'Popular Music', '1');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `status`) VALUES
(1, 'Europe', '1'),
(2, 'North America', '1'),
(3, 'South America', '1'),
(4, 'Asia', '1'),
(5, 'Africa', '1'),
(6, 'Oceania', '1');

-- --------------------------------------------------------

--
-- Table structure for table `curators`
--

CREATE TABLE `curators` (
  `id` int(11) NOT NULL,
  `curator_name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `curators`
--

INSERT INTO `curators` (`id`, `curator_name`, `status`) VALUES
(1, 'Can give visibility and media coverage', '1'),
(2, 'Can offer collaboration opportunities', '1'),
(3, 'Provide detailed advice', '1');

-- --------------------------------------------------------

--
-- Table structure for table `curator_options`
--

CREATE TABLE `curator_options` (
  `id` int(11) NOT NULL,
  `curator_id` int(11) NOT NULL,
  `curator_options` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `curator_options`
--

INSERT INTO `curator_options` (`id`, `curator_id`, `curator_options`) VALUES
(1, 1, 'Playlist Curators'),
(2, 1, 'Media Outlets'),
(3, 1, 'Radio Stations'),
(4, 1, 'Journalists'),
(5, 1, 'Social Media Influencers'),
(6, 2, 'Labels'),
(7, 2, 'Managers'),
(8, 2, 'Concert & Tour Bookers'),
(9, 2, 'Publishers'),
(10, 2, 'Sync Supervisors'),
(11, 2, 'Springboards'),
(12, 3, 'Mentors'),
(13, 3, 'Sound Experts');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `questions` text NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `user_id`, `questions`, `answer`, `created_at`, `updated_at`) VALUES
(1, '1', 'Does AVENUEAR take commissions or royalties?', 'We strive to maintain a culture of transparency and fairness in our platform. We take pride in offering you a service that is completely unbiased, devoid of any commission, fees, or royalty splits, and designed to ensure that you receive the full remuneration for your work. To improve and sustain the quality of our platform, we charge a nominal membership fee that enables you to enjoy extraordinary access and a premium fast feedback option. We are committed to not profiting from any musician utilizing our platform to secure employment. We appreciate your confidence in us, and we are dedicated to helping you achieve your goals.', '2024-05-29 09:00:31', '2024-05-29 09:00:31'),
(2, '1', 'Could I really get a record, publishing, or production deal?', 'AVENUEAR is a platform that connects artists with top music executives, and we take pride in our digital delivery system that enables budding artists like you to showcase your artistry and productions worldwide. The executives that receive your submissions have the discretion to contact you directly or send someone from their team to offer a deal on their behalf. At AVENUEAR, we respect your ownership rights, and any dealings that might happen between you and the executive who contacted you would be entirely personal. Our executives are experienced in signing world-renowned artists, and if you’re lucky enough to secure a deal with them, we would love to congratulate you by featuring your success on our website. Should you have any questions, please don’t hesitate to reach out to us.', '2024-05-29 09:26:33', '2024-05-29 09:26:33');

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` int(11) NOT NULL,
  `follower_id` int(11) DEFAULT NULL,
  `following_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `follower_id`, `following_id`, `created_at`) VALUES
(7, 5, 8, '2024-04-01 11:54:56'),
(8, 5, 1, '2024-04-01 12:58:19'),
(11, 8, 1, '2024-04-03 09:54:07'),
(12, 1, 5, '2024-04-15 05:00:45'),
(13, 5, 5, '2024-04-26 09:12:29'),
(15, 8, 5, '2024-05-13 10:57:46'),
(16, 1, 9, '2024-06-05 04:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `invites`
--

CREATE TABLE `invites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invite_by` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invites`
--

INSERT INTO `invites` (`id`, `invite_by`, `first_name`, `email`, `role`, `created_at`, `updated_at`) VALUES
(1, '8', 'test', 'test@gmail.com', 'Playlist Curator', '2024-05-16 12:17:19', '2024-05-16 12:17:19'),
(2, '8', 'test', 'test@gmail.com', 'Fans Manager', '2024-05-16 12:19:01', '2024-05-16 12:19:01'),
(3, '8', 'invitor', 'test1@gmail.com', 'Label Manager', '2024-05-16 12:25:20', '2024-05-16 12:25:20'),
(4, '8', 'ar', 'ar@gmail.com', 'a&r', '2024-05-23 09:05:09', '2024-05-23 09:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_20_054604_create_category_table', 2),
(6, '2024_05_13_055355_create_biographies_table', 3),
(7, '2024_05_16_055229_create_invites_table', 4),
(8, '2024_05_19_093309_create_schedule_table', 5),
(9, '2024_05_21_103400_create_appointments_table', 6),
(10, '2024_05_27_042257_create_faqs_table', 7),
(11, '2024_05_27_042318_create_blogs_table', 7),
(12, '2024_05_27_042421_create_privacies_table', 7),
(13, '2024_05_27_042504_create_termsandconditions_table', 7),
(14, '2024_05_27_121907_create_tracks_table', 8),
(15, '2024_05_27_122913_create_spotifyplaylists_table', 9),
(16, '2024_05_28_072031_create_albums_table', 10),
(17, '2024_06_07_094734_create_pitchamounts_table', 11),
(18, '2024_06_10_054701_create_schedules_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `next_play`
--

CREATE TABLE `next_play` (
  `id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `playlist_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `next_play`
--

INSERT INTO `next_play` (`id`, `song_id`, `user_id`, `playlist_id`) VALUES
(10, 2, 1, NULL),
(11, 3, 1, NULL),
(13, 6, 1, NULL),
(15, 7, 9, NULL),
(16, 8, 9, NULL),
(17, 7, 5, NULL),
(18, 8, 5, NULL),
(21, 258, 1, NULL),
(22, 14, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_transactions`
--

CREATE TABLE `payment_transactions` (
  `id` int(11) NOT NULL,
  `transaction_id` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` enum('success','failed','processing') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pitchamounts`
--

CREATE TABLE `pitchamounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pitch_amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pitchamounts`
--

INSERT INTO `pitchamounts` (`id`, `user_id`, `pitch_amount`, `created_at`, `updated_at`) VALUES
(1, 1, '600', '2024-06-07 12:42:21', '2024-06-07 12:52:38'),
(2, 8, '300', '2024-06-07 12:52:13', '2024-06-07 12:52:13');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `playlist_name` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `user_id`, `playlist_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Diljit POP', '2024-04-15 10:36:38', '2024-04-15 10:36:38'),
(5, 1, 'Garry Sandhu', '2024-04-22 06:23:09', '2024-04-22 06:23:09'),
(7, 1, 'Punjabi Songs', '2024-04-23 00:27:57', '2024-04-23 00:27:57'),
(8, 1, 'New testing', '2024-04-24 00:25:19', '2024-04-24 00:25:19'),
(9, 1, 'Karan Aujla playlist', '2024-04-24 06:43:17', '2024-04-24 06:43:17'),
(10, 5, 'My First Playlist', '2024-04-26 04:12:13', '2024-04-26 04:12:13'),
(11, 9, 'test', '2024-05-08 06:11:04', '2024-05-08 06:11:04'),
(12, 9, 'ssss', '2024-05-08 12:17:44', '2024-05-08 12:17:44'),
(13, 5, 'harkirat liked song', '2024-06-06 09:43:59', '2024-06-06 09:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_songs`
--

CREATE TABLE `playlist_songs` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `playlist_songs`
--

INSERT INTO `playlist_songs` (`id`, `playlist_id`, `song_id`, `user_id`) VALUES
(1, 5, 14, 8),
(2, 5, 13, 8),
(3, 7, 14, 1),
(4, 9, 10, 1),
(5, 8, 14, 1),
(7, 1, 7, 1),
(9, 7, 8, 1),
(10, 9, 7, 1),
(12, 10, 13, 5),
(13, 11, 10, 9),
(14, 12, 10, 9),
(15, 10, 8, 5),
(16, 10, 10, 5),
(17, 7, 7, 1),
(18, 9, 13, 1),
(19, 13, 13, 5);

-- --------------------------------------------------------

--
-- Table structure for table `privacies`
--

CREATE TABLE `privacies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacies`
--

INSERT INTO `privacies` (`id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, '<h2><strong>Who we are</strong></h2><p>Our website address is: http://flatfull.com/</p><h3><strong>What personal data we collect and why we collect it</strong></h3><h4><strong>Comments</strong></h4><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h4><strong>media</strong></h4><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h4><strong>Contact-forms</strong></h4><h4><strong>Cookies</strong></h4><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select “Remember Me”, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h4><strong>Embedded content from other websites</strong></h4><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h4><strong>Analytics</strong></h4><h3><strong>Who we share your data with</strong></h3><h3><strong>How long we retain your data</strong></h3><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h3><strong>What rights you have over your data</strong></h3><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h3><strong>Where we send your data</strong></h3><p>Visitor comments may be checked through an automated spam detection service.</p><ul><li><a href=\"https://avenuear.itinfonity.net/public/privacy-policy#comment\">Comments</a></li><li><a href=\"https://avenuear.itinfonity.net/public/privacy-policy#media\">Media</a></li><li><a href=\"https://avenuear.itinfonity.net/public/privacy-policy#cookies\">Cookies</a></li><li><a href=\"https://avenuear.itinfonity.net/public/privacy-policy#embed\">Embed content</a></li><li><a href=\"https://avenuear.itinfonity.net/public/privacy-policy#analytics\">Analytics</a></li></ul>', '2024-05-29 08:44:05', '2024-05-29 08:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `dateType` varchar(255) DEFAULT NULL,
  `date` text DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `slots` varchar(255) DEFAULT NULL,
  `pitch_amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `user_id`, `dateType`, `date`, `start_time`, `end_time`, `duration`, `timezone`, `slots`, `pitch_amount`, `created_at`, `updated_at`) VALUES
(1, '8', 'single', '[\"2024-06-17\"]', '[\"18:10\",\"23:10\"]', '[\"22:10\",\"23:50\"]', '30', 'cst', NULL, '1200', '2024-06-12 11:34:55', '2024-06-12 13:01:46'),
(2, '1', 'range', '[\"2024-06-12\",\"2024-06-13\",\"2024-06-14\",\"2024-06-15\",\"2024-06-16\",\"2024-06-17\",\"2024-06-18\",\"2024-06-19\",\"2024-06-20\",\"2024-06-21\",\"2024-06-22\",\"2024-06-23\",\"2024-06-24\",\"2024-06-25\",\"2024-06-26\",\"2024-06-27\",\"2024-06-28\",\"2024-06-29\",\"2024-06-30\",\"2024-07-01\",\"2024-07-02\",\"2024-07-03\",\"2024-07-04\",\"2024-07-05\",\"2024-07-06\",\"2024-07-07\",\"2024-07-08\",\"2024-07-09\",\"2024-07-10\",\"2024-07-11\",\"2024-07-12\",\"2024-07-13\",\"2024-07-14\",\"2024-07-15\",\"2024-07-16\",\"2024-07-17\",\"2024-07-18\",\"2024-07-19\",\"2024-07-20\",\"2024-07-21\"]', '[\"17:15\"]', '[\"23:15\"]', '30', 'mst', NULL, '1500', '2024-06-12 11:44:02', '2024-06-12 11:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `schedules1`
--

CREATE TABLE `schedules1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `timeZone` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules1`
--

INSERT INTO `schedules1` (`id`, `user_id`, `day`, `start_time`, `end_time`, `timeZone`, `duration`, `created_at`, `updated_at`) VALUES
(3, '8', '[\"monday\",\"thursday\"]', '12:00', '17:00', 'cst', '30', '2024-05-20 07:29:26', '2024-05-20 07:29:26'),
(4, '1', '[\"monday\",\"tuesday\"]', '17:04', '22:30', 'est', '45', '2024-05-20 11:35:18', '2024-05-20 11:35:18'),
(5, '8', '[\"monday\",\"thursday\"]', '17:58', '22:58', 'cst', '45 Minute', '2024-05-20 12:28:46', '2024-05-20 12:28:46'),
(6, '8', '[\"wednesday\"]', '18:11', '23:01', 'est', '45', '2024-05-21 12:41:26', '2024-05-21 12:41:26'),
(7, '8', '[\"tuesday\"]', '07:02', '10:02', 'mst', '1 Hour', '2024-05-21 14:30:19', '2024-05-21 14:30:19'),
(8, '8', '[\"tuesday\"]', '07:02', '10:02', 'mst', '1 Hour', '2024-05-21 14:30:19', '2024-05-21 14:30:19'),
(9, '1', '[\"wednesday\",\"friday\"]', '12:54', '16:54', 'est', '30 Minute', '2024-05-22 07:24:22', '2024-05-22 07:24:22'),
(10, '8', '[\"monday\",\"tuesday\"]', '20:30', '22:30', 'est', '45 Minute', '2024-05-22 13:02:38', '2024-05-22 13:02:38'),
(11, '1', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '10:00', '12:00', 'cst', '30 Minute', '2024-05-23 12:50:59', '2024-05-23 12:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `upload_by` int(11) NOT NULL,
  `username` text NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `song_url` text DEFAULT NULL,
  `track_image` text DEFAULT NULL,
  `release_date` varchar(255) DEFAULT NULL,
  `location` enum('youtube','spotify','soundcloud','others') DEFAULT NULL,
  `status` enum('banned','active','not_release','not_active') NOT NULL DEFAULT 'active',
  `likes` int(11) DEFAULT 0,
  `updated_by` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `upload_by`, `username`, `title`, `language`, `genre`, `description`, `song_url`, `track_image`, `release_date`, `location`, `status`, `likes`, `updated_by`) VALUES
(7, 8, 'itdev', 'Case (Diljit Dosanjh)', NULL, 'Pop rock', 'For testing purpose', 'https://www.youtube.com/watch?v=g-Ij0idc_dk', 'https://i.ytimg.com/vi/g-Ij0idc_dk/sddefault.jpg', '2024-03-26', 'youtube', 'active', 0, NULL),
(8, 8, 'itdev', 'Lover (Diljit Dosanjh)', NULL, 'Pop rock', 'This is testing purpose', 'https://www.youtube.com/watch?v=mH_LFkWxpI0', 'https://i.ytimg.com/vi/mH_LFkWxpI0/sddefault.jpg', '2024-03-28', 'youtube', 'active', 0, NULL),
(10, 8, 'itdev', 'SOFTLY (Official Music Video) KARAN AUJLA', NULL, 'Dream pop', 'Softly\r\nKaran Aujla, Ikky\r\nMaking Memories', 'https://www.youtube.com/watch?v=cWMxCE2HTag', 'https://i.ytimg.com/vi/cWMxCE2HTag/sddefault.jpg', '2024-03-27', 'youtube', 'active', 0, NULL),
(13, 1, 'satwinder', 'On Top (Full Video) Karan Aujla', NULL, 'Pop rock', 'tetsinggjgj', 'https://www.youtube.com/watch?v=aFWDOFg7X2A', 'https://i.ytimg.com/vi/aFWDOFg7X2A/sddefault.jpg', '2024-03-27', 'youtube', 'active', 0, NULL),
(14, 8, 'itdev', 'Sanwla Rung - Garry Sandhu', NULL, 'Dream pop', 'Sanwla Rung (Official Video) - Garry Sandhu | New Punjabi Song 2024 | Latest Punjabi Song | LM Folk', 'https://www.youtube.com/watch?v=sR-r7GhnbXE', 'https://i.ytimg.com/vi/sR-r7GhnbXE/sddefault.jpg', '2024-03-02', 'youtube', 'active', 0, NULL),
(21, 5, 'harkirat', 'Akon - Smack That ft. Eminem', NULL, 'R&B/Soul', 'Describe overview of your project and the potential opportunities you aim to achieve', 'https://www.youtube.com/watch?v=bKDdT_nyP54', 'https://i.ytimg.com/vi/bKDdT_nyP54/sddefault.jpg', '2024-04-26', 'youtube', 'active', 0, NULL),
(22, 1, 'satwinder', 'Clean Bandit - Rockabye (feat. Sean Paul & Anne-Marie)', NULL, 'Pop rock', 'Clean Bandit - Rockabye (feat. Sean Paul & Anne-Marie) [Official Video]', 'https://www.youtube.com/watch?v=papuvlVeZg8', 'https://i.ytimg.com/vi/papuvlVeZg8/sddefault.jpg', '2024-04-30', 'youtube', 'active', 0, NULL),
(23, 9, 'suneha', 'feeling', NULL, 'Pop rock', 'test', 'https://www.youtube.com/watch?v=ZG29GwGDHXg', 'https://i.ytimg.com/vi/ZG29GwGDHXg/sddefault.jpg', '2024-05-08', 'youtube', 'active', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `song_details`
--

CREATE TABLE `song_details` (
  `id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `artist_name` varchar(255) DEFAULT NULL,
  `label_name` text DEFAULT NULL,
  `genres` text DEFAULT NULL,
  `curators` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `advanced` text DEFAULT NULL,
  `describes` text DEFAULT NULL,
  `have_manager` enum('yes','no') NOT NULL DEFAULT 'no',
  `organisation` text DEFAULT NULL,
  `organisation_other` text DEFAULT NULL,
  `promo` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `song_details`
--

INSERT INTO `song_details` (`id`, `song_id`, `artist_name`, `label_name`, `genres`, `curators`, `country`, `advanced`, `describes`, `have_manager`, `organisation`, `organisation_other`, `promo`, `created_at`) VALUES
(2, 7, 'Diljit Dosanjh', 'Speed Records', '[\"Indie Pop\",\"Pop rock\"]', NULL, '[\"France\",\"Italy\"]', NULL, 'For testing purpose', 'yes', 'T-Series', 'T-Series-Punjab', 'TEST150', '2024-03-26 07:52:00'),
(3, 8, 'Diljit Dosanjh', 'Speed Records', '[\"Indie Pop\",\"Pop rock\"]', NULL, '[\"India\"]', NULL, 'This is testing purpose', 'yes', 'T-Series', 'T-Series-Punjab', 'TEST200', '2024-03-26 07:56:19'),
(4, 10, 'KARAN AUJLA', 'LA Music Promotions Co', '[\"Pop rock\"]', NULL, '[\"Mexico\",\"India\"]', NULL, 'Softly\nKaran Aujla, Ikky\nMaking Memories', 'yes', 'Rehaan Records', 'Rehaan', 'DIAMOND150', '2024-03-27 04:43:24'),
(5, 13, 'Karan Aujla', 'Rehan', '[\"Indie Pop\",\"Pop rock\"]', NULL, '[\"India\",\"Israel\"]', NULL, 'tetsinggjgj', 'yes', 'Rehan', 'Rehan', 'DIAMOND150', '2024-03-27 05:23:53'),
(6, 14, 'Garry Sandhu', 'Fresh Media', '[\"Indie Pop\",\"Pop rock\",\"Dance Pop\",\"Electropop\",\"Dream pop\",\"Synthpop\",\"International pop\",\"Lofi bedroom\",\"Commercial / Mainstream\",\"Pop soul\",\"Psychedelic Pop\"]', NULL, '[\"United States\",\"Canada\",\"India\"]', NULL, 'Sanwla Rung (Official Video) - Garry Sandhu | New Punjabi Song 2024 | Latest Punjabi Song | LM Folk', 'yes', 'Fresh Media Records', 'Fresh Media Records', 'DIAMOND150', '2024-04-03 04:11:26'),
(13, 21, 'Akon', NULL, '[\"Indie Pop\",\"Pop rock\",\"Dance Pop\",\"Electropop\",\"Dream pop\",\"Synthpop\",\"International pop\",\"Lofi bedroom\",\"Commercial / Mainstream\",\"Pop soul\"]', NULL, '[\"France\",\"United Kingdom\",\"United States\",\"Mexico\",\"India\"]', NULL, 'Describe overview of your project and the potential opportunities you aim to achieve', 'yes', NULL, NULL, 'DIAMOND150', '2024-04-26 04:35:47'),
(14, 22, 'Rockabye', NULL, '[\"Indie Pop\",\"Pop rock\",\"Dance Pop\",\"Ambient\",\"Synthwave\"]', NULL, '[\"France\",\"United Kingdom\",\"Italy\",\"Spain\",\"Germany\",\"Argentina\",\"Chile\",\"Peru\"]', NULL, 'Clean Bandit - Rockabye (feat. Sean Paul & Anne-Marie) [Official Video]', 'yes', NULL, NULL, NULL, '2024-04-30 07:10:25'),
(15, 23, 'test', NULL, '[\"Indie Pop\"]', NULL, '[]', NULL, 'test', 'yes', 'testtttt', 'tessss', NULL, '2024-05-08 12:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `song_likes`
--

CREATE TABLE `song_likes` (
  `like_id` bigint(20) UNSIGNED NOT NULL,
  `song_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `song_likes`
--

INSERT INTO `song_likes` (`like_id`, `song_id`, `user_id`, `created_at`) VALUES
(16, 8, 8, '2024-04-03 10:46:33'),
(17, 13, 8, '2024-04-03 10:51:37'),
(22, 10, 8, '2024-04-03 13:21:38'),
(25, 8, 1, '2024-04-15 09:26:14'),
(55, 7, 5, '2024-04-26 09:44:27'),
(91, 7, 1, '2024-05-01 05:52:09'),
(96, 7, 9, '2024-05-08 12:23:52'),
(98, 13, 1, '2024-05-13 10:05:32'),
(125, NULL, 8, '2024-06-04 13:15:10'),
(126, 3, 5, '2024-06-05 12:46:07'),
(128, 10, 5, '2024-06-06 10:44:31'),
(131, 4, 5, '2024-06-06 11:07:20'),
(132, 4, 8, '2024-06-06 11:08:18'),
(133, 1, 1, '2024-06-06 11:31:37'),
(134, 6, 1, '2024-06-07 06:34:28'),
(135, 5, 1, '2024-06-07 06:34:29'),
(136, 3, 9, '2024-06-07 12:22:39'),
(137, 4, 9, '2024-06-07 12:22:43'),
(138, 6, 9, '2024-06-07 12:22:54'),
(139, 0, 9, '2024-06-07 12:24:12'),
(140, 3, 1, '2024-06-12 08:43:08'),
(142, 14, 8, '2024-06-17 06:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `spotifyplaylists`
--

CREATE TABLE `spotifyplaylists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `followers` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `owner_url` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `playlist_name` varchar(255) DEFAULT NULL,
  `total_tracks` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spotifyplaylists`
--

INSERT INTO `spotifyplaylists` (`id`, `user_id`, `followers`, `images`, `owner_name`, `owner_url`, `url`, `label`, `playlist_name`, `total_tracks`, `status`, `created_at`, `updated_at`) VALUES
(6, '1', NULL, 'https://mosaic.scdn.co/300/ab67616d00001e0231760346883afec1e625c2eaab67616d00001e0294f35fe7bbc98eae56a081f7ab67616d00001e029ba77e3ca38205c4dbfc5e8bab67616d00001e02ee6f50defab9e44229e5d9d3', 'Ryan Boaventura', NULL, 'https://avenuear.itinfonity.net/public/store-playlist', NULL, 'Playlist baco Exu do blues', '24', 'pending', '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(7, '1', NULL, 'https://mosaic.scdn.co/300/ab67616d00001e020d08061493c378a4340e711fab67616d00001e0265ce8c712e4fb894bc88461bab67616d00001e029bb2d30b01ac2cada8a8ad03ab67616d00001e02ea9628fd8a1ce69b745acfc3', 'harkirat sandhu', NULL, 'https://avenuear.itinfonity.net/public/store-playlist', NULL, 'My recommendation playlist', '4', 'pending', '2024-05-28 07:32:03', '2024-05-28 07:32:03'),
(8, '1', NULL, 'https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da84434d505c132daa104f991f41', 'anku.jots', NULL, 'https://avenuear.itinfonity.net/public/store-playlist', NULL, 'PREMALU', '6', 'pending', '2024-05-28 12:25:37', '2024-05-28 12:25:37'),
(9, '1', NULL, 'https://i.scdn.co/image/ab67616d00001e027d46ff19532fdba734bfd4e0', 'Navcheema', NULL, 'https://avenuear.itinfonity.net/public/store-playlist', NULL, 'Pathan all songs', '5', 'deleted', '2024-05-28 12:33:13', '2024-06-07 05:19:54'),
(10, '1', NULL, 'https://i.scdn.co/image/ab67616d00001e02b6101c6708a78ec6300abe3c', 'Hamzi💸🌔', NULL, 'https://avenuear.itinfonity.net/public/store-playlist', NULL, 'Pagol - Slowed & Reverb', '4', 'pending', '2024-05-29 05:26:34', '2024-05-29 05:26:34'),
(11, '1', NULL, 'https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da8435cf587edd6ecb3d0180a637', 'Vishwajeet Pavan', NULL, 'https://avenuear.itinfonity.net/public/store-playlist', NULL, 'Best English Songs', '100', 'pending', '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(12, '1', NULL, 'https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da84202f1421f1eb8b46b760267c', 'Hiroto Songs', NULL, 'https://avenuear.itinfonity.net/public/store-playlist', NULL, 'Aye haye oye hoye  (Bado Badi)', '10', 'deleted', '2024-05-29 10:39:31', '2024-06-07 05:09:04'),
(13, '8', NULL, 'https://mosaic.scdn.co/640/ab67616d00001e021563e3ab78422f323f54c57fab67616d00001e027fb3c81257f9398123256f84ab67616d00001e02badc10f3684a57f23c26f6c1ab67616d00001e02ca5585b4e97cd9deeafb5c63', 'Prerna Shinde', NULL, 'https://avenuear.itinfonity.net/public/store-playlist', NULL, 'Motivational songs for girls', '16', 'pending', '2024-06-04 04:53:04', '2024-06-04 04:53:04'),
(14, '1', NULL, 'https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da848d0ce13d55f634e290f744ba', 'JMPerez²', NULL, 'https://avenuear.itinfonity.net/public/store-playlist', NULL, 'Spotify Web API Testing playlist', '5', 'pending', '2024-06-07 05:45:19', '2024-06-07 05:45:19');

-- --------------------------------------------------------

--
-- Table structure for table `sub_advance`
--

CREATE TABLE `sub_advance` (
  `id` int(11) NOT NULL,
  `advance_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_advance`
--

INSERT INTO `sub_advance` (`id`, `advance_id`, `name`, `status`) VALUES
(1, 1, 'Groover activity', '1'),
(2, 1, 'Very impactful', '1'),
(3, 1, 'Certified Spotify playlist curator', '1'),
(4, 1, 'Certified YouTube channel', '1'),
(5, 2, 'High opportunity rate', '1'),
(6, 2, 'High quality feedback', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `sub_category`, `status`) VALUES
(1, 1, 'Indie Pop', '1'),
(2, 1, 'Pop rock', '1'),
(3, 1, 'Dance Pop', '1'),
(4, 1, 'Electropop', '1'),
(5, 1, 'Dream pop', '1'),
(6, 1, 'Synthpop', '1'),
(7, 1, 'International pop', '1'),
(8, 1, 'Lofi bedroom', '1'),
(9, 1, 'Commercial / Mainstream', '1'),
(10, 1, 'Pop soul', '1'),
(11, 1, 'Psychedelic Pop', '1'),
(12, 1, 'Progressive Pop', '1'),
(13, 1, 'K-Pop / J-Pop', '1'),
(14, 1, 'Hyperpop', '1'),
(15, 1, 'Latin Pop', '1'),
(16, 2, 'Dance Music', '1'),
(17, 2, 'House Music', '1'),
(18, 2, 'Electronica', '1'),
(19, 2, 'Deep House', '1'),
(20, 2, 'Chill Out', '1'),
(21, 2, 'Techno', '1'),
(22, 2, 'Ambient', '1'),
(23, 2, 'Synthwave', '1'),
(24, 2, 'Future House', '1'),
(25, 2, 'Disco', '1'),
(26, 2, 'Beats / Lo-Fi', '1'),
(27, 2, 'French House', '1'),
(28, 2, 'Experimental Electronic', '1'),
(29, 2, 'Bass Music', '1'),
(30, 2, 'Nu-Disco', '1'),
(33, 3, 'hip-Hop', '1'),
(34, 3, 'Chill / Lo-Fi hip-Hop', '1'),
(35, 4, 'Alternative Rock', '1'),
(36, 4, 'Indie Rock', '1'),
(37, 5, 'R&B', '1'),
(38, 5, 'Soul', '1'),
(39, 6, 'Indie Folk', '1'),
(40, 6, 'Singer Songwriter', '1'),
(41, 7, 'Latin Music', '1'),
(42, 7, 'Dancehall / Reggaeton', '1'),
(43, 8, 'Instrumental', '1'),
(44, 8, 'Film Music', '1'),
(45, 9, 'Metal / Heavy Metal', '1'),
(46, 9, 'Hardcore', '1'),
(47, 10, 'Modern Jazz', '1'),
(48, 10, 'Jazz Fusion', '1'),
(49, 11, 'Reggae', '1'),
(50, 11, 'Dub', '1'),
(51, 12, 'Nouvelle Scene', '1'),
(52, 12, 'Chanson Française/Variété', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sub_countries`
--

CREATE TABLE `sub_countries` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_countries`
--

INSERT INTO `sub_countries` (`id`, `country_id`, `country_name`, `status`) VALUES
(1, 1, 'France', '1'),
(2, 1, 'United Kingdom', '1'),
(3, 1, 'Italy', '1'),
(4, 1, 'Spain', '1'),
(5, 1, 'Germany', '1'),
(6, 1, 'Netherlands', '1'),
(7, 1, 'Belgium', '1'),
(8, 2, 'United States', '1'),
(9, 2, 'Mexico', '1'),
(10, 2, 'Canada', '1'),
(11, 2, 'Costa Rica', '1'),
(12, 2, 'Dominican Republic', '1'),
(13, 2, 'Guatemala', '1'),
(14, 2, 'El Salvador', '1'),
(15, 3, 'Brazil', '1'),
(16, 3, 'Argentina', '1'),
(17, 3, 'Chile', '1'),
(18, 3, 'Peru', '1'),
(19, 4, 'India', '1'),
(20, 4, 'Israel', '1'),
(21, 4, 'Philippines', '1'),
(22, 4, 'Japan', '1'),
(23, 5, 'South Africa', '1'),
(24, 5, 'Nigeria', '1'),
(25, 5, 'Ghana', '1'),
(26, 5, 'Kenya', '1'),
(27, 6, 'South Africa', '1'),
(28, 6, 'Nigeria', '1'),
(29, 6, 'Ghana', '1'),
(30, 6, 'Kenya', '1');

-- --------------------------------------------------------

--
-- Table structure for table `termsandconditions`
--

CREATE TABLE `termsandconditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `termsandconditions`
--

INSERT INTO `termsandconditions` (`id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, '1', '<h2>Terms &amp; Services</h2><p>By visiting, accessing, or using our site, you signify that you have the right, authority and capacity to enter into this Agreement, that you have read and understand this Agreement, and that YOU AGREE TO ABIDE BY ALL OF THE TERMS AND CONDITIONS OF THIS AGREEMENT, INCLUDING AUTO-RENEWALS OF YOUR SUBSCRIPTION AND PROVISIONS GOVERNING DISPUTE RESOLUTION. PLEASE READ THESE TERMS CAREFULLY. IF YOU DO NOT AGREE, DO NOT ACCESS OR USE THE SERVICES.</p><h4><strong>Introduction</strong></h4><p>This document (the “Terms”) together with the&nbsp;U.S. Privacy Policy&nbsp;(collectively the “Agreement”) sets out the terms and conditions governing visits, access and use of the service by the end user (“you”). The term “you” includes additional registered users whenever permitted under the applicable subscription, visitors, and others who access or use any of the Services.</p><p>The “Services” means the service branded our site, that are compatible for similarly situated digital music services. These may include, but are not limited to websites and applications for desktops, tablets and mobile handsets, set-top boxes and stereo equipment. The Services also include your ability to edit certain Service Content.</p><h4><strong>Content restrictions</strong></h4><p>The Services contains content, such as sound recordings, audiovisual works, other video or audio works, clips, images, graphics, text, software, works of authorship, files, documents, applications, artwork, trademarks, trade names, metadata, album titles, sound recording titles, artist names, intellectual property, or materials relating thereto or any other materials, and their selection, coordination and arrangement (collectively, the “Service Content”). The Service Content is the property of our site and/or third parties and is protected by copyright under both United States and foreign laws.&nbsp;</p><h4><strong>User content</strong></h4><p>To the extent allowed by the Services, any musical works (sound recordings and underlying musical compositions), audiovisual works (including but not limited to MTV style premium music videos, clips and so called “behind the scenes” audiovisual content), other video or audio works, images, graphics, text, works of authorship, files, documents, applications, artwork, trademarks, trade names, metadata, album titles, sound recording titles, artist names, intellectual property, or materials relating thereto or any other materials that you submit to the Service (“User Content”) are generated, owned and controlled solely by you and/or your licensees. We do not claim any intellectual property ownership rights in any User Content. After directly sending (“submitting”) your User Content to the Services, you continue to retain any intellectual property ownership rights that you may have in your User Content, subject to the license below.&nbsp;</p><ul><li><a href=\"https://avenuear.itinfonity.net/public/terms-conditions#introduction\">Introduction</a></li><li><a href=\"https://avenuear.itinfonity.net/public/terms-conditions#content-restrictions\">Content restrictions</a></li><li><a href=\"https://avenuear.itinfonity.net/public/terms-conditions#user-content\">User content</a></li></ul>', '2024-05-29 07:48:18', '2024-05-30 06:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `playlist_id` varchar(255) DEFAULT NULL,
  `album_id` bigint(20) UNSIGNED DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `album_name` varchar(255) DEFAULT NULL,
  `track_name` varchar(255) DEFAULT NULL,
  `album_release_date` varchar(255) DEFAULT NULL,
  `album_total_tracks` varchar(255) DEFAULT NULL,
  `artist_name` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `genres` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `have_manager` varchar(255) DEFAULT NULL,
  `organisation` varchar(255) DEFAULT NULL,
  `organisation_other` varchar(255) DEFAULT NULL,
  `promo` varchar(255) DEFAULT NULL,
  `describes` text DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `uploadIn` varchar(255) DEFAULT NULL,
  `uploadInType` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` enum('approved','pending','release','cancel','deleted') DEFAULT NULL,
  `albumStatus` bigint(20) UNSIGNED DEFAULT NULL,
  `location` enum('youtube','spotify','soundcloud','others') DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`id`, `user_id`, `playlist_id`, `album_id`, `images`, `album_name`, `track_name`, `album_release_date`, `album_total_tracks`, `artist_name`, `preview_url`, `duration`, `genres`, `country`, `have_manager`, `organisation`, `organisation_other`, `promo`, `describes`, `language`, `uploadIn`, `uploadInType`, `description`, `status`, `albumStatus`, `location`, `release_date`, `created_at`, `updated_at`) VALUES
(1, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d000048519ba77e3ca38205c4dbfc5e8b', 'QVVJFA?', 'Sei Partir', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/738ab2b1145c465149db7924c198b97e65127e1b?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(2, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d0000485131760346883afec1e625c2ea', 'Bluesman', 'Flamingos', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/53c06e77b49799efcdeb89901bfea0ab6771ee65?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(3, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d000048519ba77e3ca38205c4dbfc5e8b', 'QVVJFA?', 'Samba in Paris', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/c4535f76cb6e139ab8bf253504add3cb1cdc9d55?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(4, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d000048519ba77e3ca38205c4dbfc5e8b', 'QVVJFA?', '20 Ligações', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/38653b509733017d12d1df088a766940eacd84ca?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(5, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d000048519ba77e3ca38205c4dbfc5e8b', 'QVVJFA?', 'Lágrimas', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/40a09ba3cb57be1c45ed19f0487c98c065e76e81?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(6, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d0000485131760346883afec1e625c2ea', 'Bluesman', 'Queima Minha Pele', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/5a4059fc1bb1aa150730312963af8bcb3fa7f06b?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(7, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d0000485131760346883afec1e625c2ea', 'Bluesman', 'Girassóis de Van Gogh', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/d72df913287a33253c6415c0c65431b2122f695f?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(8, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d000048519ba77e3ca38205c4dbfc5e8b', 'QVVJFA?', 'Dois Amores', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/687b5b487e4f0c22df3d52f51a230b310d757881?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(9, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d000048519ba77e3ca38205c4dbfc5e8b', 'QVVJFA?', 'Mulheres Grandes', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/cfb19b3c57ef373028b09cdf388cacb7029558df?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(10, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d000048519ba77e3ca38205c4dbfc5e8b', 'QVVJFA?', 'Cigana', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/d8b84935fccea75e30c729d1a5e1f46b92fcc73b?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(11, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d000048519ba77e3ca38205c4dbfc5e8b', 'QVVJFA?', 'Autoestima', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/e55dd4d07c173c4ab5bd69ef0380de62ba80f653?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(12, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d0000485131760346883afec1e625c2ea', 'Bluesman', 'Me Desculpa Jay Z', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/8555e24849f59df1207dc97ab7ea7c51c857c491?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(13, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d00004851ee6f50defab9e44229e5d9d3', 'Hotel Caro', 'Hotel Caro', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/ccec503c84db2e0e7149fa006878032f1cc21049?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(14, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d000048519ba77e3ca38205c4dbfc5e8b', 'QVVJFA?', 'Imortais e Fatais 2', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/29ae2989c3553fb2fb3a825e5e829c5d6a4b2c07?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(15, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d000048519ba77e3ca38205c4dbfc5e8b', 'QVVJFA?', 'Sinto Tanta Raiva…', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/260c337d4d1647f3b1002fadd2d7c2ebc7eac497?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(16, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d0000485194f35fe7bbc98eae56a081f7', 'Pele', 'Pele', NULL, NULL, 'Muse Maya', 'https://p.scdn.co/mp3-preview/fd07bbf7d44c57828dd1a39628077d1bf2a781de?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(17, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d0000485131760346883afec1e625c2ea', 'Bluesman', 'Bluesman', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/d381d7f760d9c06d2a47694ca98cb529200b5163?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(18, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d00004851c9c2d4bb05df53367b3cad36', 'O MENINO QUE QUERIA SER DEUS', 'SOLTO', NULL, NULL, 'Djonga', 'https://p.scdn.co/mp3-preview/2bb7bc678ae8efc2e8ac4b1c4adf4fa81928505b?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(19, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d00004851b1a07e16215fc423473e56e6', 'FÚRIA', 'Explícito', NULL, NULL, 'Urias', 'https://p.scdn.co/mp3-preview/ce19c80d5173a685d8e66b26df2a4b0757bda017?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(20, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d00004851a59bfac30b5618602d22f5a7', 'Apego', 'Saudade', NULL, NULL, 'Dactes', 'https://p.scdn.co/mp3-preview/87f2cea92baf4b63002ce66a6a397150781f4cf9?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(21, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d0000485118e89c16c0fa1ad6547a8e83', 'Esú', 'Te Amo Disgraça', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/2dc08848d8893dd0cfebf90c89dd31c7a6702d6a?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(22, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d000048515f65a462b67d797f6ae7f4ae', 'Tardes Que Nunca Acabam', 'Tardes Que Nunca Acabam', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/c397e6df225c126fceb857d7de149e03e954dfab?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(23, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d000048515b9f88a97d95214d04af2479', 'Última Noite', 'Última Noite', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/e4aa0e763d905cf8e50e4a65debea48db0b4ee09?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(24, '1', '6', NULL, 'https://i.scdn.co/image/ab67616d00004851e4d7ea0ec271b8d01e24e4ae', 'Banho de Sol', 'Banho de Sol', NULL, NULL, 'Baco Exu do Blues', 'https://p.scdn.co/mp3-preview/cc77abb3c85ce1d791db5874390fc197edfbac2d?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 05:58:44', '2024-05-28 05:58:44'),
(25, '1', '7', NULL, 'https://i.scdn.co/image/ab67616d000048519bb2d30b01ac2cada8a8ad03', 'Ek Tha Raja', 'Soulmate', NULL, NULL, 'Badshah', NULL, NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 07:32:03', '2024-05-28 07:32:03'),
(26, '1', '7', NULL, 'https://i.scdn.co/image/ab67616d000048510d08061493c378a4340e711f', 'Can\'t Move On', 'Can\'t Move On', NULL, NULL, 'CHECKO', 'https://p.scdn.co/mp3-preview/d95136d1883430e26eb2340127dadd9d435bf376?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 07:32:03', '2024-05-28 07:32:03'),
(27, '1', '7', NULL, 'https://i.scdn.co/image/ab67616d00004851ea9628fd8a1ce69b745acfc3', 'Poison - EP', 'Falling', NULL, NULL, 'RVRE', 'https://p.scdn.co/mp3-preview/db0eea87a0ad7a9d8bf23e5ecabb07a4fc03df44?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 07:32:03', '2024-05-28 07:32:03'),
(28, '1', '7', NULL, 'https://i.scdn.co/image/ab67616d0000485165ce8c712e4fb894bc88461b', 'Desi Kalakaar', 'Desi Kalakaar', NULL, NULL, 'Yo Yo Honey Singh', 'https://p.scdn.co/mp3-preview/8d55abe443f7738f42727ef20d90c245952d4f2e?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 07:32:03', '2024-05-28 07:32:03'),
(29, '1', NULL, 2, NULL, NULL, 'Ori Devudo', NULL, NULL, 'Javed Ali', 'https://p.scdn.co/mp3-preview/8e032d191e25f4ff94b51d05bbb1ad27ebaa1068?cid=6bb6c66516f94513ac294ba48b6afb34', '4:14', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-28 09:21:15', '2024-06-07 04:50:09'),
(30, '1', NULL, 2, NULL, NULL, 'Neeli Neeli', NULL, NULL, 'Karthik', 'https://p.scdn.co/mp3-preview/7ff9e5030c8320901d97ea523878c5c2f2c33ae5?cid=6bb6c66516f94513ac294ba48b6afb34', '4:09', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-28 09:21:15', '2024-06-07 04:50:09'),
(31, '1', NULL, 2, NULL, NULL, 'Whatsup Antu', NULL, NULL, 'Devi Sri Prasad', 'https://p.scdn.co/mp3-preview/f0df5b31bbdaafaeb9d11c6725eea0addc7a11c8?cid=6bb6c66516f94513ac294ba48b6afb34', '4:00', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-28 09:21:15', '2024-06-07 04:50:09'),
(32, '1', NULL, 2, NULL, NULL, 'Labbar Bomma', NULL, NULL, 'Sooraj Santhosh', 'https://p.scdn.co/mp3-preview/ea5a41fca28c736842d40d256efaff364cffbb03?cid=6bb6c66516f94513ac294ba48b6afb34', '4:33', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-28 09:21:15', '2024-06-07 04:50:09'),
(33, '1', NULL, 2, NULL, NULL, 'Oho Bujji Konda', NULL, NULL, 'Jaspreet Jasz', 'https://p.scdn.co/mp3-preview/f0a4db92dc690de6c3684d81f4d41b005ffdbedd?cid=6bb6c66516f94513ac294ba48b6afb34', '3:38', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-28 09:21:15', '2024-06-07 04:50:09'),
(34, '1', NULL, 2, NULL, NULL, 'Alludu Seenu', NULL, NULL, 'Simha', 'https://p.scdn.co/mp3-preview/8eb125276232952eeddfb6ee22de2046e22cbfdf?cid=6bb6c66516f94513ac294ba48b6afb34', '4:05', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-28 09:21:15', '2024-06-07 04:50:09'),
(35, '1', NULL, 3, NULL, NULL, 'How You Like That', NULL, NULL, 'BLACKPINK', 'https://p.scdn.co/mp3-preview/1e69b83c57c81953bd66252d4ecf5ba5649171fa?cid=6bb6c66516f94513ac294ba48b6afb34', '3:00', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 11:40:49', '2024-05-28 11:40:49'),
(36, '1', NULL, 3, NULL, NULL, 'Ice Cream (with Selena Gomez)', NULL, NULL, 'BLACKPINK', 'https://p.scdn.co/mp3-preview/7b1a37252e7510b4d1dce6e60f01f9452788a662?cid=6bb6c66516f94513ac294ba48b6afb34', '2:55', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 11:40:49', '2024-05-28 11:40:49'),
(37, '1', NULL, 3, NULL, NULL, 'Pretty Savage', NULL, NULL, 'BLACKPINK', 'https://p.scdn.co/mp3-preview/1e92ef827f8ac53816c3e57c02a6d8b6a9e91fe1?cid=6bb6c66516f94513ac294ba48b6afb34', '3:19', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 11:40:49', '2024-05-28 11:40:49'),
(38, '1', NULL, 3, NULL, NULL, 'Bet You Wanna (Feat. Cardi B)', NULL, NULL, 'BLACKPINK', 'https://p.scdn.co/mp3-preview/91f39bde453fb46c045c1839ea5a23ae41377849?cid=6bb6c66516f94513ac294ba48b6afb34', '2:39', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 11:40:49', '2024-05-28 11:40:49'),
(39, '1', NULL, 3, NULL, NULL, 'Lovesick Girls', NULL, NULL, 'BLACKPINK', 'https://p.scdn.co/mp3-preview/0aaa1ab3651aeffd0386bf48383ae76b6e759d6f?cid=6bb6c66516f94513ac294ba48b6afb34', '3:12', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 11:40:49', '2024-05-28 11:40:49'),
(40, '1', NULL, 3, NULL, NULL, 'Crazy Over You', NULL, NULL, 'BLACKPINK', 'https://p.scdn.co/mp3-preview/80edd00c71b82f7c9f7a89881afa72b5d4a1e355?cid=6bb6c66516f94513ac294ba48b6afb34', '2:41', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 11:40:49', '2024-05-28 11:40:49'),
(41, '1', NULL, 3, NULL, NULL, 'Love To Hate Me', NULL, NULL, 'BLACKPINK', 'https://p.scdn.co/mp3-preview/6e8805189c9db8950d07b65ba2882f95d8698dc6?cid=6bb6c66516f94513ac294ba48b6afb34', '2:49', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 11:40:49', '2024-05-28 11:40:49'),
(42, '1', NULL, 3, NULL, NULL, 'You Never Know', NULL, NULL, 'BLACKPINK', 'https://p.scdn.co/mp3-preview/b7afd096e0c16f3f6ae6e3f7fa029f5b08c93e4b?cid=6bb6c66516f94513ac294ba48b6afb34', '3:49', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 11:40:49', '2024-05-28 11:40:49'),
(43, '1', NULL, 4, NULL, NULL, 'everything matters (when it comes to you)', NULL, NULL, 'San Holo', 'https://p.scdn.co/mp3-preview/5165f091e29d2c8b4ab93d91195632f46d280c9e?cid=6bb6c66516f94513ac294ba48b6afb34', '5:36', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 11:52:32', '2024-05-28 11:52:32'),
(44, '1', NULL, 4, NULL, NULL, 'lift me from the ground', NULL, NULL, 'San Holo', 'https://p.scdn.co/mp3-preview/662596a6ef8f30fe4af927826c76cc2ad61d4f12?cid=6bb6c66516f94513ac294ba48b6afb34', '4:20', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 11:52:32', '2024-05-28 11:52:32'),
(45, '1', NULL, 4, NULL, NULL, 'show me', NULL, NULL, 'San Holo', 'https://p.scdn.co/mp3-preview/a114906d135dd14939db0e00a2c264ad8003d96f?cid=6bb6c66516f94513ac294ba48b6afb34', '5:41', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 11:52:32', '2024-05-28 11:52:32'),
(46, '1', NULL, 4, NULL, NULL, 'brighter days', NULL, NULL, 'San Holo', 'https://p.scdn.co/mp3-preview/76f05ff506c4048a944b8b1325c327b6c91b3cad?cid=6bb6c66516f94513ac294ba48b6afb34', '3:56', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 11:52:32', '2024-05-28 11:52:32'),
(47, '1', NULL, 4, NULL, NULL, 'always on my mind', NULL, NULL, 'San Holo', 'https://p.scdn.co/mp3-preview/f3402dff22081c48b44c38168a2baaa20cce977d?cid=6bb6c66516f94513ac294ba48b6afb34', '3:41', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 11:52:32', '2024-05-28 11:52:32'),
(48, '1', NULL, 4, NULL, NULL, 'go back in time', NULL, NULL, 'San Holo', 'https://p.scdn.co/mp3-preview/ee317b7ac9e20f90d2d92b7bf7d98c8bbf93554a?cid=6bb6c66516f94513ac294ba48b6afb34', '4:21', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 11:52:32', '2024-05-28 11:52:32'),
(49, '1', NULL, 4, NULL, NULL, 'love (wip)', NULL, NULL, 'San Holo', 'https://p.scdn.co/mp3-preview/62610078145729ea89e7b7b7bbb7b5752b6b2180?cid=6bb6c66516f94513ac294ba48b6afb34', '4:22', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 11:52:32', '2024-05-28 11:52:32'),
(50, '1', NULL, 4, NULL, NULL, 'voices in my head', NULL, NULL, 'San Holo', 'https://p.scdn.co/mp3-preview/a412f51dc94f4b0d7e4032614eb979ee247f6344?cid=6bb6c66516f94513ac294ba48b6afb34', '4:52', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', NULL, 'spotify', NULL, '2024-05-28 11:52:32', '2024-05-28 11:52:32'),
(51, '1', NULL, 4, NULL, NULL, 'worthy', NULL, NULL, 'San Holo', 'https://p.scdn.co/mp3-preview/04c4689414147848901994160d47af8c002f5d94?cid=6bb6c66516f94513ac294ba48b6afb34', '4:59', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-28 11:52:32', '2024-05-28 11:52:32'),
(52, '1', NULL, 4, NULL, NULL, 'forever free (feat. Duskus)', NULL, NULL, 'San Holo', 'https://p.scdn.co/mp3-preview/00110a69848231458403040ea9cca2e4e1c04399?cid=6bb6c66516f94513ac294ba48b6afb34', '6:22', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-28 11:52:32', '2024-05-28 11:52:32'),
(53, '1', NULL, 4, NULL, NULL, 'surface', NULL, NULL, 'San Holo', 'https://p.scdn.co/mp3-preview/a38ded2893dc79604588942b802eb3c4ec798582?cid=6bb6c66516f94513ac294ba48b6afb34', '6:02', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-28 11:52:32', '2024-05-28 11:52:32'),
(54, '1', NULL, 4, NULL, NULL, 'vestal avenue', NULL, NULL, 'San Holo', 'https://p.scdn.co/mp3-preview/c854df0fb4f97f26512eb1512aea6133aa0f1ccc?cid=6bb6c66516f94513ac294ba48b6afb34', '4:15', 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-28 11:52:32', '2024-05-28 11:52:32'),
(55, '1', '8', NULL, 'https://i.scdn.co/image/ab67616d0000b27394a121993604e6e6272acf8b', 'Telangana Bommalu (From \"Premalu\")', 'Telangana Bommalu (From \"Premalu\")', NULL, NULL, 'Vishnu Vijay', 'https://p.scdn.co/mp3-preview/57f569126ca7c1053d7c529f7acd41144f5810dc?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-28 12:25:37', '2024-05-28 12:25:37'),
(56, '1', '8', NULL, 'https://i.scdn.co/image/ab67616d0000b27305eee59ff31cafb305dd419a', 'Mini Maharani (From \"Premalu\")', 'Mini Maharani (From \"Premalu\")', NULL, NULL, 'Vishnu Vijay', 'https://p.scdn.co/mp3-preview/26b9d913242aa0a61e9063ab6b215165f526a49b?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-28 12:25:37', '2024-05-28 12:25:37'),
(57, '1', '8', NULL, 'https://i.scdn.co/image/ab67616d0000b273638d66bb50ca500f5d6f8790', 'Kutty Kudiye (From \"Premalu\")', 'Kutty Kudiye (From \"Premalu\")', NULL, NULL, 'Vishnu Vijay', 'https://p.scdn.co/mp3-preview/38e4360beee0c39d586c7af2d808f0c141ea2682?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-28 12:25:37', '2024-05-28 12:25:37'),
(58, '1', '8', NULL, 'https://i.scdn.co/image/ab67616d0000b2735609d718255f2a72f5378ede', 'Chalo Hyderabad (From \"Premalu\")', 'Chalo Hyderabad (From \"Premalu\")', NULL, NULL, 'Vishnu Vijay', 'https://p.scdn.co/mp3-preview/84b988df9304961c1bb8687b95c122e38707196d?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-28 12:25:37', '2024-05-28 12:25:37'),
(59, '1', '8', NULL, 'https://i.scdn.co/image/ab67616d0000b2736ed0ca4b812d2d9e9be17473', 'Welcome To Hyderabad (From \"Premalu\")', 'Welcome To Hyderabad (From \"Premalu\")', NULL, NULL, 'Vishnu Vijay', 'https://p.scdn.co/mp3-preview/af3e31a5fa0e02797039e62269cbc5f6c0695c5a?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-28 12:25:37', '2024-05-28 12:25:37'),
(60, '1', '8', NULL, 'https://i.scdn.co/image/ab67616d0000b273755774a1e402c5bb5af0ff3d', 'Devaragam (Original Motion Picture Soundtrack)', 'Ya Ya Ya Yadava', NULL, NULL, 'M. M. Keeravani', 'https://p.scdn.co/mp3-preview/43064e0426976802ce8c03b967b2f9240630fed1?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-28 12:25:37', '2024-05-28 12:25:37'),
(61, '1', '9', NULL, 'https://i.scdn.co/image/ab67616d0000b2737d46ff19532fdba734bfd4e0', 'Pathaan', 'Jhoome Jo Pathaan', NULL, NULL, 'Vishal-Shekhar', 'https://p.scdn.co/mp3-preview/a6abe0ea615308e74e4c3089e696d400fa68bb64?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-28 12:33:13', '2024-06-07 05:19:54'),
(62, '1', '9', NULL, 'https://i.scdn.co/image/ab67616d0000b27313d49ed65bac50bf72524091', 'Besharam Rang (From \"Pathaan\")', 'Besharam Rang (From \"Pathaan\")', NULL, NULL, 'Vishal-Shekhar', 'https://p.scdn.co/mp3-preview/9dda231b138eac0c74f6f95b52b91b60291d4f58?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-28 12:33:13', '2024-06-07 05:19:54'),
(63, '1', '9', NULL, 'https://i.scdn.co/image/ab67616d0000b2737d46ff19532fdba734bfd4e0', 'Pathaan', 'Pathaan’s Theme', NULL, NULL, 'Sanchit Balhara', 'https://p.scdn.co/mp3-preview/c7d047c833fb5788bb1a0bdd4ab264345bb62f96?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-28 12:33:13', '2024-06-07 05:19:54'),
(64, '1', '9', NULL, 'https://i.scdn.co/image/ab67616d0000b2737d46ff19532fdba734bfd4e0', 'Pathaan', 'Jim’s Theme', NULL, NULL, 'Sanchit Balhara', 'https://p.scdn.co/mp3-preview/9391d1ea67b22c816b0c68b5a963e5ae0e92b94e?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-28 12:33:13', '2024-06-07 05:19:54'),
(65, '1', '9', NULL, 'https://i.scdn.co/image/ab67616d0000b27311c5691babbefb148366fe38', 'Pathaan - Teaser', 'Pathaan - Teaser', NULL, NULL, 'Sanchit Balhara', 'https://p.scdn.co/mp3-preview/f705cea3c49b94b95f0bca775c0072560c58bc60?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, 'Pop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-28 12:33:13', '2024-06-07 05:19:54'),
(66, '1', '10', NULL, 'https://i.scdn.co/image/ab67616d0000b273a1e758e5680d59268375d3d6', 'Pagol (Slowed & Reverb)', 'Pagol - Slowed & Reverb', NULL, NULL, 'Dalip Shekhawat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:26:34', '2024-05-29 05:26:34'),
(67, '1', '10', NULL, 'https://i.scdn.co/image/ab67616d0000b273289495ca3dd9cc0e9b7bb70d', 'P 404', 'P 404', NULL, NULL, 'CxS', 'https://p.scdn.co/mp3-preview/03806446bc4d07e4f04faaba3dc99140642756dd?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:26:34', '2024-05-29 05:26:34'),
(68, '1', '10', NULL, 'https://i.scdn.co/image/ab67616d0000b273b1d8855f0cc25c9f74efdb68', 'Montagem - Chapadão de Crack - Beat Mata Noia [Slowed]', 'Montagem - Chapadão de Crack - Beat Mata Noia', NULL, NULL, 'DJPH01', 'https://p.scdn.co/mp3-preview/20c70926f0de58a8b12150b3ac2af4b9e302566a?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:26:34', '2024-05-29 05:26:34'),
(69, '1', '10', NULL, 'https://i.scdn.co/image/ab67616d0000b273885f570a2125bb07f7baec65', 'Pagol (LoFi)', 'Pagol - LoFi', NULL, NULL, 'IAMPRANN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:26:34', '2024-05-29 05:26:34'),
(70, '1', NULL, 5, NULL, NULL, 'Made in India', NULL, NULL, 'Alisha Chinai', 'https://p.scdn.co/mp3-preview/c46d077a23fb32eda7add6e1c70d3150ebd49143?cid=6bb6c66516f94513ac294ba48b6afb34', '4:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:28:30', '2024-05-29 05:28:30'),
(71, '1', NULL, 5, NULL, NULL, 'Lover Girl', NULL, NULL, 'Alisha Chinai', 'https://p.scdn.co/mp3-preview/6b5e309e82470e6daaeeae63a74d7fbf2265247a?cid=6bb6c66516f94513ac294ba48b6afb34', '4:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:28:30', '2024-05-29 05:28:30'),
(72, '1', NULL, 5, NULL, NULL, 'Dil', NULL, NULL, 'Alisha Chinai', 'https://p.scdn.co/mp3-preview/5730c1a887fabe798b0783d717b4c68e8d9d8cdb?cid=6bb6c66516f94513ac294ba48b6afb34', '4:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:28:30', '2024-05-29 05:28:30'),
(73, '1', NULL, 5, NULL, NULL, 'Tu Kahan', NULL, NULL, 'Alisha Chinai', 'https://p.scdn.co/mp3-preview/ff6540307875f647e2fd5084a37cbe0f54aa38fb?cid=6bb6c66516f94513ac294ba48b6afb34', '4:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:28:30', '2024-05-29 05:28:30'),
(74, '1', NULL, 5, NULL, NULL, 'Ek Baar Do Baar', NULL, NULL, 'Alisha Chinai', 'https://p.scdn.co/mp3-preview/9b9407ccdf913b0645ed8a46a205439097b5d5ff?cid=6bb6c66516f94513ac294ba48b6afb34', '4:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:28:30', '2024-05-29 05:28:30'),
(75, '1', NULL, 5, NULL, NULL, 'Aajaa', NULL, NULL, 'Alisha Chinai', 'https://p.scdn.co/mp3-preview/8a62a1937688edc8acefdfce32d0f74c781fa336?cid=6bb6c66516f94513ac294ba48b6afb34', '4:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:28:30', '2024-05-29 05:28:30'),
(76, '1', NULL, 5, NULL, NULL, 'Mere Saath', NULL, NULL, 'Alisha Chinai', 'https://p.scdn.co/mp3-preview/63f40292a4a0aec9b48d49570cf9845dfb989f4f?cid=6bb6c66516f94513ac294ba48b6afb34', '4:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:28:30', '2024-05-29 05:28:30'),
(77, '1', NULL, 5, NULL, NULL, 'Oo-La-La', NULL, NULL, 'Alisha Chinai', 'https://p.scdn.co/mp3-preview/1364d59bb1adb92ae7c78b5a0513bb955062d90a?cid=6bb6c66516f94513ac294ba48b6afb34', '4:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:28:30', '2024-05-29 05:28:30'),
(78, '1', NULL, 5, NULL, NULL, 'Dhadkhan', NULL, NULL, 'Alisha Chinai', 'https://p.scdn.co/mp3-preview/493c4a6a32ceb214b819bf98ce42551277b0db66?cid=6bb6c66516f94513ac294ba48b6afb34', '4:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:28:30', '2024-05-29 05:28:30'),
(79, '1', NULL, 5, NULL, NULL, 'Made in India - The Mother Of All Mixes', NULL, NULL, 'Alisha Chinai', 'https://p.scdn.co/mp3-preview/1d73f06633c3472c996984d1dea958d33a7fea91?cid=6bb6c66516f94513ac294ba48b6afb34', '5:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:28:30', '2024-05-29 05:28:30'),
(80, '1', NULL, 5, NULL, NULL, 'De De', NULL, NULL, 'Alisha Chinai', 'https://p.scdn.co/mp3-preview/886da8c651fdab0bee4b023f5789f1969185e56e?cid=6bb6c66516f94513ac294ba48b6afb34', '4:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:28:30', '2024-05-29 05:28:30'),
(81, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2737fe4a82a08c4f0decbeddbc6', 'Changes', 'Yummy', NULL, NULL, 'Justin Bieber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(82, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2735021c7693184cb66f7e0fc1f', 'Encore', 'Let Me Love You', NULL, NULL, 'DJ Snake', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(83, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273909182bf113b1980e97cfbfa', 'Safari', 'Safari', NULL, NULL, 'Serena', 'https://p.scdn.co/mp3-preview/08a9562157d0b8a3b9b72ce1f5eb53ba61268a9f?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(84, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273c820f033bd82bef4355d1563', 'Shawn Mendes (Deluxe)', 'Señorita', NULL, NULL, 'Shawn Mendes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(85, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2738a3f0a3ca7929dea23cd274c', 'lovely (with Khalid)', 'lovely (with Khalid)', NULL, NULL, 'Billie Eilish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(86, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273fed7d8c8daad59181bbe6bcd', 'Bilionera', 'Bilionera - Radio Edit', NULL, NULL, 'Otilia', 'https://p.scdn.co/mp3-preview/d559e3d25ecb550517d95a7a8e7ca5aaeb8a766f?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(87, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273d2aaf635815c265aa1ecdecc', 'On My Way', 'On My Way', NULL, NULL, 'Alan Walker', 'https://p.scdn.co/mp3-preview/4ed369affca2c522bd1af17b8951d6b7da2fbab7?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(88, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273ba5db46f4b838ef6027e6f96', '÷ (Deluxe)', 'Shape of You', NULL, NULL, 'Ed Sheeran', 'https://p.scdn.co/mp3-preview/7339548839a263fd721d01eb3364a848cad16fa7?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(89, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273e105c410a7b390c61a58cbf8', 'Taki Taki (with Selena Gomez, Ozuna & Cardi B)', 'Taki Taki (with Selena Gomez, Ozuna & Cardi B)', NULL, NULL, 'DJ Snake', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(90, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2731f8acff70a5ac09b736e2448', 'Shades of Jayde (Cover)', 'Fallin\' - Cover', NULL, NULL, 'Aurora Jayde', 'https://p.scdn.co/mp3-preview/45400b27277f5b80be13931c6e2a73a9579e8d1c?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(91, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273ef0d4234e1a645740f77d59c', 'VIDA', 'Despacito', NULL, NULL, 'Luis Fonsi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(92, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b27384c53fa832dfa265192419c5', 'El Dorado', 'Mood (feat. iann dior)', NULL, NULL, '24kGoldn', 'https://p.scdn.co/mp3-preview/c425299d5996843fc24308b896f7ce60fd262c99?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(93, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273a88ed576ab6353e8c8464534', 'Gravity', 'Gravity', NULL, NULL, 'Ana Shine', 'https://p.scdn.co/mp3-preview/932150d4e6e06a223a03e4eb15c5a04ca1117e71?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(94, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273c4d00cac55ae1b4598c9bc90', 'Faded', 'Faded', NULL, NULL, 'Alan Walker', 'https://p.scdn.co/mp3-preview/633dfd35d836f9b62bab2344510e68270e5e3873?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(95, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2734dbf782532ca5d09012dc2d5', 'Nicotine', 'Falling', NULL, NULL, 'Trevor Daniel', 'https://p.scdn.co/mp3-preview/0d911f7650ed127fbbdd7ec6a44ec5d642d1896a?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(96, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273a4144ef0ef3fa8fb47ea1716', 'Cue The Commotion', 'Mr. Brightside', NULL, NULL, 'Savage Sons', 'https://p.scdn.co/mp3-preview/5940aea6b297bbb41eab0467f67e2b7d8f06311e?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(97, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273a1d56525c3380e5cbda5f48f', 'Rockstar', 'Rockstar', NULL, NULL, 'Ilkay Sencan', 'https://p.scdn.co/mp3-preview/35a2899bc8474cb0b7b57d450c367f89f923513d?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(98, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b27364bff54986fe10c60cebbe9d', 'Roses (Imanbek Remix)', 'Roses - Imanbek Remix', NULL, NULL, 'SAINt JHN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(99, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2737b23864872121eac40aa3634', 'Diner Sessions', 'Drops of Jupiter (Tell Me)', NULL, NULL, 'Eastern Thrills', 'https://p.scdn.co/mp3-preview/c65faebd78db31d0217fbc6babf47c807363bf29?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(100, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2733a22ad98e76e2d0c1760345d', 'Please Don\'t Go', 'Please Don\'t Go', NULL, NULL, 'Joel Adams', 'https://p.scdn.co/mp3-preview/f235bc61d3d1a5c27c975b9857cff3c5c79db464?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(101, '1', '11', NULL, 'https://i.scdn.co/image/4232005630d1d2330dfecf2af47c16f864de39db', 'Run Free', 'Run Free', NULL, NULL, 'Deep Chills', 'https://p.scdn.co/mp3-preview/94894f07c19cc304ae0c6c0ed1e7ebf88e9a5af1?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(102, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2731290a2b7df1434efe64a598b', 'Echoes of Ink 2', 'Everlong', NULL, NULL, 'Distorted Resonance', 'https://p.scdn.co/mp3-preview/00664512dcbfea2a5f25c0ae23e2138bd9afcac0?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(103, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b27388104647763f4c2c554f2301', 'Sugar & Brownies', 'Sugar & Brownies', NULL, NULL, 'DHARIA', 'https://p.scdn.co/mp3-preview/2347286fa3dc2f67f130bf1983a95a40b0a80116?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(104, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b27301303370359c1d543d7ffa4e', 'Elefante', 'Elefante', NULL, NULL, 'NK', 'https://p.scdn.co/mp3-preview/417cc943d57d528dd475c3644d5c344532a95e84?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(105, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b27346c8a83e2253aabcef917a93', 'Spinning North', 'Daisy', NULL, NULL, 'The Tano Jones Revelry', 'https://p.scdn.co/mp3-preview/254f5205859cc1e8605ed9ec28173a9a41616048?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(106, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2739b93b7071e8f0d9e14aa5d1c', 'Bad Boy (feat. Luana Kiara)', 'Bad Boy (feat. Luana Kiara)', NULL, NULL, 'Raaban', 'https://p.scdn.co/mp3-preview/39e50d946ba8950bd1cb012c6f45fdd8adac3a74?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(107, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273d425eee1abf1d0741449821b', 'Cleaning Tunes', 'The Nights', NULL, NULL, 'Avicii', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(108, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273aaa991747739a4f1276a9fd7', 'Back to the Lanes', 'Use Somebody', NULL, NULL, 'Gutter Grinders', 'https://p.scdn.co/mp3-preview/f559415b4a185c1f6f3e9a7a84a6543ac92641b4?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(109, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2731b532a26a0a2fcb0cd55ae5f', 'Such a Whore', 'Such a Whore', NULL, NULL, 'JVLA', 'https://p.scdn.co/mp3-preview/8358a76fb61704e2e9beb7a7737312bb37cfcd97?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(110, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273bd02d63417be256b22bffc28', 'BADLANDS', 'New Americana', NULL, NULL, 'Halsey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(111, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273099fdb976e1928e4be7d7ae2', 'Sleepless Nights', 'U Got It Bad', NULL, NULL, 'Awake Past 3', 'https://p.scdn.co/mp3-preview/b0bcf7bd87cd2b831a9487e468ab50c1fd7faf5f?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(112, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2732ff58d309668bb4edca4e392', 'TikTok Songs Viral Hits', 'Whoopty', NULL, NULL, 'CJ', 'https://p.scdn.co/mp3-preview/bf6fd3cbe55af994e5cb911d93e2df39908aa3bc?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(113, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273e75ce88da4a14c9c024256e8', 'New Year New Start', 'Believer', NULL, NULL, 'Imagine Dragons', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(114, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2731f8acff70a5ac09b736e2448', 'Shades of Jayde (Cover)', 'Take A Bow - Cover', NULL, NULL, 'Aurora Jayde', 'https://p.scdn.co/mp3-preview/4684b2c20c3434d93fc1451e0412947c35878134?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(115, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273fd5c3010f1c824a54e262f18', 'Список твоих мыслей', 'Love Your Voice', NULL, NULL, 'JONY', 'https://p.scdn.co/mp3-preview/bad8fe444ede6a1d22c549b0a2a6055401a55aad?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(116, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273c6bc82f5cafb58545331ef23', 'Cradles', 'Cradles', NULL, NULL, 'Sub Urban', 'https://p.scdn.co/mp3-preview/584c63beb79d87d11ed0cefbf158914b9d8730ec?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(117, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b27346c8a83e2253aabcef917a93', 'Spinning North', 'Days Like This', NULL, NULL, 'The Tano Jones Revelry', 'https://p.scdn.co/mp3-preview/f4a6d12cf99a87bcb490ee0f69031f20865acf7b?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(118, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273bfb25cd4b4f1108804b37663', 'Winter Mix 2021', 'In The End - Mellen Gi Remix', NULL, NULL, 'Tommee Profitt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(119, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273a6a151ed88a170ae3a81eff5', 'The Spectre', 'The Spectre', NULL, NULL, 'Alan Walker', 'https://p.scdn.co/mp3-preview/0d8e01ee04c541b9e45c1b7ed0d51441debf2dcb?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(120, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273a4144ef0ef3fa8fb47ea1716', 'Cue The Commotion', '505', NULL, NULL, 'Savage Sons', 'https://p.scdn.co/mp3-preview/bb05e3b6f4f1989d0c6892df63299b1659037213?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(121, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2739c3a6f99330395d099bbb067', 'Hislerim', 'Hislerim', NULL, NULL, 'Serhat Durmus', 'https://p.scdn.co/mp3-preview/2f14bc46f51908a29c9cf65529f809a5f64dbb84?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(122, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273928176cad62d2e7625636c3f', 'Skechers', 'Skechers', NULL, NULL, 'DripReport', 'https://p.scdn.co/mp3-preview/ba90e9d6f26e85abffa0aa2e1384d017622e9553?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(123, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273b5e4164e630cd18c7615d953', 'Hot For Crime', 'So Good', NULL, NULL, 'Hot for Crime', 'https://p.scdn.co/mp3-preview/aebea832dce638c6f401d1506ba0c396c3f22dd9?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(124, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273af87864ea320159c93fc0c73', 'Best of Rap', 'The Box', NULL, NULL, 'Roddy Ricch', 'https://p.scdn.co/mp3-preview/d4a0f646c0695e983754a2471ef13b542b107c79?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(125, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273153261ff7373a171c24ab9f9', 'Alone, Pt. II', 'Alone, Pt. II', NULL, NULL, 'Alan Walker', 'https://p.scdn.co/mp3-preview/f09e87445c94793cfa85483c56ab3a4642419367?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(126, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b27388933ab9de13bfeb3571a7e5', 'Growlin\' at The Moon', 'Wonderwall', NULL, NULL, 'The Grunge Growlers', 'https://p.scdn.co/mp3-preview/bf6eb4b39dbd230863d16588bd0ea6902f79f138?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(127, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b27364d9071e10faea098f15a5cb', 'Summer Hits on Repeat', 'Astronaut in the Ocean', NULL, NULL, 'Masked Wolf', 'https://p.scdn.co/mp3-preview/e89e477c2467c477031561ff801c055c5777de4f?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(128, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2735bdd9e580fdda5e676a25e6a', 'Reflection (Deluxe)', 'Worth It (feat. Kid Ink)', NULL, NULL, 'Fifth Harmony', 'https://p.scdn.co/mp3-preview/de93c7aed8dff779d1fdba63d1522f2c770980f5?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(129, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273099fdb976e1928e4be7d7ae2', 'Sleepless Nights', 'Let Me Love You', NULL, NULL, 'Awake Past 3', 'https://p.scdn.co/mp3-preview/9b98fd6d91dda8d3c33ff4800c0f64aa717a8f66?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12');
INSERT INTO `tracks` (`id`, `user_id`, `playlist_id`, `album_id`, `images`, `album_name`, `track_name`, `album_release_date`, `album_total_tracks`, `artist_name`, `preview_url`, `duration`, `genres`, `country`, `have_manager`, `organisation`, `organisation_other`, `promo`, `describes`, `language`, `uploadIn`, `uploadInType`, `description`, `status`, `albumStatus`, `location`, `release_date`, `created_at`, `updated_at`) VALUES
(130, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273a108e07c661f9fc54de9c43a', 'Different World', 'Lily', NULL, NULL, 'Alan Walker', 'https://p.scdn.co/mp3-preview/24332c93ee030092ad5d450260d3cdd52b82cbea?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(131, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273be71ae2e38593b9cd4936c29', 'Soft Pop Hits', 'Memories', NULL, NULL, 'Maroon 5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(132, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273a4144ef0ef3fa8fb47ea1716', 'Cue The Commotion', 'Even Flow', NULL, NULL, 'Savage Sons', 'https://p.scdn.co/mp3-preview/164764894b46b214ca228180423416ca1690d8f1?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(133, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2735e90ff76fd49a23f7333de76', 'World War Joy', 'Takeaway', NULL, NULL, 'The Chainsmokers', 'https://p.scdn.co/mp3-preview/6e1152903f9e9d41b8a9513278cf2b13be8eedca?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(134, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273b660852a491c935b365075c2', 'Queen of Hearts', 'Queen of Hearts', NULL, NULL, 'Starla Edney', 'https://p.scdn.co/mp3-preview/ec57d0e7a14f542d314e94cefc368a07078c29bc?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(135, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2739adb2faeceb091088a21b346', 'Dreamin\' of the Heartland (Deluxe)', 'Before He Cheats', NULL, NULL, 'Terry and The Dustriders', 'https://p.scdn.co/mp3-preview/19d06b00f7163f333b54f4c6fca99d29a8bbfe04?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(136, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273e2839d5277b9359ad817a087', 'As Melhores do Pop, Rock e Hip Hop Vol. 2', 'See You Again', NULL, NULL, 'Wiz Khalifa', 'https://p.scdn.co/mp3-preview/dadc1db8a8aa4225b9fe49bae9cd3c1dc966abd2?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(137, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273459d675aa0b6f3b211357370', 'Narrated For You', 'Let Me Down Slowly', NULL, NULL, 'Alec Benjamin', 'https://p.scdn.co/mp3-preview/19007111a4e21096bcefef77842d7179f0cdf12a?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(138, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273aaa991747739a4f1276a9fd7', 'Back to the Lanes', 'Pumped Up Kicks', NULL, NULL, 'Gutter Grinders', 'https://p.scdn.co/mp3-preview/5f58e6c06d10f094438e51c6e4b45747e110b691?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(139, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273973666df3cb354fe3d798284', 'Smash Hits 2000', 'Baby', NULL, NULL, 'Justin Bieber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(140, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b27336fb97a9b95e33f0736b2961', 'Umbrella', 'Umbrella', NULL, NULL, 'Ember Island', 'https://p.scdn.co/mp3-preview/22227beeac19155aca858a1aca4a0389d123034d?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(141, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273d8206ab5d79322850020ea12', 'Chocolates and Lies', 'Chocolates and Lies', NULL, NULL, 'Brit Smith', 'https://p.scdn.co/mp3-preview/a14edc62badd7ba7b87eb6f9a935b9282f7602a2?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(142, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b27338185fe895fd604cabf9630c', 'Playlist 10s', 'FRIENDS', NULL, NULL, 'Marshmello', 'https://p.scdn.co/mp3-preview/e26c733620382a1f4c7eea10cc0e8089cc3f064d?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(143, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273b24d90ed835e6b8ab288fc56', '100 Greatest 2020 Songs', 'Play Date', NULL, NULL, 'Melanie Martinez', 'https://p.scdn.co/mp3-preview/02571c396fcc7c23b6af493d60ea9121c1f397b1?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(144, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2731f8acff70a5ac09b736e2448', 'Shades of Jayde (Cover)', 'Love On The Brain - Cover', NULL, NULL, 'Aurora Jayde', 'https://p.scdn.co/mp3-preview/d743d3bd4c0cef8efe661a024fd2a3a5b7696951?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(145, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273949cb4d6ff8b7f7f4fdb24e5', 'Turn Back Time', 'Turn Back Time', NULL, NULL, 'Daniel Schulz', 'https://p.scdn.co/mp3-preview/975542c447eb2a664bdd6efbdd1e66c5ba30e461?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(146, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273970ce512c6e443586d0be229', '? (Deluxe)', 'changes', NULL, NULL, 'XXXTENTACION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(147, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273e6341cb1cacadb166fe5b049', 'Lessons Learned', 'Don\'t Speak', NULL, NULL, 'Leida Taylor', 'https://p.scdn.co/mp3-preview/b24e2736aab353b0d0fcf50076e9b46bffca23f4?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(148, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273a7b24bf34e5892d65658d530', 'Summer Party Vibes 2023', 'Hymn for the Weekend', NULL, NULL, 'Coldplay', 'https://p.scdn.co/mp3-preview/cb0aa0a64ef56a161fbe2b298174cd69d8a71a9d?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(149, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b27313d9b7d421f9d9c9341cc34f', 'Just the Way You Are - Hit Rewind', 'Stereo Hearts', NULL, NULL, 'Gym Class Heroes', 'https://p.scdn.co/mp3-preview/9ed291021782ef5db747fd1bcac314fef8c36c0f?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(150, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2733c6dd35d6c85424b995a7dd0', 'R&B Nostalgia', 'If I Ain\'t Got You', NULL, NULL, 'Wavvy Tape', 'https://p.scdn.co/mp3-preview/adb1d6e71fa6e26f383561c6947c29035846e726?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(151, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273cd489184cf38ba90e421f62b', 'Summer Acoustic', 'Make You Mine', NULL, NULL, 'PUBLIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(152, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b27329a582922631710b2cf10d64', 'Love Is Gone', 'Love Is Gone', NULL, NULL, 'SLANDER', 'https://p.scdn.co/mp3-preview/b8964798ad9f124429cc4a0565a32bbf5f234bfc?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(153, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2734b107690bc8f73fc8342b7f7', 'Don Julio', 'Don Julio', NULL, NULL, 'Ansley', 'https://p.scdn.co/mp3-preview/871e152c2d45e6d6ebe7a1b5e609d5dedd65bdd6?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(154, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2734d02949f4eaa850b2c178e70', 'On & On', 'On & On', NULL, NULL, 'Cartoon', 'https://p.scdn.co/mp3-preview/fc584b7483404ba6a748b02850a0d6e93232f56b?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(155, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273d7e6627df1d3e7e51e80f02c', 'La Casa De Papel (Money Heist) - My Life Is Going On - Main Theme', 'La Casa De Papel (Money Heist) - My Life Is Going On - Main Theme', NULL, NULL, 'Geek Music', 'https://p.scdn.co/mp3-preview/8854a268cc5a9922db2a367dd8bcb55d179a97e1?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(156, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273aaa991747739a4f1276a9fd7', 'Back to the Lanes', 'You And Me', NULL, NULL, 'Gutter Grinders', 'https://p.scdn.co/mp3-preview/088c45a7555a35341db1c3e70800f09900680d80?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(157, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273f3c7e4934b8dd9eedf69e6e5', 'Bella Ciao (Música Original de la Serie la Casa de Papel/ Money Heist)', 'Bella Ciao - Música Original de la Serie la Casa de Papel/ Money Heist', NULL, NULL, 'Manu Pilas', 'https://p.scdn.co/mp3-preview/e4c6b3cccad46c725bb9dcfb01d97c5eb4c9b481?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(158, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273ae1f56dbc14d331f5ed454a5', 'A Sky Full of Stars - Modern Pop', 'At My Worst', NULL, NULL, 'Pink Sweat$', 'https://p.scdn.co/mp3-preview/a821a6b3300253a5619fc68cb539a7aa309750d3?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(159, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2735698a8c4403d98e7b5c4c7d8', 'KOOLAID', 'KOOLAID', NULL, NULL, 'Jones Monroe', 'https://p.scdn.co/mp3-preview/df4c01dde251f174911b8fcff6511a6705a5e079?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(160, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273a0bd49aa3e922106eaec60a6', 'Ultimate Hot Girl Hype', 'Not Your Barbie Girl', NULL, NULL, 'Ava Max', 'https://p.scdn.co/mp3-preview/2f7bf0ea302044aba1730d4bcc865a0d5e300caf?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(161, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273c35e2f0ae41e675a6930cb70', 'Two (Expanded Edition)', 'Everything at Once', NULL, NULL, 'Lenka', 'https://p.scdn.co/mp3-preview/5ca38fca07754ea7d5dea1f7c1145d436ce5b546?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(162, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2735881273b8bf24f9902fdd9ea', 'Laneside Jams', 'Fast Car', NULL, NULL, 'Gutter Grinders', 'https://p.scdn.co/mp3-preview/ee14954971cd0572b979aa504c7663c4ccb5dcf3?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(163, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273d2446b7008dc5859c274ed55', 'Just For Fun (Deluxe)', 'Undress Rehearsal', NULL, NULL, 'Timeflies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(164, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2731b55c3257d316d184d641800', 'Small Town Boy', 'Arcade', NULL, NULL, 'Duncan Laurence', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(165, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273e6959fc4c603d715260a238b', 'Forever Sleep', 'Forever Sleep', NULL, NULL, 'Moon Fever', 'https://p.scdn.co/mp3-preview/29c4ce557cfaf41bebd96c1b0435646cb6008a97?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(166, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273b7fe8051921f099a13b5973f', '2000 Hits Mixtape', 'Who Says', NULL, NULL, 'Selena Gomez & The Scene', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(167, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273a9366f522de146fbe31e3fbc', 'Alternativo para las buenas vibras', 'telepatía', NULL, NULL, 'Kali Uchis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(168, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2734149922933c8ce17fe1b99cc', 'Echoes of Ink', 'Sex on Fire', NULL, NULL, 'Distorted Resonance', 'https://p.scdn.co/mp3-preview/1f42ed4418f7fd658ea2d2ab814af625e19a1aa0?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(169, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b27302376f33bb763fa30d34fd9b', 'MONTERO (Call Me By Your Name)', 'MONTERO (Call Me By Your Name)', NULL, NULL, 'Lil Nas X', 'https://p.scdn.co/mp3-preview/f653a289186d0de9a7685e2958ed5d86e073f3c0?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(170, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b27331118b058246353c3dbb3984', 'Love & Hate', 'Myself', NULL, NULL, 'Bazzi', 'https://p.scdn.co/mp3-preview/667044a31827560950e626d7a10feaceda136bfe?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(171, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2737b23864872121eac40aa3634', 'Diner Sessions', 'Everybody Talks', NULL, NULL, 'Eastern Thrills', 'https://p.scdn.co/mp3-preview/8d8f0656ba877c0c0d06a004907d6dce0721e2d6?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(172, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273bcf6d999338f72005c8522a7', 'Deep End', 'Deep End', NULL, NULL, 'Fousheé', 'https://p.scdn.co/mp3-preview/5daf2dc408662e8d9ee90314b2b9a412d9795133?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(173, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273a33d5f1dd7c3844f611cb31c', 'Party Mixtape', 'Hips Don\'t Lie (feat. Wyclef Jean)', NULL, NULL, 'Shakira', 'https://p.scdn.co/mp3-preview/374b492571c9ba59c2c4b455ab79ee7501adab93?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(174, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273aaa991747739a4f1276a9fd7', 'Back to the Lanes', 'Bitter Sweet Symphony', NULL, NULL, 'Gutter Grinders', 'https://p.scdn.co/mp3-preview/1c31dd2b763f1394dec0be4daa6a0c1323dd7bfa?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(175, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b27307ef76001ec0e627d79a6dd1', 'August Diaries', 'August Diaries', NULL, NULL, 'DHARIA', 'https://p.scdn.co/mp3-preview/c0708696ed7aaecbfc8c982360ec4fb2206ee034?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(176, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2738e26bf4293c9da7a6439607b', 'Sick Boy', 'Somebody', NULL, NULL, 'The Chainsmokers', 'https://p.scdn.co/mp3-preview/b5ce1fe0cc76c265b052bc6dd742775f0c48a823?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(177, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273b005546cc83ce7b7c52a5fd5', 'Dance', 'Dance', NULL, NULL, 'Kurt Deimer', 'https://p.scdn.co/mp3-preview/8e81e86893286fc74aab8bccf5b49f4b24684595?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(178, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b2735ef878a782c987d38d82b605', 'Positions', 'positions', NULL, NULL, 'Ariana Grande', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(179, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b273dc11256efc579cf0b3fffd01', 'Sounds of 2022', 'Slumber Party', NULL, NULL, 'Ashnikko', 'https://p.scdn.co/mp3-preview/61a45d3d731526533d81fa2343b027f1535b4b08?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(180, '1', '11', NULL, 'https://i.scdn.co/image/ab67616d0000b27388933ab9de13bfeb3571a7e5', 'Growlin\' at The Moon', 'Losing My Religion', NULL, NULL, 'The Grunge Growlers', 'https://p.scdn.co/mp3-preview/7d98503a469f000899ac835e178181245c156905?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-05-29 05:31:12', '2024-05-29 05:31:12'),
(181, '1', '12', NULL, 'https://i.scdn.co/image/ab67616d0000b27317d989a4733e529875aea60c', 'Bado Badi', 'Bado Badi', NULL, NULL, 'Mahadev Tunes', 'https://p.scdn.co/mp3-preview/29a8590786acc35c9f0a260d0198bc89254d4f11?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-29 10:39:31', '2024-06-07 05:14:41'),
(182, '1', '12', NULL, 'https://i.scdn.co/image/ab67616d0000b27317c8b293deaa9f7606ce94b9', 'Gulabi Sharara', 'Gulabi Sharara', NULL, NULL, 'Inder Arya', 'https://p.scdn.co/mp3-preview/e8dc84756e7f2c0c4b08d691efb73128a25321c4?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-29 10:39:31', '2024-06-07 05:14:41'),
(183, '1', '12', NULL, 'https://i.scdn.co/image/ab67616d0000b2730a4c87a48cb1725d513f9736', 'Bado Badi', 'Bado Badi', NULL, NULL, 'Chahat Fateh Ali Khan', 'https://p.scdn.co/mp3-preview/29a8590786acc35c9f0a260d0198bc89254d4f11?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-29 10:39:31', '2024-06-07 05:14:41'),
(184, '1', '12', NULL, 'https://i.scdn.co/image/ab67616d0000b273dfa8e0dab093f6a7c638c7fc', 'Teri Baaton Mein Aisa Uljha Jiya', 'Laal Peeli Akhiyaan', NULL, NULL, 'Romy', 'https://p.scdn.co/mp3-preview/50f730cde4503b76dc147500e1ee5bde3dab3599?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-29 10:39:31', '2024-06-07 05:14:41'),
(185, '1', '12', NULL, 'https://i.scdn.co/image/ab67616d0000b273bcc4cdbe60cfb7076dd15625', 'Babam Bam (From \"Mtv Hustle 2.0\")', 'Babam Bam (From \"Mtv Hustle 2.0\")', NULL, NULL, 'Paradox', 'https://p.scdn.co/mp3-preview/aebaa9d3970376c3f5ca6641a9be2cf4d49cb851?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-29 10:39:31', '2024-06-07 05:14:41'),
(186, '1', '12', NULL, 'https://i.scdn.co/image/ab67616d0000b2732fef6b1ba156aaf20d5cfd6a', 'Moti Veraana (From Songs of Faith)', 'Moti Veraana (From Songs of Faith)', NULL, NULL, 'Amit Trivedi', 'https://p.scdn.co/mp3-preview/bd51c911af269f51281590afc17bddca481100bf?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-29 10:39:31', '2024-06-07 05:14:41'),
(187, '1', '12', NULL, 'https://i.scdn.co/image/ab67616d0000b273642519ee783eca4cb6074118', 'Nakhrewali', 'Nakhrewali', NULL, NULL, 'Prashant Nakti', 'https://p.scdn.co/mp3-preview/b10f67d11b78af5311d53857fdc4b75c99e8b839?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-29 10:39:31', '2024-06-07 05:14:41'),
(188, '1', '12', NULL, 'https://i.scdn.co/image/ab67616d0000b27395626dafc4cffa7e94b05731', 'Kudiye Ni', 'Kudiye Ni', NULL, NULL, 'Aparshakti Khurana', 'https://p.scdn.co/mp3-preview/e026e45290e490c99c864738015cfbd811c81a22?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-29 10:39:31', '2024-06-07 05:14:41'),
(189, '1', '12', NULL, 'https://i.scdn.co/image/ab67616d0000b273a4686f3b95e096ba4ce53f83', 'I', 'Tum Todo Na (Female)', NULL, NULL, 'Bela Shende', 'https://p.scdn.co/mp3-preview/2df4929e2c721e549741699d0c2ec6addbec619f?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-29 10:39:31', '2024-06-07 05:14:41'),
(190, '1', '12', NULL, 'https://i.scdn.co/image/ab67616d0000b273614a583a490e23b29821b2ed', 'Groove With Arijit Singh', 'Ullu Ka Pattha (From \"Jagga Jasoos\")', NULL, NULL, 'Arijit Singh', 'https://p.scdn.co/mp3-preview/b84e9960874e3cf1308a6a60c7cd8c0aaa100b50?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deleted', NULL, 'spotify', NULL, '2024-05-29 10:39:31', '2024-06-07 05:14:41'),
(191, '8', NULL, 6, NULL, NULL, 'Star Sonic', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/4feefa195160cc4f5abc08ccdf258e1ccb806081?cid=6bb6c66516f94513ac294ba48b6afb34', '2:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(192, '8', NULL, 6, NULL, NULL, 'Lull Presence', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/c267c45292621c41a7abec3c2b3e7a7f0d53bf71?cid=6bb6c66516f94513ac294ba48b6afb34', '2:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(193, '8', NULL, 6, NULL, NULL, 'Forever Pouring', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/ceb695cbf2450e2b8e173ce67301d4da6a67c4b6?cid=6bb6c66516f94513ac294ba48b6afb34', '2:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(194, '8', NULL, 6, NULL, NULL, 'Solar Dusk', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/9907f7b6e29a8788d496e8e81a17ce1a3381337d?cid=6bb6c66516f94513ac294ba48b6afb34', '2:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(195, '8', NULL, 6, NULL, NULL, 'Mindful Coast', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/6478c34e4a7fa97c91c06c0bdedff3a374777591?cid=6bb6c66516f94513ac294ba48b6afb34', '2:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(196, '8', NULL, 6, NULL, NULL, 'Down Moments', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/248df10ecd26b71a5212a9f9ef1f75f0196bcf7f?cid=6bb6c66516f94513ac294ba48b6afb34', '2:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(197, '8', NULL, 6, NULL, NULL, 'Softly Gratitude', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/7dbaa8daaac33bfebcdf1782ffcea046099ea386?cid=6bb6c66516f94513ac294ba48b6afb34', '2:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(198, '8', NULL, 6, NULL, NULL, 'Somber Garden', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/d94f577b11294ae2018d16ef18bf26ccc1e77b62?cid=6bb6c66516f94513ac294ba48b6afb34', '2:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(199, '8', NULL, 6, NULL, NULL, 'Now Always', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/3f34533ba8834d9973b8513bb9ed0d1c49fbfe34?cid=6bb6c66516f94513ac294ba48b6afb34', '2:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(200, '8', NULL, 6, NULL, NULL, 'Daybreak Crimson', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/d3922700c47464109d2e5ba66ba680c137462f98?cid=6bb6c66516f94513ac294ba48b6afb34', '3:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(201, '8', NULL, 6, NULL, NULL, 'Reset Ascending', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/36a93d14d9744c22d627adf245f7e55f51a2cf5d?cid=6bb6c66516f94513ac294ba48b6afb34', '2:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(202, '8', NULL, 6, NULL, NULL, 'Rain Whispered', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/a647115fb27776d3907d15691e7bb88c703eaa43?cid=6bb6c66516f94513ac294ba48b6afb34', '2:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(203, '8', NULL, 6, NULL, NULL, 'Reminding Fireside', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/54709682e96bc19dd2815cdec6b5b5c89ac9f595?cid=6bb6c66516f94513ac294ba48b6afb34', '2:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(204, '8', NULL, 6, NULL, NULL, 'Lake Pass', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/017d7fa579ebd58004adf140a521004a92285a05?cid=6bb6c66516f94513ac294ba48b6afb34', '2:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(205, '8', NULL, 6, NULL, NULL, 'Drifted Solar', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/2b490559c4cfc931cf715e7ac09275ffabaa9086?cid=6bb6c66516f94513ac294ba48b6afb34', '2:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(206, '8', NULL, 6, NULL, NULL, 'Sunset Display', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/cf81936f90e30b68fa73a967a5a8a8d9090a8371?cid=6bb6c66516f94513ac294ba48b6afb34', '2:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(207, '8', NULL, 6, NULL, NULL, 'Water Evenings', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/ae38118633720da618c85b2c13676ceb52bc539d?cid=6bb6c66516f94513ac294ba48b6afb34', '2:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(208, '8', NULL, 6, NULL, NULL, 'Fireside Mirrored', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/c64de32529daf4d5b60e58e4b5a774925186515b?cid=6bb6c66516f94513ac294ba48b6afb34', '2:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(209, '8', NULL, 6, NULL, NULL, 'Grey Insight', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/3fc91ed36560143761210cde062746bb574cc469?cid=6bb6c66516f94513ac294ba48b6afb34', '3:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(210, '8', NULL, 6, NULL, NULL, 'Rain Memoir', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/7329367a633ea2f3663c1c1d156e19517b531fc5?cid=6bb6c66516f94513ac294ba48b6afb34', '2:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(211, '8', NULL, 6, NULL, NULL, 'Escaped End', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/feb6bf1037996ed69954f6573f6915afd3d583e3?cid=6bb6c66516f94513ac294ba48b6afb34', '2:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(212, '8', NULL, 6, NULL, NULL, 'Sphere Pulse', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/eb5066abc15037c618385a7385ef58cb2a0ce6d1?cid=6bb6c66516f94513ac294ba48b6afb34', '2:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(213, '8', NULL, 6, NULL, NULL, 'Heard Grey', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/548e97488964852315e0c0d4d0a0e6ed38c640f5?cid=6bb6c66516f94513ac294ba48b6afb34', '2:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(214, '8', NULL, 6, NULL, NULL, 'End Directions', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/ad8765064eeeb012ed6e133dc960ef2f4f76333a?cid=6bb6c66516f94513ac294ba48b6afb34', '2:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(215, '8', NULL, 6, NULL, NULL, 'Ethereal Opening', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/bc467dcc1ed897cb54ab65100b39a804234f85b8?cid=6bb6c66516f94513ac294ba48b6afb34', '2:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(216, '8', NULL, 6, NULL, NULL, 'Kaleidoscope Display', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/e8e9d921743e7f62bf881db82ef9fabb5b3c93a0?cid=6bb6c66516f94513ac294ba48b6afb34', '2:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(217, '8', NULL, 6, NULL, NULL, 'Woods Washed', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/80c74454ff44eda709b67401e98e259f6eb60b6c?cid=6bb6c66516f94513ac294ba48b6afb34', '2:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(218, '8', NULL, 6, NULL, NULL, 'Centred Moments', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/965d973ad9025e046b0b6f0592be8f22e592e807?cid=6bb6c66516f94513ac294ba48b6afb34', '2:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(219, '8', NULL, 6, NULL, NULL, 'Space Silhouette', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/c73e5acd46c5447d00e6ade3b683b0c33a68aa71?cid=6bb6c66516f94513ac294ba48b6afb34', '2:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(220, '8', NULL, 6, NULL, NULL, 'Cycles Rooted', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/e148048a1964af100bc1de975a93d7b06c6fadfb?cid=6bb6c66516f94513ac294ba48b6afb34', '2:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(221, '8', NULL, 6, NULL, NULL, 'Pure Motion', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/1a50ea8ab0e5a393709133f7d1fda9748e82b351?cid=6bb6c66516f94513ac294ba48b6afb34', '2:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(222, '8', NULL, 6, NULL, NULL, 'Coast Fractural', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/e04686ae8df2b9eed3ae59628e79bc0254c899ba?cid=6bb6c66516f94513ac294ba48b6afb34', '2:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(223, '8', NULL, 6, NULL, NULL, 'Amber Going', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/bea906402de89f8e2a928ba680a25b2dcb5ba78c?cid=6bb6c66516f94513ac294ba48b6afb34', '2:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(224, '8', NULL, 6, NULL, NULL, 'Harmonic Cold', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/c011c5b117fbae16a9ccf74c371c41e624e90e27?cid=6bb6c66516f94513ac294ba48b6afb34', '2:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(225, '8', NULL, 6, NULL, NULL, 'Captured Harmonic', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/e6b5c18df6ee5e762972319e4a2f547a238b6b79?cid=6bb6c66516f94513ac294ba48b6afb34', '2:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(226, '8', NULL, 6, NULL, NULL, 'Cycles Down', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/c0c040e00186310fc5e30bba405cea8eeb3ab477?cid=6bb6c66516f94513ac294ba48b6afb34', '2:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(227, '8', NULL, 6, NULL, NULL, 'Mirrored Motion', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/1a276d7a037279bc04044c4e395b542939b1b7f2?cid=6bb6c66516f94513ac294ba48b6afb34', '2:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(228, '8', NULL, 6, NULL, NULL, 'Soothed Rippling', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/16cbd108dab3ae80ac63dcc26d3acbde8f83fb40?cid=6bb6c66516f94513ac294ba48b6afb34', '2:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(229, '8', NULL, 6, NULL, NULL, 'Always Passage', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/49371d70576c8edb456b37ccb6a79e49d64875c9?cid=6bb6c66516f94513ac294ba48b6afb34', '2:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(230, '8', NULL, 6, NULL, NULL, 'Departure River', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/50323f16b4ab07a5b9a990a4840a229e4c67de74?cid=6bb6c66516f94513ac294ba48b6afb34', '2:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(231, '8', NULL, 6, NULL, NULL, 'Thought Now', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/145d3fda32bf80d1516cfc30f72f485ede9e18f7?cid=6bb6c66516f94513ac294ba48b6afb34', '2:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(232, '8', NULL, 6, NULL, NULL, 'Flow Lost', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/01e85e53ed864afc05e36c34ceac22d3f89d43dc?cid=6bb6c66516f94513ac294ba48b6afb34', '2:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(233, '8', NULL, 6, NULL, NULL, 'Whispered Respite', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/cb605d89049564c5d0a60cf207ea57c2fa0d7446?cid=6bb6c66516f94513ac294ba48b6afb34', '2:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(234, '8', NULL, 6, NULL, NULL, 'Lost Drifted', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/952325cf049937b92b28b8ccfee58616b2d06f73?cid=6bb6c66516f94513ac294ba48b6afb34', '3:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(235, '8', NULL, 6, NULL, NULL, 'Summer Respite', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/17f87daa53fa80b3fa494fdc83ff80de1ec6f271?cid=6bb6c66516f94513ac294ba48b6afb34', '3:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(236, '8', NULL, 6, NULL, NULL, 'Nature Charisma', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/7a6ad27b6602975a5f582a190bec1e2088e3b02a?cid=6bb6c66516f94513ac294ba48b6afb34', '2:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(237, '8', NULL, 6, NULL, NULL, 'Down Final', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/a0af5f04546c0e33b17d3e505364831cc7a1237c?cid=6bb6c66516f94513ac294ba48b6afb34', '2:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(238, '8', NULL, 6, NULL, NULL, 'Bloomed Dew', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/3ce56919b263b41c43cda0f4ce0bee2e780cae78?cid=6bb6c66516f94513ac294ba48b6afb34', '2:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(239, '8', NULL, 6, NULL, NULL, 'Cloud Pass', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/f5705eb82d4f761c51cf31de856a3a610b4f3790?cid=6bb6c66516f94513ac294ba48b6afb34', '2:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(240, '8', NULL, 6, NULL, NULL, 'Now Flow', NULL, NULL, 'Musica para Yoga', 'https://p.scdn.co/mp3-preview/e1bcd911788027cb3caaa718f4f7fd849f73cdc5?cid=6bb6c66516f94513ac294ba48b6afb34', '2:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:48:36', '2024-06-04 04:48:36'),
(241, '8', '13', NULL, 'https://i.scdn.co/image/ab67616d0000b273ca5585b4e97cd9deeafb5c63', 'Ek Zindagi (From \"Angrezi Medium\")', 'Ek Zindagi (From \"Angrezi Medium\")', NULL, NULL, 'Taniskaa Sanghvi', 'https://p.scdn.co/mp3-preview/366a6e41459bd9726da1e46e9561b05f1ef02bab?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:53:04', '2024-06-04 04:53:04'),
(242, '8', '13', NULL, 'https://i.scdn.co/image/ab67616d0000b2737fb3c81257f9398123256f84', 'Kudi Nu Nachne De (From \"Angrezi Medium\")', 'Kudi Nu Nachne De (From \"Angrezi Medium\")', NULL, NULL, 'Vishal Dadlani', 'https://p.scdn.co/mp3-preview/b2bf65ca363fa56334e6e4e81aa4d953f0a7837a?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:53:04', '2024-06-04 04:53:04'),
(243, '8', '13', NULL, 'https://i.scdn.co/image/ab67616d0000b2731563e3ab78422f323f54c57f', 'Simmba', 'Bandeya Rey Bandeya', NULL, NULL, 'Arijit Singh', 'https://p.scdn.co/mp3-preview/fc257210e6b0639d5f9bda11f102b748a2ea3c87?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:53:04', '2024-06-04 04:53:04'),
(244, '8', '13', NULL, 'https://i.scdn.co/image/ab67616d0000b273badc10f3684a57f23c26f6c1', 'Kar Har Maidaan Fateh (From \"Sanju\")', 'Kar Har Maidaan Fateh (From \"Sanju\")', NULL, NULL, 'Sukhwinder Singh', 'https://p.scdn.co/mp3-preview/dbc766273f065f6a40e9377c468d41e96a486609?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:53:04', '2024-06-04 04:53:04'),
(245, '8', '13', NULL, 'https://i.scdn.co/image/ab67616d0000b27349079e6945b600abe668cae4', 'Dear Zindagi (Original Motion Picture Soundtrack)', 'Love You Zindagi', NULL, NULL, 'Amit Trivedi', 'https://p.scdn.co/mp3-preview/d0a12977244dc4a8aefb958435627a256e3572cc?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:53:04', '2024-06-04 04:53:04'),
(246, '8', '13', NULL, 'https://i.scdn.co/image/ab67616d0000b273090bb1b653340c5db45469b3', 'Iqbal (Original Motion Picture Soundtrack)', 'Aashayein', NULL, NULL, 'KK', 'https://p.scdn.co/mp3-preview/a0c458642077ee0372cad49570a1557634fe0279?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:53:04', '2024-06-04 04:53:04'),
(247, '8', '13', NULL, 'https://i.scdn.co/image/ab67616d0000b27332185a54aae1479fc01e2806', 'Golmaal 3', 'Apna Har Din', NULL, NULL, 'Pritam', 'https://p.scdn.co/mp3-preview/771cb30ec1499740e0be1f8ba27210e94d5cb8c6?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:53:04', '2024-06-04 04:53:04'),
(248, '8', '13', NULL, 'https://i.scdn.co/image/ab67616d0000b2731faa8833d0a35afb3f2ef96b', 'Mera Safar', 'Mera Safar', NULL, NULL, 'Iqlipse Nova', 'https://p.scdn.co/mp3-preview/ba4a4d3a31bdc055ba2eb7be8af35e0aa3bd5ecd?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:53:04', '2024-06-04 04:53:04'),
(249, '8', '13', NULL, 'https://i.scdn.co/image/ab67616d0000b273af0ccf07b38dab145ad4462f', 'Kyun Dhunde (1 Min Music)', 'Kyun Dhunde - 1 Min Music', NULL, NULL, 'Vilen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:53:04', '2024-06-04 04:53:04'),
(250, '8', '13', NULL, 'https://i.scdn.co/image/ab67616d0000b27324126b897856dc49f873473b', 'Satyamev Jayate', 'Chiraiyya', NULL, NULL, 'Swanand Kirkire', 'https://p.scdn.co/mp3-preview/f49d6aa89d1789b9e48e6031d13cd31301e43d7c?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:53:04', '2024-06-04 04:53:04'),
(251, '8', '13', NULL, 'https://i.scdn.co/image/ab67616d0000b273fd2df008046f04c32d9c0c2e', 'Bhaag Milkha Bhaag (Original Motion Picture Soundtrack)', 'Bhaag Milkha Bhaag - Rock Version', NULL, NULL, 'Shankar-Ehsaan-Loy', 'https://p.scdn.co/mp3-preview/f5a8b965016f3fc7bb22f07e33dd6f5454fe106d?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:53:04', '2024-06-04 04:53:04'),
(252, '8', '13', NULL, 'https://i.scdn.co/image/ab67616d0000b27349e0134c686547c28b7c999f', 'This Is Acting', 'Unstoppable', NULL, NULL, 'Sia', 'https://p.scdn.co/mp3-preview/99a07d00531c0053f55a46e94ed92b1560396754?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:53:04', '2024-06-04 04:53:04'),
(253, '8', '13', NULL, 'https://i.scdn.co/image/ab67616d0000b27386127bafba534c0b9defcde3', 'Keejo Kesari Ke Laal', 'Keejo Kesari Ke Laal', NULL, NULL, 'Raj Meena', 'https://p.scdn.co/mp3-preview/7bbcd3ce8a8c9c24300ecd5b35a7412fc6b7bbd3?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:53:04', '2024-06-04 04:53:04'),
(254, '8', '13', NULL, 'https://i.scdn.co/image/ab67616d0000b273c45169492ebc6af70588df7d', 'Gulaal', 'Aarambh', NULL, NULL, 'Piyush Mishra', 'https://p.scdn.co/mp3-preview/f6012dc596b09e69a071ffd94f659f448ded6a74?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:53:04', '2024-06-04 04:53:04'),
(255, '8', '13', NULL, 'https://i.scdn.co/image/ab6765630000ba8a2b65845e4b426467a590d252', 'Mahabharat Gaatha', 'Mahabharat', NULL, NULL, NULL, 'https://podz-content.spotifycdn.com/audio/clips/0t2ssHYbUou4vtd2X3yhaZ/clip_3935_63935.mp3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:53:04', '2024-06-04 04:53:04'),
(256, '8', '13', NULL, 'https://i.scdn.co/image/ab67616d0000b2734c74beed966d2f38aa298c57', 'Badlapur (Original Motion Picture Soundtrack)', 'Jee Karda - Rock Version', NULL, NULL, 'Divya Kumar', 'https://p.scdn.co/mp3-preview/3bb5deb6ebd65aaf362412de452e82ec13bc30fc?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spotify', NULL, '2024-06-04 04:53:04', '2024-06-04 04:53:04'),
(257, '1', '14', NULL, 'https://i.scdn.co/image/ab67616d0000b273ce6d0eef0c1ce77e5f95bbbc', 'Progressive Psy Trance Picks Vol.8', 'Api', NULL, NULL, 'Odiseo', 'https://p.scdn.co/mp3-preview/04599a1fe12ffac01d2bcb08340f84c0dd2cc335?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-07 05:45:19', '2024-06-07 05:45:19'),
(258, '1', '14', NULL, 'https://i.scdn.co/image/ab67616d0000b273aa2ff29970d9a63a49dfaeb2', 'Wellness & Dreaming Source', 'Is', NULL, NULL, 'Vlasta Marek', 'https://p.scdn.co/mp3-preview/d61fbb7016904624373008ea056d45e6df891071?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-07 05:45:19', '2024-06-07 05:45:19');
INSERT INTO `tracks` (`id`, `user_id`, `playlist_id`, `album_id`, `images`, `album_name`, `track_name`, `album_release_date`, `album_total_tracks`, `artist_name`, `preview_url`, `duration`, `genres`, `country`, `have_manager`, `organisation`, `organisation_other`, `promo`, `describes`, `language`, `uploadIn`, `uploadInType`, `description`, `status`, `albumStatus`, `location`, `release_date`, `created_at`, `updated_at`) VALUES
(259, '1', '14', NULL, 'https://i.scdn.co/image/ab67616d0000b273ee0d0dce888c6c8a70db6e8b', 'This Is Happening', 'All I Want', NULL, NULL, 'LCD Soundsystem', 'https://p.scdn.co/mp3-preview/cc680ec0f5fd5ff21f0cd11ac47e10d3cbb92190?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-07 05:45:19', '2024-06-07 05:45:19'),
(260, '1', '14', NULL, 'https://i.scdn.co/image/ab67616d0000b2738b7447ac3daa1da18811cf7b', 'Glenn Horiuchi Trio / Gelenn Horiuchi Quartet: Mercy / Jump Start / Endpoints / Curl Out / Earthworks / Mind Probe / Null Set / Another Space (A)', 'Endpoints', NULL, NULL, 'Glenn Horiuchi Trio', 'https://p.scdn.co/mp3-preview/d6ecf1f98d0b1fdc8c535de8e2010d0d8b8d040b?cid=6bb6c66516f94513ac294ba48b6afb34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-07 05:45:19', '2024-06-07 05:45:19'),
(261, '1', '14', NULL, 'https://i.scdn.co/image/ab67616d0000b27304e57d181ff062f8339d6c71', 'All The Best (Spanish Version)', 'You Are So Beautiful', NULL, NULL, 'Zucchero', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-07 05:45:19', '2024-06-07 05:45:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `user_role` enum('admin','artist','Industry','customer','Label Manager','Playlist curator','A&R Executive','Fans Engagement') NOT NULL DEFAULT 'artist',
  `otp` int(11) DEFAULT NULL,
  `otp_verified` enum('Yes','No') NOT NULL DEFAULT 'No',
  `profile_pic` text DEFAULT 'images/default.jpg',
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `website` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twiter` text DEFAULT NULL,
  `youtube` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `status` enum('active','deactivate','banned') NOT NULL,
  `industry_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `user_role`, `otp`, `otp_verified`, `profile_pic`, `first_name`, `last_name`, `description`, `website`, `facebook`, `twiter`, `youtube`, `instagram`, `status`, `industry_by`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$irIonGra62Ah1wVCfIMeCuX/UP7jA26CnT4zOMbHzVMoWfbmML.Pu', NULL, 'admin', NULL, 'Yes', 'images/1_karan.jpg', 'Karan', 'Aujla', 'This profile for testing', 'Website.com', 'Facebook.com', 'dark-mode', 'YouTube.com', 'Instagram.com', 'active', NULL, '2024-03-14 06:52:34', '2024-03-29 06:09:06'),
(5, 'harkirat', 'harkirat.itinfonity@gmail.com', NULL, '$2y$12$irIonGra62Ah1wVCfIMeCuX/UP7jA26CnT4zOMbHzVMoWfbmML.Pu', NULL, 'artist', 121181, 'Yes', 'images/5_just-good-thought-original-imagf97q8huhrjgh.webp', 'Harkirat', 'Singh', NULL, 'harkirat.itinfonity@gmail.com', NULL, NULL, NULL, NULL, 'banned', NULL, '2024-03-14 06:32:53', '2024-06-07 04:34:08'),
(8, 'itdev', 'itdev@itinfonity.com', NULL, '$2y$12$irIonGra62Ah1wVCfIMeCuX/UP7jA26CnT4zOMbHzVMoWfbmML.Pu', NULL, 'Industry', 105365, 'Yes', 'images/8_tezzal.png', 'Diljit', 'Dosanjh', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'itdev@itinfonity.com', NULL, NULL, NULL, NULL, 'active', NULL, '2024-03-22 06:46:05', '2024-08-09 06:06:19'),
(9, 'suneha', 'suneha@itinfonity.com', NULL, '$2y$12$irIonGra62Ah1wVCfIMeCuX/UP7jA26CnT4zOMbHzVMoWfbmML.Pu', NULL, 'customer', 193276, 'Yes', 'images/9_alexandaria_doller.png', 'suneha', 'goyal', 'testing description', 'suneha@itinfonity.com', NULL, NULL, NULL, NULL, 'active', NULL, '2024-05-03 10:04:09', '2024-05-23 11:57:06'),
(10, NULL, 'test12@gmail.com', NULL, NULL, NULL, 'Playlist curator', NULL, 'No', 'images/default.jpg', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, '2024-06-01 10:06:48', '2024-06-01 10:06:48'),
(11, NULL, 'artish@gmail.com', NULL, NULL, NULL, 'Label Manager', NULL, 'No', 'images/default.jpg', 'artish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deactivate', 8, '2024-06-01 10:35:22', '2024-08-09 05:31:16'),
(12, NULL, 'aman@gmail.com', NULL, NULL, NULL, 'Playlist curator', NULL, 'No', 'images/default.jpg', 'Aman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deactivate', 8, '2024-06-01 10:36:01', '2024-06-07 06:02:16'),
(13, NULL, 'arjun@gmail.com', NULL, NULL, NULL, 'A&R Executive', NULL, 'No', 'images/default.jpg', 'Arjun', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 8, '2024-06-01 10:43:37', '2024-06-01 10:43:37'),
(14, NULL, 'Testing@gmail.com', NULL, NULL, NULL, 'A&R Executive', NULL, 'No', 'images/default.jpg', 'Testing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deactivate', 8, '2024-06-01 10:49:12', '2024-06-07 06:47:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advanced`
--
ALTER TABLE `advanced`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arplaylists`
--
ALTER TABLE `arplaylists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `arplaylists_user_id_foreign` (`user_id`);

--
-- Indexes for table `biographies`
--
ALTER TABLE `biographies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curators`
--
ALTER TABLE `curators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curator_options`
--
ALTER TABLE `curator_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curators` (`curator_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invites`
--
ALTER TABLE `invites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `next_play`
--
ALTER TABLE `next_play`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pitchamounts`
--
ALTER TABLE `pitchamounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist_songs`
--
ALTER TABLE `playlist_songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist` (`playlist_id`);

--
-- Indexes for table `privacies`
--
ALTER TABLE `privacies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules1`
--
ALTER TABLE `schedules1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `song_details`
--
ALTER TABLE `song_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `song_id` (`song_id`);

--
-- Indexes for table `song_likes`
--
ALTER TABLE `song_likes`
  ADD PRIMARY KEY (`like_id`),
  ADD UNIQUE KEY `unique_song_like` (`song_id`,`user_id`);

--
-- Indexes for table `spotifyplaylists`
--
ALTER TABLE `spotifyplaylists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_advance`
--
ALTER TABLE `sub_advance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `sub_countries`
--
ALTER TABLE `sub_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termsandconditions`
--
ALTER TABLE `termsandconditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `albumStatus` (`albumStatus`);

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
-- AUTO_INCREMENT for table `advanced`
--
ALTER TABLE `advanced`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `arplaylists`
--
ALTER TABLE `arplaylists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `biographies`
--
ALTER TABLE `biographies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `curators`
--
ALTER TABLE `curators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `curator_options`
--
ALTER TABLE `curator_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `invites`
--
ALTER TABLE `invites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `next_play`
--
ALTER TABLE `next_play`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pitchamounts`
--
ALTER TABLE `pitchamounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `playlist_songs`
--
ALTER TABLE `playlist_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `privacies`
--
ALTER TABLE `privacies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schedules1`
--
ALTER TABLE `schedules1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `song_details`
--
ALTER TABLE `song_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `song_likes`
--
ALTER TABLE `song_likes`
  MODIFY `like_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `spotifyplaylists`
--
ALTER TABLE `spotifyplaylists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sub_advance`
--
ALTER TABLE `sub_advance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `sub_countries`
--
ALTER TABLE `sub_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `termsandconditions`
--
ALTER TABLE `termsandconditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `arplaylists`
--
ALTER TABLE `arplaylists`
  ADD CONSTRAINT `arplaylists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `playlist_songs`
--
ALTER TABLE `playlist_songs`
  ADD CONSTRAINT `playlist` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`id`);

--
-- Constraints for table `privacies`
--
ALTER TABLE `privacies`
  ADD CONSTRAINT `privacies_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `song_details`
--
ALTER TABLE `song_details`
  ADD CONSTRAINT `song_details_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`);

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `tracks`
--
ALTER TABLE `tracks`
  ADD CONSTRAINT `tracks_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`),
  ADD CONSTRAINT `tracks_ibfk_2` FOREIGN KEY (`albumStatus`) REFERENCES `albums` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
