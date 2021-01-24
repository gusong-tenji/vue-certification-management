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

INSERT INTO `employee` VALUES ( 'TJ0001',' 武藤理恵',' むとうりえ','2006-3-9');
INSERT INTO `employee` VALUES ( 'TJ0005',' 秋田正宏',' あきたまさひろ','2018-7-23');
INSERT INTO `employee` VALUES ( 'TJ0006',' 安室晴子',' やすむろはるこ','2018-2-1');
INSERT INTO `employee` VALUES ( 'TJ0007',' 姜暁琳',' きょうあかつきりん','2015-11-1');
INSERT INTO `employee` VALUES ( 'TJ0008',' 宋旭林',' そうあさひはやし','2010-11-8');
INSERT INTO `employee` VALUES ( 'TJ0009',' 崔花',' さいはな','2012-1-4');
INSERT INTO `employee` VALUES ( 'TJ0010',' 楊旭',' ようあさひ','2012-2-1');
INSERT INTO `employee` VALUES ( 'TJ0011',' 宝蘭',' たかららん','2014-6-11');
INSERT INTO `employee` VALUES ( 'TJ0012',' 車生才',' くるませいさい','2014-12-8');
INSERT INTO `employee` VALUES ( 'TJ0013',' 王琪',' おうき','2015-1-20');
INSERT INTO `employee` VALUES ( 'TJ0016',' 李洋',' りよう','2016-4-1');
INSERT INTO `employee` VALUES ( 'TJ0017',' 王政霖',' おうせいながあめ','2016-6-27');
INSERT INTO `employee` VALUES ( 'TJ0018',' 松浦正人',' まつうらまさと','2016-9-1');
INSERT INTO `employee` VALUES ( 'TJ0019',' 張輝',' はりてる','2016-10-1');
INSERT INTO `employee` VALUES ( 'TJ0020',' 谷松',' たにまつ','2016-10-24');
INSERT INTO `employee` VALUES ( 'TJ0022',' 時洋',' じひろし','2018-4-1');
INSERT INTO `employee` VALUES ( 'TJ0024',' 蓮池大悟',' はすいけだいご','2018-9-1');
INSERT INTO `employee` VALUES ( 'TJ0025',' 劉綺雯',' りゅうあやぶん','2019-1-8');
INSERT INTO `employee` VALUES ( 'TJ0026',' 毛延羿',' もうのぶげい','2018-9-1');
INSERT INTO `employee` VALUES ( 'TJ0027',' 高国棟',' たかくにとう','2013-10-1');
INSERT INTO `employee` VALUES ( 'TJ0029',' 矢田貝努',' やたがいつとむ','2014-4-1');
INSERT INTO `employee` VALUES ( 'TJ0032',' 林金思',' はやしきむし','2014-8-1');
INSERT INTO `employee` VALUES ( 'TJ0037',' 祁景紅',' けけいべに','2015-3-9');
INSERT INTO `employee` VALUES ( 'TJ0038',' 奈良風子',' ならふうこ','2015-4-1');
INSERT INTO `employee` VALUES ( 'TJ0041',' 富雪',' とみゆき','2016-3-1');
INSERT INTO `employee` VALUES ( 'TJ0059',' 徐媛媛',' じょひめひめ','2017-6-1');
INSERT INTO `employee` VALUES ( 'TJ0061',' 元鍾喆',' はじめしょうてつ','2017-7-1');
INSERT INTO `employee` VALUES ( 'TJ0063',' 王燕美',' おうつばめび','2017-7-1');
INSERT INTO `employee` VALUES ( 'TJ0065',' 王国威',' おうこくい','2017-9-1');
INSERT INTO `employee` VALUES ( 'TJ0068',' 金ヨンジェ',' きんよんじぇ','2017-9-1');
INSERT INTO `employee` VALUES ( 'TJ0070',' 王偉亜',' おういあ','2017-10-1');
INSERT INTO `employee` VALUES ( 'TJ0076',' 劉峰春',' りゅうみねはる','2017-12-1');
INSERT INTO `employee` VALUES ( 'TJ0080',' 楊曦辰',' ようきたつ','2018-2-16');
INSERT INTO `employee` VALUES ( 'TJ0081',' 李維肖',' りいしょう','2018-4-1');
INSERT INTO `employee` VALUES ( 'TJ0095',' 于海洋',' ゆかいよう','2019-4-1');
INSERT INTO `employee` VALUES ( 'TJ0102',' 王金萍',' おうきんうきくさ','2018-10-1');
INSERT INTO `employee` VALUES ( 'TJ0110',' 郭洪竜',' かくひろりゅう','2019-1-1');
INSERT INTO `employee` VALUES ( 'TJ0112',' 段岩',' だんいわ','2018-2-1');
INSERT INTO `employee` VALUES ( 'TJ0113',' 李雲輝',' りくもてる','2018-1-15');
INSERT INTO `employee` VALUES ( 'TJ0121',' 胡新雨',' えびすしんあめ','2019-3-1');
INSERT INTO `employee` VALUES ( 'TJ0122',' 薛行',' せちぎょう','2019-3-1');
INSERT INTO `employee` VALUES ( 'TJ0128',' 馬健',' うまけん','2019-5-1');
INSERT INTO `employee` VALUES ( 'TJ0131',' 温爽',' おんそう','2019-5-20');
INSERT INTO `employee` VALUES ( 'TJ0132',' 張博',' はりひろし','2019-7-1');
INSERT INTO `employee` VALUES ( 'TJ0140',' 任意飛',' にんいひ','2019-5-1');
INSERT INTO `employee` VALUES ( 'TJ0141',' 原田直樹',' はらだなおき','2019-7-1');
INSERT INTO `employee` VALUES ( 'TJ0142',' 蒋鵬飛',' しょうほうひ','2019-7-1');
INSERT INTO `employee` VALUES ( 'TJ0144',' 呉迪',' くれみち','2019-7-1');
INSERT INTO `employee` VALUES ( 'TJ0145',' 李明',' りあきら','2019-7-1');
INSERT INTO `employee` VALUES ( 'TJ0146',' 劉閲',' りゅうえつ','2019-7-1');
INSERT INTO `employee` VALUES ( 'TJ0163',' 魯艶軍',' ろつやぐん','2019-12-1');
INSERT INTO `employee` VALUES ( 'TJ0164',' 駱楊',' らくよう','2019-5-1');
INSERT INTO `employee` VALUES ( 'TJ0167',' 斉佳',' せいけい','2019-9-19');
INSERT INTO `employee` VALUES ( 'TJ0168',' 金房徹郎',' きむふさてつろう','2019-9-1');
INSERT INTO `employee` VALUES ( 'TJ0173',' 伊達伯明',' だてはくあきら','2019-9-9');
INSERT INTO `employee` VALUES ( 'TJ0178',' 許秋紅',' もとあきべに','2019-10-1');
INSERT INTO `employee` VALUES ( 'TJ0181',' 肖秋宝',' しょうあきたから','2019-11-1');
INSERT INTO `employee` VALUES ( 'TJ0182',' 江志達',' えこころざしたち','2019-11-1');
INSERT INTO `employee` VALUES ( 'TJ0188',' 洪花',' ひろはな','2019-12-1');
INSERT INTO `employee` VALUES ( 'TJ0191',' 中原栄仁子',' なかはらさかえさとこ','2019-11-15');
INSERT INTO `employee` VALUES ( 'TJ0193',' 薛娜娜',' せちなな','2019-11-25');
INSERT INTO `employee` VALUES ( 'TJ0195',' 張莉',' はりまり','2019-12-1');
INSERT INTO `employee` VALUES ( 'TJ0208',' 羅沛',' らぱい','2020-2-25');
INSERT INTO `employee` VALUES ( 'TJ0213',' 陳昊',' ちんそら','2020-4-1');
INSERT INTO `employee` VALUES ( 'TJ0214',' 王超偉',' おうちょうい','2020-5-1');
INSERT INTO `employee` VALUES ( 'TJ0218',' 兪林',' ゆはやし','2020-6-1');
INSERT INTO `employee` VALUES ( 'TJ0036',' 林坤華',' はやしこんはる','2015-1-5');
INSERT INTO `employee` VALUES ( 'TJ0047',' 白明',' しろあきら','2016-9-1');
INSERT INTO `employee` VALUES ( 'TJ0052',' 金光希',' かねみつき','2017-2-1');
INSERT INTO `employee` VALUES ( 'TJ0053',' 李江',' りえ','2017-2-1');
INSERT INTO `employee` VALUES ( 'TJ0069',' 夏立娜',' なつりつな','2017-10-1');
INSERT INTO `employee` VALUES ( 'TJ0073',' 沢井文昭',' さわいふみあき','2017-11-1');
INSERT INTO `employee` VALUES ( 'TJ0074',' 唐爽',' とうそう','2017-12-1');
INSERT INTO `employee` VALUES ( 'TJ0077',' 呉小双',' くれしょうそう','2017-12-1');
INSERT INTO `employee` VALUES ( 'TJ0088',' 宋旋',' そうせん','2018-6-22');
INSERT INTO `employee` VALUES ( 'TJ0099',' 朱翠薇',' しゅみどりび','2018-9-5');
INSERT INTO `employee` VALUES ( 'TJ0124',' 許実',' もとみのる','2019-3-18');
INSERT INTO `employee` VALUES ( 'TJ0215',' 魏博',' ぎひろし','2020-6-1');
INSERT INTO `employee` VALUES ( 'TJ0221',' 韓星哲',' かんほしてつ','2020-7-1');
INSERT INTO `employee` VALUES ( 'TJ0222',' 鄧超',' とうちょう','2020-7-1');
INSERT INTO `employee` VALUES ( 'TJ0224',' 烏日汗',' からすひあせ','2020-6-1');
INSERT INTO `employee` VALUES ( 'TJ0228',' 黄尹庭',' こうただにわ','2020-11-16');
INSERT INTO `employee` VALUES ( 'TJ0231',' 田淑麗',' でんしゅくれい','2021-1-5');
INSERT INTO `employee` VALUES ( 'TJ0034',' 夏斉園',' なつせいその','2014-9-1');
INSERT INTO `employee` VALUES ( 'TJ0043',' 王琳',' おうりん','2016-3-1');
INSERT INTO `employee` VALUES ( 'TJ0048',' 王濱',' おうはま','2016-10-1');
INSERT INTO `employee` VALUES ( 'TJ0049',' 陳浩',' ちんひろし','2017-1-1');
INSERT INTO `employee` VALUES ( 'TJ0050',' 王利萍',' おうとしうきくさ','2017-1-1');
INSERT INTO `employee` VALUES ( 'TJ0054',' 高炳龍',' こうあきりゅう','2017-2-21');
INSERT INTO `employee` VALUES ( 'TJ0056',' 董禄',' とうろく','2017-3-14');
INSERT INTO `employee` VALUES ( 'TJ0066',' 胡訴帆',' えびすそほ','2017-9-1');
INSERT INTO `employee` VALUES ( 'TJ0072',' 孫麗麗',' そんれいれい','2020-9-14');
INSERT INTO `employee` VALUES ( 'TJ0079',' 石国鋒',' いしこくほう','2018-5-1');
INSERT INTO `employee` VALUES ( 'TJ0106',' 胡名標',' ごめいひょう','2018-12-17');
INSERT INTO `employee` VALUES ( 'TJ0126',' 郭林',' かくはやし','2019-4-1');
INSERT INTO `employee` VALUES ( 'TJ0149',' 天時太郎',' てんじたろう','2019-7-22');
INSERT INTO `employee` VALUES ( 'TJ0160',' 穆巍',' ぼくたか','2019-9-1');
INSERT INTO `employee` VALUES ( 'TJ0194',' 櫻澤美絵',' さくらさわみえ','2019-11-19');
INSERT INTO `employee` VALUES ( 'TJ0200',' 椎良樹',' ついよしき','2015-7-1');
INSERT INTO `employee` VALUES ( 'TJ0209',' 張琦',' ちょうき','2020-4-1');
INSERT INTO `employee` VALUES ( 'TJ0210',' 湯永斌',' ゆえいひん','2020-3-1');
INSERT INTO `employee` VALUES ( 'TJ0211',' 郭剣超',' かくけんちょう','2020-11-1');
INSERT INTO `employee` VALUES ( 'TJ0216',' 劉鵬',' りゅうほう','2020-6-1');
INSERT INTO `employee` VALUES ( 'TJ0220',' 天野信幸',' あまののぶゆき','2020-7-1');
INSERT INTO `employee` VALUES ( 'TJ0229',' 王子麒',' おうじご','2020-11-18');
INSERT INTO `employee` VALUES ( 'TJ0230',' 単沉卓',' たんちんすぐる','2021-1-4');

-- --------------------------------------------------------

--
-- 表的结构 `employee_certification`
--

CREATE TABLE `employee_certification` (
  `employee_id` varchar(11) NOT NULL,
  `certification_id` int(11) NOT NULL AUTO_INCREMENT,
  `certification_id` varchar(11) NOT NULL,
  `certification_name` varchar(255) NOT NULL,
  `get_date` date NOT NULL,
  `encourage_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `employee_certification`
--

INSERT INTO `employee_certification` (`employee_id`, `certification_name`, `get_date`, `encourage_date`) VALUES
('tj0020', '日本語能力試験2級', '2008-10-01', '0000-00-00'),
('tj0020', 'salesForce developer', '2017-06-01', '2017-12-01');

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
