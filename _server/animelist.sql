-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2021 at 11:51 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animelist`
--

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `human_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_main` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `characters_media`
--

CREATE TABLE `characters_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `character_id` bigint(20) UNSIGNED NOT NULL,
  `medium_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `formats`
--

CREATE TABLE `formats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `formats`
--

INSERT INTO `formats` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, NULL, NULL, 'Anime'),
(2, NULL, NULL, 'Manga');

-- --------------------------------------------------------

--
-- Table structure for table `humans`
--

CREATE TABLE `humans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `list_items`
--

CREATE TABLE `list_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `media_id` bigint(20) UNSIGNED NOT NULL,
  `score` int(11) NOT NULL,
  `started_watching` date NOT NULL,
  `finished_watching` date NOT NULL,
  `progress` int(11) NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_romanji` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_english` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `season_id` bigint(20) UNSIGNED NOT NULL,
  `format_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `release_day` datetime NOT NULL,
  `score` double(8,2) NOT NULL,
  `episodes` int(11) NOT NULL,
  `score_mal` double(8,2) NOT NULL,
  `score_ani` double(8,2) NOT NULL,
  `favourites` int(11) NOT NULL,
  `favourites_mal` int(11) NOT NULL,
  `favourites_ani` int(11) NOT NULL,
  `studio_id` bigint(20) UNSIGNED NOT NULL,
  `source_type_id` bigint(20) UNSIGNED NOT NULL,
  `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_tags`
--

CREATE TABLE `media_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `medium_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_types`
--

CREATE TABLE `media_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_types`
--

INSERT INTO `media_types` (`id`, `created_at`, `updated_at`, `name`, `second_name`) VALUES
(1, NULL, NULL, 'Anime', 'TV'),
(2, NULL, NULL, 'Anime', 'Movie'),
(3, NULL, NULL, 'Anime', 'ONA'),
(4, NULL, NULL, 'Anime', 'OVA'),
(5, NULL, NULL, 'Manga', 'Japanese Manga'),
(6, NULL, NULL, 'Manga', 'Korean Manga'),
(7, NULL, NULL, 'Manga', 'Chinese Manga'),
(8, NULL, NULL, 'Manga', 'Western Manga'),
(9, NULL, NULL, 'Light Novel', 'Light Novel');

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
(1, '2021_01_30_191801_create_humans_table', 1),
(2, '2021_01_30_192112_create_media_types_table', 1),
(3, '2021_01_30_192252_create_formats_table', 1),
(4, '2021_01_30_192316_create_studios_table', 1),
(5, '2021_01_30_192510_create_relation_types_table', 1),
(6, '2021_01_30_192553_create_statuses_table', 1),
(7, '2021_01_30_192743_create_seasons_table', 1),
(8, '2021_01_30_193032_create_media_table', 1),
(9, '2021_01_30_193128_create_relations_table', 1),
(10, '2021_01_30_193238_create_tags_table', 1),
(11, '2021_01_30_193517_create_medium__tags_table', 1),
(12, '2021_01_30_193643_create_characters_table', 1),
(13, '2021_01_30_193911_create_users_table', 1),
(14, '2021_01_30_194019_create_posts_table', 1),
(15, '2021_01_30_194056_create_profiles_table', 1),
(16, '2021_01_30_194152_create_list_items_table', 1),
(17, '2021_01_30_194318_create_comments_table', 1),
(18, '2021_01_30_194332_create_files_table', 1),
(19, '2021_02_03_161911_create_characters_media', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_media_id` bigint(20) UNSIGNED NOT NULL,
  `child_media_id` bigint(20) UNSIGNED NOT NULL,
  `relation_type_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relation_types`
--

CREATE TABLE `relation_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `season_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` year(4) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`id`, `created_at`, `updated_at`, `season_name`, `year`, `start_date`, `end_date`) VALUES
(1, NULL, NULL, 'Winter', 1939, '1939-01-01', '1939-03-31'),
(2, NULL, NULL, 'Spring', 1939, '1939-04-01', '1939-06-30'),
(3, NULL, NULL, 'Summer', 1939, '1939-07-01', '1939-09-30'),
(4, NULL, NULL, 'Fall', 1939, '1939-10-01', '1939-12-31'),
(5, NULL, NULL, 'Winter', 1940, '1940-01-01', '1940-03-31'),
(6, NULL, NULL, 'Spring', 1940, '1940-04-01', '1940-06-30'),
(7, NULL, NULL, 'Summer', 1940, '1940-07-01', '1940-09-30'),
(8, NULL, NULL, 'Fall', 1940, '1940-10-01', '1940-12-31'),
(9, NULL, NULL, 'Winter', 1941, '1941-01-01', '1941-03-31'),
(10, NULL, NULL, 'Spring', 1941, '1941-04-01', '1941-06-30'),
(11, NULL, NULL, 'Summer', 1941, '1941-07-01', '1941-09-30'),
(12, NULL, NULL, 'Fall', 1941, '1941-10-01', '1941-12-31'),
(13, NULL, NULL, 'Winter', 1942, '1942-01-01', '1942-03-31'),
(14, NULL, NULL, 'Spring', 1942, '1942-04-01', '1942-06-30'),
(15, NULL, NULL, 'Summer', 1942, '1942-07-01', '1942-09-30'),
(16, NULL, NULL, 'Fall', 1942, '1942-10-01', '1942-12-31'),
(17, NULL, NULL, 'Winter', 1943, '1943-01-01', '1943-03-31'),
(18, NULL, NULL, 'Spring', 1943, '1943-04-01', '1943-06-30'),
(19, NULL, NULL, 'Summer', 1943, '1943-07-01', '1943-09-30'),
(20, NULL, NULL, 'Fall', 1943, '1943-10-01', '1943-12-31'),
(21, NULL, NULL, 'Winter', 1944, '1944-01-01', '1944-03-31'),
(22, NULL, NULL, 'Spring', 1944, '1944-04-01', '1944-06-30'),
(23, NULL, NULL, 'Summer', 1944, '1944-07-01', '1944-09-30'),
(24, NULL, NULL, 'Fall', 1944, '1944-10-01', '1944-12-31'),
(25, NULL, NULL, 'Winter', 1945, '1945-01-01', '1945-03-31'),
(26, NULL, NULL, 'Spring', 1945, '1945-04-01', '1945-06-30'),
(27, NULL, NULL, 'Summer', 1945, '1945-07-01', '1945-09-30'),
(28, NULL, NULL, 'Fall', 1945, '1945-10-01', '1945-12-31'),
(29, NULL, NULL, 'Winter', 1946, '1946-01-01', '1946-03-31'),
(30, NULL, NULL, 'Spring', 1946, '1946-04-01', '1946-06-30'),
(31, NULL, NULL, 'Summer', 1946, '1946-07-01', '1946-09-30'),
(32, NULL, NULL, 'Fall', 1946, '1946-10-01', '1946-12-31'),
(33, NULL, NULL, 'Winter', 1947, '1947-01-01', '1947-03-31'),
(34, NULL, NULL, 'Spring', 1947, '1947-04-01', '1947-06-30'),
(35, NULL, NULL, 'Summer', 1947, '1947-07-01', '1947-09-30'),
(36, NULL, NULL, 'Fall', 1947, '1947-10-01', '1947-12-31'),
(37, NULL, NULL, 'Winter', 1948, '1948-01-01', '1948-03-31'),
(38, NULL, NULL, 'Spring', 1948, '1948-04-01', '1948-06-30'),
(39, NULL, NULL, 'Summer', 1948, '1948-07-01', '1948-09-30'),
(40, NULL, NULL, 'Fall', 1948, '1948-10-01', '1948-12-31'),
(41, NULL, NULL, 'Winter', 1949, '1949-01-01', '1949-03-31'),
(42, NULL, NULL, 'Spring', 1949, '1949-04-01', '1949-06-30'),
(43, NULL, NULL, 'Summer', 1949, '1949-07-01', '1949-09-30'),
(44, NULL, NULL, 'Fall', 1949, '1949-10-01', '1949-12-31'),
(45, NULL, NULL, 'Winter', 1950, '1950-01-01', '1950-03-31'),
(46, NULL, NULL, 'Spring', 1950, '1950-04-01', '1950-06-30'),
(47, NULL, NULL, 'Summer', 1950, '1950-07-01', '1950-09-30'),
(48, NULL, NULL, 'Fall', 1950, '1950-10-01', '1950-12-31'),
(49, NULL, NULL, 'Winter', 1951, '1951-01-01', '1951-03-31'),
(50, NULL, NULL, 'Spring', 1951, '1951-04-01', '1951-06-30'),
(51, NULL, NULL, 'Summer', 1951, '1951-07-01', '1951-09-30'),
(52, NULL, NULL, 'Fall', 1951, '1951-10-01', '1951-12-31'),
(53, NULL, NULL, 'Winter', 1952, '1952-01-01', '1952-03-31'),
(54, NULL, NULL, 'Spring', 1952, '1952-04-01', '1952-06-30'),
(55, NULL, NULL, 'Summer', 1952, '1952-07-01', '1952-09-30'),
(56, NULL, NULL, 'Fall', 1952, '1952-10-01', '1952-12-31'),
(57, NULL, NULL, 'Winter', 1953, '1953-01-01', '1953-03-31'),
(58, NULL, NULL, 'Spring', 1953, '1953-04-01', '1953-06-30'),
(59, NULL, NULL, 'Summer', 1953, '1953-07-01', '1953-09-30'),
(60, NULL, NULL, 'Fall', 1953, '1953-10-01', '1953-12-31'),
(61, NULL, NULL, 'Winter', 1954, '1954-01-01', '1954-03-31'),
(62, NULL, NULL, 'Spring', 1954, '1954-04-01', '1954-06-30'),
(63, NULL, NULL, 'Summer', 1954, '1954-07-01', '1954-09-30'),
(64, NULL, NULL, 'Fall', 1954, '1954-10-01', '1954-12-31'),
(65, NULL, NULL, 'Winter', 1955, '1955-01-01', '1955-03-31'),
(66, NULL, NULL, 'Spring', 1955, '1955-04-01', '1955-06-30'),
(67, NULL, NULL, 'Summer', 1955, '1955-07-01', '1955-09-30'),
(68, NULL, NULL, 'Fall', 1955, '1955-10-01', '1955-12-31'),
(69, NULL, NULL, 'Winter', 1956, '1956-01-01', '1956-03-31'),
(70, NULL, NULL, 'Spring', 1956, '1956-04-01', '1956-06-30'),
(71, NULL, NULL, 'Summer', 1956, '1956-07-01', '1956-09-30'),
(72, NULL, NULL, 'Fall', 1956, '1956-10-01', '1956-12-31'),
(73, NULL, NULL, 'Winter', 1957, '1957-01-01', '1957-03-31'),
(74, NULL, NULL, 'Spring', 1957, '1957-04-01', '1957-06-30'),
(75, NULL, NULL, 'Summer', 1957, '1957-07-01', '1957-09-30'),
(76, NULL, NULL, 'Fall', 1957, '1957-10-01', '1957-12-31'),
(77, NULL, NULL, 'Winter', 1958, '1958-01-01', '1958-03-31'),
(78, NULL, NULL, 'Spring', 1958, '1958-04-01', '1958-06-30'),
(79, NULL, NULL, 'Summer', 1958, '1958-07-01', '1958-09-30'),
(80, NULL, NULL, 'Fall', 1958, '1958-10-01', '1958-12-31'),
(81, NULL, NULL, 'Winter', 1959, '1959-01-01', '1959-03-31'),
(82, NULL, NULL, 'Spring', 1959, '1959-04-01', '1959-06-30'),
(83, NULL, NULL, 'Summer', 1959, '1959-07-01', '1959-09-30'),
(84, NULL, NULL, 'Fall', 1959, '1959-10-01', '1959-12-31'),
(85, NULL, NULL, 'Winter', 1960, '1960-01-01', '1960-03-31'),
(86, NULL, NULL, 'Spring', 1960, '1960-04-01', '1960-06-30'),
(87, NULL, NULL, 'Summer', 1960, '1960-07-01', '1960-09-30'),
(88, NULL, NULL, 'Fall', 1960, '1960-10-01', '1960-12-31'),
(89, NULL, NULL, 'Winter', 1961, '1961-01-01', '1961-03-31'),
(90, NULL, NULL, 'Spring', 1961, '1961-04-01', '1961-06-30'),
(91, NULL, NULL, 'Summer', 1961, '1961-07-01', '1961-09-30'),
(92, NULL, NULL, 'Fall', 1961, '1961-10-01', '1961-12-31'),
(93, NULL, NULL, 'Winter', 1962, '1962-01-01', '1962-03-31'),
(94, NULL, NULL, 'Spring', 1962, '1962-04-01', '1962-06-30'),
(95, NULL, NULL, 'Summer', 1962, '1962-07-01', '1962-09-30'),
(96, NULL, NULL, 'Fall', 1962, '1962-10-01', '1962-12-31'),
(97, NULL, NULL, 'Winter', 1963, '1963-01-01', '1963-03-31'),
(98, NULL, NULL, 'Spring', 1963, '1963-04-01', '1963-06-30'),
(99, NULL, NULL, 'Summer', 1963, '1963-07-01', '1963-09-30'),
(100, NULL, NULL, 'Fall', 1963, '1963-10-01', '1963-12-31'),
(101, NULL, NULL, 'Winter', 1964, '1964-01-01', '1964-03-31'),
(102, NULL, NULL, 'Spring', 1964, '1964-04-01', '1964-06-30'),
(103, NULL, NULL, 'Summer', 1964, '1964-07-01', '1964-09-30'),
(104, NULL, NULL, 'Fall', 1964, '1964-10-01', '1964-12-31'),
(105, NULL, NULL, 'Winter', 1965, '1965-01-01', '1965-03-31'),
(106, NULL, NULL, 'Spring', 1965, '1965-04-01', '1965-06-30'),
(107, NULL, NULL, 'Summer', 1965, '1965-07-01', '1965-09-30'),
(108, NULL, NULL, 'Fall', 1965, '1965-10-01', '1965-12-31'),
(109, NULL, NULL, 'Winter', 1966, '1966-01-01', '1966-03-31'),
(110, NULL, NULL, 'Spring', 1966, '1966-04-01', '1966-06-30'),
(111, NULL, NULL, 'Summer', 1966, '1966-07-01', '1966-09-30'),
(112, NULL, NULL, 'Fall', 1966, '1966-10-01', '1966-12-31'),
(113, NULL, NULL, 'Winter', 1967, '1967-01-01', '1967-03-31'),
(114, NULL, NULL, 'Spring', 1967, '1967-04-01', '1967-06-30'),
(115, NULL, NULL, 'Summer', 1967, '1967-07-01', '1967-09-30'),
(116, NULL, NULL, 'Fall', 1967, '1967-10-01', '1967-12-31'),
(117, NULL, NULL, 'Winter', 1968, '1968-01-01', '1968-03-31'),
(118, NULL, NULL, 'Spring', 1968, '1968-04-01', '1968-06-30'),
(119, NULL, NULL, 'Summer', 1968, '1968-07-01', '1968-09-30'),
(120, NULL, NULL, 'Fall', 1968, '1968-10-01', '1968-12-31'),
(121, NULL, NULL, 'Winter', 1969, '1969-01-01', '1969-03-31'),
(122, NULL, NULL, 'Spring', 1969, '1969-04-01', '1969-06-30'),
(123, NULL, NULL, 'Summer', 1969, '1969-07-01', '1969-09-30'),
(124, NULL, NULL, 'Fall', 1969, '1969-10-01', '1969-12-31'),
(125, NULL, NULL, 'Winter', 1970, '1970-01-01', '1970-03-31'),
(126, NULL, NULL, 'Spring', 1970, '1970-04-01', '1970-06-30'),
(127, NULL, NULL, 'Summer', 1970, '1970-07-01', '1970-09-30'),
(128, NULL, NULL, 'Fall', 1970, '1970-10-01', '1970-12-31'),
(129, NULL, NULL, 'Winter', 1971, '1971-01-01', '1971-03-31'),
(130, NULL, NULL, 'Spring', 1971, '1971-04-01', '1971-06-30'),
(131, NULL, NULL, 'Summer', 1971, '1971-07-01', '1971-09-30'),
(132, NULL, NULL, 'Fall', 1971, '1971-10-01', '1971-12-31'),
(133, NULL, NULL, 'Winter', 1972, '1972-01-01', '1972-03-31'),
(134, NULL, NULL, 'Spring', 1972, '1972-04-01', '1972-06-30'),
(135, NULL, NULL, 'Summer', 1972, '1972-07-01', '1972-09-30'),
(136, NULL, NULL, 'Fall', 1972, '1972-10-01', '1972-12-31'),
(137, NULL, NULL, 'Winter', 1973, '1973-01-01', '1973-03-31'),
(138, NULL, NULL, 'Spring', 1973, '1973-04-01', '1973-06-30'),
(139, NULL, NULL, 'Summer', 1973, '1973-07-01', '1973-09-30'),
(140, NULL, NULL, 'Fall', 1973, '1973-10-01', '1973-12-31'),
(141, NULL, NULL, 'Winter', 1974, '1974-01-01', '1974-03-31'),
(142, NULL, NULL, 'Spring', 1974, '1974-04-01', '1974-06-30'),
(143, NULL, NULL, 'Summer', 1974, '1974-07-01', '1974-09-30'),
(144, NULL, NULL, 'Fall', 1974, '1974-10-01', '1974-12-31'),
(145, NULL, NULL, 'Winter', 1975, '1975-01-01', '1975-03-31'),
(146, NULL, NULL, 'Spring', 1975, '1975-04-01', '1975-06-30'),
(147, NULL, NULL, 'Summer', 1975, '1975-07-01', '1975-09-30'),
(148, NULL, NULL, 'Fall', 1975, '1975-10-01', '1975-12-31'),
(149, NULL, NULL, 'Winter', 1976, '1976-01-01', '1976-03-31'),
(150, NULL, NULL, 'Spring', 1976, '1976-04-01', '1976-06-30'),
(151, NULL, NULL, 'Summer', 1976, '1976-07-01', '1976-09-30'),
(152, NULL, NULL, 'Fall', 1976, '1976-10-01', '1976-12-31'),
(153, NULL, NULL, 'Winter', 1977, '1977-01-01', '1977-03-31'),
(154, NULL, NULL, 'Spring', 1977, '1977-04-01', '1977-06-30'),
(155, NULL, NULL, 'Summer', 1977, '1977-07-01', '1977-09-30'),
(156, NULL, NULL, 'Fall', 1977, '1977-10-01', '1977-12-31'),
(157, NULL, NULL, 'Winter', 1978, '1978-01-01', '1978-03-31'),
(158, NULL, NULL, 'Spring', 1978, '1978-04-01', '1978-06-30'),
(159, NULL, NULL, 'Summer', 1978, '1978-07-01', '1978-09-30'),
(160, NULL, NULL, 'Fall', 1978, '1978-10-01', '1978-12-31'),
(161, NULL, NULL, 'Winter', 1979, '1979-01-01', '1979-03-31'),
(162, NULL, NULL, 'Spring', 1979, '1979-04-01', '1979-06-30'),
(163, NULL, NULL, 'Summer', 1979, '1979-07-01', '1979-09-30'),
(164, NULL, NULL, 'Fall', 1979, '1979-10-01', '1979-12-31'),
(165, NULL, NULL, 'Winter', 1980, '1980-01-01', '1980-03-31'),
(166, NULL, NULL, 'Spring', 1980, '1980-04-01', '1980-06-30'),
(167, NULL, NULL, 'Summer', 1980, '1980-07-01', '1980-09-30'),
(168, NULL, NULL, 'Fall', 1980, '1980-10-01', '1980-12-31'),
(169, NULL, NULL, 'Winter', 1981, '1981-01-01', '1981-03-31'),
(170, NULL, NULL, 'Spring', 1981, '1981-04-01', '1981-06-30'),
(171, NULL, NULL, 'Summer', 1981, '1981-07-01', '1981-09-30'),
(172, NULL, NULL, 'Fall', 1981, '1981-10-01', '1981-12-31'),
(173, NULL, NULL, 'Winter', 1982, '1982-01-01', '1982-03-31'),
(174, NULL, NULL, 'Spring', 1982, '1982-04-01', '1982-06-30'),
(175, NULL, NULL, 'Summer', 1982, '1982-07-01', '1982-09-30'),
(176, NULL, NULL, 'Fall', 1982, '1982-10-01', '1982-12-31'),
(177, NULL, NULL, 'Winter', 1983, '1983-01-01', '1983-03-31'),
(178, NULL, NULL, 'Spring', 1983, '1983-04-01', '1983-06-30'),
(179, NULL, NULL, 'Summer', 1983, '1983-07-01', '1983-09-30'),
(180, NULL, NULL, 'Fall', 1983, '1983-10-01', '1983-12-31'),
(181, NULL, NULL, 'Winter', 1984, '1984-01-01', '1984-03-31'),
(182, NULL, NULL, 'Spring', 1984, '1984-04-01', '1984-06-30'),
(183, NULL, NULL, 'Summer', 1984, '1984-07-01', '1984-09-30'),
(184, NULL, NULL, 'Fall', 1984, '1984-10-01', '1984-12-31'),
(185, NULL, NULL, 'Winter', 1985, '1985-01-01', '1985-03-31'),
(186, NULL, NULL, 'Spring', 1985, '1985-04-01', '1985-06-30'),
(187, NULL, NULL, 'Summer', 1985, '1985-07-01', '1985-09-30'),
(188, NULL, NULL, 'Fall', 1985, '1985-10-01', '1985-12-31'),
(189, NULL, NULL, 'Winter', 1986, '1986-01-01', '1986-03-31'),
(190, NULL, NULL, 'Spring', 1986, '1986-04-01', '1986-06-30'),
(191, NULL, NULL, 'Summer', 1986, '1986-07-01', '1986-09-30'),
(192, NULL, NULL, 'Fall', 1986, '1986-10-01', '1986-12-31'),
(193, NULL, NULL, 'Winter', 1987, '1987-01-01', '1987-03-31'),
(194, NULL, NULL, 'Spring', 1987, '1987-04-01', '1987-06-30'),
(195, NULL, NULL, 'Summer', 1987, '1987-07-01', '1987-09-30'),
(196, NULL, NULL, 'Fall', 1987, '1987-10-01', '1987-12-31'),
(197, NULL, NULL, 'Winter', 1988, '1988-01-01', '1988-03-31'),
(198, NULL, NULL, 'Spring', 1988, '1988-04-01', '1988-06-30'),
(199, NULL, NULL, 'Summer', 1988, '1988-07-01', '1988-09-30'),
(200, NULL, NULL, 'Fall', 1988, '1988-10-01', '1988-12-31'),
(201, NULL, NULL, 'Winter', 1989, '1989-01-01', '1989-03-31'),
(202, NULL, NULL, 'Spring', 1989, '1989-04-01', '1989-06-30'),
(203, NULL, NULL, 'Summer', 1989, '1989-07-01', '1989-09-30'),
(204, NULL, NULL, 'Fall', 1989, '1989-10-01', '1989-12-31'),
(205, NULL, NULL, 'Winter', 1990, '1990-01-01', '1990-03-31'),
(206, NULL, NULL, 'Spring', 1990, '1990-04-01', '1990-06-30'),
(207, NULL, NULL, 'Summer', 1990, '1990-07-01', '1990-09-30'),
(208, NULL, NULL, 'Fall', 1990, '1990-10-01', '1990-12-31'),
(209, NULL, NULL, 'Winter', 1991, '1991-01-01', '1991-03-31'),
(210, NULL, NULL, 'Spring', 1991, '1991-04-01', '1991-06-30'),
(211, NULL, NULL, 'Summer', 1991, '1991-07-01', '1991-09-30'),
(212, NULL, NULL, 'Fall', 1991, '1991-10-01', '1991-12-31'),
(213, NULL, NULL, 'Winter', 1992, '1992-01-01', '1992-03-31'),
(214, NULL, NULL, 'Spring', 1992, '1992-04-01', '1992-06-30'),
(215, NULL, NULL, 'Summer', 1992, '1992-07-01', '1992-09-30'),
(216, NULL, NULL, 'Fall', 1992, '1992-10-01', '1992-12-31'),
(217, NULL, NULL, 'Winter', 1993, '1993-01-01', '1993-03-31'),
(218, NULL, NULL, 'Spring', 1993, '1993-04-01', '1993-06-30'),
(219, NULL, NULL, 'Summer', 1993, '1993-07-01', '1993-09-30'),
(220, NULL, NULL, 'Fall', 1993, '1993-10-01', '1993-12-31'),
(221, NULL, NULL, 'Winter', 1994, '1994-01-01', '1994-03-31'),
(222, NULL, NULL, 'Spring', 1994, '1994-04-01', '1994-06-30'),
(223, NULL, NULL, 'Summer', 1994, '1994-07-01', '1994-09-30'),
(224, NULL, NULL, 'Fall', 1994, '1994-10-01', '1994-12-31'),
(225, NULL, NULL, 'Winter', 1995, '1995-01-01', '1995-03-31'),
(226, NULL, NULL, 'Spring', 1995, '1995-04-01', '1995-06-30'),
(227, NULL, NULL, 'Summer', 1995, '1995-07-01', '1995-09-30'),
(228, NULL, NULL, 'Fall', 1995, '1995-10-01', '1995-12-31'),
(229, NULL, NULL, 'Winter', 1996, '1996-01-01', '1996-03-31'),
(230, NULL, NULL, 'Spring', 1996, '1996-04-01', '1996-06-30'),
(231, NULL, NULL, 'Summer', 1996, '1996-07-01', '1996-09-30'),
(232, NULL, NULL, 'Fall', 1996, '1996-10-01', '1996-12-31'),
(233, NULL, NULL, 'Winter', 1997, '1997-01-01', '1997-03-31'),
(234, NULL, NULL, 'Spring', 1997, '1997-04-01', '1997-06-30'),
(235, NULL, NULL, 'Summer', 1997, '1997-07-01', '1997-09-30'),
(236, NULL, NULL, 'Fall', 1997, '1997-10-01', '1997-12-31'),
(237, NULL, NULL, 'Winter', 1998, '1998-01-01', '1998-03-31'),
(238, NULL, NULL, 'Spring', 1998, '1998-04-01', '1998-06-30'),
(239, NULL, NULL, 'Summer', 1998, '1998-07-01', '1998-09-30'),
(240, NULL, NULL, 'Fall', 1998, '1998-10-01', '1998-12-31'),
(241, NULL, NULL, 'Winter', 1999, '1999-01-01', '1999-03-31'),
(242, NULL, NULL, 'Spring', 1999, '1999-04-01', '1999-06-30'),
(243, NULL, NULL, 'Summer', 1999, '1999-07-01', '1999-09-30'),
(244, NULL, NULL, 'Fall', 1999, '1999-10-01', '1999-12-31'),
(245, NULL, NULL, 'Winter', 2000, '2000-01-01', '2000-03-31'),
(246, NULL, NULL, 'Spring', 2000, '2000-04-01', '2000-06-30'),
(247, NULL, NULL, 'Summer', 2000, '2000-07-01', '2000-09-30'),
(248, NULL, NULL, 'Fall', 2000, '2000-10-01', '2000-12-31'),
(249, NULL, NULL, 'Winter', 2001, '2001-01-01', '2001-03-31'),
(250, NULL, NULL, 'Spring', 2001, '2001-04-01', '2001-06-30'),
(251, NULL, NULL, 'Summer', 2001, '2001-07-01', '2001-09-30'),
(252, NULL, NULL, 'Fall', 2001, '2001-10-01', '2001-12-31'),
(253, NULL, NULL, 'Winter', 2002, '2002-01-01', '2002-03-31'),
(254, NULL, NULL, 'Spring', 2002, '2002-04-01', '2002-06-30'),
(255, NULL, NULL, 'Summer', 2002, '2002-07-01', '2002-09-30'),
(256, NULL, NULL, 'Fall', 2002, '2002-10-01', '2002-12-31'),
(257, NULL, NULL, 'Winter', 2003, '2003-01-01', '2003-03-31'),
(258, NULL, NULL, 'Spring', 2003, '2003-04-01', '2003-06-30'),
(259, NULL, NULL, 'Summer', 2003, '2003-07-01', '2003-09-30'),
(260, NULL, NULL, 'Fall', 2003, '2003-10-01', '2003-12-31'),
(261, NULL, NULL, 'Winter', 2004, '2004-01-01', '2004-03-31'),
(262, NULL, NULL, 'Spring', 2004, '2004-04-01', '2004-06-30'),
(263, NULL, NULL, 'Summer', 2004, '2004-07-01', '2004-09-30'),
(264, NULL, NULL, 'Fall', 2004, '2004-10-01', '2004-12-31'),
(265, NULL, NULL, 'Winter', 2005, '2005-01-01', '2005-03-31'),
(266, NULL, NULL, 'Spring', 2005, '2005-04-01', '2005-06-30'),
(267, NULL, NULL, 'Summer', 2005, '2005-07-01', '2005-09-30'),
(268, NULL, NULL, 'Fall', 2005, '2005-10-01', '2005-12-31'),
(269, NULL, NULL, 'Winter', 2006, '2006-01-01', '2006-03-31'),
(270, NULL, NULL, 'Spring', 2006, '2006-04-01', '2006-06-30'),
(271, NULL, NULL, 'Summer', 2006, '2006-07-01', '2006-09-30'),
(272, NULL, NULL, 'Fall', 2006, '2006-10-01', '2006-12-31'),
(273, NULL, NULL, 'Winter', 2007, '2007-01-01', '2007-03-31'),
(274, NULL, NULL, 'Spring', 2007, '2007-04-01', '2007-06-30'),
(275, NULL, NULL, 'Summer', 2007, '2007-07-01', '2007-09-30'),
(276, NULL, NULL, 'Fall', 2007, '2007-10-01', '2007-12-31'),
(277, NULL, NULL, 'Winter', 2008, '2008-01-01', '2008-03-31'),
(278, NULL, NULL, 'Spring', 2008, '2008-04-01', '2008-06-30'),
(279, NULL, NULL, 'Summer', 2008, '2008-07-01', '2008-09-30'),
(280, NULL, NULL, 'Fall', 2008, '2008-10-01', '2008-12-31'),
(281, NULL, NULL, 'Winter', 2009, '2009-01-01', '2009-03-31'),
(282, NULL, NULL, 'Spring', 2009, '2009-04-01', '2009-06-30'),
(283, NULL, NULL, 'Summer', 2009, '2009-07-01', '2009-09-30'),
(284, NULL, NULL, 'Fall', 2009, '2009-10-01', '2009-12-31'),
(285, NULL, NULL, 'Winter', 2010, '2010-01-01', '2010-03-31'),
(286, NULL, NULL, 'Spring', 2010, '2010-04-01', '2010-06-30'),
(287, NULL, NULL, 'Summer', 2010, '2010-07-01', '2010-09-30'),
(288, NULL, NULL, 'Fall', 2010, '2010-10-01', '2010-12-31'),
(289, NULL, NULL, 'Winter', 2011, '2011-01-01', '2011-03-31'),
(290, NULL, NULL, 'Spring', 2011, '2011-04-01', '2011-06-30'),
(291, NULL, NULL, 'Summer', 2011, '2011-07-01', '2011-09-30'),
(292, NULL, NULL, 'Fall', 2011, '2011-10-01', '2011-12-31'),
(293, NULL, NULL, 'Winter', 2012, '2012-01-01', '2012-03-31'),
(294, NULL, NULL, 'Spring', 2012, '2012-04-01', '2012-06-30'),
(295, NULL, NULL, 'Summer', 2012, '2012-07-01', '2012-09-30'),
(296, NULL, NULL, 'Fall', 2012, '2012-10-01', '2012-12-31'),
(297, NULL, NULL, 'Winter', 2013, '2013-01-01', '2013-03-31'),
(298, NULL, NULL, 'Spring', 2013, '2013-04-01', '2013-06-30'),
(299, NULL, NULL, 'Summer', 2013, '2013-07-01', '2013-09-30'),
(300, NULL, NULL, 'Fall', 2013, '2013-10-01', '2013-12-31'),
(301, NULL, NULL, 'Winter', 2014, '2014-01-01', '2014-03-31'),
(302, NULL, NULL, 'Spring', 2014, '2014-04-01', '2014-06-30'),
(303, NULL, NULL, 'Summer', 2014, '2014-07-01', '2014-09-30'),
(304, NULL, NULL, 'Fall', 2014, '2014-10-01', '2014-12-31'),
(305, NULL, NULL, 'Winter', 2015, '2015-01-01', '2015-03-31'),
(306, NULL, NULL, 'Spring', 2015, '2015-04-01', '2015-06-30'),
(307, NULL, NULL, 'Summer', 2015, '2015-07-01', '2015-09-30'),
(308, NULL, NULL, 'Fall', 2015, '2015-10-01', '2015-12-31'),
(309, NULL, NULL, 'Winter', 2016, '2016-01-01', '2016-03-31'),
(310, NULL, NULL, 'Spring', 2016, '2016-04-01', '2016-06-30'),
(311, NULL, NULL, 'Summer', 2016, '2016-07-01', '2016-09-30'),
(312, NULL, NULL, 'Fall', 2016, '2016-10-01', '2016-12-31'),
(313, NULL, NULL, 'Winter', 2017, '2017-01-01', '2017-03-31'),
(314, NULL, NULL, 'Spring', 2017, '2017-04-01', '2017-06-30'),
(315, NULL, NULL, 'Summer', 2017, '2017-07-01', '2017-09-30'),
(316, NULL, NULL, 'Fall', 2017, '2017-10-01', '2017-12-31'),
(317, NULL, NULL, 'Winter', 2018, '2018-01-01', '2018-03-31'),
(318, NULL, NULL, 'Spring', 2018, '2018-04-01', '2018-06-30'),
(319, NULL, NULL, 'Summer', 2018, '2018-07-01', '2018-09-30'),
(320, NULL, NULL, 'Fall', 2018, '2018-10-01', '2018-12-31'),
(321, NULL, NULL, 'Winter', 2019, '2019-01-01', '2019-03-31'),
(322, NULL, NULL, 'Spring', 2019, '2019-04-01', '2019-06-30'),
(323, NULL, NULL, 'Summer', 2019, '2019-07-01', '2019-09-30'),
(324, NULL, NULL, 'Fall', 2019, '2019-10-01', '2019-12-31'),
(325, NULL, NULL, 'Winter', 2020, '2020-01-01', '2020-03-31'),
(326, NULL, NULL, 'Spring', 2020, '2020-04-01', '2020-06-30'),
(327, NULL, NULL, 'Summer', 2020, '2020-07-01', '2020-09-30'),
(328, NULL, NULL, 'Fall', 2020, '2020-10-01', '2020-12-31'),
(329, NULL, NULL, 'Winter', 2021, '2021-01-01', '2021-03-31'),
(330, NULL, NULL, 'Spring', 2021, '2021-04-01', '2021-06-30'),
(331, NULL, NULL, 'Summer', 2021, '2021-07-01', '2021-09-30'),
(332, NULL, NULL, 'Fall', 2021, '2021-10-01', '2021-12-31'),
(333, NULL, NULL, 'Winter', 2022, '2022-01-01', '2022-03-31'),
(334, NULL, NULL, 'Spring', 2022, '2022-04-01', '2022-06-30'),
(335, NULL, NULL, 'Summer', 2022, '2022-07-01', '2022-09-30'),
(336, NULL, NULL, 'Fall', 2022, '2022-10-01', '2022-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, NULL, NULL, 'Watching'),
(2, NULL, NULL, 'Plan To Watch'),
(3, NULL, NULL, 'Completed'),
(4, NULL, NULL, 'Re-watching'),
(5, NULL, NULL, 'Paused'),
(6, NULL, NULL, 'Dropped'),
(7, NULL, NULL, 'Airing'),
(8, NULL, NULL, 'Finished'),
(9, NULL, NULL, 'Not airing yet');

-- --------------------------------------------------------

--
-- Table structure for table `studios`
--

CREATE TABLE `studios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_main` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `created_at`, `updated_at`, `name`, `is_main`) VALUES
(1, NULL, NULL, 'Action', 1),
(2, NULL, NULL, 'Adventure', 1),
(3, NULL, NULL, 'Comedy', 1),
(4, NULL, NULL, 'Drama', 1),
(5, NULL, NULL, 'Ecchi', 1),
(6, NULL, NULL, 'Fantasy', 1),
(7, NULL, NULL, 'Horror', 1),
(8, NULL, NULL, 'Mecha', 1),
(9, NULL, NULL, 'Music', 1),
(10, NULL, NULL, 'Mystery', 1),
(11, NULL, NULL, 'Psychological', 1),
(12, NULL, NULL, 'Romance', 1),
(13, NULL, NULL, 'Sci-Fi', 1),
(14, NULL, NULL, 'Slice of Life', 1),
(15, NULL, NULL, 'Sports', 1),
(16, NULL, NULL, 'Supernatural', 1),
(17, NULL, NULL, 'Thriller', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `characters_human_id_foreign` (`human_id`);

--
-- Indexes for table `characters_media`
--
ALTER TABLE `characters_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `characters_media_character_id_foreign` (`character_id`),
  ADD KEY `characters_media_medium_id_foreign` (`medium_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_post_id_foreign` (`post_id`);

--
-- Indexes for table `formats`
--
ALTER TABLE `formats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `humans`
--
ALTER TABLE `humans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_items`
--
ALTER TABLE `list_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list_items_user_id_foreign` (`user_id`),
  ADD KEY `list_items_media_id_foreign` (`media_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_media_type_id_foreign` (`media_type_id`),
  ADD KEY `media_season_id_foreign` (`season_id`),
  ADD KEY `media_format_id_foreign` (`format_id`),
  ADD KEY `media_status_id_foreign` (`status_id`),
  ADD KEY `media_studio_id_foreign` (`studio_id`),
  ADD KEY `media_source_type_id_foreign` (`source_type_id`);

--
-- Indexes for table `media_tags`
--
ALTER TABLE `media_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_tags_tag_id_foreign` (`tag_id`),
  ADD KEY `media_tags_medium_id_foreign` (`medium_id`);

--
-- Indexes for table `media_types`
--
ALTER TABLE `media_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relations_parent_media_id_foreign` (`parent_media_id`),
  ADD KEY `relations_child_media_id_foreign` (`child_media_id`),
  ADD KEY `relations_relation_type_id_foreign` (`relation_type_id`);

--
-- Indexes for table `relation_types`
--
ALTER TABLE `relation_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studios`
--
ALTER TABLE `studios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `characters_media`
--
ALTER TABLE `characters_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formats`
--
ALTER TABLE `formats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `humans`
--
ALTER TABLE `humans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `list_items`
--
ALTER TABLE `list_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_tags`
--
ALTER TABLE `media_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_types`
--
ALTER TABLE `media_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relation_types`
--
ALTER TABLE `relation_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `studios`
--
ALTER TABLE `studios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `characters`
--
ALTER TABLE `characters`
  ADD CONSTRAINT `characters_human_id_foreign` FOREIGN KEY (`human_id`) REFERENCES `humans` (`id`);

--
-- Constraints for table `characters_media`
--
ALTER TABLE `characters_media`
  ADD CONSTRAINT `characters_media_character_id_foreign` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`),
  ADD CONSTRAINT `characters_media_medium_id_foreign` FOREIGN KEY (`medium_id`) REFERENCES `media` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `list_items`
--
ALTER TABLE `list_items`
  ADD CONSTRAINT `list_items_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `list_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_format_id_foreign` FOREIGN KEY (`format_id`) REFERENCES `formats` (`id`),
  ADD CONSTRAINT `media_media_type_id_foreign` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`),
  ADD CONSTRAINT `media_season_id_foreign` FOREIGN KEY (`season_id`) REFERENCES `seasons` (`id`),
  ADD CONSTRAINT `media_source_type_id_foreign` FOREIGN KEY (`source_type_id`) REFERENCES `media_types` (`id`),
  ADD CONSTRAINT `media_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `media_studio_id_foreign` FOREIGN KEY (`studio_id`) REFERENCES `studios` (`id`);

--
-- Constraints for table `media_tags`
--
ALTER TABLE `media_tags`
  ADD CONSTRAINT `media_tags_medium_id_foreign` FOREIGN KEY (`medium_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `media_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `relations`
--
ALTER TABLE `relations`
  ADD CONSTRAINT `relations_child_media_id_foreign` FOREIGN KEY (`child_media_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `relations_parent_media_id_foreign` FOREIGN KEY (`parent_media_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `relations_relation_type_id_foreign` FOREIGN KEY (`relation_type_id`) REFERENCES `relation_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
