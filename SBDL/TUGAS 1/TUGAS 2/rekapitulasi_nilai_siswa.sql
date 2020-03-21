-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Mar 2020 pada 16.23
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rekapitulasi_nilai_siswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_guru`
--

CREATE TABLE `d_guru` (
  `NIP` char(15) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Jns_Kelamin` char(15) NOT NULL,
  `NoHP` varchar(15) NOT NULL,
  `Jabatan` varchar(50) NOT NULL,
  `Status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `d_guru`
--

INSERT INTO `d_guru` (`NIP`, `Nama`, `Alamat`, `Jns_Kelamin`, `NoHP`, `Jabatan`, `Status`) VALUES
('132698139', 'Ardi Mardiana', 'Kertajati', 'Laki-Laki', '081234567890', 'Kepala Sekolah', 'Guru Tetap');

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_kelas`
--

CREATE TABLE `d_kelas` (
  `Id_Kelas` char(10) NOT NULL,
  `Tahun_Ajar` varchar(10) NOT NULL,
  `Tingkat` char(5) NOT NULL,
  `Nama_Kelas` varchar(20) NOT NULL,
  `Wali_Kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `d_kelas`
--

INSERT INTO `d_kelas` (`Id_Kelas`, `Tahun_Ajar`, `Tingkat`, `Nama_Kelas`, `Wali_Kelas`) VALUES
('306', '2018', '2', 'Informatika', 'Ardi Mardiana');

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_matapelajaran`
--

CREATE TABLE `d_matapelajaran` (
  `Kode_MP` char(10) NOT NULL,
  `Tingkat` char(5) NOT NULL,
  `Semester` char(5) NOT NULL,
  `Jenis_MP` varchar(30) NOT NULL,
  `Mata_Pelajaran` varchar(100) NOT NULL,
  `NIP` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `d_matapelajaran`
--

INSERT INTO `d_matapelajaran` (`Kode_MP`, `Tingkat`, `Semester`, `Jenis_MP`, `Mata_Pelajaran`, `NIP`) VALUES
('TIF', '2', '4', 'Database', 'Sistem Basis Data Lanjut', '12371376');

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_nilai`
--

CREATE TABLE `d_nilai` (
  `Id_Nilai` char(10) NOT NULL,
  `Tahun_Ajar` varchar(10) NOT NULL,
  `Tingkat` char(5) NOT NULL,
  `NIS` varchar(15) NOT NULL,
  `Kode_MP` char(10) NOT NULL,
  `Nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `d_nilai`
--

INSERT INTO `d_nilai` (`Id_Nilai`, `Tahun_Ajar`, `Tingkat`, `NIS`, `Kode_MP`, `Nilai`) VALUES
('1241767', '2018', '2', '181410030', '1326356', 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_siswa`
--

CREATE TABLE `d_siswa` (
  `NIS` varchar(15) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Tmp_Lahir` varchar(100) NOT NULL,
  `Tgl_Lahir` date NOT NULL,
  `Jns_Kelamin` char(15) NOT NULL,
  `Agama` varchar(50) NOT NULL,
  `NoHP` char(15) NOT NULL,
  `Tahun_Masuk` char(8) NOT NULL,
  `Id_Kelas` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `d_siswa`
--

INSERT INTO `d_siswa` (`NIS`, `Nama`, `Alamat`, `Tmp_Lahir`, `Tgl_Lahir`, `Jns_Kelamin`, `Agama`, `NoHP`, `Tahun_Masuk`, `Id_Kelas`) VALUES
('181410030', 'Aditya Fatwa Komara', 'Kadipaten', 'Majalengka', '2000-02-21', 'Laki-Laki', 'Islam', '081234567890', '2018', '306');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `d_guru`
--
ALTER TABLE `d_guru`
  ADD PRIMARY KEY (`NIP`);

--
-- Indeks untuk tabel `d_kelas`
--
ALTER TABLE `d_kelas`
  ADD PRIMARY KEY (`Id_Kelas`);

--
-- Indeks untuk tabel `d_matapelajaran`
--
ALTER TABLE `d_matapelajaran`
  ADD PRIMARY KEY (`Kode_MP`);

--
-- Indeks untuk tabel `d_nilai`
--
ALTER TABLE `d_nilai`
  ADD PRIMARY KEY (`Id_Nilai`);

--
-- Indeks untuk tabel `d_siswa`
--
ALTER TABLE `d_siswa`
  ADD PRIMARY KEY (`NIS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
