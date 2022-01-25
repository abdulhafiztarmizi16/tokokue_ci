-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2021 at 10:10 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtokokue_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `no_penjualan` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kue` int(11) NOT NULL,
  `jumlah` int(100) NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`no_penjualan`, `id_user`, `id_kue`, `jumlah`, `total`) VALUES
('PJ1626633525', 10, 1, 2, 150000),
('PJ1626633654', 10, 1, 10, 750000),
('PJ1626717611', 10, 3, 2, 430),
('PJ1626717826', 10, 7, 6, 1290000),
('PJ1626884668', 14, 1, 1, 75000),
('PJ1626884696', 14, 1, 1, 75000),
('PJ1626959816', 14, 1, 1, 75000),
('PJ1626962322', 14, 1, 10, 750000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `kategori`) VALUES
(1, 'kue001', 'Signature Cakes'),
(2, 'kue002', 'Chocolate Cakes'),
(3, 'kue003', 'Cheesecakes'),
(4, 'kue004', 'Snack');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kue` int(11) NOT NULL,
  `jumlah` int(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kue`
--

CREATE TABLE `kue` (
  `id` int(11) NOT NULL,
  `kategori` int(100) NOT NULL,
  `id_toko` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `stok` int(100) NOT NULL,
  `harga` int(100) NOT NULL,
  `rating` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kue`
--

INSERT INTO `kue` (`id`, `kategori`, `id_toko`, `nama`, `tanggal`, `deskripsi`, `status`, `stok`, `harga`, `rating`, `gambar`) VALUES
(1, 1, 1, 'Pukis', '2021-07-09', 'Pasti enak', 'Ada', 107, 75000, '50', '664xauto-begini-rahasia-adonan-kue-pukis-empuk-161019s1.jpg'),
(3, 2, 3, 'Chocho Fruit Tart 14', '2021-07-13', 'Kue Mewah', 'Ada', 118, 215, '90', 'c380243d345d974c76fb6ef6557e16341.jpg'),
(4, 1, 3, 'Putu Ayu', '2021-06-27', 'Hijau pandang yang harum', 'Ada', 50, 1500, '78', 'Resep-Putu-Ayu-300x2001.jpg'),
(5, 2, 2, 'Opera Cake 05', '2021-06-27', 'Kue tar berlapis', 'Ada', 120, 85000, '88', 'a6d165f5c1116f8c21d05c86ab092d521.jpg'),
(6, 2, 4, 'Black Forest Fresh Cream Cherry Ajc 08', '2021-07-03', 'Kue Ulang TAhun mewah', 'Ada', 20, 285000, '89', '2d17638ba340df644c38d4bf5077d4311.jpg'),
(7, 2, 4, 'Chocho Fruit Tart 14', '2021-07-05', 'Kue Ulang Tahun mewah', 'Ada', 44, 215000, '80', '845df9a5e72ad26dda0cc9ebfa6da4b21.jpg'),
(8, 2, 4, 'AJ Chocolate 3', '2021-07-14', 'Kue Tar berlapis', 'Ada', 50, 310000, '88', '622e7675fd8d7648d2842fee4b0616081.jpg'),
(9, 2, 3, 'AJ Chocolate 2', '2021-07-07', 'Kue Tar berlapis', 'Ada', 32, 310000, '82', 'c38f40f5e8a317380c198affab2eb3a91.jpg'),
(10, 1, 3, 'Unicorn Cake', '2021-07-14', 'Kue Ulang Tahun mewah', 'Ada', 90, 385000, '9', '6b119c4f711b27c096fb1d5d3651f28e1.jpg'),
(11, 1, 1, 'Galaxy Cake', '2021-07-09', 'Kue Ulang Tahun mewah', 'Ada', 50, 400000, '9', 'fe07d363625f0d9b39fa834a6bcf89121.jpg'),
(12, 1, 2, 'Mermaid', '2021-07-15', 'Kue Ulang Tahun Mermaid', 'Ada', 54, 400000, '7', '93eacd7eeea396eadebe72b8d57a46d01.jpg'),
(13, 3, 3, 'Popcorn Caramello', '2021-07-17', 'Kue Ulang Tahun Caramel', 'Ada', 120, 400000, '9', '97c5fd831919e0b21a304bc1f1203b631.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `no_penjualan` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL,
  `total_bayar` int(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pembayaran` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Belum Dikirim'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `no_penjualan`, `id_user`, `total_bayar`, `tanggal`, `alamat`, `pembayaran`, `gambar`, `keterangan`, `status`) VALUES
(3, 'PJ1625023280', 10, 190000, '30/06/2021', 'Umban Sari', 'BRI', 'produk21.jpg', 'sesuai alamat', 'Belum Dikirim'),
(4, 'PJ1625113522', 10, 120000, '01/07/2021', 'Umban Sari', 'BRI', 'soccer-ball-310065_960_720.png', 'sesuai alamat', 'Pengemasan'),
(5, 'PJ1625754765', 10, 100000, '08/07/2021', 'Jl. H.Imam Muanandar Gang Balam', 'BRI', 'belajar1.png', 'Belum lunas', 'Dikirim'),
(6, 'PJ1626633525', 10, 150000, '18/07/2021', 'Jalan Harapan Raya', 'MANDIRI', 'Al_Fadli_2TIA_Absensi.png', 'Belum lunas', 'Belum Dikirim'),
(7, 'PJ1626633654', 10, 750000, '18/07/2021', 'Jl. H.Imam Muanandar Gang Balam', 'BRI', 'IMG_4659.JPG', 'Lunas', 'Belum Dikirim'),
(8, 'PJ1626717611', 10, 430, '19/07/2021', 'Jalan Rowosari Rumbai', 'MANDIRI', '0ff8ef4166431a94f5025652ef701a9f.jpg', 'Belum lunas', 'Belum Dikirim'),
(9, 'PJ1626717826', 10, 1290000, '19/07/2021', 'Jalan Kampling Ujung', 'BNI', '2d17638ba340df644c38d4bf5077d431.jpg', 'Lunas', 'Belum Dikirim'),
(10, 'PJ1626884668', 14, 75000, '21/07/2021', 'payakumbuh', '', '', 'COD', 'Belum Dikirim'),
(11, 'PJ1626884696', 14, 75000, '21/07/2021', 'jakarata', 'BNI', '', 'COD', 'Proses Pengiriman'),
(12, 'PJ1626959816', 14, 75000, '22/07/2021', 'Payakumbuh', 'MANDIRI', '', 'COD', 'Belum Dikirim'),
(13, 'PJ1626962322', 14, 750000, '22/07/2021', 'jakarta', 'MANDIRI', '', 'COD', 'Diterima');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tentang` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` int(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `buka-toko` varchar(100) NOT NULL,
  `tutup-toko` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id`, `nama`, `tentang`, `alamat`, `no_hp`, `status`, `buka-toko`, `tutup-toko`) VALUES
(1, 'Vanholand', 'Berbagai macam Kue', 'Jl. Harapan Raya Pekanbaru', 214523956, 'Open', '08.00', '22.00'),
(2, 'AJ Bakery', 'Berbai jenis roti', 'Jl. Summagung III blok KR No. 22, Kelapa Gading Pekanbaru', 2147483647, 'Open', '09.00', '22.00'),
(3, 'Mega Cake & Cookies', 'Menjual Berbagai Kue Basah dan kering ', 'Jl. Bukit Barisan No.B7, Tangkerang Tim., Kec. Tenayan Raya, Kota Pekanbaru', 2147483647, 'Open', '08.00', '22.00'),
(4, 'L\'Cheese Factory', 'Bebagai Varian Cake dengan Cita Rasa yang sudah perlu ditanyakan lagi. ENAK', 'Jl. Durian No.28, Sukajadi, Kec. Sukajadi, Kota Pekanbaru, Riau ', 761, 'Open', '10.00', '22.00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL DEFAULT 'default.png',
  `role` varchar(100) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`, `gambar`, `role`, `date_created`) VALUES
(10, 'Al Fadli', 'al19ti@mahasiswa.pcr.ac.id', '$2y$10$c5V.nCx78KQogXUYQBV2Xu5YWd9zA1pf4iJ8a/KpG.L6BhCzDE86W', 'default.png', 'User', 1625752742),
(11, 'Admin', 'admin@gmail.com', '$2y$10$2rRjpGHMbMmO4uSeeaV/2e9YoT9FvxOcGxDwMa81tVcXLHg2PQd/O', 'default.png', 'Admin', 1625754263),
(13, 'admin2', 'admin2@gmail.com', '$2y$10$r.O9qeGTR9Ejs31PiTRcduTfCuXjdlUI7C0Mnm86Qsb7dD9N0b8CS', 'default.jpg', 'Admin', 1626879108),
(14, 'abdul hafiz tarmizi', 'user2@gmail.com', '$2y$10$u17ZcI8ZMODPk7pxZMn48uKnJWs0QQFvxF/i3ERr4eNlSGEfqyemq', 'default.jpg', 'User', 1626879136);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD KEY `idKue` (`id_kue`),
  ADD KEY `idUser` (`id_user`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`id_user`),
  ADD KEY `kueID` (`id_kue`);

--
-- Indexes for table `kue`
--
ALTER TABLE `kue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ka` (`kategori`),
  ADD KEY `to` (`id_toko`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`id_user`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `kue`
--
ALTER TABLE `kue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `idKue` FOREIGN KEY (`id_kue`) REFERENCES `kue` (`id`),
  ADD CONSTRAINT `idUser` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `kueID` FOREIGN KEY (`id_kue`) REFERENCES `kue` (`id`),
  ADD CONSTRAINT `userID` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `kue`
--
ALTER TABLE `kue`
  ADD CONSTRAINT `ka` FOREIGN KEY (`kategori`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `to` FOREIGN KEY (`id_toko`) REFERENCES `toko` (`id`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
