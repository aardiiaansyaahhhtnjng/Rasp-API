-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jan 2023 pada 17.34
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internet of things`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_user_access_token`
--

CREATE TABLE `t_user_access_token` (
  `id_user_access_token` int(11) NOT NULL,
  `time_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `time_expired` datetime DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `access_token` varchar(50) NOT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `valid` varchar(1) NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_user_access_token`
--

INSERT INTO `t_user_access_token` (`id_user_access_token`, `time_created`, `time_expired`, `id_user`, `access_token`, `platform`, `valid`) VALUES
(1, '2023-01-06 15:26:19', '2023-01-07 21:25:48', 1, 'ee646307a52a8ee6f5ab', 'platform', 'N'),
(2, '2023-01-06 15:26:57', '2023-01-07 22:26:19', 1, '4c11226a6daf7c7310ae', 'platform', 'N'),
(3, '2023-01-06 15:26:59', '2023-01-07 22:26:57', 1, '5cf226d3274ec87621ab', 'platform', 'N'),
(4, '2023-01-06 15:26:59', '2023-01-07 22:26:59', 1, '9f4073fb3813549dd167', 'platform', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_user_access_token`
--
ALTER TABLE `t_user_access_token`
  ADD PRIMARY KEY (`id_user_access_token`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_user_access_token`
--
ALTER TABLE `t_user_access_token`
  MODIFY `id_user_access_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
