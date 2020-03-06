-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2020 at 08:41 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `d_guru`
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

-- --------------------------------------------------------

--
-- Table structure for table `d_kelas`
--

CREATE TABLE `d_kelas` (
  `Id_Kelas` char(10) NOT NULL,
  `Tahun_Ajar` varchar(10) NOT NULL,
  `Tingkat` char(5) NOT NULL,
  `Nama_Kelas` varchar(20) NOT NULL,
  `Wali_Kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `d_matapelajaran`
--

CREATE TABLE `d_matapelajaran` (
  `Kode_MP` char(10) NOT NULL,
  `Tingkat` char(5) NOT NULL,
  `Semester` char(5) NOT NULL,
  `Jenis_MP` varchar(30) NOT NULL,
  `Mata_Pelajaran` varchar(100) NOT NULL,
  `NIP` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `d_nilai`
--

CREATE TABLE `d_nilai` (
  `Id_Nilai` char(10) NOT NULL,
  `Tahun_Ajar` varchar(10) NOT NULL,
  `Tingkat` char(5) NOT NULL,
  `NIS` varchar(15) NOT NULL,
  `Kode_MP` char(10) NOT NULL,
  `Nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `d_siswa`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `d_guru`
--
ALTER TABLE `d_guru`
  ADD PRIMARY KEY (`NIP`);

--
-- Indexes for table `d_kelas`
--
ALTER TABLE `d_kelas`
  ADD PRIMARY KEY (`Id_Kelas`);

--
-- Indexes for table `d_matapelajaran`
--
ALTER TABLE `d_matapelajaran`
  ADD PRIMARY KEY (`Kode_MP`);

--
-- Indexes for table `d_nilai`
--
ALTER TABLE `d_nilai`
  ADD PRIMARY KEY (`Id_Nilai`);

--
-- Indexes for table `d_siswa`
--
ALTER TABLE `d_siswa`
  ADD PRIMARY KEY (`NIS`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
