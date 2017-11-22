-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
<<<<<<< HEAD
-- Host: 127.0.0.1:3306
<<<<<<< HEAD
-- Generation Time: Nov 17, 2017 at 05:33 PM
=======
-- Generation Time: Nov 19, 2017 at 01:49 PM
>>>>>>> feature/khaiquan
-- Server version: 5.7.19
-- PHP Version: 5.6.31
=======
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2017 at 08:37 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8
>>>>>>> feature/thaovi

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
  `so_luong_mua` int(11) NOT NULL,
  `thanh_tien` float NOT NULL,
  `ngay_giao_hang` datetime NOT NULL,
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
  `ten_loai` varchar(250) NOT NULL,
  `so_tin` int(11) NOT NULL,
  `gia_ban` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goi_tin`
--

INSERT INTO `goi_tin` (`id`, `ten_goi_tin`, `ten_loai`, `so_tin`, `gia_ban`) VALUES
('GOL', 'Gói vàng', 'Gold', 150, 239000),
('SLI', 'Gói bạc', 'Sliver', 65, 105000),
('STD', 'Gói thường', 'Standard', 25, 45000);

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
<<<<<<< HEAD
--

DROP TABLE IF EXISTS `khu_vuc`;
CREATE TABLE IF NOT EXISTS `khu_vuc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_khu_vuc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kich_thuoc_man_hinh`
=======
>>>>>>> feature/thaovi
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
  `id_quan_huyen` int(11) NOT NULL,
  `id_phuong_xa` int(11) NOT NULL,
  `id_thanh_pho` int(11) NOT NULL,
  `ngay_dang_ky` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kich_hoat` bit(1) NOT NULL DEFAULT b'0',
  `trang_thai` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`),
  KEY `fk_thanhpho_nguoiban` (`id_thanh_pho`),
  KEY `fk_quanhuyen_nguoiban` (`id_quan_huyen`),
  KEY `fk_phuongxa_nguoiban` (`id_phuong_xa`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
=======
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
>>>>>>> feature/khaiquan

--
-- Dumping data for table `nguoi_ban`
--

INSERT INTO `nguoi_ban` (`id`, `email`, `mat_khau`, `ho_ten`, `cmnd`, `so_dien_thoai`, `dia_chi`, `id_quan_huyen`, `id_phuong_xa`, `id_thanh_pho`, `ngay_dang_ky`, `kich_hoat`, `trang_thai`) VALUES
<<<<<<< HEAD
(1, 'huucanh@gmail.com', 'E10ADC3949BA59ABBE56E057F20F883E', 'Nguyễn Hữu Cảnh', '0123456789', '0120456456', '487 Lý Tự Trọng', 556, 9220, 50, '2017-11-18 00:08:54', b'0', b'0');
=======
(1, 'huucanh@gmail.com', 'E10ADC3949BA59ABBE56E057F20F883E', 'Nguyễn Hữu Cảnh', '0123456789', '0120456456', '487 Lý Tự Trọng', 556, 9220, 50, '2017-11-18 00:08:54', b'0', b'1'),
(2, 'thientrang@gmail.com', 'E10ADC3949BA59ABBE56E057F20F883E', 'Trần Thiên Trang', '9876543210', '0955556662', '223 An Dương Vương', 570, 9422, 50, '2017-11-18 14:16:32', b'1', b'0'),
(3, 'huutai@gmail.com', '6389F3915211281868AB93D303440E77', 'Lê Hữu Tài', '595923134', '01324865242', '4543 ABC', 514, 8726, 45, '2017-11-18 14:53:23', b'1', b'1'),
(4, 'grazerjink@gmail.com', 'E10ADC3949BA59ABBE56E057F20F883E', 'Lý Chí Vĩ', '026548129511', '09623648524', '24 Sư Vạn Hạnh', 567, 9369, 50, '2017-11-19 17:26:52', b'1', b'1');
>>>>>>> feature/khaiquan

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
  `tong_tien` float NOT NULL,
  `ngay_dat_hang` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `ngay_giao_dich` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `phuong_thuc_thanh_toan` int(11) NOT NULL,
<<<<<<< HEAD
=======
  `payment_id` varchar(250) DEFAULT NULL,
  `payer_id` varchar(250) DEFAULT NULL,
>>>>>>> feature/khaiquan
  `id_tinh_trang` char(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_phieumuatin_goitin` (`id_goi_tin`),
  KEY `fk_phieumuatin_nguoiban` (`id_nguoi_ban`),
  KEY `fk_phieumuatin_tinhtrang` (`id_tinh_trang`)
<<<<<<< HEAD
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
=======
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phieu_mua_tin`
--

INSERT INTO `phieu_mua_tin` (`id`, `id_nguoi_ban`, `id_goi_tin`, `gia_ban`, `ngay_giao_dich`, `phuong_thuc_thanh_toan`, `payment_id`, `payer_id`, `id_tinh_trang`) VALUES
(1, 3, 'SLI', 105000, '2017-11-19 13:24:27', 1, 'PAY-4LE91980G6709852SLIISG3Q', '6GT5ZQDLUELJ6', 'TC'),
(2, 3, 'SLI', 105000, '2017-11-19 15:06:08', 0, NULL, NULL, 'XL'),
(3, 3, 'SLI', 105000, '2017-11-19 15:08:56', 0, NULL, NULL, 'XL'),
(4, 3, 'SLI', 105000, '2017-11-19 15:22:43', 0, NULL, NULL, 'XL'),
(5, 1, 'SLI', 105000, '2017-11-19 17:32:28', 0, NULL, NULL, 'XL'),
(6, 4, 'GOL', 239000, '2017-11-19 17:56:21', 1, 'PAY-9SM18093AJ6372132LIIWF6Q', '6GT5ZQDLUELJ6', 'TC'),
(7, 4, 'GOL', 239000, '2017-11-19 18:03:44', 1, 'PAY-38607416SM902980TLIIWJ3I', '6GT5ZQDLUELJ6', 'TC'),
(8, 4, 'SLI', 105000, '2017-11-19 18:07:18', 1, 'PAY-0S1098049S5087638LIIWLOI', '6GT5ZQDLUELJ6', 'TC'),
(9, 4, 'STD', 45000, '2017-11-19 18:12:52', 1, 'PAY-0LF30083624620310LIIWODY', '6GT5ZQDLUELJ6', 'TC'),
(10, 4, 'GOL', 239000, '2017-11-19 18:34:16', 1, 'PAY-8E485398V7308635NLIIWXRA', '6GT5ZQDLUELJ6', 'TC'),
(11, 3, 'GOL', 239000, '2017-11-19 18:51:04', 1, 'PAY-1G460496AG1622110LIIW74A', '6GT5ZQDLUELJ6', 'TC');
>>>>>>> feature/khaiquan

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
  `id_nguoi_ban` int(11) NOT NULL,
  `ngay_dang` datetime NOT NULL,
  `so_lan_xem` int(11) NOT NULL,
  `so_lan_mua` int(11) NOT NULL,
  `bi_danh` varchar(500) NOT NULL,
  `trang_thai` bit(1) NOT NULL,
  `an_hien` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sanpham_hangsanxuat` (`id_hang_san_xuat`),
  KEY `fk_sanpham_nguoiban` (`id_nguoi_ban`)
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `so_tin_ton`
--

INSERT INTO `so_tin_ton` (`id`, `id_nguoi_ban`, `so_tin_ton`, `so_tin_da_dung`, `ngay_cap_nhat`) VALUES
(1, 3, 65, 0, '2017-11-19 13:24:27'),
(2, 4, 150, 0, '2017-11-19 17:56:21'),
(3, 4, 300, 0, '2017-11-19 18:03:44'),
(4, 4, 365, 0, '2017-11-19 18:07:18'),
(5, 4, 390, 0, '2017-11-19 18:12:52'),
(6, 4, 540, 0, '2017-11-19 18:34:16'),
(7, 3, 215, 0, '2017-11-19 18:51:04');

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
('TC', 'Giao dịch thành công'),
('TB', 'Giao dịch thất bại'),
('DH', 'Đã hủy'),
('DG', 'Đang giao hàng'),
('XL', 'Đang xử lý');

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
-- Constraints for table `nguoi_ban`
--
ALTER TABLE `nguoi_ban`
  ADD CONSTRAINT `fk_phuongxa_nguoiban` FOREIGN KEY (`id_phuong_xa`) REFERENCES `phuong_xa` (`id`),
  ADD CONSTRAINT `fk_quanhuyen_nguoiban` FOREIGN KEY (`id_quan_huyen`) REFERENCES `quan_huyen` (`id`),
  ADD CONSTRAINT `fk_thanhpho_nguoiban` FOREIGN KEY (`id_thanh_pho`) REFERENCES `thanh_pho` (`id`);

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
  ADD CONSTRAINT `fk_phieumuatin_nguoiban` FOREIGN KEY (`id_nguoi_ban`) REFERENCES `nguoi_ban` (`id`),
  ADD CONSTRAINT `fk_phieumuatin_tinhtrang` FOREIGN KEY (`id_tinh_trang`) REFERENCES `tinh_trang` (`id`);

--
-- Constraints for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `fk_sanpham_hangsanxuat` FOREIGN KEY (`id_hang_san_xuat`) REFERENCES `hang_san_xuat` (`id`),
  ADD CONSTRAINT `fk_sanpham_nguoiban` FOREIGN KEY (`id_nguoi_ban`) REFERENCES `nguoi_ban` (`id`);

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
