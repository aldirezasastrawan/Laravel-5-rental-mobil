-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jun 06, 2016 at 02:35 PM
-- Server version: 10.1.9-MariaDB-log
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental-mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usia` int(11) NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telepon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `nama`, `usia`, `jenis_kelamin`, `alamat`, `telepon`, `email`, `created_at`, `updated_at`) VALUES
(11, 'Desy Wulandary', 23, 'Perempuan', 'Bekasi', '78878787878', 'desy@gmail.com', '2016-06-05 05:47:38', '2016-06-05 05:47:38'),
(12, 'Aldi Reza Sastrawan', 22, 'Laki-laki', 'Bekasi', '2535', 'aldirezasastrawan@rocketmail.com', '2016-06-05 06:55:35', '2016-06-05 06:55:35'),
(13, 'Rangga', 23, 'Laki-laki', 'Jakarta', '0000000000000000000000', 'rangga@gmail.com', '2016-06-05 06:56:20', '2016-06-05 06:56:20'),
(14, 'Yahdi Firdaus', 20, 'Laki-laki', 'Depok', '4444444444444', 'yahdi@gmail.com', '2016-06-05 06:56:55', '2016-06-05 06:56:55'),
(15, 'Ismail Hidayat', 20, 'Laki-laki', 'Cilandak', '3232323232323', 'ismail@gmail.com', '2016-06-05 06:57:27', '2016-06-05 06:57:27'),
(20, 'Leny Djasri', 52, 'Perempuan', 'Jl Raya kali malang bekasi blok a3 no 21 kec bekasi barat', '02154578963', 'leny@gmail.com', '2016-06-06 05:20:48', '2016-06-06 05:21:19'),
(21, 'dgfdsg', 32, 'Laki-laki', 'ert', '46', 'rdfgdf@gmil.com', '2016-06-06 09:35:40', '2016-06-06 09:35:40'),
(22, '3dg', 34, 'Laki-laki', 'sfge', '342', '324124@yahoo.com', '2016-06-06 11:19:06', '2016-06-06 11:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_06_04_154316_buat_tabel_customer', 1),
('2016_06_05_091137_buat_tabel_mobil', 2),
('2016_06_05_192312_buat_tabel_sewa', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id` int(10) UNSIGNED NOT NULL,
  `plat_nomor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_mobil` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_mobil` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tarif_sewa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id`, `plat_nomor`, `nama_mobil`, `jenis_mobil`, `tarif_sewa`, `created_at`, `updated_at`) VALUES
(4, 'B 4212 UZA', 'Avanza', 'Mini Bus', 'Rp. 250.000', '2016-06-05 04:22:25', '2016-06-05 04:22:25'),
(5, 'B 4 RI', 'BMW 323i', 'Sedan', 'Rp. 500.000', '2016-06-05 04:23:06', '2016-06-05 04:23:06'),
(6, 'B 4444 LGBT', 'Pajero', 'SUV', 'Rp. 400.000', '2016-06-05 07:00:47', '2016-06-05 07:00:47'),
(7, 'B 4321 URL', 'Xenia', 'Mini Bus', 'Rp. 200,000', '2016-06-05 07:01:20', '2016-06-05 07:01:20'),
(8, 'B 1234 PZA', 'Yaris', 'City Car', 'Rp. 250.000', '2016-06-05 07:03:34', '2016-06-05 07:08:21'),
(9, 'B 0987 TZR', 'Brio', 'City Car', 'Rp. 250.000', '2016-06-05 07:05:37', '2016-06-05 10:04:54');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sewa`
--

CREATE TABLE `sewa` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `id_mobil` int(10) UNSIGNED NOT NULL,
  `tanggal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tarif_sewa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sewa`
--

INSERT INTO `sewa` (`id`, `id_customer`, `id_mobil`, `tanggal`, `tarif_sewa`, `created_at`, `updated_at`) VALUES
(1, 12, 6, '12 gfh', '56775', NULL, NULL),
(2, 12, 6, '12 Juli 2016', 'Rp. 600.000,-', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sewa_id_customer_foreign` (`id_customer`),
  ADD KEY `sewa_id_mobil_foreign` (`id_mobil`);

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
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sewa`
--
ALTER TABLE `sewa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `sewa`
--
ALTER TABLE `sewa`
  ADD CONSTRAINT `sewa_id_customer_foreign` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sewa_id_mobil_foreign` FOREIGN KEY (`id_mobil`) REFERENCES `mobil` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
