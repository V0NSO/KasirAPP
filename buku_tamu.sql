-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jun 2024 pada 18.30
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buku_tamu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `Nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`id`, `Nama`) VALUES
(1, 'Perpustakaan Keliling'),
(2, 'Pameran'),
(3, 'Metaverse');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `groupguesses`
--

CREATE TABLE `groupguesses` (
  `ID` int(11) NOT NULL,
  `NamaKetua` varchar(255) NOT NULL,
  `NomerTelponKetua` varchar(20) DEFAULT NULL,
  `AsalInstansi` varchar(255) NOT NULL,
  `AlamatInstansi` varchar(255) NOT NULL,
  `CountPersonel` int(11) DEFAULT NULL,
  `CountPNS` int(11) DEFAULT NULL,
  `CountPSwasta` int(11) DEFAULT NULL,
  `CountPeneliti` int(11) DEFAULT NULL,
  `CountGuru` int(11) DEFAULT NULL,
  `CountDosen` int(11) DEFAULT NULL,
  `CountPensiunan` int(11) DEFAULT NULL,
  `CountTNI` int(11) DEFAULT NULL,
  `CountWiraswasta` int(11) DEFAULT NULL,
  `CountPelajar` int(11) DEFAULT NULL,
  `CountMahasiswa` int(11) DEFAULT NULL,
  `CountLainnya` int(11) DEFAULT NULL,
  `CountSD` int(11) DEFAULT NULL,
  `CountSMP` int(11) DEFAULT NULL,
  `CountSMA` int(11) DEFAULT NULL,
  `CountD1` int(11) DEFAULT NULL,
  `CountD2` int(11) DEFAULT NULL,
  `CountD3` int(11) DEFAULT NULL,
  `CountS1` int(11) DEFAULT NULL,
  `CountS2` int(11) DEFAULT NULL,
  `CountS3` int(11) DEFAULT NULL,
  `CountLaki` int(11) DEFAULT NULL,
  `CountPerempuan` int(11) DEFAULT NULL,
  `TujuanKunjungan_ID` int(11) DEFAULT NULL,
  `CreateBy` int(11) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `CreateTerminal` varchar(100) DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateTerminal` varchar(100) DEFAULT NULL,
  `LocationLoans_ID` int(11) DEFAULT NULL,
  `Location_ID` int(11) DEFAULT NULL,
  `TeleponInstansi` varchar(20) DEFAULT NULL,
  `EmailInstansi` varchar(255) DEFAULT NULL,
  `Information` varchar(255) DEFAULT NULL,
  `NoPengunjung` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kelamin`
--

CREATE TABLE `jenis_kelamin` (
  `id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `CreateBy` int(11) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `CreateTerminal` varchar(100) DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateTerminal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jenis_kelamin`
--

INSERT INTO `jenis_kelamin` (`id`, `Name`, `CreateBy`, `CreateDate`, `CreateTerminal`, `UpdateBy`, `UpdateDate`, `UpdateTerminal`) VALUES
(1, 'Laki-laki', NULL, NULL, NULL, NULL, '2016-05-13 11:04:58', '192.168.0.1'),
(2, 'Perempuan', NULL, NULL, NULL, NULL, '2016-05-13 11:05:05', '192.168.0.1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_pekerjaan`
--

CREATE TABLE `master_pekerjaan` (
  `id` int(11) NOT NULL,
  `Pekerjaan` varchar(50) NOT NULL,
  `CreateBy` int(11) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `CreateTerminal` varchar(100) DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateTerminal` varchar(100) DEFAULT NULL,
  `KIILastUploadDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `master_pekerjaan`
--

INSERT INTO `master_pekerjaan` (`id`, `Pekerjaan`, `CreateBy`, `CreateDate`, `CreateTerminal`, `UpdateBy`, `UpdateDate`, `UpdateTerminal`, `KIILastUploadDate`) VALUES
(1, 'Pegawai Negeri', NULL, '2015-03-22 06:24:56', NULL, NULL, '2015-03-22 06:58:16', '::1', '2015-10-27 14:40:08'),
(2, 'Peneliti', NULL, '2015-03-22 06:24:56', NULL, NULL, '2015-03-22 06:57:56', '::1', '2015-10-27 14:40:08'),
(3, 'TNI/POLRI', NULL, '2015-03-22 06:24:56', NULL, NULL, '2015-03-22 06:58:37', '::1', '2015-10-27 14:40:08'),
(4, 'Pegawai Swasta', NULL, '2015-03-22 06:24:56', NULL, NULL, '2015-03-22 07:01:08', '::1', '2015-10-27 14:40:08'),
(5, 'Dosen', NULL, '2015-03-22 06:24:56', NULL, NULL, '2015-03-22 07:01:08', NULL, '2015-10-27 14:40:08'),
(6, 'Pensiunan', NULL, '2015-03-22 06:24:56', NULL, NULL, '2015-03-22 07:01:08', NULL, '2015-10-27 14:40:08'),
(7, 'Wiraswasta', NULL, '2015-03-22 06:24:56', NULL, NULL, '2015-03-22 07:01:08', NULL, '2015-10-27 14:40:08'),
(8, 'Guru', NULL, '2015-03-22 06:24:56', NULL, NULL, '2015-03-22 07:01:08', NULL, '2015-10-27 14:40:08'),
(9, 'Pelajar', NULL, '2015-03-22 06:24:56', NULL, NULL, '2015-03-22 07:01:08', NULL, '2015-10-27 14:40:08'),
(10, 'Mahasiswa', NULL, '2015-03-22 06:24:56', NULL, NULL, '2015-03-22 07:01:08', NULL, '2015-10-27 14:40:08'),
(11, 'Lainnya', NULL, '2016-05-13 10:54:53', '192.168.0.1', NULL, '2016-05-13 10:54:53', '192.168.0.1', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_pendidikan`
--

CREATE TABLE `master_pendidikan` (
  `id` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `CreateBy` int(11) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `CreateTerminal` varchar(100) DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateTerminal` varchar(100) DEFAULT NULL,
  `KIILastUploadDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `master_pendidikan`
--

INSERT INTO `master_pendidikan` (`id`, `Nama`, `CreateBy`, `CreateDate`, `CreateTerminal`, `UpdateBy`, `UpdateDate`, `UpdateTerminal`, `KIILastUploadDate`) VALUES
(1, 'SD', NULL, '2015-03-22 06:24:56', NULL, NULL, '2015-03-22 06:58:16', '::1', '2015-10-27 17:42:16'),
(2, 'SMP', NULL, '2015-03-22 06:24:56', NULL, NULL, '2015-03-22 06:57:56', '::1', '2015-10-27 17:42:16'),
(3, 'SMA', NULL, '2015-03-22 06:24:56', NULL, NULL, '2015-03-22 06:58:37', '::1', '2015-10-27 17:42:16'),
(4, 'D1', NULL, '2015-03-22 06:24:56', NULL, NULL, '2015-03-22 07:01:08', '::1', '2015-10-27 17:42:16'),
(5, 'D2', NULL, '2015-03-22 06:24:56', NULL, NULL, '2015-03-22 06:24:56', NULL, '2015-10-27 17:42:16'),
(6, 'D3', NULL, '2015-03-22 06:24:56', NULL, NULL, '2015-03-22 06:24:56', NULL, '2015-10-27 17:42:16'),
(7, 'S1', NULL, '2015-03-22 06:24:56', NULL, NULL, '2015-03-22 06:24:56', NULL, '2015-10-27 17:42:16'),
(8, 'S2', NULL, '2015-03-22 06:24:56', NULL, NULL, '2015-03-22 06:24:56', NULL, '2015-10-27 17:42:16'),
(9, 'S3', NULL, '2015-03-22 06:24:56', NULL, NULL, '2016-03-06 22:12:11', '192.168.0.1', '2015-10-27 17:42:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `memberguesses`
--

CREATE TABLE `memberguesses` (
  `id` int(11) NOT NULL,
  `NoAnggota` varchar(50) DEFAULT NULL,
  `Nama` varchar(100) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `Status_id` int(11) DEFAULT NULL,
  `MasaBerlaku_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `pendidikan_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `Alamat` varchar(255) DEFAULT NULL,
  `CreateBy` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `CreateTerminal` varchar(100) DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `UpdateTerminal` varchar(100) DEFAULT NULL,
  `Deskripsi` varchar(255) DEFAULT NULL,
  `LOCATIONLOANS_ID` int(11) DEFAULT NULL,
  `Location_Id` int(11) DEFAULT NULL,
  `TujuanKunjungan_Id` int(11) DEFAULT NULL,
  `Information` varchar(255) DEFAULT NULL,
  `NoPengunjung` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `memberguesses`
--

INSERT INTO `memberguesses` (`id`, `NoAnggota`, `Nama`, `event_id`, `Status_id`, `MasaBerlaku_id`, `job_id`, `pendidikan_id`, `gender_id`, `Alamat`, `CreateBy`, `updated_at`, `CreateTerminal`, `UpdateBy`, `created_at`, `UpdateTerminal`, `Deskripsi`, `LOCATIONLOANS_ID`, `Location_Id`, `TujuanKunjungan_Id`, `Information`, `NoPengunjung`) VALUES
(9, NULL, 'Agung', 1, NULL, NULL, 4, 3, 1, 'asfsagdhgkkjghjfgdf', NULL, '2024-06-04 17:17:16', NULL, NULL, '2024-03-18 13:57:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, 'Mount', 3, NULL, NULL, 6, 3, 1, 'sdfkyutjyrhteagrfjtuykiulh', NULL, '2024-03-18 14:08:41', NULL, NULL, '2024-03-18 14:08:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, 'afaggfg', 2, NULL, NULL, 2, 4, 1, 'asdddeadaefcac', NULL, '2024-05-07 15:11:34', NULL, NULL, '2024-05-07 15:11:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `namaPengguna` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nomorAnggota` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `event_id`, `namaPengguna`, `nomorAnggota`, `updated_at`, `created_at`) VALUES
(9, 2, 'Ivar Jenner', '1811565156895', '2024-06-03 02:17:13', '2024-06-03 02:17:13'),
(10, 2, 'Alvonso', '6464645322', '2024-06-04 10:11:17', '2024-06-04 10:11:17'),
(11, 2, 'Zenith', '5337444', '2024-06-04 10:11:37', '2024-06-04 10:11:37'),
(12, 2, 'Rockwell', '2423230242', '2024-06-04 10:13:39', '2024-06-04 10:13:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `rombongan`
--

CREATE TABLE `rombongan` (
  `id` int(11) NOT NULL,
  `NamaKetua` varchar(255) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `NomerTelponKetua` varchar(20) DEFAULT NULL,
  `AsalInstansi` varchar(255) NOT NULL,
  `AlamatInstansi` varchar(255) NOT NULL,
  `JumlahPersonil` int(11) DEFAULT NULL,
  `JumlahPNS` int(11) DEFAULT NULL,
  `JumlahPSwasta` int(11) DEFAULT NULL,
  `JumlahPeneliti` int(11) DEFAULT NULL,
  `JumlahGuru` int(11) DEFAULT NULL,
  `JumlahDosen` int(11) DEFAULT NULL,
  `JumlahPensiunan` int(11) DEFAULT NULL,
  `JumlahTNI` int(11) DEFAULT NULL,
  `JumlahWiraswasta` int(11) DEFAULT NULL,
  `JumlahPelajar` int(11) DEFAULT NULL,
  `JumlahMahasiswa` int(11) DEFAULT NULL,
  `JumlahLainnya` int(11) DEFAULT NULL,
  `JumlahSD` int(11) DEFAULT NULL,
  `JumlahSMP` int(11) DEFAULT NULL,
  `JumlahSMA` int(11) DEFAULT NULL,
  `JumlahD1` int(11) DEFAULT NULL,
  `JumlahD2` int(11) DEFAULT NULL,
  `JumlahD3` int(11) DEFAULT NULL,
  `JumlahS1` int(11) DEFAULT NULL,
  `JumlahS2` int(11) DEFAULT NULL,
  `JumlahS3` int(11) DEFAULT NULL,
  `JumlahLaki` int(11) DEFAULT NULL,
  `JumlahPerempuan` int(11) DEFAULT NULL,
  `TujuanKunjungan_ID` int(11) DEFAULT NULL,
  `CreateBy` int(11) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `CreateTerminal` varchar(100) DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateTerminal` varchar(100) DEFAULT NULL,
  `LocationLoans_ID` int(11) DEFAULT NULL,
  `Location_ID` int(11) DEFAULT NULL,
  `TeleponInstansi` varchar(20) DEFAULT NULL,
  `EmailInstansi` varchar(255) DEFAULT NULL,
  `Information` varchar(255) DEFAULT NULL,
  `NoPengunjung` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `rombongan`
--

INSERT INTO `rombongan` (`id`, `NamaKetua`, `event_id`, `NomerTelponKetua`, `AsalInstansi`, `AlamatInstansi`, `JumlahPersonil`, `JumlahPNS`, `JumlahPSwasta`, `JumlahPeneliti`, `JumlahGuru`, `JumlahDosen`, `JumlahPensiunan`, `JumlahTNI`, `JumlahWiraswasta`, `JumlahPelajar`, `JumlahMahasiswa`, `JumlahLainnya`, `JumlahSD`, `JumlahSMP`, `JumlahSMA`, `JumlahD1`, `JumlahD2`, `JumlahD3`, `JumlahS1`, `JumlahS2`, `JumlahS3`, `JumlahLaki`, `JumlahPerempuan`, `TujuanKunjungan_ID`, `CreateBy`, `CreateDate`, `CreateTerminal`, `UpdateBy`, `UpdateDate`, `UpdateTerminal`, `LocationLoans_ID`, `Location_ID`, `TeleponInstansi`, `EmailInstansi`, `Information`, `NoPengunjung`, `updated_at`, `created_at`) VALUES
(3, 'Justin Hubner', 3, '0896263215', 'PSSI', 'Jl. Tanah Sereal XIII', 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '105054178102', 'timnas@pssi.com', NULL, NULL, '2024-06-03 02:20:14', '2024-06-03 02:20:14'),
(4, 'Jackie', 3, '08593424332', 'Undip', 'Sudarto', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '232342323', 'undip@gmail.com', NULL, NULL, '2024-06-04 10:15:33', '2024-06-04 10:15:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@mail.com', NULL, '$2y$12$cyqifdeeUUCXpR9Io9SpmOnuQVUajfpnXihHqHfXA0WBnggwDn1tm', 'zFj6p98H2BiTO4H43BIWIMNPqNrWoUnpLuzszkUU2BzxALCSlel65ios7WQ0', '2024-02-25 09:00:30', '2024-02-25 09:00:30');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `groupguesses`
--
ALTER TABLE `groupguesses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `groupguesses_locations` (`Location_ID`),
  ADD KEY `groupguesses_tujuankunjungan_fk` (`TujuanKunjungan_ID`),
  ADD KEY `groupguesses_createby` (`CreateBy`),
  ADD KEY `groupguesses_updateby` (`UpdateBy`),
  ADD KEY `groupguesses_loclib_idx` (`LocationLoans_ID`);

--
-- Indeks untuk tabel `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jenis_kelamin_createby` (`CreateBy`),
  ADD KEY `jenis_kelamin_updateby` (`UpdateBy`);

--
-- Indeks untuk tabel `master_pekerjaan`
--
ALTER TABLE `master_pekerjaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_pekerjaan_createby` (`CreateBy`),
  ADD KEY `master_pekerjaan_updateby` (`UpdateBy`);

--
-- Indeks untuk tabel `master_pendidikan`
--
ALTER TABLE `master_pendidikan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_pendidikan_createby` (`CreateBy`),
  ADD KEY `master_pendidikan_updateby` (`UpdateBy`);

--
-- Indeks untuk tabel `memberguesses`
--
ALTER TABLE `memberguesses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `memberguesses_locationloans` (`LOCATIONLOANS_ID`),
  ADD KEY `memberguesses_location_id` (`Location_Id`),
  ADD KEY `memberguesses_TujuanKunjungan_Id` (`TujuanKunjungan_Id`),
  ADD KEY `Membergueeses_NoPengunjung` (`NoPengunjung`),
  ADD KEY `memberguesses_status` (`Status_id`),
  ADD KEY `memberguesses_pekerjaan` (`job_id`),
  ADD KEY `memberguesses_pendidikan` (`pendidikan_id`),
  ADD KEY `memberguesses_jeniskelamin` (`gender_id`),
  ADD KEY `memberguesses_masaberlaku` (`MasaBerlaku_id`),
  ADD KEY `memberguesses_createby` (`CreateBy`),
  ADD KEY `memberguesses_updateby` (`UpdateBy`),
  ADD KEY `memberguesses_nama` (`Nama`),
  ADD KEY `memberguesses_createdate` (`updated_at`),
  ADD KEY `memberguesses_noanggota` (`NoAnggota`),
  ADD KEY `nonanggota_event` (`event_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggota_event` (`event_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `rombongan`
--
ALTER TABLE `rombongan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupguesses_locations` (`Location_ID`),
  ADD KEY `groupguesses_tujuankunjungan_fk` (`TujuanKunjungan_ID`),
  ADD KEY `groupguesses_createby` (`CreateBy`),
  ADD KEY `groupguesses_updateby` (`UpdateBy`),
  ADD KEY `groupguesses_loclib_idx` (`LocationLoans_ID`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `groupguesses`
--
ALTER TABLE `groupguesses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_pekerjaan`
--
ALTER TABLE `master_pekerjaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `master_pendidikan`
--
ALTER TABLE `master_pendidikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `memberguesses`
--
ALTER TABLE `memberguesses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rombongan`
--
ALTER TABLE `rombongan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `memberguesses`
--
ALTER TABLE `memberguesses`
  ADD CONSTRAINT `group_event` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`),
  ADD CONSTRAINT `member_event` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`),
  ADD CONSTRAINT `nonanggota_event` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`),
  ADD CONSTRAINT `nonmember_event` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`);

--
-- Ketidakleluasaan untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `anggota_event` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
