-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2023 at 11:02 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `katalog`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga_pokok` varchar(100) NOT NULL,
  `harga_jual` varchar(100) NOT NULL,
  `merek_id` int(11) NOT NULL,
  `pegawai_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `stok`, `harga_pokok`, `harga_jual`, `merek_id`, `pegawai_id`) VALUES
(12370, 'acnes foaming wash', 50, '30.000', '40.000', 3, 3),
(12372, 'bright complete vitamin c super whip foam', 25, '35.000', '45.000', 2, 2),
(12373, 'super mette ink', 59, '98.000,00', '115.000,00', 15, 9),
(12374, 'azrani spf 30++', 98, '45.000,00', '60.000,00', 16, 20),
(12375, 'moisturezer originot face', 150, '28.000,00', '45.000,00', 5, 13),
(12376, 'toner brigthening', 400, '64.000,00', '99.000,00', 19, 16),
(12377, 'moisturezer originote', 50, '45.000', '55.000', 5, 10),
(12378, 'toner originote', 30, '50.000', '60.000', 4, 7),
(12379, 'serum retinol', 40, '65.000', '75.000', 6, 8),
(12380, 'nivea lip balm', 50, '25.000', '45.000', 1, 14),
(12382, 'mark bedak tabur', 77, '34.000,00', '50.000,00', 13, 9),
(12383, 'ms glow brightening sepaket', 100, '1.288.000,00', '2.300.000,00', 10, 12),
(12384, 'milk cleanser', 87, '8.000,00', '10.000,00', 6, 19),
(12385, 'ms glow acne sepaket', 78, '2.220.000,00', '3.325.000,00', 14, 11),
(12386, 'erha lomonius sepaket', 400, '3.897.000,00', '5.500.000,00', 13, 15),
(12387, 'srub emina', 12, '34.00', '45.000,00', 7, 18),
(12388, 'masker charcol', 50, '68.000,00', '80.000,00', 17, 21);

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
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(2, 'Sunscreen spf 30'),
(4, 'FaceWash'),
(7, 'moisturizer'),
(8, 'toner'),
(9, 'day cream'),
(10, 'night cream'),
(11, 'serum'),
(12, 'sunscreen spf 50PA+++'),
(13, 'eye cream'),
(14, 'essence'),
(15, 'ampoule'),
(16, 'face oil'),
(17, 'cleanser'),
(18, 'serum retinol'),
(19, 'booster'),
(20, 'exfoliating toner'),
(21, 'hydrating toner'),
(22, 'sheet mask'),
(23, 'peel-off mask'),
(24, 'sunscreen spf 30PA++'),
(25, 'lipbalm'),
(26, 'lip mask'),
(27, 'lip scrub'),
(28, 'serum anti acne'),
(29, 'peeling serum'),
(30, 'serum anti aging'),
(31, 'hydrating serum'),
(32, 'repairing serum'),
(33, 'serum exfoliating'),
(34, 'skin brightening serum');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_barang`
--

CREATE TABLE `kategori_barang` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_barang`
--

INSERT INTO `kategori_barang` (`id`, `kategori_id`, `barang_id`) VALUES
(2, 4, 12372),
(10, 7, 12370),
(11, 25, 12370),
(12, 26, 12370),
(13, 25, 12373),
(14, 26, 12373),
(15, 27, 12373),
(16, 2, 12374),
(17, 12, 12374),
(18, 24, 12374),
(19, 7, 12375),
(20, 14, 12375),
(21, 16, 12375),
(22, 34, 12375),
(23, 8, 12376),
(24, 11, 12376),
(25, 16, 12376),
(26, 19, 12376),
(27, 7, 12377),
(28, 9, 12377),
(29, 11, 12377),
(30, 16, 12377),
(31, 7, 12378),
(32, 8, 12378),
(33, 11, 12378),
(34, 14, 12378),
(35, 15, 12378),
(36, 11, 12379),
(37, 18, 12379),
(38, 25, 12380),
(39, 26, 12380),
(40, 27, 12380),
(41, 9, 12382),
(42, 10, 12382),
(43, 14, 12382),
(44, 22, 12382),
(45, 23, 12382),
(46, 4, 12383),
(47, 7, 12383),
(48, 8, 12383),
(49, 9, 12383),
(50, 10, 12383),
(51, 11, 12383),
(52, 13, 12383),
(53, 14, 12383),
(54, 17, 12383),
(55, 20, 12383),
(56, 21, 12383),
(57, 29, 12383),
(58, 30, 12383),
(59, 31, 12383),
(60, 32, 12383),
(61, 33, 12383),
(62, 34, 12383),
(63, 8, 12384),
(64, 15, 12384),
(65, 16, 12384),
(66, 17, 12384),
(67, 19, 12384),
(68, 20, 12384),
(69, 21, 12384),
(70, 33, 12384),
(71, 4, 12385),
(72, 7, 12385),
(73, 8, 12385),
(74, 9, 12385),
(75, 10, 12385),
(76, 11, 12385),
(77, 13, 12385),
(78, 14, 12385),
(79, 17, 12385),
(80, 18, 12385),
(81, 20, 12385),
(82, 21, 12385),
(83, 22, 12385),
(84, 23, 12385),
(85, 25, 12385),
(86, 26, 12385),
(87, 27, 12385),
(88, 28, 12385),
(89, 29, 12385),
(90, 30, 12385),
(91, 31, 12385),
(92, 32, 12385),
(93, 33, 12385),
(94, 34, 12385),
(95, 4, 12386),
(96, 7, 12386),
(97, 8, 12386),
(98, 9, 12386),
(99, 10, 12386),
(100, 11, 12386),
(101, 12, 12386),
(102, 13, 12386),
(103, 14, 12386),
(104, 16, 12386),
(105, 17, 12386),
(106, 18, 12386),
(107, 19, 12386),
(108, 20, 12386),
(109, 21, 12386),
(110, 22, 12386),
(111, 23, 12386),
(112, 25, 12386),
(113, 26, 12386),
(114, 27, 12386),
(115, 28, 12386),
(116, 29, 12386),
(117, 30, 12386),
(118, 31, 12386),
(119, 32, 12386),
(120, 33, 12386),
(121, 34, 12386),
(122, 15, 12387),
(123, 19, 12387),
(124, 25, 12387),
(125, 26, 12387),
(126, 27, 12387),
(127, 16, 12388),
(128, 22, 12388),
(129, 23, 12388);

-- --------------------------------------------------------

--
-- Table structure for table `merek`
--

CREATE TABLE `merek` (
  `id` int(11) NOT NULL,
  `merek` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `merek`
--

INSERT INTO `merek` (`id`, `merek`) VALUES
(1, 'Nivea'),
(2, 'Garnier'),
(3, 'Acnes'),
(4, 'Scarlett'),
(5, 'originote'),
(6, 'skintific'),
(7, 'emina'),
(8, 'wardah'),
(9, 'bio aqua'),
(10, 'SK-II'),
(11, 'cetaphil'),
(12, 'MS glow'),
(13, 'erha'),
(14, 'whitelab'),
(15, 'somethinc'),
(16, 'azarine'),
(17, 'bio beauty lab'),
(18, 'J glow'),
(19, 'N\'Pure'),
(20, 'skin dewi'),
(21, 'the bath box'),
(22, 'avoskin'),
(23, 'lacoco'),
(24, 'cosrx'),
(25, 'bioderma'),
(26, 'safi'),
(27, 'skin aqua'),
(28, 'the body shop'),
(29, 'kahf'),
(30, 'ponds');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('wadaw@gmail.com', '$2y$10$LdHCDVhgugDPMGX5RYPxRuiCsKPuapncUxEQ0hJYf7i7r3x9wy9DK', '2023-06-22 22:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `tlpn` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `alamat`, `tlpn`) VALUES
(1, 'Jono', 'jln. M. Yamin kel gunung kelua, Samarinda ulu, Kalimantan Timur', '082255181723'),
(2, 'Selly', 'jln. Abdul Wahab Syahrani, Kel Air Hitam, Samarinda ulu, Kalimantan Timur', '08512345678'),
(3, 'Bayu', 'jln. Wahid Hasyim 1, Kel Gunung Kelua, Samarinda ulu, Kalimantan Timur', '085122265155'),
(6, 'Aji', 'jln.loa bakungg', '081234778943'),
(7, 'Dio', 'jln.gelatik', '081239005732'),
(8, 'vaza', 'jln.bung tomo', '085794400231'),
(9, 'Nanda', 'jln.suwandi', '081234008693'),
(10, 'Nisa', 'jln.pramuka', '085215780034'),
(11, 'Dedy', 'jln.perjuangan', '087495563921'),
(12, 'Indri', 'jln.rapak indah', '085328179321'),
(13, 'pina', 'jln.m said', '083476891003'),
(14, 'della', 'jln.suwandi v', '082345891245'),
(15, 'koko', 'jl.gelatik', '08967571719'),
(16, 'oji', 'jalan jambuk', '083431234567'),
(17, 'betris', 'jalan kartini', '082635281735'),
(18, 'alpina', 'jalan palembang', '089765789876'),
(19, 'salma', 'jalan lambung', '081111223333'),
(20, 'zahra', 'jalan pelita', '089999887788'),
(21, 'akikah', 'jalan tenggarong', '089876543212'),
(22, 'bambang', 'jalan damanuri', '087654323456'),
(23, 'dika', 'jalan ks tubun', '087654323456'),
(24, 'gilang', 'jalan vulkanik', '085467835267'),
(25, 'tata', 'jalan gelatik', '087654567654'),
(26, 'eta', 'jalan damanuri', '087777777777'),
(27, 'try', 'jalan m yamin', '087676765456'),
(28, 'desi', 'jalan pisangan', '084563728390'),
(29, 'diva', 'jalan jambu', '087524367890'),
(30, 'tiara', 'jalan jakarta', '083232324256');

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
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `pegawai_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `pegawai_id`) VALUES
(1, 'email1@gmail.com', '12341234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'wadaw', 'wadaw@gmail.com', NULL, '12341234', NULL, '2023-06-22 20:17:06', '2023-06-22 20:17:06'),
(4, 'hihi', 'haha@gmail.com', NULL, '$2y$10$erT0VlNoK7wrg0zSJwXbbO5JlIdpFC9hutATWlV.WWUOpCNpA9cHW', NULL, '2023-06-24 00:06:47', '2023-06-24 00:06:47'),
(5, 'hahah', 'hihi@gmail.com', NULL, '$2y$10$wC77eK3fponr1YoFdoujpeK9PCMAMGlfzlD/w8dadrXkaNfZouTZe', NULL, '2023-06-24 00:17:41', '2023-06-24 00:17:41'),
(6, 'Dio Ferdinan', 'dio.ferdinan5@gmail.com', NULL, '$2y$10$fwDL3iH/Bg35i7.6v83LruH0G.bcVhDGvmV7LuPnizJplYrXaUVwS', NULL, '2023-06-24 00:23:12', '2023-06-24 00:23:12'),
(7, 'anzay', 'barudak@gmail.com', NULL, '$2y$10$Xnm9ZpUZdCrvKUOxDN5v9.3yQubLbO2YuWFWH.NzoRW3rXTrzQjMC', NULL, '2023-06-25 22:47:02', '2023-06-25 22:47:02'),
(8, 'nanda', 'nanda@gmail.com', NULL, '$2y$10$M56Z43QFRyhA3Vc47956heCzgEfNnjdzstQMrUZEc.xcQge1Xs6jq', NULL, '2023-06-26 00:01:02', '2023-06-26 00:01:02'),
(9, 'nisa', 'nisa@gmail.com', NULL, '$2y$10$mWflhHD1tIcSMDQCbaupAOOpMemSVElxMFRQs6L5cjbt01Ykn0VUO', NULL, '2023-06-26 00:01:46', '2023-06-26 00:01:46'),
(10, 'indri', 'indri@gmail.com', NULL, '$2y$10$kl3d0FIyh7Ud939c9Ox3r.Ko/3atddg3dXOCZqGixy81Jx0lXaJma', NULL, '2023-06-26 00:02:58', '2023-06-26 00:02:58'),
(11, 'dedy', 'dedy@gmail.com', NULL, '$2y$10$QQsak28A2D6IZcx0hg6XPeBUxHL9PRPw0GnYq9rmQBSPVGZjjYlRi', NULL, '2023-06-26 00:03:16', '2023-06-26 00:03:16'),
(12, 'dela', 'dela@gmail.com', NULL, '$2y$10$8gjh1dKbO.IBEQpS1dT/IOm4dwkZaYLz52E7CxBoFCiEijuUigDI6', NULL, '2023-06-26 00:03:38', '2023-06-26 00:03:38'),
(14, 'nisafebri', 'nisf@gmail.com', NULL, '$2y$10$mFllJYHYdZPVgG4EQpT0Fu8ec97Exz9/ZNdcoFk6eHgPe0QzKzbrW', NULL, '2023-06-26 00:04:31', '2023-06-26 00:04:31'),
(15, 'paja', 'paja@gmail.com', NULL, '$2y$10$1w1pTFMPTofoODYPBQep5.682D.eoLZpiysMfdpr19Yvap100wEL.', NULL, '2023-06-26 00:04:47', '2023-06-26 00:04:47'),
(16, 'vina', 'vina@gmail.com', NULL, '$2y$10$OPrhtiubYIXdIYn50khuDemIlum1KsKDL3pWi/H4CIF21f5dl8A4.', NULL, '2023-06-26 00:05:03', '2023-06-26 00:05:03'),
(17, 'jidan', 'jidan@gmail.com', NULL, '$2y$10$jJ3tRd1iCM85BpUTvCJWMuWKqGVDi4r5mj0Wb6WkzHrqwxy2oufxW', NULL, '2023-06-26 00:05:20', '2023-06-26 00:05:20'),
(18, 'lika', 'lika@gmail.com', NULL, '$2y$10$huivBEdwQt9NlvsOVShIu.huKWMNaM14eny5Y3PPDyzrRg.HPpETe', NULL, '2023-06-26 00:05:38', '2023-06-26 00:05:38'),
(19, 'sandi', 'sandi@gmail.com', NULL, '$2y$10$I9a6BAfcTrrm9v2/ywPRr.mg/XMt6.1u.mn88FMMcRLLTUXOAnPf6', NULL, '2023-06-26 00:05:53', '2023-06-26 00:05:53'),
(20, 'dika', 'dika@gmail.com', NULL, '$2y$10$3SQrQTB0u5btBaHDTP8GdeELESn/MyfOMWk1D3mwp1.CrImZtcolu', NULL, '2023-06-26 00:06:11', '2023-06-26 00:06:11'),
(21, 'sindi', 'sindi@gmail.com', NULL, '$2y$10$WpjMxBwoNWGs.SJZYWhR4OiWGdB144CsUFSYDUMQRw.rI0H1YOHCe', NULL, '2023-06-26 00:07:56', '2023-06-26 00:07:56'),
(22, 'ojan', 'ojzz@gmail.com', NULL, '$2y$10$dPAdkms3YiYd6hIGVeczUORD9lNgggDV4hvhAgSWW9vgDI10brdHS', NULL, '2023-06-26 00:08:17', '2023-06-26 00:08:17'),
(23, 'hapis', 'cgh@gmail.com', NULL, '$2y$10$dUjvWmegvu9aGQ7j9RuEmO6Ora6rrAqG8MGo101cQrjacbrRbxAO6', NULL, '2023-06-26 00:08:41', '2023-06-26 00:08:41'),
(24, 'ica', 'ica@gmail.com', NULL, '$2y$10$3VJ9URzR6wYpCOdRj8JvBu1dPL20bIK85BkD1StB0XSzfYf3hu1mu', NULL, '2023-06-26 00:10:01', '2023-06-26 00:10:01'),
(25, 'wahyu', 'young@gmail.com', NULL, '$2y$10$y08OIO4O7JHpZPvNQEYZ4OFahvE.MhMYX8hI4I1/Y04swDvCFuqfW', NULL, '2023-06-26 00:10:21', '2023-06-26 00:10:21'),
(26, 'arif', 'arfb@gmail.com', NULL, '$2y$10$dE6h/Ti7xTvBigAWcW.yg.nbRXt0kPSK0A0XfgmByUMrv6c5G/phG', NULL, '2023-06-26 00:10:37', '2023-06-26 00:10:37'),
(28, 'oji', 'ojik@gmail.com', NULL, '$2y$10$lRJnbGv2G4OKgY4jLVTLAuPwApH3p.awmv5Py8gjBgDcdxb/3MLka', NULL, '2023-06-26 00:11:04', '2023-06-26 00:11:04'),
(29, 'indah', 'indah@gmail.com', NULL, '$2y$10$6y/JC89.B80gzfXiucp6v.kpvIac24SCExzAdgHuNS3s3SC0DPSqW', NULL, '2023-06-26 00:11:25', '2023-06-26 00:11:25'),
(30, 'tika', 'tika@gmailcom', NULL, '$2y$10$mHjHq7L/yJPUYzWEdZRQ9Oq.uN.QF/2pcJIEqcVuM53TEp2r0xaO6', NULL, '2023-06-26 00:11:43', '2023-06-26 00:11:43'),
(31, 'rian', 'rian@gmail.com', NULL, '$2y$10$dhN/uvM.rpySZulR7q3jtesIsIWK3gPsEwvTTp.6zMIvxJWTQHh1O', NULL, '2023-06-26 00:12:21', '2023-06-26 00:12:21'),
(32, 'dea safitri', 'deas@gmail.com', NULL, '$2y$10$LF4/Boj96eO.GuBF8.K/lu/JFNnEZBMoEz1Gvtb3Ak27l3plsUzay', NULL, '2023-06-26 00:12:43', '2023-06-26 00:12:43'),
(33, 'wulan', 'wlnz@gmai.com', NULL, '$2y$10$WPBj0AaHguIc7RTAAyItwOMLpInX4JshlrWBanMioOR83Tda9saLa', NULL, '2023-06-26 00:12:58', '2023-06-26 00:12:58'),
(34, 'riski', 'kyyy@gmail.com', NULL, '$2y$10$exPBgDfm85lVRxVy0EAEye1DcmTGSPOTjESU4Np.HuTT7DOamzW/q', NULL, '2023-06-26 00:13:13', '2023-06-26 00:13:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pegawai` (`pegawai_id`),
  ADD KEY `pegawai_id` (`pegawai_id`),
  ADD KEY `merek_id` (`merek_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merek`
--
ALTER TABLE `merek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pegawai_id` (`pegawai_id`);

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
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12389;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `merek`
--
ALTER TABLE `merek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
