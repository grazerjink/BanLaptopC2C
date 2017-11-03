-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 03, 2017 at 06:12 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banlaptopc2c`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mat_khau` varchar(250) NOT NULL,
  `ho_ten` varchar(250) NOT NULL,
  `so_dien_thoai` varchar(11) NOT NULL,
  `so_tai_khoan` varchar(12) NOT NULL,
  `dia_chi` varchar(250) NOT NULL,
  `trang_thai` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `mat_khau`, `ho_ten`, `so_dien_thoai`, `so_tai_khoan`, `dia_chi`, `trang_thai`) VALUES
(1, 'admin@gmail.com', 'admin', 'Administrator', '0933678123', '013944898282', '05 An Dương Vương, Phường 3, Quận 5, TP HCM', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `card_man_hinh`
--

CREATE TABLE `card_man_hinh` (
  `id` int(11) NOT NULL,
  `ten_card` varchar(250) NOT NULL,
  `dung_luong` varchar(250) NOT NULL,
  `tich_hop` bit(1) NOT NULL,
  `an_hien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cpu`
--

CREATE TABLE `cpu` (
  `id` int(11) NOT NULL,
  `ten_cpu` varchar(250) NOT NULL,
  `toc_do` varchar(250) NOT NULL,
  `an_hien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ct_phieu_mua_hang`
--

CREATE TABLE `ct_phieu_mua_hang` (
  `id` int(11) NOT NULL,
  `id_phieu_mua_hang` int(11) NOT NULL,
  `id_nguoi_ban` int(11) NOT NULL,
  `id_san_pham` int(11) NOT NULL,
  `gia_ban` float NOT NULL,
  `so_luong_ban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `danh_gia`
--

CREATE TABLE `danh_gia` (
  `id` int(11) NOT NULL,
  `id_don_hang` int(11) NOT NULL,
  `id_nguoi_ban` int(11) NOT NULL,
  `so_diem` int(11) NOT NULL,
  `su_dung` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `goi_tin`
--

CREATE TABLE `goi_tin` (
  `id` char(3) NOT NULL,
  `ten_goi_tin` varchar(250) NOT NULL,
  `so_tin` int(11) NOT NULL,
  `gia_ban` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goi_tin`
--

INSERT INTO `goi_tin` (`id`, `ten_goi_tin`, `so_tin`, `gia_ban`) VALUES
('GOL', 'Gói vàng (Gold)', 150, 239000),
('SLI', 'Gói bạc (Sliver)', 65, 105000),
('STD', 'Gói chuẩn (Standard)', 25, 45000);

-- --------------------------------------------------------

--
-- Table structure for table `hang_san_xuat`
--

CREATE TABLE `hang_san_xuat` (
  `id` char(2) NOT NULL,
  `ten_hang` varchar(250) NOT NULL,
  `logo_hang` varchar(250) NOT NULL,
  `an_hien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hang_san_xuat`
--

INSERT INTO `hang_san_xuat` (`id`, `ten_hang`, `logo_hang`, `an_hien`) VALUES
('AC', 'Acer', 'acer.png', b'1'),
('AP', 'Apple', 'apple.png', b'1'),
('AS', 'ASUS', 'asus.png', b'1'),
('DE', 'Dell', 'dell.png', b'1'),
('HP', 'HP', 'hp.png', b'1'),
('LE', 'Lenovo', 'lenovo.png', b'1'),
('LG', 'LG', 'lg.png', b'1'),
('SS', 'Samsung', 'samsung.png', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `khu_vuc`
--

CREATE TABLE `khu_vuc` (
  `id` int(11) NOT NULL,
  `ten_khu_vuc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khu_vuc`
--

INSERT INTO `khu_vuc` (`id`, `ten_khu_vuc`) VALUES
(2, 'Thành phố Hà Nội'),
(1, 'Thành phố Hồ Chí Minh'),
(3, 'Thành phố Đà Nẵng');

-- --------------------------------------------------------

--
-- Table structure for table `man_hinh`
--

CREATE TABLE `man_hinh` (
  `id` int(11) NOT NULL,
  `loai_man_hinh` varchar(250) NOT NULL,
  `kich_thuoc` varchar(250) NOT NULL,
  `do_phan_giai` varchar(250) NOT NULL,
  `an_hien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_ban`
--

CREATE TABLE `nguoi_ban` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mat_khau` varchar(250) NOT NULL,
  `ho_ten` varchar(250) NOT NULL,
  `cmnd` varchar(12) NOT NULL,
  `so_dien_thoai` varchar(11) NOT NULL,
  `dia_chi` varchar(250) NOT NULL,
  `ngay_dang_ky` datetime NOT NULL,
  `kich_hoat` bit(1) NOT NULL,
  `trang_thai` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_mua`
--

CREATE TABLE `nguoi_mua` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mat_khau` varchar(250) NOT NULL,
  `ho_ten` varchar(250) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `so_dien_thoai` varchar(250) NOT NULL,
  `dia_chi` varchar(250) NOT NULL,
  `ngay_dang_ki` datetime NOT NULL,
  `kich_hoat` bit(1) NOT NULL,
  `trang_thai` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `o_cung`
--

CREATE TABLE `o_cung` (
  `id` int(11) NOT NULL,
  `loai_o_cung` varchar(250) NOT NULL,
  `dung_luong` varchar(250) NOT NULL,
  `an_hien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phieu_mua_hang`
--

CREATE TABLE `phieu_mua_hang` (
  `id` int(11) NOT NULL,
  `id_nguoi_mua` int(11) NOT NULL,
  `email_nhan` varchar(250) NOT NULL,
  `so_dien_thoai` varchar(11) NOT NULL,
  `ten_nguoi_nhan` varchar(250) NOT NULL,
  `dia_chi_giao` varchar(250) NOT NULL,
  `id_quan_huyen` int(11) NOT NULL,
  `id_khu_vuc` int(11) NOT NULL,
  `ghi_chu` varchar(250) NOT NULL,
  `ngay_dat_hang` datetime NOT NULL,
  `id_tinh_trang` char(2) NOT NULL,
  `ngay_giao_hang` datetime NOT NULL,
  `trang_thai` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phieu_mua_tin`
--

CREATE TABLE `phieu_mua_tin` (
  `id` int(11) NOT NULL,
  `id_nguoi_ban` int(11) NOT NULL,
  `id_goi_tin` char(3) NOT NULL,
  `gia_ban` float NOT NULL,
  `ngay_giao_dich` datetime NOT NULL,
  `id_phuong_thuc_thanh_toan` int(11) NOT NULL,
  `trang_thai` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quan_huyen`
--

CREATE TABLE `quan_huyen` (
  `id` int(11) NOT NULL,
  `ten_quan_huyen` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ram`
--

CREATE TABLE `ram` (
  `id` int(11) NOT NULL,
  `loai_ram` varchar(250) NOT NULL,
  `dung_luong` varchar(250) NOT NULL,
  `an_hien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(11) NOT NULL,
  `ten_may` varchar(500) NOT NULL,
  `hinh_anh` varchar(250) NOT NULL,
  `gia_ban` float NOT NULL,
  `id_hang_san_xuat` char(2) NOT NULL,
  `ghi_chu` varchar(250) NOT NULL,
  `mo_ta` varchar(500) NOT NULL,
  `ton_kho` int(11) NOT NULL,
  `ngay_dang` datetime NOT NULL,
  `so_lan_xem` int(11) NOT NULL,
  `so_lan_mua` int(11) NOT NULL,
  `bi_danh` varchar(500) NOT NULL,
  `trang_thai` bit(1) NOT NULL,
  `an_hien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `so_tin_ton`
--

CREATE TABLE `so_tin_ton` (
  `id` int(11) NOT NULL,
  `id_nguoi_ban` int(11) NOT NULL,
  `so_tin_ton` int(11) NOT NULL,
  `so_tin_da_dung` int(11) NOT NULL,
  `ngay_cap_nhat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `thong_so_ki_thuat`
--

CREATE TABLE `thong_so_ki_thuat` (
  `id` int(11) NOT NULL,
  `id_san_pham` int(11) NOT NULL,
  `id_man_hinh` int(11) NOT NULL,
  `id_cpu` int(11) NOT NULL,
  `id_ram` int(11) NOT NULL,
  `id_card_man_hinh` int(11) NOT NULL,
  `id_o_cung` int(11) NOT NULL,
  `ket_noi_wifi` bit(1) NOT NULL,
  `thoi_luong_pin` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tinh_trang`
--

CREATE TABLE `tinh_trang` (
  `id` char(2) NOT NULL,
  `ten_mo_ta` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tinh_trang`
--

INSERT INTO `tinh_trang` (`id`, `ten_mo_ta`) VALUES
('DH', 'Đơn hàng bị huỷ'),
('XL', 'Đơn hàng chờ xử lý'),
('TT', 'Đơn hàng đã thanh toán thành công'),
('DG', 'Đơn hàng đã tiến hành giao');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_man_hinh`
--
ALTER TABLE `card_man_hinh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ct_phieu_mua_hang`
--
ALTER TABLE `ct_phieu_mua_hang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danh_gia`
--
ALTER TABLE `danh_gia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goi_tin`
--
ALTER TABLE `goi_tin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hang_san_xuat`
--
ALTER TABLE `hang_san_xuat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khu_vuc`
--
ALTER TABLE `khu_vuc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ten_khu_vuc` (`ten_khu_vuc`);

--
-- Indexes for table `man_hinh`
--
ALTER TABLE `man_hinh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguoi_ban`
--
ALTER TABLE `nguoi_ban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguoi_mua`
--
ALTER TABLE `nguoi_mua`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `o_cung`
--
ALTER TABLE `o_cung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phieu_mua_hang`
--
ALTER TABLE `phieu_mua_hang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phieu_mua_tin`
--
ALTER TABLE `phieu_mua_tin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quan_huyen`
--
ALTER TABLE `quan_huyen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ten_quan_huyen` (`ten_quan_huyen`);

--
-- Indexes for table `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `so_tin_ton`
--
ALTER TABLE `so_tin_ton`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thong_so_ki_thuat`
--
ALTER TABLE `thong_so_ki_thuat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tinh_trang`
--
ALTER TABLE `tinh_trang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ten_mo_ta` (`ten_mo_ta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `card_man_hinh`
--
ALTER TABLE `card_man_hinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cpu`
--
ALTER TABLE `cpu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ct_phieu_mua_hang`
--
ALTER TABLE `ct_phieu_mua_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `danh_gia`
--
ALTER TABLE `danh_gia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `khu_vuc`
--
ALTER TABLE `khu_vuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `man_hinh`
--
ALTER TABLE `man_hinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nguoi_ban`
--
ALTER TABLE `nguoi_ban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nguoi_mua`
--
ALTER TABLE `nguoi_mua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `o_cung`
--
ALTER TABLE `o_cung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phieu_mua_hang`
--
ALTER TABLE `phieu_mua_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phieu_mua_tin`
--
ALTER TABLE `phieu_mua_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quan_huyen`
--
ALTER TABLE `quan_huyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ram`
--
ALTER TABLE `ram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `so_tin_ton`
--
ALTER TABLE `so_tin_ton`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thong_so_ki_thuat`
--
ALTER TABLE `thong_so_ki_thuat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
