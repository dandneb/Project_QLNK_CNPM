-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 21, 2022 lúc 05:53 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_qlnk`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhoi`
--

CREATE TABLE `cauhoi` (
  `ma_cauhoi` varchar(9) NOT NULL,
  `hoten` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `lydo` varchar(1000) NOT NULL,
  `ngayhoi` date NOT NULL,
  `trangthai` int(1) NOT NULL,
  `loaicauhoi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cauhoi`
--

INSERT INTO `cauhoi` (`ma_cauhoi`, `hoten`, `email`, `sdt`, `lydo`, `ngayhoi`, `trangthai`, `loaicauhoi`) VALUES
('0FEE2E1A8', 'Đào Duy Đán', 'daodan2001@gmail.com', '0366887398', 'GiayChuyenHoKhau036688739818032022.docx', '2022-03-18', 2, 2),
('193994225', 'Đào Duy Đán', 'daodan2612@gmail.com', '0366887398', 'Non', '2022-03-18', 2, 1),
('7CA783E6F', 'Đào Duy Đán', 'daodan2612@gmail.com', '0366887398', 'Cho tôi hỏi rằng', '2022-03-18', 1, 1),
('DE9E187F7', 'Đào Duy Đán', 'daodan2001@gmail.com', '0366887398', 'Thông tin của tôi trong sổ hộ khẩu bị sai lệnh mong cán bộ xem lại và chỉnh sửa giúp tôi!', '2022-03-18', 1, 1),
('ED43D1AE2', 'Văn A', 'daokhaipx@gmail.com', '0366887390', 'GiayChuyenHoKhau036688739019032022.docx', '2022-03-19', 0, 2),
('F8FF4D652', 'Đào Duy Đán', 'daodan2612@gmail.com', '0366887393', 'GiayChuyenHoKhau036688739319032022.docx', '2022-03-19', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanhoi`
--

CREATE TABLE `phanhoi` (
  `ma_phanhoi` varchar(9) NOT NULL,
  `phanhoi` varchar(1000) NOT NULL,
  `ngayphanhoi` date NOT NULL,
  `ma_taikhoan` int(10) UNSIGNED NOT NULL,
  `ma_cauhoi` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phanhoi`
--

INSERT INTO `phanhoi` (`ma_phanhoi`, `phanhoi`, `ngayphanhoi`, `ma_taikhoan`, `ma_cauhoi`) VALUES
('95D8E7723', '', '2022-03-20', 1, '7CA783E6F'),
('9D1AACE09', 'OK OK', '2022-03-20', 1, 'F8FF4D652'),
('DE9E18GH4', 'Ngon', '2022-03-17', 1, 'DE9E187F7');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sohokhau`
--

CREATE TABLE `sohokhau` (
  `ma_shk` varchar(9) NOT NULL,
  `hotenchuho` varchar(40) NOT NULL,
  `noithuongtru` varchar(200) NOT NULL,
  `ngaycap` date NOT NULL,
  `ma_taikhoan` int(10) UNSIGNED NOT NULL,
  `thanhpho` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sohokhau`
--

INSERT INTO `sohokhau` (`ma_shk`, `hotenchuho`, `noithuongtru`, `ngaycap`, `ma_taikhoan`, `thanhpho`) VALUES
('0000001', 'Đào Duy Đán', 'Vân Từ - Phú Xuyên - Hà Nội', '2022-03-18', 1, 'Hà Nội'),
('001201031', 'Nguyễn Văn Đ', 'Giẽ Hạ - Phú Xuyên - Hà Nội', '2022-03-01', 1, 'Hà Nội'),
('010827753', 'Nguyễn Minh Triều', 'Vân Từ - Phú Xuyên - Hà Nội', '2022-03-01', 1, 'Hà Nội'),
('010835021', 'Nguyễn Thị H', 'Thủy Phú - Phú Xuyên - Hà Nội', '2022-03-01', 1, ''),
('018376803', 'Nguyễn Thu M', 'Vân Từ - Phú Xuyên - Hà Nội', '2022-03-01', 1, 'Hà Nội'),
('019284521', 'Nguyễn Văn C', 'Vân Từ - Phú Xuyên - Hà Nội', '2022-03-01', 1, 'Hà Nội'),
('019826761', 'Nguyễn Văn A', 'Phú Yên - Phú Xuyên - Hà Nội', '2022-03-01', 1, 'Hà Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `ma_taikhoan` int(10) UNSIGNED NOT NULL,
  `taikhoan` varchar(20) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `hoten` varchar(30) NOT NULL,
  `chucvu` varchar(100) NOT NULL,
  `conlamviec` tinyint(1) NOT NULL,
  `ngaykhoitao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `capbac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`ma_taikhoan`, `taikhoan`, `matkhau`, `hoten`, `chucvu`, `conlamviec`, `ngaykhoitao`, `capbac`) VALUES
(1, 'nguyenvanbanh', '$2y$10$ZP0chrIq7NXcKcZ0RQwPC.vluWINiuR24YDiPswsNFPVMrxZ5HNHa', 'Nguyễn Văn Bảnh', 'Công an xã', 1, '2022-03-16 17:46:57', 2),
(2, 'admin', '$2y$10$.VmlFr7TY7nXXvGBfhdbg.oQec18uhUxfq1wwjNYaVKsHBMQ0hF0.', 'admin', 'admin', 1, '2022-03-20 15:23:40', 1),
(4, 'daoduydan', '$2y$10$XJcTVKfljMVRNc0FN5JSY.QwpejoN0Wm.ZgOTWST0qNwVeUBL.qGW', 'Đào Duy Đán', 'Giám đốc', 1, '2022-03-20 15:59:16', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tamtru`
--

CREATE TABLE `tamtru` (
  `ma_dontt` varchar(9) NOT NULL,
  `conganxa` varchar(30) NOT NULL,
  `hoten` varchar(40) NOT NULL,
  `ngaysinh` date NOT NULL,
  `cccd` varchar(12) NOT NULL,
  `cccd_noicap` varchar(100) NOT NULL,
  `cccd_capngay` date NOT NULL,
  `diachithuongtru` varchar(200) NOT NULL,
  `choohiennay` varchar(200) NOT NULL,
  `ngaybatdau` date NOT NULL,
  `lydo` varchar(300) NOT NULL,
  `email` varchar(30) NOT NULL,
  `xacnhan` int(11) NOT NULL,
  `phanhoi` varchar(100) NOT NULL,
  `ma_taikhoan` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tamtru`
--

INSERT INTO `tamtru` (`ma_dontt`, `conganxa`, `hoten`, `ngaysinh`, `cccd`, `cccd_noicap`, `cccd_capngay`, `diachithuongtru`, `choohiennay`, `ngaybatdau`, `lydo`, `email`, `xacnhan`, `phanhoi`, `ma_taikhoan`) VALUES
('25F37673E', 'Phú Yên', 'Đào Duy Đán', '2022-03-21', '001201023000', 'Công an huyện Phú Xuyên', '2022-03-22', 'HN', '20 Khương Thượng - Đống Đa - TP Hà Nội', '0000-00-00', 'Thích', 'daodan2612@gmail.com', 0, 'Nhận qua cổng thông tin', 1),
('796A3E8A9', 'Phú Yên', 'Đào Duy Đán', '2022-03-17', '001201023000', 'Công an huyện Phú Xuyên', '2022-03-17', 'HN', '20 Khương Thượng - Đống Đa - TP Hà Nội', '0000-00-00', 'Tôi muốn đi xa', 'daodan2001@gmail.com', 0, 'Nhận trực tiếp tại trụ sở cơ quan chức năng', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tamvang`
--

CREATE TABLE `tamvang` (
  `ma_dontv` varchar(9) NOT NULL,
  `conganxa` varchar(30) NOT NULL,
  `hoten` varchar(40) NOT NULL,
  `ngaysinh` date NOT NULL,
  `cccd` varchar(12) NOT NULL,
  `cccd_noicap` varchar(100) NOT NULL,
  `cccd_capngay` date NOT NULL,
  `diachithuongtru` varchar(200) NOT NULL,
  `choohiennay` varchar(200) NOT NULL,
  `ngaybatdau` date NOT NULL,
  `lydo` varchar(300) NOT NULL,
  `email` varchar(30) NOT NULL,
  `xacnhan` tinyint(4) NOT NULL,
  `phanhoi` varchar(100) NOT NULL,
  `ma_taikhoan` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tamvang`
--

INSERT INTO `tamvang` (`ma_dontv`, `conganxa`, `hoten`, `ngaysinh`, `cccd`, `cccd_noicap`, `cccd_capngay`, `diachithuongtru`, `choohiennay`, `ngaybatdau`, `lydo`, `email`, `xacnhan`, `phanhoi`, `ma_taikhoan`) VALUES
('0D7DF4993', 'Phú Yên', 'Đào Duy Đán', '2022-03-21', '001201023000', 'Công an huyện Phú Xuyên', '2022-03-22', 'HN', '20 Khương Thượng - Đống Đa - TP Hà Nội', '0000-00-00', 'Thích', 'daodan2612@gmail.com', 0, 'Nhận qua cổng thông tin', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvienshk`
--

CREATE TABLE `thanhvienshk` (
  `ma_shk` varchar(9) NOT NULL,
  `cccd` varchar(12) NOT NULL,
  `chuho` tinyint(1) NOT NULL,
  `quanhech` varchar(20) NOT NULL,
  `hoten` varchar(40) NOT NULL,
  `hotenkhac` varchar(40) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(5) NOT NULL,
  `nguyenquan` varchar(200) NOT NULL,
  `dantoc` varchar(15) NOT NULL,
  `tongiao` varchar(40) NOT NULL,
  `quoctich` varchar(30) NOT NULL,
  `nghenghiepnoilamviec` varchar(200) NOT NULL,
  `noithuongtrutruocday` varchar(200) NOT NULL,
  `ma_taikhoan` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thanhvienshk`
--

INSERT INTO `thanhvienshk` (`ma_shk`, `cccd`, `chuho`, `quanhech`, `hoten`, `hotenkhac`, `ngaysinh`, `gioitinh`, `nguyenquan`, `dantoc`, `tongiao`, `quoctich`, `nghenghiepnoilamviec`, `noithuongtrutruocday`, `ma_taikhoan`) VALUES
('010835021', '001003045982', 1, '', 'Nguyễn Thị H', '', '2001-01-10', 'Nam', 'Thủy Phú - Phú Xuyên - Hà Nội', 'Kinh', 'Không', 'Việt Nam', 'Nông dân', '', 1),
('001201031', '001200012021', 0, 'Vợ', 'Nguyễn Thị Hoa', '', '1974-03-07', 'Nữ', 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', 'Kĩ sư', '', 1),
('010835021', '001200016276', 0, 'Vợ', 'Nguyễn Thị Huyền', '', '2001-03-05', 'Nam', 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', 'Học sinh', '', 1),
('019284521', '001200045621', 1, '', 'Nguyễn Văn C', '', '2000-01-01', 'Nam', 'Phú Yên - Phú Xuyên - Hà Nội', 'Kinh', 'Không', 'Việt Nam', 'Nông dân', '', 1),
('010835021', '001200055210', 0, 'Con', 'Nguyễn Tài Vận', '', '2002-03-10', 'Nam', 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', 'Nông dân', '', 1),
('019826761', '001201000000', 0, 'Con', 'Nguyễn Minh H', '', '2004-01-10', 'Nữ', 'Phú Yên - Phú Xuyên - Hà Nội', 'Kinh', 'Không', 'Việt Nam', 'Học sinh', '', 1),
('018376803', '001201001235', 0, 'Con', 'Nguyễn Đại Ban', '', '2022-03-01', 'Nam', 'Phú Yên - Phú Xuyên - Hà Nội', 'Kinh', 'Không', 'Việt Nam', 'Nông dân', '', 1),
('019284521', '001201014625', 0, 'Vợ', 'Nguyễn Thu Hiền', '', '2012-01-10', 'Nữ', 'Phú Yên - Phú Xuyên - Hà Nội', 'Kinh', 'Không', 'Việt Nam', 'Nông dân', '', 1),
('018376803', '001201054231', 0, 'Con', 'Nguyễn Hoài Châm', '', '2002-01-10', 'Nam', 'Phú Yên - Phú Xuyên - Hà Nội', 'Kinh', 'Không', 'Việt Nam', 'Nông dân', '', 1),
('001201031', '001201098134', 1, '', 'Nguyễn Văn Đ', '', '1966-01-21', 'Nam', 'Giẽ Hạ - Phú Xuyên - Hà Nội', 'Kinh', 'Không', 'Việt Nam', 'Nông dân', '', 1),
('001201031', '001201098139', 0, 'Con', 'Đào Duy Đán', '', '2022-03-17', 'Nam', 'Phú Yên - Phú Xuyên - Hà Nội', 'Kinh', 'Không', 'Việt Nam', 'Học sinh', '', 1),
('019826761', '001201098456', 1, '', 'Đào Duy Đán', '', '2022-03-01', 'Nam', 'Phú Yên - Phú Xuyên - Hà Nội', 'Kinh', 'Không', 'Việt Nam', 'Nông dân', '', 1),
('018376803', '001201098821', 1, '', 'Nguyễn Thu M', '', '2022-03-01', 'Nữ', 'Vân Từ - Phú Xuyên - Hà Nội', 'Kinh', 'Không', 'Việt Nam', 'Nông dân', '', 1),
('0000001', '1111113', 1, '', 'Đào Duy Đán', '', '2022-03-18', 'Nam', 'Phú Yên - Phú Xuyên - Hà Nội', 'Kinh', 'Không', 'Việt Nam', 'Học sinh', '', 1),
('010827753', '11111132', 1, '', 'Nguyễn Minh Triều', '', '2022-03-01', 'Nam', 'Phú Yên - Phú Xuyên - Hà Nội', 'Kinh', 'Không', 'Việt Nam', 'Nông dân', '', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD PRIMARY KEY (`ma_cauhoi`);

--
-- Chỉ mục cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`ma_phanhoi`),
  ADD KEY `fk_tbphanhoi1` (`ma_taikhoan`),
  ADD KEY `fk_tbphanhoi2` (`ma_cauhoi`);

--
-- Chỉ mục cho bảng `sohokhau`
--
ALTER TABLE `sohokhau`
  ADD PRIMARY KEY (`ma_shk`),
  ADD KEY `tb_sohokhau_ibfk_1` (`ma_taikhoan`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`ma_taikhoan`);

--
-- Chỉ mục cho bảng `tamtru`
--
ALTER TABLE `tamtru`
  ADD PRIMARY KEY (`ma_dontt`),
  ADD KEY `fk_tbtamtru1` (`ma_taikhoan`);

--
-- Chỉ mục cho bảng `tamvang`
--
ALTER TABLE `tamvang`
  ADD PRIMARY KEY (`ma_dontv`),
  ADD KEY `fk_tbtamvang1` (`ma_taikhoan`);

--
-- Chỉ mục cho bảng `thanhvienshk`
--
ALTER TABLE `thanhvienshk`
  ADD PRIMARY KEY (`cccd`) USING BTREE,
  ADD KEY `tb_chitietshk_ibfk_1` (`ma_shk`),
  ADD KEY `tb_chitietshk_ibfk_3` (`ma_taikhoan`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `ma_taikhoan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD CONSTRAINT `fk_tbphanhoi1` FOREIGN KEY (`ma_taikhoan`) REFERENCES `taikhoan` (`ma_taikhoan`),
  ADD CONSTRAINT `fk_tbphanhoi2` FOREIGN KEY (`ma_cauhoi`) REFERENCES `cauhoi` (`ma_cauhoi`);

--
-- Các ràng buộc cho bảng `sohokhau`
--
ALTER TABLE `sohokhau`
  ADD CONSTRAINT `sohokhau_ibfk_1` FOREIGN KEY (`ma_taikhoan`) REFERENCES `taikhoan` (`ma_taikhoan`);

--
-- Các ràng buộc cho bảng `tamtru`
--
ALTER TABLE `tamtru`
  ADD CONSTRAINT `fk_tbtamtru1` FOREIGN KEY (`ma_taikhoan`) REFERENCES `taikhoan` (`ma_taikhoan`);

--
-- Các ràng buộc cho bảng `tamvang`
--
ALTER TABLE `tamvang`
  ADD CONSTRAINT `fk_tbtamvang1` FOREIGN KEY (`ma_taikhoan`) REFERENCES `taikhoan` (`ma_taikhoan`);

--
-- Các ràng buộc cho bảng `thanhvienshk`
--
ALTER TABLE `thanhvienshk`
  ADD CONSTRAINT `thanhvienshk_ibfk_1` FOREIGN KEY (`ma_shk`) REFERENCES `sohokhau` (`ma_shk`),
  ADD CONSTRAINT `thanhvienshk_ibfk_3` FOREIGN KEY (`ma_taikhoan`) REFERENCES `taikhoan` (`ma_taikhoan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
