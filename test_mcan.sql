-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 11, 2020 lúc 12:25 PM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `test_mcan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `customerId` int(10) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` date NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `customerId`, `comment`, `created`, `deleted`) VALUES
(6, 1, 'anh yeu em', '2020-08-01', 0),
(7, 1, 'bai viet rat hay', '2020-08-01', 1),
(8, 1, 'test 12', '2020-08-01', 1),
(10, 1, 'dfvbcxbc', '2020-08-05', 1),
(11, 1, '05/08/2020', '2020-08-05', 1),
(12, 1, 'rtfdxsxcvfgs', '2020-08-05', 1),
(13, 1, 'wfasdcxzcdsf', '2020-08-05', 1),
(14, 1, 'asdasxdzC', '2020-08-05', 1),
(15, 1, 'sdgfdgtjh', '2020-08-05', 1),
(16, 1, 'asfddsfdsv', '2020-08-05', 1),
(17, 1, 'etyruidjhcxv', '2020-08-05', 1),
(18, 1, 'test 123', '2020-08-05', 0),
(42, 4, 'test 234', '2020-08-05', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `created`) VALUES
(3, 'loi', 332155830, '2020-08-01'),
(4, 'Nguyễn Đức Thuận', 868289958, '2020-08-01'),
(5, 'Trịnh Gia Linh', 386081995, '2020-08-01'),
(6, 'Do thanh binh', 1212121212, '2020-08-02'),
(7, 'Do thanh binh', 332155830, '2020-08-02'),
(8, 'Do thanh binh', 332155830, '2020-08-02'),
(9, 'Do thanh binh', 332155830, '2020-08-02'),
(10, 'Do thanh binh', 332155830, '2020-08-02'),
(11, 'Do thanh binh', 332155830, '2020-08-02'),
(12, 'Do thanh binh', 332155830, '2020-08-02'),
(13, 'Do thanh binh', 332155830, '2020-08-02'),
(14, 'Do thanh binh', 332155830, '2020-08-02'),
(15, 'Do thanh binh', 1212121212, '2020-08-05'),
(16, 'Nguyen Tien Loi', 868289958, '2020-08-05'),
(17, 'cuong', 301000349, '2020-08-05'),
(18, 'cuong cuong', 868876546, '2020-08-05'),
(19, 'admin@vuihoc.vn', 332155830, '2020-08-05'),
(20, 'Do thanh binh', 789456431, '2020-08-05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `role` int(11) NOT NULL DEFAULT 0,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `status`, `role`, `created`) VALUES
(1, 'Nguyen', 'Admin', 'test@gmail.com', '$2b$10$bE1/8b2qSFDq27qzmz8sFOzrLY2sZAqIp5UEI7.KZQ8pUz.u10Sly', 1, 1, '2020-08-01'),
(2, 'Nguyen', 'Loi', 'loi@gmail.com', '$2b$10$PsiuClCLQZEnlCsqRFTAWuRY9IswSmuzUtjlebaTqY8Gfs/uAyFAq', 1, 0, '2020-08-01'),
(3, 'tu', 'thanh', 'tuthanh@gmail.com', '$2b$10$nO8Aa/2VgVFVO/pz858Fj.Hs/9wCvnKEAlLw7ydQGv9fbwIM3bekK', 0, 0, '2020-08-02'),
(4, 'Ẩn danh', '', 'andanh@gmail.com', '$2b$10$nO8Aa/2VgVFVO/pz858Fj.Hs/9wCvnKEAlLw7ydQGv9fbwIM3bekK', 1, 0, '0000-00-00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
