-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2020-12-20 09:08:34
-- 服务器版本： 10.4.11-MariaDB
-- PHP 版本： 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `tenji`
--

-- --------------------------------------------------------

--
-- 表的结构 `employee`
--

CREATE TABLE `employee` (
  `employee_id` varchar(11) NOT NULL COMMENT '社员ID',
  `name` varchar(255) NOT NULL COMMENT '名前',
  `frigana` varchar(255) NOT NULL COMMENT 'フリガナ',
  `entering_date` date NOT NULL COMMENT '入社年月日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `employee`
--

INSERT INTO `employee` (`employee_id`, `name`, `frigana`, `entering_date`) VALUES
('uh5340', '谷　松', 'コク　ショウ', '2015-10-20');

-- --------------------------------------------------------

--
-- 表的结构 `employee_certification`
--

CREATE TABLE `employee_certification` (
  `employee_id` varchar(11) NOT NULL,
  `certification_name` varchar(255) NOT NULL,
  `get_date` date NOT NULL,
  `encourage_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `employee_certification`
--

INSERT INTO `employee_certification` (`employee_id`, `certification_name`, `get_date`, `encourage_date`) VALUES
('uh5340', '日本語能力試験2級', '2008-10-01', '0000-00-00'),
('uh5340', 'salesForce developer', '2017-06-01', '2017-12-01');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `login_password` varchar(100) NOT NULL,
  `pay_password` varchar(100) DEFAULT NULL,
  `user_number` varchar(40) NOT NULL,
  `user_photo` varchar(200) DEFAULT NULL,
  `verification_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `login_password`, `pay_password`, `user_number`, `user_photo`, `verification_code`) VALUES
(5, 'admin', '6ff7a30292d84352262c1c8a44c9f2b0', NULL, 'admin', NULL, NULL),
(6, 'gusongtenji', '6dee26702cd7fbf51a583c32e5b733e7', NULL, 'gusongtenji', NULL, NULL),
(7, 'test1213', 'e371489c8066a33868209bea3d8be099', NULL, 'test1213', NULL, NULL);

--
-- 转储表的索引
--

--
-- 表的索引 `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
