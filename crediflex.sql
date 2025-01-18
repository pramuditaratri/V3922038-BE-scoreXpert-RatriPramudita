-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 18, 2025 at 11:21 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crediflex`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` bigint UNSIGNED NOT NULL,
  `cif_debitur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ibu_kandung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_perkawinan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_ktp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_ktp` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_ktp_berlaku` date NOT NULL,
  `jumlah_tanggungan` int NOT NULL,
  `profesi_sampingan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota_kabupaten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelurahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_tempat_tinggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lama_tinggal` int NOT NULL,
  `nama_usaha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `jumlah_karyawan` int NOT NULL,
  `jarak_lokasi_usaha` int NOT NULL,
  `status_tempat_usaha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_berlaku_usaha` date NOT NULL,
  `siup_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_usaha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pos_usaha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi_usaha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota_kabupaten_usaha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan_usaha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelurahan_usaha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `cif_debitur`, `nama_lengkap`, `tanggal_lahir`, `tempat_lahir`, `jenis_kelamin`, `nama_ibu_kandung`, `status_perkawinan`, `no_ktp`, `foto_ktp`, `tanggal_ktp_berlaku`, `jumlah_tanggungan`, `profesi_sampingan`, `no_telepon`, `alamat`, `kode_pos`, `provinsi`, `kota_kabupaten`, `kecamatan`, `kelurahan`, `telepon`, `fax`, `status_tempat_tinggal`, `lama_tinggal`, `nama_usaha`, `tanggal_mulai`, `jumlah_karyawan`, `jarak_lokasi_usaha`, `status_tempat_usaha`, `tanggal_berlaku_usaha`, `siup_no`, `alamat_usaha`, `kode_pos_usaha`, `provinsi_usaha`, `kota_kabupaten_usaha`, `kecamatan_usaha`, `kelurahan_usaha`, `created_at`, `updated_at`) VALUES
(1, '123456789', 'DONI', '1990-01-01', 'Jakarta', 'Laki-laki', 'DESI', 'Belum Menikah', '321987654321', 'uploads/foto_ktp/1736311211.png', '2030-01-01', 0, 'Freelancer', '081234567890', 'Jl. Merdeka No. 1', '12345', 'DKI Jakarta', 'Jakarta Pusat', 'Gambir', 'Gambir', '021123456', '021123457', 'Milik Sendiri', 5, 'Toko ABC', '2015-01-01', 3, 2, 'Milik Sendiri', '2030-01-01', 'SIUP123456', 'Jl. Usaha No. 2', '54321', 'DKI Jakarta', 'Jakarta Selatan', 'Setiabudi', 'Karet', '2025-01-07 21:40:11', '2025-01-07 21:40:11'),
(2, '123789654', 'arya', '2025-01-10', 'madiun', 'laki laki', 'asih', 'belum menikah', '7890123456789012', 'uploads/foto_ktp/1736490889.png', '2025-01-10', 4, 'freelance', '083119863852', 'jalan raya madiun', '23456', 'jatim', 'madiun', 'taman', 'kejuron', '021198345673', '021198345', 'milik sendiri', 5, 'warung makan', '2025-01-10', 5, 6, 'sewa', '2025-01-10', 'SIUP1234', 'jalan raya madiun', '23456', 'jatim', 'madiun', 'taman', 'kejuron', '2025-01-09 23:34:49', '2025-01-09 23:34:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_10_033706_create_masteranggota_table', 2),
(7, '2024_09_23_032718_create_pengajuan_table', 3),
(9, '2024_09_26_063201_create_pengajuan_table', 4),
(11, '2024_10_04_025423_add_column_to_users_table', 5),
(13, '2024_10_04_040555_create_users_table', 6),
(16, '2024_10_04_084242_create_pengajuan_table', 7),
(17, '2024_11_11_034954_create_credit_scoring_table', 8),
(18, '2024_12_02_061719_create_data_pemohon_table', 9),
(19, '2024_12_06_071632_create_pemohon_table', 10),
(20, '2024_12_06_160449_create_pemohon_table', 11),
(21, '2024_12_13_072957_create_pengajuan_table', 12),
(22, '2024_12_13_073409_create_pengajuan_table', 13),
(23, '2024_12_13_081310_create_anggota_table', 14),
(24, '2024_12_22_143945_create_anggota_table', 15),
(25, '2024_12_25_025440_create_pengajuan_table', 16),
(26, '2024_12_25_060651_create_pengajuan_table', 17),
(27, '2024_12_25_135134_create_riwayat_table', 18),
(28, '2025_01_04_153753_create_anggota_table', 19),
(29, '2025_01_04_164425_create_pengajuan_table', 20),
(30, '2025_01_04_171708_create_riwayat_table', 21),
(31, '2025_01_05_024300_create_riwayat_table', 22),
(32, '2025_01_08_025643_create_anggota_table', 23),
(33, '2025_01_08_031559_create_pengajuan_table', 24),
(34, '2025_01_08_031757_create_riwayat_table', 25);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id` bigint UNSIGNED NOT NULL,
  `anggota_id` bigint UNSIGNED NOT NULL,
  `penghasilan` decimal(15,2) NOT NULL,
  `beban_pengeluaran_bulanan` decimal(15,2) NOT NULL,
  `agunan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `besaran_kredit` decimal(15,2) NOT NULL,
  `alasan_kredit` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_hutang` decimal(15,2) NOT NULL,
  `tanggal_pengajuan` date NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`id`, `anggota_id`, `penghasilan`, `beban_pengeluaran_bulanan`, `agunan`, `besaran_kredit`, `alasan_kredit`, `jumlah_hutang`, `tanggal_pengajuan`, `tanggal_mulai`, `tanggal_selesai`, `created_at`, `updated_at`) VALUES
(1, 1, 5000000.00, 2000000.00, '12000000', 10000000.00, 'usaha rumah makan', 15000000.00, '2024-03-01', '2024-04-01', '2025-03-01', '2025-01-10 00:08:19', '2025-01-10 00:08:19'),
(2, 2, 5000000.00, 2000000.00, '12000000', 10000000.00, 'usaha rumah makan', 15000000.00, '2024-03-01', '2024-04-01', '2025-03-01', '2025-01-10 20:07:31', '2025-01-10 20:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Personal Access Token', '6330f9b938577f5873e0cd57488d1039b0ac4f7c0155ce8206343ae9011500f1', '[\"*\"]', NULL, NULL, '2024-09-01 22:03:27', '2024-09-01 22:03:27'),
(2, 'App\\Models\\User', 1, 'Personal Access Token', '90984dfb7b29aaa423e442b76303d37792773938163b47bd179f347f6cbbe195', '[\"*\"]', NULL, NULL, '2024-09-01 23:49:40', '2024-09-01 23:49:40'),
(3, 'App\\Models\\User', 1, 'Personal Access Token', '91a76bf38f451c3b5a55fd2c07507035652f177296e54984901821ed0d23652b', '[\"*\"]', NULL, NULL, '2024-09-03 21:00:24', '2024-09-03 21:00:24'),
(4, 'App\\Models\\User', 1, 'Personal Access Token', 'f7dbcd241f36ef6aedc7d776174e1718c5a149687dba52476e8a66307f4ae969', '[\"*\"]', NULL, NULL, '2024-09-03 22:15:28', '2024-09-03 22:15:28'),
(5, 'App\\Models\\User', 2, 'Personal Access Token', '3008339eb2007eae2bccb9985b627c47f2791c080e895a9dde6d6dee71208976', '[\"*\"]', NULL, NULL, '2024-09-03 22:28:25', '2024-09-03 22:28:25'),
(6, 'App\\Models\\User', 2, 'Personal Access Token', 'dbe11de4a89d971b804e0c2f4de64f3ce0aaab875d6203ac8a65768e6a19d47c', '[\"*\"]', NULL, NULL, '2024-09-04 06:35:53', '2024-09-04 06:35:53'),
(7, 'App\\Models\\User', 1, 'Personal Access Token', '890ef0314667584775231790a0445a276499634722bce3c76575b6b3a4648bc9', '[\"*\"]', NULL, NULL, '2024-09-06 06:38:47', '2024-09-06 06:38:47'),
(8, 'App\\Models\\User', 1, 'Personal Access Token', '3d3282d924b81d2b9189b4416634d18d1961308e8243ae06838755f96745d9a9', '[\"*\"]', NULL, NULL, '2024-09-06 07:37:15', '2024-09-06 07:37:15'),
(9, 'App\\Models\\User', 1, 'Personal Access Token', '44228f962594979f9e272ccc72367be51ac03acdca3e892158ac8f34eb7be658', '[\"*\"]', NULL, NULL, '2024-09-06 07:52:25', '2024-09-06 07:52:25'),
(10, 'App\\Models\\User', 1, 'Personal Access Token', '2b40d683d068a0dea026bc976ddd6710e0021cb168e174ea99cf945092f38c71', '[\"*\"]', NULL, NULL, '2024-09-06 07:55:33', '2024-09-06 07:55:33'),
(11, 'App\\Models\\User', 3, 'Personal Access Token', '3b2223c789ead0a9a05847ef95982b9cd6fa01409697f675888a5d7ca3d95f68', '[\"*\"]', NULL, NULL, '2024-09-06 19:20:54', '2024-09-06 19:20:54'),
(12, 'App\\Models\\User', 1, 'Personal Access Token', 'd653f98e9599fbaf6f91af7430fb7a60a984299d665c1fa96658789f28e02004', '[\"*\"]', NULL, NULL, '2024-09-06 19:27:33', '2024-09-06 19:27:33'),
(13, 'App\\Models\\User', 3, 'Personal Access Token', 'fa695426f48eb51cd50c04fa5a7028d3664884d4ab9716a30da406e4df19e3c3', '[\"*\"]', NULL, NULL, '2024-09-06 19:42:38', '2024-09-06 19:42:38'),
(14, 'App\\Models\\User', 1, 'Personal Access Token', 'fac4d939f94c25d15449ef1e342eb978e696a3b476aa5b0c876d1e6133240826', '[\"*\"]', NULL, NULL, '2024-09-10 21:20:31', '2024-09-10 21:20:31'),
(15, 'App\\Models\\User', 1, 'Personal Access Token', 'befc1667a482661c9ac6d81d2744d8426355190a5728bfea9ce982eb1ac958d1', '[\"*\"]', NULL, NULL, '2024-09-10 21:23:11', '2024-09-10 21:23:11'),
(16, 'App\\Models\\User', 1, 'Personal Access Token', '47bae6d81c80a6308fa7dd1259286e592ce4aefb71bebfa0608a96092f46f2a8', '[\"*\"]', NULL, NULL, '2024-09-10 21:43:59', '2024-09-10 21:43:59'),
(17, 'App\\Models\\User', 1, 'Personal Access Token', '8a8681de242d6e6c825adf4be16dbadc2fd9a4f733a2f29d0d828b137d39155f', '[\"*\"]', NULL, NULL, '2024-09-11 06:19:03', '2024-09-11 06:19:03'),
(18, 'App\\Models\\User', 1, 'Personal Access Token', '0c176f132d2d4ade0a550985057dc31c5303b9df7e63a9efcad39008c269cc91', '[\"*\"]', NULL, NULL, '2024-09-11 06:19:04', '2024-09-11 06:19:04'),
(19, 'App\\Models\\User', 1, 'Personal Access Token', '06d7ad07fb2dfabf2d2969568f2c0b4302715ebfb1b2fd4ae025f2ffe5f616ff', '[\"*\"]', NULL, NULL, '2024-09-11 06:19:05', '2024-09-11 06:19:05'),
(20, 'App\\Models\\User', 1, 'Personal Access Token', '7f6f17e1190dcd7d65595ae009e73fa5bf215529f27d757511a0541ef051cb37', '[\"*\"]', NULL, NULL, '2024-09-11 06:26:38', '2024-09-11 06:26:38'),
(21, 'App\\Models\\User', 1, 'Personal Access Token', 'cdfc0b21312624fc1cea8ec464a31c8ddb0e169ddf0abf7200046350806d697f', '[\"*\"]', NULL, NULL, '2024-09-11 21:19:33', '2024-09-11 21:19:33'),
(22, 'App\\Models\\User', 1, 'Personal Access Token', '452cc6d82e3fa9d398ab81a9b9563b7afb6d33179e9f09502f7d94c5d83deeb6', '[\"*\"]', NULL, NULL, '2024-09-11 21:33:32', '2024-09-11 21:33:32'),
(23, 'App\\Models\\User', 1, 'Personal Access Token', '743e20a191c0e3efccf21365a396af0553a18d21f28b27148e050edf470e06c4', '[\"*\"]', NULL, NULL, '2024-09-11 21:34:59', '2024-09-11 21:34:59'),
(24, 'App\\Models\\User', 1, 'Personal Access Token', 'd3ea2e5d43684d15399f74d4fe9e676e23b234a5e85c3a34592fa6b3490d9c86', '[\"*\"]', NULL, NULL, '2024-09-11 21:59:54', '2024-09-11 21:59:54'),
(25, 'App\\Models\\User', 1, 'Personal Access Token', '0ce3ca3bbb39e84617a9a570441ca2cc3a435b5babc1e3e10b9fd7b840ea9490', '[\"*\"]', NULL, NULL, '2024-09-12 01:14:03', '2024-09-12 01:14:03'),
(26, 'App\\Models\\User', 1, 'Personal Access Token', 'bbff07c399b1125a5a115c78b71d7830b9fd253220fbd216979905fb4d805528', '[\"*\"]', NULL, NULL, '2024-09-12 01:14:05', '2024-09-12 01:14:05'),
(27, 'App\\Models\\User', 1, 'Personal Access Token', '861c440513a1b064d9234563207d866d05e7adcec759105b413dadab599b6258', '[\"*\"]', NULL, NULL, '2024-09-12 01:14:06', '2024-09-12 01:14:06'),
(28, 'App\\Models\\User', 1, 'Personal Access Token', '377f59e34ed392dfba05ffe3260449d89a888e51659dca02c26d5ac62a558ca5', '[\"*\"]', NULL, NULL, '2024-09-12 01:14:06', '2024-09-12 01:14:06'),
(29, 'App\\Models\\User', 1, 'Personal Access Token', '08ee430f8a743db33c4a7aa744dd263a6d16658e611327e8bc6b7ef6fdfc0b6f', '[\"*\"]', NULL, NULL, '2024-09-13 02:31:36', '2024-09-13 02:31:36'),
(30, 'App\\Models\\User', 1, 'Personal Access Token', '8f3c84e6c585071c2f42da50301dce1f0509a1360db8e33d6f7f625ac370d278', '[\"*\"]', NULL, NULL, '2024-09-13 02:40:31', '2024-09-13 02:40:31'),
(31, 'App\\Models\\User', 1, 'Personal Access Token', 'bcb97cded9c43ca21e5f509e9bb7256c9c32212a317b9840ce3f474818a9794a', '[\"*\"]', NULL, NULL, '2024-09-13 02:42:58', '2024-09-13 02:42:58'),
(32, 'App\\Models\\User', 1, 'Personal Access Token', '5d1ce5633e178e6ff0763029bb5d9d43ba2105400bd0383d097b7b88d0648a98', '[\"*\"]', NULL, NULL, '2024-09-13 02:49:27', '2024-09-13 02:49:27'),
(33, 'App\\Models\\User', 1, 'Personal Access Token', '94f1fbeb8341400fdc01c9834303f940ad8331fb7a302e94a3a98f492dd3a386', '[\"*\"]', NULL, NULL, '2024-09-13 03:26:44', '2024-09-13 03:26:44'),
(34, 'App\\Models\\User', 1, 'Personal Access Token', '2786bbdbf06c0fcb3672b07050e59e576391ccea4abc35d1810c2f4963bc387f', '[\"*\"]', NULL, NULL, '2024-09-13 13:48:02', '2024-09-13 13:48:02'),
(35, 'App\\Models\\User', 1, 'Personal Access Token', '60b5e587c42a76da1d26b830e68339c852b79d0fe32850a2658c63df7ae8dd36', '[\"*\"]', NULL, NULL, '2024-09-13 14:41:58', '2024-09-13 14:41:58'),
(36, 'App\\Models\\User', 1, 'Personal Access Token', '01c6c382de4065dceec866da1a70b669e51e2d9d123959cc3742d051c937f6d0', '[\"*\"]', NULL, NULL, '2024-09-13 18:28:26', '2024-09-13 18:28:26'),
(37, 'App\\Models\\User', 1, 'Personal Access Token', 'e3909423b748d3bb8ca3b75162b3eef31aa36fdb2af48ad4f0fa63e2e377c488', '[\"*\"]', NULL, NULL, '2024-09-13 19:55:32', '2024-09-13 19:55:32'),
(38, 'App\\Models\\User', 1, 'Personal Access Token', 'adf28ea2482cb522d8c1a22844c3658dd5d80bdbec5596bf4f7d4f530c2f1b0d', '[\"*\"]', NULL, NULL, '2024-09-13 19:59:08', '2024-09-13 19:59:08'),
(39, 'App\\Models\\User', 1, 'Personal Access Token', 'b79bb2e52944368a85c7151ef066e8f897e8febb1c10877ca67e89787b3549d7', '[\"*\"]', NULL, NULL, '2024-09-16 18:40:15', '2024-09-16 18:40:15'),
(40, 'App\\Models\\User', 1, 'Personal Access Token', 'ace1618d04e3d00e09ecc9d7cce44c1ea38b3268338cab022aaa5e50076c7196', '[\"*\"]', NULL, NULL, '2024-09-16 19:05:31', '2024-09-16 19:05:31'),
(41, 'App\\Models\\User', 1, 'Personal Access Token', 'cf185256c75214c52946b96cf428c73156b07039bd0d2bded076ad9fbe503cf0', '[\"*\"]', NULL, NULL, '2024-09-16 19:31:47', '2024-09-16 19:31:47'),
(42, 'App\\Models\\User', 1, 'Personal Access Token', 'a0229339dc8ce314b3530aaf8baae084074286a40600b2bbc65b43a05faff432', '[\"*\"]', NULL, NULL, '2024-09-17 01:52:33', '2024-09-17 01:52:33'),
(43, 'App\\Models\\User', 1, 'Personal Access Token', 'be87e29cddd8c89f89afea1ecb2d16762083367c21c1f04bc9e9a5d803a00baa', '[\"*\"]', NULL, NULL, '2024-09-17 18:32:25', '2024-09-17 18:32:25'),
(44, 'App\\Models\\User', 1, 'Personal Access Token', '339c1cc15af8b77727a7724cc56ae9500e48d8ff703a857e0d34dc8caad4b5fe', '[\"*\"]', NULL, NULL, '2024-09-17 21:30:57', '2024-09-17 21:30:57'),
(45, 'App\\Models\\User', 1, 'Personal Access Token', '373f3d602e60f68f1a0521f5ee0259bde5e6bb3e442b5052e563d6c34fabf0eb', '[\"*\"]', NULL, NULL, '2024-09-17 23:31:02', '2024-09-17 23:31:02'),
(46, 'App\\Models\\User', 1, 'Personal Access Token', 'c52ad99eb135f49f7c4daa295f86a11ced26346fe884cf104bd80b27bb755c4e', '[\"*\"]', NULL, NULL, '2024-09-17 23:31:03', '2024-09-17 23:31:03'),
(47, 'App\\Models\\User', 1, 'Personal Access Token', 'de593370e8051713c830a78dae04abed04ee08677888d426573db0add670ac8e', '[\"*\"]', NULL, NULL, '2024-09-18 01:45:43', '2024-09-18 01:45:43'),
(48, 'App\\Models\\User', 1, 'Personal Access Token', '3f046381d33d50d43875f2827cdefc0a459f33537db28bd6173d72bd14414371', '[\"*\"]', NULL, NULL, '2024-09-18 20:34:19', '2024-09-18 20:34:19'),
(49, 'App\\Models\\User', 1, 'Personal Access Token', '6d92d8b53172dc01b2c113ba8e51b22b510a150b84435e32150bca03ccfee907', '[\"*\"]', NULL, NULL, '2024-09-18 21:42:55', '2024-09-18 21:42:55'),
(50, 'App\\Models\\User', 1, 'Personal Access Token', '3d8d3556872be1eb3afe92c72431a64fe6bbb47385dfb13940aba6f7297adcb2', '[\"*\"]', NULL, NULL, '2024-09-18 21:43:03', '2024-09-18 21:43:03'),
(51, 'App\\Models\\User', 1, 'Personal Access Token', '8773fb849e04d2486dd27067c85dd7f7009afdb0c5e0fc0b25eb42b9fe95628a', '[\"*\"]', NULL, NULL, '2024-09-18 21:45:39', '2024-09-18 21:45:39'),
(52, 'App\\Models\\User', 1, 'Personal Access Token', 'c4074a0261757265bc95ddd34af376b7e10bae73edabd6bd9ac142d4bf56b807', '[\"*\"]', NULL, NULL, '2024-09-19 00:03:21', '2024-09-19 00:03:21'),
(53, 'App\\Models\\User', 1, 'Personal Access Token', '82b9ff1f54bd5aff711b9c4d720596b04676c4f5b0d7c3cf0670facdafc885db', '[\"*\"]', NULL, NULL, '2024-09-19 00:03:43', '2024-09-19 00:03:43'),
(54, 'App\\Models\\User', 1, 'Personal Access Token', 'ce05912489fa99e74f1990c66cf509393da364e6374083b19e1059033717a41d', '[\"*\"]', NULL, NULL, '2024-09-19 00:55:02', '2024-09-19 00:55:02'),
(55, 'App\\Models\\User', 1, 'Personal Access Token', 'd2a802fa95556bb858a5aae4e92bed298aee8e1018ed2e2c3186c5a919d4e674', '[\"*\"]', NULL, NULL, '2024-09-19 20:51:23', '2024-09-19 20:51:23'),
(56, 'App\\Models\\User', 1, 'Personal Access Token', '5a76dde02cfc0b49eade5ef24b1b8d655aeaa027d1e3d67d990e75ca1493641b', '[\"*\"]', NULL, NULL, '2024-09-19 21:24:40', '2024-09-19 21:24:40'),
(57, 'App\\Models\\User', 1, 'Personal Access Token', '4badc5b469dca5d1dc91625b1aafc34a8b8ece90ce5f4fad3d86d0a21e1a5386', '[\"*\"]', NULL, NULL, '2024-09-19 23:19:42', '2024-09-19 23:19:42'),
(58, 'App\\Models\\User', 1, 'Personal Access Token', '1b0b74add1d90d215a1803ecedb07a850a7133e43f682fe4695af4f067f93999', '[\"*\"]', NULL, NULL, '2024-09-19 23:29:03', '2024-09-19 23:29:03'),
(59, 'App\\Models\\User', 1, 'Personal Access Token', '136ecef27a077fedd56580a32f82ca3e65b1b2c2f707469b540c7ecf89dda741', '[\"*\"]', NULL, NULL, '2024-09-20 00:02:27', '2024-09-20 00:02:27'),
(60, 'App\\Models\\User', 1, 'Personal Access Token', '332a61e8e06d31d71e5c23c1c264d143fc58467024ce4768f61a97e55ba6cfb5', '[\"*\"]', NULL, NULL, '2024-09-20 00:25:14', '2024-09-20 00:25:14'),
(61, 'App\\Models\\User', 1, 'Personal Access Token', '028aebe38a66e49823d7fc53c19382ed3c06e900b48caf16f03ebc7cd7046a74', '[\"*\"]', NULL, NULL, '2024-09-20 01:43:03', '2024-09-20 01:43:03'),
(62, 'App\\Models\\User', 1, 'Personal Access Token', '174361a3c010b794fa8c4db123ddb3701016cc05cf9688d56e4a269fbc9217bb', '[\"*\"]', NULL, NULL, '2024-09-20 19:07:02', '2024-09-20 19:07:02'),
(63, 'App\\Models\\User', 1, 'Personal Access Token', 'f487671d47cf19bc477d862fc3a8d2114337ad9301a2b90f07c566ace8e94b37', '[\"*\"]', NULL, NULL, '2024-09-23 20:36:05', '2024-09-23 20:36:05'),
(64, 'App\\Models\\User', 1, 'Personal Access Token', '5f074e7e5593cf0b65e687a01478d8074e5f4c7611fa0ed9a30e048cd3f9ac16', '[\"*\"]', NULL, NULL, '2024-09-23 23:24:37', '2024-09-23 23:24:37'),
(65, 'App\\Models\\User', 1, 'Personal Access Token', 'db6eb555ec4738a1c6c80a61a33d49b7cf9f9869d9b85d4c0b74b58e6e613420', '[\"*\"]', NULL, NULL, '2024-09-24 01:49:54', '2024-09-24 01:49:54'),
(66, 'App\\Models\\User', 1, 'Personal Access Token', '73a04a79c33cab6d4e75c3f4d91904c8cc586b3904c22993f7c00780a81cd127', '[\"*\"]', NULL, NULL, '2024-09-26 02:07:33', '2024-09-26 02:07:33'),
(67, 'App\\Models\\User', 1, 'Personal Access Token', '3b18d1ac8be6dc4ff045728daa2db92eda79c11fa2f6685a77aa115d3cb626ef', '[\"*\"]', NULL, NULL, '2024-09-27 00:16:18', '2024-09-27 00:16:18'),
(68, 'App\\Models\\User', 1, 'Personal Access Token', '3f0eb6a5d1824c59417371c0bd01f5b5bdb23d9029c77f3c15642b344b8f919a', '[\"*\"]', NULL, NULL, '2024-09-27 00:30:26', '2024-09-27 00:30:26'),
(69, 'App\\Models\\User', 1, 'Personal Access Token', 'acfbc5e13f94755198a8c7f8a2163d258dae83dfa13e1831509ec9adbf07dfd9', '[\"*\"]', NULL, NULL, '2024-09-27 18:35:40', '2024-09-27 18:35:40'),
(70, 'App\\Models\\User', 1, 'Personal Access Token', '63364d22b1eb0dd88915442fe1957e19137969eba2a7403f771ad910df66861e', '[\"*\"]', NULL, NULL, '2024-09-27 18:57:20', '2024-09-27 18:57:20'),
(71, 'App\\Models\\User', 4, 'Personal Access Token', 'a15de831670ba4717bb360d28f629a4a2d805cbe5507d809c9f74f3c9dde847f', '[\"*\"]', NULL, NULL, '2024-09-29 20:10:14', '2024-09-29 20:10:14'),
(72, 'App\\Models\\User', 1, 'Personal Access Token', '6ae43e8159e97b4a43056fb47023f7a6567f18a85f4f46ca95bdcc65e096054c', '[\"*\"]', NULL, NULL, '2024-09-29 20:11:38', '2024-09-29 20:11:38'),
(73, 'App\\Models\\User', 1, 'Personal Access Token', '5d8517035c13fc5d2bc866383e9abd380170d3bd4cd7c665f197ff1e5571a5e5', '[\"*\"]', NULL, NULL, '2024-09-29 23:37:31', '2024-09-29 23:37:31'),
(74, 'App\\Models\\User', 1, 'Personal Access Token', '3fc69f45b12cf3e351b12e0869aec683d65da716ea02a140f695f64f975ed8b7', '[\"*\"]', NULL, NULL, '2024-09-30 00:05:11', '2024-09-30 00:05:11'),
(75, 'App\\Models\\User', 5, 'Personal Access Token', '0f3bb2722789feb840caaeaa7361af484c17b7dffc85d1f7aa6c27cc521edd83', '[\"*\"]', NULL, NULL, '2024-09-30 00:12:42', '2024-09-30 00:12:42'),
(76, 'App\\Models\\User', 5, 'Personal Access Token', '38343c0273b58c183dc4cde926795b0b1cd336863c2bf2b536a0e8759de6dc5a', '[\"*\"]', NULL, NULL, '2024-09-30 00:13:02', '2024-09-30 00:13:02'),
(77, 'App\\Models\\User', 1, 'Personal Access Token', 'fff2e52dbb2cf89a77d7e4aabed9ab3abd471d2e3fe02f87d553347422ee4748', '[\"*\"]', NULL, NULL, '2024-09-30 00:14:43', '2024-09-30 00:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id` bigint UNSIGNED NOT NULL,
  `anggota_id` bigint UNSIGNED NOT NULL,
  `pengajuan_id` bigint UNSIGNED NOT NULL,
  `dti` double(8,2) NOT NULL,
  `status` enum('Disetujui','Ditolak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id`, `anggota_id`, `pengajuan_id`, `dti`, `status`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 40.00, 'Ditolak', 'DTI terlalu tinggi', '2025-01-10 20:08:26', '2025-01-10 20:08:26'),
(2, 2, 2, 40.00, 'Ditolak', 'DTI terlalu tinggi', '2025-01-10 20:08:27', '2025-01-10 20:08:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `no_telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `no_telepon`, `posisi`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ratri Pramuditaa', 'ratripramudita77@gmail.com', NULL, '083119863852', 'Account officier', '$2y$10$wUQ/t98h9t44q5Z73I5QU.oZvRk7JMXyzieyvER3DIV78du3zz8aO', NULL, '2024-10-04 01:37:06', '2024-10-22 21:28:39'),
(2, 'ara', 'ara@gmail.com', NULL, '081234567890', 'Manager', '$2y$10$MIYbPWgeenCqNGDAwMKCcOA9JtccJmKBZi/hEVBwr1.mJRg4Cg.Ga', NULL, '2025-01-05 04:31:29', '2025-01-05 04:31:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anggota_cif_debitur_unique` (`cif_debitur`),
  ADD UNIQUE KEY `anggota_no_ktp_unique` (`no_ktp`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengajuan_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_anggota_id_foreign` (`anggota_id`),
  ADD KEY `riwayat_pengajuan_id_foreign` (`pengajuan_id`);

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
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD CONSTRAINT `pengajuan_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`id`);

--
-- Constraints for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD CONSTRAINT `riwayat_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `riwayat_pengajuan_id_foreign` FOREIGN KEY (`pengajuan_id`) REFERENCES `pengajuan` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
