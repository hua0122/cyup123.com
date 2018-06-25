-- phpMyAdmin SQL Dump
-- version 3.4.8
-- http://www.phpmyadmin.net
--
-- 主机: sql.hk224.vhostgo.com
-- 生成日期: 2017 年 06 月 21 日 09:23
-- 服务器版本: 5.6.17
-- PHP 版本: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `newteng`
--

-- --------------------------------------------------------

--
-- 表的结构 `newt_abc`
--

CREATE TABLE IF NOT EXISTS `newt_abc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `remark` varchar(50) DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `setting` varchar(200) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  `num` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '调用数',
  `items` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `newt_abc`
--

INSERT INTO `newt_abc` (`id`, `name`, `remark`, `width`, `height`, `setting`, `type`, `num`, `items`) VALUES
(1, '首页幻灯', '首页', 722, 257, '<loop><li><a href="{$url}"><img src="{$content}" width="{$width}" height="{$height}" /></a></li></loop>', 2, 2, 2);

-- --------------------------------------------------------

--
-- 表的结构 `newt_abc_detail`
--

CREATE TABLE IF NOT EXISTS `newt_abc_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '',
  `content` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `newt_abc_detail`
--

INSERT INTO `newt_abc_detail` (`id`, `title`, `content`, `url`, `starttime`, `endtime`, `aid`, `sort`, `status`) VALUES
(1, '图片1', 'http://img9.xyhcms.com/banner/p1.jpg', '#', 1416276000, 1924912800, 1, 1, 1),
(2, '图片2', 'http://img9.xyhcms.com/banner/p2.jpg', '#', 1416276000, 1924912800, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `newt_access`
--

CREATE TABLE IF NOT EXISTS `newt_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `newt_access`
--

INSERT INTO `newt_access` (`role_id`, `node_id`, `level`, `module`) VALUES
(1, 7, 1, NULL),
(1, 105, 3, NULL),
(1, 104, 3, NULL),
(1, 103, 3, NULL),
(1, 102, 3, NULL),
(1, 101, 2, NULL),
(1, 90, 3, NULL),
(1, 88, 3, NULL),
(1, 87, 2, NULL),
(1, 58, 3, NULL),
(1, 57, 3, NULL),
(1, 56, 2, NULL),
(1, 54, 3, NULL),
(1, 52, 3, NULL),
(1, 51, 2, NULL),
(1, 30, 3, NULL),
(1, 28, 3, NULL),
(1, 27, 3, NULL),
(1, 26, 3, NULL),
(1, 25, 2, NULL),
(1, 20, 3, NULL),
(1, 19, 2, NULL),
(1, 55, 3, NULL),
(1, 18, 3, NULL),
(1, 17, 2, NULL),
(1, 137, 3, NULL),
(1, 136, 3, NULL),
(1, 135, 3, NULL),
(1, 134, 3, NULL),
(1, 133, 2, NULL),
(1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `newt_active`
--

CREATE TABLE IF NOT EXISTS `newt_active` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  `code` varchar(11) NOT NULL DEFAULT '' COMMENT '激活码',
  `expire` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '激活时间',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `newt_admin`
--

CREATE TABLE IF NOT EXISTS `newt_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `encrypt` varchar(6) NOT NULL DEFAULT '',
  `realname` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `usertype` tinyint(4) NOT NULL DEFAULT '0',
  `logintime` int(10) unsigned NOT NULL COMMENT '登录时间',
  `loginip` varchar(30) NOT NULL COMMENT '登录IP',
  `islock` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '锁定状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='网站后台管理员表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `newt_admin`
--

INSERT INTO `newt_admin` (`id`, `username`, `password`, `encrypt`, `realname`, `email`, `usertype`, `logintime`, `loginip`, `islock`) VALUES
(1, 'newteng', '8b864b49e667b34c7a5ad781a458070e', 'Xr1WJq', '', '', 9, 1496468255, '113.251.17.135', 0),
(2, 'caiyang', 'e0609d3ee703d9318422d0aaa10310c7', 'vmrKXR', 'caiyang', '', 0, 1495098974, '0.0.0.0', 0);

-- --------------------------------------------------------

--
-- 表的结构 `newt_announce`
--

CREATE TABLE IF NOT EXISTS `newt_announce` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `newt_announce`
--

INSERT INTO `newt_announce` (`id`, `title`, `content`, `starttime`, `endtime`, `status`, `posttime`) VALUES
(1, '手机版网站开通', '<p>手机版网站开通，用手机版网站开通手机访问http://demo.0871k.com 即可访问手机站</p>', 0, 1525048560, 1, 1396399014);

-- --------------------------------------------------------

--
-- 表的结构 `newt_area`
--

CREATE TABLE IF NOT EXISTS `newt_area` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `sname` varchar(10) NOT NULL DEFAULT '' COMMENT '简称',
  `ename` varchar(50) NOT NULL DEFAULT '',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `newt_area`
--

INSERT INTO `newt_area` (`id`, `name`, `sname`, `ename`, `pid`, `sort`) VALUES
(1, '北京市', '北京', '', 0, 0),
(2, '上海市', '上海', '', 0, 0),
(3, '天津市', '天津', '', 0, 0),
(4, '重庆市', '重庆', '', 0, 0),
(5, '广东省', '广东', '', 0, 0),
(6, '福建省', '福建', '', 0, 0),
(7, '浙江省', '浙江', '', 0, 0),
(8, '江苏省', '江苏', '', 0, 0),
(9, '山东省', '山东', '', 0, 0),
(10, '辽宁省', '辽宁', '', 0, 0),
(11, '江西省', '江西', '', 0, 0),
(12, '四川省', '四川', '', 0, 0),
(13, '陕西省', '陕西', '', 0, 0),
(14, '湖北省', '湖北', '', 0, 0),
(15, '河南省', '河南', '', 0, 0),
(16, '河北省', '河北', '', 0, 0),
(17, '山西省', '山西', '', 0, 0),
(18, '内蒙古', '内蒙古', '', 0, 0),
(19, '吉林省', '吉林', '', 0, 0),
(20, '黑龙江', '黑龙江', '', 0, 0),
(21, '安徽省', '安徽', '', 0, 0),
(22, '湖南省', '湖南', '', 0, 0),
(23, '广西', '广西', '', 0, 0),
(24, '海南省', '海南', '', 0, 0),
(25, '云南省', '云南', '', 0, 0),
(26, '贵州省', '贵州', '', 0, 0),
(27, '西藏', '西藏', '', 0, 0),
(28, '甘肃省', '甘肃', '', 0, 0),
(29, '宁夏区', '宁夏区', '', 0, 0),
(30, '青海省', '青海', '', 0, 0),
(31, '新疆', '新疆', '', 0, 0),
(32, '香港', '香港', '', 0, 0),
(33, '澳门', '澳门', '', 0, 0),
(34, '台湾省', '台湾', '', 0, 0),
(60, '海外', '海外', '', 0, 0),
(101, '东城区', '东城区', '', 1, 0),
(102, '西城区', '西城区', '', 1, 0),
(103, '崇文区', '崇文区', '', 1, 0),
(104, '宣武区', '宣武区', '', 1, 0),
(105, '朝阳区', '朝阳区', '', 1, 0),
(106, '海淀区', '海淀区', '', 1, 0),
(107, '丰台区', '丰台区', '', 1, 0),
(108, '石景山区', '石景山区', '', 1, 0),
(109, '门头沟区', '门头沟区', '', 1, 0),
(110, '房山区', '房山区', '', 1, 0),
(111, '通州区', '通区', '', 1, 0),
(112, '顺义区', '顺义区', '', 1, 0),
(113, '昌平区', '昌平区', '', 1, 0),
(114, '大兴区', '大兴区', '', 1, 0),
(115, '平谷县', '平谷县', '', 1, 0),
(116, '怀柔县', '怀柔县', '', 1, 0),
(117, '密云县', '密云县', '', 1, 0),
(118, '延庆县', '延庆县', '', 1, 0),
(201, '黄浦区', '黄浦区', '', 2, 0),
(202, '卢湾区', '卢湾区', '', 2, 0),
(203, '徐汇区', '徐汇区', '', 2, 0),
(204, '长宁区', '长宁区', '', 2, 0),
(205, '静安区', '静安区', '', 2, 0),
(206, '普陀区', '普陀区', '', 2, 0),
(207, '闸北区', '闸北区', '', 2, 0),
(208, '虹口区', '虹口区', '', 2, 0),
(209, '杨浦区', '杨浦区', '', 2, 0),
(210, '宝山区', '宝山区', '', 2, 0),
(211, '闵行区', '闵行区', '', 2, 0),
(212, '嘉定区', '嘉定区', '', 2, 0),
(213, '浦东新区', '浦东新区', '', 2, 0),
(214, '松江区', '松江区', '', 2, 0),
(215, '金山区', '金山区', '', 2, 0),
(216, '青浦区', '青浦区', '', 2, 0),
(217, '南汇区', '南汇区', '', 2, 0),
(218, '奉贤区', '奉贤区', '', 2, 0),
(219, '崇明县', '崇明县', '', 2, 0),
(301, '和平区', '和平区', '', 3, 0),
(302, '河东区', '河东区', '', 3, 0),
(303, '河西区', '河西区', '', 3, 0),
(304, '南开区', '南开区', '', 3, 0),
(305, '河北区', '河北区', '', 3, 0),
(306, '红桥区', '红桥区', '', 3, 0),
(307, '塘沽区', '塘沽区', '', 3, 0),
(308, '汉沽区', '汉沽区', '', 3, 0),
(309, '大港区', '大港区', '', 3, 0),
(310, '东丽区', '东丽区', '', 3, 0),
(311, '西青区', '西青区', '', 3, 0),
(312, '北辰区', '北辰区', '', 3, 0),
(313, '津南区', '津南区', '', 3, 0),
(314, '武清区', '武清区', '', 3, 0),
(315, '宝坻区', '宝坻区', '', 3, 0),
(316, '静海县', '静海县', '', 3, 0),
(317, '宁河县', '宁河县', '', 3, 0),
(318, '蓟县', '蓟县', '', 3, 0),
(401, '渝中区', '渝中区', '', 4, 0),
(402, '大渡口区', '大渡口区', '', 4, 0),
(403, '江北区', '江北区', '', 4, 0),
(404, '沙坪坝区', '沙坪坝区', '', 4, 0),
(405, '九龙坡区', '九龙坡区', '', 4, 0),
(406, '南岸区', '南岸区', '', 4, 0),
(407, '北碚区', '北碚区', '', 4, 0),
(408, '万盛区', '万盛区', '', 4, 0),
(409, '双桥区', '双桥区', '', 4, 0),
(410, '渝北区', '渝北区', '', 4, 0),
(411, '巴南区', '巴南区', '', 4, 0),
(412, '万州区', '万区', '', 4, 0),
(413, '涪陵区', '涪陵区', '', 4, 0),
(414, '黔江区', '黔江区', '', 4, 0),
(415, '永川市', '永川', '', 4, 0),
(416, '合川市', '合川', '', 4, 0),
(417, '江津市', '江津', '', 4, 0),
(418, '南川市', '南川', '', 4, 0),
(419, '长寿县', '长寿县', '', 4, 0),
(420, '綦江县', '綦江县', '', 4, 0),
(421, '潼南县', '潼南县', '', 4, 0),
(422, '荣昌县', '荣昌县', '', 4, 0),
(423, '璧山县', '璧山县', '', 4, 0),
(424, '大足县', '大足县', '', 4, 0),
(425, '铜梁县', '铜梁县', '', 4, 0),
(426, '梁平县', '梁平县', '', 4, 0),
(427, '城口县', '城口县', '', 4, 0),
(428, '垫江县', '垫江县', '', 4, 0),
(429, '武隆县', '武隆县', '', 4, 0),
(430, '丰都县', '丰都县', '', 4, 0),
(431, '奉节县', '奉节县', '', 4, 0),
(432, '开县', '开县', '', 4, 0),
(433, '云阳县', '云阳县', '', 4, 0),
(434, '忠县', '忠县', '', 4, 0),
(435, '巫溪县', '巫溪县', '', 4, 0),
(436, '巫山县', '巫山县', '', 4, 0),
(437, '石柱县', '石柱县', '', 4, 0),
(438, '秀山县', '秀山县', '', 4, 0),
(439, '酉阳县', '酉阳县', '', 4, 0),
(440, '彭水县', '彭水县', '', 4, 0),
(501, '广州市', '广州', '', 5, 0),
(502, '深圳市', '深圳', '', 5, 0),
(503, '珠海市', '珠海', '', 5, 0),
(504, '汕头市', '汕头', '', 5, 0),
(505, '韶关市', '韶关', '', 5, 0),
(506, '河源市', '河源', '', 5, 0),
(507, '梅州市', '梅州', '', 5, 0),
(508, '惠州市', '惠州', '', 5, 0),
(509, '汕尾市', '汕尾', '', 5, 0),
(510, '东莞市', '东莞', '', 5, 0),
(511, '中山市', '中山', '', 5, 0),
(512, '江门市', '江门', '', 5, 0),
(513, '佛山市', '佛山', '', 5, 0),
(514, '阳江市', '阳江', '', 5, 0),
(515, '湛江市', '湛江', '', 5, 0),
(516, '茂名市', '茂名', '', 5, 0),
(517, '肇庆市', '肇庆', '', 5, 0),
(518, '清远市', '清远', '', 5, 0),
(519, '潮州市', '潮州', '', 5, 0),
(520, '揭阳市', '揭阳', '', 5, 0),
(521, '云浮市', '云浮', '', 5, 0),
(601, '福州市', '福州', '', 6, 0),
(602, '厦门市', '厦门', '', 6, 0),
(603, '三明市', '三明', '', 6, 0),
(604, '莆田市', '莆田', '', 6, 0),
(605, '泉州市', '泉州', '', 6, 0),
(606, '漳州市', '漳州', '', 6, 0),
(607, '南平市', '南平', '', 6, 0),
(608, '龙岩市', '龙岩', '', 6, 0),
(609, '宁德市', '宁德', '', 6, 0),
(701, '杭州市', '杭州', '', 7, 0),
(702, '宁波市', '宁波', '', 7, 0),
(703, '温州市', '温州', '', 7, 0),
(704, '嘉兴市', '嘉兴', '', 7, 0),
(705, '湖州市', '湖州', '', 7, 0),
(706, '绍兴市', '绍兴', '', 7, 0),
(707, '金华市', '金华', '', 7, 0),
(708, '衢州市', '衢州', '', 7, 0),
(709, '舟山市', '舟山', '', 7, 0),
(710, '台州市', '台州', '', 7, 0),
(711, '丽水市', '丽水', '', 7, 0),
(801, '南京市', '南京', '', 8, 0),
(802, '徐州市', '徐州', '', 8, 0),
(803, '连云港市', '连云港', '', 8, 0),
(804, '淮安市', '淮安', '', 8, 0),
(805, '宿迁市', '宿迁', '', 8, 0),
(806, '盐城市', '盐城', '', 8, 0),
(807, '扬州市', '扬州', '', 8, 0),
(808, '泰州市', '泰州', '', 8, 0),
(809, '南通市', '南通', '', 8, 0),
(810, '镇江市', '镇江', '', 8, 0),
(811, '常州市', '常州', '', 8, 0),
(812, '无锡市', '无锡', '', 8, 0),
(813, '苏州市', '苏州', '', 8, 0),
(901, '济南市', '济南', '', 9, 0),
(902, '青岛市', '青岛', '', 9, 0),
(903, '淄博市', '淄博', '', 9, 0),
(904, '枣庄市', '枣庄', '', 9, 0),
(905, '东营市', '东营', '', 9, 0),
(906, '潍坊市', '潍坊', '', 9, 0),
(907, '烟台市', '烟台', '', 9, 0),
(908, '威海市', '威海', '', 9, 0),
(909, '济宁市', '济宁', '', 9, 0),
(910, '泰安市', '泰安', '', 9, 0),
(911, '日照市', '日照', '', 9, 0),
(912, '莱芜市', '莱芜', '', 9, 0),
(913, '德州市', '德州', '', 9, 0),
(914, '临沂市', '临沂', '', 9, 0),
(915, '聊城市', '聊城', '', 9, 0),
(916, '滨州市', '滨州', '', 9, 0),
(917, '菏泽市', '菏泽', '', 9, 0),
(1001, '沈阳市', '沈阳', '', 10, 0),
(1002, '大连市', '大连', '', 10, 0),
(1003, '鞍山市', '鞍山', '', 10, 0),
(1004, '抚顺市', '抚顺', '', 10, 0),
(1005, '本溪市', '本溪', '', 10, 0),
(1006, '丹东市', '丹东', '', 10, 0),
(1007, '锦州市', '锦州', '', 10, 0),
(1008, '葫芦岛市', '葫芦岛', '', 10, 0),
(1009, '营口市', '营口', '', 10, 0),
(1010, '盘锦市', '盘锦', '', 10, 0),
(1011, '阜新市', '阜新', '', 10, 0),
(1012, '辽阳市', '辽阳', '', 10, 0),
(1013, '铁岭市', '铁岭', '', 10, 0),
(1014, '朝阳市', '朝阳', '', 10, 0),
(1101, '南昌市', '南昌', '', 11, 0),
(1102, '景德镇市', '景德镇', '', 11, 0),
(1103, '萍乡市', '萍乡', '', 11, 0),
(1104, '新余市', '新余', '', 11, 0),
(1105, '九江市', '九江', '', 11, 0),
(1106, '鹰潭市', '鹰潭', '', 11, 0),
(1107, '赣州市', '赣州', '', 11, 0),
(1108, '吉安市', '吉安', '', 11, 0),
(1109, '宜春市', '宜春', '', 11, 0),
(1110, '抚州市', '抚州', '', 11, 0),
(1111, '上饶市', '上饶', '', 11, 0),
(1201, '成都市', '成都', '', 12, 0),
(1202, '自贡市', '自贡', '', 12, 0),
(1203, '攀枝花市', '攀枝花', '', 12, 0),
(1204, '泸州市', '泸州', '', 12, 0),
(1205, '德阳市', '德阳', '', 12, 0),
(1206, '绵阳市', '绵阳', '', 12, 0),
(1207, '广元市', '广元', '', 12, 0),
(1208, '遂宁市', '遂宁', '', 12, 0),
(1209, '内江市', '内江', '', 12, 0),
(1210, '乐山市', '乐山', '', 12, 0),
(1211, '南充市', '南充', '', 12, 0),
(1212, '宜宾市', '宜宾', '', 12, 0),
(1213, '广安市', '广安', '', 12, 0),
(1214, '达州市', '达州', '', 12, 0),
(1215, '巴中市', '巴中', '', 12, 0),
(1216, '雅安市', '雅安', '', 12, 0),
(1217, '眉山市', '眉山', '', 12, 0),
(1218, '资阳市', '资阳', '', 12, 0),
(1219, '阿坝州', '阿坝', '', 12, 0),
(1220, '甘孜州', '甘孜', '', 12, 0),
(1221, '凉山州', '凉山', '', 12, 0),
(3114, '西安市', '西安', '', 13, 0),
(1302, '铜川市', '铜川', '', 13, 0),
(1303, '宝鸡市', '宝鸡', '', 13, 0),
(1304, '咸阳市', '咸阳', '', 13, 0),
(1305, '渭南市', '渭南', '', 13, 0),
(1306, '延安市', '延安', '', 13, 0),
(1307, '汉中市', '汉中', '', 13, 0),
(1308, '榆林市', '榆林', '', 13, 0),
(1309, '安康市', '安康', '', 13, 0),
(1310, '商洛地区', '商洛地区', '', 13, 0),
(1401, '武汉市', '武汉', '', 14, 0),
(1402, '黄石市', '黄石', '', 14, 0),
(1403, '襄樊市', '襄樊', '', 14, 0),
(1404, '十堰市', '十堰', '', 14, 0),
(1405, '荆州市', '荆州', '', 14, 0),
(1406, '宜昌市', '宜昌', '', 14, 0),
(1407, '荆门市', '荆门', '', 14, 0),
(1408, '鄂州市', '鄂州', '', 14, 0),
(1409, '孝感市', '孝感', '', 14, 0),
(1410, '黄冈市', '黄冈', '', 14, 0),
(1411, '咸宁市', '咸宁', '', 14, 0),
(1412, '随州市', '随州', '', 14, 0),
(1413, '仙桃市', '仙桃', '', 14, 0),
(1414, '天门市', '天门', '', 14, 0),
(1415, '潜江市', '潜江', '', 14, 0),
(1416, '神农架', '神农架', '', 14, 0),
(1417, '恩施州', '恩施', '', 14, 0),
(1501, '郑州市', '郑州', '', 15, 0),
(1502, '开封市', '开封', '', 15, 0),
(1503, '洛阳市', '洛阳', '', 15, 0),
(1504, '平顶山市', '平顶山', '', 15, 0),
(1505, '焦作市', '焦作', '', 15, 0),
(1506, '鹤壁市', '鹤壁', '', 15, 0),
(1507, '新乡市', '新乡', '', 15, 0),
(1508, '安阳市', '安阳', '', 15, 0),
(1509, '濮阳市', '濮阳', '', 15, 0),
(1510, '许昌市', '许昌', '', 15, 0),
(1511, '漯河市', '漯河', '', 15, 0),
(1512, '三门峡市', '三门峡', '', 15, 0),
(1513, '南阳市', '南阳', '', 15, 0),
(1514, '商丘市', '商丘', '', 15, 0),
(1515, '信阳市', '信阳', '', 15, 0),
(1516, '周口市', '周口', '', 15, 0),
(1517, '驻马店市', '驻马店', '', 15, 0),
(1518, '济源市', '济源', '', 15, 0),
(1601, '石家庄市', '石家庄', '', 16, 0),
(1602, '唐山市', '唐山', '', 16, 0),
(1603, '秦皇岛市', '秦皇岛', '', 16, 0),
(1604, '邯郸市', '邯郸', '', 16, 0),
(1605, '邢台市', '邢台', '', 16, 0),
(1606, '保定市', '保定', '', 16, 0),
(1607, '张家口市', '张家口', '', 16, 0),
(1608, '承德市', '承德', '', 16, 0),
(1609, '沧州市', '沧州', '', 16, 0),
(1610, '廊坊市', '廊坊', '', 16, 0),
(1611, '衡水市', '衡水', '', 16, 0),
(1701, '太原市', '太原', '', 17, 0),
(1702, '大同市', '大同', '', 17, 0),
(1703, '阳泉市', '阳泉', '', 17, 0),
(1704, '长治市', '长治', '', 17, 0),
(1705, '晋城市', '晋城', '', 17, 0),
(1706, '朔州市', '朔州', '', 17, 0),
(1707, '晋中市', '晋中', '', 17, 0),
(1708, '忻州市', '忻州', '', 17, 0),
(1709, '临汾市', '临汾', '', 17, 0),
(1710, '运城市', '运城', '', 17, 0),
(1711, '吕梁地区', '吕梁地区', '', 17, 0),
(1801, '呼和浩特', '呼和浩特', '', 18, 0),
(1802, '包头市', '包头', '', 18, 0),
(1803, '乌海市', '乌海', '', 18, 0),
(1804, '赤峰市', '赤峰', '', 18, 0),
(1805, '通辽市', '通辽', '', 18, 0),
(1806, '鄂尔多斯', '鄂尔多斯', '', 18, 0),
(1807, '乌兰察布', '乌兰察布', '', 18, 0),
(1808, '锡林郭勒', '锡林郭勒', '', 18, 0),
(1809, '呼伦贝尔', '呼伦贝尔', '', 18, 0),
(1810, '巴彦淖尔', '巴彦淖尔', '', 18, 0),
(1811, '阿拉善盟', '阿拉善盟', '', 18, 0),
(1812, '兴安盟', '兴安盟', '', 18, 0),
(1901, '长春市', '长春', '', 19, 0),
(1902, '吉林市', '吉林', '', 19, 0),
(1903, '四平市', '四平', '', 19, 0),
(1904, '辽源市', '辽源', '', 19, 0),
(1905, '通化市', '通化', '', 19, 0),
(1906, '白山市', '白山', '', 19, 0),
(1907, '松原市', '松原', '', 19, 0),
(1908, '白城市', '白城', '', 19, 0),
(1909, '延边州', '延边', '', 19, 0),
(2001, '哈尔滨市', '哈尔滨', '', 20, 0),
(2002, '齐齐哈尔', '齐齐哈尔', '', 20, 0),
(2003, '鹤岗市', '鹤岗', '', 20, 0),
(2004, '双鸭山市', '双鸭山', '', 20, 0),
(2005, '鸡西市', '鸡西', '', 20, 0),
(2006, '大庆市', '大庆', '', 20, 0),
(2007, '伊春市', '伊春', '', 20, 0),
(2008, '牡丹江市', '牡丹江', '', 20, 0),
(2009, '佳木斯市', '佳木斯', '', 20, 0),
(2010, '七台河市', '七台河', '', 20, 0),
(2011, '黑河市', '黑河', '', 20, 0),
(2012, '绥化市', '绥化', '', 20, 0),
(2013, '大兴安岭', '大兴安岭', '', 20, 0),
(2101, '合肥市', '合肥', '', 21, 0),
(2102, '芜湖市', '芜湖', '', 21, 0),
(2103, '蚌埠市', '蚌埠', '', 21, 0),
(2104, '淮南市', '淮南', '', 21, 0),
(2105, '马鞍山市', '马鞍山', '', 21, 0),
(2106, '淮北市', '淮北', '', 21, 0),
(2107, '铜陵市', '铜陵', '', 21, 0),
(2108, '安庆市', '安庆', '', 21, 0),
(2109, '黄山市', '黄山', '', 21, 0),
(2110, '滁州市', '滁州', '', 21, 0),
(2111, '阜阳市', '阜阳', '', 21, 0),
(2112, '宿州市', '宿州', '', 21, 0),
(2113, '巢湖市', '巢湖', '', 21, 0),
(2114, '六安市', '六安', '', 21, 0),
(2115, '亳州市', '亳州', '', 21, 0),
(2116, '宣城市', '宣城', '', 21, 0),
(2117, '池州市', '池州', '', 21, 0),
(2201, '长沙市', '长沙', '', 22, 0),
(2202, '株州市', '株州', '', 22, 0),
(2203, '湘潭市', '湘潭', '', 22, 0),
(2204, '衡阳市', '衡阳', '', 22, 0),
(2205, '邵阳市', '邵阳', '', 22, 0),
(2206, '岳阳市', '岳阳', '', 22, 0),
(2207, '常德市', '常德', '', 22, 0),
(2208, '张家界市', '张家界', '', 22, 0),
(2209, '益阳市', '益阳', '', 22, 0),
(2210, '郴州市', '郴州', '', 22, 0),
(2211, '永州市', '永州', '', 22, 0),
(2212, '怀化市', '怀化', '', 22, 0),
(2213, '娄底市', '娄底', '', 22, 0),
(2214, '湘西州', '湘西', '', 22, 0),
(2301, '南宁市', '南宁', '', 23, 0),
(2302, '柳州市', '柳州', '', 23, 0),
(2303, '桂林市', '桂林', '', 23, 0),
(2304, '梧州市', '梧州', '', 23, 0),
(2305, '北海市', '北海', '', 23, 0),
(2306, '防城港市', '防城港', '', 23, 0),
(2307, '钦州市', '钦州', '', 23, 0),
(2308, '贵港市', '贵港', '', 23, 0),
(2309, '玉林市', '玉林', '', 23, 0),
(2310, '南宁地区', '南宁地区', '', 23, 0),
(2311, '柳州地区', '柳地区', '', 23, 0),
(2312, '贺州地区', '贺地区', '', 23, 0),
(2313, '百色地区', '百色地区', '', 23, 0),
(2314, '河池地区', '河池地区', '', 23, 0),
(2401, '海口市', '海口', '', 24, 0),
(2402, '三亚市', '三亚', '', 24, 0),
(2403, '五指山市', '五指山', '', 24, 0),
(2404, '琼海市', '琼海', '', 24, 0),
(2405, '儋州市', '儋州', '', 24, 0),
(2406, '琼山市', '琼山', '', 24, 0),
(2407, '文昌市', '文昌', '', 24, 0),
(2408, '万宁市', '万宁', '', 24, 0),
(2409, '东方市', '东方', '', 24, 0),
(2410, '澄迈县', '澄迈县', '', 24, 0),
(2411, '定安县', '定安县', '', 24, 0),
(2412, '屯昌县', '屯昌县', '', 24, 0),
(2413, '临高县', '临高县', '', 24, 0),
(2414, '白沙县', '白沙县', '', 24, 0),
(2415, '昌江县', '昌江县', '', 24, 0),
(2416, '乐东县', '乐东县', '', 24, 0),
(2417, '陵水县', '陵水县', '', 24, 0),
(2418, '保亭县', '保亭县', '', 24, 0),
(2419, '琼中县', '琼中县', '', 24, 0),
(2501, '昆明市', '昆明', '', 25, 0),
(2502, '曲靖市', '曲靖', '', 25, 0),
(2503, '玉溪市', '玉溪', '', 25, 0),
(2504, '保山市', '保山', '', 25, 0),
(2505, '昭通市', '昭通', '', 25, 0),
(2506, ' 普洱市', ' 普洱', '', 25, 0),
(2507, '临沧市', '临沧', '', 25, 0),
(2508, '丽江市', '丽江', '', 25, 0),
(2509, '文山州', '文山', '', 25, 0),
(2510, '红河州', '红河', '', 25, 0),
(2511, '西双版纳', '西双版纳', '', 25, 0),
(2512, '楚雄州', '楚雄', '', 25, 0),
(2513, '大理州', '大理', '', 25, 0),
(2514, '德宏州', '德宏', '', 25, 0),
(2515, '怒江州', '怒江', '', 25, 0),
(2516, '迪庆州', '迪庆', '', 25, 0),
(2601, '贵阳市', '贵阳', '', 26, 0),
(2602, '六盘水市', '六盘水', '', 26, 0),
(2603, '遵义市', '遵义', '', 26, 0),
(2604, '安顺市', '安顺', '', 26, 0),
(2605, '铜仁地区', '铜仁地区', '', 26, 0),
(2606, '毕节地区', '毕节地区', '', 26, 0),
(2607, '黔西南州', '黔西南', '', 26, 0),
(2608, '黔东南州', '黔东南', '', 26, 0),
(2609, '黔南州', '黔南', '', 26, 0),
(2701, '拉萨市', '拉萨', '', 27, 0),
(2702, '那曲地区', '那曲地区', '', 27, 0),
(2703, '昌都地区', '昌都地区', '', 27, 0),
(2704, '山南地区', '山南地区', '', 27, 0),
(2705, '日喀则', '日喀则', '', 27, 0),
(2706, '阿里地区', '阿里地区', '', 27, 0),
(2707, '林芝地区', '林芝地区', '', 27, 0),
(2801, '兰州市', '兰州', '', 28, 0),
(2802, '金昌市', '金昌', '', 28, 0),
(2803, '白银市', '白银', '', 28, 0),
(2804, '天水市', '天水', '', 28, 0),
(2805, '嘉峪关市', '嘉峪关', '', 28, 0),
(2806, '武威市', '武威', '', 28, 0),
(2807, '定西地区', '定西地区', '', 28, 0),
(2808, '平凉地区', '平凉地区', '', 28, 0),
(2809, '庆阳地区', '庆阳地区', '', 28, 0),
(2810, '陇南地区', '陇南地区', '', 28, 0),
(2811, '张掖地区', '张掖地区', '', 28, 0),
(2812, '酒泉地区', '酒泉地区', '', 28, 0),
(2813, '甘南州', '甘南', '', 28, 0),
(2814, '临夏州', '临夏', '', 28, 0),
(2901, '银川市', '银川', '', 29, 0),
(2902, '石嘴山市', '石嘴山', '', 29, 0),
(2903, '吴忠市', '吴忠', '', 29, 0),
(2904, '固原市', '固原', '', 29, 0),
(3001, '西宁市', '西宁', '', 30, 0),
(3002, '海东地区', '海东地区', '', 30, 0),
(3003, '海北州', '海北', '', 30, 0),
(3004, '黄南州', '黄南', '', 30, 0),
(3005, '海南州', '海南', '', 30, 0),
(3006, '果洛州', '果洛', '', 30, 0),
(3007, '玉树州', '玉树', '', 30, 0),
(3008, '海西州', '海西', '', 30, 0),
(3101, '乌鲁木齐', '乌鲁木齐', '', 31, 0),
(3102, '克拉玛依', '克拉玛依', '', 31, 0),
(3103, '石河子市', '石河子', '', 31, 0),
(3104, '吐鲁番', '吐鲁番', '', 31, 0),
(3105, '哈密地区', '哈密地区', '', 31, 0),
(3106, '和田地区', '和田地区', '', 31, 0),
(3107, '阿克苏', '阿克苏', '', 31, 0),
(3108, '喀什地区', '喀什地区', '', 31, 0),
(3109, '克孜勒苏', '克孜勒苏', '', 31, 0),
(3110, '巴音郭楞', '巴音郭楞', '', 31, 0),
(3111, '昌吉州', '昌吉', '', 31, 0),
(3112, '博尔塔拉', '博尔塔拉', '', 31, 0),
(3113, '伊犁州', '伊犁', '', 31, 0),
(3201, '香港岛', '香港岛', '', 32, 0),
(3202, '九龙', '九龙', '', 32, 0),
(3203, '新界', '新界', '', 32, 0),
(3301, '澳门半岛', '澳门半岛', '', 33, 0),
(3302, '离岛', '离岛', '', 33, 0),
(3401, '台北市', '台北', '', 34, 0),
(3402, '高雄市', '高雄', '', 34, 0),
(3403, '台南市', '台南', '', 34, 0),
(3404, '台中市', '台中', '', 34, 0),
(3405, '金门县', '金门县', '', 34, 0),
(3406, '南投县', '南投县', '', 34, 0),
(3407, '基隆市', '基隆', '', 34, 0),
(3408, '新竹市', '新竹', '', 34, 0),
(3409, '嘉义市', '嘉义', '', 34, 0),
(3410, '新北市', '新北', '', 34, 0),
(3411, '宜兰县', '宜兰县', '', 34, 0),
(3412, '新竹县', '新竹县', '', 34, 0),
(3413, '桃园县', '桃园县', '', 34, 0),
(3414, '苗栗县', '苗栗县', '', 34, 0),
(3415, '彰化县', '彰化县', '', 34, 0),
(3416, '嘉义县', '嘉义县', '', 34, 0),
(3417, '云林县', '云林县', '', 34, 0),
(3418, '屏东县', '屏东县', '', 34, 0),
(3419, '台东县', '台东县', '', 34, 0),
(3420, '花莲县', '花莲县', '', 34, 0),
(3421, '澎湖县', '澎湖县', '', 34, 0),
(6001, '美国', '美国', '', 60, 0),
(6002, '英国', '英国', '', 60, 0),
(6003, '法国', '法国', '', 60, 0),
(6004, '俄罗斯', '俄罗斯', '', 60, 0),
(6005, '加拿大', '加拿大', '', 60, 0),
(6006, '巴西', '巴西', '', 60, 0),
(6007, '澳大利亚', '澳大利亚', '', 60, 0),
(6008, '印尼', '印尼', '', 60, 0),
(6009, '马来西亚', '马来西亚', '', 60, 0),
(6010, '新加坡', '新加坡', '', 60, 0),
(6011, '菲律宾', '菲律宾', '', 60, 0),
(6012, '越南', '越南', '', 60, 0),
(6013, '印度', '印度', '', 60, 0),
(6014, '日本', '日本', '', 60, 0),
(6015, '韩国', '韩国', '', 60, 0),
(6016, '泰国', '泰国', '', 60, 0),
(6017, '缅甸', '缅甸', '', 60, 0),
(6018, '其他', '其他', '', 60, 0);

-- --------------------------------------------------------

--
-- 表的结构 `newt_article`
--

CREATE TABLE IF NOT EXISTS `newt_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `shorttitle` varchar(100) NOT NULL DEFAULT '' COMMENT '副标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `copyfrom` varchar(30) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `content` text COMMENT '内容',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `publishtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- 转存表中的数据 `newt_article`
--

INSERT INTO `newt_article` (`id`, `title`, `shorttitle`, `color`, `copyfrom`, `author`, `keywords`, `litpic`, `content`, `description`, `publishtime`, `updatetime`, `click`, `cid`, `commentflag`, `flag`, `jumpurl`, `status`, `userid`, `aid`) VALUES
(29, '多年丰富的推广经验，专业的技术团队！', '10 years, focus on network promotion!', '', '', '', '', '/uploads/img1/20170603/59325726dfc9d.jpg', '', '', 1495250219, 1496471349, 74, 24, 1, 17, '', 0, 0, 1),
(30, '网站因推广而改变!', 'Website Extension to change!', '', '', '', '', '/uploads/img1/20170603/593256fd372d0.jpg', '', '', 1495250302, 1496471324, 60, 24, 1, 17, '', 0, 0, 1),
(31, '精通各类APP推广，全面覆盖苹果&amp;安卓', 'Proficient in all types of APP promotion !', '', '', '', '', '/uploads/img1/20170603/593256ced3124.jpg', '', '', 1495250335, 1496471284, 85, 24, 1, 17, '', 0, 0, 1),
(28, '初创APP在苹果商店下载量增长的10项注意！', '', '', '', '', '', '/uploads/img1/20170525/592682b47311b.jpg!600X400.jpg', '<p><strong><span style="font-size:14px;">1、 一定要确保用户能找到你的应用！</span></strong></p><p><span style="font-size:14px;">如 果用户对你的应用一无所知，那么想要爆红基本是不可能的，所以，一定要有一个定位明确的关键词策略，以让用户通过App Store或搜索引擎轻而易举地找到应用。此外，你还需要为应用提供一份不求狂炫酷拽但至少精巧的描述，尤其要突出它能为用户带来的价值，当然，要是能让 用户觉得“我的生活里不能没有它”那自然最好不过了。</span></p><p><span style="font-size:14px;"> </span></p><p style="color:#555555;font-family:&#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif;font-size:15px;line-height:26px;text-indent:30px;"><span style="font-size:14px;"><br/></span></p><p style="color:#555555;font-family:&#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif;font-size:15px;line-height:26px;text-indent:30px;"><strong><span style="font-size:14px;">2、在Google AdWords活动中直接嵌入应用链接</span></strong></p><p><span style="font-size:14px;">对于开发者而言，想要吸引一大波潜在用户，Google AdWords是最直接有效的方式，如果在此之中添加一个能让用户直接跳转到应用下载页面的链接，让人们非常方便地访问应用，那绝对事半功倍。</span></p><p><span style="font-size:14px;"> </span></p><p><strong><span style="font-size:14px;">3、屏幕截图一定要诱人！</span></strong></p><p><span style="font-size:medium;"><span style="font-size:14px;">屏幕截图除了向用户展示应用场景之外，还是吸引用户下载的关键所在，毕竟不是所有人都会去细致地阅读内容摘要的，第一感官肯定是屏幕截图。所以说，下载页面其实也是一份绝妙的营销</span><span style="font-size:14px;">文件，有效与否还得看你怎么搞。</span></span></p><p style="color:#555555;font-family:&#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif;font-size:15px;line-height:26px;text-indent:30px;"><span style="font-size:14px;"><br/></span></p><p style="color:#555555;font-family:&#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif;font-size:15px;line-height:26px;text-indent:30px;"><strong><span style="font-size:14px;">4、定期更新应用，并减少权限设定</span></strong></p><p><span style="font-size:14px;">对 应用进行定期更新不仅能保持新鲜度，还能吸引到额外下载。在App Store中，陈旧的应用只有石沉大海一个结局，更新不仅表明作为开发者的你在不断地优化改善应用，更能让那些曾经低分评价的用户一个给出更高的分数和更 赞的评论的机会。此外，你还需要确保应用需要最少的权限，否则，可能会吓跑用户，导致下载量流失。</span></p><p><span style="font-size:14px;"> </span></p><p style="color:#555555;font-family:&#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif;font-size:15px;line-height:26px;text-indent:30px;"><span style="font-size:14px;"><br/></span></p><p style="color:#555555;font-family:&#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif;font-size:15px;line-height:26px;text-indent:30px;"><strong><span style="font-size:14px;">5、推广应用别只局限在App Store</span></strong></p><p><span style="font-size:medium;"><span style="font-size:14px;">除了App Store之外，还有很多用户会通过广告活动和搜索来寻找应用，“都敏俊”式的应用推广</span><span style="font-size:14px;">对于扩大用户群其实还是很有实效的，铺天盖地总好过籍籍无名。</span></span></p><p><span style="font-size:14px;"> </span></p><p style="color:#555555;font-family:&#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif;font-size:15px;line-height:26px;text-indent:30px;"><span style="font-size:14px;"><br/></span></p><p style="color:#555555;font-family:&#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif;font-size:15px;line-height:26px;text-indent:30px;"><strong><span style="font-size:14px;">6、用最简单粗暴的方式进入App Store</span></strong></p><p><span style="font-size:medium;"><span style="font-size:14px;">当通过博客、网站、新媒以及其他方式推广应用时，要记得放上App Store下载页面的链接，宣传到位了，却让用户以自行搜索的方式来获取下载，着实是愚不可及，应用商店</span><span style="font-size:14px;">里相类似的应用很多，说不定一不小心就白白替别人做了“嫁衣”。</span></span></p><p><span style="font-size:14px;"> </span></p><p style="color:#555555;font-family:&#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif;font-size:15px;line-height:26px;text-indent:30px;"><span style="font-size:medium;"><span style="font-size:14px;"><br/></span></span></p><p style="color:#555555;font-family:&#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif;font-size:15px;line-height:26px;text-indent:30px;"><strong><span style="font-size:medium;"><span style="font-size:14px;">7、应用推广</span><span style="font-size:14px;">别只选付费下载和评论计费</span></span></strong></p><p><span style="font-size:14px;">虽 然付费下载和评测计费疯狂出没App Store，但事实上苹果并不主张开发者使用此类方法来提高下载量。众所周知，App Store排行榜排名除了至关重要的下载量之外，还包括活跃度、评分等其他因素，但放眼望去，一味追求付费安装策略而未进TOP榜或直接被抛到九霄云外的 应用却比比皆是。</span></p><p><span style="font-size:14px;"> </span></p><p style="color:#555555;font-family:&#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif;font-size:15px;line-height:26px;text-indent:30px;"><span style="font-size:14px;"><br/></span></p><p style="color:#555555;font-family:&#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif;font-size:15px;line-height:26px;text-indent:30px;"><strong><span style="font-size:14px;">8、万事俱备再发布</span></strong></p><p><span style="font-size:14px;">从 原型设计、开发到正式发布，在此之间会突然出现许多无法避免的问题，甚至极有可能会影响到最后期限。能够如期进行固然重要，但在发布之前确保所规划的功能 均已开发完善则更为关键。如果你需要更多的时间来改进和优化应用，那么，最好还是将发布时间延期，毕竟，相比直面一大堆吐槽应用的用户，跳票要容易得多。</span></p><p><span style="font-size:14px;"> </span></p><p style="color:#555555;font-family:&#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif;font-size:15px;line-height:26px;text-indent:30px;"><span style="font-size:14px;"><br/></span></p><p style="color:#555555;font-family:&#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif;font-size:15px;line-height:26px;text-indent:30px;"><strong><span style="font-size:14px;">9、别用激励下载，这招现在真心不管用了</span></strong></p><p><span style="font-size:14px;">很多应用都会锁定部分功能，直到用户完成某项成就或通过金币等物质性奖励获取访问权限，当然，在前几年，这种基于奖励机制下载应用和解锁功能的办法在前几年的确非常流行，但现在却已逐渐衰弱，原因很简单，就是不太管用。</span></p><p><span style="font-size:14px;"> </span></p><p style="color:#555555;font-family:&#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif;font-size:15px;line-height:26px;text-indent:30px;"><span style="font-size:14px;"><br/></span></p><p style="color:#555555;font-family:&#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif;font-size:15px;line-height:26px;text-indent:30px;"><strong><span style="font-size:14px;">10、别忽视用户的负面评论</span></strong></p><p><span style="font-size:14px;">如果用户对你的应用给出了差评，一定要将其视作是优化应用的一个绝佳机会，与用户保持近距离接触并持续改善应用是非常重要的，聆听批评，如果他们说的有一定的道理，那么就有必要做出改变。</span></p><p><br/></p>', '在响应式设计和自适应设计的流行下，很多web 应用往往都兼容手机、平板和PC，其中一个让人比较头痛的问题就是图片的加载了', 1495179001, 1495696054, 52, 23, 1, 1, '', 0, 0, 1),
(26, '新上线APP有哪些免费推广的方式？', '', '', '', '', '', '/uploads/img1/20170525/592682ce63516.jpg!600X400.jpg', '<p><em style="margin:0px;padding:0px;font-size:medium;color:#444444;font-family:&#39;microsoft yahei&#39;;word-wrap:break-word;"><span style="margin:0px;padding:0px;font-size:18px;">刚上线1个月的APP，想看一下自然增长， 有哪些免费推广方法可以进行呢？</span></em></p><p><span style="font-size:16px;word-wrap:break-word;"><em style="margin:0px;padding:0px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></em></span></p><p><span style="font-size:16px;word-wrap:break-word;"><span style="margin:0px;padding:0px;font-weight:bold;font-size:16px;">一、iPhone版的 ASO，应用名称&gt;关键词&gt;描述，它们基本原则有：</span></span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">1、标题225字符、90字左右，可用主标题+副标题，副标题权重比关键词高，可以选择核心关键词，并不断轮换优化；</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">2、标题与关键词的权重无法叠加，如果在标题中出现就不要出现在关键词中，浪费字符；</strong></span></p><ol style="margin:1em 2em;padding:0px;word-wrap:break-word;" class=" list-paddingleft-2"><li><p><span style="margin:0px;padding:0px;word-wrap:break-word;font-size:medium;">共100字符，越靠前的权重越大</span></p></li><li><p><span style="margin:0px;padding:0px;word-wrap:break-word;font-size:medium;">没搜索排名的、没热度的、并且分词没意义的，下一版删除</span></p></li><li><p><span style="margin:0px;padding:0px;word-wrap:break-word;font-size:medium;">核心关键词，务必放在副标题里</span></p></li><li><p><span style="margin:0px;padding:0px;word-wrap:break-word;font-size:medium;">大量分析竞品的关键词，比对热度，建立自己APP的关键词库</span></p></li><li><p><span style="margin:0px;padding:0px;word-wrap:break-word;font-size:medium;">挑选10个竞品，按照热度降序，排名前五的竞品词可以用</span></p></li></ol><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">3、字数300-500，并保证核心关键词8-12次出现，描述与关键词的权重可以叠加。</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;"><br/><span style="margin:0px;padding:0px;font-weight:bold;font-size:16px;">二、安卓版的推广，国内的各大安卓市场很乱，但是还是有一些免费的首发、新品自荐、专题自荐等免费推广。</span></span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><strong style="margin:0px;padding:0px;word-wrap:break-word;"><span style="font-size:18px;word-wrap:break-word;">【360手机助手】</span></strong></p><p><strong style="margin:0px;padding:0px;word-wrap:break-word;"><span style="font-size:18px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></strong></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">首发申请</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">在后台提前3-5个工作日申请：</span></p><p><span style="font-size:16px;word-wrap:break-word;">APP版本：1、全新首发；2、重大版本首发</span></p><p><span style="font-size:16px;word-wrap:break-word;">方式：1、独家首发；2、联合首发</span></p><p><span style="font-size:16px;word-wrap:break-word;">材料：1、更新内容；2、应用描述、截图、图标、简介；3、预约首发时间；</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">首发素材</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">预约成功后，最迟在首发前一个工作日18:00上传APK包和广告图</span></p><p><span style="font-size:16px;word-wrap:break-word;">APK文件：闪屏页面加入增加360手机助手客户端logo及“360独家首发”字样</span></p><p><span style="font-size:16px;word-wrap:break-word;">广告图：jpg或png，PC端827*180、245*158，手机端960*500、442*263、680*167</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">首发时间</strong></span></p><ul style="margin:1em 2em;padding:0px;word-wrap:break-word;" class=" list-paddingleft-2"><li><p><span style="margin:0px;padding:0px;word-wrap:break-word;font-size:medium;">首发时间需提前3-5个工作日申请；</span></p></li><li><p><span style="margin:0px;padding:0px;word-wrap:break-word;font-size:medium;">首发上架时间24-48小时；</span></p></li><li><p><span style="margin:0px;padding:0px;word-wrap:break-word;font-size:medium;">首发间隔时间为15天</span></p></li></ul><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">新品自荐</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">后台直接申请</span></p><p><span style="font-size:16px;word-wrap:break-word;">材料：一句话描述20字、目标用户100字（请说明市场规模及典型用户、服务人群）、产品解决问题100字、应用亮点50字（最吸引人的点）、主要竞品100字（主要竞品、自身优势）、团队介绍100字。</span></p><p><span style="font-size:16px;word-wrap:break-word;">无需上传APK和广告图</span></p><p><span style="font-size:16px;word-wrap:break-word;">效果看RP，2月有4天被推荐到PC端首页，但找不到在哪里ORZ</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><strong style="margin:0px;padding:0px;word-wrap:break-word;"><span style="font-size:18px;word-wrap:break-word;">【腾讯应用宝】</span></strong></p><p><strong style="margin:0px;padding:0px;word-wrap:break-word;"><span style="font-size:18px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></strong></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">优秀新应用申请</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">优秀新应用适合全新上线的应用（6个月以内）和成熟应用的全新版本。</span></p><p><span style="font-size:16px;word-wrap:break-word;">在后台提前3-5个工作日申请：</span></p><p><span style="font-size:16px;word-wrap:break-word;">材料：1、更新内容；2、预约时段，仅1天；</span></p><p><span style="font-size:16px;word-wrap:break-word;">申请提交后，2个工作日内完成审核。</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">首发素材</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">预约成功后，需在推广当天11:00前填写图文介绍、上传APK。</span></p><p><span style="font-size:16px;word-wrap:break-word;">APK文件：闪屏页面加入增加应用宝logo及“应用宝独家首发”字样</span></p><p><span style="font-size:16px;word-wrap:break-word;">广告图：头图624*234、配图624*300</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">首发时间</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">1.首发时间需提前3-5个工作日申请；</span></p><p><span style="font-size:16px;word-wrap:break-word;">2.首发上架时间24小时；</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><strong style="margin:0px;padding:0px;word-wrap:break-word;"><span style="font-size:18px;word-wrap:break-word;">【华为应用市场】</span></strong></p><p><strong style="margin:0px;padding:0px;word-wrap:break-word;"><span style="font-size:18px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></strong></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">首发申请</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">在后台提前10个工作日申请：</span></p><p><span style="font-size:16px;word-wrap:break-word;">方式：1、独家首发；2、联合首发</span></p><p><span style="font-size:16px;word-wrap:break-word;">材料：1、首发版本号；2、应用描述、截图、图标、简介；3、预约首发时间，限3天以内</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">首发素材</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">预约成功后，最迟在首发前一个工作日上传APK包和广告图</span></p><p><span style="font-size:16px;word-wrap:break-word;">APK文件：闪屏页面加入增加华为应用市场logo，不少于1.5秒</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">首发时间</strong></span></p><ul style="margin:1em 2em;padding:0px;word-wrap:break-word;" class=" list-paddingleft-2"><li><p><span style="margin:0px;padding:0px;word-wrap:break-word;font-size:medium;">首发时间需提前10个工作日申请；</span></p></li><li><p><span style="margin:0px;padding:0px;word-wrap:break-word;font-size:medium;">首发上架时间1-3天；</span></p></li><li><p><span style="margin:0px;padding:0px;word-wrap:break-word;font-size:medium;">首发间隔时间为25天</span></p></li></ul><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">周一见</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">看活动通知，后台直接申请，提交应用名称、APPID、开发者邮箱、应用描述；</span></p><p><span style="font-size:16px;word-wrap:break-word;">展示2天</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><strong style="margin:0px;padding:0px;word-wrap:break-word;"><span style="font-size:18px;word-wrap:break-word;">【搜狗手机助手】</span></strong></p><p><strong style="margin:0px;padding:0px;word-wrap:break-word;"><span style="font-size:18px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></strong></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">首发申请</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">类型：1、重大版本更新；</span></p><p><span style="font-size:16px;word-wrap:break-word;">在后台提前7个工作日申请：</span></p><p><span style="font-size:16px;word-wrap:break-word;">材料：1、更新内容；2、预约时段，仅1天；</span></p><p><span style="font-size:16px;word-wrap:break-word;">申请提交后，2个工作日内完成审核。</span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></strong></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">首发素材</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">预约成功后，需在推广前1个工作日上传APK。</span></p><p><span style="font-size:16px;word-wrap:break-word;">APK文件：首发包需要在启动页或闪屏页加入“搜狗手机助手”LOGO</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">首发时间</strong></span></p><ul style="margin:1em 2em;padding:0px;word-wrap:break-word;" class=" list-paddingleft-2"><li><p><span style="margin:0px;padding:0px;word-wrap:break-word;font-size:medium;">首发时间需提前7个工作日申请；</span></p></li><li><p><span style="margin:0px;padding:0px;word-wrap:break-word;font-size:medium;">首发上架时间24小时；</span></p></li><li><p><span style="margin:0px;padding:0px;word-wrap:break-word;font-size:medium;">首发成功后同一产品15天内不可以重复申请</span></p></li></ul><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">搜狗好应用</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">条件：6个月内首次提交且为已上线状态的应用，官方每天推荐一款</span></p><p><span style="font-size:16px;word-wrap:break-word;">后台直接申请</span></p><p><span style="font-size:16px;word-wrap:break-word;">专题申请</span></p><p><span style="font-size:16px;word-wrap:break-word;">看活动通知，后台直接申请</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><strong style="margin:0px;padding:0px;word-wrap:break-word;"><span style="font-size:18px;word-wrap:break-word;">【PP助手】</span></strong></p><p><strong style="margin:0px;padding:0px;word-wrap:break-word;"><span style="font-size:18px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></strong></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">首发申请</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">类型：1、全新首发；2、重大版本更新；</span></p><p><span style="font-size:16px;word-wrap:break-word;">方式：1、独家首发；2、联合首发；</span></p><p><span style="font-size:16px;word-wrap:break-word;">在后台提前3-5个工作日申请：</span></p><p><span style="font-size:16px;word-wrap:break-word;">材料：1、更新内容；2、预约时段；</span></p><p><span style="font-size:16px;word-wrap:break-word;">申请提交后，2个工作日内完成审核。</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">首发素材</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">预约成功后，需在推广前1个工作日17:00前上传APK和广告图。</span></p><p><span style="font-size:16px;word-wrap:break-word;">APK文件：在闪屏页加入PP助手、UC应用商店、淘宝手机助手3个Logo，每次重启都有该闪屏</span></p><p><span style="font-size:16px;word-wrap:break-word;">广告图：首发专区Banner尺寸720*288px</span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></strong></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">首发时间</strong></span></p><ul style="margin:1em 2em;padding:0px;word-wrap:break-word;" class=" list-paddingleft-2"><li><p><span style="margin:0px;padding:0px;word-wrap:break-word;font-size:medium;">首发时间需提前3-5个工作日申请；</span></p></li><li><p><span style="margin:0px;padding:0px;word-wrap:break-word;font-size:medium;">首发上架时间24小时；</span></p></li><li><p><span style="margin:0px;padding:0px;word-wrap:break-word;font-size:medium;">首发成功后同一产品15天内不可以重复申请</span></p></li><li><p><span style="margin:0px;padding:0px;word-wrap:break-word;font-size:medium;">当天11:00首发上线</span></p></li></ul><p><strong style="margin:0px;padding:0px;word-wrap:break-word;"><span style="font-size:18px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></strong></p><p><strong style="margin:0px;padding:0px;word-wrap:break-word;"><span style="font-size:18px;word-wrap:break-word;">【联想乐商店】</span></strong></p><p><strong style="margin:0px;padding:0px;word-wrap:break-word;"><span style="font-size:18px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></strong></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">首发申请</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">类型：1、全新首发；2、重大版本更新；</span></p><p><span style="font-size:16px;word-wrap:break-word;">方式：1、独家首发；2、联合首发；</span></p><p><span style="font-size:16px;word-wrap:break-word;">在后台提前3-10个工作日申请：</span></p><p><span style="font-size:16px;word-wrap:break-word;">材料：1、更新内容；2、预约时段；</span></p><p><span style="font-size:16px;word-wrap:break-word;">申请提交后，2个工作日内完成审核。</span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></strong></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">首发素材</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">预约成功后，需在推广前1个工作日17:00前上传APK。</span></p><p><span style="font-size:16px;word-wrap:break-word;">APK文件：首发版本，需在闪屏明显位置添加【乐商店LOGO+联想乐商店首发字样】</span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></strong></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">首发时间</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">首发时间需提前3-10个工作日申请；</span></p><p><span style="font-size:16px;word-wrap:break-word;">首发成功后同一产品15天内不可以重复申请</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">新品自荐</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">后台直接申请，勾选应用、填写联系人姓名/电话/QQ</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="margin:0px;padding:0px;word-wrap:break-word;">专题申请</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">看活动通知，后台直接申请，勾选专题、勾选应用、填写联系人姓名/电话/QQ</span></p><p><span style="font-size:16px;word-wrap:break-word;">每次安卓版本更新，都尽量申请首发，我家APP的情况就是能比普通更新带来10-20倍的下载量。（我现在做的app叫西行客，专注西藏旅行的应用，2016年1月29日在app store上线后，一周后搜索“西藏”保持排在第1位。）</span></p><p><span style="font-size:16px;word-wrap:break-word;">除了应用市场的应用分发之外，国内国外都涌现出了不少应用推荐类的网站，比如最美应用、爱应用、app每日推送、NEXT、DEMO8等等，都是非常精致、好应用的聚集地，都值得上去曝光一下！比如我每周都会在next上发现一些好玩、美美的应用或网站，也是拓展自己视野的好方式。</span></p><p><br/></p>', '移动互联网已经成为当下的主流，直播无疑是一种最直接、最真实的展示方式，成为很多人愿意去尝试并接受的互联网产品，直播俨然已经成为新老媒体都会选择的香饽饽，新主流媒体们借助他们和直播的天然联系，不断巩固着', 1495165565, 1495696079, 56, 23, 1, 1, '', 0, 0, 1),
(27, '微信小程序继续发力 为开发者提供更为个性化的服务', '', '', '', '', '', '', '<p>微信小程序又继续发力了！昨天，小程序向开发者开放了群ID的接口能力，当微信用户在群聊中点击小程序的分享卡片，开发者可获取群ID和群名称，更好地针对群场景提供个性化服务。微信公众平台介绍道，小程序开发者可使用新的分享能力将页面分享到微信群，当用户在群中点击该分享卡片时，开发者可获取到该微信群的群ID和群名称。群ID是标识微信群的唯一ID，不同微信群的群ID是不同的。</p><p>微信小程序可以为开发者提供更为个性化的服务，其中通过本接口获取的群ID和群名称，开发者可以知道用户是否来自同一个微信群。一方面可为不同微信群内的用户提供更个性化的服务;另一方面相同微信群内的用户之间可以更好地进行协作，例如共同编辑文档、协同合作等。</p><p><br/></p>', '微信小程序又继续发力了！昨天，小程序向开发者开放了群ID的接口能力，当微信用户在群聊中点击小程序的分享卡片，开发者可获取群ID和群名称，更好地针对群场景提供个性化服务', 1495178896, 1495178946, 65, 22, 1, 0, '', 0, 0, 1),
(32, 'BAT互联网公司内部的级别和薪资待遇是什么样的？', '', '', '', '', '', '/uploads/img1/20170525/59268356b1263.jpg!600X400.jpg', '<table width="100%"><tbody style="word-wrap:break-word;"><tr style="word-wrap:break-word;" class="firstRow"><td><p><span style="font-size:16px;word-wrap:break-word;color:#000000;">级别和薪资待遇，除非身居其位，否则你不会知道；但是等你到那个位置知道了，却又不能说，至少不能在公开场合谈论。这真是一个群众喜闻乐见却又讳莫如深的话题。</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="word-wrap:break-word;"><span style="font-size:16px;word-wrap:break-word;color:#000000;">1. 举个栗子。</span></strong><span style="font-size:16px;word-wrap:break-word;color:#000000;">校招不论，单说社招。想知道阿里内部级别和薪资待遇的题主，或许正面临offer选择：</span></span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;color:#000000;">最近刚通过面试，但基本薪酬也是不升反小降。 级别只有P6+，连P7都没有，非常郁闷，打算拒绝算了。小本工作9年了，这算不算loser ？</span></p><p><span style="font-size:16px;word-wrap:break-word;color:#000000;">奇了怪了，阿里系的P6和P7的范围到底是多少？ </span></p><p><span style="font-size:16px;word-wrap:break-word;color:#000000;">不过反过来说，阿里系面试还真是有点深度的，通过不易，但拿到这个级别总感觉是否自已混的太一般了。 </span></p><p><span style="font-size:16px;word-wrap:break-word;color:#000000;">郁闷。</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;">这样的纠结实在太常见了，都是工作好几年的老程序员了，好不容易动心跳个槽，猎头开始保证得好好的，怎么拿到offer的薪酬却不尽如人意？是自己能力不够，还是被HR/猎头忽悠？</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;">专心做技术的大都是心思单纯之人，却最容易吃亏。知己知彼方可百战不殆，看看对方的级别和待遇，谋定而后动，才能跳得更远，走得更稳。</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><strong style="word-wrap:break-word;font-size:medium;line-height:1.8em;">2. 先看阿里的级别定义：</strong></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="word-wrap:break-word;"><br style="word-wrap:break-word;"/></strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">P序列=技术岗 &nbsp; &nbsp; M序列=管理岗</span></p><p style="word-wrap:break-word;"><a href="http://www.niaogebiji.com/data/attachment/portal/201603/08/120928cmhq08h0l6im0m08.jpg" target="_blank"><img src="http://www.niaogebiji.com/data/attachment/portal/201603/08/120928cmhq08h0l6im0m08.jpg" alt=" "/></a></p><ul style="word-wrap:break-word;margin:1em 2em;padding:0px;" class=" list-paddingleft-2"><li><p><span style="word-wrap:break-word;font-size:medium;line-height:1.8em;">阿里的非管理岗分为10级</span></p></li><li><p><span style="word-wrap:break-word;font-size:medium;line-height:1.8em;">其中P6、P7、P8需求量最大，也是阿里占比最大的级别</span></p></li></ul><p><span style="font-size:16px;word-wrap:break-word;">前面栗子中郁闷的W同学拿到了P6+的offer，正处于最庞大但又最尴尬的级别中段，至于为什么差一点儿没拿到P7，难道是HR在省招聘费？</span></p><p><span style="font-size:16px;word-wrap:break-word;">哦，江湖传言@Fenng是P7，@鬼脚七是P9。</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="word-wrap:break-word;">3. 再看阿里的级别对应薪资：</strong></span></p><p style="word-wrap:break-word;"><a href="http://www.niaogebiji.com/data/attachment/portal/201603/08/120928tt7bezv3xtejqgmq.jpg" target="_blank"><img src="http://www.niaogebiji.com/data/attachment/portal/201603/08/120928tt7bezv3xtejqgmq.jpg" alt=" "/></a></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="word-wrap:break-word;"><br style="word-wrap:break-word;"/></strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">•阿里薪资结构：一般是12+1+3=16薪</span></p><p><span style="font-size:16px;word-wrap:break-word;">•年底的奖金为0-6个月薪资，90%人可拿到3个月</span></p><p><span style="font-size:16px;word-wrap:break-word;">•股票是工作满2年才能拿，第一次拿50%，4年能全部拿完</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;">说到股票，真是要普及下常识，别被忽悠了。股票是公司用来奖励员工忠诚度的，所以阿里分年限行权，想要离职套现真的是难。更不要高额的税收了，首先，归属要收高达45%的个税，然后得到的还是限制性股票，还不能马上卖呢。好不容易可以出售的时候，还得交20%股票增值部分的个人所得税哦！</span></p><p><span style="font-size:16px;word-wrap:break-word;">更重要的是，你必须先缴税，才能归属，缴税还必须用现金，不能sell to cover！So，拿的越多，先拿出的cash就越多，这里面的流动性风险你自己权衡吧。</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><strong style="word-wrap:break-word;"><span style="font-size:24px;word-wrap:break-word;">再说说级别分层和阿里类似的百度</span></strong></p><p><strong style="word-wrap:break-word;"><span style="font-size:24px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></strong></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="word-wrap:break-word;">1. 百度的技术级别：</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="word-wrap:break-word;"><br style="word-wrap:break-word;"/></strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">百度有4万人，每年招聘应届生技术产品人员1000人左右，技术岗位级别和阿里类似，分为T序列12级，不赘述了，大概阿里的级别减1或2，就是百度的级别。</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;">•主要集中在T5/T6，升T7很困难，T7升T8更困难；T7以上一般就不做coding了</span></p><p><span style="font-size:16px;word-wrap:break-word;">•一般来说，在百度待3年能给到T5，很多人都等不到三年，原因下面说，社招过来的，一般是外面公司的技术骨干了</span></p><p><span style="font-size:16px;word-wrap:break-word;">•T10是技术总监，十个左右；T11是首席科学家；T12基本没见过。</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="word-wrap:break-word;">2. 再看百度薪资的大概范围：</strong></span></p><p style="word-wrap:break-word;"><a href="http://www.niaogebiji.com/data/attachment/portal/201603/08/120929tj633p9wf1m9pjx6.jpg" target="_blank"><img src="http://www.niaogebiji.com/data/attachment/portal/201603/08/120929tj633p9wf1m9pjx6.jpg" alt=" "/></a></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;">•百度薪资结构：月薪*14.6（12+0.6+2）,其他岗位月薪*14</span></p><p><span style="font-size:16px;word-wrap:break-word;">•T5以上为关键岗位，另外有股票、期权</span></p><p><span style="font-size:16px;word-wrap:break-word;">•T5、T6占比最大的级别，T8、T9占比最小</span></p><p><span style="font-size:16px;word-wrap:break-word;">•级别越高，每档之间的宽幅越大</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;">百度是一家业务定性，内部稳定，金字塔形的成熟公司。也就是说，大部分事情都是按部就班、驾轻就熟，所有人都比较轻松、稳定、舒服，尤其是对老员工而言。但是对于新员工来说，这意味着成长空间的极度压缩，机会少，上升慢。</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;">百度工资高，福利好，但是这么多年期权已经基本发光了，只有总监以上才有，几十股几百股就算多了。问题就来了，百度新老员工的期权数量太悬殊，据说到百度楼下停车场一看，开卡宴的都是老员工，开捷达的都是新员工，其实很多新员工的贡献比老员工大得多，但是收入反而倒挂，于是很多新人等不到3年就跳了。</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><strong style="word-wrap:break-word;"><span style="font-size:24px;word-wrap:break-word;">最后谈谈最南边的腾讯</span></strong></p><p><strong style="word-wrap:break-word;"><span style="font-size:24px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></strong></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="word-wrap:break-word;">1. 腾讯的技术级别：</strong></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="word-wrap:break-word;"><br style="word-wrap:break-word;"/></strong></span></p><p><span style="font-size:16px;word-wrap:break-word;">腾讯的分级和阿里/百度都不一样，分为T1/T2/T3/T4共4级，其中又细分为3级。</span></p><p><span style="font-size:16px;word-wrap:break-word;">•员工仍然集中在中段，尤其是 T2.3 和 T3.1</span></p><p><span style="font-size:16px;word-wrap:break-word;">•想从T2跨到T3，即从2.3升3.1是非常困难的</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="word-wrap:break-word;">2. 了解薪酬和级别的关系：</strong></span></p><p style="word-wrap:break-word;"><a href="http://www.niaogebiji.com/data/attachment/portal/201603/08/120929pobqx9bht93qxz99.jpg" target="_blank"><img src="http://www.niaogebiji.com/data/attachment/portal/201603/08/120929pobqx9bht93qxz99.jpg" alt=" "/></a></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;">• 腾讯标准薪资是14薪，但是通常能拿到16-20薪</span></p><p><span style="font-size:16px;word-wrap:break-word;">• T3.1以上开始另外有股票</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;">值得一提的是，腾讯是有淘汰制考核的。一般一年两次考核（6月、12月），实行末尾淘汰制，0-10%优秀，必须有5%的人转组（转组也可能出现没人接收的情况）或者被开除，这点比较狠。</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;">升级也跟考核结果很有关系，要升一个小等级，必须最近两次考核得过一次A类考核结果。升 T3.1是内部晋升的第一道槛，要求架构在领域内优秀，被追问攻击时能无漏洞应答出来--据说只有30%的通过率。同时，腾讯好的一点在于，底层普通员工如果技术真的不错，照样升级，和是不是leader关系不大。leader的带队价值在T3.3时才显现出来。</span></p><p><span style="font-size:16px;word-wrap:break-word;"><br style="word-wrap:break-word;"/></span></p><p><span style="font-size:16px;word-wrap:break-word;"><strong style="word-wrap:break-word;">3.最后，来张BAT级别对照表</strong></span></p><p style="word-wrap:break-word;"><a href="http://www.niaogebiji.com/data/attachment/portal/201603/08/120929mf2slfpr9qiqlp2w.jpg" target="_blank"><img src="http://www.niaogebiji.com/data/attachment/portal/201603/08/120929mf2slfpr9qiqlp2w.jpg" alt=" "/></a></p><p><span style="font-size:16px;font-family:黑体;word-wrap:break-word;">文章来源：知乎</span></p><p><span style="font-size:16px;font-family:黑体;word-wrap:break-word;">原作者：周萌萌</span></p></td></tr></tbody></table><p><br/></p>', '级别和薪资待遇，除非身居其位，否则你不会知道；但是等你到那个位置知道了，却又不能说，至少不能在公开场合谈论。这真是一个群众喜闻乐见却又讳莫如深的话题。1. 举个栗子。校招不论，单说社招。想知道阿里内部级别和薪资待遇的题主，或许正面临offe', 1495696136, 1495696216, 52, 22, 1, 1, '', 0, 0, 1);
INSERT INTO `newt_article` (`id`, `title`, `shorttitle`, `color`, `copyfrom`, `author`, `keywords`, `litpic`, `content`, `description`, `publishtime`, `updatetime`, `click`, `cid`, `commentflag`, `flag`, `jumpurl`, `status`, `userid`, `aid`) VALUES
(35, '榜单大促销，联系一下会改变你应用的命运！', '', '', '', '', '', '', '<p><span style="color: rgb(51, 51, 51); font-family: Helvetica, &quot;Hiragino Sans GB W3&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Arial, sans-serif; font-size: medium; background-color: rgb(255, 255, 255);">亲，才扬科技奋发图强，再次席卷市场而来！改变应用命运的时刻就在此时，我们专做企业化营销，为一切应用发现铺平道路！</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Helvetica, &quot;Hiragino Sans GB W3&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);"/><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Helvetica, &quot;Hiragino Sans GB W3&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);"/><span style="color: rgb(51, 51, 51); font-family: Helvetica, &quot;Hiragino Sans GB W3&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Arial, sans-serif; font-size: medium; background-color: rgb(255, 255, 255);">亲，为什么要选择我们？因为我们用最低的价格做最专业的事。例：有人优化排名会出现收到警告，降权重，跳出市场，剔排名，都是因为没有经过严格的测试，请给我们的一次机会，你会了解到我们的专业，我们都会有15款以上自家新游进行亲测，保障用户的一切利益，非黑卡ID。&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Helvetica, &quot;Hiragino Sans GB W3&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);"/><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Helvetica, &quot;Hiragino Sans GB W3&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);"/><span style="color: rgb(51, 51, 51); font-family: Helvetica, &quot;Hiragino Sans GB W3&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Arial, sans-serif; font-size: medium; background-color: rgb(255, 255, 255);">亲，注意了，我们只为筹集老客户，你获得的价格和质量都将是最完美的，期待你的联系。&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Helvetica, &quot;Hiragino Sans GB W3&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);"/><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Helvetica, &quot;Hiragino Sans GB W3&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);"/><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-weight: 800; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Helvetica, &quot;Hiragino Sans GB W3&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Arial, sans-serif; vertical-align: baseline; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);">业务主体：</span><span style="color: rgb(51, 51, 51); font-family: Helvetica, &quot;Hiragino Sans GB W3&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Arial, sans-serif; font-size: medium; background-color: rgb(255, 255, 255);">iTunes付费、免费、畅销、aso、热搜、安装、激活、升级等业务主体。Android各大市场榜单、应用宝、安智、安卓、91、百度、九游等或下载量、激活量、应用包留存都可@才扬&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Helvetica, &quot;Hiragino Sans GB W3&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);"/><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Helvetica, &quot;Hiragino Sans GB W3&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Arial, sans-serif; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255);"/><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-weight: 800; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Helvetica, &quot;Hiragino Sans GB W3&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Arial, sans-serif; vertical-align: baseline; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);">业务实力：</span><span style="color: rgb(51, 51, 51); font-family: Helvetica, &quot;Hiragino Sans GB W3&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Arial, sans-serif; font-size: medium; background-color: rgb(255, 255, 255);">上前部手机随时更换，给你带来全新的自然量，让你不在担心效果的不达标，领导的批评等外界因素。</span></p>', '亲，才扬科技奋发图强，再次席卷市场而来！改变应用命运的时刻就在此时，我们专做企业化营销，为一切应用发现铺平道路！亲，为什么要选择我们？因为我们用最低的价格做最专业的事。例：有人优化排名会出现收到警告，降权重，跳出市场，剔排名，都是因为没有经', 1495707435, 1496474099, 22, 21, 1, 0, '', 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `newt_attachment`
--

CREATE TABLE IF NOT EXISTS `newt_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '' COMMENT '原文件名',
  `filepath` varchar(200) NOT NULL DEFAULT '',
  `filetype` smallint(6) NOT NULL DEFAULT '1',
  `filesize` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `haslitpic` tinyint(1) NOT NULL DEFAULT '1',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=130 ;

--
-- 转存表中的数据 `newt_attachment`
--

INSERT INTO `newt_attachment` (`id`, `title`, `filepath`, `filetype`, `filesize`, `haslitpic`, `uploadtime`, `aid`, `userid`) VALUES
(1, 'logo-nav.png', 'img1/20170316/58ca60107fdcf.png', 1, 127544, 1, 1489657872, 1, 0),
(2, 'about.gif', 'img1/20170317/58cb56916d67a.gif', 1, 330786, 1, 1489720978, 1, 0),
(3, 'show_38.gif', 'img1/20170317/58cb5741626f2.gif', 1, 52713, 1, 1489721153, 1, 0),
(4, 'show_15.gif', 'img1/20170317/58cb581a7d644.gif', 1, 53936, 1, 1489721370, 1, 0),
(5, 'show_18.gif', 'img1/20170317/58cb58489c4f2.gif', 1, 50697, 1, 1489721416, 1, 0),
(6, 'show_20.gif', 'img1/20170317/58cb586b45e10.gif', 1, 51811, 1, 1489721451, 1, 0),
(7, 'shouye_25.gif', 'img1/20170317/58cb58976253b.gif', 1, 94837, 1, 1489721495, 1, 0),
(8, 'show_05.gif', 'img1/20170317/58cb7bc39d2b0.gif', 1, 51514, 1, 1489730499, 1, 0),
(9, 'show_07.gif', 'img1/20170317/58cb7bea91044.gif', 1, 122343, 1, 1489730538, 1, 0),
(10, 'show_09.gif', 'img1/20170317/58cb7bfbd1b60.gif', 1, 133527, 1, 1489730556, 1, 0),
(11, 'shouye_21.gif', 'img1/20170317/58cb7ecac73e2.gif', 1, 94075, 1, 1489731275, 1, 0),
(12, 'aboutas-yougeman_03.gif', 'img1/20170317/58cb852f79c16.gif', 1, 86801, 1, 1489732911, 1, 0),
(13, 'aboutas-yougeman_04.png', 'img1/20170317/58cb853bdada4.png', 1, 194694, 1, 1489732923, 1, 0),
(14, 'tou_03.gif', 'img1/20170317/58cb86d28632f.gif', 1, 33796, 1, 1489733330, 1, 0),
(15, 'tou_07.gif', 'img1/20170317/58cb86e9510ce.gif', 1, 38554, 1, 1489733353, 1, 0),
(16, 'logo.png', 'img1/20170519/591e88d7359f0.png', 1, 3733, 1, 1495173335, 1, 0),
(17, 'place.jpg', 'img1/20170519/591e99586f6d6.jpg', 1, 154821, 1, 1495177560, 1, 0),
(18, 'QQ截图20170519152411.jpg', 'img1/20170519/591e9db6f0156.jpg', 1, 101063, 1, 1495178679, 1, 0),
(19, 'ruogucaotang.jpg', 'img1/20170519/591ea2d21390f.jpg', 1, 101353, 1, 1495179986, 1, 0),
(20, 'ruogucaotang.jpg', 'img1/20170519/591ea4e4f349e.jpg', 1, 101353, 1, 1495180517, 1, 0),
(21, 'ruogucaotang.jpg', 'img1/20170519/591ea7e5921c8.jpg', 1, 101353, 1, 1495181285, 1, 0),
(22, 'cy.png', 'img1/20170519/591ebe92b6bdb.png', 1, 12894, 1, 1495187090, 1, 0),
(23, 'cy.png', 'img1/20170519/591ec21274644.png', 1, 12517, 1, 1495187986, 1, 0),
(24, 'cy.png', 'img1/20170520/591fa72be76a9.png', 1, 12322, 1, 1495246635, 1, 0),
(25, 'ruogucaotang.jpg', 'img1/20170520/591fb3f0068b5.jpg', 1, 101353, 1, 1495249904, 1, 0),
(26, '1.jpg', 'img1/20170520/591fb572e7ac7.jpg', 1, 108462, 1, 1495250291, 1, 0),
(27, '2.jpg', 'img1/20170520/591fb59a62ec8.jpg', 1, 111262, 1, 1495250330, 1, 0),
(28, '3.jpg', 'img1/20170520/591fb5b52cdac.jpg', 1, 170023, 1, 1495250357, 1, 0),
(29, 'ruogucaotang.jpg', 'img1/20170520/591fbde2acb8a.jpg', 1, 101353, 1, 1495252450, 1, 0),
(30, 'about_1.png', 'img1/20170522/592243e03db03.png', 1, 53722, 1, 1495417824, 1, 0),
(31, 'about_2.png', 'img1/20170522/592243f588346.png', 1, 14283, 1, 1495417845, 1, 0),
(32, 'about_2.png', 'img1/20170522/5922441525c4d.png', 1, 14283, 1, 1495417877, 1, 0),
(33, 'about_3.png', 'img1/20170522/5922441d70590.png', 1, 11116, 1, 1495417885, 1, 0),
(34, 'yhs.jpg', 'img1/20170524/59255803cd063.jpg', 1, 30954, 1, 1495619587, 1, 0),
(35, 'ABUIABACGAAg2eDwtgUo6YeY4QIwsAQ4wwE.jpg', 'img1/20170525/592671d14614b.jpg', 1, 40638, 1, 1495691729, 1, 0),
(36, '1.png', 'img1/20170525/592675bd5ed82.png', 1, 61858, 1, 1495692733, 1, 0),
(37, '2.png', 'img1/20170525/592675f59a77b.png', 1, 123427, 1, 1495692789, 1, 0),
(38, '3.png', 'img1/20170525/5926761d92b99.png', 1, 43516, 1, 1495692829, 1, 0),
(39, '4.png', 'img1/20170525/59267637a0844.png', 1, 61123, 1, 1495692855, 1, 0),
(40, '5.png', 'img1/20170525/59267657c3252.png', 1, 25432, 1, 1495692887, 1, 0),
(41, '000009.jpg', 'img1/20170525/592682b47311b.jpg', 1, 63214, 1, 1495696052, 1, 0),
(42, 'ABUIABACGAAgs-m_twUosMzBVTCYAjjcAQ.jpg', 'img1/20170525/592682ce63516.jpg', 1, 11886, 1, 1495696078, 1, 0),
(43, 'ABUIABACGAAg8qb5tgUotuGA3wUwvgQ4jwI.jpg', 'img1/20170525/59268356b1263.jpg', 1, 97652, 1, 1495696214, 1, 0),
(44, 'case1.jpg', 'img1/20170525/5926888a70fb6.jpg', 1, 24774, 1, 1495697546, 1, 0),
(45, 'case2.jpg', 'img1/20170525/5926893895d67.jpg', 1, 42230, 1, 1495697720, 1, 0),
(46, 'case1.jpg', 'img1/20170525/59268f3b788ba.jpg', 1, 24774, 1, 1495699259, 1, 0),
(47, 'case2.jpg', 'img1/20170525/59268f4f6fca8.jpg', 1, 42230, 1, 1495699279, 1, 0),
(48, 'case3.jpg', 'img1/20170525/59268f609d70f.jpg', 1, 40938, 1, 1495699296, 1, 0),
(49, 'case4.jpg', 'img1/20170525/592690d943bad.jpg', 1, 40852, 1, 1495699673, 1, 0),
(50, 'case5.jpg', 'img1/20170525/59269382eea04.jpg', 1, 41781, 1, 1495700355, 1, 0),
(51, 'case6.jpg', 'img1/20170525/5926940c0b894.jpg', 1, 47835, 1, 1495700492, 1, 0),
(52, 'case7.jpg', 'img1/20170525/592694bc67d7c.jpg', 1, 43725, 1, 1495700668, 1, 0),
(53, 'case8.jpg', 'img1/20170525/59269584c2499.jpg', 1, 34383, 1, 1495700868, 1, 0),
(54, 'case9.jpg', 'img1/20170525/59269605173a3.jpg', 1, 37501, 1, 1495700997, 1, 0),
(55, 'case10.jpg', 'img1/20170525/5926966903dee.jpg', 1, 45181, 1, 1495701097, 1, 0),
(56, 'case11.jpg', 'img1/20170525/592696bc15a1e.jpg', 1, 36271, 1, 1495701180, 1, 0),
(57, 'case12.jpg', 'img1/20170525/5926972376c78.jpg', 1, 32499, 1, 1495701283, 1, 0),
(58, 'case13.jpg', 'img1/20170525/592698145f883.jpg', 1, 35918, 1, 1495701524, 1, 0),
(59, 'case14.jpg', 'img1/20170525/592698e49f3b3.jpg', 1, 47824, 1, 1495701732, 1, 0),
(60, 'case15.jpg', 'img1/20170525/5926995cbc021.jpg', 1, 47518, 1, 1495701852, 1, 0),
(61, '１.png', 'img1/20170602/59312aa9350bc.png', 1, 23190, 1, 1496394409, 1, 0),
(62, '1.jpg', 'img1/20170603/593222610976a.jpg', 1, 135692, 1, 1496457825, 1, 0),
(63, 'aHR0cDovL2ExLm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlMTI3L3Y0L2Jh', 'img1/20170603/593223389ed93.jpg', 1, 104117, 1, 1496458040, 1, 0),
(64, 'aHR0cDovL2ExLm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlMTE3L3Y0LzBh', 'img1/20170603/59322338db548.jpg', 1, 128432, 1, 1496458041, 1, 0),
(65, 'aHR0cDovL2E1Lm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlMTI3L3Y0Lzgx', 'img1/20170603/59322339288d2.jpg', 1, 133109, 1, 1496458041, 1, 0),
(66, 'aHR0cDovL2EyLm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlMTE3L3Y0L2I3', 'img1/20170603/593223399a778.jpg', 1, 126634, 1, 1496458041, 1, 0),
(67, 'aHR0cDovL2EyLm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlMTE3L3Y0LzZh', 'img1/20170603/59322339da839.jpg', 1, 137818, 1, 1496458042, 1, 0),
(68, 'aHR0cDovL2EyLm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlMTE3L3Y0LzZh', 'img1/20170603/593225504b913.jpg', 1, 137818, 1, 1496458576, 1, 0),
(69, '1495591070413.png', 'img1/20170603/59323100a1fb7.png', 1, 439363, 1, 1496461568, 1, 0),
(70, '1495591070413.png', 'img1/20170603/5932326e16255.png', 1, 432445, 1, 1496461934, 1, 0),
(71, 'img.jpg', 'img1/20170603/59323337043b0.jpg', 1, 486144, 1, 1496462135, 1, 0),
(72, '15349877.png', 'img1/20170603/59324b3e98dcc.png', 1, 1052035, 1, 1496468286, 1, 0),
(73, '512x512bb.jpg', 'img1/20170603/59324c9ec0fa6.jpg', 1, 64775, 1, 1496468639, 1, 0),
(74, '6.jpg', 'img1/20170603/59324dc60b277.jpg', 1, 81836, 1, 1496468934, 1, 0),
(75, '7.jpg', 'img1/20170603/59324ea569ba5.jpg', 1, 86244, 1, 1496469157, 1, 0),
(76, '8.jpg', 'img1/20170603/59324f17daa8c.jpg', 1, 69001, 1, 1496469272, 1, 0),
(77, '9.jpg', 'img1/20170603/59324f8eb32cb.jpg', 1, 46669, 1, 1496469391, 1, 0),
(78, '10.jpg', 'img1/20170603/59325152bfcc6.jpg', 1, 66002, 1, 1496469843, 1, 0),
(79, '3.jpg', 'img1/20170603/593251d101f9f.jpg', 1, 199546, 1, 1496469969, 1, 0),
(80, '2.png', 'img1/20170603/5932524387281.png', 1, 22838, 1, 1496470083, 1, 0),
(81, '6.jpg', 'img1/20170603/593252528d0f9.jpg', 1, 211700, 1, 1496470099, 1, 0),
(82, '71729.jpg', 'img1/20170603/5932529131c8f.jpg', 1, 203454, 1, 1496470161, 1, 0),
(83, '11.jpg', 'img1/20170603/5932542c2ce6a.jpg', 1, 87491, 1, 1496470572, 1, 0),
(84, '12.jpg', 'img1/20170603/593254c54cf2a.jpg', 1, 46795, 1, 1496470725, 1, 0),
(85, '13.jpg', 'img1/20170603/5932557e0439e.jpg', 1, 22726, 1, 1496470910, 1, 0),
(86, '14.jpg', 'img1/20170603/593255ccb9e01.jpg', 1, 20586, 1, 1496470989, 1, 0),
(87, '15.jpg', 'img1/20170603/5932568f3e7df.jpg', 1, 33496, 1, 1496471183, 1, 0),
(88, '3.jpg', 'img1/20170603/593256ced3124.jpg', 1, 190032, 1, 1496471247, 1, 0),
(89, '6.jpg', 'img1/20170603/593256fd372d0.jpg', 1, 199491, 1, 1496471293, 1, 0),
(90, '71729.jpg', 'img1/20170603/59325726dfc9d.jpg', 1, 171563, 1, 1496471335, 1, 0),
(91, 'case4.jpg', 'img1/20170603/59325e285dee6.jpg', 1, 80669, 1, 1496473128, 1, 0),
(92, 'aHR0cDovL2E1Lm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlMTI3L3Y0Lzgx', 'img1/20170603/593261de27db4.jpg', 1, 133109, 1, 1496474078, 1, 0),
(93, 'aHR0cDovL2ExLm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlMTE3L3Y0LzBh', 'img1/20170603/5932622d18dde.jpg', 1, 128432, 1, 1496474157, 1, 0),
(94, 'aHR0cDovL2ExLm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlMTI3L3Y0L2Jh', 'img1/20170603/59326236c5960.jpg', 1, 104117, 1, 1496474167, 1, 0),
(95, 'aHR0cDovL2EyLm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlMTE3L3Y0L2I3', 'img1/20170603/5932624c14f27.jpg', 1, 126634, 1, 1496474188, 1, 0),
(96, 'aHR0cDovL2EyLm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlMTE3L3Y0LzZh', 'img1/20170603/59326259c06ac.jpg', 1, 137818, 1, 1496474202, 1, 0),
(97, 'aHR0cDovL2ExLm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlMTE3L3Y0L2Ux', 'img1/20170603/5932659053bd2.jpg', 1, 112304, 1, 1496475024, 1, 0),
(98, 'aHR0cDovL2ExLm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlMTE3L3Y0L2Ux', 'img1/20170603/59326804344e9.jpg', 1, 112304, 1, 1496475652, 1, 0),
(99, 'aHR0cDovL2EzLm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlMTE3L3Y0LzM4', 'img1/20170603/5932684b67d0c.jpg', 1, 106837, 1, 1496475723, 1, 0),
(100, 'aHR0cDovL2E0Lm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlMTExL3Y0LzU3', 'img1/20170603/59326fdd425ee.jpg', 1, 74039, 1, 1496477661, 1, 0),
(101, 'aHR0cDovL2E1Lm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlMTIyL3Y0L2E4', 'img1/20170603/59327034a868b.jpg', 1, 66870, 1, 1496477748, 1, 0),
(102, 'aHR0cDovL2E1Lm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlOTEvdjQvNGIv', 'img1/20170603/59327040c31d1.jpg', 1, 67816, 1, 1496477761, 1, 0),
(103, 'aHR0cDovL2E1Lm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlOTEvdjQvNGIv', 'img1/20170603/5932705987dd2.jpg', 1, 67816, 1, 1496477785, 1, 0),
(104, 'aHR0cDovL2ExLm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlMTExL3Y0LzFk', 'img1/20170603/593270620311f.jpg', 1, 85582, 1, 1496477794, 1, 0),
(105, 'aHR0cDovL2EzLm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlMTIyL3Y0L2Jl', 'img1/20170603/5932706f47c6c.jpg', 1, 73624, 1, 1496477807, 1, 0),
(106, '4.jpg', 'img1/20170603/593271771a919.jpg', 1, 185066, 1, 1496478071, 1, 0),
(107, '44.jpg', 'img1/20170603/5932717e0c070.jpg', 1, 342772, 1, 1496478078, 1, 0),
(108, '444.jpg', 'img1/20170603/5932718744a49.jpg', 1, 380418, 1, 1496478087, 1, 0),
(109, '4444.jpg', 'img1/20170603/5932718fb3cc3.jpg', 1, 375009, 1, 1496478096, 1, 0),
(110, '44444.jpg', 'img1/20170603/59327198ee78e.jpg', 1, 347459, 1, 1496478105, 1, 0),
(111, '51.jpg', 'img1/20170603/5932733537b22.jpg', 1, 148666, 1, 1496478517, 1, 0),
(112, '5.jpg', 'img1/20170603/5932733577ef7.jpg', 1, 137559, 1, 1496478517, 1, 0),
(113, '52.jpg', 'img1/20170603/59327335b21ca.jpg', 1, 149108, 1, 1496478517, 1, 0),
(114, '53.jpg', 'img1/20170603/5932733667303.jpg', 1, 146398, 1, 1496478518, 1, 0),
(115, '54.jpg', 'img1/20170603/59327336aa433.jpg', 1, 156233, 1, 1496478518, 1, 0),
(116, '61.jpg', 'img1/20170603/59327459c2a9b.jpg', 1, 170030, 1, 1496478810, 1, 0),
(117, '62.jpg', 'img1/20170603/5932745a165d1.jpg', 1, 155766, 1, 1496478810, 1, 0),
(118, '63.jpg', 'img1/20170603/5932745a59b8d.jpg', 1, 180248, 1, 1496478810, 1, 0),
(119, '64.jpg', 'img1/20170603/5932745aa7cbb.jpg', 1, 138784, 1, 1496478811, 1, 0),
(120, '65.jpg', 'img1/20170603/5932745b16749.jpg', 1, 144929, 1, 1496478811, 1, 0),
(121, '71.jpg', 'img1/20170603/5932757f0e5e0.jpg', 1, 174091, 1, 1496479103, 1, 0),
(122, '72.jpg', 'img1/20170603/5932757f4340b.jpg', 1, 154406, 1, 1496479103, 1, 0),
(123, '82.jpg', 'img1/20170603/59327608a2156.jpg', 1, 123695, 1, 1496479240, 1, 0),
(124, '81.jpg', 'img1/20170603/59327608eb8d7.jpg', 1, 91938, 1, 1496479241, 1, 0),
(125, '83.jpg', 'img1/20170603/5932760932800.jpg', 1, 119371, 1, 1496479241, 1, 0),
(126, '84.jpg', 'img1/20170603/59327609d1b1c.jpg', 1, 100109, 1, 1496479242, 1, 0),
(127, '85.jpg', 'img1/20170603/5932760a22d53.jpg', 1, 115902, 1, 1496479242, 1, 0),
(128, '92.jpg', 'img1/20170603/593276cc55729.jpg', 1, 52218, 1, 1496479436, 1, 0),
(129, '91.jpg', 'img1/20170603/593276cc78bec.jpg', 1, 70311, 1, 1496479436, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `newt_attachmentindex`
--

CREATE TABLE IF NOT EXISTS `newt_attachmentindex` (
  `attid` int(10) unsigned NOT NULL DEFAULT '0',
  `arcid` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` int(10) unsigned NOT NULL DEFAULT '0',
  `desc` varchar(20) NOT NULL DEFAULT '',
  KEY `attid` (`attid`),
  KEY `arcid` (`arcid`),
  KEY `modelid` (`modelid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `newt_attachmentindex`
--

INSERT INTO `newt_attachmentindex` (`attid`, `arcid`, `modelid`, `desc`) VALUES
(1, 3, 0, 'link'),
(18, 4, 0, 'block'),
(3, 2, 4, ''),
(4, 3, 4, ''),
(5, 4, 4, ''),
(6, 5, 4, ''),
(7, 6, 4, ''),
(8, 7, 4, ''),
(9, 8, 4, ''),
(10, 9, 4, ''),
(11, 10, 4, ''),
(90, 29, 1, ''),
(41, 28, 1, ''),
(29, 11, 4, ''),
(80, 1, 0, 'block'),
(88, 31, 1, ''),
(89, 15, 0, 'category'),
(33, 16, 0, 'category'),
(31, 17, 0, 'category'),
(34, 12, 4, ''),
(35, 15, 2, ''),
(40, 16, 2, ''),
(39, 16, 2, ''),
(38, 16, 2, ''),
(37, 16, 2, ''),
(36, 16, 2, ''),
(42, 26, 1, ''),
(43, 32, 1, ''),
(44, 33, 1, ''),
(45, 34, 1, ''),
(62, 13, 4, ''),
(70, 14, 4, ''),
(100, 15, 4, ''),
(106, 16, 4, ''),
(111, 17, 4, ''),
(116, 18, 4, ''),
(121, 19, 4, ''),
(123, 20, 4, ''),
(128, 21, 4, ''),
(78, 22, 4, ''),
(83, 23, 4, ''),
(84, 24, 4, ''),
(85, 25, 4, ''),
(86, 26, 4, ''),
(87, 27, 4, ''),
(89, 30, 1, ''),
(96, 13, 4, ''),
(95, 13, 4, ''),
(94, 13, 4, ''),
(93, 13, 4, ''),
(92, 13, 4, ''),
(99, 14, 4, ''),
(98, 14, 4, ''),
(101, 15, 4, ''),
(103, 15, 4, ''),
(104, 15, 4, ''),
(105, 15, 4, ''),
(71, 15, 4, ''),
(107, 16, 4, ''),
(108, 16, 4, ''),
(109, 16, 4, ''),
(110, 16, 4, ''),
(91, 16, 4, ''),
(112, 17, 4, ''),
(113, 17, 4, ''),
(114, 17, 4, ''),
(115, 17, 4, ''),
(73, 17, 4, ''),
(117, 18, 4, ''),
(118, 18, 4, ''),
(119, 18, 4, ''),
(120, 18, 4, ''),
(74, 18, 4, ''),
(122, 19, 4, ''),
(75, 19, 4, ''),
(124, 20, 4, ''),
(125, 20, 4, ''),
(126, 20, 4, ''),
(127, 20, 4, ''),
(76, 20, 4, ''),
(129, 21, 4, ''),
(77, 21, 4, '');

-- --------------------------------------------------------

--
-- 表的结构 `newt_block`
--

CREATE TABLE IF NOT EXISTS `newt_block` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(200) NOT NULL DEFAULT '' COMMENT '说明',
  `content` text COMMENT '内容',
  `blocktype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `newt_block`
--

INSERT INTO `newt_block` (`id`, `name`, `remark`, `content`, `blocktype`) VALUES
(1, 'logo', '标志', '/uploads/img1/20170603/5932524387281.png', 2),
(2, 'qq', 'qq', '2376656812', 1),
(3, 'email', '邮箱', 'yssk007@126.com', 1),
(4, 'map', '地图', '/uploads/img1/20170519/591e9db6f0156.jpg', 2);

-- --------------------------------------------------------

--
-- 表的结构 `newt_category`
--

CREATE TABLE IF NOT EXISTS `newt_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目分类名称',
  `ename` varchar(200) NOT NULL DEFAULT '' COMMENT '别名',
  `catpic` varchar(150) NOT NULL DEFAULT '',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类',
  `modelid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属模型',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类别',
  `seotitle` varchar(50) NOT NULL DEFAULT '',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `description` varchar(255) DEFAULT '' COMMENT '关键字',
  `template_category` varchar(60) NOT NULL DEFAULT '',
  `template_list` varchar(60) NOT NULL DEFAULT '',
  `template_show` varchar(60) NOT NULL DEFAULT '',
  `content` text COMMENT '内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '显示',
  `sort` smallint(6) NOT NULL DEFAULT '100' COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='栏目分类表' AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `newt_category`
--

INSERT INTO `newt_category` (`id`, `name`, `ename`, `catpic`, `pid`, `modelid`, `type`, `seotitle`, `keywords`, `description`, `template_category`, `template_list`, `template_show`, `content`, `status`, `sort`) VALUES
(1, '产品服务', 'service', '', 0, 2, 0, '产品服务', '产品服务', '', '', 'List_service.html', 'Show_case.html', '', 1, 2),
(15, 'ASO排名优化', 'aso', '/uploads/img1/20170603/593256fd372d0.jpg', 1, 2, 0, '', '', 'ASO (App Store Optimization)即应用市场优化。通过找准AppStore和各大安卓应用市场的搜索排名规则，提升APP在应用市场搜索结果排名技术。', '', 'List_page.html', 'Show_case.html', '<p style="line-height:normal;"><span style="font-size:14px;color:#000000;">ASO (App Store Optimization)即应用市场优化。通过找准AppStore和各大安卓应用市场的搜索排名规则，用“优化”的方式和应用市场的搜索机制“谈恋爱”，提升APP在应用市场搜索结果排名技术。才扬科技多年丰富的ASO优化实战项目经验，并整合了行业优质的ASO推广资源，通过专业的ASO优化工具进行科学选词，为客户量身定制ASO优化方案并有效执行。</span></p><p style="line-height:normal;"><span style="font-size:14px;"><br/></span></p><p style="line-height:normal;"><strong><span style="font-size:14px;"><span style="color:#3333FF;"><span style="color:#CC0000;">ASO排名优化--覆盖AppStore应用商店</span></span><span style="color:#CC0000;">和国内安卓主流应用商店</span></span></strong></p><p style="line-height:normal;"><strong><span style="font-size:14px;"><span style="color:#CC0000;"><br/></span></span></strong></p><p style="line-height:normal;"><strong><span style="font-size:14px;"><span style="color:#CC0000;"><img src="/uploads/img1/20170525/592671d14614b.jpg" width="560" height="195" alt="ABUIABACGAAg2eDwtgUo6YeY4QIwsAQ4wwE.jpg" title="592671d14614b.jpg"/></span></span></strong></p><p style="line-height:normal;"><strong><span style="font-size:14px;"><span style="color:#CC0000;"><br/></span></span></strong></p><p style="line-height:normal;"><strong><span style="font-size:14px;"><span style="color:#CC0000;"></span></span></strong></p><p><strong><span style="font-size:14px;color:#CC0000;">AppStore 应用商店ASO优化</span></strong></p><p><br/></p><p><strong><span style="font-size:14px;color:#000000;">1、ASO优化报告：</span></strong><span style="font-size:14px;color:#000000;">标题&amp;关键词设置和竞品分析报告，迅速提升App在AppStore中搜索热词覆盖数量；</span></p><p><br/></p><p><strong><span style="font-size:14px;color:#000000;">2、搜索热词排名：</span></strong><span style="font-size:14px;color:#000000;">优选关键词组进行整体ASO排名提升，获取Top10、Top5、Top3、Top1更靠前的搜索排名；</span></p><p><br/></p><p><strong><span style="font-size:14px;color:#000000;">3、用户好评优化：</span></strong><span style="font-size:14px;color:#000000;">真实用户下载并根据应用类型原创撰写五星好评，建立良好口碑提升用户下载转化率；</span></p><p><br/></p><p><strong><span style="font-size:14px;color:#000000;">4、热门搜索榜优化：</span></strong><span style="font-size:14px;color:#000000;">通过ASO技术迅速提升App进入苹果AppStore热门搜索榜排名位置；</span></p><p><br/></p><p><strong><span style="font-size:14px;color:#000000;">5、免费总榜&amp;收费总榜&amp;分类榜优化：</span></strong><span style="font-size:14px;color:#000000;">通过ASO技术迅速提升App进入苹果AppStore中国区免费总榜或收费总榜或分类榜靠前位置。</span></p><p><br/></p><p><strong><span style="font-size:14px;color:#000000;">6、AppStore 加速审核：</span></strong><span style="font-size:14px;color:#000000;">帮助您的 iOS 应用在提交 AppStore 的48小时之内，就可以得到官方的审核结果。极大的节省等待审核时间，让您的 App 更快上线。</span></p><p><span style="font-size:14px;"><br/></span></p><p><strong><span style="font-size:14px;color:#CC0000;">各大安卓应用商店ASO优化（360、应用宝、百度、小米、豌豆等等）</span></strong></p><p><br/></p><p><strong><span style="font-size:14px;color:#000000;">1、应用商店覆盖：</span></strong><span style="font-size:14px;color:#000000;">协助客户上传应用至国内主流安卓应用市场，并建立规范的各渠道移动统计机制；</span></p><p><br/></p><p><strong><span style="font-size:14px;color:#000000;">2、ASO优化报告：</span></strong><span style="font-size:14px;color:#000000;">利用各安卓应用市场规则，针对应用的标签、关键词、类别等提供ASO优化建议；</span></p><p><br/></p><p><strong><span style="font-size:14px;color:#000000;">3、应用下载量提升：</span></strong><span style="font-size:14px;color:#000000;">分析竞品应用下载数据，制定合理的App优化推广计划，稳步提升应用下载量；</span></p><p><br/></p><p><strong><span style="font-size:14px;color:#000000;">4、用户好评优化：</span></strong><span style="font-size:14px;color:#000000;">收集同行业应用优质好评，定期监测和优化App在各大安卓应用市场的用户评论；</span></p><p><br/></p><p><strong><span style="font-size:14px;color:#000000;">5、首发&amp;专题申请：</span></strong><span style="font-size:14px;color:#000000;">根据应用类型，协助客户选择适合的应用市场进行新版本首发及专题推荐申请。</span></p><p><span style="font-size:14px;color:#000000;"><br/></span></p><p><span style="font-size:14px;color:#000000;"><br/></span></p>', 1, 1),
(24, '焦点图', 'jiaodian', '', 0, 1, 0, '', '', '', '', 'List_about.html', 'Show_case.html', NULL, 0, 20),
(16, 'AppStore App推广', 'app', '/uploads/img1/20170522/5922441d70590.png', 1, 2, 0, '', '', '通过优化迅速提升AppStore应用商店App的排行榜单和搜索排名，全面覆盖AppStore应用商店。根据不同类型APP提供定制化的苹果App营销推广服务。', '', 'List_page.html', 'Show_case.html', '<p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><span style="color:#000000;font-size:14px;">通过优化技术迅速提升AppStore应用商店App的排行榜单和搜索排名，全面覆盖苹果AppStore应用商店。才扬科技整合了行业优质苹果APP推广资源，并拥有丰富的iOS应用推广项目经验，根据不同APP类型提供定制化的苹果App营销推广服务。</span></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><span style="color:#000000;font-size:14px;"><strong style="line-height:21.6px;"><span style="font-size:13px;color:#CC0000;"><span style="color:#CC0000;font-size:12px;">任何App推广问题及优化方案，请联系推广顾问：</span><a href="http://wpa.qq.com/msgrd?v=3&uin=2376656812&site=qq&menu=yes" target="_blank"><img src="http://0.ss.faisys.com/image/comm/ueditor/images/menu/pa1.gif" alt="杨总"/><span style="color:#CC0000;text-decoration:none;font-size:12px;"> 杨总</span></a></span></strong></span></p><p><strong style="line-height:1.8;"><span style="line-height:1.8;color:#CC0000;font-size:12px;">QQ:2376656812</span></strong></p><p><strong><span style="line-height:1.8;color:#CC0000;font-size:12px;">电话：023-63001336</span></strong></p><p><strong><span style="color:#CC0000;font-size:12px;">Email：yssk007@126.com</span></strong></p><p style="line-height:20px;font-size:13px;color:#555555;font-family:微软雅黑;background-color:#FCFCFC;"><strong><strong style="color:#1979BF;"><span style="color:#000000;"></span></strong></strong></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><strong><span style="color:#CC0000;font-size:15px;"><br/></span></strong></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><strong><span style="color:#CC0000;font-size:15px;">苹果应用商店AppStore推广</span></strong></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><br/></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><strong><span style="color:#000000;font-size:14px;">1、iOS免费总榜排名：</span></strong><span style="color:#000000;font-size:14px;">通过ASO技术迅速提升APP进入苹果AppStore免费总榜Top200至Top1及分类榜；</span></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><span style="color:#000000;font-size:14px;"><img src="/uploads/img1/20170525/592675bd5ed82.png" width="277" height="398" alt="1.png" title="592675bd5ed82.png"/></span></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><strong><span style="color:#000000;font-size:14px;"><br/></span></strong></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><strong><span style="color:#000000;font-size:14px;"><br/></span></strong></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><strong><span style="color:#000000;font-size:14px;">2、ASO关键词搜索排名优化：</span></strong><span style="color:#000000;font-size:14px;">遵循苹果iTunes的规则，结合iOS App搜索指数热度数据，优化APP关键词搜索排名，将关键词提升至top3或top1，当用户搜索相应关键词显示APP排名前列，以增加APP曝光率获取更多真实用户下载注册；</span></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><img src="/uploads/img1/20170525/592675f59a77b.png" alt="2.png" title="592675f59a77b.png"/></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><br/></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><br/></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><strong><span style="color:#000000;font-size:14px;">3、App评论优化：</span></strong><span style="color:#000000;font-size:14px;">真实用户下载评论，可由客户提供自有评论内容；</span></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><img src="/uploads/img1/20170525/5926761d92b99.png" width="317" height="411" alt="3.png" title="5926761d92b99.png"/></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><br/></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><br/></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><strong><span style="color:#000000;font-size:14px;">4、iOS付费总榜排名：</span></strong><span style="color:#000000;font-size:14px;">真实用户付费下载App，稳步提升App进入苹果AppStore付费总榜的Top25至Top1；</span></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><img src="/uploads/img1/20170525/59267637a0844.png" width="276" height="404" alt="4.png" title="59267637a0844.png"/></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><br/></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><br/></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><strong><span style="color:#000000;font-size:14px;">5、iOS热门搜索榜：</span></strong><span style="color:#000000;font-size:14px;">真实用户搜索并下载App，稳步提升App进入苹果AppStore热门搜索排行榜Top10至Top5。</span></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><span style="color:#000000;font-size:14px;"><img src="/uploads/img1/20170525/59267657c3252.png" width="322" height="429" alt="5.png" title="59267657c3252.png"/></span></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><span style="color:#000000;font-size:14px;"><br/></span></p><p style="color:#999999;font-family:微软雅黑, sans-serif;font-size:13px;"><span style="color:#000000;font-size:14px;"><br/></span></p><p><strong style="line-height:21.6px;"><span style="font-size:13px;color:#CC0000;">任何App推广问题及优化方案，请联系推广顾问：<a href="http://wpa.qq.com/msgrd?v=3&uin=2376656812&site=qq&menu=yes" target="_blank"><img src="http://0.ss.faisys.com/image/comm/ueditor/images/menu/pa1.gif" alt="杨总"/> 杨总</a> </span></strong></p><p><strong style="line-height:21.6px;"><span style="font-size:13px;color:#CC0000;"><br/></span></strong></p>', 1, 1),
(17, 'Android App推广', 'android', '/uploads/img1/20170522/592243f588346.png', 1, 2, 0, '', '', '针对国内各大安卓应用市场不同排名算法规则，结合多年应用商店排名优化经验，提供高质量App推广服务，帮助客户以更低的成本获取高质量用户。', '', 'List_page.html', 'Show_case.html', '<p style="line-height:21.6px;color:#999999;font-family:微软雅黑, 黑体, 新宋体, &#39;Arial Unicode MS&#39;;"><span style="font-size:14px;color:#000000;">针对国内各大安卓应用市场不同排名算法规则，提供高质量App推广服务，帮助客户以更低的成本获取高质量用户，带来更高的用户新增、活跃度、留存率并结合社会化媒体、搜索引擎等渠道，为安卓版APP获取的用户。</span></p><p style="line-height:21.6px;color:#999999;font-family:微软雅黑, 黑体, 新宋体, &#39;Arial Unicode MS&#39;;"><span style="color:#000000;"><br/></span></p><p style="line-height:21.6px;color:#999999;font-family:微软雅黑, 黑体, 新宋体, &#39;Arial Unicode MS&#39;;"><span style="color:#000000;"></span></p><p><strong><span style="color:#CC0000;font-size:15px;">各大安卓应用商店推广</span></strong></p><p><br/></p><p><strong><span style="font-size:14px;color:#000000;">1、安卓商店应用提交：</span></strong><span style="font-size:14px;color:#000000;">按照ASO优化规则，帮助用户将App提交主流安卓手机应用商店，包括360手机助手、应用宝、百度手机助手、小米应用商店、安卓市场、豌豆荚、91助手、安智市场等；</span></p><p><br/></p><p><strong><span style="font-size:14px;color:#000000;">2、新品首发推荐申请</span></strong><span style="font-size:14px;color:#000000;">：主流安卓应用商店联合首发&amp;推荐申请；</span></p><p><br/></p><p><strong><span style="font-size:14px;color:#000000;">3、安卓商店数据优化：</span></strong><span style="font-size:14px;color:#000000;">根据同类产品下载量、评论等数据，针对各大安卓商店提升下载量、人工点星好评，提升App推广转化率；</span></p><p><br/></p><p><strong><span style="font-size:14px;color:#000000;">4、安卓商店排名优化：</span></strong><span style="font-size:14px;color:#000000;">通过ASO技术优化关键词搜索排名、提升应用商店分类榜排名Top20至Top10，获得更多自然下载；</span></p><p><br/></p><p><strong><span style="font-size:14px;color:#000000;">5、安卓商店推荐广告：</span></strong><span style="font-size:14px;color:#000000;">精选优质应用商店CPT&amp;CPD广告资源，提供高性价比的广告推荐位打包服务并制定合理的排期组合，配套新闻&amp;评测软文、论坛活动置顶等媒体推广服务，全面提升安卓App推广效率。</span></p><p style="line-height:21.6px;color:#999999;font-family:微软雅黑, 黑体, 新宋体, &#39;Arial Unicode MS&#39;;"><span style="color:#000000;"><br/></span></p><p style="line-height:21.6px;color:#999999;font-family:微软雅黑, 黑体, 新宋体, &#39;Arial Unicode MS&#39;;"><span style="color:#000000;"><br/></span></p><p><strong><span style="font-size:13px;color:#CC0000;">任何App推广问题及优化方案，请联系推广顾问：<a href="http://wpa.qq.com/msgrd?v=3&uin=2376656812&site=qq&menu=yes" target="_blank"><img src="http://0.ss.faisys.com/image/comm/ueditor/images/menu/pa1.gif" alt="杨总"/>&nbsp;杨总</a> </span></strong></p><p><strong><span style="font-size:13px;color:#CC0000;"><br/></span></strong></p>', 1, 1),
(18, '微信公众号代运营', 'wx', '', 1, 2, 0, '', '', '', '', 'List_page.html', 'Show_case.html', NULL, 0, 1),
(2, '最新资讯', 'news', '', 0, 1, 0, '新闻中心', '', '', '', 'List_news.html', 'Show_news.html', NULL, 1, 4),
(5, '经典案例', 'case', '', 0, 4, 0, '经典案例', '', '', '', 'List_case.html', 'Show_case.html', NULL, 1, 3),
(6, '平台型网站', 'case1', '', 5, 4, 0, '', '', '', '', 'List_case.html', 'Show_case.html', NULL, 0, 2),
(7, '微信二次开发', 'case2', '', 5, 4, 0, '', '', '', '', 'List_case.html', 'Show_case.html', NULL, 0, 3),
(12, 'APP定制开发', 'case3', '', 5, 4, 0, '', '', '', '', 'List_case.html', 'Show_case.html', NULL, 0, 4),
(13, '微网站/手机站', 'case4', '', 5, 4, 0, '', '', '', '', 'List_case.html', 'Show_case.html', NULL, 0, 5),
(10, '关于我们', 'about', '', 0, 2, 0, '关于我们', '', '重庆才扬科技有限公司专注提供移动互联网App推广营销服务，是目前中国服务企业最多的移动营销服务商之一。团队研究App推广领域多年，在App推广方面有大量的实操经验积累，在此领域实力遥遥领先！通过技术、产品、营销及服务创新，努力建设移动营销的生态，以让企业移动APP推广营销更简单，解决App推广各种疑难问题，让App推广更轻松！目前，才扬科技已为手游、生活、工具、娱乐、社交、旅游、美食佳饮、教育、医疗、财务等类型的品牌APP应用提供了优质的APP营销推广服务。', '', 'List_about.html', 'Show_article.html', '<p>&nbsp; &nbsp; &nbsp; &nbsp;重庆才扬科技有限公司专注提供移动互联网App推广营销服务，是目前中国服务企业最多的移动营销服务商之一。<br/>&nbsp; &nbsp; &nbsp; &nbsp;团队研究App推广领域多年，在App推广方面有大量的实操经验积累，在此领域实力遥遥领先！<br/>&nbsp; &nbsp; &nbsp; &nbsp;通过技术、产品、营销及服务创新，努力建设移动营销的生态，以让企业移动APP推广营销更简单，解决App推广各种疑难问题，让App推广更轻松！<br/>&nbsp; &nbsp; &nbsp; &nbsp;目前，才扬科技已为手游、生活、工具、娱乐、社交、旅游、美食佳饮、教育、医疗、财务等类型的品牌APP应用提供了优质的APP营销推广服务。</p>', 1, 1),
(14, '联系我们', 'contact', '', 0, 2, 0, '', '', '', '', 'List_contact.html', 'Show_case.html', NULL, 1, 5),
(21, '公司新闻', 'company', '', 2, 1, 0, '', '', '', '', 'List_news.html', 'Show_news.html', NULL, 1, 1),
(19, '网站开发', 'web', '', 1, 2, 0, '', '', '', '', 'List_page.html', 'Show_case.html', NULL, 0, 1),
(20, '微信公众号开发', 'weixin', '', 1, 2, 0, '', '', '', '', 'List_page.html', 'Show_case.html', NULL, 0, 1),
(22, '行业动态', 'hangye', '', 2, 1, 0, '', '', '', '', 'List_news.html', 'Show_news.html', NULL, 1, 1),
(23, '技术资讯', 'jishuzixun', '', 2, 1, 0, '', '', '', '', 'List_news.html', 'Show_news.html', NULL, 1, 1),
(25, 'APP推广服务案例', 'app', '', 5, 4, 0, '', '', '', '', 'List_case.html', 'Show_case.html', NULL, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `newt_category_access`
--

CREATE TABLE IF NOT EXISTS `newt_category_access` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `roleid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action` varchar(30) NOT NULL DEFAULT '',
  KEY `catid` (`catid`),
  KEY `roleid` (`roleid`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `newt_category_access`
--

INSERT INTO `newt_category_access` (`catid`, `roleid`, `flag`, `action`) VALUES
(5, 1, 1, 'edit'),
(5, 1, 1, 'add'),
(5, 1, 1, 'index'),
(6, 1, 1, 'clear'),
(6, 1, 1, 'restore'),
(6, 1, 1, 'trach'),
(6, 1, 1, 'move'),
(6, 1, 1, 'del'),
(6, 1, 1, 'edit'),
(6, 1, 1, 'add'),
(6, 1, 1, 'index'),
(7, 1, 1, 'clear'),
(7, 1, 1, 'restore'),
(7, 1, 1, 'trach'),
(7, 1, 1, 'move'),
(7, 1, 1, 'del'),
(7, 1, 1, 'edit'),
(7, 1, 1, 'add'),
(7, 1, 1, 'index'),
(12, 1, 1, 'clear'),
(12, 1, 1, 'restore'),
(12, 1, 1, 'trach'),
(12, 1, 1, 'move'),
(12, 1, 1, 'del'),
(12, 1, 1, 'edit'),
(12, 1, 1, 'add'),
(12, 1, 1, 'index'),
(13, 1, 1, 'clear'),
(13, 1, 1, 'restore'),
(13, 1, 1, 'trach'),
(13, 1, 1, 'move'),
(13, 1, 1, 'del'),
(13, 1, 1, 'edit'),
(13, 1, 1, 'add'),
(13, 1, 1, 'index'),
(14, 1, 1, 'clear'),
(14, 1, 1, 'restore'),
(14, 1, 1, 'trach'),
(14, 1, 1, 'move'),
(14, 1, 1, 'del'),
(14, 1, 1, 'edit'),
(14, 1, 1, 'add'),
(14, 1, 1, 'index'),
(2, 1, 1, 'clear'),
(2, 1, 1, 'restore'),
(2, 1, 1, 'trach'),
(2, 1, 1, 'move'),
(2, 1, 1, 'del'),
(2, 1, 1, 'edit'),
(2, 1, 1, 'add'),
(2, 1, 1, 'index'),
(1, 1, 1, 'clear'),
(1, 1, 1, 'restore'),
(1, 1, 1, 'trach'),
(1, 1, 1, 'move'),
(1, 1, 1, 'del'),
(1, 1, 1, 'edit'),
(1, 1, 1, 'add'),
(1, 1, 1, 'index'),
(15, 1, 1, 'clear'),
(15, 1, 1, 'restore'),
(15, 1, 1, 'trach'),
(15, 1, 1, 'move'),
(15, 1, 1, 'del'),
(15, 1, 1, 'edit'),
(15, 1, 1, 'add'),
(15, 1, 1, 'index'),
(16, 1, 1, 'clear'),
(16, 1, 1, 'restore'),
(16, 1, 1, 'trach'),
(16, 1, 1, 'move'),
(16, 1, 1, 'del'),
(16, 1, 1, 'edit'),
(16, 1, 1, 'add'),
(16, 1, 1, 'index'),
(17, 1, 1, 'clear'),
(17, 1, 1, 'restore'),
(17, 1, 1, 'trach'),
(17, 1, 1, 'move'),
(17, 1, 1, 'del'),
(17, 1, 1, 'edit'),
(17, 1, 1, 'add'),
(17, 1, 1, 'index'),
(10, 1, 1, 'clear'),
(10, 1, 1, 'restore'),
(10, 1, 1, 'trach'),
(10, 1, 1, 'move'),
(10, 1, 1, 'del'),
(10, 1, 1, 'edit'),
(10, 1, 1, 'add'),
(10, 1, 1, 'index'),
(18, 1, 1, 'clear'),
(18, 1, 1, 'restore'),
(18, 1, 1, 'trach'),
(18, 1, 1, 'move'),
(18, 1, 1, 'del'),
(18, 1, 1, 'edit'),
(18, 1, 1, 'add'),
(18, 1, 1, 'index');

-- --------------------------------------------------------

--
-- 表的结构 `newt_comment`
--

CREATE TABLE IF NOT EXISTS `newt_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `postid` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `agent` varchar(255) NOT NULL DEFAULT '',
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `postid` (`postid`),
  KEY `modelid` (`modelid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `newt_config`
--

CREATE TABLE IF NOT EXISTS `newt_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '标识',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '说明',
  `tvalue` varchar(150) NOT NULL DEFAULT '' COMMENT '参数类型',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分组',
  `value` text,
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `typeid` (`typeid`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- 转存表中的数据 `newt_config`
--

INSERT INTO `newt_config` (`id`, `name`, `title`, `remark`, `tvalue`, `typeid`, `groupid`, `value`, `sort`) VALUES
(1, 'CFG_WEBNAME', '网站名称', '', '', 2, 1, '重庆才扬科技有限公司', 0),
(2, 'CFG_WEBURL', '网站域名', '', '', 2, 1, 'http://www.cyup123.com/', 0),
(3, 'CFG_WEBTITLE', '网站标题', '站点首页title(SEO)的设置', '', 2, 1, '重庆才扬科技有限公司', 0),
(4, 'CFG_KEYWORDS', '站点关键词', '', '', 2, 1, '重庆才扬科技有限公司', 0),
(5, 'CFG_DESCRIPTION', '站点描述', '', '', 3, 1, '重庆才扬科技有限公司', 0),
(6, 'CFG_THEMESTYLE', '模板风格', '', 'select', 2, 1, 'caiyang', 0),
(7, 'CFG_COOKIE_ENCODE', 'cookie加密码', '', '', 2, 1, 'ccfrq6u6z', 0),
(8, 'CFG_POWERBY', '网站版权信息', '', '', 3, 1, 'Copyright ©  2014-2017 重庆才扬科技有限公司 ALL rights reserved. 渝ICP备08132850号', 0),
(9, 'CFG_STATS', '网站统计', '', '', 3, 1, '', 0),
(10, 'CFG_BEIAN', '网站备案号', '', '', 2, 1, '', 0),
(11, 'CFG_ADDRESS', '联系地址', '', '', 2, 1, '重庆市渝中区石油路万科锦城3号楼21', 0),
(12, 'CFG_PHONE', '联系电话', '', '', 2, 1, '023-63001336', 0),
(13, 'CFG_WEBSITE_CLOSE', '关闭网站', '', '', 4, 2, '0', 0),
(14, 'CFG_WEBSITE_CLOSE_INFO', '关站提示', '', '', 3, 2, '站点维护中，请稍等一会...', 0),
(15, 'CFG_MOBILE_AUTO', '手机版开启', '', '', 4, 2, '0', 1),
(16, 'CFG_EMAIL_FROM', '发件邮箱地址', '', '', 2, 3, 'ddend@qq.com', 0),
(17, 'CFG_EMAIL_FROM_NAME', '发件人名称', '', '', 2, 3, '站名', 0),
(18, 'CFG_EMAIL_HOST', 'STMP服务器', '', '', 2, 3, 'smtp.exmail.qq.com', 0),
(19, 'CFG_EMAIL_PORT', '服务器端口', '', '', 1, 3, '25', 0),
(20, 'CFG_EMAIL_LOGINNAME', '邮箱帐号', '', '', 2, 3, 'ddend@qq.com', 0),
(21, 'CFG_EMAIL_PASSWORD', '邮箱密码', '', '', 2, 3, '123zstQhz4', 0),
(22, 'CFG_BADWORD', '禁用词语', '', '', 3, 2, '艾滋病|中国共产党|111111111', 0),
(23, 'CFG_FEEDBACK_GUEST', '允许匿名评论', '', '', 4, 2, '1', 0),
(24, 'CFG_MEMBER_OPEN', '开启会员功能', '', '', 4, 5, '1', 0),
(25, 'CFG_MEMBER_VERIFYEMAIL', ' 开启邮件验证', '', '', 4, 5, '0', 0),
(26, 'CFG_MEMBER_NOTALLOW', '禁止使用的昵称', '', '', 3, 5, 'www,bbs,ftp,mail,user,users,admin,administrator,xyhcms', 0),
(27, 'CFG_UPLOAD_MAXSIZE', '允许上传大小', 'KB', '', 1, 4, '2048', 0),
(28, 'CFG_IMGTHUMB_SIZE', '缩略图组尺寸', '', '', 2, 4, '600X400', 0),
(29, 'CFG_IMGTHUMB_TYPE', '缩略图生成方式', '固定大小截取 ,原图等比例缩略', 'radio\r\n0|原图等比例缩略\r\n1|固定大小截取', 4, 4, '0', 0),
(30, 'CFG_IMGTHUMB_WIDTH', '固宽缩略图组长度', '固定宽度等比缩略,如60,50', '', 2, 4, '600', 0),
(31, 'CFG_UPLOAD_ROOTPATH', '上传根目录', '', '', 2, 4, './uploads/', 0),
(32, 'CFG_UPLOAD_FILE_EXT', '允许附件类型', '', '', 3, 4, 'jpg,gif,png,jpeg,txt,doc,docx,xls,ppt,zip,rar,mp3', 0),
(33, 'CFG_UPLOAD_IMG_EXT', '允许图片类型', '带缩略图的图片', '', 2, 4, 'jpg,gif,png,jpeg', 0),
(34, 'CFG_VERIFY_REGISTER', '开启注册验证码', '', '', 4, 2, '0', 0),
(35, 'CFG_VERIFY_LOGIN', '开启登录验证码', '', '', 4, 2, '0', 0),
(36, 'CFG_VERIFY_GUESTBOOK', '开启留言板验证码', '', '', 4, 2, '1', 0),
(37, 'CFG_VERIFY_REVIEW', '开启评论验证码', '', '', 4, 2, '1', 0),
(38, 'CFG_SQL_FILESIZE', 'sql文件大小', '备份数据库，值不可太大，否则会导致内存溢出备份、恢复失败，合理大小在512K~10M间，建议3M一卷。单位字节,5M=5*1024*1024=5242880', '', 1, 6, '5242880', 0),
(39, 'CFG_DOWNLOAD_HIDE', '隐藏下载地址', '', '', 4, 4, '0', 0),
(40, 'CFG_MOBILE_THEMESTYLE', '手机模板风格', '', 'select', 2, 2, 'default', 1);

-- --------------------------------------------------------

--
-- 表的结构 `newt_copyfrom`
--

CREATE TABLE IF NOT EXISTS `newt_copyfrom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` varchar(30) NOT NULL DEFAULT '',
  `siteurl` varchar(200) NOT NULL DEFAULT '',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `newt_guestbook`
--

CREATE TABLE IF NOT EXISTS `newt_guestbook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `homepage` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  `replytime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `content` text,
  `reply` text,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `newt_guestbook`
--

INSERT INTO `newt_guestbook` (`id`, `username`, `tel`, `email`, `homepage`, `qq`, `ip`, `posttime`, `replytime`, `status`, `content`, `reply`, `userid`) VALUES
(1, '小平', '', '', '', '', '112.115.215.93', 1396244141, 1396338235, 1, '网站不错，很喜欢！！！', '谢谢支持！', 0),
(2, '明明', '', '', '', '', '112.115.192.30', 1396337906, 0, 1, '蓝色很大气，模板很好看！', NULL, 0),
(3, 'ceshi', '123456', '12312@qq.com', '', '', '0.0.0.0', 1489736680, 0, 0, '123123213', NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `newt_itemgroup`
--

CREATE TABLE IF NOT EXISTS `newt_itemgroup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `remark` varchar(20) DEFAULT '',
  `status` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `newt_itemgroup`
--

INSERT INTO `newt_itemgroup` (`id`, `name`, `remark`, `status`) VALUES
(1, 'flagtype', '文档属性', 0),
(2, 'blocktype', '自由块类别', 0),
(3, 'softtype', '软件类型', 0),
(4, 'softlanguage', '软件语言', 0),
(5, 'star', '星座', 0),
(6, 'animal', '生肖', 0),
(7, 'education', '教育程度', 0),
(8, 'configgroup', '配置分组', 0),
(9, 'configtype', '配置变量类型', 0);

-- --------------------------------------------------------

--
-- 表的结构 `newt_iteminfo`
--

CREATE TABLE IF NOT EXISTS `newt_iteminfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `group` varchar(20) NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- 转存表中的数据 `newt_iteminfo`
--

INSERT INTO `newt_iteminfo` (`id`, `name`, `group`, `value`, `pid`, `sort`) VALUES
(1, '图片', 'flagtype', 1, 0, 0),
(2, '头条', 'flagtype', 2, 0, 0),
(3, '推荐', 'flagtype', 4, 0, 0),
(4, '特荐', 'flagtype', 8, 0, 0),
(5, '幻灯', 'flagtype', 16, 0, 0),
(6, '跳转', 'flagtype', 32, 0, 0),
(7, '其他', 'flagtype', 64, 0, 0),
(8, '文字', 'blocktype', 1, 0, 0),
(9, '图片', 'blocktype', 2, 0, 0),
(10, '丰富', 'blocktype', 3, 0, 0),
(11, '国产', 'softtype', 1, 0, 0),
(12, '中文版', 'softlanguage', 1, 0, 0),
(13, '英文版', 'softlanguage', 2, 0, 0),
(14, '多语言版', 'softlanguage', 3, 0, 0),
(15, '白羊座', 'star', 1, 0, 0),
(16, '金牛座', 'star', 2, 0, 0),
(17, '双子座', 'star', 3, 0, 0),
(18, '巨蟹座', 'star', 4, 0, 0),
(19, '狮子座', 'star', 5, 0, 0),
(20, '处女座', 'star', 6, 0, 0),
(21, '天枰座', 'star', 7, 0, 0),
(22, '天蝎座', 'star', 8, 0, 0),
(23, '射手座', 'star', 9, 0, 0),
(24, '摩羯座', 'star', 10, 0, 0),
(25, '水瓶座', 'star', 11, 0, 0),
(26, '双鱼座', 'star', 12, 0, 0),
(27, '鼠', 'animal', 1, 0, 0),
(28, '牛', 'animal', 2, 0, 0),
(29, '虎', 'animal', 3, 0, 0),
(30, '兔', 'animal', 4, 0, 0),
(31, '龙', 'animal', 5, 0, 0),
(32, '蛇', 'animal', 6, 0, 0),
(33, '马', 'animal', 7, 0, 0),
(34, '羊', 'animal', 8, 0, 0),
(35, '猴', 'animal', 9, 0, 0),
(36, '鸡', 'animal', 10, 0, 0),
(37, '狗', 'animal', 11, 0, 0),
(38, '猪', 'animal', 12, 0, 0),
(39, '小学', 'education', 1, 0, 0),
(40, '初中', 'education', 2, 0, 0),
(41, '高中/中专', 'education', 3, 0, 0),
(42, '大学专科', 'education', 4, 0, 0),
(43, '大学本科', 'education', 5, 0, 0),
(44, '硕士', 'education', 6, 0, 0),
(45, '博士以上', 'education', 7, 0, 0),
(46, '站点配置', 'configgroup', 1, 0, 0),
(47, '核心配置', 'configgroup', 2, 0, 0),
(48, '邮箱配置', 'configgroup', 3, 0, 0),
(49, '上传配置', 'configgroup', 4, 0, 0),
(50, '会员配置', 'configgroup', 5, 0, 0),
(51, '其他配置', 'configgroup', 6, 0, 0),
(52, '数字', 'configtype', 1, 0, 0),
(53, '字符', 'configtype', 2, 0, 0),
(54, '文本', 'configtype', 3, 0, 0),
(55, '布尔(真假)', 'configtype', 4, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `newt_link`
--

CREATE TABLE IF NOT EXISTS `newt_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `ischeck` tinyint(1) NOT NULL DEFAULT '1' COMMENT '首页|内页',
  `posttime` int(10) unsigned NOT NULL,
  `sort` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `newt_link`
--

INSERT INTO `newt_link` (`id`, `name`, `url`, `logo`, `description`, `ischeck`, `posttime`, `sort`) VALUES
(1, '纽腾', 'http://www.newteng.com', '', '', 0, 1396255203, 1),
(2, '纽腾科技', 'http://www.newteng.com', '', '', 0, 1396255203, 1),
(3, '纽腾网络', 'http://www.newteng.com', '/newteng/uploads/img1/20170316/58ca60107fdcf.png', '', 0, 1396255203, 1);

-- --------------------------------------------------------

--
-- 表的结构 `newt_member`
--

CREATE TABLE IF NOT EXISTS `newt_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `encrypt` varchar(6) NOT NULL DEFAULT '',
  `nickname` varchar(20) DEFAULT '',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '总金额',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `face` varchar(60) NOT NULL DEFAULT '' COMMENT '头像',
  `regtime` int(10) unsigned NOT NULL DEFAULT '0',
  `logintime` int(10) unsigned DEFAULT '0',
  `loginip` varchar(20) DEFAULT '',
  `loginnum` mediumint(8) unsigned DEFAULT '0',
  `groupid` smallint(6) unsigned DEFAULT '0',
  `message` tinyint(1) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `islock` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `newt_memberdetail`
--

CREATE TABLE IF NOT EXISTS `newt_memberdetail` (
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `realname` varchar(30) NOT NULL DEFAULT '',
  `birthday` date NOT NULL DEFAULT '1980-01-01',
  `province` int(10) unsigned NOT NULL DEFAULT '0',
  `area` int(10) unsigned NOT NULL DEFAULT '0',
  `address` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(12) NOT NULL DEFAULT '',
  `tel` varchar(15) NOT NULL DEFAULT '',
  `mobile` varchar(15) NOT NULL DEFAULT '',
  `animal` int(10) unsigned NOT NULL DEFAULT '0',
  `star` int(10) unsigned NOT NULL DEFAULT '0',
  `blood` int(10) unsigned NOT NULL DEFAULT '0',
  `marital` int(10) unsigned NOT NULL DEFAULT '0',
  `education` int(10) unsigned NOT NULL DEFAULT '0',
  `vocation` int(10) unsigned NOT NULL DEFAULT '0',
  `income` int(10) unsigned NOT NULL DEFAULT '0',
  `maxim` varchar(100) NOT NULL DEFAULT '',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `newt_membergroup`
--

CREATE TABLE IF NOT EXISTS `newt_membergroup` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `sort` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `newt_membergroup`
--

INSERT INTO `newt_membergroup` (`id`, `name`, `description`, `rank`, `status`, `sort`) VALUES
(1, '游客', '', 0, 0, 0),
(2, '注册会员', '', 10, 0, 0),
(3, '中级会员', '', 30, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `newt_menu`
--

CREATE TABLE IF NOT EXISTS `newt_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `module` varchar(20) NOT NULL DEFAULT '',
  `action` varchar(20) DEFAULT '',
  `parameter` varchar(100) DEFAULT '',
  `quick` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '显示',
  `sort` smallint(6) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- 转存表中的数据 `newt_menu`
--

INSERT INTO `newt_menu` (`id`, `name`, `pid`, `module`, `action`, `parameter`, `quick`, `status`, `sort`) VALUES
(1, '常规管理', 0, '', '', '', 0, 1, 1),
(2, '模块管理', 0, '', '', '', 0, 1, 2),
(3, '系统设置', 0, '', '', '', 0, 1, 3),
(4, '扩展管理', 0, '', '', '', 0, 1, 4),
(5, '栏目管理', 1, '', '', '', 0, 1, 11),
(6, '内容管理', 1, '', '', '', 0, 1, 12),
(7, '快捷面板', 1, '', '', '', 0, 1, 13),
(8, '栏目管理', 5, 'Category', 'index', '', 0, 1, 111),
(9, '内置模块', 2, '', '', '', 0, 1, 21),
(10, '自由块管理', 9, 'Block', 'index', '', 1, 1, 211),
(11, '广告管理', 9, 'Abc', 'index', '', 0, 1, 212),
(12, '专题管理', 9, 'Special', 'index', '', 0, 1, 213),
(13, '公告管理', 9, 'Announce', 'index', '', 0, 1, 214),
(14, '友情链接', 9, 'Link', 'index', '', 0, 1, 215),
(15, '留言本管理', 9, 'Guestbook', 'index', '', 1, 1, 216),
(16, '评论管理', 9, 'Comment', 'index', '', 0, 1, 217),
(17, '系统设置', 3, '', '', '', 0, 1, 31),
(18, '会员管理', 3, '', '', '', 0, 1, 33),
(19, '管理员管理', 3, '', '', '', 0, 1, 34),
(20, '网站设置', 17, 'System', 'site', '', 0, 1, 311),
(21, '伪静态|缓存设置', 17, 'System', 'url', '', 0, 1, 312),
(22, '清除系统缓存', 17, 'System', 'clearCache', '', 1, 1, 316),
(23, '在线客服设置', 17, 'System', 'online', '', 0, 1, 313),
(24, '静态缓存', 3, '', '', '', 0, 1, 32),
(25, '一键更新全站', 24, 'ClearHtml', 'all', '', 0, 1, 321),
(26, '更新首页', 24, 'ClearHtml', 'home', '', 0, 1, 322),
(27, '更新栏目', 24, 'ClearHtml', 'lists', '', 0, 1, 323),
(28, '更新文档', 24, 'ClearHtml', 'shows', '', 0, 1, 324),
(29, '更新专题', 24, 'ClearHtml', 'special', '', 0, 1, 325),
(30, '会员管理', 18, 'Member', 'index', '', 0, 1, 331),
(31, '会员组管理', 18, 'Membergroup', 'index', '', 0, 1, 332),
(32, '系统用户管理', 19, 'Rbac', 'index', '', 0, 1, 341),
(33, '用户组设置', 19, 'Rbac', 'role', '', 0, 1, 342),
(34, '节点列表', 19, 'Rbac', 'node', '', 0, 1, 343),
(35, '扩展管理', 4, '', '', '', 0, 1, 41),
(36, '我的账户', 4, '', '', '', 0, 1, 42),
(37, '模型管理', 35, 'Model', 'index', '', 0, 1, 411),
(38, '菜单管理', 35, 'Menu', 'index', '', 0, 1, 412),
(39, '数据库管理', 35, 'Database', 'index', '', 0, 1, 413),
(40, '联动管理', 35, 'Itemgroup', 'index', '', 0, 1, 414),
(41, '区域管理', 35, 'Area', 'index', '', 0, 1, 415),
(42, '修改我的信息', 36, 'Personal', 'index', '', 0, 1, 421),
(43, '修改密码', 36, 'Personal', 'pwd', '', 0, 1, 422),
(44, '其他模块', 2, '', '', '', 0, 1, 22),
(45, '已传文件管理', 35, 'Attachment', 'index', '', 0, 1, 417),
(46, '数据元管理', 35, 'Meta', 'index', '', 0, 1, 416),
(47, '模板管理', 35, 'Templets', 'index', '', 0, 1, 428);

-- --------------------------------------------------------

--
-- 表的结构 `newt_meta`
--

CREATE TABLE IF NOT EXISTS `newt_meta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT 'key',
  `value` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `newt_meta`
--

INSERT INTO `newt_meta` (`id`, `groupid`, `name`, `value`) VALUES
(1, 1, 'HOME_URL_MODEL', '3'),
(2, 1, 'HOME_URL_PATHINFO_DEPR', '/'),
(3, 1, 'HOME_URL_ROUTER_ON', '0'),
(4, 1, 'HOME_URL_ROUTE_RULES', 'Mobile$=>Mobile/Index/index\r\nSpecial/:id\\d=>Special/shows\r\n:e/p/:p\\d=>List/index\r\n:e/:id\\d=>Show/index\r\n/^(\\w+)$/=>List/index?e=:1'),
(5, 1, 'HOME_HTML_CACHE_ON', '0'),
(6, 1, 'MOBILE_HTML_CACHE_ON', '0'),
(7, 1, 'HTML_CACHE_INDEX_ON', '1'),
(8, 1, 'HTML_CACHE_INDEX_TIME', '1200'),
(9, 1, 'HTML_CACHE_LIST_ON', '1'),
(10, 1, 'HTML_CACHE_LIST_TIME', '0'),
(11, 1, 'HTML_CACHE_SHOW_ON', '1'),
(12, 1, 'HTML_CACHE_SHOW_TIME', '0'),
(15, 9, 'ONLINE_CFG_MODE', '1'),
(13, 1, 'HTML_CACHE_SPECIAL_ON', '0'),
(14, 1, 'HTML_CACHE_SPECIAL_TIME', '0'),
(16, 9, 'ONLINE_CFG_STYLE', 'blue'),
(17, 9, 'ONLINE_CFG_H', '1'),
(18, 9, 'ONLINE_CFG_H_MARGIN', '0'),
(19, 9, 'ONLINE_CFG_V', '2'),
(20, 9, 'ONLINE_CFG_V_MARGIN', '0'),
(21, 9, 'ONLINE_CFG_QQ', '307299635$$$点击咨询\r\n307299635$$$点击留言'),
(22, 9, 'ONLINE_CFG_WANGWANG', '7bucn$$$在线旺旺...'),
(23, 9, 'ONLINE_CFG_PHONE_ON', '1'),
(24, 9, 'ONLINE_CFG_PHONE', '0871665441'),
(25, 9, 'ONLINE_CFG_GUESTBOOK_ON', '1'),
(26, 9, 'ONLINE_CFG_QQ_PARAM', '<a target=''_blank'' href="http://wpa.qq.com/msgrd?v=3&uin=[客服号]&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:[客服号]:51" alt="[客服说明]" title="[客服说明]"/></a>'),
(27, 9, 'ONLINE_CFG_WANGWANG_PARAM', '<a target="_blank" href="http://www.taobao.com/webww/ww.php?ver=3&touid=[客服号]&siteid=cntaobao&status=1&charset=utf-8" ><img border="0" src="http://amos.alicdn.com/online.aw?v=2&uid=[客服号]&site=cntaobao&s=10&charset=UTF-8" alt="[客服说明]" /></a>');

-- --------------------------------------------------------

--
-- 表的结构 `newt_model`
--

CREATE TABLE IF NOT EXISTS `newt_model` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `tablename` varchar(30) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_category` varchar(60) NOT NULL DEFAULT '',
  `template_list` varchar(60) NOT NULL DEFAULT '',
  `template_show` varchar(60) NOT NULL DEFAULT '',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `newt_model`
--

INSERT INTO `newt_model` (`id`, `name`, `description`, `tablename`, `status`, `template_category`, `template_list`, `template_show`, `sort`) VALUES
(1, '文章模型', '', 'article', 1, '', 'List_article.html', 'Show_article.html', 1),
(2, '单页模型', '', 'page', 1, '', 'List_page.html', 'Show_page.html', 2),
(3, '产品模型', '', 'product', 1, '', 'List_product.html', 'Show_product.html', 3),
(4, '图片模型', '', 'picture', 1, '', 'List_picture.html', 'Show_picture.html', 4),
(5, '软件下载模型', '', 'soft', 1, '', 'List_soft.html', 'Show_soft.html', 5);

-- --------------------------------------------------------

--
-- 表的结构 `newt_node`
--

CREATE TABLE IF NOT EXISTS `newt_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=138 ;

--
-- 转存表中的数据 `newt_node`
--

INSERT INTO `newt_node` (`id`, `name`, `title`, `status`, `remark`, `sort`, `pid`, `level`) VALUES
(1, 'Manage', '后台应用', 1, NULL, 1, 0, 1),
(2, 'Rbac', '用户权限管理', 1, NULL, 1, 1, 2),
(3, 'index', '用户列表', 1, NULL, 1, 2, 3),
(4, 'addUser', '添加用户', 1, NULL, 2, 2, 3),
(5, 'editUser', '编辑用户', 1, NULL, 3, 2, 3),
(6, 'delUser', '删除用户', 1, NULL, 4, 2, 3),
(7, 'Index', '前台应用', 1, NULL, 2, 0, 1),
(8, 'role', '用户组列表', 1, NULL, 5, 2, 3),
(9, 'addRole', '添加用户组', 1, NULL, 6, 2, 3),
(10, 'editRole', '编辑用户组', 1, NULL, 7, 2, 3),
(11, 'delRole', '删除用户组', 1, NULL, 8, 2, 3),
(12, 'access', '权限管理', 1, NULL, 9, 2, 3),
(13, 'node', '节点列表', 0, NULL, 10, 2, 3),
(14, 'addNode', '添加节点', 0, NULL, 11, 2, 3),
(15, 'editNode', '编辑节点', 0, NULL, 12, 2, 3),
(16, 'delNode', '删除节点', 0, NULL, 13, 2, 3),
(17, 'System', '系统设置', 1, NULL, 2, 1, 2),
(18, 'site', '网站设置', 1, NULL, 1, 17, 3),
(19, 'Model', '模型管理', 1, NULL, 3, 1, 2),
(20, 'index', '模型列表', 1, NULL, 1, 19, 3),
(21, 'add', '添加模型', 1, NULL, 2, 19, 3),
(22, 'edit', '模型修改', 1, NULL, 3, 19, 3),
(23, 'del', '删除模型', 1, NULL, 4, 19, 3),
(24, 'sort', '更新排序', 1, NULL, 5, 19, 3),
(25, 'Category', '栏目管理', 1, NULL, 4, 1, 2),
(26, 'index', '栏目列表', 1, NULL, 1, 25, 3),
(27, 'add', '添加栏目', 1, NULL, 2, 25, 3),
(28, 'edit', '修改栏目', 1, NULL, 3, 25, 3),
(29, 'del', '删除栏目', 1, NULL, 4, 25, 3),
(30, 'sort', '更新栏目排序', 1, NULL, 5, 25, 3),
(31, 'Member', '会员管理', 1, NULL, 5, 1, 2),
(32, 'index', '会员列表', 1, NULL, 1, 31, 3),
(33, 'add', '添加会员', 1, NULL, 2, 31, 3),
(34, 'edit', '编辑会员', 1, NULL, 3, 31, 3),
(35, 'del', '删除会员', 1, NULL, 4, 31, 3),
(36, 'Membergroup', '会员组管理', 1, NULL, 6, 1, 2),
(37, 'index', '会员组列表', 1, NULL, 1, 36, 3),
(38, 'add', '添加会员组', 1, NULL, 2, 36, 3),
(39, 'edit', '编辑会员组', 1, NULL, 3, 36, 3),
(40, 'del', '删除会员组', 1, NULL, 4, 36, 3),
(41, 'Announce', '公告管理', 1, NULL, 7, 1, 2),
(42, 'index', '公告列表', 1, NULL, 1, 41, 3),
(43, 'add', '添加公告', 1, NULL, 2, 41, 3),
(44, 'edit', '编辑公告', 1, NULL, 3, 41, 3),
(45, 'del', '删除公告', 1, NULL, 4, 41, 3),
(46, 'Link', '友情链接', 1, NULL, 8, 1, 2),
(47, 'index', '友情列表', 1, NULL, 1, 46, 3),
(48, 'add', '添加友情', 1, NULL, 2, 46, 3),
(49, 'edit', '编辑友情', 1, NULL, 3, 46, 3),
(50, 'del', '删除友情', 1, NULL, 4, 46, 3),
(51, 'Guestbook', '留言本管理', 1, NULL, 9, 1, 2),
(52, 'index', '留言本列表', 1, NULL, 1, 51, 3),
(53, 'reply', '回复留言', 1, NULL, 2, 51, 3),
(54, 'del', '删除留言', 1, NULL, 3, 51, 3),
(55, 'clearCache', '清除缓存', 1, NULL, 2, 17, 3),
(56, 'Personal', '我的账户', 1, NULL, 10, 1, 2),
(57, 'index', '修改资料', 1, NULL, 1, 56, 3),
(58, 'pwd', '修改密码', 1, NULL, 2, 56, 3),
(59, 'Comment', '评论管理', 1, NULL, 10, 1, 2),
(60, 'index', '评论列表', 1, NULL, 1, 59, 3),
(61, 'edit', '编辑评论', 1, NULL, 2, 59, 3),
(62, 'del', '删除评论', 1, NULL, 3, 59, 3),
(63, 'Area', '区域管理', 1, NULL, 12, 1, 2),
(64, 'index', '区域列表', 1, NULL, 1, 63, 3),
(65, 'add', '添加区域', 1, NULL, 2, 63, 3),
(66, 'edit', '编辑区域', 1, NULL, 3, 63, 3),
(67, 'del', '删除区域', 1, NULL, 4, 63, 3),
(68, 'Itemgroup', '联动组管理', 1, NULL, 13, 1, 2),
(69, 'index', '联动组列表', 1, NULL, 1, 68, 3),
(70, 'add', '添加联动组', 1, NULL, 2, 68, 3),
(71, 'edit', '编辑联动组', 1, NULL, 3, 68, 3),
(72, 'del', '删除联动组', 1, NULL, 4, 68, 3),
(73, 'Iteminfo', '联动管理', 1, NULL, 14, 1, 2),
(74, 'index', '联动列表', 1, NULL, 1, 73, 3),
(75, 'add', '添加联动', 1, NULL, 2, 73, 3),
(76, 'edit', '编辑联动', 1, NULL, 3, 73, 3),
(77, 'del', '删除联动', 1, NULL, 4, 73, 3),
(78, 'sort', '更新排序', 1, NULL, 5, 73, 3),
(79, 'Special', '专题管理', 1, NULL, 15, 1, 2),
(80, 'index', '专题列表', 1, NULL, 1, 79, 3),
(81, 'add', '添加专题', 1, NULL, 2, 79, 3),
(82, 'edit', '编辑专题', 1, NULL, 3, 79, 3),
(83, 'del', '删除专题', 1, NULL, 4, 79, 3),
(84, 'trach', '回收站', 1, NULL, 5, 79, 3),
(85, 'restore', '还原专题', 1, NULL, 6, 79, 3),
(86, 'clear', '彻底删除', 1, NULL, 7, 79, 3),
(87, 'Block', '自由块管理', 1, NULL, 16, 1, 2),
(88, 'index', '自由块列表', 1, NULL, 1, 87, 3),
(89, 'add', '添加自由块', 1, NULL, 2, 87, 3),
(90, 'edit', '编辑自由块', 1, NULL, 3, 87, 3),
(91, 'del', '删除自由块', 1, NULL, 4, 87, 3),
(92, 'Database', '数据库管理', 1, NULL, 17, 1, 2),
(93, 'index', '数据表列表', 1, NULL, 1, 92, 3),
(94, 'backup', '数据库备份', 1, NULL, 2, 92, 3),
(95, 'optimize', '数据表优化', 1, NULL, 3, 92, 3),
(96, 'repair', '数据表修复', 1, NULL, 4, 92, 3),
(97, 'restore', '还原管理', 1, NULL, 5, 92, 3),
(98, 'restoreData', '数据恢复', 1, NULL, 6, 92, 3),
(99, 'delSqlFiles', '删除文件', 1, NULL, 7, 92, 3),
(100, 'url', '伪静态缓存设置', 1, NULL, 3, 17, 3),
(101, 'ClearHtml', '静态缓存管理', 1, NULL, 18, 1, 2),
(102, 'all', '一键更新全站', 1, NULL, 1, 101, 3),
(103, 'home', '更新首页', 1, NULL, 2, 101, 3),
(104, 'lists', '更新栏目', 1, NULL, 3, 101, 3),
(105, 'shows', '更新文档', 1, NULL, 4, 101, 3),
(106, 'special', '更新专题', 1, NULL, 5, 101, 3),
(107, 'Menu', '菜单管理', 1, NULL, 19, 1, 2),
(108, 'index', '菜单列表', 1, NULL, 1, 107, 3),
(109, 'add', '添加菜单', 1, NULL, 2, 107, 3),
(110, 'edit', '修改菜单', 1, NULL, 3, 107, 3),
(111, 'sort', '排序更新', 1, NULL, 4, 107, 3),
(112, 'qk', '快捷更新', 1, NULL, 5, 107, 3),
(113, 'del', '删除菜单', 1, NULL, 6, 107, 3),
(114, 'Attachment', '已上传文件管理', 1, NULL, 20, 1, 2),
(115, 'index', '文件列表', 1, NULL, 1, 114, 3),
(116, 'del', '删除文件', 1, NULL, 4, 114, 3),
(117, 'Abc', '广告管理', 1, NULL, 21, 1, 2),
(118, 'index', '广告位列表', 1, NULL, 1, 117, 3),
(119, 'add', '添加广告位', 1, NULL, 2, 117, 3),
(120, 'edit', '修改广告位', 1, NULL, 3, 117, 3),
(121, 'del', '删除广告位', 1, NULL, 4, 117, 3),
(122, 'detail', '广告列表', 1, NULL, 5, 117, 3),
(123, 'addDetail', '添加广告', 1, NULL, 6, 117, 3),
(124, 'editDetail', '修改广告', 1, NULL, 7, 117, 3),
(125, 'sort', '更新广告排序', 1, NULL, 7, 117, 3),
(126, 'getcode', '获取广告代码', 1, NULL, 8, 117, 3),
(127, 'delDetail', '删除广告', 1, NULL, 9, 117, 3),
(128, 'Templets', '模板管理', 1, NULL, 22, 1, 2),
(129, 'index', '模板列表', 1, NULL, 1, 128, 3),
(130, 'add', '添加模板', 1, NULL, 2, 128, 3),
(131, 'edit', '修改模板', 1, NULL, 3, 128, 3),
(132, 'del', '删除模板', 1, NULL, 4, 128, 3),
(133, 'Picture', '图片模型', 1, NULL, 0, 1, 2),
(134, 'index', '图片列表', 1, NULL, 0, 133, 3),
(135, 'add', '添加图片', 1, NULL, 0, 133, 3),
(136, 'edit', '图片修改', 1, NULL, 0, 133, 3),
(137, 'del', '图片删除', 1, NULL, 0, 133, 3);

-- --------------------------------------------------------

--
-- 表的结构 `newt_orderaction`
--

CREATE TABLE IF NOT EXISTS `newt_orderaction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `orderid` varchar(30) NOT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态',
  `distribution_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '配送状态',
  `pay_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付状态',
  `aid` int(10) NOT NULL DEFAULT '0',
  `note` varchar(255) NOT NULL DEFAULT '',
  `publishtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `newt_orderdetail`
--

CREATE TABLE IF NOT EXISTS `newt_orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(30) DEFAULT NULL COMMENT '订单ID',
  `productid` int(11) DEFAULT NULL,
  `userid` int(10) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `marketprice` decimal(8,2) NOT NULL DEFAULT '0.00',
  `num` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `newt_orderinfo`
--

CREATE TABLE IF NOT EXISTS `newt_orderinfo` (
  `orderid` varchar(30) NOT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `payid` tinyint(2) NOT NULL DEFAULT '1' COMMENT '支付方式',
  `expressprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '邮费/运费',
  `prdouctprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '产品总价格',
  `totalprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '总价格',
  `consignee` varchar(30) DEFAULT NULL COMMENT '收件人',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` int(10) NOT NULL DEFAULT '0',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `order_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态',
  `distribution_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '配送状态',
  `pay_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付状态',
  `ip` char(15) NOT NULL DEFAULT '',
  `stime` int(10) NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '确认时间',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付时间',
  `distribution_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配送时间',
  PRIMARY KEY (`orderid`),
  KEY `stime` (`stime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `newt_picture`
--

CREATE TABLE IF NOT EXISTS `newt_picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `copyfrom` varchar(100) NOT NULL DEFAULT '' COMMENT '来源',
  `template` varchar(30) NOT NULL DEFAULT '' COMMENT '模板',
  `pictureurls` text COMMENT '图片地址',
  `content` text COMMENT '内容',
  `publishtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `newt_picture`
--

INSERT INTO `newt_picture` (`id`, `title`, `color`, `keywords`, `litpic`, `description`, `copyfrom`, `template`, `pictureurls`, `content`, `publishtime`, `updatetime`, `click`, `cid`, `commentflag`, `flag`, `jumpurl`, `status`, `userid`, `aid`) VALUES
(2, 'Freeze dried bean  7G', '', '', '/newteng/uploads/img1/20170317/58cb5741626f2.gif!300X300.jpg', '', '', '', '/newteng/uploads/img1/20170317/58cb5741626f2.gif$$$$$$', '', 1489721141, 1489721298, 43, 7, 1, 1, '', 1, 0, 1),
(3, 'Freeze dried yogurt  7G', '', '', '/newteng/uploads/img1/20170317/58cb581a7d644.gif!300X300.jpg', '', '', '', '/newteng/uploads/img1/20170317/58cb581a7d644.gif$$$$$$', '', 1489721302, 1489721379, 73, 6, 1, 1, '', 1, 0, 1),
(4, 'Freeze dried yogurt  14G', '', '', '/newteng/uploads/img1/20170317/58cb58489c4f2.gif!300X300.jpg', '', '', '', '/newteng/uploads/img1/20170317/58cb58489c4f2.gif$$$$$$', '', 1489721387, 1489721420, 24, 6, 1, 1, '', 1, 0, 1),
(5, 'Freeze dried yogurt  7G', '', '', '/newteng/uploads/img1/20170317/58cb586b45e10.gif!300X300.jpg', '', '', '', '/newteng/uploads/img1/20170317/58cb586b45e10.gif$$$$$$', '', 1489721440, 1489721453, 47, 6, 1, 1, '', 1, 0, 1),
(6, 'Freeze dried yogurt  14G', '', '', '/newteng/uploads/img1/20170317/58cb58976253b.gif!300X300.jpg', '', '', '', '/newteng/uploads/img1/20170317/58cb58976253b.gif$$$$$$', '', 1489721483, 1489721497, 92, 6, 1, 1, '', 1, 0, 1),
(11, '若谷草堂', '', '', '/uploads/img1/20170520/591fbde2acb8a.jpg!600X400.jpg', '2009年，重庆才扬科技有限公司，为中化青岛提供其官网设计制作，考虑到国企的性质，页面设计不宜太夸张或者花哨，设计师经过多次思考和与客户沟通，最终决定采用中规中矩的框架设计，页面简洁干净，首页中间主视觉区域采用flash动画切换几部分主营业务，页面干净了利索。中化青岛成立于2002年10月，是世界500强中国中化集团公司的成员企业， 主要从事生产、贸易、投资及相关产品的研发等业务。自成立以来，公司以市场为导向、努力培育企业核心竞争力，努力为社会、股东、客户创造价值，在业界赢得了良好的声誉。', '', '', '/uploads/img1/20170520/591fbde2acb8a.jpg$$$$$$', '<p><img src="/uploads/img1/20170519/591ea7e5921c8.jpg" title="591ea7e5921c8.jpg" alt="ruogucaotang.jpg"/></p>', 1495179868, 1495252452, 57, 6, 1, 1, '', 1, 0, 1),
(10, 'Freeze dried yogurt 14G', '', '', '/newteng/uploads/img1/20170317/58cb7ecac73e2.gif!300X300.jpg', '', '', '', '/newteng/uploads/img1/20170317/58cb7ecac73e2.gif$$$$$$', '', 1489731258, 1489731277, 28, 6, 1, 1, '', 1, 0, 1),
(12, '经典案例', '', '', '/uploads/img1/20170524/59255803cd063.jpg!600X400.jpg', '测试', '', '', '/uploads/img1/20170524/59255803cd063.jpg$$$$$$', '<p>测试</p>', 1495619541, 1495619611, 75, 6, 1, 1, '', 1, 0, 1),
(13, '暴走地下城', '', '', '/uploads/img1/20170603/593222610976a.jpg!600X400.jpg', '【游戏介绍】\r\n激萌英雄，超燃战斗！\r\n萌系激燃挂机动作手游《暴走地下城》震撼来袭！扫怪升级捡装备，还能掉落各种神奇的天赋。跟好友一起组队肉搏，享受“爆爆爆”的快感。24小时不间断升级，即使在你睡觉的时候也不会错过任何收益。没有繁琐的操作，', '', '', '/uploads/img1/20170603/593222610976a.jpg$$$$$$', '<p><span style="color: rgb(51, 51, 51); font-family: Helvetica, &quot;Hiragino Sans GB W3&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Arial, sans-serif; font-size: medium; background-color: rgb(255, 255, 255);"><img src="/uploads/img1/20170603/593261de27db4.jpg" title="593261de27db4.jpg" alt="593261de27db4.jpg" width="370" height="658"/>&nbsp;&nbsp;<img src="/uploads/img1/20170603/5932622d18dde.jpg" title="5932622d18dde.jpg" alt="5932622d18dde.jpg" width="370" height="658"/>&nbsp; &nbsp;<img src="/uploads/img1/20170603/59326236c5960.jpg" title="59326236c5960.jpg" alt="59326236c5960.jpg" width="370" height="658"/></span></p><p><span style="color: rgb(51, 51, 51); font-family: Helvetica, &quot;Hiragino Sans GB W3&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Arial, sans-serif; font-size: medium; background-color: rgb(255, 255, 255);"><br/></span></p><p><span style="color: rgb(51, 51, 51); font-family: Helvetica, &quot;Hiragino Sans GB W3&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体, Arial, sans-serif; font-size: medium; background-color: rgb(255, 255, 255);"><img src="/uploads/img1/20170603/5932624c14f27.jpg" title="5932624c14f27.jpg" alt="5932624c14f27.jpg" width="370" height="657"/>&nbsp; &nbsp;<img src="/uploads/img1/20170603/59326259c06ac.jpg" title="59326259c06ac.jpg" alt="59326259c06ac.jpg" width="370" height="657"/></span></p><pre style="box-sizing: border-box; overflow: hidden; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; border: none; font-size: 18px; line-height:30px;color: rgb(51, 51, 51); padding-right: 28px; max-height: initial; white-space: pre-wrap; word-wrap: break-word; background-color: rgb(255, 255, 255);">【游戏介绍】\r\n\r\n激萌英雄，超燃战斗！\r\n萌系激燃挂机动作手游《暴走地下城》震撼来袭！扫怪升级捡装备，还能掉落各种神奇的天赋。跟好友一起组队肉搏，享受“爆爆爆”的快感。24小时不间断升级，即使在你睡觉的时候也不会错过任何收益。没有繁琐的操作，无需再熬夜练级，轻松回味属于我们那份青春的疯狂与美好。\r\n\r\n【游戏特色】\r\n\r\n-&nbsp;休闲放置玩法\r\n95%全自动战斗模式，游戏角色7*24小时不停练级。即使吃饭睡觉，照样打怪升级，不错过任何收益。无忧无虑轻松游戏，就是这么简单。\r\n\r\n-&nbsp;四大独特职业\r\n四大独特的职业：战士、射手、法师、圣骑士。极具特色的职业进阶体系，定制化技能+天赋搭配，各显其能！\r\n\r\n-&nbsp;海量随机装备库\r\n庞大的装备生成系统，上百种属性的随机生成搭配，让你得到的每件装备都是独一无二的。更有小怪掉神装，让你轻松超神！\r\n\r\n-&nbsp;个性时装AVATAR\r\n来自异时空的武装，来自神与魔的翅膀。一键换装，了然一新！多套炫萌个性化时装，任你选择！\r\n\r\n-&nbsp;多栖萌宠\r\n待召唤灵狐、天马、逆戟鲸，全栖萌宠，上天入海，无所不能！听，天边传来了龙鸣，与狮鹫的吼声！</pre><p><br/></p>', 1495699238, 1496476575, 18, 25, 1, 1, '', 0, 0, 1),
(14, '苍穹变', '', '', '/uploads/img1/20170603/5932326e16255.png!600X400.jpg', '【内容提要】\r\n\r\n百家媒体五星好评，百万下载热门游戏，2017年超好玩的3D MMORPG玄幻手游《苍穹变》！网络白金作家“天蚕土豆”全程监制超人气小说PK手游《苍穹变》最新内容推出，探索所神秘方尖塔，培养个人体内星系，完全掌控', '', '', '/uploads/img1/20170603/5932326e16255.png$$$$$$', '<p><span style="color: rgb(51, 51, 51); font-family: Helvetica, "> &nbsp; &nbsp;<img src="/uploads/img1/20170603/59326804344e9.jpg" width="406" height="228" title="59326804344e9.jpg" alt="59326804344e9.jpg"/>&nbsp; &nbsp;&nbsp;<img src="/uploads/img1/20170603/5932684b67d0c.jpg" title="5932684b67d0c.jpg" alt="aHR0cDovL2EzLm16c3RhdGljLmNvbS91cy9yMzAvUHVycGxlMTE3L3Y0LzM4LzJhL2VjLzM4MmFlY2M3LTU3YTEtZTYwMi1mNTdlLTM0Y2NiMTVkNmMxYi9zY3JlZW40MDZ4NzIyLmpwZWc=.jpg"/></span></p><pre style="box-sizing: border-box; overflow: hidden; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; border: none; font-size: 18px; line-height:30px; color: rgb(51, 51, 51); padding-right: 28px; max-height: initial; white-space: pre-wrap; word-wrap: break-word; background-color: rgb(255, 255, 255);">【内容提要】\r\n\r\n百家媒体五星好评，百万下载热门游戏，2017年超好玩的3D&nbsp;MMORPG玄幻手游《苍穹变》！网络白金作家“天蚕土豆”全程监制超人气小说PK手游《苍穹变》最新内容推出，探索所神秘方尖塔，培养个人体内星系，完全掌控星球命运！特色硬币，附加更多属性，助力斗者战苍穹！霸气坐骑，帅气斗翼，彰显个性必选必备！\r\n\r\n游戏视觉风格华美而绚丽，玩家置身斗气大陆，将会体验到元力进阶、元力化翼、炼药成丹、天地神焰、宗派纷争等原作内容，为中国千万玄幻玩家呈现一个真正完整的斗气大陆！\r\n\r\n\r\n【游戏特色】\r\n\r\n●天蚕土豆监制&nbsp;正版授权\r\n\r\n《苍穹变》根据玄幻小说作家“天蚕土豆”同名小说改编，由作者正版授权并全程监制，高还原打造3D&nbsp;MMORPG玄幻题材巨作，完美再现屌丝逆袭修真之旅，开启PK手游的元力时代！\r\n\r\n●获取硬币&nbsp;&nbsp;实力再升级\r\n\r\n特色硬币系统开放，获取、升级自由操作，强化属性，战力再次飙升。硬币等级越高，属性附加越多，一键晋级战力先锋。\r\n\r\n●个人星系&nbsp;&nbsp;掌控星球命运&nbsp;\r\n\r\n人身即宇宙！个人星系系统，新颖内容全盘亮相，整个太阳系全由你做主。探索神秘方尖塔，寻获星系道具，将每一颗行星命运掌握手中！同时提升个人实力，超越巅峰！\r\n\r\n●全新坐骑登场&nbsp;&nbsp;\r\n\r\n霸气坐骑人人向往，一旦拥有别无所求！新版推出，新坐骑同期登场，寻获个性坐骑，彰显王者风范。\r\n\r\n●帅气新斗翼&nbsp;斗者最爱\r\n\r\n超帅斗翼展现个人风采，两套全新斗翼将与玩家见面，给予玩家更多选择！体现个性必备，提升实力全无忧。\r\n\r\n●海量优化&nbsp;为斗而战\r\n\r\n海量优化内容一次更新，一切皆为大战而备，以斗为王，以战为尊，强化自身，再登苍穹之巅！</pre><p><br/></p>', 1495699266, 1496476707, 19, 25, 1, 1, '', 0, 0, 1),
(15, '放开那三国2', '', '', '/uploads/img1/20170603/59323337043b0.jpg!600X400.jpg', '征战半载，惊喜不断！终极红将现世，再掀红图霸业；神宠玄机、神兵系统，助你战力飙升；巅峰对决、军团大战、跨服争霸⋯⋯更多新玩法，等你体验！\r\n《放开那三国2》自上线以来，延续经典特色，带来众多非凡体验。游戏玩法不断升级，多重福利持续放送。时值', '', '', '/uploads/img1/20170603/59323337043b0.jpg$$$$$$', '<p><img src="/uploads/img1/20170603/59326fdd425ee.jpg" title="59326fdd425ee.jpg" alt="59326fdd425ee.jpg" width="370" height="657"/>&nbsp;&nbsp;<img src="/uploads/img1/20170603/59327034a868b.jpg" title="59327034a868b.jpg" alt="59327034a868b.jpg" width="370" height="657"/>&nbsp;&nbsp;<img src="/uploads/img1/20170603/5932705987dd2.jpg" title="5932705987dd2.jpg" alt="5932705987dd2.jpg" width="370" height="657"/></p><p><br/></p><p><img src="/uploads/img1/20170603/593270620311f.jpg" title="593270620311f.jpg" alt="593270620311f.jpg" width="370" height="657"/>&nbsp;&nbsp;<img src="/uploads/img1/20170603/5932706f47c6c.jpg" title="5932706f47c6c.jpg" alt="5932706f47c6c.jpg" width="370" height="657"/></p><pre style="box-sizing: border-box; overflow: hidden; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; border: none; font-size: 18px; line-height:30px; color: rgb(51, 51, 51); padding-right: 28px; max-height: initial; white-space: pre-wrap; word-wrap: break-word; background-color: rgb(255, 255, 255);">征战半载，惊喜不断！终极红将现世，再掀红图霸业；神宠玄机、神兵系统，助你战力飙升；巅峰对决、军团大战、跨服争霸⋯⋯更多新玩法，等你体验！\r\n《放开那三国2》自上线以来，延续经典特色，带来众多非凡体验。游戏玩法不断升级，多重福利持续放送。时值半周年庆典，海量豪礼感恩回馈中。\r\n冠绝三国，不负王名。《放开那三国2》放不开的手机游戏。\r\n【特色一】炫Q画风&nbsp;武将重现\r\n一眸一笑拔剑咆哮&nbsp;个性武将跃然在手\r\n\r\n【特色二】激斗剿匪&nbsp;指尖暴走\r\n痛殴恶匪拳拳到肉&nbsp;肆意连击暴打不停\r\n\r\n【特色三】碎屏特效&nbsp;极爽狂斗\r\n腾空连击超必杀&nbsp;一气呵成特效碎屏\r\n\r\n【特色四】无间社交&nbsp;全服嗨聊\r\n语音聊天、弹幕留言、群发红包嗨翻三国\r\n\r\n三国典藏级手游，放不开的经典之选！《放开那三国2》邀你重踏征伐之路！</pre><p><br/></p>', 1495699283, 1496477933, 60, 25, 1, 1, '', 0, 0, 1),
(16, '海航王', '', '', '/uploads/img1/20170603/59325e285dee6.jpg!600X400.jpg', '【游戏简介】\r\n《航海王 启航》为中国大陆首款ONE PIECE官方授权的手机游戏，由DeNA中国与万代南梦宫娱乐集团共同研发打造。游戏精致还原动画经典剧情，知名角色悉数登场，100%原味再现草帽海盗团成长路上的点点滴滴', '', '', '/uploads/img1/20170603/59325e285dee6.jpg$$$$$$', '<p><img src="/uploads/img1/20170603/593271771a919.jpg" title="593271771a919.jpg" alt="593271771a919.jpg" width="370" height="657"/>&nbsp;&nbsp;<img src="/uploads/img1/20170603/5932717e0c070.jpg" title="5932717e0c070.jpg" alt="5932717e0c070.jpg" width="370" height="657"/>&nbsp;&nbsp;<img src="/uploads/img1/20170603/5932718744a49.jpg" title="5932718744a49.jpg" alt="5932718744a49.jpg" width="370" height="657"/><img src="/uploads/img1/20170603/5932718fb3cc3.jpg" title="5932718fb3cc3.jpg" alt="5932718fb3cc3.jpg" width="370" height="657"/>&nbsp;&nbsp;<img src="/uploads/img1/20170603/59327198ee78e.jpg" title="59327198ee78e.jpg" alt="59327198ee78e.jpg" width="370" height="657"/></p><pre style="box-sizing: border-box; overflow: hidden; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; border: none; font-size: 18px; line-height:30px; color: rgb(51, 51, 51); padding-right: 28px; max-height: initial; white-space: pre-wrap; word-wrap: break-word; background-color: rgb(255, 255, 255);">【游戏简介】\r\n《航海王&nbsp;启航》为中国大陆首款ONE&nbsp;PIECE官方授权的手机游戏，由DeNA中国与万代南梦宫娱乐集团共同研发打造。游戏精致还原动画经典剧情，知名角色悉数登场，100%原味再现草帽海盗团成长路上的点点滴滴。游戏人物设计全面贴合原作设定，用心打磨场景、动作细节刻画，无损还原粉丝心目中的大海盗时代。游戏核心玩法独树一帜，首创紧张刺激的即时动作微电竞玩法，同时为不同玩家量身定制差异化玩法。游戏互动玩法丰富，轻松结识冒险路上的可靠伙伴，与他们共同驰骋伟大航路，一起踏上成为海盗王的荣耀之路吧。\r\n\r\n【游戏特色】\r\n海盗团养成：个性定制&nbsp;运筹帷幄\r\n路飞、佐罗、奈美、撒谎布、山智、乔巴、罗宾、弗兰奇……“ONE&nbsp;PIECE”超人气主角感动登场，你想要和他们并肩作战，组建史上最强大的海盗团吗？《航海王&nbsp;启航》让梦想变成现实！在游戏中玩家可以通过招募系统，自由培养“ONE&nbsp;PIECE”中的人气角色，让他们和你并肩探寻神秘宝藏！每位角色属性技能各有所长，水电火毒一应俱全，召唤控制各有千秋。不同属性技能效果搭配，组合效果，还能发现惊喜！玩家需根据不同战局，制定相应的阵容策略，才能战胜路途中的一众强敌，最终名扬全世界，成为独一无二的海盗王！\r\n\r\n奇幻大冒险：原汁原味&nbsp;惊喜体验\r\nPVE、海底监狱、珍宝巡航、极限斗技场、通缉榜、海盗同盟、回忆之战、跨服同盟战、王下七武海……《航海王&nbsp;启航》中每一个主线副本的背景设定都与“ONE&nbsp;PIECE”动画紧密相连，玩家通过游戏可亲身经历&nbsp;“ONE&nbsp;PIECE”中无数的经典剧情。&nbsp;而游戏中随机触发的奇遇事件，更会让你的寻宝之路充满未知挑战。想要在大海盗时代扬名立万？想要证明自己的价值？那就率领你的海盗团，在悬赏通缉榜中与其它海盗团一较高下！你的悬赏金额将根据战绩实时更新，悬赏排行榜上每天都在角逐《航海王&nbsp;启航》的最强王者。</pre><p><br/></p>', 1495699586, 1496478196, 43, 25, 1, 1, '', 0, 0, 1),
(17, '君王2', '', '', '/uploads/img1/20170603/59324c9ec0fa6.jpg!600X400.jpg', '【游戏简介】\r\n— 《君王2》是美峰自创IP“君王”系列中的最经典的一代MMO手游大作。\r\n— 自发布以来已拥有50，000，000注册用户，版本发行遍布日韩、东南亚、欧美等海外市场。\r\n— 游戏运用高清粒子流', '', '', '/uploads/img1/20170603/59324c9ec0fa6.jpg$$$$$$', '<p><img src="/uploads/img1/20170603/5932733537b22.jpg" title="5932733537b22.jpg" width="370" height="657" alt="5932733537b22.jpg"/>&nbsp;&nbsp;<img src="/uploads/img1/20170603/5932733577ef7.jpg" title="5932733577ef7.jpg" width="370" height="657" alt="5932733577ef7.jpg"/>&nbsp;&nbsp;<img src="/uploads/img1/20170603/59327335b21ca.jpg" title="59327335b21ca.jpg" width="370" height="657" alt="59327335b21ca.jpg"/></p><p><img src="/uploads/img1/20170603/5932733667303.jpg" title="5932733667303.jpg" width="370" height="657" alt="5932733667303.jpg"/>&nbsp;&nbsp;<img src="/uploads/img1/20170603/59327336aa433.jpg" title="59327336aa433.jpg" width="370" height="657" alt="59327336aa433.jpg"/></p><pre style="box-sizing: border-box; overflow: hidden; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; border: none; font-size: 18px; line-height:30px; color: rgb(51, 51, 51); padding-right: 28px; max-height: initial; white-space: pre-wrap; word-wrap: break-word; background-color: rgb(255, 255, 255);">【游戏简介】\r\n—&nbsp;《君王2》是美峰自创IP“君王”系列中的最经典的一代MMO手游大作。\r\n—&nbsp;自发布以来已拥有50，000，000注册用户，版本发行遍布日韩、东南亚、欧美等海外市场。\r\n—&nbsp;游戏运用高清粒子流技术，华丽的特效视觉表现，正统宏大的野外世界区域，惊险刺激的顶级关卡，随时随心野外PK，热血沸腾的跨服军团赛，极致个性装备随意搭配，带你领略最正统的RPG元素\r\n\r\n【游戏特色】\r\n◆数百个逼真魔幻场景：从冰川到火山，代入感超强的奇幻场景带你领略极致魔幻\r\n◆震撼心灵的立体音效：不同场景搭配不同风格的灵动配乐，不戴耳机玩是你的损失\r\n◆各色副本强力Boss：海量副本+传奇Boss，极致PVE玩法挑战自我极限\r\n◆百人同屏全即时对战：100VS100毫无压力！真人玩家实时大型团P绝不卡机！\r\n◆100级火热开启，冲级狂潮再掀！\r\n◆一个账号同步玩遍所有职业：全新化身系统，8大职业1键切换，100%深度体验\r\n◆Dota乱入！首创MOBA玩法横空出世。\r\n◆攻城掠地！热血城战助你天下制霸！\r\n◆跨服PK:本服封王无人可敌？跨服对战，全网高手同台激情搏杀！\r\n\r\n\r\n【历史荣誉】\r\n—&nbsp;韩国APP畅销榜TOP1\r\n—&nbsp;日本APP免费榜TOP3\r\n—&nbsp;台湾APP畅销榜TOP3\r\n—&nbsp;2013年世界移动游戏大会（WMGC）优秀产品奖第一名！\r\n你还在等什么？赶快加入吧……</pre><p><br/></p>', 1495700149, 1496478679, 43, 25, 1, 1, '', 0, 0, 1),
(18, '少年三国志', '', '', '/uploads/img1/20170603/59324dc60b277.jpg!600X400.jpg', '8000万玩家力荐！三国手游王者《少年三国志》史上最强革新震撼来袭！热血国战全面开启！跨服语音，集结万人攻城！\r\n\r\n【疯狂福利再升级】7天免费送赵云！两周免费送关羽！三周免费送吕布+战宠！欢庆两周年，首周再送50000元宝！\r\n【热血国战', '', '', '/uploads/img1/20170603/59324dc60b277.jpg$$$$$$', '<p><img src="/uploads/img1/20170603/59327459c2a9b.jpg" title="59327459c2a9b.jpg" width="370" height="657" alt="59327459c2a9b.jpg"/>&nbsp;&nbsp;<img src="/uploads/img1/20170603/5932745a165d1.jpg" title="5932745a165d1.jpg" width="370" height="657" alt="5932745a165d1.jpg"/>&nbsp;&nbsp;<img src="/uploads/img1/20170603/5932745a59b8d.jpg" title="5932745a59b8d.jpg" width="370" height="657" alt="5932745a59b8d.jpg"/></p><p><img src="/uploads/img1/20170603/5932745aa7cbb.jpg" title="5932745aa7cbb.jpg" width="370" height="657" alt="5932745aa7cbb.jpg"/>&nbsp;&nbsp;<img src="/uploads/img1/20170603/5932745b16749.jpg" title="5932745b16749.jpg" width="370" height="657" alt="5932745b16749.jpg"/></p><pre style="box-sizing: border-box; overflow: hidden; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; border: none; font-size: 18px; line-height:30px; color: rgb(51, 51, 51); padding-right: 28px; max-height: initial; white-space: pre-wrap; word-wrap: break-word; background-color: rgb(255, 255, 255);">8000万玩家力荐！三国手游王者《少年三国志》史上最强革新震撼来袭！热血国战全面开启！跨服语音，集结万人攻城！\r\n\r\n【疯狂福利再升级】7天免费送赵云！两周免费送关羽！三周免费送吕布+战宠！欢庆两周年，首周再送50000元宝！\r\n【热血国战全面开启】与四海热血男儿并肩征战！千人同屏，万人国战！跨服喊话，号令千军万马，摧城拔寨，分食天下！\r\n【绝代风华新画面】超大尺度美术提升！百余位一线画师，打造高颜值视觉福利！英英菜菜惹人怜爱，大乔小乔有颜有料！\r\n\r\n跑男陈赫代言，陈赫天天都在玩！最好玩的三国游戏，没有之一！&nbsp;\r\n荣获金翎奖“玩家最喜爱的移动网络游戏”、百度“十大风云手机网游”、360手机助手“年度最佳畅销游戏”、搜狗“最受欢迎移动游戏奖”、黑石奖“十佳网络游戏奖”等多个奖项！\r\n登录就送橙色武将：赵云、张辽、张角、太史慈任你选；两周后再送当前版本最高品质红色武将：关羽、曹操、周瑜、左慈任你挑！\r\n新玩家首周即可获得50000元宝最强福利，不充值也玩得毫无压力！\r\n2017年福利大升级，持续火爆！不玩你就OUT啦！\r\n\r\n【特色一】卡牌国战，激情战场！\r\n热血卡牌国战，征战东汉十三州大版图；跨服语音，随时随地集结万人攻城！更有群雄逐鹿、征战九州、激战虎牢关……二十余种互动玩法还原三国激情战场。和百万热血男儿一起纵横天下！\r\n\r\n【特色二】少年酷炫，颜值爆表！\r\n千万邀约百余位知名画师亲自操刀300余张卡牌人设！每个三国人物，都是16岁的酷炫少年、绝美少女，颜值爆表！少年视角的故事，没有尔虞我诈，只有少年意气！\r\n\r\n【特色三】合体大招，爽到碎屏！\r\n首款能释放合体技能的手游！吕布、貂蝉一起上阵，释放合体技“龙凤齐鸣”，威力逆天；刘关张一起上阵，释放合体技“万丈豪情”，秒杀全屏！这里，武将缘分不只是数值，合体技爽到屏碎！\r\n\r\n【特色四】立体卡牌，突破平面！\r\n是否看腻了扑克牌般碰来碰去？来《少年三国志》，这里的大乔小乔不再是平面图片，而是像手办一样站起来，呼之欲出！\r\n\r\n【特色五】明星配音，听觉盛宴！\r\n百万聘请30位影星、歌星、翻唱红人，录制了500余句个性台词，塑造三国少年最个性的声音。吕布怒吼：看我方天画戟！貂蝉娇嗔：不要小瞧女生哦！\r\n\r\n【特色六】最强福利，良心游戏！\r\n全年365天，平均每天可从游戏内获得至少300元宝，首周直送50000元宝，让你HIGH到爆！登录第七天，赵云、太史慈、张辽、张角4名顶级橙将，任你挑！更有最高品质红色武将关羽、周瑜、曹操、左慈登陆即送……最良心的手游，没有之一！\r\n\r\n【特色七】酷炫周边，时尚前沿！\r\n赵云手办豪华登场，38个精细部件，细致刻画“猛将如云”；高仿真小乔兵人，26个隐藏关节，真实皮肤质感，姿势任摆！2周年限量版桌垫、抓绒卫衣、酷炫背包……各种时尚酷炫周边活动赠送！\r\n\r\n【特色八】全民策划，你的秀场！\r\n首款开放给玩家参与策划的游戏，首款在游戏内可以看十几部同人漫画的游戏，首款开放给漫画大触、手办达人一起创作剧情和周边的游戏，首款每个版本都让玩家和策划面对面沟通、玩家说改就改的游戏！</pre><p><br/></p>', 1495700435, 1496478983, 93, 25, 1, 1, '', 0, 0, 1),
(19, '神武2', '', '', '/uploads/img1/20170603/59324ea569ba5.jpg!600X400.jpg', '优秀社交手游，全新西游，青嵩岁月，神武2相随\r\n【许嵩陪你看“神兵出世”，探“仙缘奇遇”】\r\n新角色——全新角色慕子白、慕凌风、紫嫣然、楚云天登场\r\n新装备——110新装备，神兵出世谁与争锋\r\n新宠物——仙兽翼龙降临，时光叽开放兑换\r\n新提', '', '', '/uploads/img1/20170603/59324ea569ba5.jpg$$$$$$', '<p><img src="/uploads/img1/20170603/5932757f0e5e0.jpg" title="5932757f0e5e0.jpg"/>&nbsp;&nbsp;<img src="/uploads/img1/20170603/5932757f4340b.jpg" title="5932757f4340b.jpg"/></p><pre style="box-sizing: border-box; overflow: hidden; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; border: none; font-size: 18px; line-height:30px; color: rgb(51, 51, 51); padding-right: 28px; max-height: initial; white-space: pre-wrap; word-wrap: break-word; background-color: rgb(255, 255, 255);">优秀社交手游，全新西游，青嵩岁月，神武2相随\r\n【许嵩陪你看“神兵出世”，探“仙缘奇遇”】\r\n新角色——全新角色慕子白、慕凌风、紫嫣然、楚云天登场\r\n新装备——110新装备，神兵出世谁与争锋\r\n新宠物——仙兽翼龙降临，时光叽开放兑换\r\n新提升——全新套装技能来袭，开启pk新套路\r\n新礼包——五一礼包，给力道具免费领取\r\n新玩法——挑战十二生肖，考验三界英雄实力\r\n新机遇——最高顶出五技能，强力宠物随我打造\r\n新福利——110级升级礼包免费领，阳光护符在等你&nbsp;\r\n新工具——新增聚宝罗盘，挖宝更加便捷\r\n\r\n【游戏简介】\r\n《神武2》，优秀社交手游，创下人山人海的人气神话，收获超过85,000条用户五星好评，首创手游巅峰服战，首创回合排位赛，许嵩陪你一起畅玩！\r\n\r\n西游！玩转西游指尖降魔，三界风情任逍遥\r\n回合！经典回合携新玩法，天梯排位赛等你来战\r\n快乐！最爱的人在你眼前，最好的朋友都在身边\r\n交友！语音畅聊，有缘千里来相会，天涯觅知音\r\n\r\n【游戏特色】\r\n√优秀社交手游\r\n组队、帮派、婚姻、结拜，共筑丰富社交系统。选美大会展现真我，神武好声音以歌会友，好友秀首创手游朋友圈。即时分享的语音，给你热闹非凡的交友盛景！\r\n√各有所长的门派\r\n九大门派，百种技能，体验精彩多样的人生\r\n√拉风的飞行坐骑\r\n御剑翱翔，双人坐骑，浪漫游三界\r\n√超萌有爱的宠物\r\n自主养成，时尚染色，酷炫造型，随心搭配\r\n√丰富创新的玩法\r\n天梯排位赛，群雄际会；神武之战，勇登巅峰\r\n√幸福的美丽人生\r\n结婚生子，植树栽花，有房有车，有家有幸福\r\n√清新自然的画风\r\n高清分辨，极致UI，用心雕琢，唯美风范\r\n\r\n【玩家好评】\r\n√玩神武几年了，真心不错，交了一些不错的朋友，一直支持！\r\n√一年多神武是我生活中必不可少的，每天任务活动都能收获不少，友情爱情，生气开心，特别喜欢这个游戏，会一直继续下去。\r\n√梦幻之后，再续西游，神武三年，再赴手游。一起神武的时光，是最快乐的青春。千言万语说不清，唯有陪伴在我心，我会一直神武下去！</pre><p><br/></p>', 1495700608, 1496479112, 52, 25, 1, 1, '', 0, 0, 1),
(20, '妖怪来了', '', '', '/uploads/img1/20170603/59324f17daa8c.jpg!600X400.jpg', '西游题材角色扮演类手游力作《妖怪来了》震撼来袭！\r\n以西游为背景，斩妖除魔为主题，凤凰涅槃、浴火重生，全力进击点杀妖魔！炫酷的神技，极致的战斗画面，体验爽快的打击感。\r\n游戏实现多点触控打击、多线养成、卡牌收集等特色玩法，上手简单，玩法丰富', '', '', '/uploads/img1/20170603/59324f17daa8c.jpg$$$$$$', '<p><img src="/uploads/img1/20170603/59327608eb8d7.jpg" title="59327608eb8d7.jpg" width="370" height="657" alt="59327608eb8d7.jpg"/>&nbsp;&nbsp;<img src="/uploads/img1/20170603/5932760932800.jpg" title="5932760932800.jpg" width="370" height="657" alt="5932760932800.jpg"/>&nbsp;&nbsp;<img src="/uploads/img1/20170603/59327608a2156.jpg" title="59327608a2156.jpg" width="370" height="657" alt="59327608a2156.jpg"/></p><p><img src="/uploads/img1/20170603/59327609d1b1c.jpg" title="59327609d1b1c.jpg" width="370" height="657" alt="59327609d1b1c.jpg"/>&nbsp;&nbsp;<img src="/uploads/img1/20170603/5932760a22d53.jpg" title="5932760a22d53.jpg" width="370" height="657" alt="5932760a22d53.jpg"/></p><pre style="box-sizing: border-box; overflow: hidden; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; border: none; font-size: 18px; line-height:30px; color: rgb(51, 51, 51); padding-right: 28px; max-height: 190px; white-space: pre-wrap; word-wrap: break-word; background-color: rgb(255, 255, 255);">西游题材角色扮演类手游力作《妖怪来了》震撼来袭！\r\n以西游为背景，斩妖除魔为主题，凤凰涅槃、浴火重生，全力进击点杀妖魔！炫酷的神技，极致的战斗画面，体验爽快的打击感。\r\n游戏实现多点触控打击、多线养成、卡牌收集等特色玩法，上手简单，玩法丰富，三界神魔助阵，神装出世，法宝随行，好玩根本停不下来！</pre><p><br/></p>', 1495700822, 1496479331, 28, 25, 1, 1, '', 0, 0, 1),
(21, '崩坏3', '', '', '/uploads/img1/20170603/59324f8eb32cb.jpg!600X400.jpg', '休伯利安号，指挥系统切换至战斗舰桥\r\n辅助引擎能量急速上升，开始向主机输送点火动力，距离临界值还有5%\r\n通告全舰，进入点火倒计时，10，9，8...\r\n下载按钮最终防护栓解锁，崩坏冲击，开始！\r\n\r\n所以说，从今天开始，你就是我的舰长了嘛', '', '', '/uploads/img1/20170603/59324f8eb32cb.jpg$$$$$$', '<p><img src="/uploads/img1/20170603/593276cc55729.jpg"/>&nbsp;&nbsp;<img src="/uploads/img1/20170603/593276cc78bec.jpg"/></p><p style="font-size:18px;line-height:30px;">休伯利安号，指挥系统切换至战斗舰桥\r\n辅助引擎能量急速上升，开始向主机输送点火动力，距离临界值还有5%\r\n通告全舰，进入点火倒计时，10，9，8...\r\n下载按钮最终防护栓解锁，崩坏冲击，开始！\r\n\r\n所以说，从今天开始，你就是我的舰长了嘛？\r\n请认真记住，我就是休伯利安号的战舰AI娘，爱酱~守卫这艘战舰，是我的使命，也是舰长的使命！\r\n那么，让我先来检测一下你智商啵~\r\n双脚离地了，病毒就关闭了，聪明的智商又占领高地了...请作答！\r\n回答，忽悠，你接着忽悠，恭喜你解锁智商等级，米忽悠吃枣药丸。\r\n回答，蓝光八万八，恭喜你解锁智商等级，卖了别墅做游戏。\r\n什么！？舰长你不明白爱酱在说啥？\r\n那么，恭喜你解锁智商等级，琪(cao)亚(lv)娜(chong)的大脑！\r\n纳尼？！爱酱刚才捕捉到了一个惊人的名字！温蒂！\r\n哟~作为人类，舰长还真是了不起呢，竟然知道第四律者是坐轮椅的！\r\n不不不~用舰长听得懂的话来说，应该是，你怎么会知道游戏第三章才出场角色的名字嘛！\r\n莫非，舰长像爱酱一样，还有着Hacking别人手机的能力？\r\n欸~嘿~嘿~这倒是提醒了爱酱。舰长手机root权限已获得，让我来看看舰长还知道些什么绝密情报。\r\n为了实现次世代卡通渲染，大伟哥卖了三套别墅。师从东瀛老司机，大伟哥女装潜伏索法，习得动作游戏六字真言：3D自由视角！\r\n所以说，为了做好舰长的职位，你还是蛮努力的嘛~对于你这个人类，爱酱多少算是有点认可了吧。\r\n欸~~不对不对，爱酱好像刚看到了什么不得了的事情。\r\n这里还有个加密文件夹！密码居然是芽衣的生日！\r\n咿呀~舰长真是不要脸！真是没想到，你竟然是这样的舰长！</p>', 1495700960, 1496479621, 59, 25, 1, 1, '', 0, 0, 1),
(22, '王者荣耀', '', '', '/uploads/img1/20170603/59325152bfcc6.jpg!600X400.jpg', '王者荣耀：无处不团，两亿好友聚好玩\r\n\r\n\r\n\r\n【游戏介绍】\r\n《王者荣耀》是腾讯第一5V5英雄公平对战手游，腾讯最新MOBA手游大作！5V5王者峡谷、5V5深渊大乱斗、以及3V3、1V1等多样模式一键体验，热血竞技尽享快感！海量英雄随心', '', '', '/uploads/img1/20170603/59325152bfcc6.jpg$$$$$$', '<pre style="box-sizing: border-box; overflow: hidden; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; border: none; font-size: 14px; color: rgb(51, 51, 51); padding-right: 28px; max-height: initial; white-space: pre-wrap; word-wrap: break-word; background-color: rgb(255, 255, 255);">王者荣耀：无处不团，两亿好友聚好玩\r\n\r\n\r\n\r\n【游戏介绍】\r\n《王者荣耀》是腾讯第一5V5英雄公平对战手游，腾讯最新MOBA手游大作！5V5王者峡谷、5V5深渊大乱斗、以及3V3、1V1等多样模式一键体验，热血竞技尽享快感！海量英雄随心选择，精妙配合默契作战！10秒实时跨区匹配，与好友组队登顶最强王者！操作简单易上手，一血、五杀、超神，极致还原经典体验！实力操作公平对战，回归MOBA初心！\r\n赶快加入《王者荣耀》，随时开启你的激情团战！&nbsp;\r\n\r\n\r\n\r\n【游戏特色】\r\n1、5V5！越塔强杀！超神！\r\n5V5经典地图，三路推塔，呈现原汁原味的对战体验。英雄策略搭配，组建最强阵容，默契配合极限666！\r\n\r\n\r\n\r\n2、深渊大乱斗！随机英雄一路团战！\r\n5V5大乱斗，即刻激情团战！随机盲选英雄，全团杀中路，冲突一触即发！一条路，全神装，血战到底！\r\n\r\n\r\n\r\n3、随时开团！10分钟爽一把！\r\n适合手机的MOBA游戏，10分钟享受极致竞技体验。迂回作战，手脑配合，一战到底！人多，速来！\r\n\r\n\r\n\r\n4、公平竞技！好玩不坑拼实力！\r\n凭实力carry全场，靠技术决定胜负。不做英雄养成，不设体力，还你最初的游戏乐趣！\r\n\r\n\r\n\r\n5、指尖超神！精妙走位秀操作！\r\n微操改变战局！手速流？意识流？看我精妙走位，力压群雄，打出钻石操作！收割，连杀超神！</pre><p><br/></p>', 1495701067, 1496469871, 28, 25, 1, 1, '', 0, 0, 1),
(23, '天龙八部手游', '', '', '/uploads/img1/20170603/5932542c2ce6a.jpg!600X400.jpg', '金庸正版授权，《天龙八部》端游原班人马倾心打造，完美传承端游核心特色与经典玩法。游戏以Unity5引擎打造真实3D视觉盛宴，再现聚贤庄、珍珑棋局、琅嬛福地等知名场景，更有乔峰段誉王语嫣等英雄角色指点传世神功，四大经典门派，远攻近战、刺客治疗', '', '', '/uploads/img1/20170603/5932542c2ce6a.jpg$$$$$$', '<pre style="box-sizing: border-box; overflow: hidden; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; border: none; font-size: 14px; color: rgb(51, 51, 51); padding-right: 28px; max-height: initial; white-space: pre-wrap; word-wrap: break-word; background-color: rgb(255, 255, 255);">金庸正版授权，《天龙八部》端游原班人马倾心打造，完美传承端游核心特色与经典玩法。游戏以Unity5引擎打造真实3D视觉盛宴，再现聚贤庄、珍珑棋局、琅嬛福地等知名场景，更有乔峰段誉王语嫣等英雄角色指点传世神功，四大经典门派，远攻近战、刺客治疗各具特色，珍兽神器、装备打造、自由交易玩法丰富，还有行酒令、运镖、凤凰古城等快意帮派玩法，营造出一个荡气回肠、快意恩仇的热血武侠世界，完美呈现金庸笔下最宏大的天龙江湖！\r\n\r\n---游戏特色---\r\n\r\n【十年经典&nbsp;金庸正版授权】\r\n《天龙八部》手游由端游原班人马匠心打造，初心不改，完美还原端游老三环、燕子坞、缥缈峰、四绝庄等经典副本玩法；同时拥有金庸正版授权，完美重现琅嬛福地、聚贤庄等经典场景。\r\n\r\n【极致画面&nbsp;珍兽神器养成】\r\nUnity5引擎打造真实3D视觉盛宴，&nbsp;身临其境见证武侠世界的江湖纷争；同时还有珍兽附体，称霸江湖；门派神器独具特色，神铸突破，打造绝世神兵。\r\n\r\n【经典门派&nbsp;英雄指点神功】\r\n游戏现还原端游四大经典门派，远攻近战、刺客治疗各具特色，挑战英雄试炼，指点神功，精进武学修炼，助力少侠横扫武林。\r\n\r\n【生活技能&nbsp;珍品拍卖交易】\r\n通过采集挖矿、种植桑蚕，生活玩家也可手工打造专属极品装备；游戏提供便捷安全的交易平台，珍兽装备材料道具，一键买卖，日进斗金。\r\n\r\n【热血帮派&nbsp;多元趣味社交】\r\n酣畅淋漓的帮会行酒令，齐心协力的帮派运镖，参与即可获得丰厚奖励分红！也可邀好友一同挑战宋辽大战、镜湖BOSS，更有多元深度社交关系，给你一个真实宏大的武侠江湖！</pre><p><br/></p>', 1495701147, 1496470595, 63, 25, 1, 1, '', 0, 0, 1),
(24, 'SUP 多人赛车', '', '', '/uploads/img1/20170603/593254c54cf2a.jpg!600X400.jpg', '全副武装，点燃发动机，体验最疯狂的免费多人赛车竞技！&nbsp;\r\n漂移、跳跃、加速冲刺，让你的对手望尘莫及，毫发无损抵达终点线！\r\n\r\n&nbsp;多人在线、实时竞技：碾压对手\r\n&nbsp;&nbsp;o&nbsp;&nbsp;&nbs', '', '', '/uploads/img1/20170603/593254c54cf2a.jpg$$$$$$', '<pre style="box-sizing: border-box; overflow: hidden; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; border: none; font-size: 14px; color: rgb(51, 51, 51); padding-right: 28px; max-height: initial; white-space: pre-wrap; word-wrap: break-word; background-color: rgb(255, 255, 255);">全副武装，点燃发动机，体验最疯狂的免费多人赛车竞技！&nbsp;\r\n漂移、跳跃、加速冲刺，让你的对手望尘莫及，毫发无损抵达终点线！\r\n\r\n&nbsp;多人在线、实时竞技：碾压对手\r\n&nbsp;&nbsp;o&nbsp;&nbsp;&nbsp;在炫酷赛道上，与来自世界各地的玩家比拼，每场比赛多达&nbsp;3&nbsp;位对手\r\n&nbsp;&nbsp;o&nbsp;&nbsp;&nbsp;发挥赛车极限，将对手赶出跑道！加速、跳跃、漂移，用各种技巧赢取胜利！\r\n&nbsp;&nbsp;o&nbsp;&nbsp;&nbsp;丰富表情增加更多乐趣：从对手身旁呼啸而过时，别忘得意的眨一下眼睛&nbsp;\r\n&nbsp;&nbsp;o&nbsp;&nbsp;&nbsp;赌您胜出，赢取钻石！\r\n\r\n定制并升级您的赛车系列\r\n&nbsp;&nbsp;o&nbsp;&nbsp;&nbsp;用各色皮肤定制您的赛车\r\n&nbsp;&nbsp;o&nbsp;&nbsp;&nbsp;收集各色大力士汽车、巨无霸卡车、拉力赛车、改装赛车等其他牛车！\r\n&nbsp;&nbsp;o&nbsp;&nbsp;&nbsp;进化赛车，解锁更多强化属性（刹车、涡轮、轮胎等）\r\n&nbsp;\r\n创建自己的赛道\r\n&nbsp;&nbsp;o&nbsp;&nbsp;&nbsp;用关卡编辑器定制自己的赛道\r\n&nbsp;&nbsp;o&nbsp;&nbsp;&nbsp;将赛道分享至世界，集赞赢取钻石\r\n&nbsp;\r\n登至顶峰，分享成功\r\n&nbsp;&nbsp;o&nbsp;&nbsp;&nbsp;邀请好友进行分数比拼\r\n&nbsp;&nbsp;o&nbsp;&nbsp;&nbsp;将最近的比赛录像分享至全球！\r\n&nbsp;&nbsp;o&nbsp;&nbsp;&nbsp;达成成就，占据排行榜首位\r\n&nbsp;&nbsp;o&nbsp;&nbsp;&nbsp;挑战特殊关卡，展示绝技赢取额外钻石，升级更多属性\r\n&nbsp;&nbsp;o&nbsp;&nbsp;&nbsp;全新活动每日体验！\r\n&nbsp;\r\n----------------------------------------\r\n\r\n提示：\r\n&nbsp;&nbsp;o&nbsp;&nbsp;&nbsp;可借用对手的加速气流提升自己的速度\r\n&nbsp;&nbsp;o&nbsp;&nbsp;&nbsp;通过绝技、漂移和跳跃收集更多氮气\r\n&nbsp;&nbsp;o&nbsp;&nbsp;&nbsp;撞击对手，将他们顶出赛道\r\n&nbsp;&nbsp;o&nbsp;&nbsp;&nbsp;合理使用氮气：在起跳或碾压敌人时使用！\r\n\r\n----------------------------------------\r\n\r\n是否迫不及待想体验氮气加速的快感了？马上免费下载，与最疯狂的&nbsp;IOS&nbsp;赛车手一较高下！</pre><p><br/></p>', 1495701247, 1496470755, 51, 25, 1, 1, '', 0, 0, 1),
(25, '派派－像偷菜一样偷红包', '', '', '/uploads/img1/20170603/5932557e0439e.jpg!600X400.jpg', '派派是一款超新颖的熟人社交APP，带来熟人之间全新社交方式，让熟人之间的互动更有趣。所推出的包括“偷好友现金红包”、&nbsp;“整蛊熟人“”、”萌宠PK“、“形象Show”等主要功能彻底颠覆了以往熟人社交应用，让用户获取全新的体验感受，引', '', '', '/uploads/img1/20170603/5932557e0439e.jpg$$$$$$', '<pre style="box-sizing: border-box; overflow: hidden; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; border: none; font-size: 14px; color: rgb(51, 51, 51); padding-right: 28px; max-height: initial; white-space: pre-wrap; word-wrap: break-word; background-color: rgb(255, 255, 255);">派派是一款超新颖的熟人社交APP，带来熟人之间全新社交方式，让熟人之间的互动更有趣。所推出的包括“偷好友现金红包”、&nbsp;“整蛊熟人“”、”萌宠PK“、“形象Show”等主要功能彻底颠覆了以往熟人社交应用，让用户获取全新的体验感受，引领了时下最时尚的社交方式。\r\n功能介绍\r\n1.偷好友现金红包：偷好友红包刺激的像当年偷菜一样，偷到的好友红包还可以直接提现，充分满足你的成就感。派派红包发不停，好友欢乐每一天。\r\n&nbsp;2.整蛊熟人：可以整蛊你的熟人好友（包括通讯录、微信、微博、QQ好友等），抓熟人好友来暖床、跳舞或者是刷马桶，更可以让他们来为你打工，必须为你任劳任怨。\r\n3.百变衣柜：可以通过收集服装碎片、找个跟班打工获得图纸、抢夺邻居或好友获取材料来制造喜欢的服装，打造自己独一无二、个性十足的衣柜。\r\n4.Q萌宠物：养个宠物找熟人好友PK，赢了能把好友抓来暖床跳舞刷马桶，让你和熟人好友互动更有趣。快来领养超Q的萌宠来为你战斗吧。\r\n5.动态表情：超震撼的动态表情铺满全屏，对面的好友更能感受你的诚意满满。</pre><p><br/></p>', 1495701288, 1496470926, 69, 25, 1, 1, '', 0, 0, 1),
(26, '探探－超火爆社交App', '', '', '/uploads/img1/20170603/593255ccb9e01.jpg!600X400.jpg', '【90后最大的社交平台】\r\n\r\n单身的你，或是想寻找生命中的那个Ta，或是想认识有意思合拍的人，无奈工作太忙，生活圈子又太小。在匆忙的城市里，每天都有无数人在擦肩而过，却又没有方法彼此相识。\r\n\r\n「探探」是一种全新的相遇方式。以双向的“一', '', '', '/uploads/img1/20170603/593255ccb9e01.jpg$$$$$$', '<pre style="box-sizing: border-box; overflow: hidden; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; border: none; font-size: 14px; color: rgb(51, 51, 51); padding-right: 28px; max-height: initial; white-space: pre-wrap; word-wrap: break-word; background-color: rgb(255, 255, 255);">【90后最大的社交平台】\r\n\r\n单身的你，或是想寻找生命中的那个Ta，或是想认识有意思合拍的人，无奈工作太忙，生活圈子又太小。在匆忙的城市里，每天都有无数人在擦肩而过，却又没有方法彼此相识。\r\n\r\n「探探」是一种全新的相遇方式。以双向的“一见钟情”找到对你Special的人。\r\n\r\n简单、心动、惊喜。相遇本该如此美好。\r\n\r\n现在，探探又推出全新功能—擦肩而过，通过地理定位，推荐给你恰好和你经过相同地点、“擦肩而过”的人，让社交变得更有趣、更有缘分！\r\n\r\n探探的特点：\r\n【简单】左滑无感、右滑喜欢，互相喜欢即配对聊天\r\n【安全】不会泄露心意，Ta不知道你的选择，除非Ta也喜欢你\r\n【优质】男生优质不Low、全民颜值担当\r\n【高效】配对后聊天回复率超高\r\n【心动】配对瞬间，带给你一次甜蜜的心动\r\n【自信】说第一句话前，已知对方喜欢你\r\n【无骚扰】配对才能聊天，不可能被不喜欢的人骚扰\r\n【无尴尬】屏蔽联系人，避免看见老板、同事、熟人\r\n【朋友圈】告别“不知道聊什么”的囧境，每条朋友圈都是话题</pre><p><br/></p>', 1495701529, 1496471009, 29, 25, 1, 1, '', 0, 0, 1),
(27, '部落冲突 (Clash of Clans)', '', '', '/uploads/img1/20170603/5932568f3e7df.jpg!600X400.jpg', '部落对战以来最大更新现已上线！&nbsp;\r\n\r\n加入全球数百万玩家的行列，建立自己的村庄，组建自己的部落，参加史诗般的部落对战！\r\n\r\n建立村庄，组建部落，保护自己的村庄，掠夺他人的村庄，与全球数百万玩家一起享受其中的乐趣！&nbsp;\r', '', '', '/uploads/img1/20170603/5932568f3e7df.jpg$$$$$$', '<pre style="box-sizing: border-box; overflow: hidden; font-family: &#39;Helvetica Neue&#39;, Helvetica, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; border: none; font-size: 14px; color: rgb(51, 51, 51); padding-right: 28px; max-height: initial; white-space: pre-wrap; word-wrap: break-word; background-color: rgb(255, 255, 255);">部落对战以来最大更新现已上线！&nbsp;\r\n\r\n加入全球数百万玩家的行列，建立自己的村庄，组建自己的部落，参加史诗般的部落对战！\r\n\r\n建立村庄，组建部落，保护自己的村庄，掠夺他人的村庄，与全球数百万玩家一起享受其中的乐趣！&nbsp;\r\n\r\n怒气冲天的美髯野蛮人和爱玩火球的法师等兵种待您招入麾下。\r\n\r\n新增内容：\r\n•	踏上前往建筑大师基地的旅程，探索神秘新世界中的全新建筑和角色。\r\n•	使用全新兵种进行对战，包括狂暴野蛮人、隐秘弓箭手、巨人拳击手、炸弹兵、加农炮战车以及新英雄——战争机器。\r\n•	在全新的对抗赛模式下与其他玩家一对一正面交锋。\r\n\r\n游戏特色：\r\n•	加入其他玩家的部落或自行创建部落并邀请好友加入。\r\n•	与部落成员一同参加部落对战，与全球范围内的其他部落一较高下。\r\n•	使用加农炮、箭塔、迫击炮、隐形炸弹、隐形弹簧和城墙等防御设施保卫村庄。\r\n•	横扫哥布林王国，击败哥布林之王。\r\n•	搭配不同的兵种、法术和英雄，尝试各种独特的战术。\r\n•	与好友进行友谊战，与其他部落进行部落友谊战切磋技艺，还有各种特别活动等您参与。\r\n•	训练不一样的兵种，并且不断升级兵种。</pre><p><br/></p>', 1495701846, 1496471205, 63, 25, 1, 1, '', 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `newt_product`
--

CREATE TABLE IF NOT EXISTS `newt_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `pictureurls` text COMMENT '图片地址',
  `content` text COMMENT '内容',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `marketprice` decimal(8,2) NOT NULL DEFAULT '0.00',
  `brand` varchar(50) NOT NULL DEFAULT '' COMMENT '品牌',
  `units` varchar(50) NOT NULL DEFAULT '' COMMENT '单位',
  `specification` varchar(50) NOT NULL DEFAULT '' COMMENT '规格',
  `publishtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `newt_role`
--

CREATE TABLE IF NOT EXISTS `newt_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `newt_role`
--

INSERT INTO `newt_role` (`id`, `name`, `pid`, `status`, `remark`) VALUES
(1, '管理员', 0, 1, '管理员'),
(2, '编辑', 0, 1, '编辑');

-- --------------------------------------------------------

--
-- 表的结构 `newt_role_user`
--

CREATE TABLE IF NOT EXISTS `newt_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `newt_role_user`
--

INSERT INTO `newt_role_user` (`role_id`, `user_id`) VALUES
(1, '2');

-- --------------------------------------------------------

--
-- 表的结构 `newt_soft`
--

CREATE TABLE IF NOT EXISTS `newt_soft` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `color` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `pictureurls` text,
  `content` text COMMENT '内容',
  `updatelog` text COMMENT '更新日志',
  `downlink` text COMMENT '下载地址',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要描述',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '版本号',
  `softtype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '软件类型',
  `copytype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '授权形式',
  `language` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '语言',
  `os` varchar(100) NOT NULL DEFAULT '' COMMENT '运行环境',
  `filesize` varchar(10) NOT NULL DEFAULT '' COMMENT '文件大小',
  `officialurl` varchar(100) NOT NULL DEFAULT '' COMMENT '官方网站',
  `publishtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `newt_special`
--

CREATE TABLE IF NOT EXISTS `newt_special` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `shorttitle` varchar(100) NOT NULL DEFAULT '' COMMENT '副标题',
  `color` char(10) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `keywords` varchar(50) DEFAULT '' COMMENT '关键字',
  `litpic` varchar(150) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` varchar(255) NOT NULL DEFAULT '',
  `content` text COMMENT '内容',
  `publishtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `commentflag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '允许评论',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性',
  `jumpurl` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1回收站',
  `filename` varchar(60) DEFAULT '',
  `template` varchar(60) NOT NULL DEFAULT '',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'admin',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `newt_special`
--

INSERT INTO `newt_special` (`id`, `title`, `shorttitle`, `color`, `author`, `keywords`, `litpic`, `description`, `content`, `publishtime`, `updatetime`, `click`, `cid`, `commentflag`, `flag`, `jumpurl`, `status`, `filename`, `template`, `aid`) VALUES
(1, '文章汇集', '', '', '', '', 'http://img9.xyhcms.com/201410/53391df14c069.jpg!200X200.jpg', '文章汇集', NULL, 1398668509, 1398668509, 82, 0, 1, 1, '', 0, '', 'Special_content.html', 1);

-- --------------------------------------------------------

--
-- 表的结构 `nt_designer`
--

CREATE TABLE IF NOT EXISTS `nt_designer` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(100) NOT NULL COMMENT '项目标题',
  `pic` varchar(100) NOT NULL COMMENT '项目图片',
  `pic_dir` varchar(100) NOT NULL COMMENT '图片路径',
  `sm_pic` varchar(100) NOT NULL COMMENT '缩略图小图',
  `mid_pic` varchar(100) NOT NULL COMMENT '缩略图中图',
  `big_pic` varchar(100) NOT NULL COMMENT '缩略图大图',
  `content` varchar(1000) NOT NULL COMMENT '项目内容',
  `contentone` varchar(100) NOT NULL COMMENT '内容补充',
  `addtime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `nt_designer`
--

INSERT INTO `nt_designer` (`id`, `title`, `pic`, `pic_dir`, `sm_pic`, `mid_pic`, `big_pic`, `content`, `contentone`, `addtime`) VALUES
(1, '一元购平台', 'Anli/20170216152131/{A9584743-2124-4F70-B71B-1A4D6068A5DA}.jpg', 'Anli/20170216152131/', 'Anli/20170216152131/sm_{A9584743-2124-4F70-B71B-1A4D6068A5DA}.jpg', 'Anli/20170216152131/mid_{A9584743-2124-4F70-B71B-1A4D6068A5DA}.jpg', 'Anli/20170216152131/big_{A9584743-2124-4F70-B71B-1A4D6068A5DA}.jpg', '类似于网易的一元夺宝平台，将商品通过众筹的方式，筹资购买，买得的商品在所有众筹这种按照一定的算法进行选择，选出其中一人作为获奖者，获得商品。', '一元购平台在形式上进行了扩展，扩展了限购方式，十元方式等。', '2017-02-16'),
(2, '汽车售后服务市场App', 'Anli/20170216103158/{8446B496-BC8D-4E9D-9441-7D956C9899D0}.jpg', 'Anli/20170216103158/', 'Anli/20170216103158/sm_pic{8446B496-BC8D-4E9D-9441-7D956C9899D0}.jpg', 'Anli/20170216103158/mid_pic{8446B496-BC8D-4E9D-9441-7D956C9899D0}.jpg', 'Anli/20170216103158/big_pic{8446B496-BC8D-4E9D-9441-7D956C9899D0}.jpg', '<p>重庆某环保新能源开发股份有限公司，本环保电子商务APP平台，涵盖了集汽车保养类产品销售，生活服务、汽车维修、预约服务、课程培训等综合一体的线上平台，此APP是基于Android和IOS端、后台接口及平台管理系统。</p>', '此APP开发为客户产品销售及公司上市提供了强有力的技术支持。', '2017-02-16');

-- --------------------------------------------------------

--
-- 表的结构 `nt_login`
--

CREATE TABLE IF NOT EXISTS `nt_login` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL COMMENT '密码（md5）加密',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `nt_login`
--

INSERT INTO `nt_login` (`id`, `username`, `password`) VALUES
(1, 'vinnieup', 'cee6d9b634f2d419d7aeb5a6e0adea7b'),
(2, 'vinnieup1', 'cee6d9b634f2d419d7aeb5a6e0adea7b');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
