-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 05, 2022 lúc 11:06 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecommerceweb100`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'Đỏ'),
(2, 'Đen'),
(3, 'Xanh da trời'),
(4, 'Vàng'),
(5, 'Xanh lá'),
(6, 'Trắng'),
(13, 'Tím'),
(20, 'Bạc'),
(22, 'Hồng'),
(25, 'Xanh lục'),
(29, 'Midnight Blue');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'An Giang'),
(2, 'Bà Rịa – Vũng Tàu'),
(3, 'Bắc Giang'),
(4, 'Bắc Kạn'),
(5, 'Bạc Liêu'),
(6, 'Bắc Ninh'),
(7, 'Bến Tre'),
(8, 'Bình Định'),
(9, 'Bình Dương'),
(10, 'Bình Phước'),
(11, 'Bình Thuận'),
(12, 'Cà Mau'),
(13, 'Cần Thơ'),
(14, 'Cao Bằng'),
(15, 'Đà Nẵng'),
(16, 'Đắk Lắk'),
(17, 'Đắk Nông'),
(18, 'Điện Biên'),
(19, 'Đồng Nai'),
(20, 'Đồng Tháp'),
(21, 'Gia Lai'),
(22, 'Hà Giang'),
(23, 'Hà Nam'),
(24, 'Hà Nội'),
(25, 'Hà Tĩnh'),
(26, 'Hải Dương'),
(27, 'Hải Phòng'),
(28, 'Hậu Giang'),
(29, 'Hòa Bình'),
(30, 'Hưng Yên'),
(31, 'Khánh Hòa'),
(32, 'Kiên Giang'),
(33, 'Kon Tum'),
(34, 'Lai Châu'),
(35, 'Lâm Đồng'),
(36, 'Lạng Sơn'),
(37, 'Lào Cai'),
(38, 'Long An'),
(39, 'Nam Định'),
(40, 'Nghệ An'),
(41, 'Ninh Bình'),
(42, 'Ninh Thuận'),
(43, 'Phú Thọ'),
(44, 'Phú Yên'),
(45, 'Quảng Bình'),
(46, 'Quảng Nam'),
(47, 'Quảng Ngãi'),
(48, 'Quảng Ninh'),
(49, 'Quảng Trị'),
(50, 'Sóc Trăng'),
(51, 'Sơn La'),
(52, 'Tây Ninh'),
(53, 'Thái Bình'),
(54, 'Thái Nguyên'),
(55, 'Thanh Hóa'),
(56, 'Thừa Thiên Huế'),
(57, 'Tiền Giang'),
(58, 'TP Hồ Chí Minh'),
(59, 'Trà Vinh'),
(60, 'Tuyên Quang'),
(61, 'Vĩnh Long'),
(62, 'Vĩnh Phúc'),
(63, 'Yên Bái');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_cname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_zip` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_b_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_b_cname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_b_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_b_city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_b_state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_b_zip` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_s_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_s_cname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_s_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_s_city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_s_state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_s_zip` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_datetime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_timestamp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(1, 'Liam Moore', 'WV Company', 'liam@mail.com', '7458965410', 230, '788 Cottonwood Lane', 'Nashville', 'TN', '37072', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', '0081e99a29cacd4b553db15c5c5c047e', '2022-03-17 11:09:34', '1647544174', 1),
(2, 'Chad N. Carney', 'none', 'chad@mail.com', '4785690000', 230, '469 Diamond Street', 'Charlotte', 'NC', '28808', 'Chad N. Carney', 'none', '7477474440', 230, '469 Diamond Street', 'Charlotte', 'NC', '28808', 'Chad N. Carney', 'none', '7477474440', 230, '469 Diamond Street', 'Charlotte', 'NC', '28808', '5f4dcc3b5aa765d61d8327deb882cf99', 'ca87666426f4bc5c5128a96dabfecefb', '2022-03-17 11:15:26', '1647544526', 1),
(3, 'Jean Collins', 'none', 'jean@mail.com', '1478523698', 230, '1508 Crosswind Drive', 'Owensboro', 'KY', '13040', 'Jean Collins', 'none', '1478523698', 230, '1508 Crosswind Drive', 'Owensboro', 'KY', '13040', 'Jean Collins', 'none', '1478523698', 230, '1508 Crosswind Drive', 'Owensboro', 'KY', '13040', '5f4dcc3b5aa765d61d8327deb882cf99', '6b3439bf95644a36a1ed92bef374ebb7', '2022-03-20 10:29:39', '1647797379', 1),
(4, 'Annie Young', 'XYZ Company', 'annie@mail.com', '7770001144', 230, '79 Burwell Heights Road', 'Beaumont', 'TX', '77400', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', 'fc8f07537cdd6b3f89eb94f1cad78060', '2022-03-20 10:31:35', '1647797495', 1),
(5, 'Matthew Morales', 'ABC Company', 'matthew@mail.com', '7896587450', 230, '81 Felosa Drive', 'Mira Loma', 'CA', '91002', 'Matthew Morales', 'ABC Company', '7896587450', 230, '81 Felosa Drive', 'Mira Loma', 'CA', '91002', 'Matthew Morales', 'ABC Company', '7896587450', 230, '81 Felosa Drive', 'Mira Loma', 'CA', '91002', '5f4dcc3b5aa765d61d8327deb882cf99', 'c391105908fe01a636bfa5fc39eed33d', '2022-03-20 10:33:15', '1647797595', 1),
(6, 'August F. Freels', 'none', 'august@mail.com', '1478547850', 230, '96 Johnny Lane', 'Milwaukee', 'WI', '55550', 'August F. Freels', 'none', '1478547850', 230, '96 Johnny Lane', 'Milwaukee', 'WI', '55550', 'August F. Freels', 'none', '1478547850', 230, '96 Johnny Lane', 'Milwaukee', 'WI', '55550', '5f4dcc3b5aa765d61d8327deb882cf99', 'decc1fc2c5dd9935df82c0233002ce66', '2022-03-20 10:34:08', '1647797648', 1),
(7, 'Carl M. Dineen', 'none', 'carl@mail.com', '789878987', 230, '77 Lyndon Street', 'Kutztown', 'PA', '19855', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', 'c79bac688e70cc9665a2164c57ec172c', '2022-03-20 10:35:02', '1647797702', 1),
(8, 'Benjamin B. Louque', 'none', 'benjamin@mail.com', '7777889955', 230, '32 Bridge Street', 'Tulsa', 'OK', '74220', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', '5a0e096368f9669508af7b7203382b07', '2022-03-20 10:36:31', '1647797791', 1),
(9, 'Joe K. Richardson', 'none', 'joe@mail.com', '4444445555', 230, '17 Derek Drive', 'Youngstown', 'OH', '44500', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', 'e74ac0178d7833988d4b1625c42ba26e', '2022-03-20 10:37:18', '1647797838', 1),
(10, 'Will Williams', 'Test Company', 'williams@mail.com', '7410000000', 230, '39 Marcus Street', 'Anniston', 'AL', '37207', 'Will Williams', 'Test Company', '7410000000', 230, '39 Marcus Street', 'Anniston', 'AL', '37207', 'Will Williams', 'Test Company', '7410000000', 230, '39 Marcus Street', 'Anniston', 'AL', '37207', '5f4dcc3b5aa765d61d8327deb882cf99', '941c9265fb920f691cf01b12a15f80f8', '2022-03-20 11:15:59', '1647800159', 1),
(11, 'Võ Duy Kha', '', 'duykha392001@gmail.com', '0333827185', 237, '162\r\nKhông', 'Bến Tre', '13', '123', 'Võ Duy Kha', 'abc', '0333827185', 1, '162\r\nKhông', 'Bến Tre', 'abc', '123', 'Võ Duy Kha', 'abc', '0333827185', 1, '162\r\nKhông', 'Bến Tre', 'abc', '12312', 'e10adc3949ba59abbe56e057f20f883e', 'a1588cdb53be05a73395ba7a363e7a10', '2022-09-26 07:43:26', '1664203406', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(1, 'Iphone 14 / 14 Series', 1),
(2, 'Iphone 13 / 13 Series', 1),
(3, 'Iphone 12 / 12 Series', 1),
(4, 'Iphone 11 / 11 Series', 1),
(5, 'Boots', 2),
(6, 'Tops', 3),
(7, 'T-Shirt', 3),
(8, 'Watches', 4),
(9, 'Sunglasses', 4),
(11, 'Sports Shoes', 2),
(12, 'Sandals', 6),
(13, 'Flat Shoes', 6),
(14, 'Hoodies', 7),
(15, 'Coats & Jackets', 7),
(16, 'Pants', 8),
(17, 'Jeans', 8),
(18, 'Joggers', 8),
(19, 'Shorts', 8),
(20, 'T-shirts', 9),
(21, 'Casual Shirts', 9),
(22, 'Formal Shirts', 9),
(23, 'Polo Shirts', 9),
(24, 'Vests', 9),
(25, 'Casual Shoes', 2),
(26, 'Boys', 10),
(27, 'Girls', 10),
(28, 'Boys', 11),
(29, 'Girls', 11),
(30, 'Boys', 12),
(31, 'Girls', 12),
(32, 'Dresses', 7),
(33, 'Tops', 7),
(34, 'T-Shirts & Vests', 7),
(35, 'Pants & Leggings', 7),
(36, 'Sportswear', 7),
(37, 'Plus Size Clothing', 7),
(38, 'Socks & Hosiery', 7),
(39, 'Fragrance', 3),
(40, 'Skincare', 3),
(41, 'Hair Care', 3),
(42, 'Jewellery', 4),
(43, 'Eyes Care', 3),
(44, 'Lips', 3),
(45, 'Face Care', 3),
(46, 'Gift Sets', 3),
(47, 'Scarves & Headwear', 4),
(48, 'Multipacks', 4),
(49, 'Other Accessories', 4),
(50, 'Pumps', 6),
(51, 'Sneakers', 6),
(52, 'Sports Shoes', 6),
(53, 'Boots', 6),
(54, 'Comfort Shoes', 6),
(55, 'Slippers & Casual Shoes', 6),
(56, 'Formal Shoes', 2),
(57, 'Belts', 1),
(58, 'Multipacks', 1),
(59, 'Other Accessories', 1),
(60, 'Bags', 4),
(61, 'Cell Phone and Accessories', 14),
(62, 'Headphones', 14),
(63, 'Security and Surveillance', 14),
(64, 'Television and Video', 14),
(65, 'GPS and Navigation', 14),
(66, 'Home Audio', 14),
(67, 'Computer Components', 15),
(68, 'Computers and Tablets', 15),
(69, 'Laptop Accessories', 15),
(70, 'Printer and Monitors', 15),
(71, 'External Components', 15),
(72, 'Networking Products', 15),
(73, 'Medical Supplies and Equipment', 16),
(74, 'Oral Care', 16),
(75, 'Vision Care', 16),
(76, 'Vitamins and Dietary Supplements', 16),
(77, 'Baby and Child Care', 17),
(78, 'Household Supplies', 17),
(79, 'Stationery and Gift Wrapping Supplies', 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, 'Làm thế nào để tìm một sản phẩm ?', '<h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><span style=\"font-size: 15.7143px; color: rgb(34, 34, 34); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif;\">Chúng tôi có một loạt các sản phẩm tuyệt vời để lựa chọn.</span><br></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\"><b>Mẹo 1: Nếu bạn đang tìm kiếm một sản phẩm cụ thể, hãy sử dụng ô tìm kiếm từ khóa nằm ở đầu trang web. Chỉ cần nhập những gì bạn đang tìm kiếm và trang web sẽ tìm kiếm nó cho bạn!</b></span></font></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Mẹo 2: Nếu bạn muốn khám phá danh mục sản phẩm, hãy sử dụng Danh mục cửa hàng ở menu phía trên và điều hướng qua các danh mục yêu thích của bạn, nơi chúng tôi sẽ giới thiệu các sản phẩm tốt nhất trong mỗi danh mục.</span></font></h3>\r\n'),
(2, 'Chính sách đổi trả hàng của Thế Kỷ Mobile như thế nào?', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;\"=\"\">Bạn có <b>15 ngày</b> để yêu cầu hoàn lại tiền sau khi đơn hàng của bạn đã được giao&nbsp;</span><span style=\"color: rgb(10, 10, 10);\">nếu sản phẩm bị lỗi</span><br></p>\r\n'),
(3, 'Tôi đã nhận được một mặt hàng bị lỗi / bị hư hỏng, tôi có thể được hoàn lại tiền không ?', '<p>Trong trường hợp mặt hàng bạn nhận được bị hư hỏng hoặc bị lỗi, <b>bạn có thể trả lại một mặt hàng trong tình trạng như bạn đã nhận kèm hộp hoặc bao bì còn nguyên vẹn</b>. Khi chúng tôi nhận được hàng trả lại, chúng tôi sẽ kiểm tra và nếu hàng bị lỗi hoặc hư hỏng, chúng tôi sẽ xử lý hoàn lại tiền cùng với bất kỳ phí vận chuyển nào phát sinh.<br></p>\r\n'),
(4, 'Trường hợp nào không được đổi trả ?', '<p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\"><font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">Có một số trường hợp nhất định mà chúng tôi khó hỗ trợ trả hàng:</span></font></p><ol><li style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;<font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">Yêu cầu trả lại được thực hiện ngoài khung thời gian quy định, trong 15 ngày kể từ ngày giao hàng.</span></font></li><li style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;<font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">Sản phẩm đã qua sử dụng, bị hư hỏng hoặc không ở trong tình trạng như bạn nhận được.</span></font></li><li style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;<font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">Các sản phẩm bị lỗi được bảo hành theo chế độ bảo hành của nhà sản xuất.</span></font></li><li style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;<font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">Bất kỳ vật phẩm tiêu hao nào đã được sử dụng hoặc lắp đặt.</span></font></li><li style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;<font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">Sản phẩm bị giả mạo hoặc thiếu số sê-ri.</span></font></li><li style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;<font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">Bất kỳ thứ gì còn thiếu trong gói hàng bạn đã nhận bao gồm thẻ giá, nhãn, bao bì gốc, quà tặng và phụ kiện.</span></font></li><li style=\"box-sizing: inherit; text-rendering: optimizelegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;<font color=\"#0a0a0a\"><span style=\"font-size: 14px;\">Các vật dụng dễ vỡ, các vật dụng liên quan đến vệ sinh.</span></font></li></ol>\r\n'),
(5, 'Có giao hàng ở tỉnh lẻ không ?', '<p><b><span style=\"color: rgb(255, 0, 0);\">Thế Kỷ</span> Mobile</b> sẽ giao hàng toàn quốc và miễn phí giao hàng</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', '₫'),
(2, 'Search Product', 'Tìm kiếm sản phẩm'),
(3, 'Search', 'Tìm kiếm'),
(4, 'Submit', 'Gửi'),
(5, 'Update', 'Cập nhật'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Ảnh'),
(9, 'Login', 'Đăng nhập'),
(10, 'Customer Login', 'Đăng nhập'),
(11, 'Click here to login', 'Click here'),
(12, 'Back to Login Page', 'Trở về đăng nhập'),
(13, 'Logged in as', 'Tài khoản: '),
(14, 'Logout', 'Đăng xuất'),
(15, 'Register', 'Đăng kí'),
(16, 'Customer Registration', 'Đăng kí tài khoản'),
(17, 'Registration Successful', 'Đăng kí thành công'),
(18, 'Cart', 'Giỏ hàng'),
(19, 'View Cart', 'Xem giỏ hàng'),
(20, 'Update Cart', 'Cập nhật'),
(21, 'Back to Cart', 'Trở về giỏ hàng'),
(22, 'Checkout', 'Thanh toán'),
(23, 'Proceed to Checkout', 'Đặt hàng'),
(24, 'Orders', 'Đơn hàng'),
(25, 'Order History', 'Lịch sử các đơn hàng'),
(26, 'Order Details', 'Chi tiết đơn hàng'),
(27, 'Payment Date and Time', 'Payment Da'),
(28, 'Transaction ID', 'Transactio'),
(29, 'Paid Amount', 'Paid Amoun'),
(30, 'Payment Status', 'Payment St'),
(31, 'Payment Method', 'Payment Me'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Hình thức thanh toán'),
(34, 'Select Payment Method', 'Chọn hình thức thanh toán'),
(35, 'Select a Method', 'Phương thức thanh toán'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Chuyển khoản ngân hàng'),
(39, 'Card Number', 'Card Numbe'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'Thông tin tài khoản'),
(44, 'Transaction Information', 'Nội dung giao dịch'),
(45, 'Include transaction id and other information correctly', 'Include tr'),
(46, 'Pay Now', 'Thanh toán ngay'),
(47, 'Product Name', 'Tên sản phẩm'),
(48, 'Product Details', 'Mô tả'),
(49, 'Categories', 'Danh mục'),
(50, 'Category:', 'Danh mục:'),
(51, 'All Products Under', 'Tất cả sản phẩm liên quan: '),
(52, 'Select Size', 'Select Siz'),
(53, 'Select Color', 'Chọn màu sắc'),
(54, 'Product Price', 'Giá hiện tại'),
(55, 'Quantity', 'Số lượng'),
(56, 'Out of Stock', 'Out of Sto'),
(57, 'Share This', 'Chia sẻ'),
(58, 'Share This Product', 'Chia sẻ'),
(59, 'Product Description', 'Mô tả'),
(60, 'Features', 'Cấu hình'),
(61, 'Conditions', 'Chính sách khuyến mãi'),
(62, 'Return Policy', 'Đổi trả & bảo hành'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Rev'),
(66, 'Write your comment (Optional)', 'Write your'),
(67, 'Submit Review', 'Submit Rev'),
(68, 'You already have given a rating!', 'You alread'),
(69, 'You must have to login to give a review', 'You must h'),
(70, 'No description found', 'No descrip'),
(71, 'No feature found', 'No feature'),
(72, 'No condition found', 'No conditi'),
(73, 'No return policy found', 'No return '),
(74, 'Review not found', 'Review not'),
(75, 'Customer Name', 'Customer N'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Sub Total', 'Tổng đơn hàng'),
(82, 'Total', 'Tổng'),
(83, 'Action', 'Hành động'),
(84, 'Shipping Cost', 'Phí giao hàng'),
(85, 'Continue Shopping', 'Tiếp tục mua sắm'),
(86, 'Update Billing Address', 'Địa chỉ thanh toán'),
(87, 'Update Shipping Address', 'Địa chỉ nhận hàng'),
(88, 'Update Billing and Shipping Info', 'Địa chỉ thanh toán'),
(89, 'Dashboard', 'Thông tin'),
(90, 'Welcome to the Dashboard', 'Chào mừng bạn !'),
(91, 'Back to Dashboard', 'Trở về trang điều khiển'),
(92, 'Subscribe', 'Đăng ký'),
(93, 'Subscribe To Our Newsletter', 'Đăng ký nhận thông tin từ chúng tôi '),
(94, 'Email Address', 'Địa chỉ Email'),
(95, 'Enter Your Email Address', 'Nhập địa chỉ mail của bạn'),
(96, 'Password', 'Mật khẩu'),
(97, 'Forget Password', 'Quên mật khẩu?'),
(98, 'Retype Password', 'Retype Pas'),
(99, 'Update Password', 'Mật khẩu'),
(100, 'New Password', 'Nhập mật khẩu mới'),
(101, 'Retype New Password', 'Nhập lại mật khẩu mới'),
(102, 'Full Name', 'Tên của bạn'),
(103, 'Company Name', 'Tên nơi làm việc'),
(104, 'Phone Number', 'Số điện thoại cá nhân'),
(105, 'Address', 'Địa chỉ'),
(106, 'Country', 'Tỉnh/Thành phố'),
(107, 'City', 'Quận/Huyện'),
(108, 'State', 'Phường/Xã'),
(109, 'Zip Code', 'Zip Code'),
(110, 'About Us', 'Về chúng tôi'),
(111, 'Featured Posts', 'Featured P'),
(112, 'Popular Posts', 'Popular Po'),
(113, 'Recent Posts', 'Recent Pos'),
(114, 'Contact Information', 'Contact In'),
(115, 'Contact Form', 'Gửi tin nhắn cho chúng tôi'),
(116, 'Our Office', 'Địa chỉ cửa hàng'),
(117, 'Update Profile', 'Cập nhật thông tin'),
(118, 'Send Message', 'Gửi tin nhắn'),
(119, 'Message', 'Message'),
(120, 'Tìm chúng tôi trên bản đồ', 'Find Us On'),
(121, 'Congratulation! Payment is successful.', 'Congratula'),
(122, 'Billing and Shipping Information is updated successfully.', 'Billing an'),
(123, 'Customer Name can not be empty.', 'Customer N'),
(124, 'Phone Number can not be empty.', 'Phone Numb'),
(125, 'Address can not be empty.', 'Address ca'),
(126, 'You must have to select a country.', 'You must h'),
(127, 'City can not be empty.', 'City can n'),
(128, 'State can not be empty.', 'State can '),
(129, 'Zip Code can not be empty.', 'Zip Code c'),
(130, 'Profile Information is updated successfully.', 'Profile In'),
(131, 'Email Address can not be empty', 'Email Addr'),
(132, 'Email and/or Password can not be empty.', 'Email hoặc mật khẩu không đúng'),
(133, 'Email Address does not match.', 'Email Addr'),
(134, 'Email address must be valid.', 'Email addr'),
(135, 'You email address is not found in our system.', 'You email '),
(136, 'Please check your email and confirm your subscription.', 'Please che'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email'),
(138, 'Password can not be empty.', 'Password c'),
(139, 'Passwords do not match.', 'Mật khẩu không đúng '),
(140, 'Please enter new and retype passwords.', 'Please ent'),
(141, 'Password is updated successfully.', 'Password i'),
(142, 'To reset your password, please click on the link below.', 'To reset y'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD R'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The passwo'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'A confirma'),
(146, 'Password is reset successfully. You can now login.', 'Password i'),
(147, 'Email Address Already Exists', 'Email Addr'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! You'),
(149, 'Change Password', 'Change Pas'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Registrati'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Thank you '),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Your regis'),
(153, 'No Product Found', 'No Product'),
(154, 'Add to Cart', 'Thêm vào giỏ hàng'),
(155, 'Related Products', 'Các sản phẩm có liên quan'),
(156, 'See all related products from below', 'Các sản phẩm liên quan phía dưới'),
(157, 'Size', 'Kích thước'),
(158, 'Color', 'Màu sắc'),
(159, 'Price', 'Giá'),
(160, 'Please login as customer to checkout', 'Vui lòng đăng nhập tại đây'),
(161, 'Billing Address', 'Địa chỉ thanh toán'),
(162, 'Shipping Address', 'Địa chỉ giao hàng'),
(163, 'Rating is Submitted Successfully!', 'Rating is ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(1, 'Iphone', 1),
(2, 'SamSung', 1),
(3, 'Apple Watch', 2),
(4, 'Galaxy Watch', 2),
(6, 'Shoes', 2),
(7, 'Clothing', 2),
(8, 'Oppo', 1),
(9, 'Vivo', 1),
(10, 'Clothing', 3),
(11, 'Shoes', 3),
(12, 'Accessories', 3),
(14, 'Electronic Items', 4),
(15, 'Computers', 4),
(16, 'Health', 5),
(17, 'Household', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_meta_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_meta_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_meta_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_meta_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pgallery_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pgallery_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pgallery_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pgallery_meta_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pgallery_meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vgallery_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vgallery_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vgallery_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vgallery_meta_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vgallery_meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'Về chúng tôi', '<p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Welcome to Ecommerce PHP Project!</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"border: 0px solid;\">We aim to offer our customers a variety of the latest [PRODUCTS_CATEGORY_NAME]. Weâ€™ve come a long way, so we know exactly which direction to take when supplying you with high quality yet budget-friendly products. We offer all of this while providing excellent customer service and friendly support.</span></p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"border: 0px solid;\">We always keep an eye on the latest trends in [PRODUCTS CATEGORY NAME] and put our customersâ€™ wishes first. That is why we have satisfied customers all over the world, and are thrilled to be a part of the [PRODUCTS CATEGORY NAME] industry.</span></p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"border: 0px solid;\">The interests of our customers are always top priority for us, so we hope you will enjoy our products as much as we enjoy making them available to you.</span></p><p style=\"\">We make sure you get the best quality outfits with hassle free returns and exchanges policy. We ensure what you see is exactly what you get!</p><ul><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Low Price Guarantee</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">24/7 Customer Support</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">E-Mail - Text - Call</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">We are here for you 24/7 online and via phone.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Sizing & Color</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Worldwide Shipping</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Weâ€™d love to expand our business Internationally soon.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Easy Returns</span></font></li></ul><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Bought an outfit but want to return it? We have a 3 days easy return policy. Please mail us at support@ecommercephp.com for more details.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Dream Dresses for Every Occasion</b></span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Fashionys.com carries all carefully handpicked by our stylists. If youâ€™re interested in a particular model please mail us we will try our best to offer you the loved dress.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Verified Security</b></span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">All our transactions are Verified by Norton and with the highest standards of security. Plus, there\'s a lot to go around too through regular exciting offers and gifts, so spread the word and refer us to everyone from your family, friends and colleagues and get rewarded for it. And to top it all, you can share your user experience by posting reviews. Donâ€™t wait any longer Sign up with us now! start stalking, start buying and start loving and start Introducing the beauty in you.</span></font></p>\r\n', 'about-banner.jpg', 'Ecommerce PHP - About Us', 'about, about us, about fashion, about company, about ecommerce php project', 'Our goal has always been to get the best in you we brought a huge collection whether youâ€™re attending a party, wedding, and all those events that require a WOW dress.', 'Giải đáp', 'faq-banner.jpg', 'Thế Kỷ Mobile - Giải đáp', '', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'Liên hệ', 'contact-banner.jpg', 'Thế Kỷ Mobile - Liên hệ', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'Ecommerce - Video Gallery', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` varchar(25) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Cu vel choro exerci pri et oratio iisque', 'cu-vel-choro-exerci-pri-et-oratio-iisque', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-1.jpg', 3, 14, 'Cu vel choro exerci pri et oratio iisque', '', ''),
(2, 'Epicurei necessitatibus eu facilisi postulant ', 'epicurei-necessitatibus-eu-facilisi-postulant-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-2.jpg', 3, 6, 'Epicurei necessitatibus eu facilisi postulant ', '', ''),
(3, 'Mei ut errem legimus periculis eos liber', 'mei-ut-errem-legimus-periculis-eos-liber', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-3.jpg', 3, 1, 'Mei ut errem legimus periculis eos liber', '', ''),
(4, 'Id pro unum pertinax oportere vel', 'id-pro-unum-pertinax-oportere-vel', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-4.jpg', 4, 0, 'Id pro unum pertinax oportere vel', '', ''),
(5, 'Tollit cetero cu usu etiam evertitur', 'tollit-cetero-cu-usu-etiam-evertitur', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-5.jpg', 4, 24, 'Tollit cetero cu usu etiam evertitur', '', ''),
(6, 'Omnes ornatus qui et te aeterno', 'omnes-ornatus-qui-et-te-aeterno', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-6.jpg', 4, 2, 'Omnes ornatus qui et te aeterno', '', ''),
(7, 'Vix tale noluisse voluptua ad ne', 'vix-tale-noluisse-voluptua-ad-ne', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-7.jpg', 2, 0, 'Vix tale noluisse voluptua ad ne', '', ''),
(8, 'Liber utroque vim an ne his brute', 'liber-utroque-vim-an-ne-his-brute', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-8.jpg', 2, 12, 'Liber utroque vim an ne his brute', '', ''),
(9, 'Nostrum copiosae argumentum has', 'nostrum-copiosae-argumentum-has', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-9.jpg', 1, 12, 'Nostrum copiosae argumentum has', '', ''),
(10, 'An labores explicari qui eu', 'an-labores-explicari-qui-eu', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-10.jpg', 1, 4, 'An labores explicari qui eu', '', ''),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-11.jpg', 1, 18, 'Lorem ipsum dolor sit amet', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_old_price` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_current_price` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_feature` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_condition` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_return_policy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(103, 'Iphone 14 Pro Max', '43000000', '40000000', 30, 'product-featured-103.jpg', '', '', '', '', '', 71, 1, 1, 1),
(104, 'Iphone 14 Pro ', '37000000', '35000000', 30, 'product-featured-104.jpg', '', '', '', '', '', 6, 1, 1, 1),
(105, 'Iphone 14', '36000000', '34000000', 100, 'product-featured-105.png', '', '', '', '', '', 4, 1, 1, 1),
(107, 'Iphone 11 64GB', '13000000', '10500000', 100, 'product-featured-107.jpg', '<h3 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: bold; font-stretch: normal; font-size: 20px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); outline: none; text-align: justify;\"><a href=\"https://www.thegioididong.com/dtdd/iphone-13-pro-max\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 18px; outline: none;\">Điện thoại iPhone 13 Pro Max 128 GB</a> - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ <a href=\"https://www.thegioididong.com/apple\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone iPhone chính hãng\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 18px; outline: none;\">Apple</a>. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.</h3>', '<p><span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">iPhone mới kế thừa thiết kế đặc trưng từ iPhone 12 Pro Max khi sở hữu khung viền vuông vức, mặt lưng kính cùng màn hình tai thỏ tràn viền nằm ở phía trước.</span><br></p>', '<ul class=\"parameter__list 230529 active\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px;\"><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);\"><p class=\"lileft\" style=\"margin-bottom: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Màn hình:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"comma\" style=\"margin: 0px; padding: 0px;\">OLED</span><span class=\"comma\" style=\"margin: 0px; padding: 0px;\">6.7\"</span><span class=\"\" style=\"margin: 0px; padding: 0px;\">Super Retina XDR</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex;\"><p class=\"lileft\" style=\"margin-bottom: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Hệ điều hành:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">iOS 15</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);\"><p class=\"lileft\" style=\"margin-bottom: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Camera sau:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">3 camera 12 MP</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex;\"><p class=\"lileft\" style=\"margin-bottom: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Camera trước:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">12 MP</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);\"><p class=\"lileft\" style=\"margin-bottom: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Chip:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">Apple A15 Bionic</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex;\"><p class=\"lileft\" style=\"margin-bottom: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">RAM:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">6 GB</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);\"><p class=\"lileft\" style=\"margin-bottom: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Dung lượng lưu trữ:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"\" style=\"margin: 0px; padding: 0px;\">128 GB</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex;\"><p class=\"lileft\" style=\"margin-bottom: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">SIM:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"comma\" style=\"margin: 0px; padding: 0px;\">1 Nano SIM & 1 eSIM</span><span class=\"\" style=\"margin: 0px; padding: 0px;\">Hỗ trợ 5G</span></div></li><li data-index=\"0\" data-prop=\"0\" style=\"margin: 0px; padding: 10px; align-items: flex-start; display: flex; background-color: rgb(245, 245, 245);\"><p class=\"lileft\" style=\"margin-bottom: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; width: 140px;\">Pin, Sạc:</p><div class=\"liright\" style=\"margin: 0px; padding-right: 15px; padding-left: 50px; width: calc(100% - 140px); padding-top: 0px !important; padding-bottom: 0px !important;\"><span class=\"comma\" style=\"margin: 0px; padding: 0px;\">4352 mAh</span><span class=\"\" style=\"margin: 0px; padding: 0px;\">20 W</span></div></li></ul>', '<div class=\"block__promo\" style=\"margin: 0px 0px 10px; padding: 7px 7px 10px; border-top: none; border-right: none; border-bottom: 1px dashed rgb(242, 153, 74); border-left: none; border-image: initial; border-radius: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px;\"><div class=\"pr-top\" style=\"margin: 0px; padding: 0px; background: none; border: none;\"><p class=\"pr-txtb\" style=\"margin-bottom: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; font-weight: bold;\">Khuyến mãi</p></div><div class=\"pr-content\" style=\"margin: 0px; padding: 0px;\"><div class=\"pr-item\" style=\"margin: 0px; padding: 7px 0px 10px; border: none;\"><div class=\"divb t1\" data-promotion=\"1191864\" data-group=\"tặng\" data-discount=\"0\" data-productcode=\"\" data-tovalue=\"0\" style=\"margin: 0px; padding: 0px;\"><span class=\"nb\" style=\"margin: 2px 0px 0px; padding: 0px; background-color: rgb(74, 144, 226); border-radius: 50%; color: rgb(255, 255, 255); display: inline-block; font-size: 11px; float: left; height: 16px; line-height: 16px; text-align: center; width: 16px;\">1</span><div class=\"divb-right\" style=\"margin: 0px; padding: 0px 0px 0px 26px;\"><p style=\"margin-bottom: 0px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; line-height: 1.5;\">Giảm 20% giá gói BH Rơi vỡ 6 tháng <a href=\"https://www.thegioididong.com/tin-tuc/duoc-giam-gia-goi-bao-hiem-roi-vo-khi-mua-kem-iphone-1331129\" target=\"_blank\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(74, 144, 226);\">Xem chi tiết</a></p></div></div></div></div></div><div class=\"bs_rule\" style=\"margin: 0px 0px 10px; padding: 0px 7px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><li style=\"margin: 0px 0px 2px; padding: 0px 0px 0px 12px; line-height: 1.6; position: relative;\">Chỉ áp dụng giao tận nơi.</li><li style=\"margin: 0px 0px 2px; padding: 0px 0px 0px 12px; line-height: 1.6; position: relative;\">Thời gian nhận hàng: 1 ngày sau khi đặt</li><li style=\"margin: 0px 0px 2px; padding: 0px 0px 0px 12px; line-height: 1.6; position: relative;\">Không áp dụng chung với khuyến mãi khác.</li><li style=\"margin: 0px 0px 2px; padding: 0px 0px 0px 12px; line-height: 1.6; position: relative;\">Mỗi khách hàng (1 SĐT) chỉ được mua 1 sản phẩm</li><li style=\"margin: 0px 0px 2px; padding: 0px 0px 0px 12px; line-height: 1.6; position: relative;\">Áp dụng góp Online qua thẻ tín dụng</li><li style=\"margin: 0px 0px 2px; padding: 0px 0px 0px 12px; line-height: 1.6; position: relative;\">Bắt buộc khui hộp và kích hoạt khi nhận máy</li><li style=\"margin: 0px 0px 2px; padding: 0px 0px 0px 12px; line-height: 1.6; position: relative;\">Không áp dụng góp nhà tài chính</li><li style=\"margin: 0px 0px 2px; padding: 0px 0px 0px 12px; line-height: 1.6; position: relative;\">Số lượng có hạn, áp dụng tùy tỉnh thành</li><li style=\"margin: 0px 0px 2px; padding: 0px 0px 0px 12px; line-height: 1.6; position: relative;\"><br></li></ul></div>', '<ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 14px; padding: 0px; list-style: none;\"><li style=\"margin: 0px 0px 2px; padding: 0px 0px 0px 12px; line-height: 1.6; position: relative;\">Hư gì đổi nấy trong 15 ngày nếu lỗi do nhà sản xuất</li></ul>', 15, 1, 1, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(69, 1, 4),
(70, 4, 4),
(77, 6, 6),
(82, 2, 12),
(83, 9, 13),
(84, 3, 14),
(85, 2, 15),
(86, 6, 15),
(87, 3, 16),
(88, 3, 17),
(89, 2, 18),
(90, 3, 19),
(91, 1, 20),
(92, 8, 21),
(93, 2, 22),
(94, 2, 23),
(95, 2, 25),
(96, 5, 26),
(97, 2, 27),
(98, 4, 27),
(99, 5, 28),
(100, 7, 29),
(101, 10, 30),
(102, 11, 31),
(103, 14, 32),
(105, 2, 34),
(106, 1, 35),
(107, 3, 36),
(109, 6, 38),
(110, 2, 39),
(111, 11, 42),
(149, 3, 10),
(150, 6, 9),
(151, 3, 8),
(152, 7, 7),
(159, 2, 77),
(163, 17, 79),
(164, 2, 78),
(167, 3, 80),
(168, 2, 81),
(172, 1, 82),
(173, 2, 82),
(174, 4, 82),
(276, 4, 104),
(277, 5, 104),
(278, 1, 105),
(279, 2, 105),
(280, 3, 105),
(281, 4, 105),
(286, 8, 107),
(287, 2, 103),
(288, 4, 103),
(289, 6, 103),
(290, 13, 103),
(291, 29, 103);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(136, '136.jpg', 107),
(137, '137.jpg', 107);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(44, 1, 6),
(56, 8, 12),
(57, 9, 12),
(58, 10, 12),
(59, 11, 12),
(60, 12, 12),
(61, 13, 12),
(62, 9, 13),
(63, 11, 13),
(64, 13, 13),
(65, 15, 13),
(66, 9, 14),
(67, 11, 14),
(68, 12, 14),
(69, 13, 14),
(70, 9, 15),
(71, 11, 15),
(72, 13, 15),
(73, 15, 16),
(74, 16, 16),
(75, 17, 16),
(76, 16, 17),
(77, 17, 17),
(78, 14, 18),
(79, 15, 18),
(80, 16, 18),
(81, 17, 18),
(82, 15, 19),
(83, 16, 19),
(84, 17, 19),
(85, 14, 20),
(86, 15, 20),
(87, 17, 20),
(88, 15, 21),
(89, 17, 21),
(90, 15, 22),
(91, 16, 22),
(92, 17, 22),
(93, 15, 23),
(94, 16, 23),
(95, 17, 23),
(96, 18, 25),
(97, 19, 25),
(98, 20, 25),
(99, 21, 25),
(100, 19, 26),
(101, 21, 26),
(102, 22, 26),
(103, 23, 26),
(104, 19, 27),
(105, 20, 27),
(106, 21, 27),
(107, 22, 27),
(108, 19, 28),
(109, 20, 28),
(110, 21, 28),
(111, 19, 29),
(112, 20, 29),
(113, 22, 29),
(114, 1, 30),
(115, 2, 30),
(116, 3, 30),
(117, 4, 30),
(118, 23, 31),
(119, 26, 32),
(123, 2, 34),
(124, 2, 35),
(125, 2, 36),
(126, 3, 36),
(129, 2, 38),
(130, 3, 38),
(131, 4, 38),
(132, 5, 38),
(133, 27, 39),
(134, 8, 42),
(210, 3, 10),
(211, 4, 10),
(212, 5, 10),
(213, 6, 10),
(214, 3, 9),
(215, 4, 9),
(216, 3, 8),
(217, 4, 8),
(218, 2, 7),
(219, 3, 7),
(220, 4, 7),
(249, 1, 79),
(250, 2, 79),
(251, 3, 79),
(252, 1, 78),
(253, 2, 78),
(254, 3, 78),
(255, 4, 78),
(256, 5, 78),
(259, 26, 80),
(262, 3, 82),
(263, 4, 82),
(454, 48, 103),
(455, 49, 103),
(456, 50, 103),
(457, 51, 103);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(5, 'Trả hàng dễ dàng', 'Trả lại bất kỳ mặt hàng nào trước 15 ngày!', 'service-5.jpg'),
(6, 'Miễn phí giao hàng', 'Giao hàng miễn phí toàn quốc', 'service-6.jpg'),
(7, 'Chuyển phát nhanh', 'Giao hàng trong 24 giờ', 'service-7.jpg'),
(8, 'Hài lòng', 'Bạn sẽ hài lòng với dịch vụ của chúng tôi', 'service-8.jpg'),
(9, 'Thanh toán an toàn', 'Phương thức thanh toán an toàn, nhanh chóng, hiệu quả', 'service-9.jpg'),
(10, 'Hoàn tiền nhanh chóng', 'Đảm bào hoàn tiền khi có phát sinh lỗi', 'service-10.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_fax` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_map_iframe` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `receive_email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receive_email_subject` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receive_email_thank_you_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `forget_password_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword_home` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description_home` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_registration` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_forget_password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_reset_password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_search` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_cart` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_checkout` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_product_category` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_blog` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cta_title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cta_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cta_read_more_text` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cta_read_more_url` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cta_photo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_product_title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_product_subtitle` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latest_product_title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latest_product_subtitle` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `popular_product_title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `popular_product_subtitle` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial_title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial_subtitle` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial_photo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_subtitle` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `newsletter_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_public_key` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_secret_key` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `before_head` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `after_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `before_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.jpg', 'favicon.jpg', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', 'Copyright © 2022 - Thế Kỷ Mobile - Developed By THEKY Teams', '280 An Dương Vương, Phường 04, Quận 05, Thành phố Hồ Chí Minh', 'thekymobile@gmail.com', '+0333827185', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.650509551565!2d106.67999334953961!3d10.761395192294069!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f1b888ab357%3A0xc469f6e800231314!2zMjgwIEFuIEQuIFbGsMahbmcsIFBoxrDhu51uZyA0LCBRdeG6rW4gNSwgVGjDoG5oIHBo4buRIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1664350324035!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'thekymobile@gmail.com', 'Thông báo Email của Khách truy cập từ Trang Thế Kỷ Mobile', 'Cảm ơn bạn đã gửi email. Chúng tôi sẽ sớm liên lạc lại với bạn !', 'Một liên kết xác nhận được gửi đến địa chỉ email của bạn. Bạn sẽ nhận được thông tin đặt lại mật khẩu trong đó.', 4, 4, 5, 5, 5, 6, 8, 'Thế Kỷ Mobile - Điện thoại, Laptop, Phụ kiện, Đồng hồ chính hãng', 'online fashion store, garments shop, online garments', 'ecommerce php project with mysql database', 'banner_login.png', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Welcome To Our Ecommerce Website', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Read More', '#', 'cta.jpg', 'Sản phẩm nổi bật', 'Các sản phẩm nổi bật của chúng tôi', 'Sản phẩm mới nhất', 'Danh sách các sản phẩm mới nhất của chúng tôi', 'Các sản phẩm phổ biến', 'Sản phẩm phổ biến dựa trên sự lựa chọn của khách hàng', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'Đăng ký nhận bản tin của chúng tôi để biết các chương trình khuyến mãi và giảm giá mới nhất.', 'admin@ecom.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Tên ngân hàng: Angribank - Ngân Hàng Nông Nghiệp\r\nSố tài khoản: 7104205215041\r\nChi nhánh: Huyện Bình Đại - tỉnh Bến Tre\r\n', '', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<!--Start of Tawk.to Script-->\r\n    <script type=\"text/javascript\">\r\n    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n    (function(){\r\n    var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n    s1.async=true;\r\n    s1.src=\'https://embed.tawk.to/632a773c54f06e12d895ea5f/1gdeu3huj\';\r\n    s1.charset=\'UTF-8\';\r\n    s1.setAttribute(\'crossorigin\',\'*\');\r\n    s0.parentNode.insertBefore(s1,s0);\r\n    })();\r\n    </script>\r\n    <!--End of Tawk.to Script-->', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 228, '11'),
(2, 167, '10'),
(3, 13, '8'),
(4, 230, '0'),
(5, 58, '0'),
(6, 1, '30000'),
(7, 2, '30000'),
(8, 3, '30000'),
(9, 4, '30000'),
(10, 5, '30000'),
(11, 6, '30000'),
(12, 7, '30000'),
(13, 9, '30000'),
(14, 10, '30000'),
(15, 11, '30000'),
(16, 8, '60000'),
(17, 12, '60000'),
(18, 14, '60000'),
(19, 21, '60000'),
(20, 22, '60000'),
(21, 23, '60000'),
(22, 24, '30000'),
(23, 25, '60000'),
(24, 26, '60000'),
(25, 27, '60000'),
(26, 28, '60000'),
(27, 29, '60000'),
(28, 30, '60000'),
(29, 31, '60000'),
(30, 32, '60000'),
(31, 33, '60000'),
(32, 34, '60000'),
(33, 35, '60000'),
(34, 36, '60000'),
(35, 37, '60000'),
(36, 38, '30000'),
(37, 39, '60000'),
(38, 40, '60000'),
(39, 41, '60000'),
(40, 42, '60000'),
(41, 43, '60000'),
(42, 44, '60000'),
(43, 45, '60000'),
(44, 46, '60000'),
(45, 47, '60000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '100');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(48, '64GB'),
(49, '128GB'),
(50, '256GB'),
(51, '512GB'),
(52, '1TB'),
(53, '2TB');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.jpg', 'Sale ngon giá đẹp', 'Sale ngon giá đẹp', 'Xem ngay', 'product-category.php?id=4&type=mid-category', 'Center'),
(2, 'slider-2.jpg', '50% Discount on All Products', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', 'Read More', '#', 'Center'),
(3, 'slider-3.png', '24 Hours Customer Support', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', 'Read More', '#', 'Right');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_icon` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/#', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/#', 'fa fa-twitter'),
(3, 'LinkedIn', '', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '', 'fa fa-pinterest'),
(6, 'YouTube', 'https://www.youtube.com/#', 'fa fa-youtube'),
(7, 'Instagram', 'https://www.instagram.com/#', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', 'https://www.whatsapp.com/#', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subs_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subs_date_time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subs_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(1, 'ruth@mail.com', '2022-03-20', '2022-03-20 10:25:18', 'f4eabc1afed38a08da8d1c6e5fb42187', 1),
(2, 'kimberly@mail.com', '2022-03-20', '2022-03-20 10:26:07', '61f3af9cac686555a4bff9e565f88c47', 1),
(3, 'gregobn@mail.com', '2022-03-20', '2022-03-20 10:27:21', '72d6fc3a9e9ed33dfc30b10f4de82f34', 1),
(4, 'morgan.sarahh5@mail.com', '2022-03-20', '2022-03-20 10:27:48', 'bcdeda095a6c882803fc3aaf4a17f08e', 1),
(5, 'greenwd1154@mail.com', '2022-03-20', '2022-03-20 10:28:09', '279ecfe9debbb091c664641f534857ee', 1),
(6, 'awsm785@mail.com', '2022-03-20', '2022-03-20 10:28:21', '94096ae01fc65e71c50c7843d096e041', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(1, '📲 Điện thoại', 1),
(2, '⌚ Đồng hồ thông minh', 1),
(3, '📱 Tablet', 1),
(4, '💻 Laptop', 1),
(5, '🎧 Âm thanh', 1),
(6, '🔋Phụ kiện', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Administrator', 'duykha@gmail.com', '7777777777', 'e10adc3949ba59abbe56e057f20f883e', 'user-1.png', 'Super Admin', 'Active'),
(2, 'Christine', 'christine@mail.com', '4444444444', '81dc9bdb52d04dc20036dbd8313ed055', 'user-13.jpg', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iframe_code` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
(1, 'Video 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3XAFSMdVWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(2, 'Video 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sinQ06YzbJI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(4, 'Video 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ViZNgU-Yt-Y\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Chỉ mục cho bảng `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Chỉ mục cho bảng `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Chỉ mục cho bảng `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Chỉ mục cho bảng `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Chỉ mục cho bảng `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Chỉ mục cho bảng `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Chỉ mục cho bảng `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Chỉ mục cho bảng `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Chỉ mục cho bảng `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Chỉ mục cho bảng `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Chỉ mục cho bảng `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Chỉ mục cho bảng `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Chỉ mục cho bảng `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT cho bảng `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT cho bảng `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT cho bảng `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT cho bảng `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=458;

--
-- AUTO_INCREMENT cho bảng `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
