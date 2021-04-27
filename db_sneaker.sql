-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th4 15, 2021 lúc 02:24 AM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_sneaker`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

DROP TABLE IF EXISTS `chitiethoadon`;
CREATE TABLE IF NOT EXISTS `chitiethoadon` (
  `ma_chitiethd` int(10) NOT NULL AUTO_INCREMENT,
  `soluong` int(5) NOT NULL,
  `dongia` bigint(20) NOT NULL,
  `HOADONma_hd` int(10) NOT NULL,
  `SANPHAMma_sp` int(10) NOT NULL,
  PRIMARY KEY (`ma_chitiethd`),
  KEY `FKCHITIETHOA356838` (`HOADONma_hd`),
  KEY `FKCHITIETHOA558660` (`SANPHAMma_sp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

DROP TABLE IF EXISTS `danhmuc`;
CREATE TABLE IF NOT EXISTS `danhmuc` (
  `ma_danhmuc` int(10) NOT NULL AUTO_INCREMENT,
  `tendanhmuc` varchar(20) DEFAULT NULL,
  `url` char(20) DEFAULT NULL,
  `hinh` varchar(20) NOT NULL,
  PRIMARY KEY (`ma_danhmuc`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`ma_danhmuc`, `tendanhmuc`, `url`, `hinh`) VALUES
(3, 'Giày bóng rổ', NULL, ''),
(4, 'Giày chạy bộ', NULL, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc_sanpham`
--

DROP TABLE IF EXISTS `danhmuc_sanpham`;
CREATE TABLE IF NOT EXISTS `danhmuc_sanpham` (
  `DANHMUCma_danhmuc` int(10) NOT NULL,
  `SANPHAMma_sp` int(10) NOT NULL,
  PRIMARY KEY (`DANHMUCma_danhmuc`,`SANPHAMma_sp`),
  KEY `FK_SP` (`SANPHAMma_sp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hangsx`
--

DROP TABLE IF EXISTS `hangsx`;
CREATE TABLE IF NOT EXISTS `hangsx` (
  `ma_nhasanxuat` int(10) NOT NULL AUTO_INCREMENT,
  `ten_nhasanxuat` char(10) NOT NULL,
  `mota_nhasanxuat` varchar(255) DEFAULT NULL,
  `hinh_nhasanxuat` char(20) DEFAULT NULL,
  PRIMARY KEY (`ma_nhasanxuat`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hangsx`
--

INSERT INTO `hangsx` (`ma_nhasanxuat`, `ten_nhasanxuat`, `mota_nhasanxuat`, `hinh_nhasanxuat`) VALUES
(8, 'ADIDAS', 'ADIDAS la cong ty ban giay so 1 the gioi', NULL),
(9, 'NIKE', 'NIKE là 1 thương hiệu nổi tiếng toàn cầu', NULL),
(11, 'PUMA', 'PUMA là 1 thương hiệu nổi tiếng toàn cầu\r\n', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh`
--

DROP TABLE IF EXISTS `hinh`;
CREATE TABLE IF NOT EXISTS `hinh` (
  `ma_hinh` int(10) NOT NULL AUTO_INCREMENT,
  `tenhinh` varchar(50) NOT NULL,
  `url` char(50) NOT NULL,
  `SANPHAMma_sp` int(10) DEFAULT NULL,
  `status` char(20) DEFAULT NULL,
  PRIMARY KEY (`ma_hinh`),
  KEY `SANPHAMma_sp` (`SANPHAMma_sp`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hinh`
--

INSERT INTO `hinh` (`ma_hinh`, `tenhinh`, `url`, `SANPHAMma_sp`, `status`) VALUES
(7, 'sanpham', 'lQqNdlKjrjrxdex.jpg', 7, NULL),
(8, 'sanpham', 'fKMZfSPU5Ow9LMk.jpg', 8, NULL),
(9, 'sanpham', '01Vrdx19Hu9TCp4.jpg', 9, NULL),
(10, 'sanpham', 'ry1Tavpw6CG0qAk.jpg', 10, NULL),
(11, 'sanpham', '8WXMCalcta5q3vo.jpg', 11, NULL),
(12, 'banner', 'banner/1.jpg', NULL, NULL),
(13, 'banner', 'banner/2.jpg', NULL, NULL),
(14, 'banner', 'banner/1.jpg', NULL, NULL),
(15, 'banner', 'banner/2.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
CREATE TABLE IF NOT EXISTS `hoadon` (
  `ma_hd` int(10) NOT NULL AUTO_INCREMENT,
  `tongtien` bigint(20) DEFAULT '0',
  `tongsl` int(5) NOT NULL DEFAULT '1',
  `diachi` varchar(100) NOT NULL,
  `sdt` char(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `ngaytao` datetime DEFAULT CURRENT_TIMESTAMP,
  `ngaycapnhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `USERma_user` int(10) NOT NULL,
  PRIMARY KEY (`ma_hd`),
  KEY `FKHOADON604606` (`USERma_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `ma_sp` int(10) NOT NULL AUTO_INCREMENT,
  `tensp` varchar(50) NOT NULL,
  `soluong` int(5) NOT NULL,
  `dongia` bigint(20) NOT NULL,
  `thoigianbaohanh` datetime DEFAULT NULL,
  `giakhuyenmai` bigint(20) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '1',
  `mota` text,
  `url` varchar(50) DEFAULT NULL,
  `ngaytao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngaycapnhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `DANHMUCma_danhmuc` int(10) DEFAULT NULL,
  `HANGSXma_nhasanxuat` int(10) DEFAULT NULL,
  `hinhanh` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ma_sp`),
  KEY `FKSANPHAM558209` (`HANGSXma_nhasanxuat`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ma_sp`, `tensp`, `soluong`, `dongia`, `thoigianbaohanh`, `giakhuyenmai`, `status`, `mota`, `url`, `ngaytao`, `ngaycapnhat`, `DANHMUCma_danhmuc`, `HANGSXma_nhasanxuat`, `hinhanh`) VALUES
(7, 'ADIDAS Superstar', 1, 2500000, NULL, NULL, 1, NULL, NULL, '2021-04-14 05:54:24', '2021-04-14 05:54:24', NULL, 8, NULL),
(8, 'ADIDAS Ultra boots', 1, 2400000, NULL, NULL, 1, NULL, NULL, '2021-04-14 05:54:47', '2021-04-14 05:54:47', NULL, 8, NULL),
(9, 'ADIDAS Superstar Black', 1, 2500000, NULL, NULL, 1, NULL, NULL, '2021-04-14 05:55:06', '2021-04-14 05:55:06', NULL, 8, NULL),
(10, 'ADIDAS Superstar', 1, 3500000, NULL, NULL, 1, NULL, NULL, '2021-04-14 05:57:20', '2021-04-14 05:57:20', NULL, 8, NULL),
(11, 'ADIDAS Stan Smith', 1, 2500000, NULL, NULL, 1, NULL, NULL, '2021-04-14 05:58:20', '2021-04-14 05:58:20', NULL, 8, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sdt` char(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `diachi` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `ngaytao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngaycapnhat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `role` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `sdt`, `email`, `diachi`, `password`, `ngaytao`, `ngaycapnhat`, `role`) VALUES
(8, 'loc', '0123456', 'loc@gmail.com', '18 đường Phạm Thị Tánh phường 4 quận 8 TP Hồ Chi Minh', '$2y$10$G7mYd3iBUVsc5hNiWdFxGenzbh4n04DD72yKmdd1BgiFTw9.ngl8O', NULL, NULL, 1);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `FKCHITIETHOA356838` FOREIGN KEY (`HOADONma_hd`) REFERENCES `hoadon` (`ma_hd`),
  ADD CONSTRAINT `FKCHITIETHOA558660` FOREIGN KEY (`SANPHAMma_sp`) REFERENCES `sanpham` (`ma_sp`);

--
-- Các ràng buộc cho bảng `danhmuc_sanpham`
--
ALTER TABLE `danhmuc_sanpham`
  ADD CONSTRAINT `FK_DM` FOREIGN KEY (`DANHMUCma_danhmuc`) REFERENCES `danhmuc` (`ma_danhmuc`),
  ADD CONSTRAINT `FK_SP` FOREIGN KEY (`SANPHAMma_sp`) REFERENCES `sanpham` (`ma_sp`);

--
-- Các ràng buộc cho bảng `hinh`
--
ALTER TABLE `hinh`
  ADD CONSTRAINT `hinh_ibfk_1` FOREIGN KEY (`SANPHAMma_sp`) REFERENCES `sanpham` (`ma_sp`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `FKHOADON604606` FOREIGN KEY (`USERma_user`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FKSANPHAM558209` FOREIGN KEY (`HANGSXma_nhasanxuat`) REFERENCES `hangsx` (`ma_nhasanxuat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
