-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 12, 2017 at 03:50 PM
-- Server version: 5.7.19
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
CREATE DATABASE IF NOT EXISTS `banlaptopc2c` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `banlaptopc2c`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
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
(1, 'admin@gmail.com', 'admin', 'Administrator', '0933678123', '013944898282', '05 An Dương Vương, Phường 3, Quận 5, TP HCM', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `card_man_hinh`
--

DROP TABLE IF EXISTS `card_man_hinh`;
CREATE TABLE IF NOT EXISTS `card_man_hinh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_card` varchar(250) NOT NULL,
  `dung_luong` int(250) NOT NULL,
  `an_hien` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `card_man_hinh`
--

INSERT INTO `card_man_hinh` (`id`, `ten_card`, `dung_luong`, `an_hien`) VALUES
(1, 'GeForce 920M', 2, b'1'),
(2, 'GeForce 930M', 2, b'1'),
(3, 'GeForce 940M', 2, b'1'),
(4, 'GeForce GTX 950M', 2, b'1'),
(5, 'GeForce GTX 960M', 2, b'1'),
(6, 'GeForce GTX 965M', 2, b'1'),
(7, 'GeForce GTX 970M', 3, b'1'),
(8, 'GeForce GTX 980M', 4, b'1'),
(9, 'GeForce GTX 980', 8, b'1'),
(10, 'GeForce MX150', 2, b'1'),
(11, 'GeForce GTX 1050', 4, b'1'),
(12, 'GeForce GTX 1050 Ti', 4, b'1'),
(13, 'GeForce GTX 1060', 6, b'1'),
(14, 'GeForce GTX 1070', 8, b'1'),
(15, 'GeForce GTX 1080', 8, b'1'),
(16, 'Radeon HD 7430M', 1, b'1'),
(17, 'Radeon HD 7450M', 1, b'1'),
(18, 'Radeon HD 7470M', 1, b'1'),
(19, 'Radeon HD 7490M', 1, b'1'),
(20, 'Radeon HD 7510M', 1, b'1'),
(21, 'Radeon HD 7530M', 1, b'1'),
(22, 'Radeon HD 7550M', 1, b'1'),
(23, 'Radeon HD 7570M', 1, b'1'),
(24, 'Radeon HD 7590M', 1, b'1'),
(25, 'Radeon HD 7610M', 1, b'1'),
(26, 'Radeon HD 7630M', 1, b'1'),
(27, 'Radeon HD 7650M', 1, b'1'),
(28, 'Radeon HD 7670M', 1, b'1'),
(29, 'Radeon HD 7690M', 1, b'1'),
(30, 'Radeon HD 7690M XT', 1, b'1'),
(31, 'Radeon HD 7730M', 2, b'1'),
(32, 'Radeon HD 7750M', 1, b'1'),
(33, 'Radeon HD 7770M', 1, b'1'),
(34, 'Radeon HD 7850M', 2, b'1'),
(35, 'Radeon HD 7870M', 2, b'1'),
(36, 'Radeon HD 7970M', 2, b'1'),
(37, 'Radeon HD 8550M', 1, b'1'),
(38, 'Radeon HD 8630M', 1, b'1'),
(39, 'Radeon HD 8570M', 1, b'1'),
(40, 'Radeon HD 8650M', 1, b'1'),
(41, 'Radeon HD 8670M', 1, b'1'),
(42, 'Radeon HD 8690M', 1, b'1'),
(43, 'Radeon HD 8730M', 2, b'1'),
(44, 'Radeon HD 8750M', 2, b'1'),
(45, 'Radeon HD 8770M', 2, b'1'),
(46, 'Radeon HD 8790M', 2, b'1'),
(47, 'Radeon HD 8830M', 2, b'1'),
(48, 'Radeon HD 8850M', 2, b'1'),
(49, 'Radeon HD 8870M', 2, b'1'),
(50, 'Radeon HD 8970M', 2, b'1'),
(51, 'Radeon R5 M230', 2, b'1'),
(52, 'Radeon R5 M255', 2, b'1'),
(53, 'Radeon R7 M260', 2, b'1'),
(54, 'Radeon R7 M260X', 2, b'1'),
(55, 'Radeon R7 M265', 2, b'1'),
(56, 'Radeon R9 M265X', 2, b'1'),
(57, 'Radeon R9 M270X', 2, b'1'),
(58, 'Radeon R9 M275X', 2, b'1'),
(59, 'Radeon R9 M280X', 2, b'1'),
(60, 'Radeon R9 M290X', 4, b'1'),
(61, 'Radeon R9 M295X', 4, b'1'),
(62, 'Radeon R5 M330', 2, b'1'),
(63, 'Radeon R5 M335', 2, b'1'),
(64, 'Radeon R7 M360', 2, b'1'),
(65, 'Radeon R9 M365X', 4, b'1'),
(66, 'Radeon R9 M370X', 2, b'1'),
(67, 'Radeon R9 M375', 4, b'1'),
(68, 'Radeon R9 M375X', 4, b'1'),
(69, 'Radeon R9 M380', 4, b'1'),
(70, 'Radeon R9 M385X', 4, b'1'),
(71, 'Radeon R9 M390', 2, b'1'),
(72, 'Radeon R9 M390X', 4, b'1'),
(73, 'Radeon R9 M395', 2, b'1'),
(74, 'Radeon R9 M395X', 4, b'1'),
(75, 'Radeon R5 M420', 2, b'1'),
(76, 'Radeon R5 M430', 2, b'1'),
(77, 'Radeon R7 M435', 4, b'1'),
(78, 'Radeon R7 M440', 4, b'1'),
(79, 'Radeon R7 M445', 4, b'1'),
(80, 'Radeon R7 M460', 2, b'1'),
(81, 'Radeon R7 M465', 4, b'1'),
(82, 'Radeon R7 M465X', 4, b'1'),
(83, 'Radeon R9 M470', 4, b'1'),
(84, 'Radeon R9 M470X', 4, b'1'),
(85, 'Radeon R9 M485X', 8, b'1'),
(86, 'GeForce 710M', 1, b'1'),
(87, 'GeForce GT 720M', 2, b'1'),
(88, 'GeForce GT 730M', 2, b'1'),
(89, 'GeForce GT 735M', 2, b'1'),
(90, 'GeForce GT 740M', 2, b'1'),
(91, 'GeForce GT 740M', 2, b'1'),
(92, 'GeForce GT 745M', 2, b'1'),
(93, 'GeForce GT 750M', 2, b'1'),
(94, 'GeForce GT 755M', 2, b'1'),
(95, 'GeForce GTX 760M', 2, b'1'),
(96, 'GeForce GTX 765M', 2, b'1'),
(97, 'GeForce GTX 770M', 3, b'1'),
(98, 'GeForce GTX 780M', 4, b'1'),
(99, 'GeForce 810M', 1, b'1'),
(100, 'GeForce 820M', 2, b'1'),
(101, 'GeForce 825M', 2, b'1'),
(102, 'GeForce 830M', 2, b'1'),
(103, 'GeForce 840M', 2, b'1'),
(104, 'GeForce 845M', 4, b'1'),
(105, 'GeForce GTX 850M', 4, b'1'),
(106, 'GeForce GTX 860M', 2, b'1'),
(107, 'GeForce GTX 870M', 3, b'1'),
(108, 'GeForce GTX 880M', 4, b'1'),
(109, 'HD Graphics', 0, b'1'),
(110, 'HD Graphics 2000', 0, b'1'),
(111, 'HD Graphics 3000', 0, b'1'),
(112, 'HD Graphics P3000', 0, b'1'),
(113, 'HD Graphics 2500', 0, b'1'),
(114, 'HD Graphics 4000', 0, b'1'),
(115, 'HD Graphics P4000', 0, b'1'),
(116, 'HD Graphics 4200', 0, b'1'),
(117, 'HD Graphics 4400', 0, b'1'),
(118, 'HD Graphics 4600', 0, b'1'),
(119, 'HD Graphics P4600', 0, b'1'),
(120, 'HD Graphics P4700', 0, b'1'),
(121, 'HD Graphics 5000', 0, b'1'),
(122, 'Iris Graphics 5100', 0, b'1'),
(123, 'Iris Pro Graphics 5200', 0, b'1'),
(124, 'HD Graphics 400', 0, b'1'),
(125, 'HD Graphics 405', 0, b'1'),
(126, 'HD Graphics 5300', 0, b'1'),
(127, 'HD Graphics 5500', 0, b'1'),
(128, 'HD Graphics 5600', 0, b'1'),
(129, 'HD Graphics P5700', 0, b'1'),
(130, 'HD Graphics 6000', 0, b'1'),
(131, 'Iris Graphics 6100', 0, b'1'),
(132, 'Iris Pro Graphics 6200', 0, b'1'),
(133, 'Iris Pro Graphics P6300', 0, b'1'),
(134, 'HD Graphics 500', 0, b'1'),
(135, 'HD Graphics 505', 0, b'1'),
(136, 'HD Graphics 510', 0, b'1'),
(137, 'HD Graphics 515', 0, b'1'),
(138, 'HD Graphics 520', 0, b'1'),
(139, 'HD Graphics 530', 0, b'1'),
(140, 'HD Graphics P530', 0, b'1'),
(141, 'Iris Graphics 540', 0, b'1'),
(142, 'Iris Graphics 550', 0, b'1'),
(143, 'Iris Pro Graphics P555', 0, b'1'),
(144, 'Iris Pro Graphics 580', 0, b'1'),
(145, 'Iris Pro Graphics P580', 0, b'1'),
(146, 'HD Graphics 610', 0, b'1'),
(147, 'HD Graphics 615', 0, b'1'),
(148, 'HD Graphics 620', 0, b'1'),
(149, 'UHD Graphics 620', 0, b'1'),
(150, 'HD Graphics 630', 0, b'1'),
(151, 'HD Graphics P630', 0, b'1'),
(152, 'Iris Plus Graphics 640', 0, b'1'),
(153, 'Iris Plus Graphics 650', 0, b'1'),
(154, 'UHD Graphics 630', 0, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `cpu`
--

DROP TABLE IF EXISTS `cpu`;
CREATE TABLE IF NOT EXISTS `cpu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_cpu` varchar(250) NOT NULL,
  `so_nhan` int(11) NOT NULL,
  `toc_do` float NOT NULL,
  `l3_cache` int(11) NOT NULL,
  `an_hien` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cpu`
--

INSERT INTO `cpu` (`id`, `ten_cpu`, `so_nhan`, `toc_do`, `l3_cache`, `an_hien`) VALUES
(1, 'Core i5-4200M', 2, 2.5, 3, b'1'),
(2, 'Core i5-4210M', 2, 2.6, 3, b'1'),
(3, 'Core i5-4300M', 2, 2.6, 3, b'1'),
(4, 'Core i5-4310M', 2, 2.7, 3, b'1'),
(5, 'Core i5-4330M', 2, 2.8, 3, b'1'),
(6, 'Core i5-4340M', 2, 2.9, 3, b'1'),
(7, 'Core i5-4258U', 2, 2.4, 3, b'1'),
(8, 'Core i5-4278U', 2, 2.6, 3, b'1'),
(9, 'Core i5-4288U', 2, 2.6, 3, b'1'),
(10, 'Core i5-4308U', 2, 2.8, 3, b'1'),
(11, 'Core i5-4200U', 2, 1.6, 3, b'1'),
(12, 'Core i5-4210U', 2, 1.7, 3, b'1'),
(13, 'Core i5-4250U', 2, 1.3, 3, b'1'),
(14, 'Core i5-4260U', 2, 1.4, 3, b'1'),
(15, 'Core i5-4300U', 2, 1.9, 3, b'1'),
(16, 'Core i5-4310U', 2, 2, 3, b'1'),
(17, 'Core i5-4350U', 2, 1.4, 3, b'1'),
(18, 'Core i5-4360U', 2, 1.5, 3, b'1'),
(19, 'Core i5-4200Y', 2, 1.4, 3, b'1'),
(20, 'Core i5-4202Y', 2, 1.6, 3, b'1'),
(21, 'Core i5-4210Y', 2, 1.5, 3, b'1'),
(22, 'Core i5-4220Y', 2, 1.6, 3, b'1'),
(23, 'Core i5-4300Y', 2, 1.6, 3, b'1'),
(24, 'Core i5-4302Y', 2, 1.6, 3, b'1'),
(25, 'Core i5-4200H', 2, 2.8, 3, b'1'),
(26, 'Core i5-4210H', 2, 2.9, 3, b'1'),
(27, 'Core i5-4400E', 2, 2.7, 3, b'1'),
(28, 'Core i5-4410E', 2, 2.9, 3, b'1'),
(29, 'Core i5-4402E', 2, 1.6, 3, b'1'),
(30, 'Core i5-4402EC', 2, 2.5, 4, b'1'),
(31, 'Core i5-4422E', 2, 1.8, 3, b'1'),
(32, 'Core i5-5350H', 2, 3.1, 4, b'1'),
(33, 'Core i5-5257U', 2, 2.7, 3, b'1'),
(34, 'Core i5-5287U', 2, 2.9, 3, b'1'),
(35, 'Core i5-5200U', 2, 2.2, 3, b'1'),
(36, 'Core i5-5250U', 2, 1.6, 3, b'1'),
(37, 'Core i5-5300U', 2, 2.3, 3, b'1'),
(38, 'Core i5-5350U', 2, 1.8, 3, b'1'),
(39, 'Core i5-6300HQ', 4, 2.3, 6, b'1'),
(40, 'Core i5-6350HQ', 4, 2.3, 6, b'1'),
(41, 'Core i5-6440HQ', 4, 2.6, 6, b'1'),
(42, 'Core i5-6440EQ', 4, 2.7, 6, b'1'),
(43, 'Core i5-6442EQ', 4, 1.9, 6, b'1'),
(44, 'Core i5-6267U', 2, 2.9, 4, b'1'),
(45, 'Core i5-6287U', 2, 3.1, 4, b'1'),
(46, 'Core i5-6198DU', 2, 2.3, 3, b'1'),
(47, 'Core i5-6200U', 2, 2.3, 3, b'1'),
(48, 'Core i5-6260U', 2, 1.8, 4, b'1'),
(49, 'Core i5-6300U', 2, 2.4, 3, b'1'),
(50, 'Core i5-6360U', 2, 2, 4, b'1'),
(51, 'Core i5-7300HQ', 4, 2.5, 6, b'1'),
(52, 'Core i5-7440HQ', 4, 2.8, 6, b'1'),
(53, 'Core i5-7440EQ', 4, 2.9, 6, b'1'),
(54, 'Core i5-7442EQ', 4, 2.1, 6, b'1'),
(55, 'Core i5-7267U', 2, 3.1, 4, b'1'),
(56, 'Core i5-7287U', 2, 3.3, 4, b'1'),
(57, 'Core i5-7200U', 2, 2.5, 3, b'1'),
(58, 'Core i5-7260U', 2, 2.2, 4, b'1'),
(59, 'Core i5-7300U', 2, 2.6, 3, b'1'),
(60, 'Core i5-7360U', 2, 2.3, 4, b'1'),
(61, 'Core i5-7Y54', 2, 1.2, 4, b'1'),
(62, 'Core i5-7Y57', 2, 1.2, 4, b'1'),
(63, 'Core i5-8250U', 4, 1.6, 6, b'1'),
(64, 'Core i5-8350U', 4, 1.7, 6, b'1'),
(65, 'Core i3-4000M', 2, 2.4, 3, b'1'),
(66, 'Core i3-4010M', 2, 2.5, 3, b'1'),
(67, 'Core i3-4100M', 2, 2.5, 3, b'1'),
(68, 'Core i3-4110M', 2, 2.6, 3, b'1'),
(69, 'Core i3-4158U', 2, 2, 3, b'1'),
(70, 'Core i3-4005U', 2, 1.7, 3, b'1'),
(71, 'Core i3-4010U', 2, 1.7, 3, b'1'),
(72, 'Core i3-4025U', 2, 1.9, 3, b'1'),
(73, 'Core i3-4030U', 2, 1.9, 3, b'1'),
(74, 'Core i3-4100U', 2, 1.8, 3, b'1'),
(75, 'Core i3-4120U', 2, 2, 3, b'1'),
(76, 'Core i3-4010Y', 2, 1.3, 3, b'1'),
(77, 'Core i3-4012Y', 2, 1.5, 3, b'1'),
(78, 'Core i3-4020Y', 2, 1.5, 3, b'1'),
(79, 'Core i3-4030Y', 2, 1.6, 3, b'1'),
(80, 'Core i3-4100E', 2, 2.4, 3, b'1'),
(81, 'Core i3-4110E', 2, 2.6, 3, b'1'),
(82, 'Core i3-4102E', 2, 1.6, 3, b'1'),
(83, 'Core i3-4112E', 2, 1.8, 3, b'1'),
(84, 'Core i3-5157U', 2, 2.5, 3, b'1'),
(85, 'Core i3-5005U', 2, 2, 3, b'1'),
(86, 'Core i3-5010U', 2, 2.1, 3, b'1'),
(87, 'Core i3-5015U', 2, 2.1, 3, b'1'),
(88, 'Core i3-5020U', 2, 2.2, 3, b'1'),
(89, 'Core i3-6100H', 2, 2.7, 3, b'1'),
(90, 'Core i3-6100E', 2, 2.7, 3, b'1'),
(91, 'Core i3-6102E', 2, 1.9, 3, b'1'),
(92, 'Core i3-6157U', 2, 2.4, 3, b'1'),
(93, 'Core i3-6167U', 2, 2.7, 3, b'1'),
(94, 'Core i3-6006U', 2, 2, 3, b'1'),
(95, 'Core i3-6100U', 2, 2.3, 3, b'1'),
(96, 'Core i3-7100H', 2, 3, 3, b'1'),
(97, 'Core i3-7100E', 2, 2.9, 3, b'1'),
(98, 'Core i3-7102E', 2, 2.1, 3, b'1'),
(99, 'Core i3-7167U', 2, 2.8, 3, b'1'),
(100, 'Core i3-7100U', 2, 2.4, 3, b'1'),
(101, 'Core i3-7130U', 2, 2.7, 3, b'1'),
(102, 'Core i7-4600M', 2, 2.9, 4, b'1'),
(103, 'Core i7-4610M', 2, 3, 4, b'1'),
(104, 'Core i7-4558U', 2, 2.8, 4, b'1'),
(105, 'Core i7-4578U', 2, 3, 4, b'1'),
(106, 'Core i7-4500U', 2, 1.8, 4, b'1'),
(107, 'Core i7-4510U', 2, 2, 4, b'1'),
(108, 'Core i7-4550U', 2, 1.5, 4, b'1'),
(109, 'Core i7-4600U', 2, 2.1, 4, b'1'),
(110, 'Core i7-4650U', 2, 1.7, 4, b'1'),
(111, 'Core i7-4610Y', 2, 1.7, 4, b'1'),
(112, 'Core i7-4700MQ', 4, 2.4, 6, b'1'),
(113, 'Core i7-4702MQ', 4, 2.2, 6, b'1'),
(114, 'Core i7-4710MQ', 4, 2.5, 6, b'1'),
(115, 'Core i7-4712MQ', 4, 2.3, 6, b'1'),
(116, 'Core i7-4800MQ', 4, 2.7, 6, b'1'),
(117, 'Core i7-4810MQ', 4, 2.8, 6, b'1'),
(118, 'Core i7-4900MQ', 4, 2.8, 8, b'1'),
(119, 'Core i7-4910MQ', 4, 2.9, 8, b'1'),
(120, 'Core i7-4930MX', 4, 3, 8, b'1'),
(121, 'Core i7-4940MX', 4, 3.1, 8, b'1'),
(122, 'Core i7-4700HQ', 4, 2.4, 6, b'1'),
(123, 'Core i7-4702HQ', 4, 2.2, 6, b'1'),
(124, 'Core i7-4710HQ', 4, 2.5, 6, b'1'),
(125, 'Core i7-4712HQ', 4, 2.3, 6, b'1'),
(126, 'Core i7-4720HQ', 4, 2.6, 6, b'1'),
(127, 'Core i7-4722HQ', 4, 2.4, 6, b'1'),
(128, 'Core i7-4750HQ', 4, 2, 6, b'1'),
(129, 'Core i7-4760HQ', 4, 2.1, 6, b'1'),
(130, 'Core i7-4770HQ', 4, 2.2, 6, b'1'),
(131, 'Core i7-4850HQ', 4, 2.3, 6, b'1'),
(132, 'Core i7-4860HQ', 4, 2.4, 6, b'1'),
(133, 'Core i7-4870HQ', 4, 2.5, 6, b'1'),
(134, 'Core i7-4950HQ', 4, 2.4, 6, b'1'),
(135, 'Core i7-4960HQ', 4, 2.6, 6, b'1'),
(136, 'Core i7-4980HQ', 4, 2.8, 6, b'1'),
(137, 'Core i7-4700EC', 4, 2.7, 8, b'1'),
(138, 'Core i7-4700EQ', 4, 2.4, 6, b'1'),
(139, 'Core i7-4701EQ', 4, 2.4, 6, b'1'),
(140, 'Core i7-4850EQ', 4, 1.6, 6, b'1'),
(141, 'Core i7-4860EQ', 4, 1.8, 6, b'1'),
(142, 'Core i7-4702EC', 4, 2, 8, b'1'),
(143, 'Core i7-5700HQ', 4, 2.7, 6, b'1'),
(144, 'Core i7-5750HQ', 4, 2.5, 6, b'1'),
(145, 'Core i7-5850HQ', 4, 2.7, 6, b'1'),
(146, 'Core i7-5950HQ', 4, 2.9, 6, b'1'),
(147, 'Core i7-5700EQ', 4, 2.6, 6, b'1'),
(148, 'Core i7-5850EQ', 4, 2.7, 6, b'1'),
(149, 'Core i7-5557U', 2, 3.1, 4, b'1'),
(150, 'Core i7-5500U', 2, 2.4, 4, b'1'),
(151, 'Core i7-5550U', 2, 2, 4, b'1'),
(152, 'Core i7-5600U', 2, 2.6, 4, b'1'),
(153, 'Core i7-5650U', 2, 2.2, 4, b'1'),
(154, 'Core i7-6700HQ', 4, 2.6, 6, b'1'),
(155, 'Core i7-6770HQ', 4, 2.6, 6, b'1'),
(156, 'Core i7-6820HK', 4, 2.7, 8, b'1'),
(157, 'Core i7-6820HQ', 4, 2.7, 8, b'1'),
(158, 'Core i7-6870HQ', 4, 2.7, 8, b'1'),
(159, 'Core i7-6920HQ', 4, 2.9, 8, b'1'),
(160, 'Core i7-6970HQ', 4, 2.8, 8, b'1'),
(161, 'Core i7-6820EQ', 4, 2.8, 8, b'1'),
(162, 'Core i7-6822EQ', 4, 2, 8, b'1'),
(163, 'Core i7-6567U', 2, 3.3, 4, b'1'),
(164, 'Core i7-6500U', 2, 2.5, 4, b'1'),
(165, 'Core i7-6560U', 2, 2.2, 4, b'1'),
(166, 'Core i7-6600U', 2, 2.6, 4, b'1'),
(167, 'Core i7-6650U', 2, 2.2, 4, b'1'),
(168, 'Core i7-6660U', 2, 2.4, 4, b'1'),
(169, 'Core i7-7700HQ', 4, 2.8, 6, b'1'),
(170, 'Core i7-7820HQ', 4, 2.9, 8, b'1'),
(171, 'Core i7-7820HK', 4, 2.9, 8, b'1'),
(172, 'Core i7-7920HQ', 4, 3.1, 8, b'1'),
(173, 'Core i7-7820EQ', 4, 3, 8, b'1'),
(174, 'Core i7-7567U', 2, 3.5, 4, b'1'),
(175, 'Core i7-7500U', 2, 2.7, 4, b'1'),
(176, 'Core i7-7560U', 2, 2.4, 4, b'1'),
(177, 'Core i7-7600U', 2, 2.8, 4, b'1'),
(178, 'Core i7-7660U', 2, 2.5, 4, b'1'),
(179, 'Core i7-7Y75', 2, 1.3, 4, b'1'),
(180, 'Core i7-8550U', 4, 1.8, 8, b'1'),
(181, 'Core i7-8650U', 4, 1.9, 8, b'1'),
(182, 'Celeron N2805', 2, 1.46, 1, b'1'),
(183, 'Celeron N2806', 2, 1.6, 1, b'1'),
(184, 'Celeron N2807', 2, 1.58, 1, b'1'),
(185, 'Celeron N2808', 2, 1.58, 1, b'1'),
(186, 'Celeron N2810', 2, 2, 1, b'1'),
(187, 'Celeron N2815', 2, 1.86, 1, b'1'),
(188, 'Celeron N2820', 2, 2.13, 1, b'1'),
(189, 'Celeron N2830', 2, 2.16, 1, b'1'),
(190, 'Celeron N2840', 2, 2.16, 1, b'1'),
(191, 'Celeron N2910', 4, 1.6, 2, b'1'),
(192, 'Celeron N2920', 4, 1.86, 2, b'1'),
(193, 'Celeron N2930', 4, 1.83, 2, b'1'),
(194, 'Celeron N2940', 4, 1.83, 2, b'1'),
(195, 'Celeron 3865U', 2, 1.8, 2, b'1'),
(196, 'Celeron 3965U', 2, 2.2, 2, b'1'),
(197, 'Celeron 3965Y', 2, 1.5, 2, b'1'),
(198, 'Celeron 3855U', 2, 1.6, 2, b'1'),
(199, 'Celeron 3955U', 2, 2, 2, b'1'),
(200, 'Celeron N3000', 2, 1.04, 2, b'1'),
(201, 'Celeron N3010', 2, 1.04, 2, b'1'),
(202, 'Celeron N3050', 2, 1.6, 2, b'1'),
(203, 'Celeron N3060', 2, 1.6, 2, b'1'),
(204, 'Celeron N3150', 4, 1.6, 2, b'1'),
(205, 'Celeron N3160', 4, 1.6, 2, b'1'),
(206, 'Celeron N3350', 2, 1.1, 2, b'1'),
(207, 'Celeron N3450', 4, 1.1, 2, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `ct_phieu_mua_hang`
--

DROP TABLE IF EXISTS `ct_phieu_mua_hang`;
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

DROP TABLE IF EXISTS `danh_gia`;
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
-- Table structure for table `do_phan_giai`
--

DROP TABLE IF EXISTS `do_phan_giai`;
CREATE TABLE IF NOT EXISTS `do_phan_giai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_do_phan_giai` varchar(250) NOT NULL,
  `chieu_rong` int(11) NOT NULL,
  `chieu_dai` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `do_phan_giai`
--

INSERT INTO `do_phan_giai` (`id`, `ten_do_phan_giai`, `chieu_rong`, `chieu_dai`) VALUES
(1, 'HD', 1366, 768),
(2, 'FHD', 1920, 1080),
(3, 'WQHD', 2560, 1440),
(4, '4K UHD', 3840, 2160);

-- --------------------------------------------------------

--
-- Table structure for table `goi_tin`
--

DROP TABLE IF EXISTS `goi_tin`;
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

DROP TABLE IF EXISTS `hang_san_xuat`;
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

DROP TABLE IF EXISTS `khu_vuc`;
CREATE TABLE IF NOT EXISTS `khu_vuc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_khu_vuc` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ten_khu_vuc` (`ten_khu_vuc`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khu_vuc`
--

INSERT INTO `khu_vuc` (`id`, `ten_khu_vuc`) VALUES
(4, 'Cần Thơ'),
(2, 'Hà Nội'),
(5, 'Hải Phòng'),
(1, 'Hồ Chí Minh'),
(3, 'Đà Nẵng');

-- --------------------------------------------------------

--
-- Table structure for table `kich_thuoc_man_hinh`
--

DROP TABLE IF EXISTS `kich_thuoc_man_hinh`;
CREATE TABLE IF NOT EXISTS `kich_thuoc_man_hinh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loai_kich_thuoc` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kich_thuoc_man_hinh`
--

INSERT INTO `kich_thuoc_man_hinh` (`id`, `loai_kich_thuoc`) VALUES
(1, 13.3),
(2, 14),
(3, 15.5),
(4, 17.3);

-- --------------------------------------------------------

--
-- Table structure for table `loai_man_hinh`
--

DROP TABLE IF EXISTS `loai_man_hinh`;
CREATE TABLE IF NOT EXISTS `loai_man_hinh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_loai` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loai_man_hinh`
--

INSERT INTO `loai_man_hinh` (`id`, `ten_loai`) VALUES
(1, 'IPS'),
(2, 'LED'),
(3, 'LCD');

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_ban`
--

DROP TABLE IF EXISTS `nguoi_ban`;
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

DROP TABLE IF EXISTS `nguoi_mua`;
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

DROP TABLE IF EXISTS `o_cung`;
CREATE TABLE IF NOT EXISTS `o_cung` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loai_o_cung` varchar(250) NOT NULL,
  `dung_luong` varchar(250) NOT NULL,
  `an_hien` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `o_cung`
--

INSERT INTO `o_cung` (`id`, `loai_o_cung`, `dung_luong`, `an_hien`) VALUES
(1, 'HDD', '250 GB', b'1'),
(2, 'HDD', '500 GB', b'1'),
(3, 'HDD', '1 TB', b'1'),
(4, 'SSD', '120 GB', b'1'),
(5, 'SSD', '128 GB', b'1'),
(6, 'SSD', '256 GB', b'1'),
(7, 'SSD', '512 GB', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `phieu_mua_hang`
--

DROP TABLE IF EXISTS `phieu_mua_hang`;
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

DROP TABLE IF EXISTS `phieu_mua_tin`;
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

DROP TABLE IF EXISTS `quan_huyen`;
CREATE TABLE IF NOT EXISTS `quan_huyen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_khu_vuc` int(11) NOT NULL,
  `ten_quan_huyen` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_quanhuyen_khuvuc` (`id_khu_vuc`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quan_huyen`
--

INSERT INTO `quan_huyen` (`id`, `id_khu_vuc`, `ten_quan_huyen`) VALUES
(1, 1, 'Bình Chánh'),
(2, 1, 'Bình Tân'),
(3, 1, 'Bình Thạnh'),
(4, 1, 'Cần Giờ'),
(5, 1, 'Củ Chi'),
(6, 1, 'Gò Vấp'),
(7, 1, 'Hóc Môn'),
(8, 1, 'Nhà Bè'),
(9, 1, 'Phú Nhuận'),
(10, 1, 'Quận 1'),
(11, 1, 'Quận 2'),
(12, 1, 'Quận 3'),
(13, 1, 'Quận 4'),
(14, 1, 'Quận 5'),
(15, 1, 'Quận 6'),
(16, 1, 'Quận 7'),
(17, 1, 'Quận 8'),
(18, 1, 'Quận 9'),
(19, 1, 'Quận 10'),
(20, 1, 'Quận 11'),
(21, 1, 'Quận 12'),
(22, 1, 'Tân Bình'),
(23, 1, 'Tân Phú'),
(24, 1, 'Thủ Đức'),
(25, 2, 'Ba Đình'),
(26, 2, 'Ba Vì'),
(27, 2, 'Bắc Từ Liêm'),
(28, 2, 'Cầu Giấy'),
(29, 2, 'Chương Mỹ'),
(30, 2, 'Đan Phượng'),
(31, 2, 'Đông Anh'),
(32, 2, 'Đống Đa'),
(33, 2, 'Gia Lâm'),
(34, 2, 'Hà Đông'),
(35, 2, 'Hai Bà Trưng'),
(36, 2, 'Hoài Đức'),
(37, 2, 'Hoàn Kiếm'),
(38, 2, 'Hoàng Mai'),
(39, 2, 'Long Biên'),
(40, 2, 'Mê Linh'),
(41, 2, 'Mỹ Đức'),
(42, 2, 'Nam Từ Liêm'),
(43, 2, 'Phú Xuyên'),
(44, 2, 'Phúc Thọ'),
(45, 2, 'Quốc Oai'),
(46, 2, 'Sóc Sơn'),
(47, 2, 'Sơn Tây'),
(48, 2, 'Tây Hồ'),
(49, 2, 'Thạch Thất'),
(50, 2, 'Thanh Oai'),
(51, 2, 'Thanh Trì'),
(52, 2, 'Thanh Xuân'),
(53, 2, 'Thường Tín'),
(54, 2, 'Ứng Hòa'),
(55, 3, 'Cẩm Lệ'),
(56, 3, 'Hải Châu'),
(57, 3, 'Hòa Vang'),
(58, 3, 'Hoàng Sa'),
(59, 3, 'Liên Chiểu'),
(60, 3, 'Ngũ Hành Sơn'),
(61, 3, 'Sơn Trà'),
(62, 3, 'Thanh Khê'),
(63, 4, 'Bình Thủy'),
(64, 4, 'Cái Răng'),
(65, 4, 'Cờ Đỏ'),
(66, 4, 'Ninh Kiều'),
(67, 4, 'Ô Môn'),
(68, 4, 'Phong Điền'),
(69, 4, 'Thốt Nốt'),
(70, 4, 'Thới Lai'),
(71, 4, 'Vĩnh Thạnh'),
(72, 5, 'An Dương'),
(73, 5, 'An Lão'),
(74, 5, 'Bạch Long Vĩ'),
(75, 5, 'Cát Hải'),
(76, 5, 'Dương Kinh'),
(77, 5, 'Đồ Sơn'),
(78, 5, 'Hải An'),
(79, 5, 'Hồng Bàng'),
(80, 5, 'Kiến An'),
(81, 5, 'Kiến Thụy'),
(82, 5, 'Lê Chân'),
(83, 5, 'Ngô Quyền'),
(84, 5, 'Thuỷ Nguyên'),
(85, 5, 'Tiên Lãng'),
(86, 5, 'Vĩnh Bảo');

-- --------------------------------------------------------

--
-- Table structure for table `ram`
--

DROP TABLE IF EXISTS `ram`;
CREATE TABLE IF NOT EXISTS `ram` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loai_ram` varchar(250) NOT NULL,
  `dung_luong` int(11) NOT NULL,
  `an_hien` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ram`
--

INSERT INTO `ram` (`id`, `loai_ram`, `dung_luong`, `an_hien`) VALUES
(1, 'DDR', 2, b'1'),
(2, 'DDR', 4, b'1'),
(3, 'DDR', 6, b'1'),
(4, 'DDR', 8, b'1'),
(5, 'DDR', 16, b'1'),
(6, 'DDR', 32, b'1'),
(7, 'DDR2', 2, b'1'),
(8, 'DDR2', 4, b'1'),
(9, 'DDR2', 6, b'1'),
(10, 'DDR2', 8, b'1'),
(11, 'DDR2', 16, b'1'),
(12, 'DDR2', 32, b'1'),
(13, 'DDR3', 2, b'1'),
(14, 'DDR3', 4, b'1'),
(15, 'DDR3', 6, b'1'),
(16, 'DDR3', 8, b'1'),
(17, 'DDR3', 16, b'1'),
(18, 'DDR3', 32, b'1'),
(19, 'DDR4', 2, b'1'),
(20, 'DDR4', 4, b'1'),
(21, 'DDR4', 6, b'1'),
(22, 'DDR4', 8, b'1'),
(23, 'DDR4', 16, b'1'),
(24, 'DDR4', 32, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

DROP TABLE IF EXISTS `san_pham`;
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

DROP TABLE IF EXISTS `so_tin_ton`;
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

DROP TABLE IF EXISTS `thong_so_ki_thuat`;
CREATE TABLE IF NOT EXISTS `thong_so_ki_thuat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_san_pham` int(11) NOT NULL,
  `id_kich_thuoc_man_hinh` int(11) NOT NULL,
  `id_loai_man_hinh` int(11) NOT NULL,
  `id_do_phan_giai` int(11) NOT NULL,
  `id_cpu` int(11) NOT NULL,
  `id_ram` int(11) NOT NULL,
  `id_card_man_hinh` int(11) NOT NULL,
  `card_tich_hop` bit(1) NOT NULL,
  `id_o_cung` int(11) NOT NULL,
  `ket_noi_wifi` bit(1) NOT NULL,
  `thoi_luong_pin` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vga_thongso` (`id_card_man_hinh`),
  KEY `fk_cpu_thongso` (`id_cpu`),
  KEY `fk_manhinh_thongso` (`id_loai_man_hinh`),
  KEY `fk_ocung_thongso` (`id_o_cung`),
  KEY `fk_ram_thongso` (`id_ram`),
  KEY `fk_sanpham_thongso` (`id_san_pham`),
  KEY `fk_dophangiai_thongso` (`id_do_phan_giai`),
  KEY `fk_kichthuocmanhinh_thongso` (`id_kich_thuoc_man_hinh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tinh_trang`
--

DROP TABLE IF EXISTS `tinh_trang`;
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
-- Constraints for table `quan_huyen`
--
ALTER TABLE `quan_huyen`
  ADD CONSTRAINT `fk_quanhuyen_khuvuc` FOREIGN KEY (`id_khu_vuc`) REFERENCES `khu_vuc` (`id`);

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
  ADD CONSTRAINT `fk_dophangiai_thongso` FOREIGN KEY (`id_do_phan_giai`) REFERENCES `do_phan_giai` (`id`),
  ADD CONSTRAINT `fk_kichthuocmanhinh_thongso` FOREIGN KEY (`id_kich_thuoc_man_hinh`) REFERENCES `kich_thuoc_man_hinh` (`id`),
  ADD CONSTRAINT `fk_loaimanhinh_thongso` FOREIGN KEY (`id_loai_man_hinh`) REFERENCES `loai_man_hinh` (`id`),
  ADD CONSTRAINT `fk_ocung_thongso` FOREIGN KEY (`id_o_cung`) REFERENCES `o_cung` (`id`),
  ADD CONSTRAINT `fk_ram_thongso` FOREIGN KEY (`id_ram`) REFERENCES `ram` (`id`),
  ADD CONSTRAINT `fk_sanpham_thongso` FOREIGN KEY (`id_san_pham`) REFERENCES `san_pham` (`id`),
  ADD CONSTRAINT `fk_vga_thongso` FOREIGN KEY (`id_card_man_hinh`) REFERENCES `card_man_hinh` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
