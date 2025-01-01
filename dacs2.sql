-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2024 at 04:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dacs2`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `noidung` varchar(1000) NOT NULL,
  `username` varchar(100) NOT NULL,
  `idsp` int(100) NOT NULL,
  `time` datetime(5) NOT NULL DEFAULT current_timestamp(5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `username`, `idsp`, `time`) VALUES
(8, 'tốt', 'admin', 3, '2021-11-10 22:54:28.00000'),
(16, 'Sản phẩm tốt', 'admin', 16, '2021-11-24 21:47:07.24643'),
(17, 'vip pro', 'admin', 3, '2021-11-30 16:32:52.14125'),
(26, 'đá', 'admin', 4, '2021-12-01 22:54:48.08996'),
(28, 'đẹp rẻ', 'nqh204', 27, '2024-12-24 22:45:21.57874');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `iddonhang` int(100) NOT NULL,
  `idsp` int(100) NOT NULL,
  `soluong` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `iddonhang`, `idsp`, `soluong`) VALUES
(4, 8, 4, 1),
(5, 9, 4, 1),
(6, 10, 4, 1),
(7, 11, 4, 1),
(8, 12, 4, 1),
(21, 22, 4, 1),
(22, 22, 3, 1),
(23, 23, 2, 1),
(24, 24, 16, 5),
(25, 25, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`) VALUES
(1, 'Sneaker Vans'),
(2, 'Sneaker Converse'),
(3, 'Sneaker Nike'),
(4, 'Giày Jordan'),
(5, 'Giày Balenciaga');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `iduser` int(100) NOT NULL,
  `tongtien` int(100) NOT NULL,
  `trangthai` varchar(100) NOT NULL,
  `ngaymua` date NOT NULL,
  `diachi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `iduser`, `tongtien`, `trangthai`, `ngaymua`, `diachi`) VALUES
(5, 1, 580, 'Đã thanh toán', '2021-10-28', 'Quảng Trị'),
(6, 1, 580, 'Đã thanh toán', '2021-10-28', 'Quảng Trị'),
(7, 1, 2040, 'Đã thanh toán', '2021-10-28', 'Quảng Trị'),
(8, 1, 680, 'Đã thanh toán', '2021-11-01', 'Quảng Trị'),
(9, 1, 680, 'Đã thanh toán', '2021-11-01', 'Quảng Trị'),
(10, 1, 680, 'Đã thanh toán', '2021-11-01', 'Quảng Trị'),
(11, 1, 680, 'Đã thanh toán', '2021-11-01', 'Quảng Trị'),
(19, 2, 580, 'Đã thanh toán', '2021-11-02', 'Quảng Trị'),
(20, 1, 1020, 'Chưa thanh toán', '2021-12-02', ''),
(21, 1, 680, 'Đã thanh toán', '2021-12-02', 'Việt Nam'),
(22, 1, 1260, 'Đã thanh toán', '2021-12-02', 'Việt Nam'),
(23, 1, 600, 'Đã thanh toán', '2021-12-02', 'Việt Nam'),
(24, 1, 5750, 'Đã thanh toán', '2021-12-02', 'Việt Nam'),
(25, 1, 2040, 'Đã thanh toán', '2021-12-02', 'Việt Nam');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `giasp` int(100) NOT NULL,
  `mota` varchar(1000) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `soluong` int(100) NOT NULL,
  `size` int(100) NOT NULL,
  `mau` varchar(100) NOT NULL,
  `iddanhmuc` int(100) NOT NULL,
  `giamgia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensp`, `giasp`, `mota`, `hinhanh`, `soluong`, `size`, `mau`, `iddanhmuc`, `giamgia`) VALUES
(1, 'Giày Nike Air Force 1 Low 07 Black Multi-Color', 1020, '', 'img/4.jpg', 13, 38, 'Đen', 3, 0),
(2, 'Giày Nike Jordan Dior Low trắng xanh Replica', 600, '', 'img/3.jpg', 7, 40, 'Trắng xanh dương', 3, 0),
(3, 'Giày Nike Jordan Xanh Đen Rep', 580, '', 'img/1.jpg', 4, 42, 'Đen', 3, 0),
(4, 'Giày Vans Old Skool Sneakers', 680, '', 'img/5.jpg', 10, 40, 'Đen', 1, 0),
(5, 'Giày Chuck Taylor All Star Crater Knit High Top', 1100, '', 'img/6.jpg', 7, 40, 'Xám', 2, 0),
(6, 'Giày Chuck 70 Pride High Top', 800, '', 'img/7.jpg', 11, 40, 'Trắng', 2, 0),
(7, 'Giày Chuck Taylor All Star Pride Low Top', 900, '', 'img/8.jpg', 9, 40, 'Trắng', 2, 0),
(8, 'Giày VANS SK8-HI CLASSIC NAVY/WHITE', 1000, '', 'img/9.jpg', 12, 40, 'Đen xanh dương', 1, 0),
(16, 'Giày Air Jordan 1 Retro High OG University Blue', 1150, '', 'img/11.jpg', 5, 40, 'Xanh dương', 4, 0),
(17, 'Air Jordan 4 Retro x Off-White Sail', 1000, '', 'img/12.jpg', 11, 40, 'Trắng vàng nhạt', 4, 0),
(18, 'Giày Converse Chuck 70 High Top White (1970s)', 750, '', 'img/13.jpg', 10, 40, 'Trắng', 2, 0),
(19, 'Giày Vans Style 36 \"Marshmallow\" Racing Red', 700, '', 'img/14.jpg', 11, 40, 'Trắng sọc đỏ', 1, 0),
(20, 'Giày Balenciaga Triple S Clear Sole Orange Grey Black', 1130, '', 'img/15.jpg', 12, 40, 'Cam xám đen', 5, 0),
(21, 'Giày Balenciaga Triple S Clear Sole White', 1000, '', 'img/16.jpg', 11, 40, 'Trắng', 5, 0),
(22, 'Giày Balenciaga Triple S Clear Sole Pink', 980, '', 'img/17.jpg', 13, 40, 'Hồng', 5, 0),
(24, 'Giày sneakers Vans Era Gum Block Emboss VN0A4BV4VXN', 800, '', 'img/18.jpg', 20, 40, 'Đen trắng', 1, 0),
(25, 'Giày Vans UA Era Color Theory Shale Green - VN0A54F14G6', 1000, '', 'img/19.jpg', 20, 40, 'Xanh', 1, 0),
(26, 'Giày Vans UA Authentic Pig Suede - VN0A2Z5I18P\r\n', 900, '', 'img/20.jpg', 20, 40, 'Xám', 1, 0),
(27, 'Giày Vans UA Era Packing Tape - VN0A4U39WZ4', 1000, '', 'img/21.jpg', 20, 40, 'Đen ', 1, 0),
(28, 'Giày Nike SB Dunk High X Gundam ‘Unicorn-RX-0’ DH7717-100', 1100, '', 'img/22.png', 20, 40, 'Bạc', 3, 0),
(29, 'Giày Air Jordan 14 Retro Low ‘Red Lipstick’ DH4121-006', 900, '', 'img/23.png', 20, 40, 'Đen', 4, 0),
(30, 'Giày nữ Nike Air Force 1 LV8 3 GS ‘Removable Swoosh – Black’ AR7446-001', 1000, '', 'img/24.jpg', 20, 40, 'Đen', 3, 0),
(31, 'Giày Air Jordan 1 Mid Wheat DB5453-700', 900, '', 'img/25.png', 20, 40, 'Cam', 4, 0),
(32, 'Giày nam Air Jordan 1 Retro High OG ‘Black Gym Red’ 555088-060', 1200, '', 'img/26.png', 20, 40, 'Đen', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `sdt` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `hoten`, `username`, `password`, `diachi`, `sdt`) VALUES
(1, 'Admin', 'admin', 'admin', 'Việt Nam', 123),
(4, 'Nguyễn hoa', 'hoa', '123', 'Hà Nội', 123),
(5, 'Nguyễn han', 'han', '123', 'Đà Nẵng', 133),
(11, 'Nguyễn Đức Chuẩn', 'ndc2034', 'chuan020320045', '19 Đ. Hồ Bá Phấn, Phước Long A, Quận 9, Hồ Chí Minh, Việt Nam', 375911174),
(12, 'Nguyễn  Quốc Huy', 'nqh204', '123456', '19 Đ. Hồ Bá Phấn, Phước Long A, Quận 9, Hồ Chí Minh, Việt Nam', 375911174),
(13, 'Nguyễn Quang Huy', 'nqh205', '123456', '19 Đ. Hồ Bá Phấn, Phước Long A, Quận 9, Hồ Chí Minh, Việt Nam', 375911174);

-- --------------------------------------------------------

--
-- Table structure for table `thongke`
--

CREATE TABLE `thongke` (
  `id` int(11) NOT NULL,
  `tongtien` varchar(1000) NOT NULL,
  `thang` int(100) NOT NULL,
  `soluongsp` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thongke`
--

INSERT INTO `thongke` (`id`, `tongtien`, `thang`, `soluongsp`) VALUES
(1, '2640', 12, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thongke`
--
ALTER TABLE `thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `thongke`
--
ALTER TABLE `thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
