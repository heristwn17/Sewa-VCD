-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jul 2019 pada 07.04
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `jdl_vcd` varchar(50) NOT NULL,
  `kd_vcd` int(10) NOT NULL,
  `genre` varchar(10) NOT NULL,
  `harga` int(10) NOT NULL,
  `kategori` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`jdl_vcd`, `kd_vcd`, `genre`, `harga`, `kategori`) VALUES
('AADC 1', 2, 'drama', 5000, '17'),
('AADC 2', 9, 'Drama', 5000, '17'),
('Asih', 15, 'Horor', 5000, '17'),
('Danur 1', 12, 'Horor', 5000, '17'),
('Hangout', 3, 'trailer', 5000, '17'),
('Laskar Pelangi', 1, 'Drama', 5000, '13'),
('Warkop DKI', 13, 'Komedi', 5000, '17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `nm_peminjaman` varchar(10) NOT NULL,
  `no_hp` int(12) NOT NULL,
  `jdl_vcd` varchar(20) NOT NULL,
  `kd_vcd` int(10) NOT NULL,
  `tgl_peminjaman` text NOT NULL,
  `harga` int(10) NOT NULL,
  `uang_bayar` int(10) NOT NULL,
  `uang_kembali` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`nm_peminjaman`, `no_hp`, `jdl_vcd`, `kd_vcd`, `tgl_peminjaman`, `harga`, `uang_bayar`, `uang_kembali`) VALUES
('Agung', 827363737, 'Dilan 1999', 19, '5 hari', 5000, 5000, 0),
('Alvin', 123543664, 'AADC 2', 18, '10', 10000, 50000, 40000),
('Anjani', 98765678, 'Warkop DKI', 9, '10 hari', 10000, 100000, 90000),
('Anjar', 98765999, '5 cm', 3, '10 hari', 10000, 100000, 90000),
('Ari', 765678876, 'Asih', 19, '5', 5000, 10000, 5000),
('Bagus', 989989989, 'Jailangkung', 4, '30', 30000, 40000, 10000),
('Bima', 989898989, 'Danur', 10, '5 hari', 5000, 5000, 0),
('Dian', 987876765, 'The Raid', 2, '40', 40000, 50000, 10000),
('Fani', 67876567, 'mungkin', 8, '10', 10000, 20000, 10000),
('Heri', 85678987, 'AADC 1', 9, '20 hari', 20000, 100000, 80000),
('Monika ', 82876678, 'Hangout', 1, '5 hari', 5000, 10000, 5000),
('Tigor', 456789876, 'Comic 8', 6, '15', 15000, 30000, 15000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(10) NOT NULL,
  `password` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('heri', 56789);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`jdl_vcd`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`nm_peminjaman`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
