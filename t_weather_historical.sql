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
-- Struktur dari tabel `t_weather_historical`
--

CREATE TABLE `t_weather_historical` (
  `id_historical` int(11) NOT NULL,
  `id_city` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `temp` float NOT NULL,
  `humidity` float NOT NULL,
  `pressure` float NOT NULL,
  `windspeed` float NOT NULL,
  `winddirection` float NOT NULL,
  `cloudcondition` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_weather_historical`
--

INSERT INTO `t_weather_historical` (`id_historical`, `id_city`, `time`, `temp`, `humidity`, `pressure`, `windspeed`, `winddirection`, `cloudcondition`) VALUES
(1, 1, '2023-01-06 21:24:07', 27.53, 80, 1009, 4.79, 329, 100),
(2, 1, '2023-01-06 21:34:07', 27.53, 80, 1009, 4.79, 329, 100),
(3, 1, '2023-01-06 21:44:08', 27.68, 79, 1009, 4.74, 324, 100),
(4, 1, '2023-01-06 21:54:07', 27.68, 79, 1009, 4.74, 324, 100),
(5, 1, '2023-01-06 22:04:07', 27.68, 79, 1009, 4.74, 324, 100),
(6, 1, '2023-01-06 22:14:07', 24.08, 94, 1009, 3.09, 350, 40),
(7, 2, '2023-01-06 22:15:59', 23.5, 96, 1011, 0.61, 20, 74),
(8, 2, '2023-01-06 22:25:59', 23.5, 96, 1011, 0.61, 20, 74),
(9, 3, '2023-01-06 22:32:05', 25.03, 87, 1014, 1.04, 70, 99),
(10, 3, '2023-01-06 22:42:05', 25.03, 87, 1014, 1.04, 70, 99),
(11, 3, '2023-01-06 22:52:05', 25.03, 87, 1014, 1.04, 70, 99),
(12, 3, '2023-01-06 23:02:05', 25.03, 87, 1014, 1.04, 70, 99),
(13, 3, '2023-01-06 23:12:05', 25.03, 87, 1014, 1.04, 70, 99),
(14, 3, '2023-01-06 23:22:05', 24.03, 87, 1014, 1.04, 70, 99),
(15, 3, '2023-01-06 23:32:05', 24.03, 87, 1014, 1.04, 70, 99);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_weather_historical`
--
ALTER TABLE `t_weather_historical`
  ADD PRIMARY KEY (`id_historical`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_weather_historical`
--
ALTER TABLE `t_weather_historical`
  MODIFY `id_historical` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
