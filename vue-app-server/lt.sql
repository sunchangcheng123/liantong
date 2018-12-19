-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-11-03 08:10:19
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lt`
--

-- --------------------------------------------------------

--
-- 表的结构 `lt_area`
--

CREATE TABLE `lt_area` (
  `aid` int(11) NOT NULL,
  `area` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lt_area`
--

INSERT INTO `lt_area` (`aid`, `area`) VALUES
(1, '东城区'),
(2, '西城区'),
(3, '朝阳区'),
(4, '丰台区'),
(5, '石景山区'),
(6, '海淀区'),
(7, '门头沟区'),
(8, '房山区'),
(9, '通州区'),
(10, '顺义区'),
(11, '大兴区'),
(12, '怀柔区'),
(13, '密云县'),
(14, '延庆县');

-- --------------------------------------------------------

--
-- 表的结构 `lt_package`
--

CREATE TABLE `lt_package` (
  `packageid` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `content` varchar(64) DEFAULT NULL,
  `promise` varchar(64) DEFAULT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lt_package`
--

INSERT INTO `lt_package` (`packageid`, `title`, `price`, `content`, `promise`, `sm`, `md`) VALUES
(1, '4G全国套餐 仅限新用户购买！预存120元得360元！实月付56元享800全国流量+200全国通话！玩转4G!', '120.00', '56元套餐', '得360元话费', 'http://127.0.0.1:3000/img/sm1.jpg', 'http://127.0.0.1:3000/img/md1.jpg'),
(2, '【老用户】微信沃派特惠 存300用两年/200用一年！其中50元自由话费一次性到账。', '300.00', '沃派36', '300元打两年', 'http://127.0.0.1:3000/img/sm2.png', 'http://127.0.0.1:3000/img/md2.png'),
(3, '小冰神卡（预存版）', '49.00', '冰激凌（小冰神）', '存49送50', 'http://127.0.0.1:3000/img/sm3.jpg', 'http://127.0.0.1:3000/img/md3.jpg'),
(4, '【两年以上老用户专享】4G全国套餐老用户免预存送费/业务', '0.00', '76元套餐', '得240元话费', 'http://127.0.0.1:3000/img/sm4.png', 'http://127.0.0.1:3000/img/md4.png'),
(5, '尊享手网厅', '0.00', '大冰神卡', '免费送', 'http://127.0.0.1:3000/img/sm5.jpg', 'http://127.0.0.1:3000/img/md5.jpg'),
(6, '大冰神卡（预存版）', '99.00', '冰激凌（大冰神）', '存99送100', 'http://127.0.0.1:3000/img/17.jpg', 'http://127.0.0.1:3000/img/22.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `lt_phone`
--

CREATE TABLE `lt_phone` (
  `phoneid` int(11) NOT NULL,
  `phone` char(11) DEFAULT NULL,
  `packageid` int(11) DEFAULT NULL,
  `balance` float DEFAULT NULL,
  `presmoney` float DEFAULT NULL,
  `sold` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lt_phone`
--

INSERT INTO `lt_phone` (`phoneid`, `phone`, `packageid`, `balance`, `presmoney`, `sold`) VALUES
(1, '17613132320', 1, 100, NULL, 1),
(2, '17613132321', 1, NULL, 100, 0),
(3, '17613132322', 1, 100, NULL, 1),
(4, '17613132323', 1, NULL, 100, 0),
(5, '17613132324', 1, NULL, 100, 0),
(6, '17613132325', 1, NULL, 100, 0),
(7, '17613132326', 1, NULL, 100, 0),
(8, '17613132327', 1, NULL, 100, 0),
(9, '17613132328', 1, 100, NULL, 1),
(10, '15613132320', 2, 100, NULL, 1),
(11, '15613132321', 2, 100, NULL, 1),
(12, '15613132322', 2, 100, NULL, 1),
(13, '15613132323', 2, 100, NULL, 1),
(14, '15613132324', 2, 100, NULL, 1),
(15, '15613132325', 2, NULL, 100, 0),
(16, '15613132326', 2, NULL, 100, 0),
(17, '15613132327', 2, NULL, 100, 0),
(18, '15613132328', 2, NULL, 100, 0),
(19, '15623132320', 2, NULL, 100, 0),
(20, '15633132320', 2, NULL, 100, 0),
(21, '15643132320', 2, 100, NULL, 1),
(22, '15653132320', 2, 100, NULL, 1),
(23, '15663132320', 3, 100, NULL, 1),
(24, '15673132320', 3, 100, NULL, 1),
(25, '15683132320', 3, 100, NULL, 1),
(26, '15611132320', 3, 100, NULL, 1),
(27, '15612132320', 3, NULL, 100, 0),
(28, '15613132320', 3, NULL, 100, 0),
(29, '15614132320', 3, NULL, 100, 0),
(30, '15615132320', 3, NULL, 100, 0),
(31, '15616132320', 3, NULL, 100, 0),
(32, '15617132320', 3, NULL, 100, 0),
(33, '15618132320', 3, 100, NULL, 1),
(34, '15613132320', 3, 100, NULL, 1),
(35, '15613232320', 3, 100, NULL, 1),
(36, '15613332320', 3, 100, NULL, 1),
(37, '15613432320', 4, 100, NULL, 1),
(38, '15613532320', 4, 100, NULL, 1),
(39, '15613632320', 4, 100, NULL, 1),
(40, '15613732320', 4, 100, NULL, 1),
(41, '15613832320', 4, NULL, 100, 0),
(42, '15613112320', 4, NULL, 100, 0),
(43, '15613122320', 4, NULL, 100, 0),
(44, '15613132320', 4, NULL, 100, 0),
(45, '15613142320', 4, NULL, 100, 0),
(46, '15613152320', 4, NULL, 100, 0),
(47, '15613162320', 4, NULL, 100, 0),
(48, '15613172320', 5, 100, NULL, 1),
(49, '15613182320', 5, 100, NULL, 1),
(50, '15613131320', 5, 100, NULL, 1),
(51, '15613132320', 5, 100, NULL, 1),
(52, '15613133320', 5, 100, NULL, 1),
(53, '15613134320', 5, 100, NULL, 1),
(54, '15613135320', 5, 100, NULL, 1),
(55, '15613136320', 5, 100, NULL, 1),
(56, '15613137320', 5, 100, NULL, 1),
(57, '15613138320', 5, 100, NULL, 1),
(58, '15613132120', 5, NULL, 100, 0),
(59, '15613132220', 5, NULL, 100, 0),
(60, '15613132320', 5, NULL, 100, 0),
(61, '15613132420', 5, NULL, 100, 0),
(62, '15613132520', 5, NULL, 100, 0),
(63, '15613132620', 5, NULL, 100, 0),
(64, '15613132720', 5, NULL, 100, 0),
(65, '15613132820', 5, NULL, 100, 0),
(66, '18613132320', 5, NULL, 100, 0),
(67, '18623132320', 5, 100, NULL, 1),
(68, '18633132320', 5, 100, NULL, 1),
(69, '18643132320', 5, 100, NULL, 1),
(70, '18653132320', 5, 100, NULL, 1),
(71, '18663132320', 5, 100, NULL, 1),
(72, '18673132320', 5, NULL, 100, 0),
(73, '18683132320', 6, NULL, 100, 0),
(74, '18613132320', 6, NULL, 100, 0),
(75, '18613132321', 6, NULL, 100, 0),
(76, '18613132322', 6, NULL, 100, 0),
(77, '18613132323', 6, NULL, 100, 0),
(78, '18613132324', 6, NULL, 100, 0),
(79, '18613132325', 6, NULL, 100, 0),
(80, '18613132326', 6, NULL, 100, 0),
(81, '18613132327', 6, NULL, 100, 0),
(82, '18613132328', 6, 100, NULL, 1),
(83, '18611132320', 6, 100, NULL, 1),
(84, '18612132320', 6, 100, NULL, 1),
(85, '18613132320', 6, 100, NULL, 1),
(86, '18614132320', 6, 100, NULL, 1),
(87, '18615132320', 1, 100, NULL, 1),
(88, '18616132320', 1, NULL, 100, 0),
(89, '18617132320', 1, NULL, 100, 0),
(90, '18618132320', 1, NULL, 100, 0),
(91, '18613132320', 3, NULL, 100, 0),
(92, '18613232320', 3, NULL, 100, 0),
(93, '18613332320', 3, NULL, 100, 0),
(94, '18613432320', 3, NULL, 100, 0),
(95, '18613532320', 3, NULL, 100, 0),
(96, '18613632320', 3, NULL, 100, 0),
(97, '18613732320', 3, 100, NULL, 1),
(98, '18613832320', 3, 100, NULL, 1),
(99, '18613135562', 3, 100, NULL, 1),
(100, '17613136666', 4, 100, NULL, 1),
(101, '17613145277', 4, 100, NULL, 1),
(102, '15937311278', 3, 100, NULL, 1),
(103, '15935311279', 4, 100, NULL, 1),
(104, '15934561280', 4, 100, NULL, 1);

-- --------------------------------------------------------

--
-- 表的结构 `lt_pic`
--

CREATE TABLE `lt_pic` (
  `type_id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `sm_pic` varchar(64) DEFAULT NULL,
  `md_pic` varchar(64) DEFAULT NULL,
  `lg_pic` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lt_pic`
--

INSERT INTO `lt_pic` (`type_id`, `pid`, `sm_pic`, `md_pic`, `lg_pic`) VALUES
(1, 1, 'http://127.0.0.1:3000/img/sm/huaweicx7_sm.jpg', 'http://127.0.0.1:3000/img/md/huaweicx7_md.jpg', 'http://127.0.0.1:3000/img/lg/huaweicx7_lg.jpg'),
(2, 2, 'http://127.0.0.1:3000/img/sm/01iPhoneXS_sm.jpg', 'http://127.0.0.1:3000/img/md/01iPhoneXS_md.jpg', 'http://127.0.0.1:3000/img/lg/01iPhoneXS_lg.jpg'),
(3, 2, 'http://127.0.0.1:3000/img/sm/02iPhoneXS_sm.jpg', 'http://127.0.0.1:3000/img/md/02iPhoneXS_md.jpg', 'http://127.0.0.1:3000/img/lg/02iPhoneXS_lg.jpg'),
(4, 2, 'http://127.0.0.1:3000/img/sm/03iPhoneXS_sm.jpg', 'http://127.0.0.1:3000/img/md/03iPhoneXS_md.jpg', 'http://127.0.0.1:3000/img/lg/03iPhoneXS_lg.jpg'),
(5, 3, 'http://127.0.0.1:3000/img/sm/01iPhoneXR_sm.jpg', 'http://127.0.0.1:3000/img/md/01iPhoneXR_md.jpg', 'http://127.0.0.1:3000/img/lg/01iPhoneXR_lg.jpg'),
(6, 3, 'http://127.0.0.1:3000/img/sm/02iPhoneXR_sm.jpg', 'http://127.0.0.1:3000/img/md/02iPhoneXR_md.jpg', 'http://127.0.0.1:3000/img/lg/02iPhoneXR_lg.jpg'),
(7, 3, 'http://127.0.0.1:3000/img/sm/03iPhoneXR_sm.jpg', 'http://127.0.0.1:3000/img/md/03iPhoneXR_md.jpg', 'http://127.0.0.1:3000/img/lg/03iPhoneXR_lg.jpg'),
(8, 3, 'http://127.0.0.1:3000/img/sm/04iPhoneXR_sm.jpg', 'http://127.0.0.1:3000/img/md/04iPhoneXR_md.jpg', 'http://127.0.0.1:3000/img/lg/04iPhoneXR_lg.jpg'),
(9, 4, 'http://127.0.0.1:3000/img/sm/hongmi6A_sm.jpg', 'http://127.0.0.1:3000/img/md/ hongmi6A_md.jpg', 'http://127.0.0.1:3000/img/lg/ hongmi6A_lg.jpg'),
(10, 5, 'http://127.0.0.1:3000/img/sm/01iPhoneXS_sm.jpg', 'http://127.0.0.1:3000/img/md/01iPhoneXS_md.jpg', 'http://127.0.0.1:3000/img/lg/01iPhoneXS_lg.jpg'),
(11, 5, 'http://127.0.0.1:3000/img/sm/02iPhoneXS_sm.jpg', 'http://127.0.0.1:3000/img/md/02iPhoneXS_md.jpg', 'http://127.0.0.1:3000/img/lg/02iPhoneXS_lg.jpg'),
(12, 5, 'http://127.0.0.1:3000/img/sm/03iPhoneXS_sm.jpg', 'http://127.0.0.1:3000/img/md/03iPhoneXS_md.jpg', 'http://127.0.0.1:3000/img/lg/03iPhoneXS_lg.jpg'),
(13, 6, 'http://127.0.0.1:3000/img/sm/01iPhoneXR_sm.jpg', 'http://127.0.0.1:3000/img/md/01iPhoneXR_md.jpg', 'http://127.0.0.1:3000/img/lg/01iPhoneXR_lg.jpg'),
(14, 6, 'http://127.0.0.1:3000/img/sm/02iPhoneXR_sm.jpg', 'http://127.0.0.1:3000/img/md/02iPhoneXR_md.jpg', 'http://127.0.0.1:3000/img/lg/02iPhoneXR_lg.jpg'),
(15, 6, 'http://127.0.0.1:3000/img/sm/03iPhoneXR_sm.jpg', 'http://127.0.0.1:3000/img/md/03iPhoneXR_md.jpg', 'http://127.0.0.1:3000/img/lg/03iPhoneXR_lg.jpg'),
(16, 6, 'http://127.0.0.1:3000/img/sm/04iPhoneXR_sm.jpg', 'http://127.0.0.1:3000/img/md/04iPhoneXR_md.jpg', 'http://127.0.0.1:3000/img/lg/04iPhoneXR_lg.jpg'),
(17, 7, 'http://127.0.0.1:3000/img/sm/01huaweicx8_sm.jpg', 'http://127.0.0.1:3000/img/md/01huaweicx8_md.jpg', 'http://127.0.0.1:3000/img/lg/01huaweicx8_lg.jpg'),
(18, 7, 'http://127.0.0.1:3000/img/sm/02huaweicx8_sm.jpg', 'http://127.0.0.1:3000/img/md/02huaweicx8_md.jpg', 'http://127.0.0.1:3000/img/lg/02huaweicx8_lg.jpg'),
(19, 8, 'http://127.0.0.1:3000/img/sm/huaweiP20_sm.jpg', 'http://127.0.0.1:3000/img/md/huaweiP20_md.jpg', 'http://127.0.0.1:3000/img/lg/huaweiP20_lg.jpg'),
(20, 9, 'http://127.0.0.1:3000/img/sm/vivoNEX_sm.jpg', 'http://127.0.0.1:3000/img/md/vivoNEX_md.jpg', 'http://127.0.0.1:3000/img/lg/vivoNEX_lg.jpg'),
(21, 10, 'http://127.0.0.1:3000/img/sm/01vivoZ1_sm.jpg', 'http://127.0.0.1:3000/img/md/01vivoZ1_md.jpg', 'http://127.0.0.1:3000/img/lg/01vivoZ1_lg.jpg'),
(22, 10, 'http://127.0.0.1:3000/img/sm/02vivoZ1_sm.jpg', 'http://127.0.0.1:3000/img/md/02vivoZ1_md.jpg', 'http://127.0.0.1:3000/img/lg/02vivoZ1_lg.jpg'),
(23, 11, 'http://127.0.0.1:3000/img/sm/01vivoX23_sm.jpg', 'http://127.0.0.1:3000/img/md/01vivoX23_md.jpg', 'http://127.0.0.1:3000/img/lg/01vivoX23_lg.jpg'),
(24, 11, 'http://127.0.0.1:3000/img/sm/02vivoX23_sm.jpg', 'http://127.0.0.1:3000/img/md/02vivoX23_md.jpg', 'http://127.0.0.1:3000/img/lg/02vivoX23_lg.jpg'),
(25, 12, 'http://127.0.0.1:3000/img/sm/vivoY85_sm.jpg', 'http://127.0.0.1:3000/img/md/vivoY85_md.jpg', 'http://127.0.0.1:3000/img/lg/vivoY85_lg.jpg'),
(26, 13, 'http://127.0.0.1:3000/img/sm/01iPhone7_sm.jpg', 'http://127.0.0.1:3000/img/md/01iPhone7_md.jpg', 'http://127.0.0.1:3000/img/lg/01iPhone7_lg.jpg'),
(27, 13, 'http://127.0.0.1:3000/img/sm/02iPhone7_sm.jpg', 'http://127.0.0.1:3000/img/md/02iPhone7_md.jpg', 'http://127.0.0.1:3000/img/lg/02iPhone7_lg.jpg'),
(28, 13, 'http://127.0.0.1:3000/img/sm/03iPhone7_sm.jpg', 'http://127.0.0.1:3000/img/md/03iPhone7_md.jpg', 'http://127.0.0.1:3000/img/lg/03iPhone7_lg.jpg'),
(29, 14, 'http://127.0.0.1:3000/img/sm/01iPhone8_sm.jpg', 'http://127.0.0.1:3000/img/md/01iPhone8_md.jpg', 'http://127.0.0.1:3000/img/lg/01iPhone8_lg.jpg'),
(30, 14, 'http://127.0.0.1:3000/img/sm/02iPhone8_sm.jpg', 'http://127.0.0.1:3000/img/md/02iPhone8_md.jpg', 'http://127.0.0.1:3000/img/lg/02iPhone8_lg.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `lt_products`
--

CREATE TABLE `lt_products` (
  `pid` int(11) NOT NULL,
  `pname` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `inventory` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lt_products`
--

INSERT INTO `lt_products` (`pid`, `pname`, `price`, `inventory`) VALUES
(1, ' 华为畅想7', '929.00', '7'),
(2, '【免息分期购机】Apple/苹果 iPhone Xs max 256GB 6.5 英寸 面部ID 双卡双待 全网通手机 火热抢购', '10799.00', '12'),
(3, '【免息分期购机】Apple/苹果 iPhone XR 64G 6.1英寸全面屏 面部ID 双卡双待 6期分期免息 疯狂抢购', '6498.00', '10'),
(4, '【免息分期购机】Xiaomi/小米 红米6A 2GB+16GB 全网通双卡双待拍照手机', '619.00', '3'),
(5, '【免息分期购机】Apple/苹果 iPhone Xs max 512GB 6.5 英寸 面部ID 双卡双待 全网通手机 火热抢购', '12399.00', '6'),
(6, '【免息分期购机】Apple/苹果 iPhone XR 256G 6.1英寸全面屏 面部ID 双卡双待 6期分期免息 疯狂抢购', '7898.00', '7'),
(7, '【免息分期购机】华为畅享8 4GB+64GB 全面屏三卡槽 全网通手机', '1209.00', '4'),
(8, '华为（HUAWEI）P20(128G版) 4G全国套餐合约机', '3899.00', '7'),
(9, 'vivo NEX A 冰激凌398元套餐合约', '3899.00', '8'),
(10, '【免息分期购机】vivo Z1 6GB+64GB新一代全面屏 高通骁龙660 AI双摄拍照全网通手机', '1598.00', '6'),
(11, '【免息分期购机】旗舰新品 vivo X23 8+128GB AI非凡摄影 超大广角 全网通手机', '3498.00', '8'),
(12, '【免息分期购机】vivo Y85 4GB+64GB 面部识别 全面屏手机', '1558.00', '11'),
(13, '苹果（APPLE）iPhone 7/iPhone 7 Plus 防溅抗水 A10芯片 双摄像头 Retina HD显示屏', '3899.00', '3'),
(14, '苹果 iPhone8 / iPhone8 Plus 冰激凌套餐合约', '4999.00', '0');

-- --------------------------------------------------------

--
-- 表的结构 `lt_products_details`
--

CREATE TABLE `lt_products_details` (
  `pid` int(11) NOT NULL,
  `card_double` varchar(8) DEFAULT NULL,
  `size` varchar(16) DEFAULT NULL,
  `cpu` varchar(64) DEFAULT NULL,
  `camera` varchar(64) DEFAULT NULL,
  `sim` varchar(16) DEFAULT NULL,
  `system` varchar(16) DEFAULT NULL,
  `resolution` varchar(16) DEFAULT NULL,
  `rom` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lt_products_details`
--

INSERT INTO `lt_products_details` (`pid`, `card_double`, `size`, `cpu`, `camera`, `sim`, `system`, `resolution`, `rom`) VALUES
(1, '双卡双待', '5.3英寸', '高通MSM8917,4*Cort...', '主1300万像素 副500万像...', 'nano卡', '华为EMUI', 'HD/1280x720', '16GB'),
(2, 'XS单卡Max双', '6.5 英寸 (对角线)', 'A12 仿生 新一代神经网络引...', '主1200 万像素广角及长焦双镜...', 'nano卡', 'IOS', '-', '-'),
(3, '双卡双待', '6.1 英寸 (对角线)', 'A12 仿生 新一代神经网络引...', '主1200 万像素广角及长焦双镜...', 'nano卡', 'IOS', '1792 x 828 像素分辨率', '64GB'),
(4, '双卡双待', '5.99英寸', '高通骁龙636', '主1200+500 副1300', 'nano卡', 'MIUI', '2160*1080', '64GB'),
(5, 'XS单卡Max双', '6.5 英寸 (对角线)', 'A12 仿生 新一代神经网络引...', '主1200 万像素广角及长焦双镜...', 'nano卡', 'IOS', '-', '256GB'),
(6, '双卡双待', '6.1 英寸 (对角线)', 'A12 仿生 新一代神经网络引擎', '主1200 万像素广角摄像头 ...', 'nano卡', 'IOS', '1792 x 828 像素分辨率', '256GB'),
(7, '双卡双待', '5.8英寸', 'Kirin 970 八核 +...', '主12MP（彩色）+20MP（黑...', 'nano卡', '华为EMUI', '1080*2244', '128GB'),
(8, '双卡双待', '6.1 英寸 (对角线)', 'A12 仿生 新一代神经网络引擎', '主1200 万像素广角摄像头 ...', 'nano卡', '华为EMUI', '1792 x 828 像素分辨率', '64GB'),
(9, '双卡双待', '6.59英寸', '高通骁龙710', '主摄像头双核1200万像素(2..', 'nano卡', '安卓', '2316×1080', '128GB'),
(10, '双卡双待', '5.46英寸', '2.15GHz', '主1200W+500W 副16...', 'nano卡', '安卓', '2560*1440', '128GB'),
(11, '双卡双待', '6.41英寸', '高通骁龙670AIE', '主后置双核1200万像素+副摄1...', 'nano卡', '安卓', '2560*1440', '128GB'),
(12, '双卡双待', '6.26英寸', '高通骁龙670AIE', '主后置双核1200万像素+副摄1...', 'nano卡', '安卓', '2340×1080', '128GB'),
(13, '单卡', '6.5英寸', 'A12 仿生 新一代神经网络引...', '主后置双核1200万像素+副摄1...', 'nano卡', 'IOS', '2340×1080', '256GB'),
(14, '单卡', '4.7 英寸 (对角线)', '64 位架构的 A11 仿生', '主1200 万像素摄像头 副7...', 'nano卡', 'IOS', '1334 x 750 像素分辨率', '64GB');

-- --------------------------------------------------------

--
-- 表的结构 `lt_user`
--

CREATE TABLE `lt_user` (
  `uid` int(11) NOT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lt_user`
--

INSERT INTO `lt_user` (`uid`, `phone`, `name`, `gender`, `upwd`, `address`) VALUES
(1, '17613132320', '李明', 1, '123456', '北京市海淀区'),
(2, '17613132322', '张小小', 2, '123456', '北京市朝阳区'),
(3, '17613132328', '赵四', 1, '456789', '北京市石景山区'),
(4, '15613132320', '丁丁', 1, '456789', '北京市丰台区'),
(5, '15613132321', '李白', 1, '123456', '北京市朝阳区'),
(6, '15613132322', '诸葛亮', 1, '123456', '北京市丰台区'),
(7, '15613132323', '当当', 2, '456789', '北京市顺义区'),
(8, '15613132324', '程涛', 1, '456789', '北京市海淀区'),
(9, '15643132320', '文华', 1, '123456', '北京市朝阳区'),
(10, '15653132320', '张东', 1, '123456', '北京市丰台区'),
(11, '15663132320', '赵燕', 2, '456789', '北京市东城区'),
(12, '15673132320', '丁当', 2, '456789', '北京市西城区'),
(13, '15683132320', '白玉', 1, '123456', '北京市丰台区'),
(14, '15611132320', '范湉湉', 2, '123456', '北京市丰台区'),
(15, '15618132320', '吴京', 1, '456789', '北京市海淀区'),
(16, '15613132320', '于燕', 2, '456789', '北京市丰台区'),
(17, '15613232320', '成亮', 1, '123456', '北京市海淀区'),
(18, '15613332320', '丁伟', 1, '123456', '北京市丰台区'),
(19, '15613432320', '林当', 2, '456789', '北京市海淀区'),
(20, '15613532320', '窦志强', 1, '456789', '北京市丰台区'),
(21, '15613632320', '秦小雅', 2, '123456', '北京市朝阳区'),
(22, '15613732320', '李豆豆', 2, '123456', '北京市朝阳区'),
(23, '15613172320', '赵浩阳', 1, '456789', '北京市海淀区'),
(24, '15613182320', '丁浩阳', 1, '456789', '北京市海淀区'),
(25, '15613131320', '李浩阳', 1, '123456', '北京市朝阳区'),
(26, '15613132320', '张浩阳', 2, '123456', '北京市海淀区'),
(27, '15613133320', '赵俞文', 1, '456789', '北京市海淀区'),
(28, '15613134320', '丁俞文', 1, '456789', '北京市朝阳区'),
(29, '15613135320', '李俞文', 1, '123456', '北京市海淀区'),
(30, '15613136320', '张俞文', 2, '123456', '北京市海淀区'),
(31, '15613137320', '赵宸赫', 1, '456789', '北京市朝阳区'),
(32, '15613138320', '丁宸赫', 1, '456789', '北京市海淀区'),
(33, '18623132320', '李宸赫', 1, '123456', '北京市朝阳区'),
(34, '18633132320', '张宸赫', 2, '123456', '北京市海淀区'),
(35, '18643132320', '赵丽颖', 2, '456789', '北京市朝阳区'),
(36, '18653132320', '丁丽颖', 2, '456789', '北京市海淀区'),
(37, '18663132320', '李丽颖', 2, '123456', '北京市顺义区'),
(38, '18613132328', '张丽颖', 2, '123456', '北京市海淀区'),
(39, '18611132320', '赵玛希', 1, '456789', '北京市朝阳区'),
(40, '18612132320', '丁玛希', 1, '456789', '北京市海淀区'),
(41, '18613132320', '李玛希', 1, '123456', '北京市海淀区'),
(42, '18614132320', '张玛希', 2, '123456', '北京市海淀区'),
(43, '18615132320', '赵启帆', 1, '456789', '北京市海淀区'),
(44, '18613732320', '丁启帆', 1, '456789', '北京市石景山区'),
(45, '18613832320', '李启帆', 1, '123456', '北京市海淀区'),
(46, '18613135562', '张启帆', 1, '123456', '北京市海淀区'),
(47, '17613136666', '赵云霆', 1, '456789', '北京市石景山区'),
(48, '17613145277', '丁云霆', 1, '456789', '北京市海淀区'),
(49, '15937311278', '赵云霄', 1, '456789', '北京市石景山区'),
(50, '15935311279', '丁云霄', 1, '456789', '北京市海淀区'),
(51, '15934561280', '王云霄', 1, '456789', '北京市海淀区');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lt_area`
--
ALTER TABLE `lt_area`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `lt_package`
--
ALTER TABLE `lt_package`
  ADD PRIMARY KEY (`packageid`);

--
-- Indexes for table `lt_phone`
--
ALTER TABLE `lt_phone`
  ADD PRIMARY KEY (`phoneid`);

--
-- Indexes for table `lt_pic`
--
ALTER TABLE `lt_pic`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `lt_products`
--
ALTER TABLE `lt_products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `lt_products_details`
--
ALTER TABLE `lt_products_details`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `lt_user`
--
ALTER TABLE `lt_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `lt_area`
--
ALTER TABLE `lt_area`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `lt_package`
--
ALTER TABLE `lt_package`
  MODIFY `packageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `lt_phone`
--
ALTER TABLE `lt_phone`
  MODIFY `phoneid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- 使用表AUTO_INCREMENT `lt_pic`
--
ALTER TABLE `lt_pic`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用表AUTO_INCREMENT `lt_products`
--
ALTER TABLE `lt_products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `lt_products_details`
--
ALTER TABLE `lt_products_details`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `lt_user`
--
ALTER TABLE `lt_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
