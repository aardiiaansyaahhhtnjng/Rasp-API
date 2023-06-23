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
-- Struktur dari tabel `t_weather_realtime`
--

CREATE TABLE `t_weather_realtime` (
  `id_weather` int(11) NOT NULL,
  `id_city` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `temp` float NOT NULL,
  `humidity` float NOT NULL,
  `pressure` float NOT NULL,
  `windspeed` float NOT NULL,
  `winddirection` float NOT NULL,
  `cloudcondition` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_weather_realtime`
--

INSERT INTO `t_weather_realtime` (`id_weather`, `id_city`, `timestamp`, `temp`, `humidity`, `pressure`, `windspeed`, `winddirection`, `cloudcondition`) VALUES
(1, 1, '2023-01-06 15:14:07', 24.08, 94, 1009, 3.09, 350, 40),
(2, 2, '2023-01-06 15:25:59', 23.5, 96, 1011, 0.61, 20, 74),
(3, 3, '2023-01-06 16:32:05', 24.03, 87, 1014, 1.04, 70, 99);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_weather_realtime`
--
ALTER TABLE `t_weather_realtime`
  ADD PRIMARY KEY (`id_weather`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_weather_realtime`
--
ALTER TABLE `t_weather_realtime`
  MODIFY `id_weather` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
