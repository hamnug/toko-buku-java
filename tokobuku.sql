-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2024 at 01:52 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokobuku`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode`, `nama`, `jenis`, `harga`) VALUES
('001', 'Buku Tulis', 'Buku', 10000),
('002', 'Pensil 2B', 'atk', 3000),
('003', 'Chiki Cheetoz', 'Snack', 1000),
('004', 'Penggaris', 'ATK', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `jualdetail`
--

CREATE TABLE `jualdetail` (
  `id` int(11) NOT NULL,
  `jualNomor` int(10) NOT NULL,
  `barangKode` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `diskon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jualdetail`
--

INSERT INTO `jualdetail` (`id`, `jualNomor`, `barangKode`, `qty`, `harga`, `diskon`) VALUES
(1, 2, '001', 2, 10000, 1000),
(2, 3, '002', 1, 3000, 1000),
(3, 4, '003', 3, 1000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `jualmaster`
--

CREATE TABLE `jualmaster` (
  `nomor` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `konsumenId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jualmaster`
--

INSERT INTO `jualmaster` (`nomor`, `tanggal`, `konsumenId`) VALUES
(1, '2023-07-03', '001'),
(2, '2023-07-03', '001'),
(3, '2023-07-03', '001'),
(4, '2023-07-03', '001');

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE `konsumen` (
  `id` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `telepon` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konsumen`
--

INSERT INTO `konsumen` (`id`, `nama`, `telepon`) VALUES
('001', 'Herdika Rizki Pawiro', '08123456789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `jualdetail`
--
ALTER TABLE `jualdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jualmaster`
--
ALTER TABLE `jualmaster`
  ADD PRIMARY KEY (`nomor`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jualdetail`
--
ALTER TABLE `jualdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jualmaster`
--
ALTER TABLE `jualmaster`
  MODIFY `nomor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
