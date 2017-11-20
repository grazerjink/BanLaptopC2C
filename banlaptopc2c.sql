-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2017 at 08:37 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

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
CREATE DATABASE IF NOT EXISTS `banlaptopc2c` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `banlaptopc2c`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `mat_khau` varchar(250) NOT NULL,
  `ho_ten` varchar(250) NOT NULL,
  `so_dien_thoai` varchar(11) NOT NULL,
  `so_tai_khoan` varchar(12) NOT NULL,
  `dia_chi` varchar(250) NOT NULL,
  `trang_thai` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `mat_khau`, `ho_ten`, `so_dien_thoai`, `so_tai_khoan`, `dia_chi`, `trang_thai`) VALUES
(1, 'admin@gmail.com', 'admin', 'Administrator', '0933678123', '013944898282', '05 An Dương Vương, Phường 3, Quận 5, TP HCM', b'1111111111111111111111111111111');

-- --------------------------------------------------------

--
-- Table structure for table `card_man_hinh`
--

CREATE TABLE IF NOT EXISTS `card_man_hinh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_card` varchar(250) NOT NULL,
  `dung_luong` varchar(250) NOT NULL,
  `tich_hop` bit(1) NOT NULL,
  `an_hien` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cpu`
--

CREATE TABLE IF NOT EXISTS `cpu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_cpu` varchar(250) NOT NULL,
  `toc_do` varchar(250) NOT NULL,
  `an_hien` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ct_phieu_mua_hang`
--

CREATE TABLE IF NOT EXISTS `ct_phieu_mua_hang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_phieu_mua_hang` int(11) NOT NULL,
  `id_nguoi_ban` int(11) NOT NULL,
  `id_san_pham` int(11) NOT NULL,
  `gia_ban` float NOT NULL,
  `so_luong_ban` int(11) NOT NULL,
  `id_tinh_trang` char(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ctpm_nguoiban` (`id_nguoi_ban`),
  KEY `fk_ctpm_phieumuahang` (`id_phieu_mua_hang`),
  KEY `fk_ctpm_sanpham` (`id_san_pham`),
  KEY `fk_ctpm_tinhtrang` (`id_tinh_trang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `danh_gia`
--

CREATE TABLE IF NOT EXISTS `danh_gia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_don_hang` int(11) NOT NULL,
  `id_nguoi_ban` int(11) NOT NULL,
  `so_diem` int(11) NOT NULL,
  `su_dung` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_danhgia_phieumuahang` (`id_don_hang`),
  KEY `fk_danhgia_nguoiban` (`id_nguoi_ban`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `goi_tin`
--

CREATE TABLE IF NOT EXISTS `goi_tin` (
  `id` char(3) NOT NULL,
  `ten_goi_tin` varchar(250) NOT NULL,
  `so_tin` int(11) NOT NULL,
  `gia_ban` float NOT NULL,
  PRIMARY KEY (`id`)
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

CREATE TABLE IF NOT EXISTS `hang_san_xuat` (
  `id` char(2) NOT NULL,
  `ten_hang` varchar(250) NOT NULL,
  `logo_hang` varchar(250) NOT NULL,
  `an_hien` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hang_san_xuat`
--

INSERT INTO `hang_san_xuat` (`id`, `ten_hang`, `logo_hang`, `an_hien`) VALUES
('AC', 'Acer', 'acer.png', b'1111111111111111111111111111111'),
('AP', 'Apple', 'apple.png', b'1111111111111111111111111111111'),
('AS', 'ASUS', 'asus.png', b'1111111111111111111111111111111'),
('DE', 'Dell', 'dell.png', b'1111111111111111111111111111111'),
('HP', 'HP', 'hp.png', b'1111111111111111111111111111111'),
('LE', 'Lenovo', 'lenovo.png', b'1111111111111111111111111111111'),
('LG', 'LG', 'lg.png', b'1111111111111111111111111111111'),
('SS', 'Samsung', 'samsung.png', b'1111111111111111111111111111111');

-- --------------------------------------------------------

--
-- Table structure for table `khu_vuc`
--

CREATE TABLE IF NOT EXISTS `khu_vuc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_khu_vuc` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ten_khu_vuc` (`ten_khu_vuc`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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

CREATE TABLE IF NOT EXISTS `man_hinh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loai_man_hinh` varchar(250) NOT NULL,
  `kich_thuoc` varchar(250) NOT NULL,
  `do_phan_giai` varchar(250) NOT NULL,
  `an_hien` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_ban`
--

CREATE TABLE IF NOT EXISTS `nguoi_ban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `mat_khau` varchar(250) NOT NULL,
  `ho_ten` varchar(250) NOT NULL,
  `cmnd` varchar(12) NOT NULL,
  `so_dien_thoai` varchar(11) NOT NULL,
  `dia_chi` varchar(250) NOT NULL,
  `ngay_dang_ky` datetime NOT NULL,
  `kich_hoat` bit(1) NOT NULL,
  `trang_thai` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_mua`
--

CREATE TABLE IF NOT EXISTS `nguoi_mua` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `mat_khau` varchar(250) NOT NULL,
  `ho_ten` varchar(250) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `so_dien_thoai` varchar(250) NOT NULL,
  `dia_chi` varchar(250) NOT NULL,
  `ngay_dang_ki` datetime NOT NULL,
  `kich_hoat` bit(1) NOT NULL,
  `trang_thai` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `o_cung`
--

CREATE TABLE IF NOT EXISTS `o_cung` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loai_o_cung` varchar(250) NOT NULL,
  `dung_luong` varchar(250) NOT NULL,
  `an_hien` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phieu_mua_hang`
--

CREATE TABLE IF NOT EXISTS `phieu_mua_hang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_nguoi_mua` int(11) NOT NULL,
  `email_nhan` varchar(250) NOT NULL,
  `so_dien_thoai` varchar(11) NOT NULL,
  `ten_nguoi_nhan` varchar(250) NOT NULL,
  `dia_chi_giao` varchar(250) NOT NULL,
  `id_quan_huyen` int(11) NOT NULL,
  `id_khu_vuc` int(11) NOT NULL,
  `ghi_chu` varchar(250) NOT NULL,
  `ngay_dat_hang` datetime NOT NULL,
  `ngay_giao_hang` datetime NOT NULL,
  `trang_thai` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_phieumuahang_khuvuc` (`id_khu_vuc`),
  KEY `fk_phieumuahang_nguoimua` (`id_nguoi_mua`),
  KEY `fk_phieumuahang_quanhuyen` (`id_quan_huyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phieu_mua_tin`
--

CREATE TABLE IF NOT EXISTS `phieu_mua_tin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_nguoi_ban` int(11) NOT NULL,
  `id_goi_tin` char(3) NOT NULL,
  `gia_ban` float NOT NULL,
  `ngay_giao_dich` datetime NOT NULL,
  `phuong_thuc_thanh_toan` int(11) NOT NULL,
  `trang_thai` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_phieumuatin_goitin` (`id_goi_tin`),
  KEY `fk_phieumuatin_nguoiban` (`id_nguoi_ban`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quan_huyen`
--

CREATE TABLE IF NOT EXISTS `quan_huyen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_quan_huyen` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ten_quan_huyen` (`ten_quan_huyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ram`
--

CREATE TABLE IF NOT EXISTS `ram` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loai_ram` varchar(250) NOT NULL,
  `dung_luong` varchar(250) NOT NULL,
  `an_hien` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE IF NOT EXISTS `san_pham` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `an_hien` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sanpham_hangsanxuat` (`id_hang_san_xuat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `so_tin_ton`
--

CREATE TABLE IF NOT EXISTS `so_tin_ton` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_nguoi_ban` int(11) NOT NULL,
  `so_tin_ton` int(11) NOT NULL,
  `so_tin_da_dung` int(11) NOT NULL,
  `ngay_cap_nhat` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tinton_nguoiban` (`id_nguoi_ban`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `thong_so_ki_thuat`
--

CREATE TABLE IF NOT EXISTS `thong_so_ki_thuat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_san_pham` int(11) NOT NULL,
  `id_man_hinh` int(11) NOT NULL,
  `id_cpu` int(11) NOT NULL,
  `id_ram` int(11) NOT NULL,
  `id_card_man_hinh` int(11) NOT NULL,
  `id_o_cung` int(11) NOT NULL,
  `ket_noi_wifi` bit(1) NOT NULL,
  `thoi_luong_pin` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vga_thongso` (`id_card_man_hinh`),
  KEY `fk_cpu_thongso` (`id_cpu`),
  KEY `fk_manhinh_thongso` (`id_man_hinh`),
  KEY `fk_ocung_thongso` (`id_o_cung`),
  KEY `fk_ram_thongso` (`id_ram`),
  KEY `fk_sanpham_thongso` (`id_san_pham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tinh_trang`
--

CREATE TABLE IF NOT EXISTS `tinh_trang` (
  `id` char(2) NOT NULL,
  `ten_mo_ta` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ten_mo_ta` (`ten_mo_ta`)
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
-- Constraints for dumped tables
--

--
-- Constraints for table `ct_phieu_mua_hang`
--
ALTER TABLE `ct_phieu_mua_hang`
  ADD CONSTRAINT `fk_ctpm_nguoiban` FOREIGN KEY (`id_nguoi_ban`) REFERENCES `nguoi_ban` (`id`),
  ADD CONSTRAINT `fk_ctpm_phieumuahang` FOREIGN KEY (`id_phieu_mua_hang`) REFERENCES `phieu_mua_hang` (`id`),
  ADD CONSTRAINT `fk_ctpm_sanpham` FOREIGN KEY (`id_san_pham`) REFERENCES `san_pham` (`id`),
  ADD CONSTRAINT `fk_ctpm_tinhtrang` FOREIGN KEY (`id_tinh_trang`) REFERENCES `tinh_trang` (`id`);

--
-- Constraints for table `danh_gia`
--
ALTER TABLE `danh_gia`
  ADD CONSTRAINT `fk_danhgia_nguoiban` FOREIGN KEY (`id_nguoi_ban`) REFERENCES `nguoi_ban` (`id`),
  ADD CONSTRAINT `fk_danhgia_phieumuahang` FOREIGN KEY (`id_don_hang`) REFERENCES `phieu_mua_hang` (`id`);

--
-- Constraints for table `phieu_mua_hang`
--
ALTER TABLE `phieu_mua_hang`
  ADD CONSTRAINT `fk_phieumuahang_khuvuc` FOREIGN KEY (`id_khu_vuc`) REFERENCES `khu_vuc` (`id`),
  ADD CONSTRAINT `fk_phieumuahang_nguoimua` FOREIGN KEY (`id_nguoi_mua`) REFERENCES `nguoi_mua` (`id`),
  ADD CONSTRAINT `fk_phieumuahang_quanhuyen` FOREIGN KEY (`id_quan_huyen`) REFERENCES `quan_huyen` (`id`);

--
-- Constraints for table `phieu_mua_tin`
--
ALTER TABLE `phieu_mua_tin`
  ADD CONSTRAINT `fk_phieumuatin_goitin` FOREIGN KEY (`id_goi_tin`) REFERENCES `goi_tin` (`id`),
  ADD CONSTRAINT `fk_phieumuatin_nguoiban` FOREIGN KEY (`id_nguoi_ban`) REFERENCES `nguoi_ban` (`id`);

--
-- Constraints for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `fk_sanpham_hangsanxuat` FOREIGN KEY (`id_hang_san_xuat`) REFERENCES `hang_san_xuat` (`id`);

--
-- Constraints for table `so_tin_ton`
--
ALTER TABLE `so_tin_ton`
  ADD CONSTRAINT `fk_tinton_nguoiban` FOREIGN KEY (`id_nguoi_ban`) REFERENCES `nguoi_ban` (`id`);

--
-- Constraints for table `thong_so_ki_thuat`
--
ALTER TABLE `thong_so_ki_thuat`
  ADD CONSTRAINT `fk_cpu_thongso` FOREIGN KEY (`id_cpu`) REFERENCES `cpu` (`id`),
  ADD CONSTRAINT `fk_manhinh_thongso` FOREIGN KEY (`id_man_hinh`) REFERENCES `man_hinh` (`id`),
  ADD CONSTRAINT `fk_ocung_thongso` FOREIGN KEY (`id_o_cung`) REFERENCES `o_cung` (`id`),
  ADD CONSTRAINT `fk_ram_thongso` FOREIGN KEY (`id_ram`) REFERENCES `ram` (`id`),
  ADD CONSTRAINT `fk_sanpham_thongso` FOREIGN KEY (`id_san_pham`) REFERENCES `san_pham` (`id`),
  ADD CONSTRAINT `fk_vga_thongso` FOREIGN KEY (`id_card_man_hinh`) REFERENCES `card_man_hinh` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
