-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 17, 2018 at 04:24 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsiakad_171530005`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbjurusan`
--

CREATE TABLE `tbjurusan` (
  `kd_jur` char(3) NOT NULL,
  `jurusan` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbjurusan`
--

INSERT INTO `tbjurusan` (`kd_jur`, `jurusan`) VALUES
('150', 'Teknik Komputer dan Informatika'),
('151', 'Teknik Mesin'),
('152', 'Teknik Kimia');

-- --------------------------------------------------------

--
-- Table structure for table `tbmahasiswa`
--

CREATE TABLE `tbmahasiswa` (
  `nim` char(9) NOT NULL,
  `kd_prodi` char(3) NOT NULL,
  `id_jur` tinyint(4) NOT NULL,
  `nama_mhs` varchar(35) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `tmp_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(13) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` varchar(24) NOT NULL,
  `nama_ayah` varchar(35) NOT NULL,
  `nama_ibu` varchar(35) NOT NULL,
  `foto` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbprodi`
--

CREATE TABLE `tbprodi` (
  `kd_prodi` char(3) NOT NULL,
  `prodi` varchar(45) NOT NULL,
  `kd_jur` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbprodi`
--

INSERT INTO `tbprodi` (`kd_prodi`, `prodi`, `kd_jur`) VALUES
('131', 'D2-Teknik Kimia', '152'),
('151', 'D2-Teknik Informatika', '150');

-- --------------------------------------------------------

--
-- Table structure for table `tbthangkatan`
--

CREATE TABLE `tbthangkatan` (
  `id_ta` tinyint(4) NOT NULL,
  `tahun_angkatan` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbthangkatan`
--

INSERT INTO `tbthangkatan` (`id_ta`, `tahun_angkatan`) VALUES
(1, '2014'),
(2, '2017');

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `id_user` char(5) NOT NULL,
  `nama_user` varchar(45) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `lev_user` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`id_user`, `nama_user`, `pass`, `lev_user`) VALUES
('ID001', 'Percobaan1', 'admin', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbjurusan`
--
ALTER TABLE `tbjurusan`
  ADD PRIMARY KEY (`kd_jur`);

--
-- Indexes for table `tbmahasiswa`
--
ALTER TABLE `tbmahasiswa`
  ADD PRIMARY KEY (`nim`,`kd_prodi`,`id_jur`);

--
-- Indexes for table `tbprodi`
--
ALTER TABLE `tbprodi`
  ADD PRIMARY KEY (`kd_prodi`,`kd_jur`);

--
-- Indexes for table `tbthangkatan`
--
ALTER TABLE `tbthangkatan`
  ADD PRIMARY KEY (`id_ta`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
