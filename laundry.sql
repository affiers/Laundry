-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21 Jul 2020 pada 17.27
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_layanan`
--

CREATE TABLE `jenis_layanan` (
  `id` int(11) NOT NULL,
  `jenis` varchar(40) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `harga` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_layanan`
--

INSERT INTO `jenis_layanan` (`id`, `jenis`, `nama`, `satuan`, `harga`) VALUES
(1, 'Kiloan', 'Cuci Reguler (2-3 Hari)', 'Kg', '6000'),
(2, 'Kiloan', 'Cuci Express (1 Hari)', 'Kg', '8000'),
(3, 'Kiloan', 'Setrika + Pewangi', 'Kg', '4000'),
(4, 'Satuan', 'Cuci Kering (Dry Clean)', 'Pcs', '12000'),
(9, 'Satuan', 'Sprei', 'Pcs', '10000'),
(10, 'Satuan', 'Selimut', 'Pcs', '15000'),
(11, 'Satuan', 'Bed Cover', 'Pcs', '20000'),
(14, 'Satuan', 'Karpet', 'Pcs', '35000'),
(17, 'Satuan', 'Handuk', 'Pcs', '11000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_layanan`
--

CREATE TABLE `kategori_layanan` (
  `id` int(5) NOT NULL,
  `id_kat` int(5) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_layanan`
--

INSERT INTO `kategori_layanan` (`id`, `id_kat`, `nama_kategori`) VALUES
(1, 1, 'Kiloan'),
(2, 2, 'Satuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id` int(20) NOT NULL,
  `no_nota` varchar(30) NOT NULL,
  `tgl_order` date NOT NULL,
  `jenis` varchar(40) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `harga` varchar(128) NOT NULL,
  `jumlah` varchar(128) NOT NULL,
  `harga_akhir` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `order`
--

INSERT INTO `order` (`id`, `no_nota`, `tgl_order`, `jenis`, `nama`, `satuan`, `harga`, `jumlah`, `harga_akhir`) VALUES
(1, 'ORD-20-0001', '0000-00-00', 'Kiloan', 'Reguler', 'Kg', '6000', '1', '6000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `alamat` longtext NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `alamat`, `no_hp`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'AFIF KHOIRUL ABDI', 'affiers@yahoo.com', 'Jl. Muhtar No. 29', '082298964624', 'my_Photo2.png', '$2y$10$qyfvsRLfqi2jDau8pwrHtedriQ3Khd8o2EVrabxbv2OdMxxjRaRgK', 1, 1, 1591869565),
(2, 'Nurul Afandi', 'nurulafandi97@gmail.com', '', '087712856927', 'Nurul_Afandi.JPG', '$2y$10$GjloBIv1dxF6DFCTnG9SVuxHgc0s5tQloYNXSX4v1ckfCaltZBD.y', 2, 1, 1591913235),
(3, 'Aisyah Aulia', 'aisyahaulia823@gmail.com', 'Bekasi', '083129940944', 'Aulia.png', '$2y$10$kgTM97V3xq27i366qlK5gu5/IqGMCHz.jsBXKb6Kr2InNUf8wElpa', 3, 1, 1591924346),
(4, 'Khoirun Nisa', 'khoirun776@gmail.com', '', '081332097855', 'Nisa.png', '$2y$10$k57tucufD4KxLiY0NOPBdeKJZS7o8eImkQbdiZ395WTwc/yl/81m6', 2, 1, 1594598443),
(5, 'Roro Wahyu Ekasakti', 'rorowahyu24@gmail.com', '', '081332097855', 'Eka.png', '$2y$10$L5MaRitKWoYsH2HEuCK3CuxevYbXKz9Ves.Xr9xyQ9kV4tij8IwYu', 2, 1, 1594598531),
(13, 'Warjo', 'jaka@yahoo.com', 'Jalan Muhtar No.29', '081212001212', '', '', 4, 0, 1595176098),
(14, 'Pariman', 'Pariman@takur.com', 'Jalan Ghana', '081213139990', '', '', 4, 0, 1595176145);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 2, 2),
(8, 3, 3),
(9, 1, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'Staf'),
(3, 'Customer'),
(4, 'Menu'),
(7, 'Services');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Staf'),
(3, 'Customer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'Admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(3, 1, 'Data Customer Online', 'admin/datacustomer\r\n', 'fas fa-fw fa-users', 1),
(4, 1, 'Data Customer Offline', 'admin/datacustomeroff', 'fas fa-fw fa-users', 1),
(5, 1, 'Transaction Report', 'admin/report', 'fas fa-fw fa-file-invoice-dollar', 1),
(6, 1, 'Services', 'Services', 'fas fa-fw fa-concierge-bell', 1),
(7, 2, 'My Profile', 'Staf', 'fas fa-fw fa-user', 1),
(8, 2, 'Edit Profile', 'staf/editprofile', 'fas fa-fw fa-user-edit', 1),
(9, 2, 'Change Password', 'staf/changepassword', 'fas fa-fw fa-key', 1),
(10, 2, 'Input Order', 'staf/order', 'fas fa-fw fa-dollar-sign', 1),
(11, 2, 'Data Order', 'staf/dataorder', 'fas fa-fw fa-shopping-cart', 1),
(12, 2, 'Transaction Report', 'staf/report', 'fas fa-fw fa-file-invoice-dollar\r\n', 1),
(13, 3, 'My Profile', 'Customer', 'fas fa-fw fa-user', 1),
(14, 3, 'Edit Profile', 'customer/editprofile', 'fas fa-fw fa-user-edit', 1),
(15, 3, 'Change Password', 'customer/changepassword', 'fas fa-fw fa-key', 1),
(16, 3, 'Input Order', 'customer/order', 'fas fa-fw fa-shopping-cart', 1),
(79, 4, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(80, 4, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(2, 'jakasambung270@gmail.com', 'VScxhj9DsOhDGVw6huyADL1TEDIfyNgYFFZ0c+T9Iiw=', 1594253087);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_layanan`
--
ALTER TABLE `jenis_layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_layanan`
--
ALTER TABLE `kategori_layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_layanan`
--
ALTER TABLE `jenis_layanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kategori_layanan`
--
ALTER TABLE `kategori_layanan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
