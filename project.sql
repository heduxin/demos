-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2021-06-18 19:15:07
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `project`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123'),
(4, 'leon', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `scenics`
--

CREATE TABLE `scenics` (
  `id` int(10) NOT NULL,
  `name` char(40) DEFAULT NULL,
  `imgpath` text,
  `introduce` text,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(10) DEFAULT NULL COMMENT '库存',
  `pid` int(10) DEFAULT NULL,
  `isshowindex` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `scenics`
--

INSERT INTO `scenics` (`id`, `name`, `imgpath`, `introduce`, `price`, `stock`, `pid`, `isshowindex`) VALUES
(1, '小米净水器H1000G', 'https://img.youpin.mi-img.com/shopmain/76a10b39a3f6e1183062ee1dfb9d103b.jpg?w=800&h=800==========https://img.youpin.mi-img.com/shopmain/39bfe8b81162ddef4165d7977d8e9513.jpg==========https://img.youpin.mi-img.com/shopmain/2373b807f1d75ba72b5642aadf83a2c5.jpg@base@tag=imgScale&F=webp&h=1080&w=1080?w=1080&h=1080==========https://img.youpin.mi-img.com/shopmain/ed488fa8b1eb87e528217718630507ab.jpg@base@tag=imgScale&F=webp&h=166&w=166==========https://img.youpin.mi-img.com/shopmain/b906e1ba668146f41cea96e0c98b92f7.jpg@base@tag=imgScale&F=webp&h=1080&w=1080?w=1080&h=1080==========https://img.youpin.mi-img.com/shopmain/c2e2846cda460d55da8b1dca08f77f6a.jpg@base@tag=imgScale&F=webp&h=166&w=166==========https://img.youpin.mi-img.com/shopmain/b52762358e15ed3ae6b42d581b69c6a4.jpg@base@tag=imgScale&F=webp&h=166&w=166==========https://img.youpin.mi-img.com/shopmain/ba0fac967a5085557fc349e4ad7ea1ae.jpg@base@tag=imgScale&F=webp&h=166&w=166', '满99包邮', '25.50', 10, 2, NULL),
(2, '婴儿辅食料理机', 'https://img.youpin.mi-img.com/shopmain/39bfe8b81162ddef4165d7977d8e9513.jpg', '15W无线充电', '45.50', 10, 2, NULL),
(3, '飞利浦魅影吸顶灯', 'https://img.youpin.mi-img.com/shopmain/f53b68430d69c0ab42c275a331c80cb1.jpg', '年中狂欢正式开启，仅限3天', '250.00', 10, 2, NULL),
(4, 'TPE释压床垫', 'https://img.youpin.mi-img.com/shopmain/8d2becee7555abac6a95da57ae098d60.jpg', '舒压护臀 久坐不累', '25.00', 10, 2, NULL),
(5, '镂空自动机械表', 'https://img.youpin.mi-img.com/shopmain/d08ee90ccdbb21d92d62f47dce2d4da0.jpg', '', '25.00', 10, 2, NULL),
(6, '泰国VC爽肤水大瓶', 'https://img.youpin.mi-img.com/shopmain/edcfbed49a28e68cf7d45e6b1c33be32.jpg', '', '251.00', 10, 2, NULL),
(7, '姿美堂套装', 'https://img.youpin.mi-img.com/shopmain/f08594a101186ea86b6aa4d44b8acb6d.jpg', '', '255.00', 10, 2, NULL),
(8, '云米净水器400G', 'https://img.youpin.mi-img.com/shopmain/f181eb923aee0caba9dd6b1cba48b88f.jpg', '', '25.00', 10, 2, NULL),
(9, '北斗星C5蒸烤一体', 'https://img.youpin.mi-img.com/shopmain/cd146ef48912195f3f18f5bf781145e3.jpg', '', '25.00', 10, 2, NULL),
(10, '新1级空调1.5匹', 'https://img.youpin.mi-img.com/shopmain/c52646425bfc23f3a78af9940369f181.jpg', '', '25.00', 10, 2, NULL),
(11, '吉川雪平锅奶锅', 'https://img.youpin.mi-img.com/shopmain/f8c624f12b30d27f099eda635f097c41.jpg', '', '50.00', 10, 2, NULL),
(12, '曲面屏手表', 'https://img.youpin.mi-img.com/shopmain/7988922de13bc763959c638461f4a0e5.jpg', '', '25.00', 10, 2, NULL),
(13, '米家扫拖机器人', 'https://img.youpin.mi-img.com/shopmain/71fb8e2d2bad3d780fb4acd000c5daa7.jpg?w=800&h=800', '', '25.00', 10, 2, NULL),
(14, '悠启前开盖登机箱', 'https://img.youpin.mi-img.com/shopmain/ad5169205fb953e4a67463feabafa4fa.jpg', '', '80.00', 10, 2, NULL),
(15, '欧伟士电热毛巾架', 'https://img.youpin.mi-img.com/shopmain/c273749d8d39f0a512d37ac834caa364.jpg', '', '25.00', 10, 2, NULL),
(16, '薄荷抗菌家居服', 'https://img.youpin.mi-img.com/shopmain/78fbd2caf2c04f88050ddafc23cfdcd4.jpg', '', '25.00', 10, 2, NULL),
(17, '3070TI电脑主机', 'https://img.youpin.mi-img.com/shopmain/4e4afa51e00dac17e4b8e2b4b0b319e5.jpg', '', '100.00', 10, 2, NULL),
(18, '欧伟士电热毛巾架', 'https://img.youpin.mi-img.com/shopmain/c273749d8d39f0a512d37ac834caa364.jpg', '', '25.00', 10, 2, NULL),
(19, '男士手串', 'https://img.youpin.mi-img.com/shopmain/579452f09539d58fc86e70334e96da8b.jpg', '', '25.00', 10, 2, NULL),
(20, '扫地机器人', 'https://img.youpin.mi-img.com/shopmain/c8e3dd25557ae5a69d91a7ca28ea8dcc.jpg', '', '125.00', 10, 2, NULL),
(21, '灵芝孢子粉', 'https://img.youpin.mi-img.com/shopmain/5f7594072d25d384ede1fc67ccd3ff6e.jpg', '', '25.00', 10, 2, NULL),
(22, '米家纯净式加湿器', 'https://img.youpin.mi-img.com/shopmain/ae07c40e3ee66a7f94d7c8b334fa1e6d.jpg?w=800&h=800', '', '150.00', 10, 2, NULL),
(23, '智能跑步机', 'https://img.youpin.mi-img.com/shopmain/d9893ec81b5f3dcdab8a40a5e04eabca.jpg', '', '25.00', 10, 2, 1),
(24, 'SK-II护肤套装', 'https://img.youpin.mi-img.com/shopmain/ad30170b0594eb18940ba3a792ca7ba6.jpg', '', '25.00', 10, 2, 1),
(25, '便携折叠宠物推车', 'https://img.youpin.mi-img.com/shopmain/d3b3d5df8619eb481422e33ceb7f4d20.jpg', '', '25.00', 10, 2, NULL),
(26, 'Note10 Pro', 'https://img.youpin.mi-img.com/shopmain/8360c4db5fc27376858da42c1bbc8475.jpg?w=800&h=800', '', '25.00', 10, 2, NULL),
(27, '硅胶吸湿排汗枕', 'https://img.youpin.mi-img.com/shopmain/bbd90b0d1b6c47ce97293fa61a8c5637.jpg', '', '300.00', 10, 2, NULL),
(28, '兰亭系列吸顶灯', 'https://img.youpin.mi-img.com/shopmain/a40d751427910e773b2283a4439d6172.jpg', '', '25.00', 10, 2, 1),
(29, '筋膜按摩椅', 'https://img.youpin.mi-img.com/shopmain/340479e2d04c0207459b1e6ccf10417d.jpg', '', '25.00', 10, 2, NULL),
(30, '米家扫拖机器人', 'https://img.youpin.mi-img.com/shopmain/71fb8e2d2bad3d780fb4acd000c5daa7.jpg?w=800&h=800', '', '800.00', 10, 2, NULL),
(31, '燃气热水器C1', 'https://img.youpin.mi-img.com/shopmain/0f79ea182acb8d1d9cdf3644c78024fb.jpg', '', '25.00', 10, 2, 1),
(32, '小米降噪耳机', 'https://img.youpin.mi-img.com/shopmain/1c2da905ffcb11379bc45e3e3035e1f4.jpg?w=800&h=800', '', '25.00', 10, 2, NULL),
(33, '奶蓟草肝肾要', 'https://img.youpin.mi-img.com/shopmain/705cef78719ea50ad2eb73940e24a06c.jpg', '', '25.00', 10, 2, 1),
(34, '简约椅子', 'https://img.youpin.mi-img.com/shopmain/81030fff01ad87cb8771dc50d33305dd.jpg', '', '1000.00', 10, 2, NULL),
(35, '墨玉吊坠', 'https://img.youpin.mi-img.com/shopmain/d484a51f7942147bd8115cf49ff82010.jpg', '', '25.00', 10, 2, 1),
(36, '智米智能马桶', 'https://img.youpin.mi-img.com/shopmain/0b6f18d7e09f73e693ec8e6a8e6a9bc5.jpg', '', '25.00', 10, 2, NULL),
(37, '悠启全自动伞', 'https://img.youpin.mi-img.com/shopmain/eb566ac885221af50a38b70286649d47.jpg', '', '25.00', 10, 2, 1),
(38, '氮化该充电器65W', 'https://img.youpin.mi-img.com/shopmain/81f869b00d0ad4353d59af614bd2ce88.jpg?w=800&h=800', '', '65.00', 10, 2, 1),
(39, '曲面屏手表', 'https://img.youpin.mi-img.com/shopmain/7988922de13bc763959c638461f4a0e5.jpg', '', '25.00', 10, 2, NULL),
(40, 'xiaovv智能摄像机', 'https://img.youpin.mi-img.com/shopmain/2c1e69aa969a92649a437da2add364e3.png@base@tag=imgScale&F=webp&h=800&w=800?w=800&h=800', '', '100.00', 20, 13, 1),
(41, 'Guuka运动七分裤', 'https://img.youpin.mi-img.com/shopmain/061ad73f33935cd4a20ac5e533f62353.png@base@tag=imgScale&F=webp&h=800&w=800?w=800&h=800', '', '50.00', 6, 13, 1),
(42, '金韵天成系列沙发', 'https://img.youpin.mi-img.com/shopmain/c2299ef02c22a1f86c06470a84ee20d7.png@base@tag=imgScale&F=webp&h=800&w=800?w=800&h=800', '', '20.00', 15, 13, 1),
(43, 'New Balance休闲鞋', 'https://img.youpin.mi-img.com/shopmain/7a94855bc552d831d20c3ec202986f4b.png@base@tag=imgScale&F=webp&h=800&w=800?w=800&h=800', '', '86.00', 50, 13, 1),
(44, '破壁灵芝孢子粉', 'https://img.youpin.mi-img.com/shopmain/5f7594072d25d384ede1fc67ccd3ff6e.jpg', '', '25.50', 10, 13, NULL),
(45, '悠启前开盖登机箱', 'https://img.youpin.mi-img.com/shopmain/ad5169205fb953e4a67463feabafa4fa.jpg', '', '1000.00', 1, 13, NULL),
(46, 'Redmi AirDots 3', 'https://img.youpin.mi-img.com/shopmain/cc5f02560b9a20dd6bf4859a27b7d9e7.jpg?w=800&h=800', '', '25.00', 6, 13, NULL),
(47, '新1级空调1.5匹', 'https://img.youpin.mi-img.com/shopmain/c52646425bfc23f3a78af9940369f181.jpg', '', '100.00', 15, 13, NULL),
(48, '扫地机器人', 'https://img.youpin.mi-img.com/shopmain/71fb8e2d2bad3d780fb4acd000c5daa7.jpg?w=800&h=800', '', '50.00', 50, 13, NULL),
(49, '睡眠口喷', 'https://img.youpin.mi-img.com/shopmain/b0381bfb9a70b2feb6389b9156ef1fea.jpg', '', '20.00', 10, 13, NULL),
(50, '苗家酸汤脆骨鲜粉', 'https://img.youpin.mi-img.com/shopmain/e794d2d48420ad6a435f0039555732b4.jpg', '', '86.00', 20, 13, NULL),
(51, '音视频会议扬声器', 'https://img.youpin.mi-img.com/shopmain/8b51e8f118d6639d2fe4d3d76de41537.jpg?w=800&h=800', '', '25.00', 6, 13, NULL),
(52, '吉川雪平锅奶锅', 'https://img.youpin.mi-img.com/shopmain/f8c624f12b30d27f099eda635f097c41.jpg', '', '100.00', 15, 13, NULL),
(53, '实木茶具茶盘套装', 'https://img.youpin.mi-img.com/shopmain/2b9a4f87cfbf92bbb4949f0e2aae6305.jpg', '', '50.00', 10, 13, NULL),
(54, '薄荷抗菌家居服', 'https://img.youpin.mi-img.com/shopmain/78fbd2caf2c04f88050ddafc23cfdcd4.jpg', '', '20.00', 20, 13, NULL),
(55, '智米智能马桶', 'https://img.youpin.mi-img.com/shopmain/0b6f18d7e09f73e693ec8e6a8e6a9bc5.jpg', '', '86.00', 6, 13, NULL),
(56, '曲面屏手表', 'https://img.youpin.mi-img.com/shopmain/7988922de13bc763959c638461f4a0e5.jpg', '', '25.00', 15, 13, NULL),
(57, '悠启前开盖登机箱', 'https://img.youpin.mi-img.com/shopmain/ad5169205fb953e4a67463feabafa4fa.jpg', '', '100.00', 50, 13, NULL),
(58, 'Redmi AirDots 3', 'https://img.youpin.mi-img.com/shopmain/cc5f02560b9a20dd6bf4859a27b7d9e7.jpg?w=800&h=800', '', '50.00', 10, 13, NULL),
(59, '扫地机器人', 'https://img.youpin.mi-img.com/shopmain/71fb8e2d2bad3d780fb4acd000c5daa7.jpg?w=800&h=800', '', '20.00', 20, 13, NULL),
(60, '睡眠口喷', 'https://img.youpin.mi-img.com/shopmain/b0381bfb9a70b2feb6389b9156ef1fea.jpg', '', '86.00', 6, 13, NULL),
(61, '苗家酸汤脆骨鲜粉', 'https://img.youpin.mi-img.com/shopmain/e794d2d48420ad6a435f0039555732b4.jpg', '', '25.00', 15, 13, NULL),
(62, '音视频会议扬声器', 'https://img.youpin.mi-img.com/shopmain/8b51e8f118d6639d2fe4d3d76de41537.jpg?w=800&h=800', '', '100.00', 50, 13, NULL),
(63, '吉川雪平锅奶锅', 'https://img.youpin.mi-img.com/shopmain/f8c624f12b30d27f099eda635f097c41.jpg', '', '50.00', 10, 13, NULL),
(64, '实木茶具茶盘套装', 'https://img.youpin.mi-img.com/shopmain/2b9a4f87cfbf92bbb4949f0e2aae6305.jpg', '', '20.00', 20, 13, NULL),
(65, '薄荷抗菌家居服', 'https://img.youpin.mi-img.com/shopmain/78fbd2caf2c04f88050ddafc23cfdcd4.jpg', '', '86.00', 6, 13, NULL),
(66, '智能马桶', 'https://img.youpin.mi-img.com/shopmain/0b6f18d7e09f73e693ec8e6a8e6a9bc5.jpg', '', '20.00', 15, 13, NULL),
(67, '欧伟士电热毛巾架', 'https://img.youpin.mi-img.com/shopmain/c273749d8d39f0a512d37ac834caa364.jpg', '', '12.00', 12, 13, 0);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `tel` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `tel`, `email`) VALUES
(22, 'zhangsan', '123456', 13590435316, 'leoncoder@163.com'),
(1, 'admin', '123456', 13590435316, 'leoncoder@163.com'),
(2, 'leon', '123456', 13590435316, 'leoncoder@163.com'),
(23, 'admit', '123456', 18977930553, '123456@qq.com');

--
-- 转储表的索引
--

--
-- 表的索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `scenics`
--
ALTER TABLE `scenics`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `scenics`
--
ALTER TABLE `scenics`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
