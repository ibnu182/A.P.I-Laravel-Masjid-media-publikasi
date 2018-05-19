-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2018 at 11:57 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `masjid`
--

-- --------------------------------------------------------

--
-- Table structure for table `acara`
--

CREATE TABLE `acara` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul_acara` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_acara` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_acara` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_acara` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `acara`
--

INSERT INTO `acara` (`id`, `judul_acara`, `tanggal`, `jam`, `deskripsi`, `tempat_acara`, `slug`, `foto_acara`, `status_acara`, `id_user`, `created_at`, `updated_at`) VALUES
(3, 'tadarusss', '2018-03-21', '15.00', 'menyambut bulan ramadhan', 'masjid jami\' al muhajirin', 'tadarus', NULL, '0', 1, '2018-03-30 22:13:57', '2018-04-05 07:29:16'),
(4, 'mabit', '2018-03-31', '13.30', 'menyambut bulan ramadhan', 'masjid', 'mabit', NULL, '0', 1, '2018-04-01 17:53:32', '2018-04-01 17:53:32'),
(5, 'tadarus 2', '2018-03-21', '10.00', 'menyambut lebaran', 'masjid jami\' al muhajirin', 'tadarus-2', NULL, '0', 1, '2018-04-11 04:07:00', '2018-04-11 04:09:35'),
(7, 'tadarus 5', '2018-03-21', '10.00', 'menyambut lebaran', 'masjid jami\' al muhajirin', 'tadarus-5', NULL, '0', 1, '2018-04-11 04:49:38', '2018-04-11 04:49:38');

-- --------------------------------------------------------

--
-- Table structure for table `agendas`
--

CREATE TABLE `agendas` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul_agenda` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_agenda` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_agenda` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_agenda` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agendas`
--

INSERT INTO `agendas` (`id`, `judul_agenda`, `tanggal`, `jam`, `deskripsi`, `tempat_agenda`, `foto_agenda`, `status_agenda`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'kajian malam minggu5234', '2018-04-04', '20.00', 'kajian hadist oleh Ust. Miftahulzein', 'masjid jami\'al-muhajirin', NULL, 'dkm', 1, '2018-04-19 07:09:53', '2018-04-19 08:13:35'),
(2, 'kajian malam minggu52', '2018-04-04', '20.00', 'kajian hadist oleh Ust. Miftahulzein', 'masjid jami\'al-muhajirin', NULL, 'dkm', 1, '2018-04-19 07:11:15', '2018-04-19 07:11:15'),
(3, 'kajian malam minggu5234', '2018-04-04', '20.00', 'kajian hadist oleh Ust. Miftahulzein', 'masjid jami\'al-muhajirin', NULL, 'dkm', 1, '2018-04-22 02:13:29', '2018-04-22 02:13:29'),
(4, 'kajian malam minggu5182', '2018-04-04', '20.00', 'kajian hadist oleh Ust. Miftahulzein', 'masjid jami\'al-muhajirin', NULL, 'dkm', 1, '2018-04-22 02:19:42', '2018-04-22 02:19:42'),
(6, 'kajian malam minggu182', '2018-04-04', '20.00', 'kajian hadist oleh Ust. Miftahulzein', 'masjid jami\'al-muhajirin', NULL, 'dkm', 1, '2018-04-22 02:47:14', '2018-04-22 02:47:14'),
(7, 'kajian malam minggu1822', '2018-04-04', '20.00', 'kajian hadist oleh Ust. Miftahulzein', 'masjid jami\'al-muhajirin', NULL, 'dkm', 1, '2018-04-22 02:49:36', '2018-04-22 02:49:36'),
(8, 'kajian malam minggu1822', '2018-04-04', '20.00', 'kajian hadist oleh Ust. Miftahulzein', 'masjid jami\'al-muhajirin', '8.jpg', 'dkm', 1, '2018-04-22 02:51:14', '2018-04-22 02:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `agenda_dkm`
--

CREATE TABLE `agenda_dkm` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul_agenda` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_agenda` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_agenda` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_agenda` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agenda_dkm`
--

INSERT INTO `agenda_dkm` (`id`, `judul_agenda`, `tanggal`, `jam`, `deskripsi`, `tempat_agenda`, `slug`, `foto_agenda`, `status_agenda`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'kajian malam minggu', '2018-04-04', '20.00', 'kajian hadist oleh Ust. Miftahulzein', 'masjid jami\'al-muhajirin', 'kajian-malam-ahad', NULL, '0', 1, '2018-04-04 07:41:57', '2018-04-04 08:21:17'),
(2, 'kajian maulid nabi', '2018-04-09', '20.00', 'kajian hadist oleh Ust tugiman', 'masjid jami\'al-muhajirin', 'kajian-maulid-nabi', NULL, '0', 1, '2018-04-04 21:57:17', '2018-04-04 22:01:27'),
(3, 'maulid nabi', '2018-04-11', '11.00', 'kajian hadist oleh Ust aris', 'masjid jami\'al-muhajirin', 'kajian-tahsin', NULL, '0', 1, '2018-04-04 22:05:17', '2018-04-04 22:06:19'),
(4, 'kajian malam minggu', '2018-04-04', '20.00', 'kajian hadist oleh Ust. Miftahulzein', 'masjid jami\'al-muhajirin', 'kajian-malam-minggu', NULL, '0', 1, '2018-04-13 07:51:59', '2018-04-13 07:51:59'),
(8, 'kajian malam minggu4', '2018-04-04', '20.00', 'kajian hadist oleh Ust. Miftahulzein', 'masjid jami\'al-muhajirin', 'kajian-malam-minggu4', NULL, '0', 1, '2018-04-13 07:58:01', '2018-04-13 07:58:01'),
(9, 'kajian malam minggu5', '2018-04-04', '20.00', 'kajian hadist oleh Ust. Miftahulzein', 'masjid jami\'al-muhajirin', 'kajian-malam-minggu5', '9.jpg', '0', 1, '2018-04-13 08:03:18', '2018-04-13 08:03:18'),
(11, 'kajian malam minggu513', '2018-04-04', '20.00', 'kajian hadist oleh Ust. Miftahulzein', 'masjid jami\'al-muhajirin', 'kajian-malam-minggu513', '11.jpg', '0', 1, '2018-04-17 00:59:04', '2018-04-17 00:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `agenda_formalin`
--

CREATE TABLE `agenda_formalin` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul_agenda` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_agenda` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_agenda` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_agenda` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agenda_formalin`
--

INSERT INTO `agenda_formalin` (`id`, `judul_agenda`, `tanggal`, `jam`, `deskripsi`, `tempat_agenda`, `slug`, `foto_agenda`, `status_agenda`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'ngaji', '2018-03-22', '04.00', 'menyambut bulan ramadhan', 'masjid jami\' al muhajirin', 'ngaji', NULL, '0', 1, '2018-04-06 21:05:58', '2018-04-07 18:24:02'),
(2, 'kajian malam ahad1', '2018-03-22', '19.00', 'menyambut bulan ramadhan, oleh ust ujang', 'masjid jami\' al muhajirin', 'kajian-malam-ahad', NULL, '0', 1, '2018-04-07 19:05:35', '2018-04-13 06:55:12');

-- --------------------------------------------------------

--
-- Table structure for table `dkm_keuangan`
--

CREATE TABLE `dkm_keuangan` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul_laporan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `transaksi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dkm_keuangan`
--

INSERT INTO `dkm_keuangan` (`id`, `judul_laporan`, `tanggal`, `transaksi`, `keterangan`, `nilai`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'laporan keuangan jum\'at', '2018-03-22', 'pengeluaran', 'pembangunan masjid', '10000', 1, '2018-04-11 02:18:39', '2018-04-11 02:18:39'),
(2, 'laporan qurban1', '2018-03-22', 'pengeluaran', 'pembangunan masjid', '10000000', 1, '2018-04-15 04:39:03', '2018-04-15 04:46:43');

-- --------------------------------------------------------

--
-- Table structure for table `keuangandkm`
--

CREATE TABLE `keuangandkm` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul_laporan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `transaksi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_19_102429_create_roles_table', 1),
(4, '2018_03_28_143948_create_acara_table', 2),
(5, '2018_04_01_062809_create_news_tabel', 3),
(7, '2018_04_01_124532_create_newss_tabel', 4),
(10, '2018_04_04_133845_create_agenda_dkm_table', 5),
(11, '2018_04_06_144034_create_agenda_formalin_tabel', 6),
(16, '2018_04_10_042930_create_lapkeuanganDkm_table', 7),
(17, '2018_04_10_160939_create_keuangandkm_table', 8),
(19, '2018_04_11_081340_create_dkm_keuangan_table', 9),
(20, '2018_04_11_084417_create_dkm_keuangan_table', 10),
(22, '2018_04_18_130003_create_agendas_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `news_masjid`
--

CREATE TABLE `news_masjid` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul_news` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_news` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_masjid`
--

INSERT INTO `news_masjid` (`id`, `judul_news`, `tanggal`, `deskripsi`, `slug`, `foto_news`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'mabit ramadhan', '2018-03-31', 'bulan ramadhan', '', NULL, 1, '2018-04-01 18:23:28', '2018-04-02 07:23:31'),
(2, 'kajian malam ahad', '2018-03-31', 'menembah ilmu agama', 'kajian-malam-ahad', NULL, 1, '2018-04-02 08:27:43', '2018-04-02 08:27:43'),
(4, 'ciri-ciri kiamat', '2018-03-20', 'hadist', 'ciri-ciri-kiamat', NULL, 1, '2018-04-11 06:02:14', '2018-04-11 06:02:14'),
(6, 'ciri-ciri2 kiamat', '2018-03-20', 'hadist', 'ciri-ciri2-kiamat', NULL, 4, '2018-04-11 06:10:40', '2018-04-11 06:10:40'),
(7, 'ciri-ciri1 kiamat', '2018-03-20', 'hadist', 'ciri-ciri1-kiamat', NULL, 1, '2018-04-11 06:19:00', '2018-04-11 06:19:00'),
(8, 'ciri-ciri5 kiamat', '2018-03-20', 'hadist', 'ciri-ciri5-kiamat', '8.jpg', 1, '2018-04-11 06:19:49', '2018-04-11 06:19:49'),
(9, 'ciri-ciri10 kiamat', '2018-03-20', 'hadist', 'ciri-ciri10-kiamat', '9.jpg', 1, '2018-04-11 06:25:00', '2018-04-11 06:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_role` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `alamat`, `no_hp`, `id_role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ibnu', 'ibnuhardiyatna@gmail.com', '$2y$10$KGlRBXWvrkF5FHpKJ2Rn8OTL5G3ycuk6Wl.PzcvFeUdaDOwPRIbbW', 'vila tangerang elok', '083898844385', 1, NULL, '2018-03-19 04:15:30', '2018-03-19 04:15:30'),
(3, 'ibnu', 'hardiyatna@gmail.com', '$2y$10$M5SZHRPrCkmo5zKkBcrI1u6YoMXleDW1CaqvLLa9m0Rfk0C6lt2ce', 'vila tangerang elok', '083898844385', 1, NULL, '2018-03-19 04:17:49', '2018-03-19 04:17:49'),
(4, 'aldi', 'aldi123@gmail.com', '$2y$10$TlOsrBFeczOXABe5nNeF6uJyahJ3ftaUyf0Z8J415hN1TeQsrB5g2', 'vte', '09838473883', 2, NULL, '2018-04-05 07:19:33', '2018-04-05 07:19:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acara`
--
ALTER TABLE `acara`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `acara_slug_unique` (`slug`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `agendas`
--
ALTER TABLE `agendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `agenda_dkm`
--
ALTER TABLE `agenda_dkm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `agenda_dkm_slug_unique` (`slug`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `agenda_formalin`
--
ALTER TABLE `agenda_formalin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `agenda_formalin_slug_unique` (`slug`);

--
-- Indexes for table `dkm_keuangan`
--
ALTER TABLE `dkm_keuangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `keuangandkm`
--
ALTER TABLE `keuangandkm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_masjid`
--
ALTER TABLE `news_masjid`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_masjid_slug_unique` (`slug`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `acara`
--
ALTER TABLE `acara`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `agendas`
--
ALTER TABLE `agendas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `agenda_dkm`
--
ALTER TABLE `agenda_dkm`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `agenda_formalin`
--
ALTER TABLE `agenda_formalin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dkm_keuangan`
--
ALTER TABLE `dkm_keuangan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `keuangandkm`
--
ALTER TABLE `keuangandkm`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `news_masjid`
--
ALTER TABLE `news_masjid`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acara`
--
ALTER TABLE `acara`
  ADD CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `agendas`
--
ALTER TABLE `agendas`
  ADD CONSTRAINT `agendas_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `agenda_dkm`
--
ALTER TABLE `agenda_dkm`
  ADD CONSTRAINT `agenda_dkm_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `dkm_keuangan`
--
ALTER TABLE `dkm_keuangan`
  ADD CONSTRAINT `dkm_keuangan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `keuangandkm`
--
ALTER TABLE `keuangandkm`
  ADD CONSTRAINT `keuangandkm_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `news_masjid`
--
ALTER TABLE `news_masjid`
  ADD CONSTRAINT `news_masjid_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
