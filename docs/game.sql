/*
Navicat MySQL Data Transfer

Source Server         : localhost_root
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : game

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2022-11-24 22:04:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for boss
-- ----------------------------
DROP TABLE IF EXISTS `boss`;
CREATE TABLE `boss` (
  `bossname` text NOT NULL,
  `bossinfo` text NOT NULL,
  `bosslv` text NOT NULL,
  `bosshp` varchar(255) NOT NULL,
  `bossmaxhp` varchar(255) NOT NULL,
  `bossgj` varchar(255) NOT NULL,
  `bossfy` varchar(255) NOT NULL,
  `bossbj` varchar(255) NOT NULL,
  `bossxx` varchar(255) NOT NULL,
  `bosszb` varchar(255) NOT NULL,
  `bossdj` varchar(255) NOT NULL,
  `bossid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bs` int(255) NOT NULL,
  `bosstime` datetime NOT NULL,
  PRIMARY KEY (`bossid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of boss
-- ----------------------------
INSERT INTO `boss` VALUES ('Boss Admin', 'Boss Admin', '50', '993164', '1000000', '1000', '0', '0', '0', '33,34,35,36,37', '1|10000', '1', '10', '2021-12-13 02:39:05');

-- ----------------------------
-- Table structure for bugcollect
-- ----------------------------
DROP TABLE IF EXISTS `bugcollect`;
CREATE TABLE `bugcollect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uptime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bugcollect
-- ----------------------------
INSERT INTO `bugcollect` VALUES ('29', 'Minh vũ', 'Huyết dược', 'Đầy máu còn có thể dùng, vạn nhất tay tàn phế đầy máu đem cái cuối cùng huyết dược điểm, cái kia chính là một cái khác chuyện xưa (sự cố)', '2020-01-02 21:07:09', '424');
INSERT INTO `bugcollect` VALUES ('28', 'Hắc miêu chủ', 'Đạo cụ', 'Đạo cụ bán 0 linh thạch', '2020-01-02 20:54:36 [done]', '431');
INSERT INTO `bugcollect` VALUES ('27', 'Hắc miêu chủ', 'Danh tự', 'Danh tự có thể lặp lại a', '2020-01-02 20:49:18 [done]', '431');
INSERT INTO `bugcollect` VALUES ('26', 'Minh vũ', 'Na cá xá', 'Ta cảm thấy đi, ta có thể điên cuồng tiểu hào, sau đó treo một điểm trang bị cày tiền', '2020-01-02 20:48:15', '424');
INSERT INTO `bugcollect` VALUES ('25', 'Hắc miêu chủ', 'Quan vu chiến đấu', 'Chiến đấu sau máu của ngươi sẽ về đầy. .', '2020-01-02 20:42:19 [lv<=10]', '431');
INSERT INTO `bugcollect` VALUES ('24', 'Hắc miêu chủ', 'Đề giao bug', 'Đưa ra bug lúc lại có nguyên mã xuất hiện', '2020-01-02 20:37:39 [done]', '431');
INSERT INTO `bugcollect` VALUES ('21', 'Minh vũ', 'Đả quái kinh nghiệm hữu vấn đề, thuận tiện đề cá kiến nghị', 'Mỗi lớn hơn một cấp liền nhiều thập điểm kinh nghiệm, nhỏ hơn nhân vật cấp 5 liền không có kinh nghiệm, kinh nghiệm gia tăng hạn mức cao nhất vi 100', '2020-01-02 18:16:43 [done]', '424');
INSERT INTO `bugcollect` VALUES ('23', 'Hắc miêu chủ', 'Liêu thiên không bạch', 'Nói chuyện phiếm sẽ xuất hiện trống không', '2020-01-02 20:36:20 [done]', '431');

-- ----------------------------
-- Table structure for club
-- ----------------------------
DROP TABLE IF EXISTS `club`;
CREATE TABLE `club` (
  `clubname` varchar(255) NOT NULL,
  `clubinfo` varchar(255) NOT NULL,
  `clublv` varchar(255) NOT NULL,
  `clubid` int(11) NOT NULL AUTO_INCREMENT,
  `clubno1` int(11) NOT NULL,
  `clubexp` int(11) NOT NULL,
  `clubyxb` int(11) NOT NULL,
  `clubczb` int(11) NOT NULL,
  PRIMARY KEY (`clubid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of club
-- ----------------------------
INSERT INTO `club` VALUES ('Phong Vân', 'Phong Vân', '1', '1', '423', '0', '0', '0');
INSERT INTO `club` VALUES ('Khoái hoạt thành', 'Khoái hoạt thành', '1', '3', '422', '0', '0', '0');
INSERT INTO `club` VALUES ('Minh Phượng', 'Minh Phượng', '1', '4', '424', '0', '0', '0');
INSERT INTO `club` VALUES ('Đỉnh Kout', 'Zô ae', '1', '5', '501', '0', '0', '0');
INSERT INTO `club` VALUES ('Phá Thiên', 'Ahihi', '1', '6', '505', '0', '0', '0');
INSERT INTO `club` VALUES ('CuồngTông', 'PhongTửCuồngTông', '1', '7', '516', '0', '0', '0');
INSERT INTO `club` VALUES ('Sát Thần', 'Đỉnh', '1', '8', '531', '0', '0', '0');
INSERT INTO `club` VALUES ('Mê Dú', 'Ai mê gái thì vô', '1', '9', '480', '0', '0', '0');

-- ----------------------------
-- Table structure for clubplayer
-- ----------------------------
DROP TABLE IF EXISTS `clubplayer`;
CREATE TABLE `clubplayer` (
  `clubid` int(11) NOT NULL,
  `sid` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  `uclv` int(11) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clubplayer
-- ----------------------------
INSERT INTO `clubplayer` VALUES ('1', '0268fe396bc44c608aa9a18d6a0cb549', '423', '1');
INSERT INTO `clubplayer` VALUES ('3', '3c9d1d6c8f225e9e4139cccd830fdd00', '422', '1');
INSERT INTO `clubplayer` VALUES ('4', 'f76c11b6601d3a6ce505c616b64ed478', '424', '1');
INSERT INTO `clubplayer` VALUES ('5', '7d1526a0dd4803a1fda914bcebd93b47', '501', '1');
INSERT INTO `clubplayer` VALUES ('6', '5342074c8ce889f9ce11bcd4f254355f', '505', '1');
INSERT INTO `clubplayer` VALUES ('7', '6d269e625ac8a8e57a6f38d43ebbd3c6', '516', '1');
INSERT INTO `clubplayer` VALUES ('8', '132a2ae60d254a56c7264893f03a6a25', '531', '1');
INSERT INTO `clubplayer` VALUES ('9', 'df1905b2799580cd3861d79686bacbad', '480', '1');

-- ----------------------------
-- Table structure for daoju
-- ----------------------------
DROP TABLE IF EXISTS `daoju`;
CREATE TABLE `daoju` (
  `djname` varchar(255) NOT NULL,
  `djzl` varchar(255) NOT NULL,
  `djinfo` varchar(255) NOT NULL,
  `djid` int(11) NOT NULL AUTO_INCREMENT,
  `djyxb` int(11) NOT NULL,
  PRIMARY KEY (`djid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daoju
-- ----------------------------
INSERT INTO `daoju` VALUES ('Cường hóa thạch', '2', 'Cường hóa trang bị dùng đạo cụ', '1', '10');
INSERT INTO `daoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '', 'Hối đoái phù lục dùng', '6', '1');
INSERT INTO `daoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '', 'Hối đoái phù lục', '7', '1');
INSERT INTO `daoju` VALUES ('Ngạnh sí phong mật', '', 'Cứng rắn cánh phong mật ong', '8', '1');
INSERT INTO `daoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '', 'Phù lục Tàn Hiệt - sơ cấp rất', '9', '1');
INSERT INTO `daoju` VALUES ('Phù lục tàn hiệt-trung cấp linh', '', 'Phù lục Tàn Hiệt - trung cấp linh', '10', '5');
INSERT INTO `daoju` VALUES ('Sơ cấp ma linh', '', 'Sơ cấp Ma Linh', '11', '10');
INSERT INTO `daoju` VALUES ('[thần khí] yêu vương kiếm toái phiến', '', '[Thần khí] Yêu Vương kiếm mảnh vỡ', '12', '100');

-- ----------------------------
-- Table structure for duihuan
-- ----------------------------
DROP TABLE IF EXISTS `duihuan`;
CREATE TABLE `duihuan` (
  `dhm` varchar(255) NOT NULL,
  `dhzb` varchar(255) DEFAULT NULL,
  `dhdj` varchar(255) DEFAULT NULL,
  `dhyp` varchar(255) DEFAULT NULL,
  `dhyxb` int(11) NOT NULL,
  `dhczb` int(11) NOT NULL,
  `dhname` varchar(255) DEFAULT NULL,
  `dhexp` int(11) NOT NULL,
  `dhid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`dhid`,`dhm`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of duihuan
-- ----------------------------
INSERT INTO `duihuan` VALUES ('DA71AAF69D931648', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan` VALUES ('49852B2FA355EA54', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan` VALUES ('C49212A00B3B11AB', '', '1|50', '', '0', '0', '20', '0', '10');
INSERT INTO `duihuan` VALUES ('26E3757F842DEABA', '', '8|10,12|20', '', '0', '0', '30', '0', '13');
INSERT INTO `duihuan` VALUES ('5FBC09F7745B3174', '', '8|10,12|20', '', '0', '0', '30', '0', '19');
INSERT INTO `duihuan` VALUES ('1B958DC758D1570C', '', '1|50', '', '0', '0', '20', '0', '7');
INSERT INTO `duihuan` VALUES ('0D959B010FF1EF9D', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan` VALUES ('05EDE59AA14DD17A', '23,24,25,26,27,28,29', '', '', '0', '0', '12', '0', '3');
INSERT INTO `duihuan` VALUES ('BBAABF0C1E46ED70', '', '8|10,12|20', '', '0', '0', '30', '0', '17');
INSERT INTO `duihuan` VALUES ('EC13CD0E5601D140', '23,24,25,26,27,28,29', '', '', '0', '0', '12', '0', '6');
INSERT INTO `duihuan` VALUES ('98F01CDB439A05EF', '', '1|50', '', '0', '0', '20', '0', '9');
INSERT INTO `duihuan` VALUES ('E3E4ED0CD757A3CF', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan` VALUES ('870C85455682BC80', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan` VALUES ('870C85455682BC82', '33', '1|10000', '9|1000', '10000', '10000', 'VIP code', '0', '1');
INSERT INTO `duihuan` VALUES ('EC13CD0E5601D142', '23,24,25,26,27,28,29', '1|10000', '9|1000', '10000', '10000', 'VIP code', '0', '6');

-- ----------------------------
-- Table structure for duihuan_copy
-- ----------------------------
DROP TABLE IF EXISTS `duihuan_copy`;
CREATE TABLE `duihuan_copy` (
  `dhm` varchar(255) NOT NULL,
  `dhzb` varchar(255) DEFAULT NULL,
  `dhdj` varchar(255) DEFAULT NULL,
  `dhyp` varchar(255) DEFAULT NULL,
  `dhyxb` int(11) NOT NULL,
  `dhczb` int(11) NOT NULL,
  `dhname` varchar(255) DEFAULT NULL,
  `dhexp` int(11) NOT NULL,
  `dhid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`dhid`,`dhm`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of duihuan_copy
-- ----------------------------
INSERT INTO `duihuan_copy` VALUES ('DA71AAF69D931648', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan_copy` VALUES ('49852B2FA355EA54', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan_copy` VALUES ('C49212A00B3B11AB', '', '1|50', '', '0', '0', '20', '0', '10');
INSERT INTO `duihuan_copy` VALUES ('26E3757F842DEABA', '', '8|10,12|20', '', '0', '0', '30', '0', '13');
INSERT INTO `duihuan_copy` VALUES ('5FBC09F7745B3174', '', '8|10,12|20', '', '0', '0', '30', '0', '19');
INSERT INTO `duihuan_copy` VALUES ('1B958DC758D1570C', '', '1|50', '', '0', '0', '20', '0', '7');
INSERT INTO `duihuan_copy` VALUES ('0D959B010FF1EF9D', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan_copy` VALUES ('240C93CAEA5F1FA9', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan_copy` VALUES ('05EDE59AA14DD17A', '23,24,25,26,27,28,29', '', '', '0', '0', '12', '0', '3');
INSERT INTO `duihuan_copy` VALUES ('BBAABF0C1E46ED70', '', '8|10,12|20', '', '0', '0', '30', '0', '17');
INSERT INTO `duihuan_copy` VALUES ('EC13CD0E5601D140', '23,24,25,26,27,28,29', '', '', '0', '0', '12', '0', '6');
INSERT INTO `duihuan_copy` VALUES ('98F01CDB439A05EF', '', '1|50', '', '0', '0', '20', '0', '9');
INSERT INTO `duihuan_copy` VALUES ('E3E4ED0CD757A3CF', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan_copy` VALUES ('870C85455682BC80', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');

-- ----------------------------
-- Table structure for exp
-- ----------------------------
DROP TABLE IF EXISTS `exp`;
CREATE TABLE `exp` (
  `ulv` text NOT NULL,
  `uexp` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of exp
-- ----------------------------

-- ----------------------------
-- Table structure for fangshi_dj
-- ----------------------------
DROP TABLE IF EXISTS `fangshi_dj`;
CREATE TABLE `fangshi_dj` (
  `djid` int(11) NOT NULL,
  `djcount` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `payid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `djname` varchar(255) NOT NULL,
  `djinfo` varchar(255) NOT NULL,
  PRIMARY KEY (`payid`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fangshi_dj
-- ----------------------------
INSERT INTO `fangshi_dj` VALUES ('6', '14', '531', '2250', '33', 'Phù lục tàn hiệt-sơ cấp linh', 'Hối đoái phù lục dùng');
INSERT INTO `fangshi_dj` VALUES ('8', '3', '722', '2000', '76', 'Ngạnh sí phong mật', 'Cứng rắn cánh phong mật ong');
INSERT INTO `fangshi_dj` VALUES ('1', '53', '505', '2000', '82', 'Cường hóa thạch', 'Cường hóa trang bị dùng đạo cụ');
INSERT INTO `fangshi_dj` VALUES ('6', '1', '726', '1000', '83', 'Phù lục tàn hiệt-sơ cấp linh', 'Hối đoái phù lục dùng');

-- ----------------------------
-- Table structure for fangshi_zb
-- ----------------------------
DROP TABLE IF EXISTS `fangshi_zb`;
CREATE TABLE `fangshi_zb` (
  `zbnowid` int(11) NOT NULL,
  `zbname` varchar(255) NOT NULL,
  `qianghua` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `payid` int(11) NOT NULL AUTO_INCREMENT,
  `zbinfo` varchar(255) NOT NULL,
  `zbgj` int(11) NOT NULL,
  `zbfy` int(11) NOT NULL,
  `zbbj` int(11) NOT NULL,
  `zbxx` int(11) NOT NULL,
  `zbid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `zbhp` int(11) NOT NULL,
  `zblv` int(11) NOT NULL,
  UNIQUE KEY `payid` (`payid`),
  UNIQUE KEY `zbnowid` (`zbnowid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fangshi_zb
-- ----------------------------
INSERT INTO `fangshi_zb` VALUES ('76533', 'Phổ thông man giáp', '0', '5000', '1', 'Phổ thông man giáp', '0', '9', '2', '0', '35', '479', '913220000', '62', '0');

-- ----------------------------
-- Table structure for fb
-- ----------------------------
DROP TABLE IF EXISTS `fb`;
CREATE TABLE `fb` (
  `fbname` varchar(255) NOT NULL,
  `fbid` int(11) NOT NULL,
  `fbinfo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fbid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of fb
-- ----------------------------
INSERT INTO `fb` VALUES ('Trắc thí phó bản', '0', 'Trắc thí dụng đích phó bản');

-- ----------------------------
-- Table structure for fbmid
-- ----------------------------
DROP TABLE IF EXISTS `fbmid`;
CREATE TABLE `fbmid` (
  `fmname` varchar(255) NOT NULL,
  `fmid` int(11) NOT NULL,
  `fminfo` varchar(255) NOT NULL,
  `fmnpc` varchar(255) NOT NULL,
  `fmgw` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of fbmid
-- ----------------------------

-- ----------------------------
-- Table structure for game1
-- ----------------------------
DROP TABLE IF EXISTS `game1`;
CREATE TABLE `game1` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` text CHARACTER SET utf8 NOT NULL,
  `token` text CHARACTER SET utf8 NOT NULL,
  `uname` text CHARACTER SET utf8 NOT NULL,
  `ulv` int(10) unsigned NOT NULL DEFAULT '1',
  `uyxb` int(11) NOT NULL DEFAULT '10000',
  `uczb` int(11) NOT NULL DEFAULT '5000',
  `uexp` int(11) NOT NULL DEFAULT '0',
  `vip` int(11) NOT NULL DEFAULT '0',
  `uhp` int(11) NOT NULL DEFAULT '35',
  `umaxhp` int(11) NOT NULL DEFAULT '35',
  `ugj` int(11) NOT NULL DEFAULT '12',
  `ufy` int(11) NOT NULL DEFAULT '5',
  `usex` int(11) NOT NULL DEFAULT '1',
  `endtime` datetime NOT NULL,
  `nowmid` int(11) NOT NULL DEFAULT '225',
  `uwx` int(11) NOT NULL DEFAULT '0',
  `nowguaiwu` int(11) NOT NULL,
  `tool1` int(11) NOT NULL,
  `tool2` int(11) NOT NULL,
  `tool3` int(11) NOT NULL,
  `tool4` int(11) NOT NULL,
  `tool5` int(11) NOT NULL,
  `tool6` int(11) NOT NULL,
  `ubj` int(11) NOT NULL DEFAULT '0',
  `uxx` int(11) NOT NULL DEFAULT '0',
  `sfzx` int(11) NOT NULL DEFAULT '0',
  `qandaotime` datetime NOT NULL,
  `xiuliantime` datetime NOT NULL,
  `sfxl` int(11) NOT NULL DEFAULT '0',
  `yp1` int(11) NOT NULL,
  `yp2` int(11) NOT NULL,
  `yp3` int(11) NOT NULL,
  `cw` int(11) NOT NULL,
  `jn1` int(11) NOT NULL,
  `jn2` int(11) NOT NULL,
  `jn3` int(11) NOT NULL,
  `ispvp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=729 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of game1
-- ----------------------------
INSERT INTO `game1` VALUES ('422', '3c9d1d6c8f225e9e4139cccd830fdd00', 'e8f07fd9dd9747eb7061440ea1f95577', 'Đạo trường', '8', '797', '40', '79505', '0', '303', '257', '40', '31', '1', '2020-01-05 11:33:29', '225', '14', '0', '75683', '75709', '75715', '0', '0', '75717', '0', '0', '0', '2021-12-12 00:00:00', '2020-01-03 00:26:19', '1', '0', '0', '0', '3587', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('423', '0268fe396bc44c608aa9a18d6a0cb549', '634a3ef9c704b392f57961fe7f5b8dea', 'Đạo trường 1', '1', '2059', '100', '0', '0', '35', '35', '12', '5', '1', '2020-01-02 10:26:18', '273', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('424', 'f76c11b6601d3a6ce505c616b64ed478', '044ca22581d263964fd0158282fadb42', 'Minh vũ', '11', '641', '48', '94908', '0', '247', '362', '55', '49', '2', '2021-12-09 10:37:36', '243', '20', '0', '75682', '75678', '75708', '75718', '75713', '75719', '0', '0', '0', '2021-12-12 00:00:00', '2020-01-02 17:43:00', '1', '6', '7', '0', '3590', '4', '5', '0', '0');
INSERT INTO `game1` VALUES ('426', '0ed4ce0a982475dad32cea331e8e50d7', '6b95038f4e35e4c204cd63c4291f47dc', 'Tu la', '3', '2438', '100', '543', '0', '32', '97', '20', '13', '1', '2020-01-02 17:55:11', '231', '4', '0', '75672', '0', '75669', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2020-01-02 17:54:14', '0', '6', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('427', '9f98bca6ec1fa9e5b63f70012148b511', 'c911094e95590dda0b8a0813dca6f27f', 'Vô địch', '1', '1880', '0', '159', '0', '35', '35', '12', '5', '1', '2020-01-04 14:38:34', '231', '0', '0', '75674', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2020-01-02 18:00:23', '1', '0', '0', '0', '3589', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('428', '4cd1cb0fe7fde3575154e1948a8062bc', 'a3f9ecbb5e8f608ebbf0416a51004bc7', 'Đề mễ', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2020-01-02 18:02:23', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('429', 'bb1ffa393e016ec1e03fb5956a33dbb5', 'b9066cad96a2d83cc94596bbb09e763c', 'Mạc khinh cuồng', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2020-01-02 18:41:14', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('430', 'bd2c1545c6284ceb5cd83c9cbe1f8ec7', '0bcbf80f605a7a4b32629e5080292a39', 'Lạp lạp lạp', '1', '2002', '100', '16', '0', '30', '35', '12', '5', '1', '2020-01-02 19:43:01', '228', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('431', '3bfa14243cba16bb92e090b54cc5d544', '5bcf6db33b57444bec34f05cf5fab6e8', 'Hắc miêu chủ', '5', '2405', '50', '96', '0', '194', '157', '27', '19', '1', '2020-01-03 08:25:57', '231', '8', '0', '75659', '0', '75711', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2020-01-02 20:44:06', '1', '0', '0', '0', '3592', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('432', 'bdf741647eee48085f21de90ffcd99ba', 'a5318beda844395277cc8ca528f9cd16', 'Tiểu diễm hạ', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2020-01-02 20:44:26', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('434', 'e14b6e0d27bea46402a112c75c170887', 'db7d71820512cabea82d964fb062e143', 'Thái trường', '5', '3016', '50', '583', '0', '175', '161', '27', '19', '1', '2020-01-03 06:33:11', '261', '8', '0', '75750', '0', '75747', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2020-01-03 00:32:54', '1', '0', '0', '0', '3591', '4', '0', '0', '0');
INSERT INTO `game1` VALUES ('435', '4f51a51d5a72504387e6fd56da3464fe', 'd9ffd17ec312dd7d906d3d0bd09e9c33', 'Đại mã lý', '1', '2001', '100', '7', '0', '30', '35', '12', '5', '1', '2020-01-03 12:45:59', '228', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('436', 'f5c963924b0d34b2aca6761cdb32bbf3', '567e3d19771392bddf87d647b1c79370', 'Nhĩ đại gia', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '2', '2020-01-03 14:41:05', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('437', '4cfb676f793c954980bab3c8ad2e2a5a', 'abec8758f4bb1bf557b0189d4e0ab5c6', 'Đại mộng tưởng gia', '1', '2001', '100', '9', '0', '30', '35', '12', '5', '1', '2020-01-05 11:19:22', '229', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('438', 'b7f5e984a6a22f3ef2b4072f2614f43e', 'dc241bc636ad94c055fc547136b90dab', 'Tiểu cửu lâu', '2', '2121', '50', '3', '0', '41', '65', '15', '8', '1', '2021-01-29 16:55:49', '228', '2', '0', '0', '0', '75753', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('439', 'd3cc397bf1caabbb26234092c917aa46', '6f0a298234aa18874f0a855454ef359f', 'Tiểu cửu lâu trắc', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-01-29 17:01:09', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('440', 'f0be893286b66272230904a0a7d33168', '6c6d4c14f98475ec90384718cdfa00a7', 'KillVn', '25', '8550418', '5000000', '24093', '0', '1561', '873', '161', '128', '2', '2022-11-24 22:05:02', '261', '48', '0', '77592', '77593', '77594', '77595', '77596', '77597', '0', '0', '1', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '9', '6', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('441', 'f7c38ddb495be49224c8d819f34654ec', '36451f0c0f91f9fb44becff88f3a1b9a', 'KillVnn', '2', '9910', '5000', '88706', '0', '41', '65', '15', '8', '1', '2021-12-19 17:13:55', '228', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('442', '7aa100d4e1f9756c2c918199f7c6f8cd', '7e0c31054e636d9f44914eabe59580d5', 'ZzpgzZ', '2', '10012', '5000', '326', '0', '5', '65', '15', '8', '1', '2021-12-09 23:05:36', '225', '2', '0', '75778', '0', '75780', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('443', '69c80660d27b6ae392cfcfaff9377abd', '8a347812344c5e2edda74f7e688fb998', 'Namhsd', '1', '10000', '5000', '39', '0', '31', '35', '12', '5', '1', '2021-12-09 22:57:23', '228', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('444', '13a3d5a0563e16b28d4067a6e447b0d4', '61b45c19c244b464869eb54b5e1accfa', 'Dungtc', '1', '10000', '5000', '0', '0', '35', '35', '12', '5', '1', '2021-12-09 22:58:22', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('445', 'c81ee2c17431d1201cf989ffec82cafb', 'a58b58a3acd38e9e2a9aa6b668b05b20', 'Ngọcnữ', '1', '10000', '5000', '0', '0', '35', '35', '12', '5', '2', '2021-12-09 22:57:32', '226', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('446', 'fcbaafd29379e73cc90f1ef9045914ce', '007fcb21932e4d74d73e10e20bf3fc8d', 'Mavisss', '1', '10000', '5000', '0', '0', '35', '35', '12', '5', '2', '2021-12-09 22:57:49', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('447', '79c81b5eeefef4266fd23277190b4d04', 'e3f151b7c33c7995eb70bdcb4254b887', 'AnhBii', '1', '10000', '5000', '0', '0', '35', '35', '12', '5', '2', '2021-12-09 23:02:40', '270', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '3596', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('448', '30573415781e469779fbad52abd671c0', '5ece7560d82ac047a7f689f0106e690b', 'Thiên', '1', '10000', '5000', '0', '0', '35', '35', '12', '5', '1', '2021-12-09 22:58:51', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('449', 'fc702e68dd02778b0063ab30b8fcbe39', '0a68e1cec319279b37771177903153f5', 'NPG177', '1', '10000', '5000', '0', '0', '35', '35', '12', '5', '1', '2021-12-09 23:00:14', '226', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('450', '0d35be128035927ccc312fd5d99eb55c', '4a8860c9c12b6675288508fc2a2dcf63', 'Kietvn', '19', '1584', '3991', '13895', '0', '670', '635', '99', '91', '2', '2021-12-10 00:29:27', '256', '36', '0', '75950', '75965', '75893', '75913', '75875', '75932', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-09 23:31:01', '1', '9', '9', '0', '3622', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('451', '1cf12e3fbf0c058141f099717d26761c', '94669672b0110c90e6595fe351650e3c', 'Riosiro', '1', '10000', '5000', '7', '0', '30', '35', '12', '5', '1', '2021-12-09 23:01:02', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('452', '3e569f290d32abc1479d2206971a8df5', '4961639285e1bf5e51d502c1c77312f9', 'Sasasa', '1', '10000', '5000', '0', '0', '35', '35', '12', '5', '1', '2021-12-09 23:01:28', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('453', '876222b500a060ca6f99934a9a5a46bc', 'f5f8cb2b6c6bf5f801017befd297776b', 'VogueVT', '1', '9202', '4797', '0', '0', '100', '35', '12', '5', '1', '2021-12-09 23:12:03', '260', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-09 23:11:34', '0', '0', '0', '0', '3600', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('454', '1fa6b5e727cc597750bfe651fc651853', '0fc3fd28c2dce24aa6c748dc25c8d683', 'MaNoCan', '1', '2000', '100', '0', '0', '100', '35', '12', '5', '1', '2021-12-09 23:09:25', '267', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('455', '76099934096490c1c7bc2959af26588c', 'e10f6a6719c52c50d7a0a815e461e940', 'Lalala', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-09 23:07:03', '260', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('456', '016548348f966b71f67044f5dc225918', '3744e82f39b121b784591755941e1213', 'LoganLe', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-09 23:07:12', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('457', 'e61fc72bbb8de0b15720aca8e2b5bd01', '6b279228ae278cbeb28bbab1803c9349', 'Phuchug', '1', '1968', '100', '0', '0', '-9', '35', '12', '5', '1', '2021-12-09 23:12:00', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-09 23:08:15', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('458', 'f63a1be1635c472af717f4a96918a25b', 'edf59254be53da8f68768ee910ef9289', 'SunNguy', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-09 23:20:18', '226', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('459', 'efc744bfecbcc5b1d2443ff739987af9', 'a68dd56fecedebbde32b3c1583ab4c36', 'Exodia', '11', '240', '100', '2136', '0', '187', '369', '54', '48', '1', '2021-12-10 13:40:18', '236', '20', '0', '76054', '76070', '76071', '76079', '76009', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '6', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('460', 'f15a4aaba08473a5afd6a6521c76d9cf', '86edf7802a237ff63335cf0c7c119193', 'Kakara', '3', '2281', '50', '139', '0', '-22', '100', '20', '13', '1', '2021-12-09 23:25:48', '225', '4', '0', '75793', '0', '75792', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '6', '6', '6', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('461', '04b484f689395b48187d8ccf3c6f3a0e', '89bc3e964f2264aeac5c3efb15ae4514', 'heobii', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-09 23:11:39', '226', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('462', '7153c651e46f98c7061e956c023b4fca', '7f05998c7de72d6efa757b9d5caae429', 'Siv3el', '4', '2460', '95', '130', '0', '144', '131', '24', '16', '1', '2021-12-10 11:33:06', '230', '6', '0', '75805', '0', '75785', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 11:31:22', '1', '6', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('463', '547f7c3b2c069650f414a69ef4402498', '0cc588ba80df372dfdbfe2e9e9b84ce0', 'Valenti', '4', '2465', '100', '190', '0', '134', '130', '23', '16', '1', '2021-12-10 09:10:20', '230', '6', '0', '76059', '0', '76153', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('464', '23d7d290e343ed317240f9932edb5b73', '40b56bee806b9fabc946ce9c2f0d5df8', 'kingzzz', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-09 23:13:25', '229', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('465', '0a43c04a05623659b91b7dba73fef8e4', 'f17f7ed4dd7db73b3e71c1a3c52ad39b', 'Candytr', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '2', '2021-12-09 23:15:39', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('466', '0093a05e4ba35b6be322d2a7e4990bad', 'a9c565d2605a8e967c2793ffbf7be5c1', 'Ok bấy ', '1', '2000', '0', '0', '0', '35', '35', '12', '5', '1', '2021-12-09 23:21:18', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '3601', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('467', 'aab2fcc7a53ed9eae97b80810c9acd73', '6027fcb120e1d604f68c5279d4b48cc1', 'asdasda', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-09 23:21:45', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('468', 'c1b448051cf88f6dcf535ced41e53127', 'c2bf9e1b5234aabb464df8ca9c3e395a', 'xxxxxx', '5', '2616', '100', '1210', '0', '105', '161', '26', '19', '1', '2021-12-09 23:57:18', '232', '8', '0', '75872', '0', '75857', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '6', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('469', 'e3ce66181b307263d31593be743bdd64', '75e99153a60f6d322535a1a6348c18ce', 'Pharaon', '10', '2241', '96', '1262', '0', '360', '340', '51', '44', '1', '2021-12-10 00:46:52', '242', '18', '0', '75988', '75897', '75901', '0', '75903', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 00:10:55', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('470', '0dee7d958d6808a52df8c485ce7657af', 'a44073272cd26dd0c55b47bcedbfc6b9', 'LOKIUG4', '14', '49', '48', '66', '0', '110', '463', '73', '67', '1', '2021-12-10 15:17:37', '252', '26', '0', '76047', '76067', '75939', '76042', '76011', '76048', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-09 23:45:43', '1', '6', '7', '7', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('471', '5e6705f09c12e9b4b387cfec0f09e4a2', 'fd1a54eacd356c6a4dcc4fff10078d49', 'Queenn', '1', '1985', '100', '0', '0', '35', '35', '12', '5', '2', '2021-12-19 23:48:01', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('472', '314b6439ec01d71838961c71c7d874c2', '3609a8e0a7d4bf76fab1140f60826aa7', 'KeDocTai', '1', '2006', '100', '50', '0', '30', '35', '12', '5', '1', '2021-12-10 18:24:12', '228', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('473', '4f65447fd6572e6fbc88ec9b3ad87d20', 'a5e222a1831d13e7d88aae82e248fe28', 'Yanggg', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '2', '2021-12-09 23:31:41', '226', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('474', 'ccc7f7c378c0112078ac697276793ea4', '8fa19ba1500d94bef04eb65525386423', 'pooooop', '1', '2006', '100', '49', '0', '31', '35', '12', '5', '1', '2021-12-09 23:47:35', '231', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('475', 'e03886cbdd41f2973d1e16d83a1250a2', '69c1211d1730f1594235b71fe54af673', 'Độc Cô ', '5', '2923', '100', '878', '0', '201', '161', '26', '19', '1', '2021-12-11 17:13:38', '225', '8', '0', '75869', '0', '75896', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '6', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('476', 'deef530148bcb297a74d0509125b844f', 'a95515dfbcc9d0fbd4366a031295628c', 'TQTNagi', '7', '1716', '99', '2345', '0', '103', '228', '37', '29', '1', '2021-12-10 08:22:12', '235', '12', '0', '75898', '0', '75951', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-09 23:38:41', '1', '6', '0', '0', '0', '4', '0', '0', '0');
INSERT INTO `game1` VALUES ('477', 'e83893c48ddfe5e084b2bdea428aa07f', '8d18ab1ddb4833daa7cd457e7f23d90f', 'HENDDD', '8', '1954', '94', '455', '0', '348', '257', '39', '32', '1', '2021-12-10 21:50:06', '236', '14', '0', '75866', '75933', '75926', '75946', '75944', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 21:49:00', '1', '6', '0', '0', '0', '4', '4', '0', '0');
INSERT INTO `game1` VALUES ('478', '483047f1250b4db899cb9a4770efe1e2', '8210cf73089b0ec35b3236024f9e56da', 'Hunter', '6', '1109', '0', '1877', '0', '302', '197', '33', '26', '1', '2021-12-10 00:55:24', '239', '10', '0', '75973', '75998', '76018', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 00:40:19', '1', '0', '0', '0', '3628', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('479', '91322e4d4529a1c0db2580a4d5e07ff1', 'dfdc5bfbd11402aef4b6473b6bc89061', 'Andyism', '18', '11128', '79', '14555', '0', '117', '606', '104', '95', '1', '2021-12-11 00:23:17', '225', '34', '0', '75916', '76526', '76793', '76519', '76552', '76568', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 17:02:06', '1', '9', '7', '6', '0', '4', '6', '5', '0');
INSERT INTO `game1` VALUES ('480', 'df1905b2799580cd3861d79686bacbad', '075711e8f3d11562f336e48c6402d3e5', 'Gáo Dừa', '25', '84222', '100', '6258', '0', '715', '879', '167', '145', '2', '2021-12-10 21:55:43', '255', '48', '0', '76541', '76730', '76749', '76655', '0', '76713', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 11:02:15', '1', '6', '6', '9', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('481', 'c0787a8c7d117e9a540222e8c1b744af', '610124431605be94012355faf0b9b65c', 'ĐếTôn', '7', '1092', '0', '759', '0', '330', '224', '36', '30', '1', '2021-12-10 01:07:03', '270', '12', '0', '75981', '75997', '76012', '76032', '76028', '76035', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 01:04:14', '1', '0', '0', '0', '3626', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('482', 'af42b2cae4da9755645b5c35c66d86cc', '6057c59b88a77d65b1c429b6a7e66178', 'NikeSho', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 00:03:35', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('483', '03dfdc311544c846194a3992ccf6d53c', 'b90c810ceb381fe64860ec96d6dfe6dc', 'Coca170', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '2', '2021-12-10 00:05:34', '226', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('484', '36774f5c423b7a8bb7858bb4642e128d', '8c119e441febac8a6daea1320eef0302', 'Henkyp', '1', '2019', '100', '160', '0', '31', '35', '12', '5', '2', '2021-12-10 00:20:10', '228', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('485', '80eaf5ea9d36f0a8c87d3eba1bd05055', '9e7173e1db3567073b20d0e903503a36', 'ngochun', '2', '2111', '100', '754', '0', '75', '65', '15', '8', '1', '2021-12-10 00:59:25', '238', '2', '0', '76033', '0', '75982', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 00:40:14', '1', '6', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('486', '7837bb48be44041b2ee92d061d08653e', '09df3dac49005748d2cb5a78c2a6e1cc', 'Thần', '8', '2339', '100', '976', '0', '303', '260', '39', '32', '1', '2021-12-10 14:08:14', '236', '14', '0', '76040', '76300', '76319', '0', '76312', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 00:40:37', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('487', '11ee841a987d5674196d37fef51ed9a6', 'a10efe23abc8c53bbaf10c511b2a7384', 'SiMaCha', '5', '2823', '0', '1312', '0', '111', '161', '26', '19', '1', '2021-12-11 15:57:02', '249', '8', '0', '77518', '0', '76043', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-11 15:26:35', '1', '0', '0', '0', '3648', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('488', '1f014c041b1cb42cb1a75f9449e99998', 'eed78c872ad65335e21b79f8b612de08', 'Ngạo Ki', '10', '1852', '100', '2879', '0', '286', '335', '53', '45', '1', '2021-12-11 02:10:25', '245', '18', '0', '77308', '77312', '77314', '77315', '77313', '77316', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '6', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('489', 'b647075c0aab822e3c4bb0a686fe297c', '051256ad0c3e0f16370d6a7274249d9e', 'Lý Bạch', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 01:41:19', '269', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('490', 'bd267f0b4e0b7f95c25dd9aae10964bf', 'f83792ba10ab38531474e765eaadefc1', 'Tiskka', '1', '2002', '100', '18', '0', '30', '35', '12', '5', '1', '2021-12-10 01:54:06', '270', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('491', 'bb5bd10a3bf01a4b2b96413f9d68022d', '62923be0a940a0b636d2439737210df7', 'ChimTuH', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 02:46:06', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('492', '3204b1df760fd73acf5332398961f416', 'fd9c0fae8000597df1ba5384267b1651', 'Shinsoo', '30', '10429', '20090', '13522', '0', '1331', '1136', '227', '199', '1', '2021-12-11 19:52:40', '267', '60', '0', '76143', '77034', '76660', '76780', '76104', '76492', '0', '0', '1', '2021-12-12 00:00:00', '2021-12-10 15:46:38', '0', '9', '9', '9', '0', '4', '7', '6', '0');
INSERT INTO `game1` VALUES ('493', '17101f9d4b65bad5d190afab2f99117b', '75ca42f4f76aaca7d6a40b82160cca61', 'Ngoctha', '1', '2002', '100', '15', '0', '30', '35', '12', '5', '1', '2021-12-10 14:49:15', '228', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('494', '754ae44f81dc019f17c06a41aa2ea715', '5f97e79517a4950fffdac042bf3b4ba7', 'Hianhem', '2', '2484', '100', '453', '0', '54', '65', '15', '8', '1', '2021-12-10 07:13:17', '232', '2', '0', '76120', '0', '76122', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('495', 'c00cf69101e98928d88eeb05bd11c73f', '7f8291cb43f3cd76dbd6042d827abd7d', 'Longkak', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 06:47:35', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('496', '1e7586429a7ab5434af644905d3a51aa', 'bff6ca1b5796bc29986e21c861ba2e75', 'ITkuda', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 07:05:23', '235', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('497', '2f7401bfb73ce9fa785134786079c414', '1d8b8ce8006090043e50fbc2ec15f172', 'Ngọc', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '2', '2021-12-10 07:19:57', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('498', 'f81a9f6872446b90972642a9b0d0a414', '216b0f40f3590b540cdf2c9f76915194', 'Yu Tang', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 07:58:12', '239', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('499', '987fa1ed57063997f01f22767178a600', '8b71df0369e895f97edfc6d309a62944', 'Ma Chủ', '11', '2041', '100', '6583', '0', '151', '371', '54', '47', '1', '2021-12-10 10:56:14', '242', '20', '0', '76189', '76206', '76223', '76254', '76234', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 09:08:06', '1', '6', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('500', '5cf73f12476e063f6cc35bae8304fa34', 'ab19dbb8c675fb9a1f99687bd2b619a3', 'huyvdnd', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 08:50:00', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('501', '7d1526a0dd4803a1fda914bcebd93b47', '6480c0922a0bcd166f5d69dee53744b2', 'Vipbozp', '15', '19', '0', '1441', '0', '185', '497', '88', '77', '1', '2021-12-11 09:53:22', '251', '28', '0', '76260', '77347', '76263', '76259', '76211', '77327', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '7', '6', '3645', '6', '0', '0', '0');
INSERT INTO `game1` VALUES ('502', 'f039e55562a77296188f2963ca97fae1', 'cb620eefb453c92b005680c2f4e544cb', 'Sagabus', '5', '2328', '0', '1139', '0', '168', '160', '26', '19', '1', '2021-12-11 19:25:49', '228', '8', '0', '76249', '0', '76227', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 10:09:03', '1', '0', '0', '0', '3630', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('503', 'f0ac44856637b747beb115331972de83', 'ee539060481c655bd94ecf54f5c4bd1a', 'Xbbdbb', '8', '1924', '100', '3127', '0', '390', '260', '40', '32', '1', '2021-12-10 16:13:24', '239', '14', '0', '76225', '76392', '76409', '0', '76414', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('504', '78d406e749821c6f055f787edde7fee2', 'd0baa35058c4ed7d80e9b4acc4ee72bf', 'TracyX', '3', '2488', '100', '500', '0', '110', '100', '20', '13', '1', '2021-12-10 09:53:46', '249', '4', '0', '76207', '0', '76204', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('505', '5342074c8ce889f9ce11bcd4f254355f', 'ace1e7077c589eecd2b7027d09b2fad2', 'Tử Mộc ', '21', '25916', '29', '19333', '0', '761', '740', '135', '123', '2', '2021-12-11 21:45:52', '256', '40', '0', '77015', '77017', '77073', '77157', '77338', '77301', '0', '0', '1', '2021-12-12 00:00:00', '2021-12-11 08:16:58', '1', '8', '7', '0', '3640', '6', '5', '0', '0');
INSERT INTO `game1` VALUES ('506', 'a995483a30393a2c0386c786200c4c84', '533ef88f439e4ac618313ce821e95b27', 'abcxyz', '2', '2036', '100', '81', '0', '65', '65', '15', '8', '1', '2021-12-10 09:58:33', '228', '2', '0', '76224', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('507', '4329dbd13dd3a0a9ec2340e6140691c3', '972d45090008afbdf9fc9510279f65cd', 'Nobless', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 09:54:34', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('508', '992f645ba70c1805cdefbc2514e110f9', 'ec0337ca3a0bef24986f76e509cc680d', 'Beckham', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 09:57:33', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('509', 'fcdd5d501dd7b299a36d97981bbd664f', 'e419b53db8cdcec3fd9335cf8a3a19f3', 'Sumooo', '2', '2139', '100', '47', '0', '75', '65', '15', '8', '1', '2021-12-10 10:08:49', '228', '2', '0', '76241', '0', '76242', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('510', '5934d4cfe76f9339c8ba2a88b162269c', '9794dd579ea45e5f4d1d0ddbf27035f2', 'anhliem', '1', '2001', '100', '9', '0', '30', '35', '12', '5', '1', '2021-12-10 10:16:33', '260', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('511', 'b64e1867d3c120030fd43cbdbc2658d4', '053d0396f57a8fbb5676c665b623b09a', 'Ginkgo', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 10:15:02', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('512', 'a2345b09a0bcee79abe0008551ae9c75', '35eae6f6344b2bc1dce9107107603f41', 'DongTa', '1', '2002', '100', '18', '0', '30', '35', '12', '5', '1', '2021-12-10 10:33:23', '228', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('513', '8b1de9697cead49e100658a9428e86ea', '8d4588d54154f4ef764ded948f4827f6', 'Lykuku', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 10:33:16', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('514', '46aff52038f560053282873df9cc93de', '75c81e12021b0b07b3ff9fa3d053c50b', 'Lâm Đoo', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 10:35:10', '260', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('515', '214bde30a6e2b81a2637555e947624c4', '1907d816b1d0f54e76a9e76de0e9dd60', 'pháp sư', '1', '1968', '0', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 10:59:12', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 10:58:37', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('516', '6d269e625ac8a8e57a6f38d43ebbd3c6', 'ce6b44afc7a1b256637a889ba577a7b3', 'PhongTử', '11', '27', '86', '726', '0', '280', '379', '53', '48', '1', '2021-12-11 10:53:54', '242', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-11 10:34:59', '1', '6', '0', '0', '0', '4', '5', '0', '0');
INSERT INTO `game1` VALUES ('517', '5b5df97f24dda63106a3cfdbec0f2f37', '635d61819aecd85907220862313e571a', 'KingSS', '10', '1779', '100', '1913', '0', '91', '332', '50', '45', '1', '2021-12-10 13:45:48', '246', '18', '0', '76546', '76497', '76447', '0', '76525', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 11:29:34', '1', '6', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('518', '65f69095d290c9579a2255210d058fb1', 'd8f5af5487b0f33c661b047c5287ea66', 'volks9x', '11', '1675', '100', '1312', '0', '184', '359', '56', '48', '1', '2021-12-10 18:59:00', '249', '20', '0', '76421', '76426', '76570', '76564', '76440', '76442', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '6', '6', '6', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('519', '00bec478348b21e8e9135bb08a6787cd', '825f2bfe74023e87edeebf541b78a9a4', 'Majone', '16', '2144', '87', '9160', '0', '158', '543', '83', '82', '1', '2021-12-11 12:08:05', '254', '30', '0', '77189', '77187', '77407', '77191', '77414', '77198', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-11 12:08:01', '1', '6', '7', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('520', '5be0b95fe4591bf4593f16cacfb9136c', '3db0ff4bd540e7e8023c4afdc1e02e0f', 'heo111', '11', '2143', '100', '604', '0', '169', '362', '53', '47', '2', '2021-12-10 19:49:24', '243', '20', '0', '76443', '76460', '76465', '76532', '76469', '76530', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 12:33:10', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('521', 'eae57174fc4d0114b0a244a0b4d46cd1', 'e10507161c836e6c9ba8e943fc1e450e', 'Tần Lin', '3', '2436', '0', '681', '0', '100', '101', '20', '13', '1', '2021-12-10 12:48:14', '230', '4', '0', '76430', '0', '76436', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 12:45:25', '1', '6', '0', '0', '3635', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('522', '37ad93404bf7336ec20002eae73983ee', '2af6c3528a8a339eabf50d97e387c177', 'Đình An', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '2', '2021-12-10 12:35:06', '226', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('523', 'a01bb3a16790c034b19c3bb873f5c824', '7ceee34cbf0bf461fb6554d1347fa39f', 'qungsv3', '1', '2000', '50', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 12:39:09', '271', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '3633', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('524', 'a6edc2472e88417ac151bf97c7231a23', 'cfdb8881195cbc9af9768c3282641b77', 'Khocoth', '5', '2892', '47', '147', '0', '98', '160', '26', '19', '1', '2021-12-10 13:37:14', '225', '8', '0', '76510', '0', '76527', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 13:27:14', '1', '0', '0', '0', '3636', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('525', '759a989b9a2edd62f3ad5c481e935040', 'ed63a0b06b5ee1f6c74b4bdb487de1ba', 'ShinDu', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 12:59:01', '249', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('526', 'f365c41cca1867794c0d56a0d2964f52', '732cc42ec2116fd7ccea6808351681af', 'Vô Ưu', '2', '2203', '100', '232', '0', '61', '65', '15', '8', '1', '2021-12-10 13:11:14', '228', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('527', 'c7fe80a512d34bc53240cf6127fc5be2', '5085bea0e82b52704d245041aa3f2000', 'Tiến', '1', '2001', '100', '9', '0', '-3', '35', '12', '5', '1', '2021-12-10 13:14:58', '228', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('528', 'b0937c2a2e0292043bf9afbc25cc43d7', '7a62e8a4442dd37f2012693526fe410b', 'ngocljn', '11', '895', '85', '2093', '0', '-23', '351', '55', '47', '2', '2021-12-11 18:15:32', '247', '20', '0', '76982', '76597', '76604', '76970', '0', '76607', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-11 18:14:00', '1', '6', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('529', 'cf2f747ba60ee6e02aeb6b750182d691', '42a48d548f757b6f0a0d5806cadaaa5d', 'yasuott', '2', '2003', '96', '150', '0', '75', '65', '15', '8', '1', '2021-12-11 19:37:37', '229', '2', '0', '76581', '0', '76575', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 13:59:31', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('530', 'a82a81044ec116f876d03885c2973ba6', 'f2c6f214927c54c70f0c9151e2c22bb5', 'mQuanGz', '26', '27972', '100', '14007', '0', '475', '933', '170', '169', '1', '2021-12-11 20:56:49', '263', '50', '0', '77208', '77219', '77140', '77148', '77138', '77202', '0', '0', '1', '2021-12-12 00:00:00', '2021-12-10 20:22:18', '1', '6', '7', '8', '0', '5', '4', '6', '0');
INSERT INTO `game1` VALUES ('531', '132a2ae60d254a56c7264893f03a6a25', 'ce1e19a9b313dc15e0c9b9ee95c7ba2a', 'Hải Sơn', '29', '2799', '0', '16381', '0', '1136', '1090', '196', '190', '1', '2021-12-11 18:44:54', '237', '56', '0', '77212', '77133', '77207', '77161', '77134', '77131', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 13:58:51', '1', '8', '8', '9', '3637', '5', '0', '0', '0');
INSERT INTO `game1` VALUES ('532', '024285ca73e87438c68cf82f4d2ee7ca', '549e40bbc60ae932276c34984da7cf7a', 'Phonghz', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 13:46:14', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('533', '67d33ee391a22e8e317f6a3b9bd43b9d', 'c9a4081250984e26e4e1a8ae16a9a2a6', 'Ahihihi', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 13:09:23', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('534', 'd70281320ec95b488021284e329cdd71', 'ef7bb847966de9435ac13a796f3e2249', 'Doraemo', '1', '7', '100', '57', '0', '30', '35', '12', '5', '1', '2021-12-10 19:44:01', '228', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('535', '9dc0bb8899c5497aa2dacab00c77fd5c', 'a5e0459171adbef59c9814ad0e74de25', 'Phucloc', '19', '1832', '31', '2133', '0', '693', '684', '110', '104', '1', '2021-12-11 16:17:14', '247', '36', '0', '77222', '77404', '76686', '77419', '76692', '76514', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 15:53:03', '0', '7', '6', '0', '3647', '5', '0', '0', '0');
INSERT INTO `game1` VALUES ('536', '5ee8523aac65e35244462f7c8b65aa4e', '4c37aad63c7119ac28886e9f15913ac3', 'xxxccc', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 14:19:10', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('537', '1ad63d508f70be6d8d83235471f1fc8b', '781829fd25440df91b1969a7610b69a8', 'Zaxx01', '2', '2131', '100', '1', '0', '41', '65', '15', '8', '1', '2021-12-10 14:31:29', '228', '2', '0', '0', '0', '76627', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('538', '2f1d8f88000b56e6b5c3007d36f2c1c8', '162c2720f1bb866ca95df1f0aea4f658', 'Nguyệt', '11', '110', '94', '3802', '0', '94', '364', '54', '49', '2', '2021-12-11 18:54:20', '247', '20', '0', '76763', '76732', '77542', '76738', '76753', '76751', '0', '0', '1', '2021-12-12 00:00:00', '2021-12-10 17:21:07', '0', '6', '7', '8', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('539', 'e6830fe7835906ba70e9a1a8aed1ceb3', '6fdb300060830a1f0ad35a07fd545c07', 'ngamy1', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:02:39', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('540', '66cf1a9ab2721d6c11dc4cb24249428a', 'dd10ca09f1a8606df88fd9c5edf5aa70', 'ngamy12', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:04:03', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('541', '2185f80f47a082048bd9db8c3525d9f7', '03a12b7231b7b89550dffddd560b8400', 'ngamy13', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:05:41', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('542', 'e238ea4bdb4a2a90dfcd4567e00945d3', '2aa7ca00a26127387248068a793bb928', 'google', '1', '1', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:14:14', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('543', 'd74a13192703b1cddd544c8b0ecd0bff', 'a453b974c9d9e9c75b0a7af0c329a677', 'google1', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:14:43', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('544', 'c247e85792e955f2d8ca0663a95ef39d', '7a91575a93c6680623c2554c4fc8fdde', 'google2', '1', '1', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:15:15', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('545', '83c1f495f13e5447fca661992ccee009', '5f402e51cc02ca2575ece7b77f7c06c3', 'google3', '1', '1', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:15:44', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('546', 'e4f422fe1b5cc251be6e7937bd177f99', '91f79a3bc691c112bbdbac377ee651c7', 'google4', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:17:31', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('547', '557b7f4de2be11fd91d173d236fea6b4', '5ded44f47a3c05b512d7e191606e5d2d', 'Thanh H', '8', '2777', '91', '1927', '0', '311', '255', '39', '32', '2', '2021-12-11 12:10:35', '235', '14', '0', '76915', '77020', '77025', '0', '77023', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-11 07:07:28', '1', '6', '0', '0', '0', '4', '4', '0', '0');
INSERT INTO `game1` VALUES ('548', '62e06d38c7d24d82f21eb56f228cf03c', 'dc6e97c6aff41167dc29516af5f8cd64', 'google5', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:18:08', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('549', '6993d6c9bbaa7e5b08a5093ca818b3da', '2f9f17abd9033f4f3f85f1babcec6317', 'google6', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:18:49', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('550', '2512c48fa5ad9252986d4170708adf43', 'ccba085a53383f19854b528e62b81109', 'google7', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:19:20', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('551', 'ba3ce5be6bb148766f7d32bed729cfef', 'bf3eda77f3d433c8077caec6b6115357', 'muanha', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:22:55', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('552', '46d5fc2815779f012fb904af9b765de0', 'f76b5cee1531211d3ed90cacb69f10c5', 'afset3', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:24:00', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('553', '200bf133981166e62a56d838617bcab1', '05ebaf45a480022346219feaa4d8e62d', 'uuufff', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:24:29', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('554', '37057f77a2ca4c7ef726f47004aa7eb6', '93453a627c0b98a04cb262172d805eed', 'fffddd', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:25:09', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('555', '06fbd149264dc74569f23b348101c0c4', '88d153831cd18d27c5b925ff72a7d9b9', 'rrrrr4', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:25:40', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('556', '83b5198f712e84da985fc479c9fc2c0e', '2ab5ec1c1a19535247ae287eccf2e510', 'asdas5', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:26:10', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('557', '85e633e596b131abb347dcf62a46e307', 'db70c472f40264c51a91cac84ff2de9a', 'cacas2', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:26:40', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('558', '83ad0022dd8994a98f4ddfda0c546082', 'ef0f0e47863821244d180d1c335c7494', 'Joychu', '1', '2008', '100', '66', '0', '31', '35', '12', '5', '1', '2021-12-10 15:55:40', '228', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('559', 'fe6503c5f26fc3559f10160ef331de88', 'cbe3e8d06cfe42a6f8f3abd44b4cb968', 'vip999', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:54:02', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('560', 'b9ed5f7f48d6002db99626ae8f022baa', '9481e177b2dbb6e294f59f1ee3a03737', 'acvaaa', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:57:24', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('561', '96c3c7f28f7ada4dce2c8f1dbdc419ef', '92d406231ac18b1107b687111fe06fbb', 'svnmmm', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 15:58:00', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('562', 'aecc6f9f63ececb58dcfe256ac7d6897', '48b173e4b8f926eadb9f3fc0f3342178', 'PumiHk', '5', '2610', '50', '1502', '0', '26', '161', '27', '19', '1', '2021-12-10 17:23:49', '233', '8', '0', '76821', '0', '76819', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '3639', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('563', '07c4aa8db44ac27c5047134da59caf04', 'f7a87e18a30168c87de9922706c466d9', 'McLaren', '3', '2065', '98', '454', '0', '53', '98', '21', '13', '1', '2021-12-10 20:15:01', '230', '4', '0', '76987', '0', '76849', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 20:13:42', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('564', '59c0c0ee89fc09541f4c7760cd40f2f0', 'd6c7e5e503969972783d548c4f809e57', 'CrocuS', '2', '91', '100', '222', '0', '65', '65', '15', '8', '1', '2021-12-10 18:02:13', '228', '2', '0', '76733', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('565', '6def45155adf21e7aad4a3e12759f7e6', '8157b19de057b1c78401e8390650fa22', 'Thiên N', '1', '1986', '100', '91', '0', '30', '35', '12', '5', '1', '2021-12-10 18:15:38', '225', '0', '0', '76858', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 18:08:30', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('566', '254884cc98a27262e70f650f6f2692bc', '924dae2305b40c6c9784d9ba562603fe', 'Hulkzz', '2', '216', '100', '344', '0', '63', '65', '15', '8', '1', '2021-12-10 18:07:39', '225', '2', '0', '76855', '76853', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('567', '5c090d260f71f001bea29f75fe1f293c', '24977cba61fd7ae1b6b4964471a362a0', '1911548', '1', '2000', '99', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 18:13:02', '226', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 18:07:19', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('568', 'efc23151bb317b15d8b8da7a9568727d', '99b0aec10ceaccdcb799d76d2d74b24f', 'Huyvn16', '9', '1467', '100', '1750', '0', '262', '302', '47', '41', '1', '2021-12-10 22:28:28', '225', '16', '0', '76896', '76907', '76881', '0', '76914', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 18:34:36', '1', '6', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('569', '328e720a8f53d40808701b2cc47641c9', '05dd58c709f23c297c8bfc9509bb2146', 'Hoàng', '3', '360', '100', '104', '0', '100', '100', '21', '13', '1', '2021-12-10 18:43:02', '225', '4', '0', '76854', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('570', 'ae5c1ace8df289cb52e1e6e6bba81084', '54b889e418983eadebd1c00a45e25fc0', 'Lokizz', '2', '90', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 18:48:06', '237', '2', '0', '76889', '76710', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('571', '0311e38b19de9766e8fae7729e420583', '32c03afedfa0488e0298b3e5da304436', 'Phiphi', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 18:56:08', '226', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('572', '97d54e32270c248846cd545730dff24c', '81bca4d7df44df4c6e0b13de85167d8d', 'haisonh', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 20:46:26', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('573', 'd2270581618374bd45714ee5704931b9', 'aa5c23fc32dd0108662a018282b2f545', 'Libi03', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 20:34:21', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('574', 'c39219e0f88619106fc81c6324b91549', 'd027ec792af0026c8e7046113ed08c0a', '1asssd', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 20:34:33', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('575', 'bf9939cbe76a46d23d3518233af2f5c4', '794459e4f870939f098a8edd0c98fc86', '1khggg', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 20:46:12', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('576', 'b640a2de9bf6e48433937295ee06bbcd', '213d178f8e99a7b3cf4e7bc167d7a17b', 'tu18061', '2', '0', '50', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 20:47:22', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('577', '834f2bbe62c7ff8b8588da6721123dfb', 'edb5bc00b04a3f2c0642ff5eea732b7b', 'tu18062', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 20:49:04', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('578', 'a3662eaf07dda1c197ceabba10c75e02', 'b3888e324fcd1c26b2cca86cbb98b738', 'masstra', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 19:26:01', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('579', '6748710cbb3b0d6453f6f90c020b2f2e', '1638d5e5fb8c0fc6d9f8b35f94fd9327', 'haison1', '2', '2250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 19:28:22', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('580', 'cad17f862127f53425dba7035d7e7c04', '894f115e27a29a825b5a65ce250c18a6', 'zcvd21', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 20:50:06', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('581', '12859183b2c1aa3ab363f36b377d3e2a', '2482ebac088365af467a2137058607f0', '141414', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 20:50:20', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('582', 'e7cdc591dbe160e68e7d717912eb7ac1', '87057529d1df23585893649c05ee2bbe', 'Xxxxxx2', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 19:46:22', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('583', 'c118a42af67aeea4f07ec4b02676a533', 'f3395167b377bf803af3bc2096d4cef4', 'Vvvvvvv', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 20:07:35', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('584', '471555821ff06e8c401d3e6fb0f890d9', '6f7d3876a1c7e4f7306dede3b38f374e', 'SSSSSS', '12', '82', '100', '352', '0', '275', '415', '63', '59', '1', '2021-12-10 21:18:55', '242', '22', '0', '77009', '77004', '77011', '77042', '77016', '77027', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-10 20:34:59', '1', '6', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('585', '8941761f4845a31c23a6328e5e579202', 'addacc799bac57f4eca3356c24ae7f2a', 'Gietcho', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 20:50:37', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('586', '465133246a843b93c24201350509133a', 'ec38af71820704aa22d18c45e2157ef3', 'Zenaus', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 20:02:02', '237', '2', '0', '0', '0', '0', '76975', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('587', '6d3e49a106b7d4332c562fa96aaa7b31', '5efad7a950cdce39a88006c649e3f7e9', 'Đại Vũ', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 20:04:56', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('588', '95409c694fc35f303dc09eea69444dd8', '8cbf2e14b05e1f68fb300ac36dbabf95', 'Shround', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 20:21:36', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('589', 'c5ade303cb17684643aeff84423cb708', '6868b5f11f80888b4ceab296eeb059b9', 'baasss', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 20:45:41', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('590', 'e7da68284647dad4587312fb43c3c4cf', '37b30d47198882e2d5bb2e75c2ee92bb', 'googleA', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 20:48:11', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('591', '0cb8f67a8c561a63dacaa09158f7f40c', '0fc11b6e7c3f241eaee7afce9e8a9207', 'googleS', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 20:49:17', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('592', '8430ef32db1b255ff6cbe21f99e999f2', '5670be224c6a3d58ceb133e53b18508b', 'googleD', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 20:50:04', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('593', '382e2cfe200d1231ffe1a2e306d42a6b', 'd9cabde6b3f7901219aa9a65235699ea', 'googleF', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 20:50:55', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('594', 'a99db0da877f1c5e3579d338f49271fe', 'b7eb9e2d5465ba1d86f528b1501e29e5', 'nguthic', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 20:52:47', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('595', 'ac715806d021d762ad5d783e08794bd4', '7fc329be9ca6c763d41ce7764e3d831a', 'googleG', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 20:51:45', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('596', '8bc80ee3535cd08e96cbdc945bb9881d', '3641f3d293584fabb7952b09bc0cf9f8', 'HUNGFF', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 20:53:01', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('597', '2db67eedafd57b9251452c84fd6e72dd', 'a2435bedab0a42a189a41f5efedd386e', 'UchObi', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 20:55:17', '238', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('598', '1dae7225f245dd20b9e9819ccf00bb14', 'b90a256848aafe86b5b03298547acd59', 'sdasdas', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 20:54:40', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('599', '0ed5b695d1c6831efb9ef209045e6872', '17e75d85049e6382fecfb97b52a45179', 'NYLOVE', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 20:54:29', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('600', '6636a00499a701a8e4aee28099e899c3', '95df5573f135d2f74c31adfc2067e714', 'haison2', '2', '2248', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 20:56:06', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('601', '998ea2ed1e539242b37b3d145ec984c1', '957801ba72ff7004db09cc6fbaea596a', 'quay xe', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 20:55:17', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('602', 'f02ab205f576a1761a1efad0ee014d65', '78857bcfe0888ef17d796d19c94b6f18', 'jinxxx', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 20:55:48', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('603', 'dbd913282216b9f36dc0aacf77fb8f4d', '058981596e20013e476c611da17bc506', 'NguDot', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 20:58:51', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('604', 'fff129361f0ecd915545b09a4f23741a', 'be2c0c1d171164d78719e50ea64f0959', 'justyl', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 20:56:24', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('605', '9bea8bb6f86f26e1a55e2abb63f9f479', '4d51a3238e498bd55aacff381f4e41eb', 'háionf', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:00:37', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('606', '8bf7e7c51e89f7d055431b885e88c7aa', '938aa10a337d5b667512e4b827c1a436', 'đô laỹ', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 20:57:03', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('607', 'abad3256447bf495020a18e2c7f72df8', 'f909b66fa260221bd542bd91b751ef01', 'xcccds', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:00:44', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('608', '6e4aeebf5cd05538d633891e444f1122', 'ba2c2ea05c9224447103db2acec89f22', 'minhtk', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 20:58:54', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('609', '2aa1cf134292f1739bd9ff431db93908', '854d288ad8ec317f45dd223508c185f4', 'minhyy', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 20:59:36', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('610', '4ab1097327f63a1deadfd6721b3155ad', 'de5ff761090162e7de6469c8086accdb', 'Lovely', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 21:00:36', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('611', 'a5be62b4b78aa6ec7502924aa6c7ecb0', 'ae16789ca994532d27de30ce5619c236', 'ádasd', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:01:54', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('612', 'fbd3d515e501ab709aaea351abf2acdd', '3e8fad8239f8f82d5254366635c5ec4a', 'youloo', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 21:01:26', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('613', '003222c0bc5a54469192d5c6dc2e96a4', '0473af4f0c8be42061779c64fd04505a', 'haisond', '2', '363', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:03:39', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('614', '2d3523906f45daf8b05d4ee873b2fb75', '0d122b3f6ae9cb7bfe5c760c8a498a7b', '200330', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:05:13', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('615', '9fa9af61fba789b3a3a68dd18bec0355', '9a501f49e504e17a3b2082d7efea54a2', 'yeuanh', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 21:03:55', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('616', '745b8b0c24f3b050d2e5d4f040e09755', '7a12ce5f6503d7c89aa550f75526fa9c', 'Libi031', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:06:00', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('617', '751058112ea7895985fa67cf23ed7bba', '23b150d12e2bae20dcd6d5c6b6e242f2', 'ggghhh', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 21:04:43', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('618', '96a60d2c0f22959633c766cd4be60293', '2298049c21541f07a6189f8944e29292', 'cccxxxa', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 21:05:18', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('619', 'cb477a5c69f52fc35afc1f62e97197e7', '34ff9d22a26e64a4f92e3ce519a14e90', 'Yêu em', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 21:05:48', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('620', '112c512ed3ce9b33ac455449ad26e8a4', 'ae9fa2f0de9af3b57ff114fa8dd86515', 'googleq', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 21:06:19', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('621', 'b7e9ee418c890496b897cfddc3827361', 'a1c9ced89b6e064153cc89f9712709cd', '12dsdas', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:06:59', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('622', '97bf4556a5d23ded2646f81a24b293d6', '2c7da809cdce62810de4da6bfb3487b1', 'googlew', '1', '0', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 21:06:47', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('623', 'f63078630a88b1ecee7ee913ceb19812', '0a7e34930f0566d3a7f8a1a56840a405', 'Libi03a', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:08:58', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('624', '93f526702057373149a9cfa640385eb3', '15e7075ab5df042460352a182eb4a0a6', 'sádass', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:09:49', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('625', 'ec3dcb49b71ec220951be37a1e1cbda2', 'de82c60969f8ec8d759741bcd7248cf1', 'BaBaLàR', '2', '2489', '100', '851', '0', '75', '65', '15', '8', '1', '2021-12-10 21:23:54', '229', '2', '0', '77083', '0', '77069', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('626', '8ffb820f9fe09045a9e8ecdfbc712802', '495adf8dd27833f63abd31f08254746c', 'saaaaaa', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:10:51', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('627', 'ef9ba5ede60da54d81838439bf4957d5', '3447dd61274c943d4cdaf819fe82985d', 'sâsss', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:14:47', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('628', '4e192ae86106454c54d1c8571060d9cb', 'c610a3caaa8a587a7dfe1d776e3642d8', 'aaaaaaa', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:21:21', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('629', '4faa68ad2836d9a580a095d5d4e5ac34', 'b85dc75f7ce8d8d3525a2bd720a4845b', 'czxxxzz', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:29:40', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('630', '2569b951da435bb9c77d68f84156b531', '9f84ba8b042ac332628ed7f9351f1e66', '291933', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:23:56', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('631', '8096bab241a745965c3fc88cc699df17', '91f3c1f514330e2626e51f5c0dd8dac8', 'adfewđ', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:31:05', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('632', 'b9914dd0b8bdc9ab234a551d6a9989c3', '0ec3919e4a2e823c02756523b568417f', 'sádwa', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:32:10', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('633', '4028d7fd3906be6e99e9847cf5ec5748', '902dd96f583916c11d4efe688c83d66d', 'ssssaww', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:34:30', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('634', 'e24af8ce4572a56388bba51fce9c5c2d', 'e05f5b6829d56a802cd5c946dc1e8c46', 'sắc da', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:35:44', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('635', '67f1b64af52c989385241db4b2b6daf8', 'dc4fd36e3a5b1790c10f38f06b1d44ce', 'dác da', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:38:54', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('636', 'fa80a1400e8952183e656d20ae298168', '957578358b1937eb81f221921a42994b', '21sasd', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:41:18', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('637', '4c2776c8859d4e1723bd6d7fab1b2772', '157604d13db94cdde4d9aa9fc6fb4897', 'sắcda', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:42:04', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('638', '5a383efd6fd05659b53d81f46bb374ba', '395e256df14ee09cc7967c29f148b01f', 'sấcđ', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:44:09', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('639', 'c316eef7f547fdb67b02a02991c08595', '7fda251e2e94cf7da6b0ccbde5f89393', 'ưdawa', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:46:16', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('640', '6641224d5c7b03639d8c3a821aaf5265', '5bed532522afcf399b018423559aa664', 'sdwascz', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:47:09', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('641', '7e11a224cf7d680b4434a8d4ffb38e18', '996f3e108ace6823dfc1405f578c675e', 'sassssa', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:48:03', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('642', 'ae48252617495d4d8415a9b2897e88da', 'eb9d940b9e77dcc6b7f0b76b43faada7', '828283', '2', '50', '100', '222', '0', '61', '65', '15', '8', '1', '2021-12-10 21:49:55', '228', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('643', 'ed1e41cb1a37291afaeafe372a999ece', '632c36e916d4ce5e474ca8079ffb33f8', 'sadxcs', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:50:22', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('644', 'cba408727a6faf27e19799a28a7245d9', '1e17b1d39f4a0813268b533d226f613b', '829492', '2', '50', '100', '222', '0', '61', '65', '15', '8', '1', '2021-12-10 21:51:23', '228', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('645', '392d311e85536f5a22ac352458ed417d', '614f1ec69089c8c880afdb427a8a1a6c', 'haaso1', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:51:11', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('646', 'b1a11bf20372c1917c015177e70da375', 'e30f19259b58dc1132a8439e8a66285d', 'haaso12', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:52:06', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('647', '51218a11dafd6581e03eb517fd323935', 'da7c6cb4888f3ebc8899936ae69b09ac', '1829392', '2', '50', '100', '223', '0', '61', '65', '15', '8', '1', '2021-12-10 21:53:01', '228', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('648', '78452c0d4b172fb2dcee08d338f56acc', '07d3dd733119cfeaf0c9e37a7ad5d23f', 'haaso2', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 21:58:29', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('649', '0a02202fed191e30afc1626b1171b09d', 'bfe5edc2e22fdd1bb2000dc1b8d24477', 'EoOwey', '2', '50', '100', '223', '0', '61', '65', '15', '8', '1', '2021-12-10 22:00:25', '228', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('650', 'f47188dbeb689c63337216ffcfdc80aa', '7c9a97ef0e45926385dace640a8af5e0', 'haaso3', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 22:22:31', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('651', 'b69d90fc03f0fa785b1c6ddb3b3829b8', 'e6f97795f919bcb79f7f2d224a430b25', '828844', '2', '50', '50', '223', '0', '61', '65', '15', '8', '1', '2021-12-10 22:20:18', '228', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('652', '97f6c8467286a08954edfa6955510a71', 'aa3ea31e46f9c4a2f4739a4e778e00eb', 'haaso4', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 22:24:31', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('653', 'ce4cd32dada7f32b83853711542c22ca', '94417a87a838ee5249b4f7ea842c62ba', 'haaso5', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 22:25:52', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('654', '8a7efb7f2df77e079d227b2b0518b47f', '21e8dffe6ec0ba2c67b2ed5ec92a96bc', 'haaso6', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 22:26:38', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('655', '071cc2053b1d893f70a8717e139a890b', '83eeaecfed2187b046980c46f6d5ee78', 'haaso7', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 22:27:33', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('656', 'b07cf0573d533fd6fafea889f4b00341', '632443eb505d0feaf2e8701a41da2aa1', 'haaso8', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 22:28:14', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('657', '5525b042a45ea5bd62def930594c18f2', 'b3e4ea5b21217c08454169526ce65574', 'ĐuyDo', '1', '2000', '50', '0', '0', '35', '35', '12', '5', '1', '2021-12-10 22:30:15', '272', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '3643', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('658', '9224230b7a147c55b158c0642c0dae34', 'b0d4215175dbdcc03ddfc591984164b0', '818393', '2', '51', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 22:41:27', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('659', 'bf32173db0102374b65590833ad0cc7f', '921ffc7c72d5c11c3a918143b955cd4c', 'haaso9', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 23:04:55', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('660', '2c2297bb0c8a0ac18b2fd1f3f48787e2', '4f6c2fb901c734755ecd6a90c9372c61', 'haasc1', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 23:06:27', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('661', '8459472e192b644642eb5042a71624a4', 'ffc3b271e0f5dad3ee23353483813777', 'haasc2', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 23:07:19', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('662', '03dd6871353d919e243d6cc9cd0edc21', 'aae9dd8b08929acdeba008185e4d8817', 'haasc3', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 23:08:10', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('663', '2a111a75f25e6f87d99b0925f8fa4f09', '159d59f17c60296feb48b33fb7b6a9c5', 'haasc4', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 23:09:39', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('664', '485169fef9ff97368fad99c5d7b9eaba', '979c863db9dc8675f14aa5781353d2ca', 'haasc5', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 23:10:55', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('665', 'c8d9ca8dc1c454d877b29418bb69c23f', '53e13fdef10fe4a366e6c8948027a698', 'haasc6', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 23:11:44', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('666', 'da5ec0d2cab02e7b2f6f617fcfbac658', 'cd48daf5a1753a260fc66e34d3349e9a', 'haasc7', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 23:54:35', '256', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('667', '3646314d5a3e639bcb2cba2d20ea1227', '199199127037481bc29d5ed3796ef431', 'haasc8', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 23:56:42', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('668', 'd7c100e7739bbbd6446020fa21eb43cb', '36ddb1b3361c78d9b0be81ef95e27e3d', 'haasc9', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 23:57:41', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('669', '90e8f3a897aa7fcb31627a8e75eeaa9c', '761a41552840c9a39da8149c2cef8ff8', 'haasd1', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 23:59:06', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('670', 'edcbf1d0ea9bb879b925b69aac3a4019', 'fc9f694d291fd203927708889c30d2bf', 'haasd2', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-10 23:59:59', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('671', '144f1c155fcb7fedf5915e15c68aed52', 'bc9af13b3b58f6d7e983b4e68a25a2f0', 'haasd3', '2', '0', '100', '218', '0', '35', '65', '15', '8', '2', '2021-12-11 00:01:22', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('672', '45500dfe80d0c1774817786a44a50e93', '6c00ccd2d68d7bf2ed05ab4e704d1c68', 'haasd4', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:02:39', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('673', 'de606cacc6a6ba649a3bf437b993d5fb', 'b9f096df240dc486eb51642954df803c', 'haasd5', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:04:45', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('674', 'f47ac3d9c8ff47415290e5bbee5d94ba', '7cd333fb248ddcaeb203ceed745f92c0', 'haasd6', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:05:52', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('675', '9467812eb836c2b70c021e8ef1d52ab1', '38bf232ad0e60900184497ce1e93e836', 'haasd7', '2', '250', '50', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:06:59', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('676', '7c8c3deb469f9576d97eb1bdedd44ded', '53616834af743c225613be641dacf047', 'haasd8', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:08:22', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('677', 'e4eeb15d095a35e9ca0934aa4c5d7348', '0ed4fe9b1af921413ae5a4c5e9e3c9af', 'haasd9', '2', '0', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:09:29', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('678', '820454b1128c1a80ae000002be521290', '9b30fddab9c3479aeb5f3ab3f9556c9c', 'haasd0', '2', '2250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:10:20', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('679', '0bc389301f085642f280e2bb5736a480', 'ea3d2fcfd4df7d917d024f604a46c130', '828843', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:35:26', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('680', 'e08d6b644f78d1b2fba58b3b9336e7c7', '947abd32d50cd4013c5df4a46117a7a6', '8399439', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:36:53', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('681', '4d6c7bbb353fe3b1998ab154b4b8de34', 'b4b5f1193fb9328e1489c06f4aec55cc', '9929393', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:38:08', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('682', '022efa153704457feb2e54c5bbe671b5', '78b30447bcf40ac8325fa24e62b94061', '929934', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:39:28', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('683', 'e1ea2ceff741958658f9ec6f3fb34337', 'aed82c406125046a56a059963f833385', '8293949', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:41:00', '273', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('684', '5203a615004c27accb73b0d2dfe0d7e9', '545a5f7b4ce12ed31beaa7673a9717c8', '829349', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:42:33', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('685', '2a9d05e96984a01ac6a3d3fa26c423d2', '445f45a2ed8a15cfe2c059a30f391a3d', '991294', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:43:54', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('686', 'c4370b9318ff613ff94f1c1f579ceffd', '992c2a2048ae932b323709f343fdd051', '829933', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:45:26', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('687', 'f94a4e70090449b1305bcfabc2fc3063', 'bd3630cad6dc89cf803112f9b91e694b', '939292', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:46:58', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('688', '500a2437c1bb8f02f7c49e28601dfb6e', 'f7a9053c9eee831dfb29e45b959ca16f', '828823', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:48:10', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('689', '3133ef63491fc4a52701e636dfbf9fa3', 'f52119e74b5c43914f7b8a61139ab4fa', '2999493', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:49:29', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('690', 'f7f614975423ea19029307b81d8c830d', '84a6fd75aa020e08be73402eda05a560', '829294', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:50:54', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('691', '17a653630bf9efddc2913636da715feb', '03e31b2fe82cb73685b181d8841092d6', '323445', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:53:09', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('692', '596e08e7ab36427ead738fb68c3b0a19', 'e4f9e74584f20c50017938bc3857af7a', 'haissn1', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:58:47', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('693', 'e1cdfa10364d6fe840293d6058435f84', '3c582827cbdbadbef1e1c8586e8d7332', 'haissn2', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 00:59:37', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('694', 'c39e1158234b1cbed1235f3a92e2190a', '2d37cc09eb9aadec717c41e9c9449d5e', 'haissn3', '2', '2250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:00:28', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('695', 'c40d9b4ce23e9d6301ae100078b494b1', '82caede0c5293d4071c5c86d2f2b248a', 'haissn4', '2', '2250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:01:04', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('696', '39486819141832199e9f6ce0f07df80f', 'ddad5a84743d325fe885c2ca8711ea8d', '828288', '2', '50', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:02:51', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('697', '28540a58a176409ab6ab670ad8b84d9a', '3ab5a7d047d6e16acb112c2c9e75b479', 'haissn5', '2', '2250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:01:43', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('698', 'db0c22a8d6c70028f1458c5bde301d42', '0ca674f3639d83230d198b2e0105d990', 'haissn6', '2', '2250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:02:25', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('699', 'e26d19ccb75a13d79282f2494544ed63', 'ae83696a24d852116f8c6ba809bd417b', 'haissn7', '2', '2250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:03:01', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('700', 'ae43a1ceec1a1cd209229a4a2a576694', '0899610ffa5ac25b22057b277abe9f2e', 'haissn8', '2', '2250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:03:39', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('701', 'dad5603cf172dda4d361f94d72ffa9b3', '99f4007457a542a002150b35848caecc', 'haissn9', '2', '2250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:04:10', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('702', '477f97929463f731805fea917796116b', '640ed77280cca31993ad21f0a95b2116', 'haissz1', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:04:54', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('703', '3a70d43cd5e915c33fca9ecaed82c166', '69b5ba6fca12a044b3dea9a09bcf2201', 'haissz2', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:05:41', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('704', 'd94223c92b09cca1881b7aa57c9be239', 'eabd3d8d1279afbd42b5b416f54133cb', 'haissz3', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:06:44', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('705', '4e8649b4605a7b24838a6eb8ccbcdafd', 'beacd0764158d2cfc99bc2b27416e2ea', 'haissz4', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:07:25', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('706', 'ddfafa84970edb8a1a2e1ce511cb3bea', '8c6d7e98d695128685f928369382ac9e', '8282883', '2', '51', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:08:23', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('707', 'dd799830db04c768c1bc8c999adb9eb3', '7d83e781b512f1355ec7801dd4d7135c', 'haissz5', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:08:05', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('708', '0728f444fe41245dc6009bae1abd5076', '1e3b8006695f6c0856eb2f926048d450', 'haissz6', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:08:51', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('709', '907c9e6c88d5dfdc389cd159e8e1227c', 'c94267a6ae1667390cfc8676ff32b5ec', '486333', '2', '51', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:11:24', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('710', '42de75f09bd5e5f02dc4ec20d84f6ec1', '875f9a0cc19f94e474e89623d306a5e3', 'haissz7', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:09:33', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('711', '59906aabadcb687e8dd91cc3e7840c8f', 'a62a925ceafc7be85363b2d457e257ed', 'haissz8', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:10:18', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('712', '90888bddd4da7a0ca3c3400b09cb8608', '844e18faa1696f30e7935718df8b3b02', 'haissz9', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:11:17', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('713', '24924d381bc4839740c136cba998f8a1', 'b2beaabc73a5a9ab77227548082171ae', 'haissz0', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:12:04', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('714', 'd8561aa207c9c921d2fcbff47f1b004f', '806ab28412fdc7d825a3a4bd3499c6b2', 'haisss1', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:12:45', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('715', 'b28c7d5de2c2ba559cf68ae2e2d8aa8e', 'cff241ad93b7861a841ad6c630ff9227', 'haisss2', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:13:39', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('716', '677f23772319fda9f0b168cb4e7a921e', '25460ff9c8e3fe2f5e6bed54e6f8ecfb', 'haisss3', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:14:21', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('717', 'da689f730710e8cbc65d9ca654e5ffc5', '326ac5d02475885757404cb33a427a4a', 'haisss4', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 01:16:20', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('718', '1f4d7e6d0493153d0a425f21883df5fe', 'd48c62bf26807b3b8fec451c1717b972', 'Kinoai', '3', '1094', '100', '613', '0', '89', '100', '20', '13', '1', '2021-12-11 08:52:57', '230', '4', '0', '77325', '0', '77322', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('719', '53cd539db99d47571d60f4d91d019219', '5cb3034d688bb8745cacb334c3960c1a', 'DạLy', '10', '1530', '93', '1710', '0', '420', '336', '51', '44', '1', '2021-12-11 21:52:04', '236', '18', '0', '77364', '77590', '77568', '0', '77587', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-11 21:09:36', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('720', '361279866296d10396c06791e1f7b796', 'b657221e81c3ef1c304b8707c9880ab7', 'haha123', '4', '2500', '100', '323', '0', '165', '131', '24', '17', '1', '2021-12-11 09:09:25', '249', '6', '0', '77378', '77346', '77379', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('721', '56ddd15342040518766f9db80dbcbc08', 'f6f3fe218ab92ae1afee7a1dc418d10e', 'NamN007', '1', '2000', '100', '0', '0', '35', '35', '12', '5', '1', '2021-12-11 09:58:17', '225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('722', '8d97e33eb204fcab472e184928d89803', 'f3c61aef89e80a8530ed1545534d58ef', 'an_dhy', '5', '3620', '100', '1489', '0', '392', '160', '26', '19', '1', '2021-12-11 11:17:16', '236', '8', '0', '76923', '0', '76940', '76316', '76334', '77337', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '6', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('723', '9ca6dc570525096a45e9d1fd4bdda384', 'e27de95455d3cd96b92b30699afd0513', 'skynet0', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 11:03:40', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('724', 'eca24beba178ffa2d273410f2b1eff68', 'aa32d45afa501fa304dee28c5e54caef', 'skynet1', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 11:02:04', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('725', 'efb6f6c5f57692b790f014c5b38dd816', 'cab84694d55c30dc0caf38b650279b69', 'skynet', '2', '250', '100', '218', '0', '35', '65', '15', '8', '1', '2021-12-11 11:04:59', '237', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('726', 'e99904f72c48e48b4bc5ee8cf8e966d6', '77956924d67fd2a27785b081e51684e4', 'gamejza', '5', '2612', '0', '45', '0', '144', '161', '27', '19', '1', '2021-12-11 18:08:56', '231', '8', '0', '77537', '0', '77538', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-11 17:00:25', '1', '0', '0', '0', '3650', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('727', '9c484fb3dc297a35f106796ed135a98d', 'a6e052e7088f4d29e666b69637efcdd6', 'Thythy', '6', '2425', '100', '331', '0', '88', '200', '34', '26', '2', '2021-12-11 20:38:52', '235', '10', '0', '77558', '77564', '77553', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '6', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `game1` VALUES ('728', '0e67ef9235186f4f55a624ee83eb0eb9', '5528c1e12f511fb64a6084cdca426778', 'MjnhNgo', '3', '2362', '100', '500', '0', '111', '101', '20', '13', '1', '2021-12-11 21:52:05', '230', '4', '0', '77570', '0', '77571', '0', '0', '0', '0', '0', '0', '2021-12-12 00:00:00', '2021-12-12 00:00:00', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for gameconfig
-- ----------------------------
DROP TABLE IF EXISTS `gameconfig`;
CREATE TABLE `gameconfig` (
  `firstmid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gameconfig
-- ----------------------------
INSERT INTO `gameconfig` VALUES ('225');
INSERT INTO `gameconfig` VALUES ('225');

-- ----------------------------
-- Table structure for ggliaotian
-- ----------------------------
DROP TABLE IF EXISTS `ggliaotian`;
CREATE TABLE `ggliaotian` (
  `name` text NOT NULL,
  `msg` text CHARACTER SET utf8mb4 NOT NULL,
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4474 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ggliaotian
-- ----------------------------
INSERT INTO `ggliaotian` VALUES ('Đạo trường', '12121', '4059', '422');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', '12121', '4058', '422');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Doãn Chí Bình đạo trưởng chữa trị một đống bug, trò chơi sửa đổi phần thăng cấp bên trong', '4057', '422');
INSERT INTO `ggliaotian` VALUES ('Hệ thống thông tri', 'Vạn người không được một Minh Vũ bước lên Tiên đồ', '4060', '0');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Chào ngươi a', '4061', '422');
INSERT INTO `ggliaotian` VALUES ('Minh vũ', 'Chào ngươi', '4062', '424');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Chơi đùa nhìn, như thế nào. Có bug hỗ trợ phản hồi thôi', '4063', '422');
INSERT INTO `ggliaotian` VALUES ('Hệ thống thông tri', 'Vạn người không được một mèo đen, bước lên Tiên đồ', '4064', '0');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Mèo đen chào ngươi a', '4065', '422');
INSERT INTO `ggliaotian` VALUES ('Hắc miêu chủ', 'Có ai không', '4066', '425');
INSERT INTO `ggliaotian` VALUES ('Hắc miêu chủ', 'Chơi như thế nào', '4067', '425');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Ở đây', '4068', '422');
INSERT INTO `ggliaotian` VALUES ('Hắc miêu chủ', '', '4069', '425');
INSERT INTO `ggliaotian` VALUES ('Hắc miêu chủ', 'Cái này chơi như thế nào?', '4070', '425');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Trước thứ một cái địa khu tìm trưởng thôn đối thoại', '4071', '422');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Tiếp nhiệm vụ đi đánh trách', '4072', '422');
INSERT INTO `ggliaotian` VALUES ('Hắc miêu chủ', '', '4073', '425');
INSERT INTO `ggliaotian` VALUES ('Hắc miêu chủ', 'Nha', '4074', '425');
INSERT INTO `ggliaotian` VALUES ('Hệ thống thông tri', 'Vạn người không được một Tu La bước lên Tiên đồ', '4075', '0');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Đi ra nói chuyện phiếm lạc', '4076', '422');
INSERT INTO `ggliaotian` VALUES ('Hệ thống thông tri', 'Vạn người không được một vô địch bước lên Tiên đồ', '4077', '0');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', '', '4078', '422');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Bán một thanh Thị Huyết Kiếm tại phường thị', '4079', '422');
INSERT INTO `ggliaotian` VALUES ('Bách hiểu sinh', 'Nghe nói đạo trưởng đánh chết vô địch', '4080', '0');
INSERT INTO `ggliaotian` VALUES ('Hệ thống thông tri', 'Vạn người không được một Timmy bước lên Tiên đồ', '4081', '0');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Bán cái đầu nón trụ tại phường thị', '4082', '422');
INSERT INTO `ggliaotian` VALUES ('Hệ thống thông tri', 'Vạn người không được một chớ khinh cuồng bước lên Tiên đồ', '4083', '0');
INSERT INTO `ggliaotian` VALUES ('Hệ thống thông tri', 'Vạn người không được một lạp lạp lạp bước lên Tiên đồ', '4084', '0');
INSERT INTO `ggliaotian` VALUES ('Minh vũ', 'Phường thị treo một cái Lôi Ưng hộ giáp', '4085', '424');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Nói cho ngươi cái bí mật, huyết lệ ưng dây chuyền mang 6 cái rất lợi hại', '4086', '422');
INSERT INTO `ggliaotian` VALUES ('Minh vũ', 'Xác thực', '4087', '424');
INSERT INTO `ggliaotian` VALUES ('Minh vũ', 'Năm cái dây chuyền một vũ khí', '4088', '424');
INSERT INTO `ggliaotian` VALUES ('Minh vũ', 'Bốn cái dây chuyền một vũ khí một cái Vẫn Thiết cũng không tệ ai', '4089', '424');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Năm cái Hắc Ma chùy thủ lợi hại', '4090', '422');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Còn có cái kia đánh 30 cái Kỳ Lân thú nhiệm vụ tặng trang bị, mang 6 cái mạnh hơn', '4091', '422');
INSERT INTO `ggliaotian` VALUES ('Minh vũ', 'Chờ ta đánh thắng được lại nói', '4092', '424');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Ngươi còn đủ tiền đột phá đẳng cấp sao, ta kẹt tại cấp 8 không có tiền đột phá', '4093', '422');
INSERT INTO `ggliaotian` VALUES ('Hệ thống thông tri', 'Vạn người không được một mèo đen, bước lên Tiên đồ', '4094', '0');
INSERT INTO `ggliaotian` VALUES ('Minh vũ', 'Nhanh không có tiền', '4095', '424');
INSERT INTO `ggliaotian` VALUES ('Hắc miêu chủ', 'Đạo trưởng có thể tra được số liệu sao', '4096', '431');
INSERT INTO `ggliaotian` VALUES ('Hắc miêu chủ', 'Ta nguyên hào không nhớ rõ mật mã', '4097', '431');
INSERT INTO `ggliaotian` VALUES ('Hắc miêu chủ', '', '4098', '431');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Ngươi nguyên hào mới cấp một, không quan trọng', '4099', '422');
INSERT INTO `ggliaotian` VALUES ('Hắc miêu chủ', 'Tốt a', '4100', '431');
INSERT INTO `ggliaotian` VALUES ('Minh vũ', 'Treo phường thị', '4101', '424');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Ta còn thiếu hai cái trang bị', '4102', '422');
INSERT INTO `ggliaotian` VALUES ('Minh vũ', 'Chờ một chút', '4103', '424');
INSERT INTO `ggliaotian` VALUES ('Minh vũ', 'Ta xoát núi vỏ', '4104', '424');
INSERT INTO `ggliaotian` VALUES ('Hắc miêu chủ', 'Ta cảm thấy, điểm cái nút không muốn đổi mới giới diện, có hơi phiền toái', '4105', '431');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Đây là chấp hành cmd, đổi mới sau lấy kết quả', '4106', '422');
INSERT INTO `ggliaotian` VALUES ('Hắc miêu chủ', '', '4107', '431');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Bình thường chỉ có nói chuyện phiếm sẽ đổi mới', '4108', '422');
INSERT INTO `ggliaotian` VALUES ('Hắc miêu chủ', 'Có thể giống công kích như thế, không đổi mới', '4109', '431');
INSERT INTO `ggliaotian` VALUES ('Minh vũ', 'Giết 50 cái chiến sĩ có phải hay không có hơi nhiều', '4110', '424');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Không nhiều, ta trước đó vẫn xoát, 6 thanh trung phẩm hút máu kiếm', '4111', '422');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Nói chuyện phiếm giống như có thể dùng tay đổi mới. Chờ một lúc cân nhắc', '4112', '422');
INSERT INTO `ggliaotian` VALUES ('Hệ thống thông tri', 'Vạn người không được một nhỏ diễm hạ bước lên Tiên đồ', '4113', '0');
INSERT INTO `ggliaotian` VALUES ('Hắc miêu chủ', 'Điện thoại có thể dùng kịch bản gốc sao', '4114', '431');
INSERT INTO `ggliaotian` VALUES ('Minh vũ', 'Download một cái tự động Tinh linh, tự mình làm kịch bản gốc', '4115', '424');
INSERT INTO `ggliaotian` VALUES ('Hắc miêu chủ', 'Đạo trưởng không phải làm cái kịch bản gốc sao', '4116', '431');
INSERT INTO `ggliaotian` VALUES ('Minh vũ', 'Không biết, ta một đường con chuột điểm tới', '4117', '424');
INSERT INTO `ggliaotian` VALUES ('Hắc miêu chủ', 'Bán chút lợi lộc đồ vật', '4118', '431');
INSERT INTO `ggliaotian` VALUES ('Minh vũ', 'Vì sao ta đánh không lạ rơi trang bị e mmm', '4119', '424');
INSERT INTO `ggliaotian` VALUES ('Hắc miêu chủ', 'Có ai không', '4120', '425');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Ta lập tức xây xong bug', '4121', '422');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Liền có thể ủng hộ nói chuyện phiếm không cần đổi mới', '4122', '422');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Được rồi', '4123', '422');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Nói chuyện phiếm bug đã sửa xong', '4124', '422');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Các ngươi đề giao bug, ta tại thời gian đằng sau tăng thêm ghi chú nói rõ đã sửa xong', '4125', '422');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', '12121', '4126', '422');
INSERT INTO `ggliaotian` VALUES ('Hệ thống thông tri', 'Vạn người không được một đạo trưởng bước lên Tiên đồ', '4127', '0');
INSERT INTO `ggliaotian` VALUES ('Hệ thống thông tri', 'Vạn người không được một quá dài bước lên Tiên đồ', '4128', '0');
INSERT INTO `ggliaotian` VALUES ('Thái trường', 'Nổi lên', '4129', '434');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Hắc hắc, lần này nói chuyện phiếm không biết gửi đi trống không ký tự', '4130', '422');
INSERT INTO `ggliaotian` VALUES ('Thái trường', 'Cho một chút ưu hóa, một: Chiến đấu giới diện công kích cái nút có thể hay không phóng tới góc dưới bên trái, hoặc quái vật tin tức giới diện công kích cái nút có thể hay không đặt ở đi bên cạnh: Hai, bán đồ hy vọng có thể cho cái nhắc nhở, không phải tay tàn điểm kích một cái bán ra người liền... Ba, nghĩ đến lại nói', '4131', '434');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Có thể đưa ra bug. Có cái nút', '4132', '422');
INSERT INTO `ggliaotian` VALUES ('Hắc miêu chủ', 'Có thể', '4133', '431');
INSERT INTO `ggliaotian` VALUES ('Đạo trường', 'Hôm nay có thời gian lại xây một chút bug, có làm người chơi quản lý hậu trường dùng để xóa ngăn ý nghĩ', '4134', '422');
INSERT INTO `ggliaotian` VALUES ('Hệ thống thông tri', 'Vạn người không được một dấu hiệu Lý bước lên Tiên đồ', '4135', '0');
INSERT INTO `ggliaotian` VALUES ('Hệ thống thông tri', 'Vạn người không được một đại gia ngươi bước lên Tiên đồ', '4136', '0');
INSERT INTO `ggliaotian` VALUES ('Hệ thống thông tri', 'Vạn người không được một đại mộng tưởng nhà bước lên Tiên đồ', '4137', '0');
INSERT INTO `ggliaotian` VALUES ('Hệ thống thông tri', 'Vạn người không được một thái điểu các bước lên Tiên đồ', '4138', '0');
INSERT INTO `ggliaotian` VALUES ('Hệ thống thông tri', 'Vạn người không được một tiểu Cửu lâu đo bước lên Tiên đồ', '4139', '0');
INSERT INTO `ggliaotian` VALUES ('Hệ thống thông tri', 'Vạn người không được một KillVn bước lên Tiên đồ', '4140', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi KillVnn Bước lên Tiên đồ', '4141', '0');
INSERT INTO `ggliaotian` VALUES ('KillVn', 'Xin chào', '4142', '440');
INSERT INTO `ggliaotian` VALUES ('KillVn', 'Xin chào á', '4143', '440');
INSERT INTO `ggliaotian` VALUES ('KillVn', 'Hello, bạn khỏe không', '4144', '440');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi ZzpgzZ Bước lên Tiên đồ', '4145', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Namhsd Bước lên Tiên đồ', '4146', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Dungtc Bước lên Tiên đồ', '4147', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Ngọcnữ Bước lên Tiên đồ', '4148', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Mavisss Bước lên Tiên đồ', '4149', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi AnhBii Bước lên Tiên đồ', '4150', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Thiên Bước lên Tiên đồ', '4151', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi NPG177 Bước lên Tiên đồ', '4152', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Kietvn Bước lên Tiên đồ', '4153', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Riosiro Bước lên Tiên đồ', '4154', '0');
INSERT INTO `ggliaotian` VALUES ('KillVn', 'Alo alo, có anh em nào ở đây k', '4155', '440');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Sasasa Bước lên Tiên đồ', '4156', '0');
INSERT INTO `ggliaotian` VALUES ('KillVn', 'Xin chào, chao xìn,,, Mình là admin đây', '4157', '440');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi VogueVT Bước lên Tiên đồ', '4158', '0');
INSERT INTO `ggliaotian` VALUES ('KillVn', 'Tặng all ae 5000 cực phẩm linh thạch nha', '4159', '440');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi MaNoCan Bước lên Tiên đồ', '4160', '0');
INSERT INTO `ggliaotian` VALUES ('Bách Hiểu Sinh', 'Kietvn bị KillVn đánh cho hoa rơi nước chảy', '4161', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Lalala Bước lên Tiên đồ', '4162', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi LoganLe Bước lên Tiên đồ', '4163', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Phuchug Bước lên Tiên đồ', '4164', '0');
INSERT INTO `ggliaotian` VALUES ('Kietvn', 'Sao tự nhiên lên lv cái âm hp vậy ad', '4165', '450');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi SunNguy Bước lên Tiên đồ', '4166', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Exodia Bước lên Tiên đồ', '4167', '0');
INSERT INTO `ggliaotian` VALUES ('VogueVT', 'Bị âm hp không làm gì được, có cách nào chữa ko ad', '4168', '453');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Kakara Bước lên Tiên đồ', '4169', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi heobii Bước lên Tiên đồ', '4170', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Siv3el Bước lên Tiên đồ', '4171', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Valenti Bước lên Tiên đồ', '4172', '0');
INSERT INTO `ggliaotian` VALUES ('Bách Hiểu Sinh', 'Nghe nói Exodia đánh bại KillVn', '4173', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi kingzzz Bước lên Tiên đồ', '4174', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Candytr Bước lên Tiên đồ', '4175', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Ok bấy  Bước lên Tiên đồ', '4176', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi asdasda Bước lên Tiên đồ', '4177', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi xxxxxx Bước lên Tiên đồ', '4178', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Pharaon Bước lên Tiên đồ', '4179', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi LOKIUG4 Bước lên Tiên đồ', '4180', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Queenn Bước lên Tiên đồ', '4181', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi KeDocTai Bước lên Tiên đồ', '4182', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Yanggg Bước lên Tiên đồ', '4183', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi pooooop Bước lên Tiên đồ', '4184', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Độc Cô  Bước lên Tiên đồ', '4185', '0');
INSERT INTO `ggliaotian` VALUES ('KeDocTai', 'https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/', '4186', '472');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi TQTNagi Bước lên Tiên đồ', '4187', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi HENDDD Bước lên Tiên đồ', '4188', '0');
INSERT INTO `ggliaotian` VALUES ('Bách Hiểu Sinh', 'Nghe nói Exodia đánh bại HENDDD', '4189', '0');
INSERT INTO `ggliaotian` VALUES ('KillVn', 'Ai đánh nhau k ', '4190', '440');
INSERT INTO `ggliaotian` VALUES ('KillVn', 'Exodia  m ở đâu r :v', '4191', '440');
INSERT INTO `ggliaotian` VALUES ('KillVn', 'ra đây đânhs nhau nòa', '4192', '440');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Hunter Bước lên Tiên đồ', '4193', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Andyism Bước lên Tiên đồ', '4194', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Gáo Dừa Bước lên Tiên đồ', '4195', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi ĐếTôn Bước lên Tiên đồ', '4196', '0');
INSERT INTO `ggliaotian` VALUES ('Andyism', 'Á à mấy con gà này', '4197', '479');
INSERT INTO `ggliaotian` VALUES ('Bách Hiểu Sinh', 'Nghe nói KillVn đánh bại Exodia', '4198', '0');
INSERT INTO `ggliaotian` VALUES ('KillVn', 'Á à, t giết từng thằng 1. ', '4199', '440');
INSERT INTO `ggliaotian` VALUES ('Bách Hiểu Sinh', 'KillVn bị Kietvn đánh cho hoa rơi nước chảy', '4200', '0');
INSERT INTO `ggliaotian` VALUES ('Bách Hiểu Sinh', ' KillVn đem Andyism đánh cho sinh hoạt không thể tự lo', '4201', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi NikeSho Bước lên Tiên đồ', '4202', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Coca170 Bước lên Tiên đồ', '4203', '0');
INSERT INTO `ggliaotian` VALUES ('Bách Hiểu Sinh', ' Pharaon đem Gáo Dừa đánh cho sinh hoạt không thể tự lo', '4204', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Henkyp Bước lên Tiên đồ', '4205', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi ngochun Bước lên Tiên đồ', '4206', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Thần Bước lên Tiên đồ', '4207', '0');
INSERT INTO `ggliaotian` VALUES ('Bách Hiểu Sinh', 'Nghe nói Thần đánh bại ngochun', '4208', '0');
INSERT INTO `ggliaotian` VALUES ('Bách Hiểu Sinh', 'Nghe nói Andyism đánh bại Thần', '4209', '0');
INSERT INTO `ggliaotian` VALUES ('Andyism', 'Anh bất bại nha', '4210', '479');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi SiMaCha Bước lên Tiên đồ', '4211', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Ngạo Ki Bước lên Tiên đồ', '4212', '0');
INSERT INTO `ggliaotian` VALUES ('Bách Hiểu Sinh', 'Ngạo Ki bị Andyism đánh cho hoa rơi nước chảy', '4213', '0');
INSERT INTO `ggliaotian` VALUES ('Bách Hiểu Sinh', 'Nghe nói Andyism đánh bại Valenti', '4214', '0');
INSERT INTO `ggliaotian` VALUES ('Bách Hiểu Sinh', 'Nghe nói Andyism đánh bại Valenti', '4215', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Lý Bạch Bước lên Tiên đồ', '4216', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Tiskka Bước lên Tiên đồ', '4217', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi ChimTuH Bước lên Tiên đồ', '4218', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Shinsoo Bước lên Tiên đồ', '4219', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Ngoctha Bước lên Tiên đồ', '4220', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Hianhem Bước lên Tiên đồ', '4221', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Longkak Bước lên Tiên đồ', '4222', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi ITkuda Bước lên Tiên đồ', '4223', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Ngọc Bước lên Tiên đồ', '4224', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Yu Tang Bước lên Tiên đồ', '4225', '0');
INSERT INTO `ggliaotian` VALUES ('Andyism', 'Mấy con gà đâu', '4226', '479');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Ma Chủ Bước lên Tiên đồ', '4227', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi huyvdnd Bước lên Tiên đồ', '4228', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Vipbozp Bước lên Tiên đồ', '4229', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Sagabus Bước lên Tiên đồ', '4230', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Xbbdbb Bước lên Tiên đồ', '4231', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi TracyX Bước lên Tiên đồ', '4232', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Tử Mộc  Bước lên Tiên đồ', '4233', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi abcxyz Bước lên Tiên đồ', '4234', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Nobless Bước lên Tiên đồ', '4235', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Beckham Bước lên Tiên đồ', '4236', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Sumooo Bước lên Tiên đồ', '4237', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi anhliem Bước lên Tiên đồ', '4238', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Ginkgo Bước lên Tiên đồ', '4239', '0');
INSERT INTO `ggliaotian` VALUES ('Bách Hiểu Sinh', 'Nghe nói anhliem đánh bại Tử Mộc ', '4240', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi DongTa Bước lên Tiên đồ', '4241', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Lykuku Bước lên Tiên đồ', '4242', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Lâm Đoo Bước lên Tiên đồ', '4243', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi pháp sư Bước lên Tiên đồ', '4244', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi PhongTử Bước lên Tiên đồ', '4245', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi KingSS Bước lên Tiên đồ', '4246', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi volks9x Bước lên Tiên đồ', '4247', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Majone Bước lên Tiên đồ', '4248', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi heo111 Bước lên Tiên đồ', '4249', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Tần Lin Bước lên Tiên đồ', '4250', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Đình An Bước lên Tiên đồ', '4251', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi qungsv3 Bước lên Tiên đồ', '4252', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Khocoth Bước lên Tiên đồ', '4253', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi ShinDu Bước lên Tiên đồ', '4254', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Vô Ưu Bước lên Tiên đồ', '4255', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Tiến Bước lên Tiên đồ', '4256', '0');
INSERT INTO `ggliaotian` VALUES ('Bách Hiểu Sinh', 'Nghe nói Khocoth đánh bại Tiến', '4257', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi ngocljn Bước lên Tiên đồ', '4258', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi yasuott Bước lên Tiên đồ', '4259', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi mQuanGz Bước lên Tiên đồ', '4260', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Hải Sơn Bước lên Tiên đồ', '4261', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Phonghz Bước lên Tiên đồ', '4262', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Ahihihi Bước lên Tiên đồ', '4263', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Doraemo Bước lên Tiên đồ', '4264', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Phucloc Bước lên Tiên đồ', '4265', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi xxxccc Bước lên Tiên đồ', '4266', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Zaxx01 Bước lên Tiên đồ', '4267', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Nguyệt Bước lên Tiên đồ', '4268', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi ngamy1 Bước lên Tiên đồ', '4269', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi ngamy12 Bước lên Tiên đồ', '4270', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi ngamy13 Bước lên Tiên đồ', '4271', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi google Bước lên Tiên đồ', '4272', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi google1 Bước lên Tiên đồ', '4273', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi google2 Bước lên Tiên đồ', '4274', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi google3 Bước lên Tiên đồ', '4275', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi google4 Bước lên Tiên đồ', '4276', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Thanh H Bước lên Tiên đồ', '4277', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi google5 Bước lên Tiên đồ', '4278', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi google6 Bước lên Tiên đồ', '4279', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi google7 Bước lên Tiên đồ', '4280', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi muanha Bước lên Tiên đồ', '4281', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi afset3 Bước lên Tiên đồ', '4282', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi uuufff Bước lên Tiên đồ', '4283', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi fffddd Bước lên Tiên đồ', '4284', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi rrrrr4 Bước lên Tiên đồ', '4285', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi asdas5 Bước lên Tiên đồ', '4286', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi cacas2 Bước lên Tiên đồ', '4287', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Joychu Bước lên Tiên đồ', '4288', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi vip999 Bước lên Tiên đồ', '4289', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi acvaaa Bước lên Tiên đồ', '4290', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi svnmmm Bước lên Tiên đồ', '4291', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi PumiHk Bước lên Tiên đồ', '4292', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi McLaren Bước lên Tiên đồ', '4293', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi CrocuS Bước lên Tiên đồ', '4294', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Thiên N Bước lên Tiên đồ', '4295', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Hulkzz Bước lên Tiên đồ', '4296', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 1911548 Bước lên Tiên đồ', '4297', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Huyvn16 Bước lên Tiên đồ', '4298', '0');
INSERT INTO `ggliaotian` VALUES ('KeDocTai', 'https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/https://www.facebook.com/', '4299', '472');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Hoàng Bước lên Tiên đồ', '4300', '0');
INSERT INTO `ggliaotian` VALUES ('Bách Hiểu Sinh', ' Huyvn16 đem Thanh H đánh cho sinh hoạt không thể tự lo', '4301', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Lokizz Bước lên Tiên đồ', '4302', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Phiphi Bước lên Tiên đồ', '4303', '0');
INSERT INTO `ggliaotian` VALUES ('Hải Sơn', 'Có code à mọi người', '4304', '531');
INSERT INTO `ggliaotian` VALUES ('Thanh H', 'Xin code đi ae', '4305', '547');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haisonh Bước lên Tiên đồ', '4306', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Libi03 Bước lên Tiên đồ', '4307', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 1asssd Bước lên Tiên đồ', '4308', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 1khggg Bước lên Tiên đồ', '4309', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi tu18061 Bước lên Tiên đồ', '4310', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi tu18062 Bước lên Tiên đồ', '4311', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi masstra Bước lên Tiên đồ', '4312', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haison1 Bước lên Tiên đồ', '4313', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi zcvd21 Bước lên Tiên đồ', '4314', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 141414 Bước lên Tiên đồ', '4315', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Xxxxxx2 Bước lên Tiên đồ', '4316', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Vvvvvvv Bước lên Tiên đồ', '4317', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi SSSSSS Bước lên Tiên đồ', '4318', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Gietcho Bước lên Tiên đồ', '4319', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Zenaus Bước lên Tiên đồ', '4320', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Đại Vũ Bước lên Tiên đồ', '4321', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Shround Bước lên Tiên đồ', '4322', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi baasss Bước lên Tiên đồ', '4323', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi googleA Bước lên Tiên đồ', '4324', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi googleS Bước lên Tiên đồ', '4325', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi googleD Bước lên Tiên đồ', '4326', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi googleF Bước lên Tiên đồ', '4327', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi nguthic Bước lên Tiên đồ', '4328', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi googleG Bước lên Tiên đồ', '4329', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi HUNGFF Bước lên Tiên đồ', '4330', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi UchObi Bước lên Tiên đồ', '4331', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi sdasdas Bước lên Tiên đồ', '4332', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi NYLOVE Bước lên Tiên đồ', '4333', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haison2 Bước lên Tiên đồ', '4334', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi quay xe Bước lên Tiên đồ', '4335', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi jinxxx Bước lên Tiên đồ', '4336', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi NguDot Bước lên Tiên đồ', '4337', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi justyl Bước lên Tiên đồ', '4338', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi háionf Bước lên Tiên đồ', '4339', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi đô laỹ Bước lên Tiên đồ', '4340', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi xcccds Bước lên Tiên đồ', '4341', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi minhtk Bước lên Tiên đồ', '4342', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi minhyy Bước lên Tiên đồ', '4343', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Lovely Bước lên Tiên đồ', '4344', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi ádasd Bước lên Tiên đồ', '4345', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi youloo Bước lên Tiên đồ', '4346', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haisond Bước lên Tiên đồ', '4347', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 200330 Bước lên Tiên đồ', '4348', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi yeuanh Bước lên Tiên đồ', '4349', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Libi031 Bước lên Tiên đồ', '4350', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi ggghhh Bước lên Tiên đồ', '4351', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi cccxxxa Bước lên Tiên đồ', '4352', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Yêu em Bước lên Tiên đồ', '4353', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi googleq Bước lên Tiên đồ', '4354', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 12dsdas Bước lên Tiên đồ', '4355', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi googlew Bước lên Tiên đồ', '4356', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Libi03a Bước lên Tiên đồ', '4357', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi sádass Bước lên Tiên đồ', '4358', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi BaBaLàR Bước lên Tiên đồ', '4359', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi saaaaaa Bước lên Tiên đồ', '4360', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi sâsss Bước lên Tiên đồ', '4361', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi aaaaaaa Bước lên Tiên đồ', '4362', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi czxxxzz Bước lên Tiên đồ', '4363', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 291933 Bước lên Tiên đồ', '4364', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi adfewđ Bước lên Tiên đồ', '4365', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi sádwa Bước lên Tiên đồ', '4366', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi ssssaww Bước lên Tiên đồ', '4367', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi sắc da Bước lên Tiên đồ', '4368', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi dác da Bước lên Tiên đồ', '4369', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 21sasd Bước lên Tiên đồ', '4370', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi sắcda Bước lên Tiên đồ', '4371', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi sấcđ Bước lên Tiên đồ', '4372', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi ưdawa Bước lên Tiên đồ', '4373', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi sdwascz Bước lên Tiên đồ', '4374', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi sassssa Bước lên Tiên đồ', '4375', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 828283 Bước lên Tiên đồ', '4376', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi sadxcs Bước lên Tiên đồ', '4377', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 829492 Bước lên Tiên đồ', '4378', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haaso1 Bước lên Tiên đồ', '4379', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haaso12 Bước lên Tiên đồ', '4380', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 1829392 Bước lên Tiên đồ', '4381', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haaso2 Bước lên Tiên đồ', '4382', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi EoOwey Bước lên Tiên đồ', '4383', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haaso3 Bước lên Tiên đồ', '4384', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 828844 Bước lên Tiên đồ', '4385', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haaso4 Bước lên Tiên đồ', '4386', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haaso5 Bước lên Tiên đồ', '4387', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haaso6 Bước lên Tiên đồ', '4388', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haaso7 Bước lên Tiên đồ', '4389', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haaso8 Bước lên Tiên đồ', '4390', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi ĐuyDo Bước lên Tiên đồ', '4391', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 818393 Bước lên Tiên đồ', '4392', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haaso9 Bước lên Tiên đồ', '4393', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haasc1 Bước lên Tiên đồ', '4394', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haasc2 Bước lên Tiên đồ', '4395', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haasc3 Bước lên Tiên đồ', '4396', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haasc4 Bước lên Tiên đồ', '4397', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haasc5 Bước lên Tiên đồ', '4398', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haasc6 Bước lên Tiên đồ', '4399', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haasc7 Bước lên Tiên đồ', '4400', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haasc8 Bước lên Tiên đồ', '4401', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haasc9 Bước lên Tiên đồ', '4402', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haasd1 Bước lên Tiên đồ', '4403', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haasd2 Bước lên Tiên đồ', '4404', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haasd3 Bước lên Tiên đồ', '4405', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haasd4 Bước lên Tiên đồ', '4406', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haasd5 Bước lên Tiên đồ', '4407', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haasd6 Bước lên Tiên đồ', '4408', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haasd7 Bước lên Tiên đồ', '4409', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haasd8 Bước lên Tiên đồ', '4410', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haasd9 Bước lên Tiên đồ', '4411', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haasd0 Bước lên Tiên đồ', '4412', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 828843 Bước lên Tiên đồ', '4413', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 8399439 Bước lên Tiên đồ', '4414', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 9929393 Bước lên Tiên đồ', '4415', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 929934 Bước lên Tiên đồ', '4416', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 8293949 Bước lên Tiên đồ', '4417', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 829349 Bước lên Tiên đồ', '4418', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 991294 Bước lên Tiên đồ', '4419', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 829933 Bước lên Tiên đồ', '4420', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 939292 Bước lên Tiên đồ', '4421', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 828823 Bước lên Tiên đồ', '4422', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 2999493 Bước lên Tiên đồ', '4423', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 829294 Bước lên Tiên đồ', '4424', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 323445 Bước lên Tiên đồ', '4425', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haissn1 Bước lên Tiên đồ', '4426', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haissn2 Bước lên Tiên đồ', '4427', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haissn3 Bước lên Tiên đồ', '4428', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haissn4 Bước lên Tiên đồ', '4429', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 828288 Bước lên Tiên đồ', '4430', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haissn5 Bước lên Tiên đồ', '4431', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haissn6 Bước lên Tiên đồ', '4432', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haissn7 Bước lên Tiên đồ', '4433', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haissn8 Bước lên Tiên đồ', '4434', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haissn9 Bước lên Tiên đồ', '4435', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haissz1 Bước lên Tiên đồ', '4436', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haissz2 Bước lên Tiên đồ', '4437', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haissz3 Bước lên Tiên đồ', '4438', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haissz4 Bước lên Tiên đồ', '4439', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 8282883 Bước lên Tiên đồ', '4440', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haissz5 Bước lên Tiên đồ', '4441', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haissz6 Bước lên Tiên đồ', '4442', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi 486333 Bước lên Tiên đồ', '4443', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haissz7 Bước lên Tiên đồ', '4444', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haissz8 Bước lên Tiên đồ', '4445', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haissz9 Bước lên Tiên đồ', '4446', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haissz0 Bước lên Tiên đồ', '4447', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haisss1 Bước lên Tiên đồ', '4448', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haisss2 Bước lên Tiên đồ', '4449', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haisss3 Bước lên Tiên đồ', '4450', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haisss4 Bước lên Tiên đồ', '4451', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Kinoai Bước lên Tiên đồ', '4452', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi DạLy Bước lên Tiên đồ', '4453', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi haha123 Bước lên Tiên đồ', '4454', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi NamN007 Bước lên Tiên đồ', '4455', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi an_dhy Bước lên Tiên đồ', '4456', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi skynet0 Bước lên Tiên đồ', '4457', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi skynet1 Bước lên Tiên đồ', '4458', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi skynet Bước lên Tiên đồ', '4459', '0');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi gamejza Bước lên Tiên đồ', '4460', '0');
INSERT INTO `ggliaotian` VALUES ('gamejza', 'lô', '4461', '726');
INSERT INTO `ggliaotian` VALUES ('Hải Sơn', 'Lô', '4462', '531');
INSERT INTO `ggliaotian` VALUES ('Hải Sơn', 'lo', '4463', '531');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi Thythy Bước lên Tiên đồ', '4464', '0');
INSERT INTO `ggliaotian` VALUES ('mQuanGz', 'Lô cc', '4465', '530');
INSERT INTO `ggliaotian` VALUES ('Thông báo hệ thống', ' vạn người không được một người chơi MjnhNgo Bước lên Tiên đồ', '4466', '0');
INSERT INTO `ggliaotian` VALUES ('Tử Mộc ', 'Hí ae', '4467', '505');
INSERT INTO `ggliaotian` VALUES ('Tử Mộc ', 'Ai onl k', '4468', '505');
INSERT INTO `ggliaotian` VALUES ('DạLy', 'Alo', '4469', '719');
INSERT INTO `ggliaotian` VALUES ('Bách Hiểu Sinh', ' KillVn đem KillVnn đánh cho sinh hoạt không thể tự lo', '4470', '0');
INSERT INTO `ggliaotian` VALUES ('Bách Hiểu Sinh', 'Đại hiệp KillVnn đã bị KillVn đánh bại', '4471', '0');
INSERT INTO `ggliaotian` VALUES ('Bách Hiểu Sinh', 'Queenn bị KillVnn đánh cho hoa rơi nước chảy', '4472', '0');
INSERT INTO `ggliaotian` VALUES ('Bách Hiểu Sinh', 'Đại hiệp Queenn đã bị KillVnn đánh bại', '4473', '0');

-- ----------------------------
-- Table structure for guaiwu
-- ----------------------------
DROP TABLE IF EXISTS `guaiwu`;
CREATE TABLE `guaiwu` (
  `gname` text CHARACTER SET utf8 NOT NULL,
  `glv` text NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ginfo` text CHARACTER SET utf8 NOT NULL,
  `gsex` varchar(255) NOT NULL,
  `ghp` int(11) NOT NULL,
  `ggj` int(11) NOT NULL,
  `gfy` int(11) NOT NULL,
  `gbj` int(11) NOT NULL,
  `gxx` int(11) NOT NULL,
  `gzb` text NOT NULL,
  `dljv` int(11) NOT NULL,
  `gdj` text NOT NULL,
  `djjv` int(11) NOT NULL,
  `gyp` text NOT NULL,
  `ypjv` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of guaiwu
-- ----------------------------
INSERT INTO `guaiwu` VALUES ('Ngạnh sí phong', '1', '55', 'Ngạnh sí phong', 'M', '40', '5', '3', '0', '0', '23', '10', '8', '30', '6', '8');
INSERT INTO `guaiwu` VALUES ('Sơn trư', '1', '56', 'Sơn thượng đích chư', 'M', '40', '4', '4', '0', '0', '24', '10', '1', '2', '', '0');
INSERT INTO `guaiwu` VALUES ('Lão hổ', '2', '57', 'Hung mãnh đích lão hổ', 'M', '70', '8', '6', '0', '0', '25', '10', '1', '3', '', '0');
INSERT INTO `guaiwu` VALUES ('Hoa yêu', '3', '58', 'Hoa yêu, tiểu yêu', 'F', '110', '15', '7', '0', '0', '26', '10', '1', '4', '', '0');
INSERT INTO `guaiwu` VALUES ('Cuồng bạo dã lang', '6', '62', 'Cuồng bạo dã lang', 'M', '190', '23', '19', '0', '0', '28', '20', '1', '5', '', '0');
INSERT INTO `guaiwu` VALUES ('Thị huyết dã lang', '5', '61', 'Thị huyết dã lang', 'M', '160', '22', '16', '0', '0', '28', '20', '1', '5', '', '0');
INSERT INTO `guaiwu` VALUES ('Long tước', '7', '63', 'Long tước', 'F', '220', '27', '22', '0', '0', '27', '20', '1,6', '8', '', '0');
INSERT INTO `guaiwu` VALUES ('Bách tuế long tước', '8', '64', 'Bách tuế long tước', 'M', '250', '32', '25', '0', '0', '29', '20', '1,6', '7', '', '0');
INSERT INTO `guaiwu` VALUES ('Hà hoa hoa mị', '9', '65', 'Hà hoa hoa mị', 'F', '280', '35', '28', '0', '0', '30', '21', '6', '17', '', '0');
INSERT INTO `guaiwu` VALUES ('Huyết lôi ưng', '12', '66', 'Huyết lôi ưng', 'M', '370', '46', '37', '0', '0', '32', '21', '1', '6', '', '0');
INSERT INTO `guaiwu` VALUES ('Lôi ưng', '10', '67', 'Lôi ưng', 'M', '310', '38', '31', '0', '0', '31', '21', '1', '5', '', '0');
INSERT INTO `guaiwu` VALUES ('Ma tu sĩ', '13', '69', 'Ma tu sĩ', 'M', '400', '49', '40', '0', '0', '', '22', '1', '6', '', '0');
INSERT INTO `guaiwu` VALUES ('Ma hóa chi thông tí viên', '16', '70', 'Ma hóa chi thông tí viên', 'M', '490', '61', '50', '0', '0', '36', '22', '', '5', '6', '5');
INSERT INTO `guaiwu` VALUES ('Ma hóa chi linh hầu', '17', '71', 'Ma hóa chi linh hầu', 'M', '520', '65', '53', '0', '0', '', '5', '1', '5', '', '5');
INSERT INTO `guaiwu` VALUES ('Ma hóa chi kiếm ma', '18', '72', 'Ma hóa chi kiếm ma', 'M', '550', '68', '56', '0', '0', '', '5', '7', '20', '', '5');
INSERT INTO `guaiwu` VALUES ('Ma hóa chi ấu xỉ miêu nữ', '19', '73', 'Ma hóa chi ấu xỉ miêu nữ', 'F', '580', '72', '59', '0', '0', '37', '5', '1,7', '5', '7', '5');
INSERT INTO `guaiwu` VALUES ('Ma hóa chi nha nhân', '20', '74', 'Ma hóa chi nha nhân', 'M', '610', '76', '62', '0', '0', '', '5', '7', '5', '', '5');
INSERT INTO `guaiwu` VALUES ('Ma hóa sơn tiêu', '21', '75', 'Ma hóa sơn tiêu', 'M', '640', '80', '65', '0', '0', '33', '20', '1,7', '20', '7', '20');
INSERT INTO `guaiwu` VALUES ('Nhập ma man tộc chiến sĩ', '21', '76', 'Nhập ma đích man tộc chiến sĩ', 'M', '640', '80', '65', '0', '0', '34,35', '7', '1', '7', '7', '7');
INSERT INTO `guaiwu` VALUES ('Nhập ma man tộc tế tự', '22', '77', 'Nhập ma đích man tộc tế tự', 'F', '670', '84', '68', '0', '0', '35', '7', '1', '7', '7', '7');
INSERT INTO `guaiwu` VALUES ('Ma hóa man lang', '23', '78', 'Ma hóa đích man lang', 'M', '700', '87', '71', '0', '0', '', '7', '1', '6', '', '7');
INSERT INTO `guaiwu` VALUES ('Ma hóa cuồng sư', '24', '79', 'Ma hóa cuồng sư', 'M', '730', '91', '74', '0', '0', '', '7', '1', '6', '', '7');
INSERT INTO `guaiwu` VALUES ('Ma đạo khống thú sư', '26', '80', '', 'M', '790', '99', '81', '0', '0', '', '7', '1', '6', '', '7');
INSERT INTO `guaiwu` VALUES ('Bách niên xà quái', '27', '81', 'Tu luyện bách niên đích xà quái', 'M', '820', '103', '84', '0', '0', '', '7', '1', '8', '', '7');
INSERT INTO `guaiwu` VALUES ('Xích lân thú', '28', '82', 'Xích lân thú', 'M', '850', '106', '87', '0', '0', '', '7', '1,10', '7', '', '7');
INSERT INTO `guaiwu` VALUES ('Cức thử', '29', '83', 'Cức thử', 'M', '880', '110', '90', '0', '0', '38', '7', '9', '20', '', '7');
INSERT INTO `guaiwu` VALUES ('Oán linh', '30', '84', 'Oán linh', 'F', '1510', '204', '183', '0', '0', '39', '8', '1', '9', '', '8');
INSERT INTO `guaiwu` VALUES ('Nham ma', '31', '85', 'Nham ma', 'M', '1560', '211', '189', '0', '0', '40', '8', '1', '8', '', '8');
INSERT INTO `guaiwu` VALUES ('Thị linh thử yêu', '32', '86', 'Thị linh thử yêu', 'M', '1610', '218', '195', '0', '0', '41', '8', '1', '9', '', '8');
INSERT INTO `guaiwu` VALUES ('Xích luyện phúc xà yêu', '33', '87', 'Xích luyện phúc xà yêu', 'F', '1660', '224', '201', '0', '0', '42', '9', '1', '9', '8', '9');
INSERT INTO `guaiwu` VALUES ('Bách niên xuyên sơn giáp', '34', '88', 'Bách niên xuyên sơn giáp Bì hậu khí huyết cường thịnh', 'M', '2000', '150', '330', '0', '0', '44', '9', '1', '9', '8', '9');
INSERT INTO `guaiwu` VALUES ('Thanh cổ hổ', '35', '89', 'Thanh cổ hổ', 'M', '1760', '238', '214', '0', '0', '', '5', '1', '5', '', '5');
INSERT INTO `guaiwu` VALUES ('Liệt châu ưng', '37', '90', 'Liệt châu ưng', 'M', '1860', '252', '226', '0', '0', '', '5', '1', '5', '9', '5');
INSERT INTO `guaiwu` VALUES ('Bạch báo yêu', '38', '91', 'Bạch báo yêu', 'M', '1910', '258', '232', '0', '0', '43', '5', '1', '5', '', '5');
INSERT INTO `guaiwu` VALUES ('Lôi la yêu', '39', '92', 'Lôi la yêu', 'F', '1960', '265', '238', '0', '0', '', '5', '1', '5', '', '5');
INSERT INTO `guaiwu` VALUES ('Huyết nha', '40', '93', 'Huyết nha', 'M', '2010', '272', '244', '0', '0', '', '5', '1', '10', '', '5');
INSERT INTO `guaiwu` VALUES ('Huyết nha vương', '55', '94', 'Huyết nha vương', 'M', '5860', '594', '558', '0', '0', '', '8', '12', '1', '', '8');
INSERT INTO `guaiwu` VALUES ('Hắc diễm yêu vương', '56', '95', 'Hắc diễm yêu vương', 'F', '4530', '653', '454', '0', '0', '', '5', '12', '1', '', '5');
INSERT INTO `guaiwu` VALUES ('Kiếp sát giả', '45', '96', 'Kiếp sát giả', 'M', '2260', '306', '275', '0', '0', '46', '5', '1', '5', '', '5');
INSERT INTO `guaiwu` VALUES ('Tinh duệ bạn binh', '47', '97', 'Tinh duệ bạn binh', 'M', '2360', '320', '287', '0', '0', '47', '5', '', '5', '', '5');
INSERT INTO `guaiwu` VALUES ('Bạn binh đội trường', '50', '98', 'Bạn binh đội trường', 'M', '3510', '440', '405', '0', '0', '48', '5', '', '5', '', '5');

-- ----------------------------
-- Table structure for im
-- ----------------------------
DROP TABLE IF EXISTS `im`;
CREATE TABLE `im` (
  `imuid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`imuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of im
-- ----------------------------
INSERT INTO `im` VALUES ('423', '3', '422');
INSERT INTO `im` VALUES ('424', '3', '422');
INSERT INTO `im` VALUES ('426', '0', '424');
INSERT INTO `im` VALUES ('501', '5342074', '505');
INSERT INTO `im` VALUES ('431', '0', '424');
INSERT INTO `im` VALUES ('443', '13', '444');
INSERT INTO `im` VALUES ('492', '0', '480');
INSERT INTO `im` VALUES ('440', '0', '474');
INSERT INTO `im` VALUES ('479', '0', '475');
INSERT INTO `im` VALUES ('513', '46', '514');
INSERT INTO `im` VALUES ('486', '6', '516');
INSERT INTO `im` VALUES ('531', '0', '530');
INSERT INTO `im` VALUES ('530', '132', '531');
INSERT INTO `im` VALUES ('538', '132', '531');
INSERT INTO `im` VALUES ('535', '557', '547');

-- ----------------------------
-- Table structure for imliaotian
-- ----------------------------
DROP TABLE IF EXISTS `imliaotian`;
CREATE TABLE `imliaotian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` int(11) NOT NULL,
  `imuid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of imliaotian
-- ----------------------------
INSERT INTO `imliaotian` VALUES ('2', 'Đạo trường', 'Có ai không', '422', '423');
INSERT INTO `imliaotian` VALUES ('3', 'Đạo trường', 'Có ai không', '422', '423');
INSERT INTO `imliaotian` VALUES ('4', 'Đạo trường', '', '422', '423');
INSERT INTO `imliaotian` VALUES ('5', 'Dungtc', 'tb', '444', '443');
INSERT INTO `imliaotian` VALUES ('6', 'KillVn', 'Hello', '440', '456');
INSERT INTO `imliaotian` VALUES ('7', 'KillVn', 'chịch k ', '440', '456');
INSERT INTO `imliaotian` VALUES ('8', 'pooooop', 'sss', '474', '440');
INSERT INTO `imliaotian` VALUES ('9', 'Exodia', 'QQ nè', '459', '440');
INSERT INTO `imliaotian` VALUES ('10', 'KillVn', 'ahihi', '440', '459');
INSERT INTO `imliaotian` VALUES ('11', 'KillVn', 'ahihi', '440', '459');
INSERT INTO `imliaotian` VALUES ('12', 'KillVn', '870C85455682BC81', '440', '459');
INSERT INTO `imliaotian` VALUES ('13', 'KillVn', '870C85455682BC82', '440', '479');
INSERT INTO `imliaotian` VALUES ('14', 'Exodia', 'Đâu ba', '459', '440');
INSERT INTO `imliaotian` VALUES ('15', 'LOKIUG4', 'gg', '470', '469');
INSERT INTO `imliaotian` VALUES ('16', 'mQuanGz', 'Hello', '530', '531');
INSERT INTO `imliaotian` VALUES ('17', 'Hải Sơn', 'Dm', '531', '530');
INSERT INTO `imliaotian` VALUES ('18', 'Hải Sơn', 'Dm', '531', '530');
INSERT INTO `imliaotian` VALUES ('19', 'Thanh H', 'Bạn đi', '547', '535');
INSERT INTO `imliaotian` VALUES ('20', 'mQuanGz', 'bìu bìu', '530', '531');

-- ----------------------------
-- Table structure for jineng
-- ----------------------------
DROP TABLE IF EXISTS `jineng`;
CREATE TABLE `jineng` (
  `jnname` varchar(255) NOT NULL,
  `jnid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jngj` int(11) NOT NULL,
  `jnfy` int(11) NOT NULL,
  `jnbj` int(11) NOT NULL,
  `jnxx` int(11) NOT NULL,
  `jndj` int(11) NOT NULL,
  `djcount` int(11) NOT NULL,
  `xiaohao` int(11) NOT NULL,
  PRIMARY KEY (`jnid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jineng
-- ----------------------------
INSERT INTO `jineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '6', '5', '0');
INSERT INTO `jineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '7', '8', '0');
INSERT INTO `jineng` VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '9', '8', '0');
INSERT INTO `jineng` VALUES ('Nộ huyết bạo', '7', '12', '2', '20', '8', '10', '10', '0');
INSERT INTO `jineng` VALUES ('Sơ cấp thị huyết thuật', '8', '1', '0', '0', '20', '11', '15', '0');

-- ----------------------------
-- Table structure for mid
-- ----------------------------
DROP TABLE IF EXISTS `mid`;
CREATE TABLE `mid` (
  `mname` text CHARACTER SET utf8 NOT NULL,
  `mid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mgid` text NOT NULL,
  `mnpc` text NOT NULL,
  `mgtime` datetime NOT NULL,
  `ms` int(11) NOT NULL,
  `midinfo` text CHARACTER SET utf8 NOT NULL,
  `midboss` int(11) NOT NULL,
  `mup` int(11) NOT NULL,
  `mdown` int(11) NOT NULL,
  `mleft` int(11) NOT NULL,
  `mright` int(11) NOT NULL,
  `mqy` int(11) NOT NULL,
  `playerinfo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ispvp` int(255) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of mid
-- ----------------------------
INSERT INTO `mid` VALUES ('Quảng Trường Thôn', '225', '', '11,17,12,27,28,29,30,31', '2021-12-12 00:00:00', '0', 'Trong thôn quảng trường, nhàn rỗi có vẻ như rất nhiều người đều về ở chỗ này', '1', '0', '0', '0', '226', '14', 'KillVn Hướng Thôn đông đi đến', '0');
INSERT INTO `mid` VALUES ('Thôn đông', '226', '', '18,32,34,35', '2021-12-12 00:00:00', '0', 'Thôn đông chỗ', '0', '0', '0', '225', '228', '14', 'KillVn Hướng Cửa thôn [chiến đấu] đi đến', '0');
INSERT INTO `mid` VALUES ('Cửa thôn [chiến đấu]', '228', '55|3,56|2', '', '2021-12-13 01:20:17', '0', 'Cửa thôn, thường thường có quái vật đột kích', '0', '0', '0', '226', '229', '14', 'KillVn Hướng Tiểu thụ lâm đi đến', '1');
INSERT INTO `mid` VALUES ('Tiểu thụ lâm', '229', '56|2,57|5', '', '2021-12-11 21:29:48', '0', '', '0', '0', '0', '228', '230', '14', 'KillVn Hướng Rừng cây chỗ sâu đi đến', '1');
INSERT INTO `mid` VALUES ('Rừng cây chỗ sâu', '230', '58|4', '', '2021-12-11 21:52:03', '0', '', '0', '0', '0', '229', '231', '14', 'KillVn Hướng Sơn lâm bên ngoài đi đến', '1');
INSERT INTO `mid` VALUES ('Sơn lâm bên ngoài', '231', '62|3,61|2', '', '2021-12-11 20:27:01', '0', 'Sơn lâm bên ngoài', '0', '0', '0', '230', '232', '14', 'KillVn Hướng Trong núi hồ nước đi đến', '1');
INSERT INTO `mid` VALUES ('Trong núi hồ nước', '232', '63|2,64|5', '', '2021-12-11 21:33:16', '0', 'Trong núi hồ nước', '0', '0', '0', '231', '233', '14', 'KillVn Hướng Trong hồ Kojima đi đến', '1');
INSERT INTO `mid` VALUES ('Trong hồ Kojima', '233', '65|6', '', '2021-12-11 21:43:22', '0', 'Trong hồ Kojima', '0', '0', '0', '232', '235', '14', 'KillVn Hướng Dãy núi hiện lên ở phương đông miệng đi đến', '1');
INSERT INTO `mid` VALUES ('Dãy núi hiện lên ở phương đông miệng', '235', '66|3,67|4', '', '2021-12-11 21:39:44', '0', '', '0', '0', '0', '233', '236', '14', 'KillVn Hướng Thành tây ngoại ô đi đến', '1');
INSERT INTO `mid` VALUES ('Thành tây ngoại ô', '236', '69|5', '', '2021-12-11 21:52:05', '0', '', '0', '0', '0', '235', '237', '16', 'KillVn Hướng Tụ Tiên thành tây đi đến', '1');
INSERT INTO `mid` VALUES ('Tụ Tiên thành tây', '237', '', '13,14,36,37', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '236', '238', '16', 'KillVn Hướng Tụ Tiên tây nhai đi đến', '1');
INSERT INTO `mid` VALUES ('Tụ Tiên tây nhai', '238', '', '15', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '237', '239', '16', 'KillVn Hướng Tụ ở giữa tòa tiên thành đi đến', '1');
INSERT INTO `mid` VALUES ('Tụ ở giữa tòa tiên thành', '239', '', '16,17,38,39,29,30', '2021-12-12 00:00:00', '0', '', '0', '0', '273', '238', '240', '16', 'KillVn Hướng Tụ Tiên Đông nhai đi đến', '0');
INSERT INTO `mid` VALUES ('Tụ Tiên Đông nhai', '240', '', '23,40,41,42', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '239', '241', '16', 'KillVn Hướng Tụ Tiên Thành Đông đi đến', '1');
INSERT INTO `mid` VALUES ('Tụ Tiên Thành Đông', '241', '', '', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '240', '242', '16', 'KillVn Hướng Thành Đông ngoại ô đi đến', '1');
INSERT INTO `mid` VALUES ('Thành Đông ngoại ô', '242', '70|3,71|2', '', '2021-12-11 14:46:15', '0', '', '0', '0', '0', '241', '243', '16', 'KillVn Hướng Ma hóa động quật đi đến', '1');
INSERT INTO `mid` VALUES ('Ma hóa động quật', '243', '72|6', '', '2021-12-11 10:46:20', '0', '', '0', '246', '0', '242', '244', '16', 'KillVn Hướng Trong bộ lạc đi đến', '1');
INSERT INTO `mid` VALUES ('Động quật lối ra', '244', '74|5', '', '2021-12-11 03:38:50', '0', '', '0', '0', '0', '243', '245', '17', 'MjnhNgo Hướng Trong bộ lạc đi đến', '1');
INSERT INTO `mid` VALUES ('Ma hóa bình nguyên', '245', '73|4', '', '2021-12-11 16:00:44', '0', '', '0', '0', '0', '244', '247', '17', 'Nguyệt Hướng Bộ lạc tây ngoại ô đi đến', '1');
INSERT INTO `mid` VALUES ('Động quật chỗ sâu', '246', '75|1', '', '2021-12-11 21:27:42', '200', '', '0', '0', '243', '0', '0', '17', 'MjnhNgo Hướng Ma hóa động quật đi đến', '1');
INSERT INTO `mid` VALUES ('Bộ lạc tây ngoại ô', '247', '76|4,77|2', '', '2021-12-11 16:17:14', '0', '', '0', '0', '0', '245', '248', '17', 'ngocljn Hướng Trong bộ lạc đi đến', '1');
INSERT INTO `mid` VALUES ('Bộ lạc tây', '248', '', '20,43,44', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '247', '249', '17', 'KillVn Hướng Trong bộ lạc đi đến', '1');
INSERT INTO `mid` VALUES ('Trong bộ lạc', '249', '', '15,17,21,47,30,48,49', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '248', '250', '17', 'KillVn Hướng Bộ lạc đông đi đến', '0');
INSERT INTO `mid` VALUES ('Bộ lạc đông', '250', '', '19,22', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '249', '251', '17', 'KillVn Hướng Bộ lạc Đông Giao đi đến', '1');
INSERT INTO `mid` VALUES ('Bộ lạc Đông Giao', '251', '78|6', '', '2021-12-11 12:07:04', '0', '', '0', '0', '0', '250', '252', '17', 'KillVn Hướng Chuông gió cổ trấn đi đến', '1');
INSERT INTO `mid` VALUES ('Rất bên bờ sông', '252', '78|2,79|4', '', '2021-12-11 00:49:32', '0', '', '0', '0', '0', '251', '253', '17', 'Phucloc Hướng Qua sông bến cảng đi đến', '1');
INSERT INTO `mid` VALUES ('Qua sông bến cảng', '253', '80|5', '', '2021-12-11 16:01:54', '0', '', '0', '0', '0', '252', '254', '17', 'Hải Sơn Hướng Thôn quảng trường đi đến', '1');
INSERT INTO `mid` VALUES ('Rất bên kia bờ sông', '254', '81|6', '', '2021-12-11 03:39:34', '0', '', '0', '0', '0', '253', '255', '17', 'Hải Sơn Hướng Qua sông bến cảng đi đến', '1');
INSERT INTO `mid` VALUES ('Không biết sơn lĩnh 1', '255', '82|7', '', '2021-12-11 13:12:54', '0', '', '0', '0', '0', '254', '256', '18', 'Tử Mộc  Hướng Không biết sơn lĩnh 2 đi đến', '1');
INSERT INTO `mid` VALUES ('Không biết sơn lĩnh 2', '256', '83|5', '', '2021-12-11 21:40:13', '30', '', '0', '257', '0', '255', '258', '18', 'Tử Mộc  Hướng Không biết sơn lĩnh 3 đi đến', '1');
INSERT INTO `mid` VALUES ('Không người sơn động', '257', '84|1', '', '2021-12-11 18:44:19', '200', '', '0', '0', '256', '0', '0', '18', 'Hải Sơn Hướng Không biết sơn lĩnh 2 đi đến', '1');
INSERT INTO `mid` VALUES ('Không biết sơn lĩnh 3', '258', '85|6', '', '2021-12-10 23:58:27', '200', '', '0', '0', '0', '256', '259', '18', 'Tử Mộc  Hướng Không biết sơn lĩnh 2 đi đến', '1');
INSERT INTO `mid` VALUES ('Chuông gió cổ trấn tây', '259', '', '15,51,53', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '258', '260', '18', 'Hải Sơn Hướng Không biết sơn lĩnh 3 đi đến', '1');
INSERT INTO `mid` VALUES ('Chuông gió cổ trấn', '260', '', '24,46,50,52,54,55,30', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '259', '261', '18', 'KillVn Hướng Chuông gió cổ trấn đông đi đến', '0');
INSERT INTO `mid` VALUES ('Chuông gió cổ trấn đông', '261', '', '19,56', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '260', '262', '18', 'MjnhNgo Hướng Viêm Dương thành trung tâm đi đến', '1');
INSERT INTO `mid` VALUES ('Yêu thú rừng cây ngoại bộ 1', '262', '86|3', '', '2021-12-11 13:12:46', '200', '', '0', '0', '0', '261', '263', '18', 'Hải Sơn Hướng Chuông gió cổ trấn đông đi đến', '1');
INSERT INTO `mid` VALUES ('Yêu thú rừng cây ngoại bộ 2', '263', '87|7', '', '2021-12-11 19:46:29', '0', '', '0', '0', '0', '262', '264', '18', 'Shinsoo Hướng Rừng cây chỗ sâu Yêu Thú sơn đi đến', '1');
INSERT INTO `mid` VALUES ('Rừng cây chỗ sâu Yêu Thú sơn', '264', '88|5', '', '2021-12-11 19:49:02', '100', '', '0', '0', '0', '263', '265', '18', 'Shinsoo Hướng Vạn Yêu Sơn dưới đáy đi đến', '1');
INSERT INTO `mid` VALUES ('Vạn Yêu Sơn dưới đáy', '265', '89|4,90|4', '', '2021-12-11 01:36:18', '0', '', '0', '0', '0', '264', '266', '18', 'Shinsoo Hướng Vạn Yêu Sơn eo đi đến', '1');
INSERT INTO `mid` VALUES ('Vạn Yêu Sơn eo', '266', '91|3,92|5', '', '2021-12-10 22:59:06', '0', '', '0', '268', '267', '265', '269', '18', 'Shinsoo Hướng Yêu Vương ngoài điện vây đi đến', '1');
INSERT INTO `mid` VALUES ('Yêu Vương ngoài điện vây', '267', '94|3,95|3', '24,30', '2021-12-10 22:32:34', '0', '', '0', '266', '0', '0', '0', '20', 'Phucloc Hướng Vạn Yêu Sơn eo đi đến', '1');
INSERT INTO `mid` VALUES ('Vạn Yêu Sơn đỉnh', '268', '93|7', '', '2021-12-10 22:58:57', '0', '', '0', '0', '266', '0', '0', '18', 'Shinsoo Hướng Vạn Yêu Sơn eo đi đến', '1');
INSERT INTO `mid` VALUES ('Viêm Dương vùng ngoại ô', '269', '96|4,97|4', '', '2021-12-11 02:23:42', '0', '', '0', '0', '0', '266', '270', '21', 'Shinsoo Hướng Vạn Yêu Sơn eo đi đến', '1');
INSERT INTO `mid` VALUES ('Viêm Dương tây ngoại ô', '270', '98|7', '', '2021-12-11 03:25:53', '0', '', '0', '0', '0', '269', '271', '21', 'Shinsoo Hướng Viêm Dương vùng ngoại ô đi đến', '1');
INSERT INTO `mid` VALUES ('Viêm Dương tây nhai', '271', '', '', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '270', '272', '21', 'Shinsoo Hướng Viêm Dương tây ngoại ô đi đến', '1');
INSERT INTO `mid` VALUES ('Viêm Dương thành trung tâm', '272', '', '24,25,30', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '271', '0', '21', 'MjnhNgo Hướng Thôn quảng trường đi đến', '0');
INSERT INTO `mid` VALUES ('Môn phái quản lý chỗ', '273', '', '26', '2021-12-12 00:00:00', '0', '', '0', '239', '0', '0', '0', '16', 'DạLy Hướng Tụ ở giữa tòa tiên thành đi đến', '1');

-- ----------------------------
-- Table structure for midguaiwu
-- ----------------------------
DROP TABLE IF EXISTS `midguaiwu`;
CREATE TABLE `midguaiwu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gname` text NOT NULL,
  `ghp` text NOT NULL,
  `ggj` text NOT NULL,
  `gfy` text NOT NULL,
  `glv` text NOT NULL,
  `mid` int(11) NOT NULL,
  `gyid` int(11) NOT NULL,
  `gexp` text NOT NULL,
  `sid` text NOT NULL,
  `gmaxhp` varchar(255) NOT NULL,
  `gbj` int(11) NOT NULL,
  `gxx` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2335287 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of midguaiwu
-- ----------------------------
INSERT INTO `midguaiwu` VALUES ('2280014', 'Lôi la yêu', '1474', '265', '238', '39', '266', '92', '254', '099f465c0c34dd5ef59f230a21447af4', '1960', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2330640', 'Huyết nha', '2010', '272', '244', '40', '268', '93', '340', '', '2010', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2253163', 'Sơn trư', '40', '4', '4', '1', '228', '56', '8', '0e698c7ec2d718b658fa287c45929571', '40', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335010', 'Hà hoa hoa mị', '280', '35', '28', '9', '233', '65', '59', '', '280', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2332350', 'Bạn binh đội trường', '3510', '440', '405', '50', '270', '98', '325', '', '3510', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335009', 'Hà hoa hoa mị', '280', '35', '28', '9', '233', '65', '59', '', '280', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334920', 'Lão hổ', '70', '8', '6', '2', '229', '57', '15', '', '70', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2333023', 'Ma hóa chi kiếm ma', '550', '68', '56', '18', '243', '72', '135', '', '550', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2333024', 'Ma hóa chi kiếm ma', '550', '68', '56', '18', '243', '72', '135', '', '550', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335064', 'Ma tu sĩ', '400', '49', '40', '13', '236', '69', '98', '', '400', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335065', 'Ma tu sĩ', '400', '49', '40', '13', '236', '69', '98', '', '400', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335071', 'Sơn trư', '40', '4', '4', '1', '228', '56', '7', '', '40', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2332430', 'Bách niên xà quái', '820', '103', '84', '27', '254', '81', '230', '', '820', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334914', 'Sơn trư', '40', '4', '4', '1', '229', '56', '7', '', '40', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334915', 'Sơn trư', '40', '4', '4', '1', '229', '56', '7', '', '40', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334916', 'Lão hổ', '70', '8', '6', '2', '229', '57', '15', '', '70', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334917', 'Lão hổ', '70', '8', '6', '2', '229', '57', '15', '', '70', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334948', 'Long tước', '220', '27', '22', '7', '232', '63', '60', '', '220', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2302474', 'Ma hóa chi thông tí viên', '490', '61', '50', '16', '242', '70', '136', '781a121e409741ff53f5978578067146', '490', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2249197', 'Ma hóa man lang', '700', '87', '71', '23', '251', '78', '173', 'e0e644a3727f0f1671e917f7b376c66f', '700', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2313514', 'Cuồng bạo dã lang', '144', '23', '19', '6', '231', '62', '45', 'bb2a45b7652a7900e7810128a329597e', '190', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334919', 'Lão hổ', '70', '8', '6', '2', '229', '57', '15', '', '70', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335005', 'Cức thử', '880', '110', '90', '29', '256', '83', '247', '', '880', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334820', 'Thị huyết dã lang', '160', '22', '16', '5', '231', '61', '33', '', '160', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2332011', 'Liệt châu ưng', '1860', '252', '226', '37', '265', '90', '278', '', '1860', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2330639', 'Huyết nha', '2010', '272', '244', '40', '268', '93', '340', '', '2010', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2330637', 'Huyết nha', '2010', '272', '244', '40', '268', '93', '340', '', '2010', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2332353', 'Bạn binh đội trường', '3510', '440', '405', '50', '270', '98', '325', '', '3510', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2333682', 'Xích lân thú', '850', '106', '87', '28', '255', '82', '182', '', '850', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334918', 'Lão hổ', '70', '8', '6', '2', '229', '57', '15', '', '70', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2332424', 'Ma hóa chi nha nhân', '610', '76', '62', '20', '244', '74', '130', '', '610', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2333681', 'Xích lân thú', '850', '106', '87', '28', '255', '82', '182', '', '850', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2330634', 'Huyết nha', '2010', '272', '244', '40', '268', '93', '340', '', '2010', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2330635', 'Huyết nha', '2010', '272', '244', '40', '268', '93', '340', '', '2010', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2330646', 'Lôi la yêu', '1960', '265', '238', '39', '266', '92', '293', '', '1960', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334906', 'Ma hóa sơn tiêu', '640', '80', '65', '21', '246', '75', '137', '', '640', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335070', 'Ngạnh sí phong', '40', '5', '3', '1', '228', '55', '7', '', '40', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334572', 'Ma đạo khống thú sư', '790', '99', '81', '26', '253', '80', '169', '', '790', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2330645', 'Lôi la yêu', '1960', '265', '238', '39', '266', '92', '293', '', '1960', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335007', 'Cức thử', '880', '110', '90', '29', '256', '83', '247', '', '880', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334732', 'Oán linh', '1510', '204', '183', '30', '257', '84', '255', '', '1510', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334568', 'Ma đạo khống thú sư', '790', '99', '81', '26', '253', '80', '169', '', '790', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334569', 'Ma đạo khống thú sư', '790', '99', '81', '26', '253', '80', '169', '', '790', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2330273', 'Huyết nha vương', '5860', '594', '558', '55', '267', '94', '468', '', '5860', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2330636', 'Huyết nha', '2010', '272', '244', '40', '268', '93', '340', '', '2010', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2332433', 'Bách niên xà quái', '820', '103', '84', '27', '254', '81', '230', '', '820', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2333453', 'Ma hóa man lang', '700', '87', '71', '23', '251', '78', '173', '', '700', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2332208', 'Kiếp sát giả', '2260', '306', '275', '45', '269', '96', '293', '', '2260', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2333671', 'Thị linh thử yêu', '1610', '218', '195', '32', '262', '86', '240', '', '1610', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2331342', 'Nham ma', '1560', '211', '189', '31', '258', '85', '202', '', '1560', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2332352', 'Bạn binh đội trường', '3510', '440', '405', '50', '270', '98', '325', '', '3510', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2332348', 'Bạn binh đội trường', '3510', '440', '405', '50', '270', '98', '325', '', '3510', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2333670', 'Thị linh thử yêu', '1610', '218', '195', '32', '262', '86', '240', '', '1610', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2331341', 'Nham ma', '1560', '211', '189', '31', '258', '85', '202', '', '1560', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334658', 'Nhập ma man tộc chiến sĩ', '394', '80', '65', '21', '247', '76', '158', 'b0937c2a2e0292043bf9afbc25cc43d7', '640', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2330638', 'Huyết nha', '2010', '272', '244', '40', '268', '93', '340', '', '2010', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334148', 'Ma hóa chi thông tí viên', '490', '61', '50', '16', '242', '70', '104', '', '490', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335000', 'Lôi ưng', '310', '38', '31', '10', '235', '67', '75', '', '310', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2333680', 'Xích lân thú', '850', '106', '87', '28', '255', '82', '182', '', '850', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2332351', 'Bạn binh đội trường', '3510', '440', '405', '50', '270', '98', '325', '', '3510', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2332432', 'Bách niên xà quái', '820', '103', '84', '27', '254', '81', '230', '', '820', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335063', 'Ma tu sĩ', '400', '49', '40', '13', '236', '69', '98', '', '400', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334819', 'Cuồng bạo dã lang', '190', '23', '19', '6', '231', '62', '51', '', '190', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2330644', 'Lôi la yêu', '1960', '265', '238', '39', '266', '92', '293', '', '1960', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335069', 'Ngạnh sí phong', '40', '5', '3', '1', '228', '55', '7', '', '40', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335067', 'Ma tu sĩ', '400', '49', '40', '13', '236', '69', '98', '', '400', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2333679', 'Xích lân thú', '850', '106', '87', '28', '255', '82', '182', '', '850', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2331715', 'Ma hóa man lang', '700', '87', '71', '23', '252', '78', '150', '', '700', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2333678', 'Xích lân thú', '850', '106', '87', '28', '255', '82', '182', '', '850', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2332211', 'Kiếp sát giả', '2260', '306', '275', '45', '269', '96', '293', '', '2260', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334150', 'Ma hóa chi linh hầu', '520', '65', '53', '17', '242', '71', '128', '', '520', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335003', 'Cức thử', '880', '110', '90', '29', '256', '83', '247', '', '880', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334560', 'Ma hóa chi ấu xỉ miêu nữ', '580', '72', '59', '19', '245', '73', '143', '', '580', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2332209', 'Kiếp sát giả', '2260', '306', '275', '45', '269', '96', '293', '', '2260', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2332349', 'Bạn binh đội trường', '3510', '440', '405', '50', '270', '98', '325', '', '3510', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2333455', 'Ma hóa man lang', '700', '87', '71', '23', '251', '78', '173', '', '700', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2332210', 'Kiếp sát giả', '2260', '306', '275', '45', '269', '96', '293', '', '2260', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2332428', 'Bách niên xà quái', '820', '103', '84', '27', '254', '81', '230', '', '820', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334571', 'Ma đạo khống thú sư', '790', '99', '81', '26', '253', '80', '169', '', '790', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334750', 'Xích luyện phúc xà yêu', '1660', '224', '201', '33', '263', '87', '215', '', '1660', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334749', 'Xích luyện phúc xà yêu', '1660', '224', '201', '33', '263', '87', '215', '', '1660', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2333683', 'Xích lân thú', '850', '106', '87', '28', '255', '82', '182', '', '850', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2333684', 'Xích lân thú', '850', '106', '87', '28', '255', '82', '182', '', '850', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334660', 'Nhập ma man tộc chiến sĩ', '640', '80', '65', '21', '247', '76', '158', '2f1d8f88000b56e6b5c3007d36f2c1c8', '640', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334570', 'Ma đạo khống thú sư', '790', '99', '81', '26', '253', '80', '169', '', '790', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334821', 'Thị huyết dã lang', '160', '22', '16', '5', '231', '61', '33', '', '160', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2333672', 'Thị linh thử yêu', '1610', '218', '195', '32', '262', '86', '240', '', '1610', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2333456', 'Ma hóa man lang', '700', '87', '71', '23', '251', '78', '173', '', '700', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334746', 'Xích luyện phúc xà yêu', '1660', '224', '201', '33', '263', '87', '215', '', '1660', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334947', 'Long tước', '220', '27', '22', '7', '232', '63', '60', '', '220', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2334659', 'Nhập ma man tộc chiến sĩ', '640', '80', '65', '21', '247', '76', '158', '', '640', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2330648', 'Lôi la yêu', '1960', '265', '238', '39', '266', '92', '293', '', '1960', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335061', 'Hoa yêu', '110', '15', '7', '3', '230', '58', '26', '', '110', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335062', 'Hoa yêu', '110', '15', '7', '3', '230', '58', '26', '', '110', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335001', 'Lôi ưng', '310', '38', '31', '10', '235', '67', '75', '', '310', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335006', 'Cức thử', '880', '110', '90', '29', '256', '83', '247', '', '880', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335059', 'Hoa yêu', '110', '15', '7', '3', '230', '58', '26', '', '110', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335068', 'Ngạnh sí phong', '40', '5', '3', '1', '228', '55', '7', '', '40', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335072', 'Sơn trư', '40', '4', '4', '1', '228', '56', '7', '', '40', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335073', 'Kê', '100', '10', '0', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335074', 'Trư', '40', '4', '4', '1', '228', '56', '7', '', '110', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335075', 'Ngưu', '40', '4', '4', '1', '228', '56', '7', '', '120', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335076', 'Đinh bá miêu', '40', '4', '4', '1', '228', '56', '7', '', '150', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335077', 'Lộc', '40', '4', '4', '1', '228', '56', '7', '', '140', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335078', 'Đạo thảo nhân', '40', '4', '4', '1', '228', '56', '7', '', '160', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335079', 'Đa câu miêu', '40', '4', '4', '1', '228', '56', '7', '', '160', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335080', 'Lang', '40', '4', '4', '1', '228', '56', '7', '', '170', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335081', 'Thực nhân hoa', '40', '4', '4', '1', '228', '56', '7', '', '180', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335082', 'Độc tri chu', '40', '4', '4', '1', '228', '56', '7', '', '190', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335083', 'Tri chu oa', '40', '4', '4', '1', '228', '56', '7', '', '300', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335084', 'Đa cước trùng', '40', '4', '4', '1', '228', '56', '7', '', '300', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335085', 'Bào nhãn trùng', '40', '4', '4', '1', '228', '56', '7', '', '330', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335086', '<span style=color:blue> hồng giáp trùng </span>', '40', '4', '4', '1', '228', '56', '7', '', '1000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335087', 'Cáp mô', '40', '4', '4', '1', '228', '56', '7', '', '200', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335088', 'Trường trảo đinh bá miêu', '40', '4', '4', '1', '228', '56', '7', '', '200', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335089', 'Bán thú chiến sĩ', '40', '4', '4', '1', '228', '56', '7', '', '220', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335090', 'Bán thú nhân', '40', '4', '4', '1', '228', '56', '7', '', '220', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335091', 'Hạt tử', '40', '4', '4', '1', '228', '56', '7', '', '360', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335092', 'Khô lâu chiến sĩ', '40', '4', '4', '1', '228', '56', '7', '', '360', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335093', 'Khô lâu', '40', '4', '4', '1', '228', '56', '7', '', '360', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335094', 'Khô lâu chiến tương', '40', '4', '4', '1', '228', '56', '7', '', '360', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335095', 'Động thư', '40', '4', '4', '1', '228', '56', '7', '', '360', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335096', '<span style=color:blue> khô lâu tinh linh </span>', '40', '4', '4', '1', '228', '56', '7', '', '2000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335097', 'Cương thi', '40', '4', '4', '1', '228', '56', '7', '', '400', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335098', 'Lạn cương thi', '40', '4', '4', '1', '228', '56', '7', '', '420', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335099', 'Lão đạo cương thi', '40', '4', '4', '1', '228', '56', '7', '', '430', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335100', 'Pháp lão cương thi', '40', '4', '4', '1', '228', '56', '7', '', '440', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335101', 'Ma chú cương thi', '40', '4', '4', '1', '228', '56', '7', '', '450', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335102', '<span style=color:yellow> thi vương </span>', '40', '4', '4', '1', '228', '56', '7', '', '2000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335103', '<span style=color:red> khô lâu </span>', '40', '4', '4', '1', '228', '56', '7', '', '400', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335104', '<span style=color:green> thần thú </span>', '40', '4', '4', '1', '228', '56', '7', '', '1000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335105', 'Đa giác trùng', '40', '4', '4', '1', '228', '56', '7', '', '130', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335106', 'Liệp ưng', '40', '4', '4', '1', '228', '56', '7', '', '130', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335107', 'Khôi giáp trùng', '40', '4', '4', '1', '228', '56', '7', '', '130', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335108', 'Sa mạc tiểu trùng', '40', '4', '4', '1', '228', '56', '7', '', '130', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335109', 'Dương', '40', '4', '4', '1', '228', '56', '7', '', '130', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335110', 'Uy tư nhi tiểu trùng', '40', '4', '4', '1', '228', '56', '7', '', '130', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335111', '<span style=color:green> cự hình đa giác trùng </span>', '40', '4', '4', '1', '228', '56', '7', '', '3000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335112', 'Giác dăng', '40', '4', '4', '1', '228', '56', '7', '', '1000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335113', 'Tiết nga', '40', '4', '4', '1', '228', '56', '7', '', '1000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335114', 'Hồng dã trư', '40', '4', '4', '1', '228', '56', '7', '', '1000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335115', 'Hạt xà', '40', '4', '4', '1', '228', '56', '7', '', '1000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335116', 'Hắc dã trư', '40', '4', '4', '1', '228', '56', '7', '', '1000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335117', '<span style=color:green> bạch dã trư </span>', '40', '4', '4', '1', '228', '56', '7', '', '5000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335118', '<span style=color:purple> siêu cấp hắc dã trư </span>', '40', '4', '4', '1', '228', '56', '7', '', '10000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335119', 'Sơn động biên bức', '40', '4', '4', '1', '228', '56', '7', '', '500', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335120', 'Ám hắc chiến sĩ', '40', '4', '4', '1', '228', '56', '7', '', '500', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335121', 'Phẩn trùng', '40', '4', '4', '1', '228', '56', '7', '', '500', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335122', 'Ốc mã chiến sĩ', '40', '4', '4', '1', '228', '56', '7', '', '700', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335123', 'Hỏa diễm ốc mã', '40', '4', '4', '1', '228', '56', '7', '', '700', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335124', 'Ốc mã dũng sĩ', '40', '4', '4', '1', '228', '56', '7', '', '700', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335125', 'Ốc mã chiến tương', '40', '4', '4', '1', '228', '56', '7', '', '700', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335126', '<span style=color:green> ốc mã vệ sĩ </span>', '40', '4', '4', '1', '228', '56', '7', '', '2500', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335127', '<span style=color:red> ốc mã giáo chủ </span>', '40', '4', '4', '1', '228', '56', '7', '', '5000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335128', 'Hồng xà', '40', '4', '4', '1', '228', '56', '7', '', '130', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335129', 'Hổ xà', '40', '4', '4', '1', '228', '56', '7', '', '130', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335130', 'Tổ mã cung tiến thủ', '40', '4', '4', '1', '228', '56', '7', '', '3000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335131', 'Tổ mã điêu tượng', '40', '4', '4', '1', '228', '56', '7', '', '3000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335132', 'Tổ mã vệ sĩ', '40', '4', '4', '1', '228', '56', '7', '', '3000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335133', 'Đại lão thử', '40', '4', '4', '1', '228', '56', '7', '', '3000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335134', '<span style=color:blue> hộ pháp thiên </span>', '40', '4', '4', '1', '228', '56', '7', '', '10000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335135', '<span style=color:red> tổ mã giáo chủ </span>', '40', '4', '4', '1', '228', '56', '7', '', '15000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335136', 'Nguyệt ma tri chu', '40', '4', '4', '1', '228', '56', '7', '', '1000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335137', 'Huyễn ảnh tri chu', '40', '4', '4', '1', '228', '56', '7', '', '1000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335138', 'Hoa sắc tri chu', '40', '4', '4', '1', '228', '56', '7', '', '1000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335139', 'Hắc giác tri chu', '40', '4', '4', '1', '228', '56', '7', '', '1000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335140', '<span style=color:green> bát cước thủ lĩnh </span>', '40', '4', '4', '1', '228', '56', '7', '', '10000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335141', '<span style=color:green> nhất tinh châu huề đái giả triệu hồn sử </span>', '40', '4', '4', '1', '228', '56', '7', '', '10000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335142', 'Huyết cự nhân', '40', '4', '4', '1', '228', '56', '7', '', '4000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335143', 'Huyết kim cương', '40', '4', '4', '1', '228', '56', '7', '', '4000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335144', 'Xích huyết ma', '40', '4', '4', '1', '228', '56', '7', '', '4000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335145', 'Hôi huyết ma', '40', '4', '4', '1', '228', '56', '7', '', '4000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335146', '<span style=color:blue> hôi huyết ma </span>', '40', '4', '4', '1', '228', '56', '7', '', '20000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335147', '<span style=color:orange> xích nguyệt ác ma </span>', '40', '4', '4', '1', '228', '56', '7', '', '50000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335148', '<span style=color:green> siêu cường khô lâu </span>', '40', '4', '4', '1', '228', '56', '7', '', '2000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335149', '<span style=color:green> nhị tinh châu huề đái giả lợi trảo ma </span>', '40', '4', '4', '1', '228', '56', '7', '', '50000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335150', '<span style=color:green> tam tinh châu huề đái giả liệt hỏa kê </span>', '40', '4', '4', '1', '228', '56', '7', '', '100000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335151', '<span style=color:green> tứ tinh châu huề đái giả luyện kim ma </span>', '40', '4', '4', '1', '228', '56', '7', '', '200000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335152', '<span style=color:green> ngũ tinh châu huề đái giả luyện kim ma </span>', '40', '4', '4', '1', '228', '56', '7', '', '300000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335153', '<span style=color:green> lục tinh châu huề đái giả yêu lực sĩ </span>', '40', '4', '4', '1', '228', '56', '7', '', '400000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335154', '<span style=color:green> thất tinh châu huề đái giả liệt diễm sử </span>', '40', '4', '4', '1', '228', '56', '7', '', '500000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335155', '<span style=color:orange>【 kim thử 】</span>', '40', '4', '4', '1', '228', '56', '7', '', '10000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335156', '<span style=color:orange>【 kim ngưu 】</span>', '40', '4', '4', '1', '228', '56', '7', '', '20000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335157', '<span style=color:orange>【 kim hổ 】</span>', '40', '4', '4', '1', '228', '56', '7', '', '30000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335158', '<span style=color:orange>【 kim thỏ 】</span>', '40', '4', '4', '1', '228', '56', '7', '', '40000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335159', '<span style=color:orange>【 kim long 】</span>', '40', '4', '4', '1', '228', '56', '7', '', '50000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335160', '<span style=color:orange>【 kim xà 】</span>', '40', '4', '4', '1', '228', '56', '7', '', '60000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335161', '<span style=color:orange>【 kim mã 】</span>', '40', '4', '4', '1', '228', '56', '7', '', '70000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335162', '<span style=color:orange>【 kim dương 】</span>', '40', '4', '4', '1', '228', '56', '7', '', '80000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335163', '<span style=color:orange>【 kim hầu 】</span>', '40', '4', '4', '1', '228', '56', '7', '', '90000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335164', '<span style=color:orange>【 kim kê 】</span>', '40', '4', '4', '1', '228', '56', '7', '', '100000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335165', '<span style=color:orange>【 kim cẩu 】</span>', '40', '4', '4', '1', '228', '56', '7', '', '110000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335166', '<span style=color:orange>【 kim trư 】</span>', '40', '4', '4', '1', '228', '56', '7', '', '120000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335167', '<span style=color:red> ám chi hoàng tuyền giáo chủ </span>', '40', '4', '4', '1', '228', '56', '7', '', '50000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335168', '<span style=color:red> ám chi hồng ma giáo chủ </span>', '40', '4', '4', '1', '228', '56', '7', '', '50000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335169', '<span style=color:red> ám chi song đầu huyết ma </span>', '40', '4', '4', '1', '228', '56', '7', '', '50000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335170', '<span style=color:red> ám chi khô lâu tinh linh </span>', '40', '4', '4', '1', '228', '56', '7', '', '50000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335171', '<span style=color:red> ám chi song đầu kim cương </span>', '40', '4', '4', '1', '228', '56', '7', '', '50000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335172', '<span style=color:red> ám chi ốc mã giáo chủ </span>', '40', '4', '4', '1', '228', '56', '7', '', '50000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335173', '<span style=color:red> thỏ tử </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335174', '<span style=color:red> yến tử </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335175', '<span style=color:red> ô quy </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335176', '<span style=color:red> cẩu </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335177', '<span style=color:red> thứ vị </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335178', '<span style=color:orange> hầu tử </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335179', '<span style=color:orange> tùng thử </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335180', '<span style=color:orange> hoán hùng </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335181', '<span style=color:orange> lang </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335182', '<span style=color:yellow> anh vũ </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335183', '<span style=color:yellow> tích dịch </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335184', '<span style=color:yellow> biên bức </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335185', '<span style=color:yellow> đại đường lang </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335186', '<span style=color:yellow> ngạc ngư </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335187', '<span style=color:green> xí nga </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335188', '<span style=color:green> miêu đầu ưng </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335189', '<span style=color:green> hoan </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335190', '<span style=color:green> lão hổ </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335191', '<span style=color:green> dã trư </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335192', '<span style=color:cyan> quai xí nga </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335193', '<span style=color:cyan> tiêm nha bạo long </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335194', '<span style=color:cyan> hỏa tông thử </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335195', '<span style=color:cyan> băng tàm </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335196', '<span style=color:cyan> ưng </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335197', '<span style=color:blue> đà điểu </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335198', '<span style=color:blue> báo tử </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335199', '<span style=color:blue> bắc cực hùng </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335200', '<span style=color:blue> khổng tước </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335201', '<span style=color:blue> kiếm xỉ hổ </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335202', '<span style=color:purple> đại tinh tinh </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335203', '<span style=color:purple> huyền dực thú </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335204', '<span style=color:purple> tê ngưu </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335205', '<span style=color:purple> tuyết điêu </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335206', '<span style=color:purple> viêm hỏa tông thử </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335207', '<span style=color:purple> xi huyền dực thú </span>', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335208', 'Ma long tà nhãn', '40', '4', '4', '1', '228', '56', '7', '', '10000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335209', 'Long huyết oa', '40', '4', '4', '1', '228', '56', '7', '', '10000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335210', 'Ma long thứ oa', '40', '4', '4', '1', '228', '56', '7', '', '10000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335211', 'Ma long đao binh', '40', '4', '4', '1', '228', '56', '7', '', '20000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335212', 'Ma long phá giáp binh', '40', '4', '4', '1', '228', '56', '7', '', '20000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335213', 'Ma long xạ thủ', '40', '4', '4', '1', '228', '56', '7', '', '20000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335214', 'Ma long cự nga', '40', '4', '4', '1', '228', '56', '7', '', '20000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335215', 'Ma long lực sĩ', '40', '4', '4', '1', '228', '56', '7', '', '20000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335216', 'Ma long chiến tương', '40', '4', '4', '1', '228', '56', '7', '', '20000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335217', '<span style=color:orange> ma long giáo chủ </span>', '40', '4', '4', '1', '228', '56', '7', '', '100000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335218', 'Hội viên ma nhãn', '40', '4', '4', '1', '228', '56', '7', '', '500000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335219', 'Hội viên chi nhãn', '40', '4', '4', '1', '228', '56', '7', '', '500000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335220', 'Hội viên giác trùng', '40', '4', '4', '1', '228', '56', '7', '', '500000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335221', 'Hội viên hổ trùng', '40', '4', '4', '1', '228', '56', '7', '', '500000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335222', '<span style=color:orange> hội viên thiên châu </span>', '40', '4', '4', '1', '228', '56', '7', '', '1000000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335223', '<span style=color:orange> chân hội viên thiên châu </span>', '40', '4', '4', '1', '228', '56', '7', '', '1000000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335224', 'Đạo thảo nhân', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335225', 'Đinh bá miêu', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335226', 'Khôi giáp mã nghĩ', '40', '4', '4', '1', '228', '56', '7', '', '20000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335227', 'Mã nghĩ chiến sĩ', '40', '4', '4', '1', '228', '56', '7', '', '20000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335228', 'Mã nghĩ đạo sĩ', '40', '4', '4', '1', '228', '56', '7', '', '20000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335229', 'Bạo độc mã nghĩ', '40', '4', '4', '1', '228', '56', '7', '', '20000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335230', 'Mã nghĩ công nhân', '40', '4', '4', '1', '228', '56', '7', '', '20000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335231', '<span style=color:green> mã nghĩ tương quân </span>', '40', '4', '4', '1', '228', '56', '7', '', '20000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335232', 'Lãng tử nhân quỷ', '40', '4', '4', '1', '228', '56', '7', '', '50000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335233', 'Hủ thực nhân quỷ', '40', '4', '4', '1', '228', '56', '7', '', '50000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335234', 'Cương thi quỷ', '40', '4', '4', '1', '228', '56', '7', '', '50000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335235', '<span style=color:green> hấp huyết quỷ </span>', '40', '4', '4', '1', '228', '56', '7', '', '50000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335236', 'Ngô công', '40', '4', '4', '1', '228', '56', '7', '', '100000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335237', 'Kiềm trùng', '40', '4', '4', '1', '228', '56', '7', '', '100000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335238', 'Hắc sắc ác thư', '40', '4', '4', '1', '228', '56', '7', '', '100000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335239', '<span style=color:green> tà ác kiềm trùng </span>', '40', '4', '4', '1', '228', '56', '7', '', '100000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335240', 'Ngô công', '40', '4', '4', '1', '228', '56', '7', '', '200000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335241', 'Kiềm trùng', '40', '4', '4', '1', '228', '56', '7', '', '200000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335242', 'Hắc sắc ác thư', '40', '4', '4', '1', '228', '56', '7', '', '200000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335243', 'Khiêu khiêu phong', '40', '4', '4', '1', '228', '56', '7', '', '200000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335244', 'Hồ điệp trùng', '40', '4', '4', '1', '228', '56', '7', '', '200000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335245', '<span style=color:red> xúc long thần </span>', '40', '4', '4', '1', '228', '56', '7', '', '500000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335246', 'Cự liêm tri chu', '40', '4', '4', '1', '228', '56', '7', '', '500000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335247', 'Kim trượng tri chu', '40', '4', '4', '1', '228', '56', '7', '', '500000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335248', 'Thánh điện vệ sĩ', '40', '4', '4', '1', '228', '56', '7', '', '500000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335249', 'Cuồng nhiệt hỏa tích dịch', '40', '4', '4', '1', '228', '56', '7', '', '500000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335250', '<span style=color:green>【 lôi viêm chu vương 】</span>', '40', '4', '4', '1', '228', '56', '7', '', '1000000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335251', '10 cấp thủ thành sĩ binh', '40', '4', '4', '1', '228', '56', '7', '', '10000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335252', '20 cấp thủ thành sĩ binh', '40', '4', '4', '1', '228', '56', '7', '', '20000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335253', '30 cấp thủ thành sĩ binh', '40', '4', '4', '1', '228', '56', '7', '', '40000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335254', '40 cấp thủ thành sĩ binh', '40', '4', '4', '1', '228', '56', '7', '', '80000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335255', '50 cấp thủ thành sĩ binh', '40', '4', '4', '1', '228', '56', '7', '', '160000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335256', '60 cấp thủ thành sĩ binh', '40', '4', '4', '1', '228', '56', '7', '', '320000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335257', '70 cấp thủ thành sĩ binh', '40', '4', '4', '1', '228', '56', '7', '', '640000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335258', '80 cấp thủ thành sĩ binh', '40', '4', '4', '1', '228', '56', '7', '', '1280000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335259', '90 cấp thủ thành sĩ binh', '40', '4', '4', '1', '228', '56', '7', '', '2560000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335260', '100 cấp thủ thành sĩ binh', '40', '4', '4', '1', '228', '56', '7', '', '5000000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335261', '110 cấp thủ thành sĩ binh', '40', '4', '4', '1', '228', '56', '7', '', '10000000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335262', '120 cấp thủ thành sĩ binh', '40', '4', '4', '1', '228', '56', '7', '', '20000000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335263', 'Thành môn', '40', '4', '4', '1', '228', '56', '7', '', '1000000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335264', 'Thành môn', '40', '4', '4', '1', '228', '56', '7', '', '10000000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335265', 'Thành môn', '40', '4', '4', '1', '228', '56', '7', '', '5000000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335266', 'Thành môn', '40', '4', '4', '1', '228', '56', '7', '', '2000000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335267', 'Bí cảnh kê', '40', '4', '4', '1', '228', '56', '7', '', '100', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335268', 'Bí cảnh hạt tử', '40', '4', '4', '1', '228', '56', '7', '', '360', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335269', 'Bí cảnh giác dăng', '40', '4', '4', '1', '228', '56', '7', '', '1000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335270', 'Bí cảnh huyết cự nhân', '40', '4', '4', '1', '228', '56', '7', '', '4000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335271', 'Bí cảnh ngô công', '40', '4', '4', '1', '228', '56', '7', '', '100000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335272', 'Bí cảnh ma long tà nhãn', '40', '4', '4', '1', '228', '56', '7', '', '10000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335273', 'Bí cảnh hồ điệp trùng', '40', '4', '4', '1', '228', '56', '7', '', '200000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335274', 'Bí cảnh hỏa tích dịch', '40', '4', '4', '1', '228', '56', '7', '', '200000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335275', 'Bí cảnh sĩ binh', '40', '4', '4', '1', '228', '56', '7', '', '2560000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335276', 'Bí cảnh sơ cấp sĩ binh', '40', '4', '4', '1', '228', '56', '7', '', '5000000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335277', 'Bí cảnh trung cấp sĩ binh', '40', '4', '4', '1', '228', '56', '7', '', '10000000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335278', 'Bí cảnh cao cấp sĩ binh', '40', '4', '4', '1', '228', '56', '7', '', '20000000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335279', '<span style=color:purple>【 ngũ thải thần ngưu 】</span>', '40', '4', '4', '1', '228', '56', '7', '', '50', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335280', 'Vũ dực thí luyện thủ vệ', '40', '4', '4', '1', '228', '56', '7', '', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335281', 'Vũ dực thí luyện BOSS', '40', '4', '4', '1', '228', '56', '7', '', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335282', 'Thiên thê thiêu chiến giả', '40', '4', '4', '1', '228', '56', '7', '', '0', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335283', 'Quý tân bảo tương', '40', '4', '4', '1', '228', '56', '7', '', '5000000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335284', '<span style=color:green>【 quý tân bảo tương 】</span>', '40', '4', '4', '1', '228', '56', '7', '', '5000000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335285', '<span style=color:green>【 công trắc thánh thú 】</span>', '40', '4', '4', '1', '228', '56', '7', '', '150000000', '0', '0');
INSERT INTO `midguaiwu` VALUES ('2335286', '<span style=color:red>【 công trắc thần thú 】</span>', '40', '4', '4', '1', '228', '56', '7', '', '300000000', '0', '0');

-- ----------------------------
-- Table structure for npc
-- ----------------------------
DROP TABLE IF EXISTS `npc`;
CREATE TABLE `npc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nname` text CHARACTER SET utf8 NOT NULL,
  `nsex` varchar(255) NOT NULL,
  `ninfo` text CHARACTER SET utf8 NOT NULL,
  `muban` text NOT NULL,
  `taskid` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of npc
-- ----------------------------
INSERT INTO `npc` VALUES ('11', 'Thôn trường', 'M', 'Trưởng thôn', '', '13,25,24,28');
INSERT INTO `npc` VALUES ('13', 'Vương lão ngũ', 'M', 'Ai... Một người thời gian, thật thật là khó.', '', '24');
INSERT INTO `npc` VALUES ('14', 'Hách bỉnh', 'M', 'Ai, cả ngày đứng ở chỗ này thật sự là nhàm chán.', '', '28');
INSERT INTO `npc` VALUES ('15', 'Chu phú quý [Thương nhân]', 'M', 'Tới tới tới  tiện nghi', 'store.php', '');
INSERT INTO `npc` VALUES ('16', 'Tụ tiên thành chủ [Phù lục]', 'M', 'Tụ Tiên thành Thành chủ', 'EquipmentExchange.php', '');
INSERT INTO `npc` VALUES ('18', 'Vương đại mụ', 'F', 'Vương đại mụ', '', '24,29');
INSERT INTO `npc` VALUES ('17', 'Vân du tiên y [Trị liệu]', 'M', 'Dạo chơi tiên y, tựa hồ đang cái nào đều có thể trông thấy hắn', 'treatment.php', '');
INSERT INTO `npc` VALUES ('19', 'Phù lục đại sư', 'M', 'Kỹ năng đại sư, phụ trách hối đoái kỹ năng', 'SkillExchange.php', '');
INSERT INTO `npc` VALUES ('20', 'Tiểu man', 'F', 'Tiểu Man thật là sợ. . .', '', '20');
INSERT INTO `npc` VALUES ('21', 'Man tộc trường lão', 'M', 'Man tộc trưởng già', '', '19');
INSERT INTO `npc` VALUES ('22', 'Man tộc liệp thủ', 'M', 'Già, cạn bất động', '', '21');
INSERT INTO `npc` VALUES ('23', 'Đoái hoán đại sử', 'M', 'Hối đoái đại sứ', '', '27');
INSERT INTO `npc` VALUES ('24', 'Chính quy tiên y', 'M', 'Chính quy tiên y', 'Treatment_Level1.php', '');
INSERT INTO `npc` VALUES ('25', 'Thành chủ tuyết cầm', 'F', 'So dạo chơi càng lành nghề', '', '');
INSERT INTO `npc` VALUES ('26', 'Môn phái quản lý viên', 'M', 'Thành Viêm Dương thành Thành chủ, Tuyết Cầm', 'Martialartist.php', '');
INSERT INTO `npc` VALUES ('12', '[Nhục điếm] Hứa thị', 'F', 'Nổi tiếng chua ngoa nhất vùng, nhưng không đâu có thịt ngon bằng ả.', '', '');
INSERT INTO `npc` VALUES ('27', '<span style=color:#F75000>[C.hàng Trang bị] Thiết tượng sư </span>', 'M', 'Ở đây ta có đồ quý, lại mua ngay...', '', '');
INSERT INTO `npc` VALUES ('29', '<img src=images/xszdy.png> Hoạt động sứ giả', 'M', 'Hoạt động sứ giả, công cáo các hoạt động quan trọng', '', '');
INSERT INTO `npc` VALUES ('28', '[Dược điếm] Hứa y sinh', 'M', 'Thuốc quý ngàn năm, bổ thận cường dương. 1 người khỏe 3 người vui', '', '');
INSERT INTO `npc` VALUES ('30', '<img src=images/1.gif> Công cáo thiên hạ', 'M', 'Bảng thông báo hoạt động và sự kiện', '', '');
INSERT INTO `npc` VALUES ('31', '[Vệ binh] Thượng đức', 'M', 'Lâu lắm mới thấy ngươi ghé thăm!!!', '', '');
INSERT INTO `npc` VALUES ('32', '[Tạp hóa] Chu lão bản', 'M', 'Nhiều năm bôn tẩu tại các nơi, làm một chút chênh lệch giá mua bán, căn cứ thương nhân nguyên tắc, sẽ ngoài định mức thu lấy một chút đạo cụ.', '', '');
INSERT INTO `npc` VALUES ('33', '[Kỹ năng cao thủ] Phích lịch tôn giả', 'M', 'Các đời Tế Tự đều là thuộc nhất mạch, trong cõi u minh tựa hồ cũng đã nhất định vận mệnh của hắn, hắn cũng một mực thông qua ma pháp trận dốc lòng nghiên cứu các loại pháp thuật.', '', '');
INSERT INTO `npc` VALUES ('34', 'Tiểu tịch', 'M', 'Nhiều năm bôn tẩu tại các nơi, làm một chút chênh lệch giá mua bán, căn cứ thương nhân nguyên tắc, sẽ ngoài định mức thu lấy một chút đạo cụ.', '', '');
INSERT INTO `npc` VALUES ('35', 'Quan binh', 'M', 'Thủ thành quan binh, tướng mạo nhưng dung mạo không đẹp nhìn.', '', '');
INSERT INTO `npc` VALUES ('36', '[Mỹ dung sư] Xương khuê', 'F', 'Nhu thiện lương, khéo hiểu lòng người, nhu thuận thông minh, quan tâm hiền lành, thanh tú động lòng người, ngại ngùng ngượng ngùng, tựa hồ nam nhân ưa thích phẩm chất đều tập trung ở trên người nàng.', '', '');
INSERT INTO `npc` VALUES ('37', '[Tạp hóa điếm] dược lang', 'M', 'Ông chủ cửa hàng tạp hóa, nhìn như lười biếng, kì thực khôn khéo hơn người.', '', '');
INSERT INTO `npc` VALUES ('38', 'Hoàng cung hộ vệ', 'M', 'Một tên hoàng cung hộ vệ, chuyên môn đối phó những cái kia nghĩ trà trộn vào đến người gây chuyện.', '', '');
INSERT INTO `npc` VALUES ('39', 'Hành chính quan', 'M', 'Hoàng cung quản gia, trong hoàng cung sự vụ lớn nhỏ đều cần hướng hắn bẩm báo.', '', '');
INSERT INTO `npc` VALUES ('40', 'Lệ linh', 'M', 'Một tên thể trạng khôi ngô phụ nhân, nhìn cực kỳ bưu hãn.', '', '');
INSERT INTO `npc` VALUES ('41', 'Ma sùng', 'M', 'Một tên thể trạng khôi ngô võ nhân, nhìn cực kỳ bưu hãn.', '', '');
INSERT INTO `npc` VALUES ('42', '[Khách sạn] Chu mạo', 'M', 'Đây là khách sạn lão bản, nhìn có chút công phu.', '', '');
INSERT INTO `npc` VALUES ('43', '[Nhục điếm] Bộ lạc', 'M', 'Nhưng từ khi bại bởi xâm nhập lăng mộ thi trách sau liền nản lòng thoái chí, từ đây tránh tội dân ở giữa.', '', '');
INSERT INTO `npc` VALUES ('44', 'Tây thành môn sĩ binh', 'M', 'Trông coi cửa thành binh sĩ, chuyên môn đối phó những cái kia nghĩ trà trộn vào đến người gây chuyện.', '', '');
INSERT INTO `npc` VALUES ('45', '<span style=color:red> Pháp lão cương thi </span>', 'M', 'Là bởi vì phạm phải sai lầm mà bị đuổi ra miếu hòa thượng thi thể thụ trong sơn động kỳ quái lực lượng phục sinh mà thành. Bình thường dưới đất, một khi nghe được có tiếng bước chân liền sẽ từ dưới đất leo ra, dùng hai tay vồ mạnh. Cùng những cương thi khác khác biệt, hắn không thể trọng sinh.', '', '');
INSERT INTO `npc` VALUES ('46', 'Minh trọng đạo quán quán chủ', 'M', 'Một vị tinh thần lão nhân quắc thước, dưới trán có dài gần tấc râu bạc trắng.', '', '');
INSERT INTO `npc` VALUES ('47', '[Tạp hóa]Trương thị', 'F', 'Tại bộ lạc, căn cứ thương nhân nguyên tắc, sẽ ngoài định mức thu lấy một chút đạo cụ.', '', '');
INSERT INTO `npc` VALUES ('48', '[Thương khố] Khâu thúc', 'M', 'Đây là thương khố lão bản, nhìn có chút công phu.', '', '');
INSERT INTO `npc` VALUES ('49', '[Dược điếm] Lăng phong', 'M', 'Danh xưng \"Y một người tiện độc một người\" dùng thuốc kỳ tài kiêm chế độc cao thủ. Giỏi về bào chế các loại tốt nhất dược liệu cùng kịch độc độc dược.', '', '');
INSERT INTO `npc` VALUES ('50', '<span style=color:#F75000>[Trang bị] A long </span>', 'M', 'Minh nặng tiệm thợ rèn chưởng quỹ kiêm tiểu nhị. Chỗ đánh chế binh khí mặc dù mất tại tinh xảo, lại giá cả lợi ích thực tế, già trẻ không gạt, là người mới học lựa chọn tốt nhất.', '', '');
INSERT INTO `npc` VALUES ('51', '[Ký thụ thương] Thành tú', 'M', 'Mỗi ngày đều chỉ là yên lặng trợ giúp biên cảnh thôn xóm thanh lý hàng hóa', '', '');
INSERT INTO `npc` VALUES ('52', '[Lầu Xanh]Thiện anh', 'F', 'Công tử à, vào đây thư giãn với thiếp đi', '', '');
INSERT INTO `npc` VALUES ('53', '[Tài liêu thương] Thiết trụ', 'M', 'Một cái gật gù đắc ý ngay tại ngâm thơ vật liệu thương.', '', '');
INSERT INTO `npc` VALUES ('54', '[Thư điếm] Cơ hán', 'M', 'Sống đến già học đến già là câu thiền ngoài miệng của hắn, đầy bụng kinh luân hắn thông hiểu Truyền Kỳ đại lục bên trên từng cái nghề nghiệp kỹ năng.', '', '');
INSERT INTO `npc` VALUES ('55', '[Dược điếm] Ngọc phân', 'F', 'Danh xưng \"Y một người tiện độc một người\" dùng thuốc kỳ tài kiêm chế độc cao thủ. Giỏi về bào chế các loại tốt nhất dược liệu cùng kịch độc độc dược.', '', '');

-- ----------------------------
-- Table structure for playerchongwu
-- ----------------------------
DROP TABLE IF EXISTS `playerchongwu`;
CREATE TABLE `playerchongwu` (
  `cwid` int(11) NOT NULL AUTO_INCREMENT,
  `cwname` varchar(255) NOT NULL,
  `cwhp` int(11) NOT NULL,
  `cwmaxhp` int(11) NOT NULL,
  `cwgj` int(11) NOT NULL,
  `cwfy` int(11) NOT NULL,
  `cwbj` int(11) NOT NULL,
  `cwxx` int(11) NOT NULL,
  `cwlv` int(11) NOT NULL,
  `cwexp` int(11) NOT NULL,
  `tool1` int(11) NOT NULL,
  `tool2` int(11) NOT NULL,
  `tool3` int(11) NOT NULL,
  `tool4` int(11) NOT NULL,
  `tool5` int(11) NOT NULL,
  `tool6` int(11) NOT NULL,
  `sid` varchar(255) NOT NULL,
  `uphp` int(11) NOT NULL,
  `upgj` int(11) NOT NULL,
  `upfy` int(11) NOT NULL,
  `cwpz` int(11) NOT NULL,
  PRIMARY KEY (`cwid`)
) ENGINE=MyISAM AUTO_INCREMENT=3652 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of playerchongwu
-- ----------------------------
INSERT INTO `playerchongwu` VALUES ('3562', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'c8268cce88c9be2636fd0c06e03bee40', '23', '5', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3548', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '592857bc812f813ed52fa8b187582fc2', '20', '5', '7', '2');
INSERT INTO `playerchongwu` VALUES ('2861', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '4', '4', '2');
INSERT INTO `playerchongwu` VALUES ('3547', 'Khốc khốc long', '276', '276', '50', '48', '0', '0', '12', '5055', '0', '0', '0', '0', '0', '0', '592857bc812f813ed52fa8b187582fc2', '12', '3', '3', '3');
INSERT INTO `playerchongwu` VALUES ('3546', 'Đản đản kê', '50', '110', '9', '10', '0', '0', '2', '104', '0', '0', '0', '0', '0', '0', '8bf2c38ba9d08fd609a3d40b35ea659c', '9', '3', '5', '1');
INSERT INTO `playerchongwu` VALUES ('3545', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '8bf2c38ba9d08fd609a3d40b35ea659c', '23', '3', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3544', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '5f2f53403bda85d4fee078d944dd6d7e', '16', '3', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3570', 'Khốc khốc long', '78', '122', '14', '10', '0', '0', '3', '197', '0', '0', '0', '0', '0', '0', '4e079b4084dcdd84cf4393a003a38283', '11', '4', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3543', 'Khốc khốc long', '-4', '100', '6', '4', '0', '0', '1', '120', '0', '0', '0', '0', '0', '0', '5f2f53403bda85d4fee078d944dd6d7e', '24', '3', '8', '3');
INSERT INTO `playerchongwu` VALUES ('2868', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '6', '3', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3541', 'Lưu lưu mã', '560', '560', '98', '165', '0', '0', '24', '1391', '0', '0', '0', '0', '0', '0', '775c0ff651b405a676fc9ee1729302f4', '18', '4', '6', '1');
INSERT INTO `playerchongwu` VALUES ('3536', 'Khốc khốc long', '227', '290', '26', '84', '0', '0', '11', '3511', '0', '0', '0', '0', '0', '0', 'c4339dfb63d53dbe95ff3f1297cd889d', '16', '2', '7', '2');
INSERT INTO `playerchongwu` VALUES ('2873', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '7', '6', '8', '3');
INSERT INTO `playerchongwu` VALUES ('3535', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'a825614fde737c782675ea17eb88b206', '14', '5', '6', '2');
INSERT INTO `playerchongwu` VALUES ('3534', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'a825614fde737c782675ea17eb88b206', '9', '5', '5', '3');
INSERT INTO `playerchongwu` VALUES ('3533', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '68165aaec3d39dae1839882ac72de2b2', '12', '3', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3532', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'cb3012bb47999fed316151ffd12a0da6', '13', '3', '5', '2');
INSERT INTO `playerchongwu` VALUES ('3531', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'cb3012bb47999fed316151ffd12a0da6', '8', '3', '4', '2');
INSERT INTO `playerchongwu` VALUES ('3530', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'b93636fdca6a8e1edef742d667e18c8a', '9', '2', '8', '4');
INSERT INTO `playerchongwu` VALUES ('3529', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'b93636fdca6a8e1edef742d667e18c8a', '10', '5', '3', '2');
INSERT INTO `playerchongwu` VALUES ('3528', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '91ec5e467841b175a85ca5ef02ef7aa9', '15', '5', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3527', 'Bổn bổn ngưu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '91ec5e467841b175a85ca5ef02ef7aa9', '9', '2', '5', '3');
INSERT INTO `playerchongwu` VALUES ('3526', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0f16fd6082fd46fdeab5a5bb6be32dc4', '8', '5', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3525', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0f16fd6082fd46fdeab5a5bb6be32dc4', '24', '4', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3524', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '684051aec8cc8472206087dc2658ae7c', '20', '4', '4', '2');
INSERT INTO `playerchongwu` VALUES ('2888', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '6', '6', '1');
INSERT INTO `playerchongwu` VALUES ('3523', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '684051aec8cc8472206087dc2658ae7c', '15', '3', '7', '1');
INSERT INTO `playerchongwu` VALUES ('2890', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '6', '5', '6', '1');
INSERT INTO `playerchongwu` VALUES ('2892', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '8', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3522', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af54af4a9b880d02dcd60fc1b0524dd7', '9', '3', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3521', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af54af4a9b880d02dcd60fc1b0524dd7', '15', '4', '7', '2');
INSERT INTO `playerchongwu` VALUES ('3520', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '28f1763df68c4afdf505d27c70a8983b', '9', '2', '5', '2');
INSERT INTO `playerchongwu` VALUES ('2896', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '8', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3519', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '28f1763df68c4afdf505d27c70a8983b', '20', '4', '3', '3');
INSERT INTO `playerchongwu` VALUES ('3518', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '2f6777e7be5fed1b94c413bf443efc5f', '16', '5', '5', '5');
INSERT INTO `playerchongwu` VALUES ('3516', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'ee1a9e463a83eeeaf317e9dc8a1c35a8', '19', '4', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3515', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'ee1a9e463a83eeeaf317e9dc8a1c35a8', '18', '5', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3514', 'Bổn bổn ngưu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'ce9e08f15f3a59f355798b90bd0d3fb4', '13', '4', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3513', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'ce9e08f15f3a59f355798b90bd0d3fb4', '18', '5', '4', '0');
INSERT INTO `playerchongwu` VALUES ('2904', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '6', '4', '6', '1');
INSERT INTO `playerchongwu` VALUES ('3512', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'b102ed029de6d7454172c3352b103110', '9', '3', '5', '3');
INSERT INTO `playerchongwu` VALUES ('3511', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'b102ed029de6d7454172c3352b103110', '9', '4', '3', '1');
INSERT INTO `playerchongwu` VALUES ('2907', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '4', '4', '2');
INSERT INTO `playerchongwu` VALUES ('3469', 'Bổn bổn ngưu', '92', '100', '6', '4', '0', '0', '1', '34', '0', '0', '0', '0', '0', '0', 'ca0904a308346c194ff8ec780ccf6736', '8', '2', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3468', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '4f49b5eb675277e6401832966f112262', '25', '5', '5', '0');
INSERT INTO `playerchongwu` VALUES ('2910', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '6', '8', '4', '0');
INSERT INTO `playerchongwu` VALUES ('2912', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '6', '5', '5', '1');
INSERT INTO `playerchongwu` VALUES ('2913', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '6', '5', '1');
INSERT INTO `playerchongwu` VALUES ('2914', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '3', '8', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3467', 'Lưu lưu mã', '91', '100', '6', '4', '0', '0', '1', '8', '0', '0', '0', '0', '0', '0', '4f49b5eb675277e6401832966f112262', '23', '2', '4', '0');
INSERT INTO `playerchongwu` VALUES ('2916', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '7', '6', '1');
INSERT INTO `playerchongwu` VALUES ('2917', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '3', '5', '7', '2');
INSERT INTO `playerchongwu` VALUES ('3465', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'ea5a17b7f6c42320f7c242f2871a0f8d', '21', '5', '3', '0');
INSERT INTO `playerchongwu` VALUES ('2919', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '7', '4', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3466', 'Lưu lưu mã', '247', '262', '30', '64', '0', '0', '7', '287', '0', '0', '0', '0', '0', '0', 'ea5a17b7f6c42320f7c242f2871a0f8d', '21', '3', '8', '3');
INSERT INTO `playerchongwu` VALUES ('2922', 'Mị mị dương', '100', '276', '182', '132', '0', '0', '17', '5205', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '8', '6', '4');
INSERT INTO `playerchongwu` VALUES ('2923', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '5', '6', '1');
INSERT INTO `playerchongwu` VALUES ('2924', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '8', '5', '0');
INSERT INTO `playerchongwu` VALUES ('2925', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '6', '6', '0');
INSERT INTO `playerchongwu` VALUES ('2926', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '4', '8', '0');
INSERT INTO `playerchongwu` VALUES ('2927', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '3', '5', '7', '0');
INSERT INTO `playerchongwu` VALUES ('2928', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '4', '8', '3');
INSERT INTO `playerchongwu` VALUES ('2929', 'Mị mị dương', '28', '352', '96', '58', '0', '0', '13', '5588', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '8', '4', '5');
INSERT INTO `playerchongwu` VALUES ('2930', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '4', '8', '3');
INSERT INTO `playerchongwu` VALUES ('2931', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '7', '6', '3');
INSERT INTO `playerchongwu` VALUES ('2932', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '4', '5', '1');
INSERT INTO `playerchongwu` VALUES ('2933', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '7', '6', '2');
INSERT INTO `playerchongwu` VALUES ('2934', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '4', '8', '1');
INSERT INTO `playerchongwu` VALUES ('2935', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '6', '8', '1');
INSERT INTO `playerchongwu` VALUES ('2936', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '6', '5', '0');
INSERT INTO `playerchongwu` VALUES ('2937', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '3', '4', '0');
INSERT INTO `playerchongwu` VALUES ('2938', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '8', '5', '0');
INSERT INTO `playerchongwu` VALUES ('2939', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '6', '8', '3');
INSERT INTO `playerchongwu` VALUES ('2940', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '5', '5', '5');
INSERT INTO `playerchongwu` VALUES ('2941', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '3', '6', '2');
INSERT INTO `playerchongwu` VALUES ('2942', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '8', '5', '1');
INSERT INTO `playerchongwu` VALUES ('2943', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '8', '3', '0');
INSERT INTO `playerchongwu` VALUES ('2944', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '8', '5', '1');
INSERT INTO `playerchongwu` VALUES ('2945', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '7', '7', '3');
INSERT INTO `playerchongwu` VALUES ('2946', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '4', '7', '0');
INSERT INTO `playerchongwu` VALUES ('2947', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '8', '7', '0');
INSERT INTO `playerchongwu` VALUES ('2948', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '5', '5', '0');
INSERT INTO `playerchongwu` VALUES ('2949', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '7', '5', '0');
INSERT INTO `playerchongwu` VALUES ('2950', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '3', '6', '0');
INSERT INTO `playerchongwu` VALUES ('2951', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '7', '4', '1');
INSERT INTO `playerchongwu` VALUES ('2952', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '8', '5', '2');
INSERT INTO `playerchongwu` VALUES ('2953', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '4', '7', '3');
INSERT INTO `playerchongwu` VALUES ('2954', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '6', '3', '0');
INSERT INTO `playerchongwu` VALUES ('2955', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '7', '4', '3');
INSERT INTO `playerchongwu` VALUES ('2956', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '7', '4', '0');
INSERT INTO `playerchongwu` VALUES ('2957', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '4', '7', '1');
INSERT INTO `playerchongwu` VALUES ('2958', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '8', '7', '1');
INSERT INTO `playerchongwu` VALUES ('2959', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '6', '8', '0');
INSERT INTO `playerchongwu` VALUES ('2960', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '5', '3', '4');
INSERT INTO `playerchongwu` VALUES ('2962', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '7', '5', '0');
INSERT INTO `playerchongwu` VALUES ('2963', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '8', '6', '0');
INSERT INTO `playerchongwu` VALUES ('2964', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '5', '5', '0');
INSERT INTO `playerchongwu` VALUES ('2965', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '8', '3', '0');
INSERT INTO `playerchongwu` VALUES ('2966', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '8', '5', '1');
INSERT INTO `playerchongwu` VALUES ('2967', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '3', '4', '2');
INSERT INTO `playerchongwu` VALUES ('2968', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '4', '4', '1');
INSERT INTO `playerchongwu` VALUES ('2969', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '7', '8', '0');
INSERT INTO `playerchongwu` VALUES ('2970', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '4', '3', '0');
INSERT INTO `playerchongwu` VALUES ('2971', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '6', '4', '1');
INSERT INTO `playerchongwu` VALUES ('2972', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '8', '8', '0');
INSERT INTO `playerchongwu` VALUES ('2973', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '7', '6', '2');
INSERT INTO `playerchongwu` VALUES ('2974', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '8', '8', '2');
INSERT INTO `playerchongwu` VALUES ('2975', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '8', '3', '1');
INSERT INTO `playerchongwu` VALUES ('2976', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '7', '4', '6', '4');
INSERT INTO `playerchongwu` VALUES ('2977', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '7', '7', '1');
INSERT INTO `playerchongwu` VALUES ('2978', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '6', '6', '3', '2');
INSERT INTO `playerchongwu` VALUES ('2979', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '7', '4', '1');
INSERT INTO `playerchongwu` VALUES ('2980', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '3', '4', '0');
INSERT INTO `playerchongwu` VALUES ('2981', 'Bổn bổn ngưu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '8', '6', '1');
INSERT INTO `playerchongwu` VALUES ('2982', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '5', '4', '0');
INSERT INTO `playerchongwu` VALUES ('2983', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '7', '3', '2');
INSERT INTO `playerchongwu` VALUES ('2984', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '8', '6', '0');
INSERT INTO `playerchongwu` VALUES ('2985', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '3', '4', '7', '0');
INSERT INTO `playerchongwu` VALUES ('2986', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '5', '7', '2');
INSERT INTO `playerchongwu` VALUES ('2987', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '8', '4', '2');
INSERT INTO `playerchongwu` VALUES ('2988', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '7', '6', '1');
INSERT INTO `playerchongwu` VALUES ('2989', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '7', '5', '0');
INSERT INTO `playerchongwu` VALUES ('2990', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '3', '5', '2');
INSERT INTO `playerchongwu` VALUES ('2991', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '7', '4', '4');
INSERT INTO `playerchongwu` VALUES ('2992', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '4', '3', '0');
INSERT INTO `playerchongwu` VALUES ('2993', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '3', '7', '2');
INSERT INTO `playerchongwu` VALUES ('2994', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '5', '5', '1');
INSERT INTO `playerchongwu` VALUES ('2995', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '4', '3', '0');
INSERT INTO `playerchongwu` VALUES ('2996', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '3', '4', '1');
INSERT INTO `playerchongwu` VALUES ('2997', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '7', '3', '8', '0');
INSERT INTO `playerchongwu` VALUES ('2998', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '5', '6', '1');
INSERT INTO `playerchongwu` VALUES ('2999', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '7', '5', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3000', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '3', '5', '4');
INSERT INTO `playerchongwu` VALUES ('3001', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '7', '6', '6', '1');
INSERT INTO `playerchongwu` VALUES ('3002', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '8', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3003', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '6', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3004', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '3', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3005', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '3', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3006', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '7', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3007', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '7', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3008', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '7', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3009', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '3', '6', '1');
INSERT INTO `playerchongwu` VALUES ('3010', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '3', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3011', 'Bổn bổn ngưu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '5', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3012', 'Bổn bổn ngưu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '8', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3013', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '3', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3014', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '8', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3015', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '3', '5', '0');
INSERT INTO `playerchongwu` VALUES ('3016', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '7', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3017', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '6', '5', '2');
INSERT INTO `playerchongwu` VALUES ('3067', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '5', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3018', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '8', '6', '1');
INSERT INTO `playerchongwu` VALUES ('3019', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '7', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3020', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '7', '7', '3', '2');
INSERT INTO `playerchongwu` VALUES ('3021', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '7', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3022', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '5', '3', '1');
INSERT INTO `playerchongwu` VALUES ('3023', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '4', '4', '2');
INSERT INTO `playerchongwu` VALUES ('3024', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '6', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3025', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '4', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3026', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '7', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3027', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '6', '4', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3028', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '4', '5', '3');
INSERT INTO `playerchongwu` VALUES ('3029', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '7', '8', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3030', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '7', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3031', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '5', '5', '1');
INSERT INTO `playerchongwu` VALUES ('3032', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '6', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3033', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '8', '6', '1');
INSERT INTO `playerchongwu` VALUES ('3034', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '3', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3035', 'Bổn bổn ngưu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '6', '8', '2');
INSERT INTO `playerchongwu` VALUES ('3036', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '4', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3037', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '8', '8', '3');
INSERT INTO `playerchongwu` VALUES ('3038', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '7', '5', '3');
INSERT INTO `playerchongwu` VALUES ('3039', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '6', '5', '3');
INSERT INTO `playerchongwu` VALUES ('3040', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '5', '6', '2');
INSERT INTO `playerchongwu` VALUES ('3041', 'Bổn bổn ngưu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '3', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3042', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '4', '6', '1');
INSERT INTO `playerchongwu` VALUES ('3043', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '6', '5', '1');
INSERT INTO `playerchongwu` VALUES ('3044', 'Bổn bổn ngưu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '8', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3045', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '8', '5', '0');
INSERT INTO `playerchongwu` VALUES ('3046', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '7', '7', '2');
INSERT INTO `playerchongwu` VALUES ('3047', 'Bổn bổn ngưu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '5', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3048', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '5', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3049', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '8', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3050', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '5', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3051', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '7', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3052', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '6', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3053', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '4', '3', '1');
INSERT INTO `playerchongwu` VALUES ('3054', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '3', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3055', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '6', '6', '2');
INSERT INTO `playerchongwu` VALUES ('3056', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '4', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3057', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '5', '4', '3');
INSERT INTO `playerchongwu` VALUES ('3058', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '3', '5', '1');
INSERT INTO `playerchongwu` VALUES ('3059', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '6', '5', '1');
INSERT INTO `playerchongwu` VALUES ('3060', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '3', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3061', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '4', '3', '1');
INSERT INTO `playerchongwu` VALUES ('3062', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '8', '3', '3');
INSERT INTO `playerchongwu` VALUES ('3063', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '7', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3064', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '6', '7', '2');
INSERT INTO `playerchongwu` VALUES ('3065', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '7', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3066', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '4', '3', '1');
INSERT INTO `playerchongwu` VALUES ('3068', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '6', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3069', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '4', '4', '3');
INSERT INTO `playerchongwu` VALUES ('3070', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '7', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3071', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '3', '8', '3');
INSERT INTO `playerchongwu` VALUES ('3072', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '5', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3073', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '5', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3074', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '8', '5', '2');
INSERT INTO `playerchongwu` VALUES ('3075', 'Bổn bổn ngưu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '5', '3', '2');
INSERT INTO `playerchongwu` VALUES ('3076', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '5', '4', '2');
INSERT INTO `playerchongwu` VALUES ('3077', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '3', '7', '4', '2');
INSERT INTO `playerchongwu` VALUES ('3078', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '6', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3079', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '3', '5', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3080', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '3', '5', '1');
INSERT INTO `playerchongwu` VALUES ('3081', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '3', '6', '1');
INSERT INTO `playerchongwu` VALUES ('3082', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '7', '7', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3083', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '3', '7', '2');
INSERT INTO `playerchongwu` VALUES ('3084', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '6', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3085', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '7', '8', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3086', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '8', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3087', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '4', '6', '4');
INSERT INTO `playerchongwu` VALUES ('3088', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '6', '6', '1');
INSERT INTO `playerchongwu` VALUES ('3089', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '5', '7', '3');
INSERT INTO `playerchongwu` VALUES ('3090', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '7', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3091', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '7', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3092', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '7', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3093', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '3', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3094', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '4', '5', '0');
INSERT INTO `playerchongwu` VALUES ('3095', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '6', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3096', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '5', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3097', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '7', '8', '6', '1');
INSERT INTO `playerchongwu` VALUES ('3098', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '3', '4', '5', '0');
INSERT INTO `playerchongwu` VALUES ('3099', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '8', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3100', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '4', '6', '1');
INSERT INTO `playerchongwu` VALUES ('3101', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '6', '5', '1');
INSERT INTO `playerchongwu` VALUES ('3102', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '4', '8', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3103', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '5', '5', '0');
INSERT INTO `playerchongwu` VALUES ('3104', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '5', '6', '2');
INSERT INTO `playerchongwu` VALUES ('3105', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '3', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3106', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '4', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3107', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '3', '8', '8', '2');
INSERT INTO `playerchongwu` VALUES ('3108', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '6', '5', '1');
INSERT INTO `playerchongwu` VALUES ('3109', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '8', '7', '2');
INSERT INTO `playerchongwu` VALUES ('3110', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '4', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3111', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '5', '3', '1');
INSERT INTO `playerchongwu` VALUES ('3112', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '6', '3', '8', '4');
INSERT INTO `playerchongwu` VALUES ('3113', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '7', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3114', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '4', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3115', 'Bổn bổn ngưu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '7', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3116', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '3', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3117', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '6', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3118', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '4', '6', '2');
INSERT INTO `playerchongwu` VALUES ('3119', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '6', '3', '1');
INSERT INTO `playerchongwu` VALUES ('3120', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '7', '6', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3121', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '3', '8', '3', '4');
INSERT INTO `playerchongwu` VALUES ('3122', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '5', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3123', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '7', '8', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3124', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '6', '6', '1');
INSERT INTO `playerchongwu` VALUES ('3125', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '5', '5', '0');
INSERT INTO `playerchongwu` VALUES ('3126', 'Bổn bổn ngưu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '5', '5', '1');
INSERT INTO `playerchongwu` VALUES ('3127', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '6', '6', '1');
INSERT INTO `playerchongwu` VALUES ('3128', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '7', '5', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3129', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '5', '5', '4');
INSERT INTO `playerchongwu` VALUES ('3130', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '8', '3', '3');
INSERT INTO `playerchongwu` VALUES ('3131', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '8', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3132', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '4', '7', '2');
INSERT INTO `playerchongwu` VALUES ('3133', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '4', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3134', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '3', '6', '4');
INSERT INTO `playerchongwu` VALUES ('3135', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '6', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3136', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '7', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3137', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '3', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3138', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '6', '7', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3139', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '7', '5', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3140', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '4', '3', '1');
INSERT INTO `playerchongwu` VALUES ('3141', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '6', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3142', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '4', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3143', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '4', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3144', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '4', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3145', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '6', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3146', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '7', '4', '3');
INSERT INTO `playerchongwu` VALUES ('3147', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '7', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3148', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '7', '6', '3');
INSERT INTO `playerchongwu` VALUES ('3149', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '7', '5', '5', '0');
INSERT INTO `playerchongwu` VALUES ('3150', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '7', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3151', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '6', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3152', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '6', '3', '2');
INSERT INTO `playerchongwu` VALUES ('3153', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '6', '6', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3154', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '5', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3155', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '7', '5', '1');
INSERT INTO `playerchongwu` VALUES ('3156', 'Bổn bổn ngưu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '4', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3157', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '6', '4', '4');
INSERT INTO `playerchongwu` VALUES ('3158', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '4', '8', '4');
INSERT INTO `playerchongwu` VALUES ('3159', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '5', '3', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3160', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '3', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3161', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '7', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3162', 'Bổn bổn ngưu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '6', '5', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3163', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '4', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3164', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '6', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3165', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '7', '6', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3166', 'Bổn bổn ngưu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '3', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3167', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '5', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3168', 'Linh lỵ thử', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '3', '4', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3169', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '3', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3170', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '3', '7', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3171', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '4', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3172', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '5', '8', '3', '2');
INSERT INTO `playerchongwu` VALUES ('3173', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '3', '5', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3174', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '3', '5', '0');
INSERT INTO `playerchongwu` VALUES ('3175', 'Bổn bổn ngưu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '4', '8', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3176', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '5', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3177', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '7', '3', '3', '2');
INSERT INTO `playerchongwu` VALUES ('3178', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '4', '3', '1');
INSERT INTO `playerchongwu` VALUES ('3179', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '8', '6', '8', '3');
INSERT INTO `playerchongwu` VALUES ('3180', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '6', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3181', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '7', '7', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3182', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '3', '8', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3183', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '8', '5', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3360', 'Lưu lưu mã', '1024', '1040', '238', '352', '0', '0', '21', '6232', '0', '0', '0', '0', '0', '0', '36f30db66d6fe42f34a91d15b6097af0', '25', '5', '8', '5');
INSERT INTO `playerchongwu` VALUES ('3539', 'Bổn bổn ngưu', '92', '100', '6', '4', '0', '0', '1', '5', '0', '0', '0', '0', '0', '0', '12b77bc3aa3cdf5b2283684271bc916c', '18', '4', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3561', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '9b705d4e6713ac17822161af76f7c44f', '9', '2', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3558', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'b88aee7cafd66550817be8a5ea6e0aaf', '14', '3', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3189', 'Bổn bổn ngưu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '19', '3', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3190', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '19', '4', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3191', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1fd446658a64b6b831a10b3136351e6d', '25', '5', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3192', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1fd446658a64b6b831a10b3136351e6d', '22', '4', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3193', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '300a6f8086e83390efd5dbe046289410', '12', '4', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3194', 'Bổn bổn ngưu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '300a6f8086e83390efd5dbe046289410', '18', '3', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3538', 'Linh lỵ thử', '203', '212', '18', '28', '0', '0', '5', '489', '0', '0', '0', '0', '0', '0', 'bb2a45b7652a7900e7810128a329597e', '25', '3', '5', '1');
INSERT INTO `playerchongwu` VALUES ('3540', 'Suất suất hầu', '88', '100', '6', '4', '0', '0', '1', '17', '0', '0', '0', '0', '0', '0', '12b77bc3aa3cdf5b2283684271bc916c', '25', '4', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3197', 'Chiêu tài trư', '717', '721', '75', '234', '0', '0', '24', '18148', '0', '0', '0', '0', '0', '0', '43e4c5c6dda6740216e3bd54ff200c15', '21', '2', '8', '3');
INSERT INTO `playerchongwu` VALUES ('3499', 'Lưu lưu mã', '92', '100', '6', '4', '0', '0', '1', '59', '0', '0', '0', '0', '0', '0', 'aa0b823f483b02cc5a7516cab09c4f92', '17', '3', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3500', 'Uy uy hổ', '123', '125', '8', '11', '0', '0', '2', '299', '0', '0', '0', '0', '0', '0', 'aa0b823f483b02cc5a7516cab09c4f92', '21', '2', '6', '2');
INSERT INTO `playerchongwu` VALUES ('3501', 'Hoa hoa xà', '559', '580', '96', '154', '0', '0', '31', '56011', '0', '0', '0', '0', '0', '0', 'f58bb53a4bdd39d6d70b706d77fbc74f', '12', '2', '4', '3');
INSERT INTO `playerchongwu` VALUES ('3502', 'Chiêu tài trư', '254', '254', '50', '114', '0', '0', '12', '1561', '0', '0', '0', '0', '0', '0', 'f58bb53a4bdd39d6d70b706d77fbc74f', '12', '3', '8', '2');
INSERT INTO `playerchongwu` VALUES ('3503', 'Suất suất hầu', '-9', '175', '15', '19', '0', '0', '4', '81', '0', '0', '0', '0', '0', '0', '1b10aad87b70a90c7514b3aa2feb52d1', '25', '3', '5', '0');
INSERT INTO `playerchongwu` VALUES ('3508', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'a15c17bb9370c276b121a0da1755395a', '16', '4', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3205', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '630c9b2c30289031e4fc53da8537cd52', '22', '2', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3206', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '630c9b2c30289031e4fc53da8537cd52', '14', '5', '5', '0');
INSERT INTO `playerchongwu` VALUES ('3207', 'Chiêu tài trư', '0', '144', '10', '16', '0', '0', '3', '379', '0', '0', '0', '0', '0', '0', 'b4dd3b4ff25c3cdd67b858d5fed146fa', '18', '2', '5', '2');
INSERT INTO `playerchongwu` VALUES ('3209', 'Khốc khốc long', '563', '596', '161', '252', '0', '0', '32', '52120', '0', '0', '0', '0', '0', '0', '099f465c0c34dd5ef59f230a21447af4', '13', '4', '7', '2');
INSERT INTO `playerchongwu` VALUES ('3210', 'Hoa hoa xà', '110', '113', '9', '10', '0', '0', '2', '44', '0', '0', '0', '0', '0', '0', 'a80e37407282b5feae841dd75b4dc7b7', '12', '3', '5', '1');
INSERT INTO `playerchongwu` VALUES ('3211', 'Mị mị dương', '91', '100', '6', '4', '0', '0', '1', '28', '0', '0', '0', '0', '0', '0', 'ea5ea2d157d97045153a82e5a342ec8b', '13', '3', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3212', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '61554becfc0543903e57c631693bf358', '16', '2', '7', '3');
INSERT INTO `playerchongwu` VALUES ('3213', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '61554becfc0543903e57c631693bf358', '12', '4', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3214', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'be109289bb94f9bfa3bf306b453f92df', '19', '2', '5', '1');
INSERT INTO `playerchongwu` VALUES ('3215', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'be109289bb94f9bfa3bf306b453f92df', '16', '5', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3559', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'b88aee7cafd66550817be8a5ea6e0aaf', '15', '2', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3510', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'b692052b65088cc5c7f4f8438c55c5f9', '14', '2', '3', '1');
INSERT INTO `playerchongwu` VALUES ('3505', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'efdb10cc8c0441b8c1d53076baed3273', '10', '2', '6', '1');
INSERT INTO `playerchongwu` VALUES ('3506', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'efdb10cc8c0441b8c1d53076baed3273', '11', '2', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3507', 'Uy uy hổ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'a15c17bb9370c276b121a0da1755395a', '13', '3', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3497', 'Đản đản kê', '-352', '228', '18', '28', '0', '0', '5', '106', '0', '0', '0', '0', '0', '0', '03a4c698ec11e112036183c308cfb94c', '21', '2', '4', '5');
INSERT INTO `playerchongwu` VALUES ('3244', 'Khiêu khiêu thỏ', '389', '550', '78', '166', '0', '0', '19', '11034', '0', '0', '0', '0', '0', '0', '6d07cdb650fc1fca94c0dd51a8ed971e', '23', '4', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3509', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'b692052b65088cc5c7f4f8438c55c5f9', '14', '5', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3261', 'Đản đản kê', '1831', '1834', '363', '565', '0', '0', '52', '167861', '0', '0', '0', '0', '0', '0', '9bb5f086e2f1efdbc8215e55f8a4a30f', '24', '5', '8', '4');
INSERT INTO `playerchongwu` VALUES ('3225', 'Khiêu khiêu thỏ', '1074', '1156', '237', '367', '0', '0', '34', '64797', '0', '0', '0', '0', '0', '0', '099f465c0c34dd5ef59f230a21447af4', '23', '5', '8', '4');
INSERT INTO `playerchongwu` VALUES ('3556', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6bf9af1dfe41b201dbd87d7c45d9ea29', '25', '3', '5', '2');
INSERT INTO `playerchongwu` VALUES ('3555', 'Suất suất hầu', '-4', '140', '16', '14', '0', '0', '3', '223', '0', '0', '0', '0', '0', '0', 'ad8f4d8e577f50deae4492bd03c96b56', '20', '5', '5', '0');
INSERT INTO `playerchongwu` VALUES ('3557', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '6bf9af1dfe41b201dbd87d7c45d9ea29', '16', '3', '3', '1');
INSERT INTO `playerchongwu` VALUES ('3551', 'Bổn bổn ngưu', '112', '220', '66', '94', '0', '0', '11', '1618', '0', '0', '0', '0', '0', '0', 'eb61a0b08b9bfdfda961d64410eba5bc', '11', '5', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3552', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '127260b5602737d7ca8a56f3ff47cfde', '9', '3', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3553', 'Linh lỵ thử', '153', '156', '14', '18', '0', '0', '3', '263', '0', '0', '0', '0', '0', '0', '127260b5602737d7ca8a56f3ff47cfde', '20', '3', '5', '4');
INSERT INTO `playerchongwu` VALUES ('3549', 'Chiêu tài trư', '190', '190', '36', '22', '0', '0', '7', '1161', '0', '0', '0', '0', '0', '0', '781a121e409741ff53f5978578067146', '15', '5', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3550', 'Khiêu khiêu thỏ', '64', '142', '16', '18', '0', '0', '3', '336', '0', '0', '0', '0', '0', '0', 'eb61a0b08b9bfdfda961d64410eba5bc', '21', '5', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3234', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '099f465c0c34dd5ef59f230a21447af4', '20', '2', '6', '4');
INSERT INTO `playerchongwu` VALUES ('3560', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '9b705d4e6713ac17822161af76f7c44f', '15', '4', '3', '3');
INSERT INTO `playerchongwu` VALUES ('3563', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'c8268cce88c9be2636fd0c06e03bee40', '11', '5', '5', '1');
INSERT INTO `playerchongwu` VALUES ('3564', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '24cd04c703340be524c7c20721f692bc', '13', '2', '5', '2');
INSERT INTO `playerchongwu` VALUES ('3565', 'Lưu lưu mã', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '24cd04c703340be524c7c20721f692bc', '25', '3', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3566', 'Bổn bổn ngưu', '-5', '122', '11', '7', '0', '0', '2', '19', '0', '0', '0', '0', '0', '0', 'c9879e4c3738297c06b0b14d78dc39d6', '22', '5', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3567', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'c9879e4c3738297c06b0b14d78dc39d6', '12', '4', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3568', 'Khốc khốc long', '-8', '200', '21', '19', '0', '0', '6', '338', '0', '0', '0', '0', '0', '0', 'ce13ba86e509d2fab5ed13c2cddf00c9', '20', '3', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3569', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '06569f4ff7f633af6e060480a0431526', '17', '5', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3572', 'Quai quai cẩu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'aa588ffcf27da87551c01d7c88b24829', '12', '4', '6', '2');
INSERT INTO `playerchongwu` VALUES ('3573', 'Quai quai cẩu', '-5', '100', '6', '4', '0', '0', '1', '96', '0', '0', '0', '0', '0', '0', 'aa588ffcf27da87551c01d7c88b24829', '9', '2', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3574', 'Linh lỵ thử', '94', '100', '6', '4', '0', '0', '1', '35', '0', '0', '0', '0', '0', '0', 'a71dfe5ae44c6f0d4c4be100a2e85748', '9', '2', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3575', 'Hoa hoa xà', '-50', '256', '30', '28', '0', '0', '7', '615', '0', '0', '0', '0', '0', '0', 'a71dfe5ae44c6f0d4c4be100a2e85748', '22', '3', '3', '2');
INSERT INTO `playerchongwu` VALUES ('3576', 'Hoa hoa xà', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '09fa9b0b46ac94b442588c98b6bed537', '9', '2', '5', '2');
INSERT INTO `playerchongwu` VALUES ('3577', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '09fa9b0b46ac94b442588c98b6bed537', '25', '2', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3578', 'Mị mị dương', '116', '118', '12', '13', '0', '0', '2', '164', '0', '0', '0', '0', '0', '0', '2007608a6942d33ec38e7c3d870fa674', '16', '5', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3579', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '2007608a6942d33ec38e7c3d870fa674', '20', '4', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3580', 'Quai quai cẩu', '115', '115', '8', '12', '0', '0', '2', '7', '0', '0', '0', '0', '0', '0', 'cc5cfc9a3fac118adae1bfb7f6dc6c3a', '15', '2', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3581', 'Uy uy hổ', '-2', '202', '30', '28', '0', '0', '7', '1265', '0', '0', '0', '0', '0', '0', 'dd58b4170ec8d6d20f876405b4b1265d', '12', '3', '3', '4');
INSERT INTO `playerchongwu` VALUES ('3583', 'Đản đản kê', '79', '123', '11', '9', '0', '0', '2', '171', '0', '0', '0', '0', '0', '0', 'e777555550491c15e506da8cafb60086', '18', '4', '4', '3');
INSERT INTO `playerchongwu` VALUES ('3584', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'e777555550491c15e506da8cafb60086', '20', '4', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3585', 'Lưu lưu mã', '-28', '117', '10', '13', '0', '0', '2', '159', '0', '0', '0', '0', '0', '0', '7159624dfdba178c848da03a6ffefec9', '15', '4', '8', '1');
INSERT INTO `playerchongwu` VALUES ('3586', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '7159624dfdba178c848da03a6ffefec9', '24', '5', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3587', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '3c9d1d6c8f225e9e4139cccd830fdd00', '13', '4', '5', '0');
INSERT INTO `playerchongwu` VALUES ('3588', 'Khốc khốc long', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '9f98bca6ec1fa9e5b63f70012148b511', '21', '4', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3589', 'Chiêu tài trư', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '9f98bca6ec1fa9e5b63f70012148b511', '24', '2', '5', '1');
INSERT INTO `playerchongwu` VALUES ('3590', 'Mị mị dương', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'f76c11b6601d3a6ce505c616b64ed478', '9', '5', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3591', 'Khiêu khiêu thỏ', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'e14b6e0d27bea46402a112c75c170887', '10', '4', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3592', 'Suất suất hầu', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '3bfa14243cba16bb92e090b54cc5d544', '13', '5', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3593', 'Đản đản kê', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'b7f5e984a6a22f3ef2b4072f2614f43e', '20', '2', '6', '2');
INSERT INTO `playerchongwu` VALUES ('3594', '咩咩羊', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '30573415781e469779fbad52abd671c0', '14', '2', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3595', '咩咩羊', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '30573415781e469779fbad52abd671c0', '16', '5', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3596', '跳跳兔', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '79c81b5eeefef4266fd23277190b4d04', '19', '4', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3598', '招财猪', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '876222b500a060ca6f99934a9a5a46bc', '11', '4', '3', '3');
INSERT INTO `playerchongwu` VALUES ('3599', '乖乖狗', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '876222b500a060ca6f99934a9a5a46bc', '20', '2', '6', '3');
INSERT INTO `playerchongwu` VALUES ('3600', '招财猪', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '876222b500a060ca6f99934a9a5a46bc', '20', '5', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3601', '乖乖狗', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0093a05e4ba35b6be322d2a7e4990bad', '17', '3', '5', '0');
INSERT INTO `playerchongwu` VALUES ('3602', '伶俐鼠', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0093a05e4ba35b6be322d2a7e4990bad', '12', '5', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3603', '乖乖狗', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'f15a4aaba08473a5afd6a6521c76d9cf', '23', '5', '7', '0');
INSERT INTO `playerchongwu` VALUES ('3626', '笨笨牛', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'c0787a8c7d117e9a540222e8c1b744af', '10', '3', '4', '2');
INSERT INTO `playerchongwu` VALUES ('3620', '咩咩羊', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0d35be128035927ccc312fd5d99eb55c', '16', '2', '4', '2');
INSERT INTO `playerchongwu` VALUES ('3627', '威威虎', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '483047f1250b4db899cb9a4770efe1e2', '21', '3', '5', '3');
INSERT INTO `playerchongwu` VALUES ('3618', '花花蛇', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0d35be128035927ccc312fd5d99eb55c', '25', '2', '5', '2');
INSERT INTO `playerchongwu` VALUES ('3617', '蛋蛋鸡', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0d35be128035927ccc312fd5d99eb55c', '20', '5', '3', '0');
INSERT INTO `playerchongwu` VALUES ('3616', '花花蛇', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0d35be128035927ccc312fd5d99eb55c', '19', '3', '3', '2');
INSERT INTO `playerchongwu` VALUES ('3621', '溜溜马', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0d35be128035927ccc312fd5d99eb55c', '17', '2', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3622', '伶俐鼠', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0d35be128035927ccc312fd5d99eb55c', '22', '4', '4', '3');
INSERT INTO `playerchongwu` VALUES ('3629', '花花蛇', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'f039e55562a77296188f2963ca97fae1', '11', '2', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3628', '咩咩羊', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '483047f1250b4db899cb9a4770efe1e2', '12', '5', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3630', '伶俐鼠', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'f039e55562a77296188f2963ca97fae1', '17', '5', '3', '2');
INSERT INTO `playerchongwu` VALUES ('3631', '溜溜马', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '214bde30a6e2b81a2637555e947624c4', '24', '5', '6', '1');
INSERT INTO `playerchongwu` VALUES ('3632', '酷酷龙', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '214bde30a6e2b81a2637555e947624c4', '17', '3', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3633', '伶俐鼠', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'a01bb3a16790c034b19c3bb873f5c824', '10', '4', '6', '0');
INSERT INTO `playerchongwu` VALUES ('3634', '伶俐鼠', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'eae57174fc4d0114b0a244a0b4d46cd1', '22', '4', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3635', '伶俐鼠', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'eae57174fc4d0114b0a244a0b4d46cd1', '15', '5', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3636', '酷酷龙', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'a6edc2472e88417ac151bf97c7231a23', '18', '3', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3637', '乖乖狗', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '132a2ae60d254a56c7264893f03a6a25', '20', '5', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3639', '咩咩羊', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'aecc6f9f63ececb58dcfe256ac7d6897', '20', '3', '4', '2');
INSERT INTO `playerchongwu` VALUES ('3640', '笨笨牛', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '5342074c8ce889f9ce11bcd4f254355f', '10', '4', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3641', '跳跳兔', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'b640a2de9bf6e48433937295ee06bbcd', '15', '2', '4', '0');
INSERT INTO `playerchongwu` VALUES ('3642', '蛋蛋鸡', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'b69d90fc03f0fa785b1c6ddb3b3829b8', '13', '5', '5', '1');
INSERT INTO `playerchongwu` VALUES ('3643', '花花蛇', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '5525b042a45ea5bd62def930594c18f2', '14', '2', '3', '5');
INSERT INTO `playerchongwu` VALUES ('3644', '招财猪', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '9467812eb836c2b70c021e8ef1d52ab1', '15', '4', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3645', '帅帅猴', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '7d1526a0dd4803a1fda914bcebd93b47', '18', '2', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3646', '蛋蛋鸡', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '7d1526a0dd4803a1fda914bcebd93b47', '16', '3', '7', '3');
INSERT INTO `playerchongwu` VALUES ('3647', '笨笨牛', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '9dc0bb8899c5497aa2dacab00c77fd5c', '15', '3', '8', '0');
INSERT INTO `playerchongwu` VALUES ('3648', '花花蛇', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '11ee841a987d5674196d37fef51ed9a6', '19', '4', '7', '1');
INSERT INTO `playerchongwu` VALUES ('3649', '跳跳兔', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '11ee841a987d5674196d37fef51ed9a6', '11', '3', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3650', '伶俐鼠', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'e99904f72c48e48b4bc5ee8cf8e966d6', '20', '4', '4', '1');
INSERT INTO `playerchongwu` VALUES ('3651', '招财猪', '100', '100', '6', '4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'e99904f72c48e48b4bc5ee8cf8e966d6', '13', '3', '4', '1');

-- ----------------------------
-- Table structure for playerdaoju
-- ----------------------------
DROP TABLE IF EXISTS `playerdaoju`;
CREATE TABLE `playerdaoju` (
  `djname` varchar(255) NOT NULL,
  `djzl` int(255) NOT NULL AUTO_INCREMENT,
  `djinfo` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  `sid` text NOT NULL,
  `djsum` int(11) NOT NULL,
  `djid` int(11) NOT NULL,
  UNIQUE KEY `djzl` (`djzl`)
) ENGINE=MyISAM AUTO_INCREMENT=887 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of playerdaoju
-- ----------------------------
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '452', 'Ngạnh sí phong đích phong mật', '425', '42352a5bb2acc1e76e8a2fa10ba7673b', '2', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '2', 'Cường hóa trang bị dụng đích đạo cụ', '424', 'f76c11b6601d3a6ce505c616b64ed478', '15', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '453', 'Ngạnh sí phong đích phong mật', '424', 'f76c11b6601d3a6ce505c616b64ed478', '4', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '454', 'Đoái hoán phù lục dụng đích', '424', 'f76c11b6601d3a6ce505c616b64ed478', '0', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '455', 'Đoái hoán phù lục', '424', 'f76c11b6601d3a6ce505c616b64ed478', '8', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '456', 'Ngạnh sí phong đích phong mật', '426', '0ed4ce0a982475dad32cea331e8e50d7', '5', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '457', 'Đoái hoán phù lục dụng đích', '426', '0ed4ce0a982475dad32cea331e8e50d7', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '458', 'Đoái hoán phù lục', '426', '0ed4ce0a982475dad32cea331e8e50d7', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '459', 'Ngạnh sí phong đích phong mật', '431', '3bfa14243cba16bb92e090b54cc5d544', '0', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '460', 'Đoái hoán phù lục dụng đích', '431', '3bfa14243cba16bb92e090b54cc5d544', '98', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '461', 'Đoái hoán phù lục', '431', '3bfa14243cba16bb92e090b54cc5d544', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '462', 'Ngạnh sí phong đích phong mật', '434', 'e14b6e0d27bea46402a112c75c170887', '11', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '463', 'Đoái hoán phù lục dụng đích', '434', 'e14b6e0d27bea46402a112c75c170887', '95', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '464', 'Đoái hoán phù lục', '434', 'e14b6e0d27bea46402a112c75c170887', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '467', 'Ngạnh sí phong đích phong mật', '438', 'b7f5e984a6a22f3ef2b4072f2614f43e', '2', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '472', 'Cường hóa trang bị dùng đạo cụ', '441', 'f7c38ddb495be49224c8d819f34654ec', '50', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '468', 'Cứng rắn cánh phong mật ong', '440', 'f0be893286b66272230904a0a7d33168', '7', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '469', 'Hối đoái phù lục dùng', '440', 'f0be893286b66272230904a0a7d33168', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '470', 'Hối đoái phù lục', '440', 'f0be893286b66272230904a0a7d33168', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '471', 'Cường hóa trang bị dụng đích đạo cụ', '440', 'f0be893286b66272230904a0a7d331689', '10100', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '473', 'Cường hóa trang bị dùng đạo cụ', '440', 'f0be893286b66272230904a0a7d33168', '14', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '474', 'Cứng rắn cánh phong mật ong', '442', '7aa100d4e1f9756c2c918199f7c6f8cd', '6', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-trung cấp linh', '475', 'Phù lục Tàn Hiệt - trung cấp linh', '440', 'f0be893286b66272230904a0a7d33168', '50', '10');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '476', 'Cường hóa trang bị dùng đạo cụ', '450', '0d35be128035927ccc312fd5d99eb55c', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '477', 'Cường hóa trang bị dùng đạo cụ', '453', '876222b500a060ca6f99934a9a5a46bc', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '478', 'Cứng rắn cánh phong mật ong', '460', 'f15a4aaba08473a5afd6a6521c76d9cf', '2', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '479', 'Cường hóa trang bị dùng đạo cụ', '462', '7153c651e46f98c7061e956c023b4fca', '6', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '480', 'Cường hóa trang bị dùng đạo cụ', '459', 'efc744bfecbcc5b1d2443ff739987af9', '1', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '481', 'Cứng rắn cánh phong mật ong', '459', 'efc744bfecbcc5b1d2443ff739987af9', '2', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '482', 'Cường hóa trang bị dùng đạo cụ', '463', '547f7c3b2c069650f414a69ef4402498', '47', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '483', 'Cường hóa trang bị dùng đạo cụ', '460', 'f15a4aaba08473a5afd6a6521c76d9cf', '8', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '484', 'Hối đoái phù lục dùng', '460', 'f15a4aaba08473a5afd6a6521c76d9cf', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '485', 'Hối đoái phù lục', '460', 'f15a4aaba08473a5afd6a6521c76d9cf', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '486', 'Cứng rắn cánh phong mật ong', '462', '7153c651e46f98c7061e956c023b4fca', '6', '8');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '487', 'Cứng rắn cánh phong mật ong', '450', '0d35be128035927ccc312fd5d99eb55c', '2', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '488', 'Hối đoái phù lục dùng', '450', '0d35be128035927ccc312fd5d99eb55c', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '489', 'Hối đoái phù lục', '450', '0d35be128035927ccc312fd5d99eb55c', '104', '7');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '490', 'Hối đoái phù lục dùng', '462', '7153c651e46f98c7061e956c023b4fca', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '491', 'Hối đoái phù lục', '462', '7153c651e46f98c7061e956c023b4fca', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '492', 'Cứng rắn cánh phong mật ong', '468', 'c1b448051cf88f6dcf535ced41e53127', '6', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '493', 'Cường hóa trang bị dùng đạo cụ', '469', 'e3ce66181b307263d31593be743bdd64', '2', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '494', 'Cứng rắn cánh phong mật ong', '469', 'e3ce66181b307263d31593be743bdd64', '8', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '495', 'Cường hóa trang bị dùng đạo cụ', '468', 'c1b448051cf88f6dcf535ced41e53127', '190', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '496', 'Hối đoái phù lục dùng', '468', 'c1b448051cf88f6dcf535ced41e53127', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '497', 'Hối đoái phù lục', '468', 'c1b448051cf88f6dcf535ced41e53127', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '498', 'Hối đoái phù lục dùng', '469', 'e3ce66181b307263d31593be743bdd64', '102', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '499', 'Hối đoái phù lục', '469', 'e3ce66181b307263d31593be743bdd64', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '500', 'Cường hóa trang bị dùng đạo cụ', '470', '0dee7d958d6808a52df8c485ce7657af', '2', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '501', 'Cứng rắn cánh phong mật ong', '470', '0dee7d958d6808a52df8c485ce7657af', '0', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '502', 'Hối đoái phù lục dùng', '459', 'efc744bfecbcc5b1d2443ff739987af9', '102', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '503', 'Hối đoái phù lục', '459', 'efc744bfecbcc5b1d2443ff739987af9', '107', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '504', 'Cường hóa trang bị dùng đạo cụ', '475', 'e03886cbdd41f2973d1e16d83a1250a2', '17', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '505', 'Hối đoái phù lục dùng', '470', '0dee7d958d6808a52df8c485ce7657af', '20', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '506', 'Hối đoái phù lục', '470', '0dee7d958d6808a52df8c485ce7657af', '10', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '507', 'Cứng rắn cánh phong mật ong', '476', 'deef530148bcb297a74d0509125b844f', '0', '8');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '508', 'Cứng rắn cánh phong mật ong', '475', 'e03886cbdd41f2973d1e16d83a1250a2', '11', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '509', 'Cường hóa trang bị dùng đạo cụ', '476', 'deef530148bcb297a74d0509125b844f', '10', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '510', 'Cứng rắn cánh phong mật ong', '477', 'e83893c48ddfe5e084b2bdea428aa07f', '4', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '511', 'Cường hóa trang bị dùng đạo cụ', '477', 'e83893c48ddfe5e084b2bdea428aa07f', '2', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '512', 'Hối đoái phù lục dùng', '477', 'e83893c48ddfe5e084b2bdea428aa07f', '1', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '513', 'Hối đoái phù lục', '477', 'e83893c48ddfe5e084b2bdea428aa07f', '4', '7');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '514', 'Hối đoái phù lục dùng', '476', 'deef530148bcb297a74d0509125b844f', '99', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '515', 'Hối đoái phù lục', '476', 'deef530148bcb297a74d0509125b844f', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '516', 'Hối đoái phù lục dùng', '475', 'e03886cbdd41f2973d1e16d83a1250a2', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '517', 'Hối đoái phù lục', '475', 'e03886cbdd41f2973d1e16d83a1250a2', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '518', 'Cứng rắn cánh phong mật ong', '478', '483047f1250b4db899cb9a4770efe1e2', '5', '8');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '519', 'Cứng rắn cánh phong mật ong', '481', 'c0787a8c7d117e9a540222e8c1b744af', '1', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '520', 'Cường hóa trang bị dùng đạo cụ', '478', '483047f1250b4db899cb9a4770efe1e2', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '521', 'Hối đoái phù lục dùng', '478', '483047f1250b4db899cb9a4770efe1e2', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '522', 'Hối đoái phù lục', '478', '483047f1250b4db899cb9a4770efe1e2', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '523', 'Cường hóa trang bị dùng đạo cụ', '479', '91322e4d4529a1c0db2580a4d5e07ff1', '17', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '524', 'Cứng rắn cánh phong mật ong', '480', 'df1905b2799580cd3861d79686bacbad', '7', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '525', 'Cường hóa trang bị dùng đạo cụ', '481', 'c0787a8c7d117e9a540222e8c1b744af', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '526', 'Phù lục Tàn Hiệt - sơ cấp rất', '450', '0d35be128035927ccc312fd5d99eb55c', '55', '9');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '527', 'Hối đoái phù lục dùng', '481', 'c0787a8c7d117e9a540222e8c1b744af', '103', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '528', 'Hối đoái phù lục', '481', 'c0787a8c7d117e9a540222e8c1b744af', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-trung cấp linh', '529', 'Phù lục Tàn Hiệt - trung cấp linh', '450', '0d35be128035927ccc312fd5d99eb55c', '52', '10');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '530', 'Cứng rắn cánh phong mật ong', '479', '91322e4d4529a1c0db2580a4d5e07ff1', '0', '8');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '531', 'Cứng rắn cánh phong mật ong', '484', '36774f5c423b7a8bb7858bb4642e128d', '4', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '532', 'Hối đoái phù lục dùng', '479', '91322e4d4529a1c0db2580a4d5e07ff1', '8', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '533', 'Hối đoái phù lục', '479', '91322e4d4529a1c0db2580a4d5e07ff1', '4', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '534', 'Cứng rắn cánh phong mật ong', '486', '7837bb48be44041b2ee92d061d08653e', '6', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '535', 'Cường hóa trang bị dùng đạo cụ', '485', '80eaf5ea9d36f0a8c87d3eba1bd05055', '57', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '536', 'Cường hóa trang bị dùng đạo cụ', '486', '7837bb48be44041b2ee92d061d08653e', '63', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '537', 'Hối đoái phù lục dùng', '486', '7837bb48be44041b2ee92d061d08653e', '102', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '538', 'Hối đoái phù lục', '486', '7837bb48be44041b2ee92d061d08653e', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '539', 'Cường hóa trang bị dùng đạo cụ', '487', '11ee841a987d5674196d37fef51ed9a6', '196', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '540', 'Cứng rắn cánh phong mật ong', '487', '11ee841a987d5674196d37fef51ed9a6', '8', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '541', 'Cường hóa trang bị dùng đạo cụ', '488', '1f014c041b1cb42cb1a75f9449e99998', '3', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '542', 'Hối đoái phù lục dùng', '487', '11ee841a987d5674196d37fef51ed9a6', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '543', 'Hối đoái phù lục', '487', '11ee841a987d5674196d37fef51ed9a6', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '544', 'Cứng rắn cánh phong mật ong', '488', '1f014c041b1cb42cb1a75f9449e99998', '8', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '545', 'Hối đoái phù lục dùng', '488', '1f014c041b1cb42cb1a75f9449e99998', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '546', 'Hối đoái phù lục', '488', '1f014c041b1cb42cb1a75f9449e99998', '102', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '547', 'Cứng rắn cánh phong mật ong', '463', '547f7c3b2c069650f414a69ef4402498', '16', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '548', 'Hối đoái phù lục dùng', '463', '547f7c3b2c069650f414a69ef4402498', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '549', 'Hối đoái phù lục', '463', '547f7c3b2c069650f414a69ef4402498', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '550', 'Phù lục Tàn Hiệt - sơ cấp rất', '470', '0dee7d958d6808a52df8c485ce7657af', '50', '9');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '551', 'Cứng rắn cánh phong mật ong', '492', '3204b1df760fd73acf5332398961f416', '0', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '552', 'Cường hóa trang bị dùng đạo cụ', '492', '3204b1df760fd73acf5332398961f416', '24489', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '553', 'Hối đoái phù lục dùng', '492', '3204b1df760fd73acf5332398961f416', '3', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '554', 'Hối đoái phù lục', '492', '3204b1df760fd73acf5332398961f416', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '555', 'Cứng rắn cánh phong mật ong', '494', '754ae44f81dc019f17c06a41aa2ea715', '6', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '556', 'Cường hóa trang bị dùng đạo cụ', '494', '754ae44f81dc019f17c06a41aa2ea715', '73', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '557', 'Hối đoái phù lục dùng', '494', '754ae44f81dc019f17c06a41aa2ea715', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '558', 'Hối đoái phù lục', '494', '754ae44f81dc019f17c06a41aa2ea715', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '559', 'Cường hóa trang bị dùng đạo cụ', '499', '987fa1ed57063997f01f22767178a600', '40', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '560', 'Cứng rắn cánh phong mật ong', '499', '987fa1ed57063997f01f22767178a600', '6', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '561', 'Hối đoái phù lục dùng', '499', '987fa1ed57063997f01f22767178a600', '102', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '562', 'Hối đoái phù lục', '499', '987fa1ed57063997f01f22767178a600', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '563', 'Cứng rắn cánh phong mật ong', '501', '7d1526a0dd4803a1fda914bcebd93b47', '6', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '564', 'Cường hóa trang bị dùng đạo cụ', '501', '7d1526a0dd4803a1fda914bcebd93b47', '178', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '565', 'Hối đoái phù lục dùng', '501', '7d1526a0dd4803a1fda914bcebd93b47', '106', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '566', 'Hối đoái phù lục', '501', '7d1526a0dd4803a1fda914bcebd93b47', '102', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '567', 'Cứng rắn cánh phong mật ong', '502', 'f039e55562a77296188f2963ca97fae1', '2', '8');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '568', 'Cứng rắn cánh phong mật ong', '503', 'f0ac44856637b747beb115331972de83', '5', '8');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '569', 'Cứng rắn cánh phong mật ong', '504', '78d406e749821c6f055f787edde7fee2', '4', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '570', 'Cường hóa trang bị dùng đạo cụ', '502', 'f039e55562a77296188f2963ca97fae1', '2', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '571', 'Hối đoái phù lục dùng', '502', 'f039e55562a77296188f2963ca97fae1', '101', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '572', 'Hối đoái phù lục', '502', 'f039e55562a77296188f2963ca97fae1', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '573', 'Cường hóa trang bị dùng đạo cụ', '505', '5342074c8ce889f9ce11bcd4f254355f', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '574', 'Cường hóa trang bị dùng đạo cụ', '504', '78d406e749821c6f055f787edde7fee2', '90', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '575', 'Hối đoái phù lục dùng', '504', '78d406e749821c6f055f787edde7fee2', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '576', 'Hối đoái phù lục', '504', '78d406e749821c6f055f787edde7fee2', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '577', 'Cường hóa trang bị dùng đạo cụ', '503', 'f0ac44856637b747beb115331972de83', '7', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '578', 'Hối đoái phù lục dùng', '503', 'f0ac44856637b747beb115331972de83', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '579', 'Hối đoái phù lục', '503', 'f0ac44856637b747beb115331972de83', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '580', 'Cứng rắn cánh phong mật ong', '505', '5342074c8ce889f9ce11bcd4f254355f', '0', '8');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '581', 'Cứng rắn cánh phong mật ong', '506', 'a995483a30393a2c0386c786200c4c84', '7', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '582', 'Cường hóa trang bị dùng đạo cụ', '506', 'a995483a30393a2c0386c786200c4c84', '3', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '583', 'Cứng rắn cánh phong mật ong', '509', 'fcdd5d501dd7b299a36d97981bbd664f', '3', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '584', 'Cường hóa trang bị dùng đạo cụ', '509', 'fcdd5d501dd7b299a36d97981bbd664f', '5', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '585', 'Hối đoái phù lục dùng', '505', '5342074c8ce889f9ce11bcd4f254355f', '1', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '586', 'Hối đoái phù lục', '505', '5342074c8ce889f9ce11bcd4f254355f', '1', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '587', 'Cường hóa trang bị dùng đạo cụ', '480', 'df1905b2799580cd3861d79686bacbad', '28', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '588', 'Hối đoái phù lục dùng', '480', 'df1905b2799580cd3861d79686bacbad', '103', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '589', 'Hối đoái phù lục', '480', 'df1905b2799580cd3861d79686bacbad', '106', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '590', 'Cường hóa trang bị dùng đạo cụ', '516', '6d269e625ac8a8e57a6f38d43ebbd3c6', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '591', 'Cứng rắn cánh phong mật ong', '516', '6d269e625ac8a8e57a6f38d43ebbd3c6', '5', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '592', 'Hối đoái phù lục dùng', '516', '6d269e625ac8a8e57a6f38d43ebbd3c6', '0', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '593', 'Hối đoái phù lục', '516', '6d269e625ac8a8e57a6f38d43ebbd3c6', '7', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '594', 'Cứng rắn cánh phong mật ong', '517', '5b5df97f24dda63106a3cfdbec0f2f37', '4', '8');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '595', 'Cứng rắn cánh phong mật ong', '518', '65f69095d290c9579a2255210d058fb1', '14', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '596', 'Cường hóa trang bị dùng đạo cụ', '518', '65f69095d290c9579a2255210d058fb1', '2', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '597', 'Cứng rắn cánh phong mật ong', '519', '00bec478348b21e8e9135bb08a6787cd', '0', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '598', 'Cường hóa trang bị dùng đạo cụ', '519', '00bec478348b21e8e9135bb08a6787cd', '168', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '599', 'Hối đoái phù lục dùng', '519', '00bec478348b21e8e9135bb08a6787cd', '0', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '600', 'Hối đoái phù lục', '519', '00bec478348b21e8e9135bb08a6787cd', '0', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '601', 'Cường hóa trang bị dùng đạo cụ', '517', '5b5df97f24dda63106a3cfdbec0f2f37', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '602', 'Cứng rắn cánh phong mật ong', '520', '5be0b95fe4591bf4593f16cacfb9136c', '3', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '603', 'Cường hóa trang bị dùng đạo cụ', '520', '5be0b95fe4591bf4593f16cacfb9136c', '56', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '604', 'Hối đoái phù lục dùng', '520', '5be0b95fe4591bf4593f16cacfb9136c', '104', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '605', 'Hối đoái phù lục', '520', '5be0b95fe4591bf4593f16cacfb9136c', '106', '7');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '606', 'Hối đoái phù lục dùng', '518', '65f69095d290c9579a2255210d058fb1', '101', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '607', 'Hối đoái phù lục dùng', '517', '5b5df97f24dda63106a3cfdbec0f2f37', '105', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '608', 'Hối đoái phù lục', '517', '5b5df97f24dda63106a3cfdbec0f2f37', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '609', 'Cường hóa trang bị dùng đạo cụ', '521', 'eae57174fc4d0114b0a244a0b4d46cd1', '40', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '610', 'Cứng rắn cánh phong mật ong', '521', 'eae57174fc4d0114b0a244a0b4d46cd1', '3', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '611', 'Hối đoái phù lục dùng', '521', 'eae57174fc4d0114b0a244a0b4d46cd1', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '612', 'Hối đoái phù lục', '521', 'eae57174fc4d0114b0a244a0b4d46cd1', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '613', 'Hối đoái phù lục', '518', '65f69095d290c9579a2255210d058fb1', '103', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '614', 'Cứng rắn cánh phong mật ong', '524', 'a6edc2472e88417ac151bf97c7231a23', '2', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '615', 'Cường hóa trang bị dùng đạo cụ', '524', 'a6edc2472e88417ac151bf97c7231a23', '193', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '616', 'Hối đoái phù lục dùng', '524', 'a6edc2472e88417ac151bf97c7231a23', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '617', 'Hối đoái phù lục', '524', 'a6edc2472e88417ac151bf97c7231a23', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '618', 'Cường hóa trang bị dùng đạo cụ', '526', 'f365c41cca1867794c0d56a0d2964f52', '50', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '619', 'Cứng rắn cánh phong mật ong', '526', 'f365c41cca1867794c0d56a0d2964f52', '2', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-trung cấp linh', '620', 'Phù lục Tàn Hiệt - trung cấp linh', '492', '3204b1df760fd73acf5332398961f416', '6', '10');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '621', 'Cường hóa trang bị dùng đạo cụ', '528', 'b0937c2a2e0292043bf9afbc25cc43d7', '19', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '622', 'Phù lục Tàn Hiệt - sơ cấp rất', '479', '91322e4d4529a1c0db2580a4d5e07ff1', '10', '9');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '623', 'Cứng rắn cánh phong mật ong', '530', 'a82a81044ec116f876d03885c2973ba6', '11', '8');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '624', 'Cứng rắn cánh phong mật ong', '528', 'b0937c2a2e0292043bf9afbc25cc43d7', '1', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '625', 'Hối đoái phù lục dùng', '528', 'b0937c2a2e0292043bf9afbc25cc43d7', '104', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '626', 'Hối đoái phù lục', '528', 'b0937c2a2e0292043bf9afbc25cc43d7', '98', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '627', 'Cứng rắn cánh phong mật ong', '531', '132a2ae60d254a56c7264893f03a6a25', '1', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '628', 'Cường hóa trang bị dùng đạo cụ', '530', 'a82a81044ec116f876d03885c2973ba6', '1212', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '629', 'Hối đoái phù lục dùng', '530', 'a82a81044ec116f876d03885c2973ba6', '88', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '630', 'Hối đoái phù lục', '530', 'a82a81044ec116f876d03885c2973ba6', '92', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '631', 'Cường hóa trang bị dùng đạo cụ', '531', '132a2ae60d254a56c7264893f03a6a25', '55', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '632', 'Hối đoái phù lục dùng', '531', '132a2ae60d254a56c7264893f03a6a25', '62', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '633', 'Hối đoái phù lục', '531', '132a2ae60d254a56c7264893f03a6a25', '1', '7');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-trung cấp linh', '634', 'Phù lục Tàn Hiệt - trung cấp linh', '479', '91322e4d4529a1c0db2580a4d5e07ff1', '51', '10');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '635', 'Cứng rắn cánh phong mật ong', '535', '9dc0bb8899c5497aa2dacab00c77fd5c', '0', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '636', 'Cường hóa trang bị dùng đạo cụ', '535', '9dc0bb8899c5497aa2dacab00c77fd5c', '9', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '637', 'Hối đoái phù lục dùng', '535', '9dc0bb8899c5497aa2dacab00c77fd5c', '79', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '638', 'Hối đoái phù lục', '535', '9dc0bb8899c5497aa2dacab00c77fd5c', '16', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '639', 'Cường hóa trang bị dùng đạo cụ', '537', '1ad63d508f70be6d8d83235471f1fc8b', '5', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '640', 'Phù lục Tàn Hiệt - sơ cấp rất', '480', 'df1905b2799580cd3861d79686bacbad', '139', '9');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '641', 'Phù lục Tàn Hiệt - sơ cấp rất', '492', '3204b1df760fd73acf5332398961f416', '6', '9');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '642', 'Cường hóa trang bị dùng đạo cụ', '538', '2f1d8f88000b56e6b5c3007d36f2c1c8', '4', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '643', 'Cứng rắn cánh phong mật ong', '538', '2f1d8f88000b56e6b5c3007d36f2c1c8', '0', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '644', 'Hối đoái phù lục dùng', '538', '2f1d8f88000b56e6b5c3007d36f2c1c8', '90', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '645', 'Hối đoái phù lục', '538', '2f1d8f88000b56e6b5c3007d36f2c1c8', '91', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '646', 'Cường hóa trang bị dùng đạo cụ', '547', '557b7f4de2be11fd91d173d236fea6b4', '7', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-trung cấp linh', '647', 'Phù lục Tàn Hiệt - trung cấp linh', '480', 'df1905b2799580cd3861d79686bacbad', '8', '10');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '648', 'Phù lục Tàn Hiệt - sơ cấp rất', '531', '132a2ae60d254a56c7264893f03a6a25', '138', '9');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '649', 'Cường hóa trang bị dùng đạo cụ', '562', 'aecc6f9f63ececb58dcfe256ac7d6897', '8', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '650', 'Cứng rắn cánh phong mật ong', '562', 'aecc6f9f63ececb58dcfe256ac7d6897', '12', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '651', 'Hối đoái phù lục dùng', '562', 'aecc6f9f63ececb58dcfe256ac7d6897', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '652', 'Hối đoái phù lục', '562', 'aecc6f9f63ececb58dcfe256ac7d6897', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '653', 'Cứng rắn cánh phong mật ong', '563', '07c4aa8db44ac27c5047134da59caf04', '5', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-trung cấp linh', '654', 'Phù lục Tàn Hiệt - trung cấp linh', '531', '132a2ae60d254a56c7264893f03a6a25', '59', '10');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '655', 'Cường hóa trang bị dùng đạo cụ', '563', '07c4aa8db44ac27c5047134da59caf04', '15', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '656', 'Hối đoái phù lục', '563', '07c4aa8db44ac27c5047134da59caf04', '101', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '657', 'Cường hóa trang bị dùng đạo cụ', '564', '59c0c0ee89fc09541f4c7760cd40f2f0', '50', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '658', 'Cứng rắn cánh phong mật ong', '564', '59c0c0ee89fc09541f4c7760cd40f2f0', '1', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '659', 'Cường hóa trang bị dùng đạo cụ', '566', '254884cc98a27262e70f650f6f2692bc', '55', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '660', 'Cứng rắn cánh phong mật ong', '565', '6def45155adf21e7aad4a3e12759f7e6', '1', '8');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '661', 'Cứng rắn cánh phong mật ong', '566', '254884cc98a27262e70f650f6f2692bc', '2', '8');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '662', 'Cứng rắn cánh phong mật ong', '568', 'efc23151bb317b15d8b8da7a9568727d', '6', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '663', 'Cường hóa trang bị dùng đạo cụ', '568', 'efc23151bb317b15d8b8da7a9568727d', '6', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '664', 'Hối đoái phù lục dùng', '568', 'efc23151bb317b15d8b8da7a9568727d', '104', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '665', 'Hối đoái phù lục', '568', 'efc23151bb317b15d8b8da7a9568727d', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '666', 'Phù lục Tàn Hiệt - sơ cấp rất', '530', 'a82a81044ec116f876d03885c2973ba6', '113', '9');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '667', 'Cứng rắn cánh phong mật ong', '569', '328e720a8f53d40808701b2cc47641c9', '8', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '668', 'Cường hóa trang bị dùng đạo cụ', '569', '328e720a8f53d40808701b2cc47641c9', '41', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '669', 'Hối đoái phù lục dùng', '569', '328e720a8f53d40808701b2cc47641c9', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '670', 'Hối đoái phù lục', '569', '328e720a8f53d40808701b2cc47641c9', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '671', 'Cứng rắn cánh phong mật ong', '547', '557b7f4de2be11fd91d173d236fea6b4', '10', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '672', 'Cường hóa trang bị dùng đạo cụ', '570', 'ae5c1ace8df289cb52e1e6e6bba81084', '50', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '673', 'Hối đoái phù lục dùng', '547', '557b7f4de2be11fd91d173d236fea6b4', '7', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '674', 'Hối đoái phù lục', '547', '557b7f4de2be11fd91d173d236fea6b4', '4', '7');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-trung cấp linh', '675', 'Phù lục Tàn Hiệt - trung cấp linh', '530', 'a82a81044ec116f876d03885c2973ba6', '51', '10');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '676', 'Cường hóa trang bị dùng đạo cụ', '572', '97d54e32270c248846cd545730dff24c', '1', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '677', 'Cường hóa trang bị dùng đạo cụ', '573', 'd2270581618374bd45714ee5704931b9', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '678', 'Cường hóa trang bị dùng đạo cụ', '574', 'c39219e0f88619106fc81c6324b91549', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '679', 'Cường hóa trang bị dùng đạo cụ', '575', 'bf9939cbe76a46d23d3518233af2f5c4', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '680', 'Cường hóa trang bị dùng đạo cụ', '576', 'b640a2de9bf6e48433937295ee06bbcd', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '681', 'Cường hóa trang bị dùng đạo cụ', '577', '834f2bbe62c7ff8b8588da6721123dfb', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '682', 'Cường hóa trang bị dùng đạo cụ', '578', 'a3662eaf07dda1c197ceabba10c75e02', '50', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '683', 'Cường hóa trang bị dùng đạo cụ', '579', '6748710cbb3b0d6453f6f90c020b2f2e', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '684', 'Cường hóa trang bị dùng đạo cụ', '580', 'cad17f862127f53425dba7035d7e7c04', '1', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '685', 'Cường hóa trang bị dùng đạo cụ', '581', '12859183b2c1aa3ab363f36b377d3e2a', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '686', 'Phù lục Tàn Hiệt - sơ cấp rất', '505', '5342074c8ce889f9ce11bcd4f254355f', '84', '9');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '687', 'Cường hóa trang bị dùng đạo cụ', '534', 'd70281320ec95b488021284e329cdd71', '1', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '688', 'Cường hóa trang bị dùng đạo cụ', '582', 'e7cdc591dbe160e68e7d717912eb7ac1', '1', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '689', 'Cường hóa trang bị dùng đạo cụ', '583', 'c118a42af67aeea4f07ec4b02676a533', '1', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '690', 'Cường hóa trang bị dùng đạo cụ', '584', '471555821ff06e8c401d3e6fb0f890d9', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '691', 'Cường hóa trang bị dùng đạo cụ', '585', '8941761f4845a31c23a6328e5e579202', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '692', 'Cứng rắn cánh phong mật ong', '584', '471555821ff06e8c401d3e6fb0f890d9', '0', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '693', 'Hối đoái phù lục dùng', '585', '8941761f4845a31c23a6328e5e579202', '1', '6');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '694', 'Cường hóa trang bị dùng đạo cụ', '586', '465133246a843b93c24201350509133a', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '695', 'Hối đoái phù lục dùng', '584', '471555821ff06e8c401d3e6fb0f890d9', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '696', 'Hối đoái phù lục', '584', '471555821ff06e8c401d3e6fb0f890d9', '104', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '697', 'Cường hóa trang bị dùng đạo cụ', '587', '6d3e49a106b7d4332c562fa96aaa7b31', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '698', 'Hối đoái phù lục dùng', '563', '07c4aa8db44ac27c5047134da59caf04', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '699', 'Cường hóa trang bị dùng đạo cụ', '588', '95409c694fc35f303dc09eea69444dd8', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '700', 'Hối đoái phù lục', '581', '12859183b2c1aa3ab363f36b377d3e2a', '1', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '701', 'Cường hóa trang bị dùng đạo cụ', '594', 'a99db0da877f1c5e3579d338f49271fe', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '702', 'Hối đoái phù lục', '594', 'a99db0da877f1c5e3579d338f49271fe', '1', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '703', 'Cường hóa trang bị dùng đạo cụ', '597', '2db67eedafd57b9251452c84fd6e72dd', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '704', 'Cường hóa trang bị dùng đạo cụ', '598', '1dae7225f245dd20b9e9819ccf00bb14', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '705', 'Hối đoái phù lục', '598', '1dae7225f245dd20b9e9819ccf00bb14', '1', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '706', 'Cường hóa trang bị dùng đạo cụ', '600', '6636a00499a701a8e4aee28099e899c3', '2', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '707', 'Cường hóa trang bị dùng đạo cụ', '603', 'dbd913282216b9f36dc0aacf77fb8f4d', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '708', 'Cường hóa trang bị dùng đạo cụ', '605', '9bea8bb6f86f26e1a55e2abb63f9f479', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '709', 'Cường hóa trang bị dùng đạo cụ', '607', 'abad3256447bf495020a18e2c7f72df8', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '710', 'Cường hóa trang bị dùng đạo cụ', '611', 'a5be62b4b78aa6ec7502924aa6c7ecb0', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '711', 'Hối đoái phù lục', '611', 'a5be62b4b78aa6ec7502924aa6c7ecb0', '1', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '712', 'Cường hóa trang bị dùng đạo cụ', '613', '003222c0bc5a54469192d5c6dc2e96a4', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '713', 'Cường hóa trang bị dùng đạo cụ', '614', '2d3523906f45daf8b05d4ee873b2fb75', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '714', 'Cường hóa trang bị dùng đạo cụ', '616', '745b8b0c24f3b050d2e5d4f040e09755', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '715', 'Hối đoái phù lục', '616', '745b8b0c24f3b050d2e5d4f040e09755', '1', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '716', 'Cường hóa trang bị dùng đạo cụ', '621', 'b7e9ee418c890496b897cfddc3827361', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '717', 'Hối đoái phù lục', '621', 'b7e9ee418c890496b897cfddc3827361', '1', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '718', 'Cường hóa trang bị dùng đạo cụ', '623', 'f63078630a88b1ecee7ee913ceb19812', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '719', 'Hối đoái phù lục', '623', 'f63078630a88b1ecee7ee913ceb19812', '1', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '720', 'Cường hóa trang bị dùng đạo cụ', '624', '93f526702057373149a9cfa640385eb3', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '721', 'Hối đoái phù lục', '624', '93f526702057373149a9cfa640385eb3', '1', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '722', 'Cường hóa trang bị dùng đạo cụ', '626', '8ffb820f9fe09045a9e8ecdfbc712802', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '723', 'Hối đoái phù lục', '626', '8ffb820f9fe09045a9e8ecdfbc712802', '1', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '724', 'Cứng rắn cánh phong mật ong', '625', 'ec3dcb49b71ec220951be37a1e1cbda2', '6', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '725', 'Cường hóa trang bị dùng đạo cụ', '627', 'ef9ba5ede60da54d81838439bf4957d5', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '726', 'Hối đoái phù lục', '627', 'ef9ba5ede60da54d81838439bf4957d5', '1', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '727', 'Cường hóa trang bị dùng đạo cụ', '628', '4e192ae86106454c54d1c8571060d9cb', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '728', 'Cường hóa trang bị dùng đạo cụ', '625', 'ec3dcb49b71ec220951be37a1e1cbda2', '85', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '729', 'Hối đoái phù lục dùng', '625', 'ec3dcb49b71ec220951be37a1e1cbda2', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '730', 'Hối đoái phù lục', '625', 'ec3dcb49b71ec220951be37a1e1cbda2', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '731', 'Hối đoái phù lục dùng', '628', '4e192ae86106454c54d1c8571060d9cb', '1', '6');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '732', 'Cường hóa trang bị dùng đạo cụ', '629', '4faa68ad2836d9a580a095d5d4e5ac34', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '733', 'Cường hóa trang bị dùng đạo cụ', '630', '2569b951da435bb9c77d68f84156b531', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '734', 'Hối đoái phù lục dùng', '629', '4faa68ad2836d9a580a095d5d4e5ac34', '1', '6');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '735', 'Cường hóa trang bị dùng đạo cụ', '631', '8096bab241a745965c3fc88cc699df17', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '736', 'Cường hóa trang bị dùng đạo cụ', '632', 'b9914dd0b8bdc9ab234a551d6a9989c3', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '737', 'Cường hóa trang bị dùng đạo cụ', '633', '4028d7fd3906be6e99e9847cf5ec5748', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '738', 'Cường hóa trang bị dùng đạo cụ', '634', 'e24af8ce4572a56388bba51fce9c5c2d', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '739', 'Hối đoái phù lục dùng', '634', 'e24af8ce4572a56388bba51fce9c5c2d', '1', '6');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '740', 'Cường hóa trang bị dùng đạo cụ', '635', '67f1b64af52c989385241db4b2b6daf8', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '741', 'Hối đoái phù lục dùng', '635', '67f1b64af52c989385241db4b2b6daf8', '1', '6');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '742', 'Cường hóa trang bị dùng đạo cụ', '636', 'fa80a1400e8952183e656d20ae298168', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '743', 'Hối đoái phù lục dùng', '636', 'fa80a1400e8952183e656d20ae298168', '1', '6');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '744', 'Cường hóa trang bị dùng đạo cụ', '637', '4c2776c8859d4e1723bd6d7fab1b2772', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '745', 'Hối đoái phù lục dùng', '637', '4c2776c8859d4e1723bd6d7fab1b2772', '1', '6');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '746', 'Cường hóa trang bị dùng đạo cụ', '638', '5a383efd6fd05659b53d81f46bb374ba', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '747', 'Hối đoái phù lục dùng', '638', '5a383efd6fd05659b53d81f46bb374ba', '1', '6');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '748', 'Cường hóa trang bị dùng đạo cụ', '639', 'c316eef7f547fdb67b02a02991c08595', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '749', 'Hối đoái phù lục dùng', '639', 'c316eef7f547fdb67b02a02991c08595', '1', '6');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '750', 'Cường hóa trang bị dùng đạo cụ', '640', '6641224d5c7b03639d8c3a821aaf5265', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '751', 'Hối đoái phù lục dùng', '640', '6641224d5c7b03639d8c3a821aaf5265', '1', '6');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '752', 'Cường hóa trang bị dùng đạo cụ', '641', '7e11a224cf7d680b4434a8d4ffb38e18', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '753', 'Hối đoái phù lục dùng', '641', '7e11a224cf7d680b4434a8d4ffb38e18', '1', '6');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '754', 'Cường hóa trang bị dùng đạo cụ', '642', 'ae48252617495d4d8415a9b2897e88da', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '755', 'Cường hóa trang bị dùng đạo cụ', '643', 'ed1e41cb1a37291afaeafe372a999ece', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '756', 'Phù lục Tàn Hiệt - sơ cấp rất', '643', 'ed1e41cb1a37291afaeafe372a999ece', '1', '9');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '757', 'Cường hóa trang bị dùng đạo cụ', '644', 'cba408727a6faf27e19799a28a7245d9', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '758', 'Cường hóa trang bị dùng đạo cụ', '645', '392d311e85536f5a22ac352458ed417d', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '759', 'Phù lục Tàn Hiệt - sơ cấp rất', '645', '392d311e85536f5a22ac352458ed417d', '1', '9');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '760', 'Cường hóa trang bị dùng đạo cụ', '646', 'b1a11bf20372c1917c015177e70da375', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '761', 'Cường hóa trang bị dùng đạo cụ', '647', '51218a11dafd6581e03eb517fd323935', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '762', 'Phù lục Tàn Hiệt - sơ cấp rất', '646', 'b1a11bf20372c1917c015177e70da375', '1', '9');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '763', 'Cường hóa trang bị dùng đạo cụ', '648', '78452c0d4b172fb2dcee08d338f56acc', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '764', 'Cường hóa trang bị dùng đạo cụ', '649', '0a02202fed191e30afc1626b1171b09d', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '765', 'Cứng rắn cánh phong mật ong', '649', '0a02202fed191e30afc1626b1171b09d', '2', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '766', 'Phù lục Tàn Hiệt - sơ cấp rất', '648', '78452c0d4b172fb2dcee08d338f56acc', '1', '9');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '767', 'Cường hóa trang bị dùng đạo cụ', '650', 'f47188dbeb689c63337216ffcfdc80aa', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '768', 'Phù lục Tàn Hiệt - sơ cấp rất', '650', 'f47188dbeb689c63337216ffcfdc80aa', '1', '9');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '769', 'Cường hóa trang bị dùng đạo cụ', '651', 'b69d90fc03f0fa785b1c6ddb3b3829b8', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '770', 'Cường hóa trang bị dùng đạo cụ', '652', '97f6c8467286a08954edfa6955510a71', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '771', 'Cường hóa trang bị dùng đạo cụ', '653', 'ce4cd32dada7f32b83853711542c22ca', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '772', 'Cường hóa trang bị dùng đạo cụ', '654', '8a7efb7f2df77e079d227b2b0518b47f', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '773', 'Phù lục Tàn Hiệt - sơ cấp rất', '654', '8a7efb7f2df77e079d227b2b0518b47f', '1', '9');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '774', 'Cường hóa trang bị dùng đạo cụ', '655', '071cc2053b1d893f70a8717e139a890b', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '775', 'Cường hóa trang bị dùng đạo cụ', '656', 'b07cf0573d533fd6fafea889f4b00341', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '776', 'Cường hóa trang bị dùng đạo cụ', '658', '9224230b7a147c55b158c0642c0dae34', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '777', 'Cường hóa trang bị dùng đạo cụ', '659', 'bf32173db0102374b65590833ad0cc7f', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '778', 'Cường hóa trang bị dùng đạo cụ', '660', '2c2297bb0c8a0ac18b2fd1f3f48787e2', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '779', 'Cường hóa trang bị dùng đạo cụ', '661', '8459472e192b644642eb5042a71624a4', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '780', 'Cường hóa trang bị dùng đạo cụ', '662', '03dd6871353d919e243d6cc9cd0edc21', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '781', 'Cường hóa trang bị dùng đạo cụ', '663', '2a111a75f25e6f87d99b0925f8fa4f09', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '782', 'Cường hóa trang bị dùng đạo cụ', '664', '485169fef9ff97368fad99c5d7b9eaba', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '783', 'Phù lục Tàn Hiệt - sơ cấp rất', '664', '485169fef9ff97368fad99c5d7b9eaba', '1', '9');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '784', 'Cường hóa trang bị dùng đạo cụ', '665', 'c8d9ca8dc1c454d877b29418bb69c23f', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '785', 'Cường hóa trang bị dùng đạo cụ', '666', 'da5ec0d2cab02e7b2f6f617fcfbac658', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '786', 'Phù lục Tàn Hiệt - sơ cấp rất', '666', 'da5ec0d2cab02e7b2f6f617fcfbac658', '1', '9');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '787', 'Cường hóa trang bị dùng đạo cụ', '667', '3646314d5a3e639bcb2cba2d20ea1227', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '788', 'Phù lục Tàn Hiệt - sơ cấp rất', '667', '3646314d5a3e639bcb2cba2d20ea1227', '1', '9');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '789', 'Cường hóa trang bị dùng đạo cụ', '668', 'd7c100e7739bbbd6446020fa21eb43cb', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '790', 'Phù lục Tàn Hiệt - sơ cấp rất', '668', 'd7c100e7739bbbd6446020fa21eb43cb', '1', '9');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '791', 'Cường hóa trang bị dùng đạo cụ', '669', '90e8f3a897aa7fcb31627a8e75eeaa9c', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '792', 'Hối đoái phù lục dùng', '669', '90e8f3a897aa7fcb31627a8e75eeaa9c', '1', '6');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '793', 'Cường hóa trang bị dùng đạo cụ', '670', 'edcbf1d0ea9bb879b925b69aac3a4019', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '794', 'Hối đoái phù lục dùng', '670', 'edcbf1d0ea9bb879b925b69aac3a4019', '1', '6');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '795', 'Cường hóa trang bị dùng đạo cụ', '671', '144f1c155fcb7fedf5915e15c68aed52', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '796', 'Hối đoái phù lục dùng', '671', '144f1c155fcb7fedf5915e15c68aed52', '1', '6');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '797', 'Cường hóa trang bị dùng đạo cụ', '672', '45500dfe80d0c1774817786a44a50e93', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '798', 'Hối đoái phù lục dùng', '672', '45500dfe80d0c1774817786a44a50e93', '1', '6');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '799', 'Cường hóa trang bị dùng đạo cụ', '673', 'de606cacc6a6ba649a3bf437b993d5fb', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '800', 'Hối đoái phù lục dùng', '673', 'de606cacc6a6ba649a3bf437b993d5fb', '1', '6');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '801', 'Cường hóa trang bị dùng đạo cụ', '674', 'f47ac3d9c8ff47415290e5bbee5d94ba', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '802', 'Cường hóa trang bị dùng đạo cụ', '675', '9467812eb836c2b70c021e8ef1d52ab1', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '803', 'Cường hóa trang bị dùng đạo cụ', '676', '7c8c3deb469f9576d97eb1bdedd44ded', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '804', 'Cường hóa trang bị dùng đạo cụ', '677', 'e4eeb15d095a35e9ca0934aa4c5d7348', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '805', 'Hối đoái phù lục dùng', '677', 'e4eeb15d095a35e9ca0934aa4c5d7348', '1', '6');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '806', 'Cường hóa trang bị dùng đạo cụ', '678', '820454b1128c1a80ae000002be521290', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '807', 'Cường hóa trang bị dùng đạo cụ', '679', '0bc389301f085642f280e2bb5736a480', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '808', 'Cường hóa trang bị dùng đạo cụ', '680', 'e08d6b644f78d1b2fba58b3b9336e7c7', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '809', 'Cường hóa trang bị dùng đạo cụ', '681', '4d6c7bbb353fe3b1998ab154b4b8de34', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '810', 'Cường hóa trang bị dùng đạo cụ', '682', '022efa153704457feb2e54c5bbe671b5', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '811', 'Cường hóa trang bị dùng đạo cụ', '683', 'e1ea2ceff741958658f9ec6f3fb34337', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '812', 'Cường hóa trang bị dùng đạo cụ', '684', '5203a615004c27accb73b0d2dfe0d7e9', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '813', 'Cường hóa trang bị dùng đạo cụ', '685', '2a9d05e96984a01ac6a3d3fa26c423d2', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '814', 'Cường hóa trang bị dùng đạo cụ', '686', 'c4370b9318ff613ff94f1c1f579ceffd', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '815', 'Cường hóa trang bị dùng đạo cụ', '687', 'f94a4e70090449b1305bcfabc2fc3063', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '816', 'Cường hóa trang bị dùng đạo cụ', '688', '500a2437c1bb8f02f7c49e28601dfb6e', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '817', 'Cường hóa trang bị dùng đạo cụ', '689', '3133ef63491fc4a52701e636dfbf9fa3', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '818', 'Cường hóa trang bị dùng đạo cụ', '690', 'f7f614975423ea19029307b81d8c830d', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '819', 'Cường hóa trang bị dùng đạo cụ', '691', '17a653630bf9efddc2913636da715feb', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '820', 'Cường hóa trang bị dùng đạo cụ', '692', '596e08e7ab36427ead738fb68c3b0a19', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '821', 'Cường hóa trang bị dùng đạo cụ', '693', 'e1cdfa10364d6fe840293d6058435f84', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '822', 'Cường hóa trang bị dùng đạo cụ', '694', 'c39e1158234b1cbed1235f3a92e2190a', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '823', 'Cường hóa trang bị dùng đạo cụ', '695', 'c40d9b4ce23e9d6301ae100078b494b1', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '824', 'Cường hóa trang bị dùng đạo cụ', '696', '39486819141832199e9f6ce0f07df80f', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '825', 'Cường hóa trang bị dùng đạo cụ', '697', '28540a58a176409ab6ab670ad8b84d9a', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '826', 'Cường hóa trang bị dùng đạo cụ', '698', 'db0c22a8d6c70028f1458c5bde301d42', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '827', 'Cường hóa trang bị dùng đạo cụ', '699', 'e26d19ccb75a13d79282f2494544ed63', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '828', 'Cường hóa trang bị dùng đạo cụ', '700', 'ae43a1ceec1a1cd209229a4a2a576694', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '829', 'Cường hóa trang bị dùng đạo cụ', '701', 'dad5603cf172dda4d361f94d72ffa9b3', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '830', 'Cường hóa trang bị dùng đạo cụ', '702', '477f97929463f731805fea917796116b', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '831', 'Cường hóa trang bị dùng đạo cụ', '703', '3a70d43cd5e915c33fca9ecaed82c166', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '832', 'Cường hóa trang bị dùng đạo cụ', '704', 'd94223c92b09cca1881b7aa57c9be239', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '833', 'Cường hóa trang bị dùng đạo cụ', '705', '4e8649b4605a7b24838a6eb8ccbcdafd', '1', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '834', 'Cường hóa trang bị dùng đạo cụ', '706', 'ddfafa84970edb8a1a2e1ce511cb3bea', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '835', 'Cường hóa trang bị dùng đạo cụ', '707', 'dd799830db04c768c1bc8c999adb9eb3', '1', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '836', 'Cường hóa trang bị dùng đạo cụ', '708', '0728f444fe41245dc6009bae1abd5076', '1', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '837', 'Cường hóa trang bị dùng đạo cụ', '709', '907c9e6c88d5dfdc389cd159e8e1227c', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '838', 'Cường hóa trang bị dùng đạo cụ', '710', '42de75f09bd5e5f02dc4ec20d84f6ec1', '1', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '839', 'Cường hóa trang bị dùng đạo cụ', '711', '59906aabadcb687e8dd91cc3e7840c8f', '1', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '840', 'Cường hóa trang bị dùng đạo cụ', '712', '90888bddd4da7a0ca3c3400b09cb8608', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '841', 'Cường hóa trang bị dùng đạo cụ', '713', '24924d381bc4839740c136cba998f8a1', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '842', 'Cường hóa trang bị dùng đạo cụ', '714', 'd8561aa207c9c921d2fcbff47f1b004f', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '843', 'Cường hóa trang bị dùng đạo cụ', '715', 'b28c7d5de2c2ba559cf68ae2e2d8aa8e', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '844', 'Cường hóa trang bị dùng đạo cụ', '716', '677f23772319fda9f0b168cb4e7a921e', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '845', 'Cường hóa trang bị dùng đạo cụ', '717', 'da689f730710e8cbc65d9ca654e5ffc5', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-trung cấp linh', '846', 'Phù lục Tàn Hiệt - trung cấp linh', '505', '5342074c8ce889f9ce11bcd4f254355f', '52', '10');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '847', 'Cứng rắn cánh phong mật ong', '718', '1f4d7e6d0493153d0a425f21883df5fe', '10', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '848', 'Cường hóa trang bị dùng đạo cụ', '718', '1f4d7e6d0493153d0a425f21883df5fe', '90', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '849', 'Hối đoái phù lục dùng', '718', '1f4d7e6d0493153d0a425f21883df5fe', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '850', 'Hối đoái phù lục', '718', '1f4d7e6d0493153d0a425f21883df5fe', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '851', 'Phù lục Tàn Hiệt - sơ cấp rất', '501', '7d1526a0dd4803a1fda914bcebd93b47', '50', '9');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '852', 'Cứng rắn cánh phong mật ong', '719', '53cd539db99d47571d60f4d91d019219', '3', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '853', 'Cường hóa trang bị dùng đạo cụ', '719', '53cd539db99d47571d60f4d91d019219', '5', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '854', 'Hối đoái phù lục dùng', '719', '53cd539db99d47571d60f4d91d019219', '108', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '855', 'Hối đoái phù lục', '719', '53cd539db99d47571d60f4d91d019219', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-trung cấp linh', '856', 'Phù lục Tàn Hiệt - trung cấp linh', '501', '7d1526a0dd4803a1fda914bcebd93b47', '50', '10');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '857', 'Cường hóa trang bị dùng đạo cụ', '720', '361279866296d10396c06791e1f7b796', '191', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '858', 'Cứng rắn cánh phong mật ong', '720', '361279866296d10396c06791e1f7b796', '6', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '859', 'Hối đoái phù lục dùng', '720', '361279866296d10396c06791e1f7b796', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '860', 'Hối đoái phù lục', '720', '361279866296d10396c06791e1f7b796', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '861', 'Cường hóa trang bị dùng đạo cụ', '722', '8d97e33eb204fcab472e184928d89803', '372', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '862', 'Cứng rắn cánh phong mật ong', '722', '8d97e33eb204fcab472e184928d89803', '0', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '863', 'Hối đoái phù lục dùng', '722', '8d97e33eb204fcab472e184928d89803', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '864', 'Hối đoái phù lục', '722', '8d97e33eb204fcab472e184928d89803', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '865', 'Cứng rắn cánh phong mật ong', '723', '9ca6dc570525096a45e9d1fd4bdda384', '1', '8');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '866', 'Cứng rắn cánh phong mật ong', '724', 'eca24beba178ffa2d273410f2b1eff68', '1', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '867', 'Cường hóa trang bị dùng đạo cụ', '724', 'eca24beba178ffa2d273410f2b1eff68', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '868', 'Cường hóa trang bị dùng đạo cụ', '723', '9ca6dc570525096a45e9d1fd4bdda384', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '869', 'Cường hóa trang bị dùng đạo cụ', '725', 'efb6f6c5f57692b790f014c5b38dd816', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '870', 'Cứng rắn cánh phong mật ong', '725', 'efb6f6c5f57692b790f014c5b38dd816', '1', '8');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '871', 'Phù lục Tàn Hiệt - sơ cấp rất', '535', '9dc0bb8899c5497aa2dacab00c77fd5c', '100', '9');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp man', '872', 'Phù lục Tàn Hiệt - sơ cấp rất', '519', '00bec478348b21e8e9135bb08a6787cd', '100', '9');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-trung cấp linh', '873', 'Phù lục Tàn Hiệt - trung cấp linh', '535', '9dc0bb8899c5497aa2dacab00c77fd5c', '50', '10');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '874', 'Cường hóa trang bị dùng đạo cụ', '533', '67d33ee391a22e8e317f6a3b9bd43b9d', '0', '1');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '875', 'Cứng rắn cánh phong mật ong', '726', 'e99904f72c48e48b4bc5ee8cf8e966d6', '8', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '876', 'Cường hóa trang bị dùng đạo cụ', '726', 'e99904f72c48e48b4bc5ee8cf8e966d6', '8', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '877', 'Hối đoái phù lục dùng', '726', 'e99904f72c48e48b4bc5ee8cf8e966d6', '99', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '878', 'Hối đoái phù lục', '726', 'e99904f72c48e48b4bc5ee8cf8e966d6', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '879', 'Cứng rắn cánh phong mật ong', '727', '9c484fb3dc297a35f106796ed135a98d', '3', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '880', 'Cường hóa trang bị dùng đạo cụ', '727', '9c484fb3dc297a35f106796ed135a98d', '104', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '881', 'Hối đoái phù lục dùng', '727', '9c484fb3dc297a35f106796ed135a98d', '102', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '882', 'Hối đoái phù lục', '727', '9c484fb3dc297a35f106796ed135a98d', '100', '7');
INSERT INTO `playerdaoju` VALUES ('Ngạnh sí phong mật', '883', 'Cứng rắn cánh phong mật ong', '728', '0e67ef9235186f4f55a624ee83eb0eb9', '5', '8');
INSERT INTO `playerdaoju` VALUES ('Cường hóa thạch', '884', 'Cường hóa trang bị dùng đạo cụ', '728', '0e67ef9235186f4f55a624ee83eb0eb9', '44', '1');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp linh', '885', 'Hối đoái phù lục dùng', '728', '0e67ef9235186f4f55a624ee83eb0eb9', '100', '6');
INSERT INTO `playerdaoju` VALUES ('Phù lục tàn hiệt-sơ cấp ma', '886', 'Hối đoái phù lục', '728', '0e67ef9235186f4f55a624ee83eb0eb9', '100', '7');

-- ----------------------------
-- Table structure for playerjineng
-- ----------------------------
DROP TABLE IF EXISTS `playerjineng`;
CREATE TABLE `playerjineng` (
  `jnname` varchar(255) NOT NULL,
  `jnid` int(11) NOT NULL,
  `jngj` int(11) NOT NULL,
  `jnfy` int(11) NOT NULL,
  `jnbj` int(11) NOT NULL,
  `jnxx` int(11) NOT NULL,
  `sid` text NOT NULL,
  `jncount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of playerjineng
-- ----------------------------
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '43e4c5c6dda6740216e3bd54ff200c15', '7');
INSERT INTO `playerjineng` VALUES ('Ngưu B đích kỹ năng', '5', '0', '0', '100', '100', '43e4c5c6dda6740216e3bd54ff200c15', '3');
INSERT INTO `playerjineng` VALUES ('Ngưu B đích kỹ năng', '5', '0', '0', '100', '100', 'af1d74362b935eb0ac845b7e4f7f707f', '1');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '099f465c0c34dd5ef59f230a21447af4', '8');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '9bb5f086e2f1efdbc8215e55f8a4a30f', '0');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '6d07cdb650fc1fca94c0dd51a8ed971e', '32');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '6d07cdb650fc1fca94c0dd51a8ed971e', '0');
INSERT INTO `playerjineng` VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '6d07cdb650fc1fca94c0dd51a8ed971e', '0');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '36f30db66d6fe42f34a91d15b6097af0', '0');
INSERT INTO `playerjineng` VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '43e4c5c6dda6740216e3bd54ff200c15', '1');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '9bb5f086e2f1efdbc8215e55f8a4a30f', '0');
INSERT INTO `playerjineng` VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '9bb5f086e2f1efdbc8215e55f8a4a30f', '0');
INSERT INTO `playerjineng` VALUES ('Nộ huyết bạo', '7', '12', '2', '20', '12', '9bb5f086e2f1efdbc8215e55f8a4a30f', '0');
INSERT INTO `playerjineng` VALUES ('Nộ huyết bạo', '7', '12', '2', '20', '12', '36f30db66d6fe42f34a91d15b6097af0', '0');
INSERT INTO `playerjineng` VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '36f30db66d6fe42f34a91d15b6097af0', '9');
INSERT INTO `playerjineng` VALUES ('Nộ huyết bạo', '7', '12', '2', '20', '8', '43e4c5c6dda6740216e3bd54ff200c15', '0');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'f58bb53a4bdd39d6d70b706d77fbc74f', '0');
INSERT INTO `playerjineng` VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', 'f58bb53a4bdd39d6d70b706d77fbc74f', '0');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'c4339dfb63d53dbe95ff3f1297cd889d', '5');
INSERT INTO `playerjineng` VALUES ('Nộ huyết bạo', '7', '12', '2', '20', '8', '6d07cdb650fc1fca94c0dd51a8ed971e', '0');
INSERT INTO `playerjineng` VALUES ('Nộ huyết bạo', '7', '12', '2', '20', '8', 'f58bb53a4bdd39d6d70b706d77fbc74f', '0');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '592857bc812f813ed52fa8b187582fc2', '0');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '592857bc812f813ed52fa8b187582fc2', '3');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '781a121e409741ff53f5978578067146', '20');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '775c0ff651b405a676fc9ee1729302f4', '20');
INSERT INTO `playerjineng` VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '6b7b2713b1a52397c7282509906e8c5e', '1');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'c9879e4c3738297c06b0b14d78dc39d6', '15');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', 'c9879e4c3738297c06b0b14d78dc39d6', '25');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '781a121e409741ff53f5978578067146', '12');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'eb61a0b08b9bfdfda961d64410eba5bc', '3');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', 'eb61a0b08b9bfdfda961d64410eba5bc', '2');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '77099dca8f67b65ca91af53d0461ac2f', '0');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '77099dca8f67b65ca91af53d0461ac2f', '0');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '775c0ff651b405a676fc9ee1729302f4', '10');
INSERT INTO `playerjineng` VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '775c0ff651b405a676fc9ee1729302f4', '23');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', 'ad8f4d8e577f50deae4492bd03c96b56', '2');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'ad8f4d8e577f50deae4492bd03c96b56', '3');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'bb2a45b7652a7900e7810128a329597e', '2');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', 'bb2a45b7652a7900e7810128a329597e', '0');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '4e079b4084dcdd84cf4393a003a38283', '2');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'ce13ba86e509d2fab5ed13c2cddf00c9', '2');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', 'ce13ba86e509d2fab5ed13c2cddf00c9', '8');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'ea5a17b7f6c42320f7c242f2871a0f8d', '0');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'dd58b4170ec8d6d20f876405b4b1265d', '0');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', 'dd58b4170ec8d6d20f876405b4b1265d', '0');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '7159624dfdba178c848da03a6ffefec9', '2');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '7159624dfdba178c848da03a6ffefec9', '3');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'f76c11b6601d3a6ce505c616b64ed478', '0');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', 'f76c11b6601d3a6ce505c616b64ed478', '10');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'e14b6e0d27bea46402a112c75c170887', '0');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', '43e4c5c6dda6740216e3bd54ff200c15', '7');
INSERT INTO `playerjineng` VALUES ('牛B的技能', '5', '0', '0', '100', '100', '43e4c5c6dda6740216e3bd54ff200c15', '3');
INSERT INTO `playerjineng` VALUES ('牛B的技能', '5', '0', '0', '100', '100', 'af1d74362b935eb0ac845b7e4f7f707f', '1');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', '099f465c0c34dd5ef59f230a21447af4', '8');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', '9bb5f086e2f1efdbc8215e55f8a4a30f', '0');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', '6d07cdb650fc1fca94c0dd51a8ed971e', '32');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', '6d07cdb650fc1fca94c0dd51a8ed971e', '0');
INSERT INTO `playerjineng` VALUES ('蛮力附体', '6', '7', '7', '7', '7', '6d07cdb650fc1fca94c0dd51a8ed971e', '0');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', '36f30db66d6fe42f34a91d15b6097af0', '0');
INSERT INTO `playerjineng` VALUES ('蛮力附体', '6', '7', '7', '7', '7', '43e4c5c6dda6740216e3bd54ff200c15', '1');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', '9bb5f086e2f1efdbc8215e55f8a4a30f', '0');
INSERT INTO `playerjineng` VALUES ('蛮力附体', '6', '7', '7', '7', '7', '9bb5f086e2f1efdbc8215e55f8a4a30f', '0');
INSERT INTO `playerjineng` VALUES ('怒血爆', '7', '12', '2', '20', '12', '9bb5f086e2f1efdbc8215e55f8a4a30f', '0');
INSERT INTO `playerjineng` VALUES ('怒血爆', '7', '12', '2', '20', '12', '36f30db66d6fe42f34a91d15b6097af0', '0');
INSERT INTO `playerjineng` VALUES ('蛮力附体', '6', '7', '7', '7', '7', '36f30db66d6fe42f34a91d15b6097af0', '9');
INSERT INTO `playerjineng` VALUES ('怒血爆', '7', '12', '2', '20', '8', '43e4c5c6dda6740216e3bd54ff200c15', '0');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'f58bb53a4bdd39d6d70b706d77fbc74f', '0');
INSERT INTO `playerjineng` VALUES ('蛮力附体', '6', '7', '7', '7', '7', 'f58bb53a4bdd39d6d70b706d77fbc74f', '0');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'c4339dfb63d53dbe95ff3f1297cd889d', '5');
INSERT INTO `playerjineng` VALUES ('怒血爆', '7', '12', '2', '20', '8', '6d07cdb650fc1fca94c0dd51a8ed971e', '0');
INSERT INTO `playerjineng` VALUES ('怒血爆', '7', '12', '2', '20', '8', 'f58bb53a4bdd39d6d70b706d77fbc74f', '0');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', '592857bc812f813ed52fa8b187582fc2', '0');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', '592857bc812f813ed52fa8b187582fc2', '3');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', '781a121e409741ff53f5978578067146', '20');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', '775c0ff651b405a676fc9ee1729302f4', '20');
INSERT INTO `playerjineng` VALUES ('蛮力附体', '6', '7', '7', '7', '7', '6b7b2713b1a52397c7282509906e8c5e', '1');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'c9879e4c3738297c06b0b14d78dc39d6', '15');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'c9879e4c3738297c06b0b14d78dc39d6', '25');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', '781a121e409741ff53f5978578067146', '12');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'eb61a0b08b9bfdfda961d64410eba5bc', '3');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'eb61a0b08b9bfdfda961d64410eba5bc', '2');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', '77099dca8f67b65ca91af53d0461ac2f', '0');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', '77099dca8f67b65ca91af53d0461ac2f', '0');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', '775c0ff651b405a676fc9ee1729302f4', '10');
INSERT INTO `playerjineng` VALUES ('蛮力附体', '6', '7', '7', '7', '7', '775c0ff651b405a676fc9ee1729302f4', '23');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'ad8f4d8e577f50deae4492bd03c96b56', '2');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'ad8f4d8e577f50deae4492bd03c96b56', '3');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'bb2a45b7652a7900e7810128a329597e', '2');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'bb2a45b7652a7900e7810128a329597e', '0');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', '4e079b4084dcdd84cf4393a003a38283', '2');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'ce13ba86e509d2fab5ed13c2cddf00c9', '2');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'ce13ba86e509d2fab5ed13c2cddf00c9', '8');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'ea5a17b7f6c42320f7c242f2871a0f8d', '0');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'dd58b4170ec8d6d20f876405b4b1265d', '0');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'dd58b4170ec8d6d20f876405b4b1265d', '0');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', '7159624dfdba178c848da03a6ffefec9', '2');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', '7159624dfdba178c848da03a6ffefec9', '3');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'f76c11b6601d3a6ce505c616b64ed478', '0');
INSERT INTO `playerjineng` VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'f76c11b6601d3a6ce505c616b64ed478', '10');
INSERT INTO `playerjineng` VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'e14b6e0d27bea46402a112c75c170887', '0');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'deef530148bcb297a74d0509125b844f', '0');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'e83893c48ddfe5e084b2bdea428aa07f', '0');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', 'e83893c48ddfe5e084b2bdea428aa07f', '12');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '6d269e625ac8a8e57a6f38d43ebbd3c6', '12');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '6d269e625ac8a8e57a6f38d43ebbd3c6', '20');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '91322e4d4529a1c0db2580a4d5e07ff1', '13');
INSERT INTO `playerjineng` VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '91322e4d4529a1c0db2580a4d5e07ff1', '12');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '91322e4d4529a1c0db2580a4d5e07ff1', '12');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '9dc0bb8899c5497aa2dacab00c77fd5c', '6');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '132a2ae60d254a56c7264893f03a6a25', '0');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '557b7f4de2be11fd91d173d236fea6b4', '5');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '557b7f4de2be11fd91d173d236fea6b4', '12');
INSERT INTO `playerjineng` VALUES ('Nộ huyết bạo', '7', '12', '2', '20', '8', 'df1905b2799580cd3861d79686bacbad', '5');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', 'a82a81044ec116f876d03885c2973ba6', '0');
INSERT INTO `playerjineng` VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '5342074c8ce889f9ce11bcd4f254355f', '0');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'a82a81044ec116f876d03885c2973ba6', '0');
INSERT INTO `playerjineng` VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', 'a82a81044ec116f876d03885c2973ba6', '3');
INSERT INTO `playerjineng` VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '5342074c8ce889f9ce11bcd4f254355f', '0');
INSERT INTO `playerjineng` VALUES ('Nộ huyết bạo', '7', '12', '2', '20', '8', '3204b1df760fd73acf5332398961f416', '3');
INSERT INTO `playerjineng` VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '3204b1df760fd73acf5332398961f416', '10');
INSERT INTO `playerjineng` VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '3204b1df760fd73acf5332398961f416', '19');
INSERT INTO `playerjineng` VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '7d1526a0dd4803a1fda914bcebd93b47', '5');

-- ----------------------------
-- Table structure for playerrenwu
-- ----------------------------
DROP TABLE IF EXISTS `playerrenwu`;
CREATE TABLE `playerrenwu` (
  `rwname` varchar(255) NOT NULL,
  `rwzl` int(11) NOT NULL,
  `rwdj` varchar(255) NOT NULL,
  `rwzb` varchar(255) NOT NULL,
  `rwexp` varchar(255) NOT NULL,
  `rwyxb` varchar(255) NOT NULL,
  `sid` text NOT NULL,
  `rwzt` int(11) NOT NULL,
  `rwid` int(11) NOT NULL,
  `rwyq` int(11) NOT NULL,
  `rwcount` int(11) NOT NULL,
  `rwnowcount` int(11) NOT NULL,
  `rwlx` int(11) NOT NULL,
  `rwyp` text NOT NULL,
  `data` int(11) NOT NULL,
  `rwjineng` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of playerrenwu
-- ----------------------------
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '43e4c5c6dda6740216e3bd54ff200c15', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'c9879e4c3738297c06b0b14d78dc39d6', '3', '13', '56', '5', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '43e4c5c6dda6740216e3bd54ff200c15', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'c9879e4c3738297c06b0b14d78dc39d6', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'fe770ad48c2efa7f70b271527359d0ed', '1', '13', '56', '5', '2', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'c9879e4c3738297c06b0b14d78dc39d6', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '43e4c5c6dda6740216e3bd54ff200c15', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'c9879e4c3738297c06b0b14d78dc39d6', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '43e4c5c6dda6740216e3bd54ff200c15', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'c9879e4c3738297c06b0b14d78dc39d6', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '43e4c5c6dda6740216e3bd54ff200c15', '1', '19', '76', '50', '11', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '43e4c5c6dda6740216e3bd54ff200c15', '1', '20', '77', '50', '7', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'dc00cd1d5392e16138e78f31a14653fc', '1', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '6d07cdb650fc1fca94c0dd51a8ed971e', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '377b01fca16375319e1d921b89f66604', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '6d07cdb650fc1fca94c0dd51a8ed971e', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'bb2a45b7652a7900e7810128a329597e', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '6d07cdb650fc1fca94c0dd51a8ed971e', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '6d07cdb650fc1fca94c0dd51a8ed971e', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '6d07cdb650fc1fca94c0dd51a8ed971e', '1', '19', '76', '50', '15', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '6d07cdb650fc1fca94c0dd51a8ed971e', '1', '20', '77', '50', '8', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '6d07cdb650fc1fca94c0dd51a8ed971e', '1', '13', '56', '5', '0', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'eb61a0b08b9bfdfda961d64410eba5bc', '3', '13', '56', '5', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'eb61a0b08b9bfdfda961d64410eba5bc', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'eb61a0b08b9bfdfda961d64410eba5bc', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'eb61a0b08b9bfdfda961d64410eba5bc', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '781a121e409741ff53f5978578067146', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '781a121e409741ff53f5978578067146', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '781a121e409741ff53f5978578067146', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '781a121e409741ff53f5978578067146', '3', '13', '56', '5', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '781a121e409741ff53f5978578067146', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '781a121e409741ff53f5978578067146', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '77099dca8f67b65ca91af53d0461ac2f', '3', '13', '56', '5', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '775c0ff651b405a676fc9ee1729302f4', '3', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '775c0ff651b405a676fc9ee1729302f4', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '77099dca8f67b65ca91af53d0461ac2f', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '1de67183872072ed605030a8bf3059be', '3', '13', '56', '5', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '1de67183872072ed605030a8bf3059be', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '1de67183872072ed605030a8bf3059be', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '77099dca8f67b65ca91af53d0461ac2f', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '77099dca8f67b65ca91af53d0461ac2f', '1', '29', '62', '10', '3', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '1de67183872072ed605030a8bf3059be', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '1de67183872072ed605030a8bf3059be', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '77099dca8f67b65ca91af53d0461ac2f', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'eb61a0b08b9bfdfda961d64410eba5bc', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'eb61a0b08b9bfdfda961d64410eba5bc', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '43e4c5c6dda6740216e3bd54ff200c15', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'bb2a45b7652a7900e7810128a329597e', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'bb2a45b7652a7900e7810128a329597e', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '781a121e409741ff53f5978578067146', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '781a121e409741ff53f5978578067146', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'eb61a0b08b9bfdfda961d64410eba5bc', '1', '19', '76', '50', '1', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '781a121e409741ff53f5978578067146', '1', '21', '82', '30', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'eb61a0b08b9bfdfda961d64410eba5bc', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', 'eb61a0b08b9bfdfda961d64410eba5bc', '1', '21', '82', '30', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '592857bc812f813ed52fa8b187582fc2', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '592857bc812f813ed52fa8b187582fc2', '1', '13', '56', '5', '0', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '592857bc812f813ed52fa8b187582fc2', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '592857bc812f813ed52fa8b187582fc2', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '592857bc812f813ed52fa8b187582fc2', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '2f30be56d4505a584b454357bfcaa618', '1', '25', '55', '20', '3', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '592857bc812f813ed52fa8b187582fc2', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'ba5b232ca920fefa398ae123afcc87eb', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'ba5b232ca920fefa398ae123afcc87eb', '3', '13', '56', '5', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'ba5b232ca920fefa398ae123afcc87eb', '1', '25', '55', '20', '15', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'ef0de555ed6bb051e1a18e2141be60a4', '1', '25', '55', '20', '10', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'ad8f4d8e577f50deae4492bd03c96b56', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'ad8f4d8e577f50deae4492bd03c96b56', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'ad8f4d8e577f50deae4492bd03c96b56', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'ad8f4d8e577f50deae4492bd03c96b56', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'ad8f4d8e577f50deae4492bd03c96b56', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'ad8f4d8e577f50deae4492bd03c96b56', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'ad8f4d8e577f50deae4492bd03c96b56', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'ad8f4d8e577f50deae4492bd03c96b56', '1', '13', '56', '5', '0', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '53b5753ac98d992ebb0e7c3ad6b7d2e4', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '2de0f1d3eca04c1a8aff5354db0874ed', '2', '13', '56', '5', '5', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '2de0f1d3eca04c1a8aff5354db0874ed', '1', '25', '55', '20', '5', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '2de0f1d3eca04c1a8aff5354db0874ed', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '2de0f1d3eca04c1a8aff5354db0874ed', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '9bb5f086e2f1efdbc8215e55f8a4a30f', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '9bb5f086e2f1efdbc8215e55f8a4a30f', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '9bb5f086e2f1efdbc8215e55f8a4a30f', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '9bb5f086e2f1efdbc8215e55f8a4a30f', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '9bb5f086e2f1efdbc8215e55f8a4a30f', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'ce13ba86e509d2fab5ed13c2cddf00c9', '3', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'ce13ba86e509d2fab5ed13c2cddf00c9', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'ce13ba86e509d2fab5ed13c2cddf00c9', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'ce13ba86e509d2fab5ed13c2cddf00c9', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '2ff85222525dc6103813d8c61907572e', '1', '13', '56', '5', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'ce13ba86e509d2fab5ed13c2cddf00c9', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '2ff85222525dc6103813d8c61907572e', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '2ff85222525dc6103813d8c61907572e', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'bb2a45b7652a7900e7810128a329597e', '3', '13', '56', '5', '0', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'bb2a45b7652a7900e7810128a329597e', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'bb2a45b7652a7900e7810128a329597e', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'ef0de555ed6bb051e1a18e2141be60a4', '1', '13', '56', '5', '4', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '9bb5f086e2f1efdbc8215e55f8a4a30f', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '9bb5f086e2f1efdbc8215e55f8a4a30f', '3', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'bb2a45b7652a7900e7810128a329597e', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '06569f4ff7f633af6e060480a0431526', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '06569f4ff7f633af6e060480a0431526', '1', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '06569f4ff7f633af6e060480a0431526', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'fe770ad48c2efa7f70b271527359d0ed', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '4e079b4084dcdd84cf4393a003a38283', '3', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '4e079b4084dcdd84cf4393a003a38283', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '014f052e766dfebb8a3dff85c525f33d', '1', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '4e079b4084dcdd84cf4393a003a38283', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '4e079b4084dcdd84cf4393a003a38283', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '775c0ff651b405a676fc9ee1729302f4', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '775c0ff651b405a676fc9ee1729302f4', '1', '21', '82', '30', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '4e079b4084dcdd84cf4393a003a38283', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'ab427a3da6d74b88bcc13985a99f2fe3', '1', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '4e079b4084dcdd84cf4393a003a38283', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '4e079b4084dcdd84cf4393a003a38283', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'aa588ffcf27da87551c01d7c88b24829', '3', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'aa588ffcf27da87551c01d7c88b24829', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'aa588ffcf27da87551c01d7c88b24829', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '3efda130336e54b2ab0463e97020858d', '1', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '44820855281001694b3ec98fb720b0b4', '1', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '3efda130336e54b2ab0463e97020858d', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '3efda130336e54b2ab0463e97020858d', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'aa588ffcf27da87551c01d7c88b24829', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'bb2a45b7652a7900e7810128a329597e', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'ce13ba86e509d2fab5ed13c2cddf00c9', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'ce13ba86e509d2fab5ed13c2cddf00c9', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'aa588ffcf27da87551c01d7c88b24829', '1', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'a71dfe5ae44c6f0d4c4be100a2e85748', '3', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'a71dfe5ae44c6f0d4c4be100a2e85748', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'a71dfe5ae44c6f0d4c4be100a2e85748', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'ce13ba86e509d2fab5ed13c2cddf00c9', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', 'ce13ba86e509d2fab5ed13c2cddf00c9', '1', '21', '82', '30', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'a71dfe5ae44c6f0d4c4be100a2e85748', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'a71dfe5ae44c6f0d4c4be100a2e85748', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'a71dfe5ae44c6f0d4c4be100a2e85748', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '98c04e5c0946bf13d399e8577f181912', '1', '25', '55', '20', '9', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'ea5a17b7f6c42320f7c242f2871a0f8d', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '377b01fca16375319e1d921b89f66604', '3', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'ef0de555ed6bb051e1a18e2141be60a4', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '7159624dfdba178c848da03a6ffefec9', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '7159624dfdba178c848da03a6ffefec9', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '7159624dfdba178c848da03a6ffefec9', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'dbbec33ed7095aa0b5bc8b63e0ab9023', '1', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', 'f58bb53a4bdd39d6d70b706d77fbc74f', '1', '21', '82', '30', '0', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'c75c050dc1b04f75f8211f68505097b1', '2', '13', '56', '5', '5', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'c75c050dc1b04f75f8211f68505097b1', '1', '25', '55', '20', '4', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'c75c050dc1b04f75f8211f68505097b1', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '181c4ae732e839b1b07425f056e83f51', '1', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '181c4ae732e839b1b07425f056e83f51', '1', '25', '55', '20', '2', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '181c4ae732e839b1b07425f056e83f51', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '014f052e766dfebb8a3dff85c525f33d', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '014f052e766dfebb8a3dff85c525f33d', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '2007608a6942d33ec38e7c3d870fa674', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '2007608a6942d33ec38e7c3d870fa674', '1', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '2007608a6942d33ec38e7c3d870fa674', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '2007608a6942d33ec38e7c3d870fa674', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'cc5cfc9a3fac118adae1bfb7f6dc6c3a', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '2007608a6942d33ec38e7c3d870fa674', '3', '13', '56', '5', '0', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'cc5cfc9a3fac118adae1bfb7f6dc6c3a', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '6d07cdb650fc1fca94c0dd51a8ed971e', '1', '21', '82', '30', '1', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'dd58b4170ec8d6d20f876405b4b1265d', '3', '13', '56', '5', '0', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'dd58b4170ec8d6d20f876405b4b1265d', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'dd58b4170ec8d6d20f876405b4b1265d', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'dd58b4170ec8d6d20f876405b4b1265d', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'dd58b4170ec8d6d20f876405b4b1265d', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', 'dd58b4170ec8d6d20f876405b4b1265d', '1', '21', '82', '30', '0', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'dd58b4170ec8d6d20f876405b4b1265d', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'dd58b4170ec8d6d20f876405b4b1265d', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'dd58b4170ec8d6d20f876405b4b1265d', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'd4cd8bac31b76768226bd72adc430ab9', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'd4cd8bac31b76768226bd72adc430ab9', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '7159624dfdba178c848da03a6ffefec9', '3', '13', '56', '5', '0', '2', '', '24', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'd4cd8bac31b76768226bd72adc430ab9', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '97563ab1d73bbb1e071ec933b5b06e6c', '1', '25', '55', '20', '5', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '97563ab1d73bbb1e071ec933b5b06e6c', '3', '13', '56', '5', '0', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'f58bb53a4bdd39d6d70b706d77fbc74f', '1', '19', '76', '50', '4', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'f58bb53a4bdd39d6d70b706d77fbc74f', '1', '20', '77', '50', '1', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'e777555550491c15e506da8cafb60086', '3', '13', '56', '5', '0', '2', '', '24', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'e777555550491c15e506da8cafb60086', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'e777555550491c15e506da8cafb60086', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'e777555550491c15e506da8cafb60086', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'e777555550491c15e506da8cafb60086', '1', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '7159624dfdba178c848da03a6ffefec9', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '7159624dfdba178c848da03a6ffefec9', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '087efeb819f49c1789df1f599ec15388', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '087efeb819f49c1789df1f599ec15388', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '087efeb819f49c1789df1f599ec15388', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '087efeb819f49c1789df1f599ec15388', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '3c9d1d6c8f225e9e4139cccd830fdd00', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '3c9d1d6c8f225e9e4139cccd830fdd00', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '3c9d1d6c8f225e9e4139cccd830fdd00', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'f76c11b6601d3a6ce505c616b64ed478', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'f76c11b6601d3a6ce505c616b64ed478', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '42352a5bb2acc1e76e8a2fa10ba7673b', '1', '25', '55', '20', '3', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'f76c11b6601d3a6ce505c616b64ed478', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'f76c11b6601d3a6ce505c616b64ed478', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '0ed4ce0a982475dad32cea331e8e50d7', '3', '13', '56', '5', '0', '2', '', '2', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'bd2c1545c6284ceb5cd83c9cbe1f8ec7', '1', '13', '56', '5', '2', '2', '', '2', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '0ed4ce0a982475dad32cea331e8e50d7', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '0ed4ce0a982475dad32cea331e8e50d7', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '0ed4ce0a982475dad32cea331e8e50d7', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'f76c11b6601d3a6ce505c616b64ed478', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '0ed4ce0a982475dad32cea331e8e50d7', '1', '29', '62', '10', '2', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '4cfb676f793c954980bab3c8ad2e2a5a', '1', '13', '56', '5', '1', '2', '', '5', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '9f98bca6ec1fa9e5b63f70012148b511', '1', '25', '55', '20', '1', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '9f98bca6ec1fa9e5b63f70012148b511', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'e14b6e0d27bea46402a112c75c170887', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'f76c11b6601d3a6ce505c616b64ed478', '1', '19', '76', '50', '12', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'f76c11b6601d3a6ce505c616b64ed478', '1', '20', '77', '50', '8', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '4f51a51d5a72504387e6fd56da3464fe', '1', '13', '56', '5', '1', '2', '', '3', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '3bfa14243cba16bb92e090b54cc5d544', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '3bfa14243cba16bb92e090b54cc5d544', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '3bfa14243cba16bb92e090b54cc5d544', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '3bfa14243cba16bb92e090b54cc5d544', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '3bfa14243cba16bb92e090b54cc5d544', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'e14b6e0d27bea46402a112c75c170887', '3', '13', '56', '5', '0', '2', '', '3', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'e14b6e0d27bea46402a112c75c170887', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'e14b6e0d27bea46402a112c75c170887', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'e14b6e0d27bea46402a112c75c170887', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '3c9d1d6c8f225e9e4139cccd830fdd00', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '3c9d1d6c8f225e9e4139cccd830fdd00', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '3c9d1d6c8f225e9e4139cccd830fdd00', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'e14b6e0d27bea46402a112c75c170887', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'e14b6e0d27bea46402a112c75c170887', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'e14b6e0d27bea46402a112c75c170887', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'b7f5e984a6a22f3ef2b4072f2614f43e', '1', '13', '56', '5', '0', '2', '', '29', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'b7f5e984a6a22f3ef2b4072f2614f43e', '1', '25', '55', '20', '4', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'b7f5e984a6a22f3ef2b4072f2614f43e', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '0bc389301f085642f280e2bb5736a480', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'f0be893286b66272230904a0a7d33168', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'f0be893286b66272230904a0a7d33168', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'f0be893286b66272230904a0a7d33168', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '43e4c5c6dda6740216e3bd54ff200c15', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'c9879e4c3738297c06b0b14d78dc39d6', '3', '13', '56', '5', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '43e4c5c6dda6740216e3bd54ff200c15', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'c9879e4c3738297c06b0b14d78dc39d6', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'fe770ad48c2efa7f70b271527359d0ed', '1', '13', '56', '5', '2', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'c9879e4c3738297c06b0b14d78dc39d6', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '43e4c5c6dda6740216e3bd54ff200c15', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', 'c9879e4c3738297c06b0b14d78dc39d6', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '43e4c5c6dda6740216e3bd54ff200c15', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', 'c9879e4c3738297c06b0b14d78dc39d6', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', '43e4c5c6dda6740216e3bd54ff200c15', '1', '19', '76', '50', '11', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', '43e4c5c6dda6740216e3bd54ff200c15', '1', '20', '77', '50', '7', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'dc00cd1d5392e16138e78f31a14653fc', '1', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '6d07cdb650fc1fca94c0dd51a8ed971e', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '377b01fca16375319e1d921b89f66604', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '6d07cdb650fc1fca94c0dd51a8ed971e', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'bb2a45b7652a7900e7810128a329597e', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '6d07cdb650fc1fca94c0dd51a8ed971e', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '6d07cdb650fc1fca94c0dd51a8ed971e', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', '6d07cdb650fc1fca94c0dd51a8ed971e', '1', '19', '76', '50', '15', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', '6d07cdb650fc1fca94c0dd51a8ed971e', '1', '20', '77', '50', '8', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '6d07cdb650fc1fca94c0dd51a8ed971e', '1', '13', '56', '5', '0', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'eb61a0b08b9bfdfda961d64410eba5bc', '3', '13', '56', '5', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'eb61a0b08b9bfdfda961d64410eba5bc', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'eb61a0b08b9bfdfda961d64410eba5bc', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', 'eb61a0b08b9bfdfda961d64410eba5bc', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', '781a121e409741ff53f5978578067146', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '781a121e409741ff53f5978578067146', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '781a121e409741ff53f5978578067146', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '781a121e409741ff53f5978578067146', '3', '13', '56', '5', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '781a121e409741ff53f5978578067146', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '781a121e409741ff53f5978578067146', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '77099dca8f67b65ca91af53d0461ac2f', '3', '13', '56', '5', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', '775c0ff651b405a676fc9ee1729302f4', '3', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', '775c0ff651b405a676fc9ee1729302f4', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '77099dca8f67b65ca91af53d0461ac2f', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '1de67183872072ed605030a8bf3059be', '3', '13', '56', '5', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '1de67183872072ed605030a8bf3059be', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '1de67183872072ed605030a8bf3059be', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '77099dca8f67b65ca91af53d0461ac2f', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '77099dca8f67b65ca91af53d0461ac2f', '1', '29', '62', '10', '3', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '1de67183872072ed605030a8bf3059be', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '1de67183872072ed605030a8bf3059be', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '77099dca8f67b65ca91af53d0461ac2f', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', 'eb61a0b08b9bfdfda961d64410eba5bc', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', 'eb61a0b08b9bfdfda961d64410eba5bc', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', '43e4c5c6dda6740216e3bd54ff200c15', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', 'bb2a45b7652a7900e7810128a329597e', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'bb2a45b7652a7900e7810128a329597e', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', '781a121e409741ff53f5978578067146', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', '781a121e409741ff53f5978578067146', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', 'eb61a0b08b9bfdfda961d64410eba5bc', '1', '19', '76', '50', '1', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('赤鳞兽皮', '2', '1|10,10|50', '39', '800', '350', '781a121e409741ff53f5978578067146', '1', '21', '82', '30', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', 'eb61a0b08b9bfdfda961d64410eba5bc', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('赤鳞兽皮', '2', '1|10,10|50', '39', '800', '350', 'eb61a0b08b9bfdfda961d64410eba5bc', '1', '21', '82', '30', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', '592857bc812f813ed52fa8b187582fc2', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '592857bc812f813ed52fa8b187582fc2', '1', '13', '56', '5', '0', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '592857bc812f813ed52fa8b187582fc2', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '592857bc812f813ed52fa8b187582fc2', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '592857bc812f813ed52fa8b187582fc2', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '2f30be56d4505a584b454357bfcaa618', '1', '25', '55', '20', '3', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '592857bc812f813ed52fa8b187582fc2', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'ba5b232ca920fefa398ae123afcc87eb', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'ba5b232ca920fefa398ae123afcc87eb', '3', '13', '56', '5', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'ba5b232ca920fefa398ae123afcc87eb', '1', '25', '55', '20', '15', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'ef0de555ed6bb051e1a18e2141be60a4', '1', '25', '55', '20', '10', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'ad8f4d8e577f50deae4492bd03c96b56', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'ad8f4d8e577f50deae4492bd03c96b56', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', 'ad8f4d8e577f50deae4492bd03c96b56', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', 'ad8f4d8e577f50deae4492bd03c96b56', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', 'ad8f4d8e577f50deae4492bd03c96b56', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', 'ad8f4d8e577f50deae4492bd03c96b56', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', 'ad8f4d8e577f50deae4492bd03c96b56', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'ad8f4d8e577f50deae4492bd03c96b56', '1', '13', '56', '5', '0', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '53b5753ac98d992ebb0e7c3ad6b7d2e4', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '2de0f1d3eca04c1a8aff5354db0874ed', '2', '13', '56', '5', '5', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '2de0f1d3eca04c1a8aff5354db0874ed', '1', '25', '55', '20', '5', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '2de0f1d3eca04c1a8aff5354db0874ed', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', '2de0f1d3eca04c1a8aff5354db0874ed', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '9bb5f086e2f1efdbc8215e55f8a4a30f', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '9bb5f086e2f1efdbc8215e55f8a4a30f', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '9bb5f086e2f1efdbc8215e55f8a4a30f', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '9bb5f086e2f1efdbc8215e55f8a4a30f', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', '9bb5f086e2f1efdbc8215e55f8a4a30f', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'ce13ba86e509d2fab5ed13c2cddf00c9', '3', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'ce13ba86e509d2fab5ed13c2cddf00c9', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'ce13ba86e509d2fab5ed13c2cddf00c9', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', 'ce13ba86e509d2fab5ed13c2cddf00c9', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '2ff85222525dc6103813d8c61907572e', '1', '13', '56', '5', '0', '2', '', '21', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', 'ce13ba86e509d2fab5ed13c2cddf00c9', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '2ff85222525dc6103813d8c61907572e', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '2ff85222525dc6103813d8c61907572e', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'bb2a45b7652a7900e7810128a329597e', '3', '13', '56', '5', '0', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', 'bb2a45b7652a7900e7810128a329597e', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', 'bb2a45b7652a7900e7810128a329597e', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'ef0de555ed6bb051e1a18e2141be60a4', '1', '13', '56', '5', '4', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', '9bb5f086e2f1efdbc8215e55f8a4a30f', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', '9bb5f086e2f1efdbc8215e55f8a4a30f', '3', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', 'bb2a45b7652a7900e7810128a329597e', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '06569f4ff7f633af6e060480a0431526', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '06569f4ff7f633af6e060480a0431526', '1', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '06569f4ff7f633af6e060480a0431526', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'fe770ad48c2efa7f70b271527359d0ed', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '4e079b4084dcdd84cf4393a003a38283', '3', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '4e079b4084dcdd84cf4393a003a38283', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '014f052e766dfebb8a3dff85c525f33d', '1', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '4e079b4084dcdd84cf4393a003a38283', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '4e079b4084dcdd84cf4393a003a38283', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '775c0ff651b405a676fc9ee1729302f4', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('赤鳞兽皮', '2', '1|10,10|50', '39', '800', '350', '775c0ff651b405a676fc9ee1729302f4', '1', '21', '82', '30', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '4e079b4084dcdd84cf4393a003a38283', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'ab427a3da6d74b88bcc13985a99f2fe3', '1', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', '4e079b4084dcdd84cf4393a003a38283', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', '4e079b4084dcdd84cf4393a003a38283', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'aa588ffcf27da87551c01d7c88b24829', '3', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'aa588ffcf27da87551c01d7c88b24829', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'aa588ffcf27da87551c01d7c88b24829', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '3efda130336e54b2ab0463e97020858d', '1', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '44820855281001694b3ec98fb720b0b4', '1', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '3efda130336e54b2ab0463e97020858d', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '3efda130336e54b2ab0463e97020858d', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', 'aa588ffcf27da87551c01d7c88b24829', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', 'bb2a45b7652a7900e7810128a329597e', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', 'ce13ba86e509d2fab5ed13c2cddf00c9', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', 'ce13ba86e509d2fab5ed13c2cddf00c9', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', 'aa588ffcf27da87551c01d7c88b24829', '1', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'a71dfe5ae44c6f0d4c4be100a2e85748', '3', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'a71dfe5ae44c6f0d4c4be100a2e85748', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'a71dfe5ae44c6f0d4c4be100a2e85748', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', 'ce13ba86e509d2fab5ed13c2cddf00c9', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('赤鳞兽皮', '2', '1|10,10|50', '39', '800', '350', 'ce13ba86e509d2fab5ed13c2cddf00c9', '1', '21', '82', '30', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', 'a71dfe5ae44c6f0d4c4be100a2e85748', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', 'a71dfe5ae44c6f0d4c4be100a2e85748', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', 'a71dfe5ae44c6f0d4c4be100a2e85748', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '98c04e5c0946bf13d399e8577f181912', '1', '25', '55', '20', '9', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', 'ea5a17b7f6c42320f7c242f2871a0f8d', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '377b01fca16375319e1d921b89f66604', '3', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'ef0de555ed6bb051e1a18e2141be60a4', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '7159624dfdba178c848da03a6ffefec9', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '7159624dfdba178c848da03a6ffefec9', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '7159624dfdba178c848da03a6ffefec9', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'dbbec33ed7095aa0b5bc8b63e0ab9023', '1', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('赤鳞兽皮', '2', '1|10,10|50', '39', '800', '350', 'f58bb53a4bdd39d6d70b706d77fbc74f', '1', '21', '82', '30', '0', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'c75c050dc1b04f75f8211f68505097b1', '2', '13', '56', '5', '5', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'c75c050dc1b04f75f8211f68505097b1', '1', '25', '55', '20', '4', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'c75c050dc1b04f75f8211f68505097b1', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '181c4ae732e839b1b07425f056e83f51', '1', '13', '56', '5', '0', '2', '', '22', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '181c4ae732e839b1b07425f056e83f51', '1', '25', '55', '20', '2', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '181c4ae732e839b1b07425f056e83f51', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '014f052e766dfebb8a3dff85c525f33d', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '014f052e766dfebb8a3dff85c525f33d', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '2007608a6942d33ec38e7c3d870fa674', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '2007608a6942d33ec38e7c3d870fa674', '1', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '2007608a6942d33ec38e7c3d870fa674', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '2007608a6942d33ec38e7c3d870fa674', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'cc5cfc9a3fac118adae1bfb7f6dc6c3a', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '2007608a6942d33ec38e7c3d870fa674', '3', '13', '56', '5', '0', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'cc5cfc9a3fac118adae1bfb7f6dc6c3a', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('赤鳞兽皮', '2', '1|10,10|50', '39', '800', '350', '6d07cdb650fc1fca94c0dd51a8ed971e', '1', '21', '82', '30', '1', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'dd58b4170ec8d6d20f876405b4b1265d', '3', '13', '56', '5', '0', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'dd58b4170ec8d6d20f876405b4b1265d', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'dd58b4170ec8d6d20f876405b4b1265d', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', 'dd58b4170ec8d6d20f876405b4b1265d', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', 'dd58b4170ec8d6d20f876405b4b1265d', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('赤鳞兽皮', '2', '1|10,10|50', '39', '800', '350', 'dd58b4170ec8d6d20f876405b4b1265d', '1', '21', '82', '30', '0', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', 'dd58b4170ec8d6d20f876405b4b1265d', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', 'dd58b4170ec8d6d20f876405b4b1265d', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', 'dd58b4170ec8d6d20f876405b4b1265d', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'd4cd8bac31b76768226bd72adc430ab9', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'd4cd8bac31b76768226bd72adc430ab9', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '7159624dfdba178c848da03a6ffefec9', '3', '13', '56', '5', '0', '2', '', '24', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', 'd4cd8bac31b76768226bd72adc430ab9', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '97563ab1d73bbb1e071ec933b5b06e6c', '1', '25', '55', '20', '5', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '97563ab1d73bbb1e071ec933b5b06e6c', '3', '13', '56', '5', '0', '2', '', '23', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', 'f58bb53a4bdd39d6d70b706d77fbc74f', '1', '19', '76', '50', '4', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', 'f58bb53a4bdd39d6d70b706d77fbc74f', '1', '20', '77', '50', '1', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'e777555550491c15e506da8cafb60086', '3', '13', '56', '5', '0', '2', '', '24', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'e777555550491c15e506da8cafb60086', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'e777555550491c15e506da8cafb60086', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', 'e777555550491c15e506da8cafb60086', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', 'e777555550491c15e506da8cafb60086', '1', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '7159624dfdba178c848da03a6ffefec9', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', '7159624dfdba178c848da03a6ffefec9', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '087efeb819f49c1789df1f599ec15388', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '087efeb819f49c1789df1f599ec15388', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '087efeb819f49c1789df1f599ec15388', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '087efeb819f49c1789df1f599ec15388', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', '3c9d1d6c8f225e9e4139cccd830fdd00', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '3c9d1d6c8f225e9e4139cccd830fdd00', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '3c9d1d6c8f225e9e4139cccd830fdd00', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'f76c11b6601d3a6ce505c616b64ed478', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'f76c11b6601d3a6ce505c616b64ed478', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '42352a5bb2acc1e76e8a2fa10ba7673b', '1', '25', '55', '20', '3', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', 'f76c11b6601d3a6ce505c616b64ed478', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', 'f76c11b6601d3a6ce505c616b64ed478', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '0ed4ce0a982475dad32cea331e8e50d7', '3', '13', '56', '5', '0', '2', '', '2', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'bd2c1545c6284ceb5cd83c9cbe1f8ec7', '1', '13', '56', '5', '2', '2', '', '2', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '0ed4ce0a982475dad32cea331e8e50d7', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '0ed4ce0a982475dad32cea331e8e50d7', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '0ed4ce0a982475dad32cea331e8e50d7', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', 'f76c11b6601d3a6ce505c616b64ed478', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '0ed4ce0a982475dad32cea331e8e50d7', '1', '29', '62', '10', '2', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '4cfb676f793c954980bab3c8ad2e2a5a', '1', '13', '56', '5', '1', '2', '', '5', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '9f98bca6ec1fa9e5b63f70012148b511', '1', '25', '55', '20', '1', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '9f98bca6ec1fa9e5b63f70012148b511', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', 'e14b6e0d27bea46402a112c75c170887', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', 'f76c11b6601d3a6ce505c616b64ed478', '1', '19', '76', '50', '12', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', 'f76c11b6601d3a6ce505c616b64ed478', '1', '20', '77', '50', '8', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', '4f51a51d5a72504387e6fd56da3464fe', '1', '13', '56', '5', '1', '2', '', '3', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', '3bfa14243cba16bb92e090b54cc5d544', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', '3bfa14243cba16bb92e090b54cc5d544', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '3bfa14243cba16bb92e090b54cc5d544', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '3bfa14243cba16bb92e090b54cc5d544', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', '3bfa14243cba16bb92e090b54cc5d544', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('山猪祸乱', '2', '1|5', '24', '100', '120', 'e14b6e0d27bea46402a112c75c170887', '3', '13', '56', '5', '0', '2', '', '3', '');
INSERT INTO `playerrenwu` VALUES ('硬翅蜂扰', '2', '1|15,6|100,7|100', '', '200', '150', 'e14b6e0d27bea46402a112c75c170887', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('故人', '3', '1|50', '29', '400', '200', 'e14b6e0d27bea46402a112c75c170887', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', 'e14b6e0d27bea46402a112c75c170887', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('找王大妈', '3', '1|20', '25', '200', '100', '3c9d1d6c8f225e9e4139cccd830fdd00', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('狼患', '2', '1|100', '', '400', '300', '3c9d1d6c8f225e9e4139cccd830fdd00', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', '3c9d1d6c8f225e9e4139cccd830fdd00', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('屠尽妖王', '1', '', '45', '2000', '2000', 'e14b6e0d27bea46402a112c75c170887', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('杀!', '2', '1|50,9|50', '39', '600', '400', 'e14b6e0d27bea46402a112c75c170887', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('蛮!', '2', '1|30,9|50', '38', '500', '500', 'e14b6e0d27bea46402a112c75c170887', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'f0be893286b66272230904a0a7d33168', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'f0be893286b66272230904a0a7d33168', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'f0be893286b66272230904a0a7d33168', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'fc702e68dd02778b0063ab30b8fcbe39', '1', '13', '56', '5', '0', '2', '', '9', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '69c80660d27b6ae392cfcfaff9377abd', '1', '13', '56', '5', '0', '2', '', '9', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '7aa100d4e1f9756c2c918199f7c6f8cd', '2', '13', '56', '5', '5', '2', '', '9', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '69c80660d27b6ae392cfcfaff9377abd', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '69c80660d27b6ae392cfcfaff9377abd', '1', '25', '55', '20', '5', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '13a3d5a0563e16b28d4067a6e447b0d4', '1', '13', '56', '5', '0', '2', '', '9', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'fcbaafd29379e73cc90f1ef9045914ce', '1', '13', '56', '5', '0', '2', '', '9', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '7aa100d4e1f9756c2c918199f7c6f8cd', '2', '25', '55', '20', '20', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '79c81b5eeefef4266fd23277190b4d04', '1', '13', '56', '5', '0', '2', '', '9', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'c0787a8c7d117e9a540222e8c1b744af', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '0d35be128035927ccc312fd5d99eb55c', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '0d35be128035927ccc312fd5d99eb55c', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '1fa6b5e727cc597750bfe651fc651853', '1', '13', '56', '5', '0', '2', '', '9', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '7aa100d4e1f9756c2c918199f7c6f8cd', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '0d35be128035927ccc312fd5d99eb55c', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '1fa6b5e727cc597750bfe651fc651853', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '1fa6b5e727cc597750bfe651fc651853', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '76099934096490c1c7bc2959af26588c', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '016548348f966b71f67044f5dc225918', '1', '13', '56', '5', '0', '2', '', '9', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '76099934096490c1c7bc2959af26588c', '1', '13', '56', '5', '0', '2', '', '9', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '76099934096490c1c7bc2959af26588c', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '1fa6b5e727cc597750bfe651fc651853', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'efc744bfecbcc5b1d2443ff739987af9', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'e61fc72bbb8de0b15720aca8e2b5bd01', '1', '13', '56', '5', '0', '2', '', '9', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'f15a4aaba08473a5afd6a6521c76d9cf', '3', '13', '56', '5', '0', '2', '', '9', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'f15a4aaba08473a5afd6a6521c76d9cf', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'e61fc72bbb8de0b15720aca8e2b5bd01', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'e61fc72bbb8de0b15720aca8e2b5bd01', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'f15a4aaba08473a5afd6a6521c76d9cf', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'efc744bfecbcc5b1d2443ff739987af9', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '5342074c8ce889f9ce11bcd4f254355f', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '547f7c3b2c069650f414a69ef4402498', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '7153c651e46f98c7061e956c023b4fca', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '547f7c3b2c069650f414a69ef4402498', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '547f7c3b2c069650f414a69ef4402498', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '547f7c3b2c069650f414a69ef4402498', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '7153c651e46f98c7061e956c023b4fca', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '7153c651e46f98c7061e956c023b4fca', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'f15a4aaba08473a5afd6a6521c76d9cf', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'f15a4aaba08473a5afd6a6521c76d9cf', '1', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'efc744bfecbcc5b1d2443ff739987af9', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '0093a05e4ba35b6be322d2a7e4990bad', '1', '13', '56', '5', '0', '2', '', '9', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '0093a05e4ba35b6be322d2a7e4990bad', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '0093a05e4ba35b6be322d2a7e4990bad', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '0d35be128035927ccc312fd5d99eb55c', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'c0787a8c7d117e9a540222e8c1b744af', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '7153c651e46f98c7061e956c023b4fca', '1', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'c1b448051cf88f6dcf535ced41e53127', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'e3ce66181b307263d31593be743bdd64', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'e3ce66181b307263d31593be743bdd64', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'e3ce66181b307263d31593be743bdd64', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'df1905b2799580cd3861d79686bacbad', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '0d35be128035927ccc312fd5d99eb55c', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'c1b448051cf88f6dcf535ced41e53127', '3', '13', '56', '5', '0', '2', '', '9', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'c1b448051cf88f6dcf535ced41e53127', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '314b6439ec01d71838961c71c7d874c2', '2', '13', '56', '5', '5', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'c1b448051cf88f6dcf535ced41e53127', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'ccc7f7c378c0112078ac697276793ea4', '1', '25', '55', '20', '1', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'ccc7f7c378c0112078ac697276793ea4', '2', '13', '56', '5', '5', '2', '', '9', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '314b6439ec01d71838961c71c7d874c2', '1', '25', '55', '20', '1', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '0dee7d958d6808a52df8c485ce7657af', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'e3ce66181b307263d31593be743bdd64', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '314b6439ec01d71838961c71c7d874c2', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '7153c651e46f98c7061e956c023b4fca', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '7153c651e46f98c7061e956c023b4fca', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '0dee7d958d6808a52df8c485ce7657af', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'c0787a8c7d117e9a540222e8c1b744af', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '0dee7d958d6808a52df8c485ce7657af', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'deef530148bcb297a74d0509125b844f', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'e83893c48ddfe5e084b2bdea428aa07f', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'e03886cbdd41f2973d1e16d83a1250a2', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'efc744bfecbcc5b1d2443ff739987af9', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'deef530148bcb297a74d0509125b844f', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'efc744bfecbcc5b1d2443ff739987af9', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'deef530148bcb297a74d0509125b844f', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '0dee7d958d6808a52df8c485ce7657af', '1', '20', '77', '50', '11', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'deef530148bcb297a74d0509125b844f', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'e83893c48ddfe5e084b2bdea428aa07f', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'e83893c48ddfe5e084b2bdea428aa07f', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'e83893c48ddfe5e084b2bdea428aa07f', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '0dee7d958d6808a52df8c485ce7657af', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '0dee7d958d6808a52df8c485ce7657af', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'e03886cbdd41f2973d1e16d83a1250a2', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '0dee7d958d6808a52df8c485ce7657af', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'e83893c48ddfe5e084b2bdea428aa07f', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'e03886cbdd41f2973d1e16d83a1250a2', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'e03886cbdd41f2973d1e16d83a1250a2', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'c1b448051cf88f6dcf535ced41e53127', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'e3ce66181b307263d31593be743bdd64', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'e3ce66181b307263d31593be743bdd64', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '80eaf5ea9d36f0a8c87d3eba1bd05055', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'deef530148bcb297a74d0509125b844f', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '483047f1250b4db899cb9a4770efe1e2', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '0d35be128035927ccc312fd5d99eb55c', '1', '20', '77', '50', '27', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '483047f1250b4db899cb9a4770efe1e2', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'e03886cbdd41f2973d1e16d83a1250a2', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '0d35be128035927ccc312fd5d99eb55c', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'e83893c48ddfe5e084b2bdea428aa07f', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'e83893c48ddfe5e084b2bdea428aa07f', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'deef530148bcb297a74d0509125b844f', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'df1905b2799580cd3861d79686bacbad', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', 'deef530148bcb297a74d0509125b844f', '1', '21', '82', '30', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'c0787a8c7d117e9a540222e8c1b744af', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'c0787a8c7d117e9a540222e8c1b744af', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '91322e4d4529a1c0db2580a4d5e07ff1', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '91322e4d4529a1c0db2580a4d5e07ff1', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'c0787a8c7d117e9a540222e8c1b744af', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', 'c0787a8c7d117e9a540222e8c1b744af', '1', '21', '82', '30', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'c0787a8c7d117e9a540222e8c1b744af', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'deef530148bcb297a74d0509125b844f', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '483047f1250b4db899cb9a4770efe1e2', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '483047f1250b4db899cb9a4770efe1e2', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'df1905b2799580cd3861d79686bacbad', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'df1905b2799580cd3861d79686bacbad', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'e03886cbdd41f2973d1e16d83a1250a2', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '0d35be128035927ccc312fd5d99eb55c', '3', '21', '82', '30', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'deef530148bcb297a74d0509125b844f', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'e03886cbdd41f2973d1e16d83a1250a2', '3', '13', '56', '5', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '91322e4d4529a1c0db2580a4d5e07ff1', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '9c484fb3dc297a35f106796ed135a98d', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '483047f1250b4db899cb9a4770efe1e2', '1', '21', '82', '30', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '483047f1250b4db899cb9a4770efe1e2', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'c0787a8c7d117e9a540222e8c1b744af', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '7837bb48be44041b2ee92d061d08653e', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '483047f1250b4db899cb9a4770efe1e2', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '36774f5c423b7a8bb7858bb4642e128d', '1', '25', '55', '20', '12', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '80eaf5ea9d36f0a8c87d3eba1bd05055', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '0d35be128035927ccc312fd5d99eb55c', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '36774f5c423b7a8bb7858bb4642e128d', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '36774f5c423b7a8bb7858bb4642e128d', '2', '13', '56', '5', '5', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '80eaf5ea9d36f0a8c87d3eba1bd05055', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'efc744bfecbcc5b1d2443ff739987af9', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '80eaf5ea9d36f0a8c87d3eba1bd05055', '1', '21', '82', '30', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '80eaf5ea9d36f0a8c87d3eba1bd05055', '1', '25', '55', '20', '12', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '80eaf5ea9d36f0a8c87d3eba1bd05055', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '91322e4d4529a1c0db2580a4d5e07ff1', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '91322e4d4529a1c0db2580a4d5e07ff1', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '7837bb48be44041b2ee92d061d08653e', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '7837bb48be44041b2ee92d061d08653e', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '7837bb48be44041b2ee92d061d08653e', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '91322e4d4529a1c0db2580a4d5e07ff1', '3', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '91322e4d4529a1c0db2580a4d5e07ff1', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '91322e4d4529a1c0db2580a4d5e07ff1', '3', '13', '56', '5', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '483047f1250b4db899cb9a4770efe1e2', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '483047f1250b4db899cb9a4770efe1e2', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'e3ce66181b307263d31593be743bdd64', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '7837bb48be44041b2ee92d061d08653e', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '7837bb48be44041b2ee92d061d08653e', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', 'e3ce66181b307263d31593be743bdd64', '1', '21', '82', '30', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '7837bb48be44041b2ee92d061d08653e', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '11ee841a987d5674196d37fef51ed9a6', '3', '13', '56', '5', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '1f014c041b1cb42cb1a75f9449e99998', '3', '13', '56', '5', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '11ee841a987d5674196d37fef51ed9a6', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '11ee841a987d5674196d37fef51ed9a6', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'bd267f0b4e0b7f95c25dd9aae10964bf', '1', '13', '56', '5', '2', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '9467812eb836c2b70c021e8ef1d52ab1', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '1f014c041b1cb42cb1a75f9449e99998', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '11ee841a987d5674196d37fef51ed9a6', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'a82a81044ec116f876d03885c2973ba6', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '11ee841a987d5674196d37fef51ed9a6', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '1f014c041b1cb42cb1a75f9449e99998', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '1f014c041b1cb42cb1a75f9449e99998', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '1f014c041b1cb42cb1a75f9449e99998', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '11ee841a987d5674196d37fef51ed9a6', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '11ee841a987d5674196d37fef51ed9a6', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '0dee7d958d6808a52df8c485ce7657af', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '0dee7d958d6808a52df8c485ce7657af', '1', '21', '82', '30', '1', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'b647075c0aab822e3c4bb0a686fe297c', '1', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '547f7c3b2c069650f414a69ef4402498', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '547f7c3b2c069650f414a69ef4402498', '1', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'b647075c0aab822e3c4bb0a686fe297c', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'bd267f0b4e0b7f95c25dd9aae10964bf', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'bd267f0b4e0b7f95c25dd9aae10964bf', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'efc744bfecbcc5b1d2443ff739987af9', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', 'efc744bfecbcc5b1d2443ff739987af9', '1', '21', '82', '30', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'bb5bd10a3bf01a4b2b96413f9d68022d', '1', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '3204b1df760fd73acf5332398961f416', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '3204b1df760fd73acf5332398961f416', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '1f4d7e6d0493153d0a425f21883df5fe', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '3204b1df760fd73acf5332398961f416', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '3204b1df760fd73acf5332398961f416', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '3204b1df760fd73acf5332398961f416', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '3204b1df760fd73acf5332398961f416', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '17101f9d4b65bad5d190afab2f99117b', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '17101f9d4b65bad5d190afab2f99117b', '1', '13', '56', '5', '2', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '17101f9d4b65bad5d190afab2f99117b', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '754ae44f81dc019f17c06a41aa2ea715', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '754ae44f81dc019f17c06a41aa2ea715', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '754ae44f81dc019f17c06a41aa2ea715', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '754ae44f81dc019f17c06a41aa2ea715', '2', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '754ae44f81dc019f17c06a41aa2ea715', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '754ae44f81dc019f17c06a41aa2ea715', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '754ae44f81dc019f17c06a41aa2ea715', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '754ae44f81dc019f17c06a41aa2ea715', '1', '21', '82', '30', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '987fa1ed57063997f01f22767178a600', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '987fa1ed57063997f01f22767178a600', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '987fa1ed57063997f01f22767178a600', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '987fa1ed57063997f01f22767178a600', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '987fa1ed57063997f01f22767178a600', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '987fa1ed57063997f01f22767178a600', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '5cf73f12476e063f6cc35bae8304fa34', '1', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '5cf73f12476e063f6cc35bae8304fa34', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '5cf73f12476e063f6cc35bae8304fa34', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '547f7c3b2c069650f414a69ef4402498', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '7d1526a0dd4803a1fda914bcebd93b47', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '7d1526a0dd4803a1fda914bcebd93b47', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '53cd539db99d47571d60f4d91d019219', '3', '13', '56', '5', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'f039e55562a77296188f2963ca97fae1', '1', '13', '56', '5', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'f039e55562a77296188f2963ca97fae1', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'f039e55562a77296188f2963ca97fae1', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '7d1526a0dd4803a1fda914bcebd93b47', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '7d1526a0dd4803a1fda914bcebd93b47', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'f039e55562a77296188f2963ca97fae1', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '7d1526a0dd4803a1fda914bcebd93b47', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '7d1526a0dd4803a1fda914bcebd93b47', '3', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'aecc6f9f63ececb58dcfe256ac7d6897', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'f0ac44856637b747beb115331972de83', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'f0ac44856637b747beb115331972de83', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'f0ac44856637b747beb115331972de83', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '022efa153704457feb2e54c5bbe671b5', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '78d406e749821c6f055f787edde7fee2', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '78d406e749821c6f055f787edde7fee2', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'f0ac44856637b747beb115331972de83', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '5342074c8ce889f9ce11bcd4f254355f', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '78d406e749821c6f055f787edde7fee2', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '5342074c8ce889f9ce11bcd4f254355f', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '78d406e749821c6f055f787edde7fee2', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'f039e55562a77296188f2963ca97fae1', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '78d406e749821c6f055f787edde7fee2', '1', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'f0ac44856637b747beb115331972de83', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '5342074c8ce889f9ce11bcd4f254355f', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '78d406e749821c6f055f787edde7fee2', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'a995483a30393a2c0386c786200c4c84', '2', '13', '56', '5', '5', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'a995483a30393a2c0386c786200c4c84', '1', '25', '55', '20', '15', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'a995483a30393a2c0386c786200c4c84', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '7d1526a0dd4803a1fda914bcebd93b47', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'f0ac44856637b747beb115331972de83', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'f0ac44856637b747beb115331972de83', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '992f645ba70c1805cdefbc2514e110f9', '1', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'f039e55562a77296188f2963ca97fae1', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '987fa1ed57063997f01f22767178a600', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'fcdd5d501dd7b299a36d97981bbd664f', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'fcdd5d501dd7b299a36d97981bbd664f', '1', '25', '55', '20', '11', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'fcdd5d501dd7b299a36d97981bbd664f', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'b64e1867d3c120030fd43cbdbc2658d4', '1', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'b64e1867d3c120030fd43cbdbc2658d4', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'b64e1867d3c120030fd43cbdbc2658d4', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '987fa1ed57063997f01f22767178a600', '1', '21', '82', '30', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', 'a82a81044ec116f876d03885c2973ba6', '1', '21', '82', '30', '1', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '5342074c8ce889f9ce11bcd4f254355f', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '7d1526a0dd4803a1fda914bcebd93b47', '3', '21', '82', '30', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '46aff52038f560053282873df9cc93de', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '1f4d7e6d0493153d0a425f21883df5fe', '3', '13', '56', '5', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'a2345b09a0bcee79abe0008551ae9c75', '1', '13', '56', '5', '2', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'df1905b2799580cd3861d79686bacbad', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'df1905b2799580cd3861d79686bacbad', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '8d97e33eb204fcab472e184928d89803', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '6d269e625ac8a8e57a6f38d43ebbd3c6', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '6d269e625ac8a8e57a6f38d43ebbd3c6', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '6d269e625ac8a8e57a6f38d43ebbd3c6', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '6d269e625ac8a8e57a6f38d43ebbd3c6', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'df1905b2799580cd3861d79686bacbad', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '6d269e625ac8a8e57a6f38d43ebbd3c6', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', 'df1905b2799580cd3861d79686bacbad', '3', '21', '82', '30', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '5b5df97f24dda63106a3cfdbec0f2f37', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '5b5df97f24dda63106a3cfdbec0f2f37', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '5b5df97f24dda63106a3cfdbec0f2f37', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '5b5df97f24dda63106a3cfdbec0f2f37', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '5b5df97f24dda63106a3cfdbec0f2f37', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '6d269e625ac8a8e57a6f38d43ebbd3c6', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '6d269e625ac8a8e57a6f38d43ebbd3c6', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '7837bb48be44041b2ee92d061d08653e', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '7837bb48be44041b2ee92d061d08653e', '1', '21', '82', '30', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'eca24beba178ffa2d273410f2b1eff68', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '00bec478348b21e8e9135bb08a6787cd', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '00bec478348b21e8e9135bb08a6787cd', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '00bec478348b21e8e9135bb08a6787cd', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '00bec478348b21e8e9135bb08a6787cd', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', 'f0ac44856637b747beb115331972de83', '1', '21', '82', '30', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'f0ac44856637b747beb115331972de83', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '5be0b95fe4591bf4593f16cacfb9136c', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '5be0b95fe4591bf4593f16cacfb9136c', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '5be0b95fe4591bf4593f16cacfb9136c', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '5be0b95fe4591bf4593f16cacfb9136c', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '5be0b95fe4591bf4593f16cacfb9136c', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '8d97e33eb204fcab472e184928d89803', '3', '13', '56', '5', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'eae57174fc4d0114b0a244a0b4d46cd1', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'eae57174fc4d0114b0a244a0b4d46cd1', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '5b5df97f24dda63106a3cfdbec0f2f37', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'eae57174fc4d0114b0a244a0b4d46cd1', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '37ad93404bf7336ec20002eae73983ee', '1', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'eae57174fc4d0114b0a244a0b4d46cd1', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '37ad93404bf7336ec20002eae73983ee', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '5b5df97f24dda63106a3cfdbec0f2f37', '1', '21', '82', '30', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '5b5df97f24dda63106a3cfdbec0f2f37', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'a01bb3a16790c034b19c3bb873f5c824', '1', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'a01bb3a16790c034b19c3bb873f5c824', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'eae57174fc4d0114b0a244a0b4d46cd1', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'a01bb3a16790c034b19c3bb873f5c824', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '5b5df97f24dda63106a3cfdbec0f2f37', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'eae57174fc4d0114b0a244a0b4d46cd1', '1', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '65f69095d290c9579a2255210d058fb1', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '65f69095d290c9579a2255210d058fb1', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '65f69095d290c9579a2255210d058fb1', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '65f69095d290c9579a2255210d058fb1', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '65f69095d290c9579a2255210d058fb1', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '65f69095d290c9579a2255210d058fb1', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'a6edc2472e88417ac151bf97c7231a23', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '5342074c8ce889f9ce11bcd4f254355f', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '65f69095d290c9579a2255210d058fb1', '1', '19', '76', '50', '20', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '65f69095d290c9579a2255210d058fb1', '1', '21', '82', '30', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '759a989b9a2edd62f3ad5c481e935040', '1', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '5342074c8ce889f9ce11bcd4f254355f', '3', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '65f69095d290c9579a2255210d058fb1', '1', '20', '77', '50', '11', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'a6edc2472e88417ac151bf97c7231a23', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'a6edc2472e88417ac151bf97c7231a23', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'a6edc2472e88417ac151bf97c7231a23', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'a6edc2472e88417ac151bf97c7231a23', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'f365c41cca1867794c0d56a0d2964f52', '1', '13', '56', '5', '1', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'f365c41cca1867794c0d56a0d2964f52', '1', '25', '55', '20', '2', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'f365c41cca1867794c0d56a0d2964f52', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'c7fe80a512d34bc53240cf6127fc5be2', '1', '25', '55', '20', '1', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'f365c41cca1867794c0d56a0d2964f52', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'f365c41cca1867794c0d56a0d2964f52', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '5be0b95fe4591bf4593f16cacfb9136c', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'f365c41cca1867794c0d56a0d2964f52', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', 'f365c41cca1867794c0d56a0d2964f52', '1', '21', '82', '30', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'a6edc2472e88417ac151bf97c7231a23', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'a6edc2472e88417ac151bf97c7231a23', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'b0937c2a2e0292043bf9afbc25cc43d7', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'b0937c2a2e0292043bf9afbc25cc43d7', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'a82a81044ec116f876d03885c2973ba6', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'b0937c2a2e0292043bf9afbc25cc43d7', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'b0937c2a2e0292043bf9afbc25cc43d7', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '132a2ae60d254a56c7264893f03a6a25', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '132a2ae60d254a56c7264893f03a6a25', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '132a2ae60d254a56c7264893f03a6a25', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'f47ac3d9c8ff47415290e5bbee5d94ba', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '5be0b95fe4591bf4593f16cacfb9136c', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '5be0b95fe4591bf4593f16cacfb9136c', '1', '21', '82', '30', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'b0937c2a2e0292043bf9afbc25cc43d7', '1', '19', '76', '50', '19', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'a82a81044ec116f876d03885c2973ba6', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '132a2ae60d254a56c7264893f03a6a25', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'a82a81044ec116f876d03885c2973ba6', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '45500dfe80d0c1774817786a44a50e93', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '132a2ae60d254a56c7264893f03a6a25', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '132a2ae60d254a56c7264893f03a6a25', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '557b7f4de2be11fd91d173d236fea6b4', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '132a2ae60d254a56c7264893f03a6a25', '3', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'b0937c2a2e0292043bf9afbc25cc43d7', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'b0937c2a2e0292043bf9afbc25cc43d7', '1', '20', '77', '50', '2', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', 'b0937c2a2e0292043bf9afbc25cc43d7', '1', '21', '82', '30', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '7c8c3deb469f9576d97eb1bdedd44ded', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'a82a81044ec116f876d03885c2973ba6', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'a82a81044ec116f876d03885c2973ba6', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'de606cacc6a6ba649a3bf437b993d5fb', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'a82a81044ec116f876d03885c2973ba6', '3', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '9dc0bb8899c5497aa2dacab00c77fd5c', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '9dc0bb8899c5497aa2dacab00c77fd5c', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '9dc0bb8899c5497aa2dacab00c77fd5c', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '9dc0bb8899c5497aa2dacab00c77fd5c', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '1ad63d508f70be6d8d83235471f1fc8b', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '1ad63d508f70be6d8d83235471f1fc8b', '1', '25', '55', '20', '6', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '9dc0bb8899c5497aa2dacab00c77fd5c', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'df1905b2799580cd3861d79686bacbad', '3', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '9c484fb3dc297a35f106796ed135a98d', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '2f1d8f88000b56e6b5c3007d36f2c1c8', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '2f1d8f88000b56e6b5c3007d36f2c1c8', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '2f1d8f88000b56e6b5c3007d36f2c1c8', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '144f1c155fcb7fedf5915e15c68aed52', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '2f1d8f88000b56e6b5c3007d36f2c1c8', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '97d54e32270c248846cd545730dff24c', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '53cd539db99d47571d60f4d91d019219', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '2f1d8f88000b56e6b5c3007d36f2c1c8', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '3204b1df760fd73acf5332398961f416', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '07c4aa8db44ac27c5047134da59caf04', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '9dc0bb8899c5497aa2dacab00c77fd5c', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '83ad0022dd8994a98f4ddfda0c546082', '1', '13', '56', '5', '3', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '83ad0022dd8994a98f4ddfda0c546082', '1', '25', '55', '20', '5', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '83ad0022dd8994a98f4ddfda0c546082', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'aecc6f9f63ececb58dcfe256ac7d6897', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'aecc6f9f63ececb58dcfe256ac7d6897', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'aecc6f9f63ececb58dcfe256ac7d6897', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'aecc6f9f63ececb58dcfe256ac7d6897', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '2f1d8f88000b56e6b5c3007d36f2c1c8', '1', '20', '77', '50', '4', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '2f1d8f88000b56e6b5c3007d36f2c1c8', '1', '19', '76', '50', '9', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '9c484fb3dc297a35f106796ed135a98d', '3', '13', '56', '5', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '07c4aa8db44ac27c5047134da59caf04', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '07c4aa8db44ac27c5047134da59caf04', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '07c4aa8db44ac27c5047134da59caf04', '2', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '59c0c0ee89fc09541f4c7760cd40f2f0', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '59c0c0ee89fc09541f4c7760cd40f2f0', '1', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '59c0c0ee89fc09541f4c7760cd40f2f0', '1', '25', '55', '20', '1', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '254884cc98a27262e70f650f6f2692bc', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '6def45155adf21e7aad4a3e12759f7e6', '1', '25', '55', '20', '6', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '254884cc98a27262e70f650f6f2692bc', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '5c090d260f71f001bea29f75fe1f293c', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '6def45155adf21e7aad4a3e12759f7e6', '1', '13', '56', '5', '3', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '5c090d260f71f001bea29f75fe1f293c', '1', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '5c090d260f71f001bea29f75fe1f293c', '1', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'efc23151bb317b15d8b8da7a9568727d', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'efc23151bb317b15d8b8da7a9568727d', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'efc23151bb317b15d8b8da7a9568727d', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'efc23151bb317b15d8b8da7a9568727d', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'efc23151bb317b15d8b8da7a9568727d', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '328e720a8f53d40808701b2cc47641c9', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '328e720a8f53d40808701b2cc47641c9', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '328e720a8f53d40808701b2cc47641c9', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '328e720a8f53d40808701b2cc47641c9', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '557b7f4de2be11fd91d173d236fea6b4', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '557b7f4de2be11fd91d173d236fea6b4', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '557b7f4de2be11fd91d173d236fea6b4', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'efc23151bb317b15d8b8da7a9568727d', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'ae5c1ace8df289cb52e1e6e6bba81084', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '557b7f4de2be11fd91d173d236fea6b4', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '97d54e32270c248846cd545730dff24c', '1', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '97d54e32270c248846cd545730dff24c', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '557b7f4de2be11fd91d173d236fea6b4', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'd2270581618374bd45714ee5704931b9', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'c39219e0f88619106fc81c6324b91549', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'bf9939cbe76a46d23d3518233af2f5c4', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'b640a2de9bf6e48433937295ee06bbcd', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '834f2bbe62c7ff8b8588da6721123dfb', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'a3662eaf07dda1c197ceabba10c75e02', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '6748710cbb3b0d6453f6f90c020b2f2e', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'cad17f862127f53425dba7035d7e7c04', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '12859183b2c1aa3ab363f36b377d3e2a', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '53cd539db99d47571d60f4d91d019219', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '5be0b95fe4591bf4593f16cacfb9136c', '1', '20', '77', '50', '1', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '4d6c7bbb353fe3b1998ab154b4b8de34', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '471555821ff06e8c401d3e6fb0f890d9', '3', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '471555821ff06e8c401d3e6fb0f890d9', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '471555821ff06e8c401d3e6fb0f890d9', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '8941761f4845a31c23a6328e5e579202', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '471555821ff06e8c401d3e6fb0f890d9', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '465133246a843b93c24201350509133a', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '471555821ff06e8c401d3e6fb0f890d9', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '6d3e49a106b7d4332c562fa96aaa7b31', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '95409c694fc35f303dc09eea69444dd8', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '471555821ff06e8c401d3e6fb0f890d9', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '471555821ff06e8c401d3e6fb0f890d9', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '471555821ff06e8c401d3e6fb0f890d9', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'a99db0da877f1c5e3579d338f49271fe', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '2db67eedafd57b9251452c84fd6e72dd', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '1dae7225f245dd20b9e9819ccf00bb14', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '6636a00499a701a8e4aee28099e899c3', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'dbd913282216b9f36dc0aacf77fb8f4d', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '9bea8bb6f86f26e1a55e2abb63f9f479', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'abad3256447bf495020a18e2c7f72df8', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'a5be62b4b78aa6ec7502924aa6c7ecb0', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '003222c0bc5a54469192d5c6dc2e96a4', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '2d3523906f45daf8b05d4ee873b2fb75', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '745b8b0c24f3b050d2e5d4f040e09755', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'b7e9ee418c890496b897cfddc3827361', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'f63078630a88b1ecee7ee913ceb19812', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '93f526702057373149a9cfa640385eb3', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'ec3dcb49b71ec220951be37a1e1cbda2', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '8ffb820f9fe09045a9e8ecdfbc712802', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'ec3dcb49b71ec220951be37a1e1cbda2', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'ef9ba5ede60da54d81838439bf4957d5', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '4e192ae86106454c54d1c8571060d9cb', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', 'ec3dcb49b71ec220951be37a1e1cbda2', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', 'ec3dcb49b71ec220951be37a1e1cbda2', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'ec3dcb49b71ec220951be37a1e1cbda2', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'ec3dcb49b71ec220951be37a1e1cbda2', '1', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '4faa68ad2836d9a580a095d5d4e5ac34', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', 'ec3dcb49b71ec220951be37a1e1cbda2', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '2569b951da435bb9c77d68f84156b531', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'ec3dcb49b71ec220951be37a1e1cbda2', '1', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '8096bab241a745965c3fc88cc699df17', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'b9914dd0b8bdc9ab234a551d6a9989c3', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '4028d7fd3906be6e99e9847cf5ec5748', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'e24af8ce4572a56388bba51fce9c5c2d', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '67f1b64af52c989385241db4b2b6daf8', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'fa80a1400e8952183e656d20ae298168', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '4c2776c8859d4e1723bd6d7fab1b2772', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '5a383efd6fd05659b53d81f46bb374ba', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'c316eef7f547fdb67b02a02991c08595', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '6641224d5c7b03639d8c3a821aaf5265', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '7e11a224cf7d680b4434a8d4ffb38e18', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'ae48252617495d4d8415a9b2897e88da', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'ed1e41cb1a37291afaeafe372a999ece', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'cba408727a6faf27e19799a28a7245d9', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '392d311e85536f5a22ac352458ed417d', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'b1a11bf20372c1917c015177e70da375', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '51218a11dafd6581e03eb517fd323935', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '78452c0d4b172fb2dcee08d338f56acc', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '0a02202fed191e30afc1626b1171b09d', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'f47188dbeb689c63337216ffcfdc80aa', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'b69d90fc03f0fa785b1c6ddb3b3829b8', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '97f6c8467286a08954edfa6955510a71', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'ce4cd32dada7f32b83853711542c22ca', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '8a7efb7f2df77e079d227b2b0518b47f', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '071cc2053b1d893f70a8717e139a890b', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'b07cf0573d533fd6fafea889f4b00341', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '5525b042a45ea5bd62def930594c18f2', '1', '13', '56', '5', '0', '2', '', '10', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '9224230b7a147c55b158c0642c0dae34', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '00bec478348b21e8e9135bb08a6787cd', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '00bec478348b21e8e9135bb08a6787cd', '3', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '00bec478348b21e8e9135bb08a6787cd', '3', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '00bec478348b21e8e9135bb08a6787cd', '3', '13', '56', '5', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'bf32173db0102374b65590833ad0cc7f', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '2c2297bb0c8a0ac18b2fd1f3f48787e2', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '8459472e192b644642eb5042a71624a4', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '03dd6871353d919e243d6cc9cd0edc21', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '2a111a75f25e6f87d99b0925f8fa4f09', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '485169fef9ff97368fad99c5d7b9eaba', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'c8d9ca8dc1c454d877b29418bb69c23f', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '9dc0bb8899c5497aa2dacab00c77fd5c', '3', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'da5ec0d2cab02e7b2f6f617fcfbac658', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '3646314d5a3e639bcb2cba2d20ea1227', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'd7c100e7739bbbd6446020fa21eb43cb', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '90e8f3a897aa7fcb31627a8e75eeaa9c', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'edcbf1d0ea9bb879b925b69aac3a4019', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'e4eeb15d095a35e9ca0934aa4c5d7348', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '820454b1128c1a80ae000002be521290', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'e08d6b644f78d1b2fba58b3b9336e7c7', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'e1ea2ceff741958658f9ec6f3fb34337', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '5203a615004c27accb73b0d2dfe0d7e9', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '2a9d05e96984a01ac6a3d3fa26c423d2', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'c4370b9318ff613ff94f1c1f579ceffd', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'f94a4e70090449b1305bcfabc2fc3063', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '500a2437c1bb8f02f7c49e28601dfb6e', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '3133ef63491fc4a52701e636dfbf9fa3', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'f7f614975423ea19029307b81d8c830d', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '17a653630bf9efddc2913636da715feb', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '596e08e7ab36427ead738fb68c3b0a19', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'e1cdfa10364d6fe840293d6058435f84', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'c39e1158234b1cbed1235f3a92e2190a', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'c40d9b4ce23e9d6301ae100078b494b1', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '39486819141832199e9f6ce0f07df80f', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '28540a58a176409ab6ab670ad8b84d9a', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'db0c22a8d6c70028f1458c5bde301d42', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'e26d19ccb75a13d79282f2494544ed63', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'ae43a1ceec1a1cd209229a4a2a576694', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'dad5603cf172dda4d361f94d72ffa9b3', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '477f97929463f731805fea917796116b', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '3a70d43cd5e915c33fca9ecaed82c166', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'd94223c92b09cca1881b7aa57c9be239', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '4e8649b4605a7b24838a6eb8ccbcdafd', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'ddfafa84970edb8a1a2e1ce511cb3bea', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'dd799830db04c768c1bc8c999adb9eb3', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '0728f444fe41245dc6009bae1abd5076', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '907c9e6c88d5dfdc389cd159e8e1227c', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '42de75f09bd5e5f02dc4ec20d84f6ec1', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '59906aabadcb687e8dd91cc3e7840c8f', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '90888bddd4da7a0ca3c3400b09cb8608', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '24924d381bc4839740c136cba998f8a1', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'd8561aa207c9c921d2fcbff47f1b004f', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'b28c7d5de2c2ba559cf68ae2e2d8aa8e', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '677f23772319fda9f0b168cb4e7a921e', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'da689f730710e8cbc65d9ca654e5ffc5', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '5342074c8ce889f9ce11bcd4f254355f', '3', '21', '82', '30', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '1f014c041b1cb42cb1a75f9449e99998', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '1f014c041b1cb42cb1a75f9449e99998', '1', '21', '82', '30', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '1f014c041b1cb42cb1a75f9449e99998', '1', '20', '77', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '1f014c041b1cb42cb1a75f9449e99998', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '1f4d7e6d0493153d0a425f21883df5fe', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '1f4d7e6d0493153d0a425f21883df5fe', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '1f4d7e6d0493153d0a425f21883df5fe', '1', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '53cd539db99d47571d60f4d91d019219', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '53cd539db99d47571d60f4d91d019219', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '361279866296d10396c06791e1f7b796', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '361279866296d10396c06791e1f7b796', '3', '13', '56', '5', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '361279866296d10396c06791e1f7b796', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '361279866296d10396c06791e1f7b796', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '361279866296d10396c06791e1f7b796', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '8d97e33eb204fcab472e184928d89803', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '8d97e33eb204fcab472e184928d89803', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '8d97e33eb204fcab472e184928d89803', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '9ca6dc570525096a45e9d1fd4bdda384', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'efb6f6c5f57692b790f014c5b38dd816', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '9dc0bb8899c5497aa2dacab00c77fd5c', '3', '13', '56', '5', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '8d97e33eb204fcab472e184928d89803', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '9dc0bb8899c5497aa2dacab00c77fd5c', '3', '21', '82', '30', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '67d33ee391a22e8e317f6a3b9bd43b9d', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '00bec478348b21e8e9135bb08a6787cd', '1', '21', '82', '30', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', 'e99904f72c48e48b4bc5ee8cf8e966d6', '3', '13', '56', '5', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', 'e99904f72c48e48b4bc5ee8cf8e966d6', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', 'e99904f72c48e48b4bc5ee8cf8e966d6', '3', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', 'e99904f72c48e48b4bc5ee8cf8e966d6', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', 'e99904f72c48e48b4bc5ee8cf8e966d6', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '9c484fb3dc297a35f106796ed135a98d', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '9c484fb3dc297a35f106796ed135a98d', '3', '29', '62', '10', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '0e67ef9235186f4f55a624ee83eb0eb9', '3', '13', '56', '5', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '0e67ef9235186f4f55a624ee83eb0eb9', '3', '25', '55', '20', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '0e67ef9235186f4f55a624ee83eb0eb9', '2', '28', '11', '14', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '0e67ef9235186f4f55a624ee83eb0eb9', '3', '24', '11', '18', '0', '3', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '0e67ef9235186f4f55a624ee83eb0eb9', '1', '27', '12', '150', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '0e67ef9235186f4f55a624ee83eb0eb9', '1', '19', '76', '50', '0', '1', '', '0', '');
INSERT INTO `playerrenwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '0e67ef9235186f4f55a624ee83eb0eb9', '1', '21', '82', '30', '0', '2', '', '11', '');
INSERT INTO `playerrenwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '0e67ef9235186f4f55a624ee83eb0eb9', '1', '29', '62', '10', '0', '3', '', '0', '');

-- ----------------------------
-- Table structure for playeryaopin
-- ----------------------------
DROP TABLE IF EXISTS `playeryaopin`;
CREATE TABLE `playeryaopin` (
  `ypname` varchar(255) NOT NULL,
  `ypid` int(11) NOT NULL,
  `yphp` int(11) NOT NULL,
  `ypgj` int(11) NOT NULL,
  `ypfy` int(11) NOT NULL,
  `ypxx` int(11) NOT NULL,
  `ypbj` int(11) NOT NULL,
  `sid` text NOT NULL,
  `ypsum` int(11) NOT NULL,
  `ypjg` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of playeryaopin
-- ----------------------------
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '43e4c5c6dda6740216e3bd54ff200c15', '69', '10');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '11', '10');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'b4dd3b4ff25c3cdd67b858d5fed146fa', '10', '10');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '7e9ab9a48f33d0f31ce4cfc1512ba0b8', '7', '10');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '099f465c0c34dd5ef59f230a21447af4', '11', '10');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '0820a45ab816fb9c222a84c6546581b7', '3', '10');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'a80e37407282b5feae841dd75b4dc7b7', '7', '10');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'ea5ea2d157d97045153a82e5a342ec8b', '3', '10');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '9bb5f086e2f1efdbc8215e55f8a4a30f', '81', '15');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '099f465c0c34dd5ef59f230a21447af4', '118', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '6d07cdb650fc1fca94c0dd51a8ed971e', '0', '15');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '15', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '6d07cdb650fc1fca94c0dd51a8ed971e', '1', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '9bb5f086e2f1efdbc8215e55f8a4a30f', '705', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '43e4c5c6dda6740216e3bd54ff200c15', '2', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '36f30db66d6fe42f34a91d15b6097af0', '197', '15');
INSERT INTO `playeryaopin` VALUES ('Hồi xuân thang', '8', '600', '0', '0', '0', '0', '6d07cdb650fc1fca94c0dd51a8ed971e', '0', '55');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'e0e644a3727f0f1671e917f7b376c66f', '8', '15');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'c5cb7c746b98e872e69f0a5ef8e2d386', '8', '15');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '26', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '36f30db66d6fe42f34a91d15b6097af0', '81', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi xuân thang', '8', '600', '0', '0', '0', '0', '36f30db66d6fe42f34a91d15b6097af0', '115', '55');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '33619221f61feb039c524037c50aeb95', '3', '15');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '03a4c698ec11e112036183c308cfb94c', '15', '15');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'ea5a17b7f6c42320f7c242f2871a0f8d', '21', '15');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '4f49b5eb675277e6401832966f112262', '3', '15');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '1385c8e98187fabdc04a600693e0ae8f', '2', '15');
INSERT INTO `playeryaopin` VALUES ('Hồi xuân thang', '8', '600', '0', '0', '0', '0', '9bb5f086e2f1efdbc8215e55f8a4a30f', '869', '55');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'ca0904a308346c194ff8ec780ccf6736', '3', '15');
INSERT INTO `playeryaopin` VALUES ('Hồi xuân thang', '8', '600', '0', '0', '0', '0', '43e4c5c6dda6740216e3bd54ff200c15', '0', '55');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'aa0b823f483b02cc5a7516cab09c4f92', '7', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'f58bb53a4bdd39d6d70b706d77fbc74f', '0', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', 'f58bb53a4bdd39d6d70b706d77fbc74f', '1', '80');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '1b10aad87b70a90c7514b3aa2feb52d1', '6', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'ca083d233cbca174c1dec911b9c91e42', '3', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'c4339dfb63d53dbe95ff3f1297cd889d', '6', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'e2c3b13624da53a64bfd36596e04227b', '1', '30');
INSERT INTO `playeryaopin` VALUES ('Phục thương đan', '9', '1200', '0', '0', '0', '0', '099f465c0c34dd5ef59f230a21447af4', '2', '310');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '49a77fab810b41f76e378df436869254', '1', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '4ab5e4638b035213c341b7d4706ded4f', '7', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'bb2a45b7652a7900e7810128a329597e', '36', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi xuân thang', '8', '600', '0', '0', '0', '0', 'bb2a45b7652a7900e7810128a329597e', '0', '155');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'a805c97cc13e0d4a7e07c7552cf101f9', '24', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '12b77bc3aa3cdf5b2283684271bc916c', '3', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '775c0ff651b405a676fc9ee1729302f4', '32', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '775c0ff651b405a676fc9ee1729302f4', '146', '80');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '5f2f53403bda85d4fee078d944dd6d7e', '24', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '8bf2c38ba9d08fd609a3d40b35ea659c', '4', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '781a121e409741ff53f5978578067146', '6', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '592857bc812f813ed52fa8b187582fc2', '0', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'eb61a0b08b9bfdfda961d64410eba5bc', '38', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'ad8f4d8e577f50deae4492bd03c96b56', '27', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '127260b5602737d7ca8a56f3ff47cfde', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '1de67183872072ed605030a8bf3059be', '37', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '77099dca8f67b65ca91af53d0461ac2f', '31', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi xuân thang', '8', '600', '0', '0', '0', '0', 'f58bb53a4bdd39d6d70b706d77fbc74f', '0', '155');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'c9879e4c3738297c06b0b14d78dc39d6', '33', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '781a121e409741ff53f5978578067146', '10', '80');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'ba5b232ca920fefa398ae123afcc87eb', '15', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '2de0f1d3eca04c1a8aff5354db0874ed', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'ce13ba86e509d2fab5ed13c2cddf00c9', '24', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '4e079b4084dcdd84cf4393a003a38283', '23', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'aa588ffcf27da87551c01d7c88b24829', '16', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'a71dfe5ae44c6f0d4c4be100a2e85748', '28', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '98c04e5c0946bf13d399e8577f181912', '2', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '377b01fca16375319e1d921b89f66604', '13', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '2007608a6942d33ec38e7c3d870fa674', '29', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'cc5cfc9a3fac118adae1bfb7f6dc6c3a', '15', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'dd58b4170ec8d6d20f876405b4b1265d', '22', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'd4cd8bac31b76768226bd72adc430ab9', '25', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '97563ab1d73bbb1e071ec933b5b06e6c', '3', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'e777555550491c15e506da8cafb60086', '29', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '7159624dfdba178c848da03a6ffefec9', '23', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '087efeb819f49c1789df1f599ec15388', '34', '30');
INSERT INTO `playeryaopin` VALUES ('Phục thương đan', '9', '1200', '0', '0', '0', '0', '087efeb819f49c1789df1f599ec15388', '100', '310');
INSERT INTO `playeryaopin` VALUES ('Phục thương đan', '9', '1200', '0', '0', '0', '0', '3c9d1d6c8f225e9e4139cccd830fdd00', '99', '310');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '3c9d1d6c8f225e9e4139cccd830fdd00', '30', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi xuân thang', '8', '600', '0', '0', '0', '0', '3c9d1d6c8f225e9e4139cccd830fdd00', '8', '155');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '42352a5bb2acc1e76e8a2fa10ba7673b', '2', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'f76c11b6601d3a6ce505c616b64ed478', '0', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '0ed4ce0a982475dad32cea331e8e50d7', '23', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '9f98bca6ec1fa9e5b63f70012148b511', '4', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', 'f76c11b6601d3a6ce505c616b64ed478', '1', '80');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '3bfa14243cba16bb92e090b54cc5d544', '25', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'e14b6e0d27bea46402a112c75c170887', '26', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'b7f5e984a6a22f3ef2b4072f2614f43e', '3', '30');
INSERT INTO `playeryaopin` VALUES ('Phục thương đan', '9', '1200', '0', '0', '0', '0', 'f0be893286b66272230904a0a7d33168', '578', '310');
INSERT INTO `playeryaopin` VALUES ('Phục thương đan', '9', '1200', '0', '0', '0', '0', 'f76c11b6601d3a6ce505c616b64ed478', '100', '310');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'f0be893286b66272230904a0a7d33168', '25', '30');
INSERT INTO `playeryaopin` VALUES ('Phục thương đan', '9', '1200', '0', '0', '0', '0', 'f7c38ddb495be49224c8d819f34654ec', '300', '310');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '43e4c5c6dda6740216e3bd54ff200c15', '69', '10');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '11', '10');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'b4dd3b4ff25c3cdd67b858d5fed146fa', '10', '10');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '7e9ab9a48f33d0f31ce4cfc1512ba0b8', '7', '10');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '099f465c0c34dd5ef59f230a21447af4', '11', '10');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '0820a45ab816fb9c222a84c6546581b7', '3', '10');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'a80e37407282b5feae841dd75b4dc7b7', '7', '10');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'ea5ea2d157d97045153a82e5a342ec8b', '3', '10');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '9bb5f086e2f1efdbc8215e55f8a4a30f', '81', '15');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '099f465c0c34dd5ef59f230a21447af4', '118', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '6d07cdb650fc1fca94c0dd51a8ed971e', '0', '15');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', 'af1d74362b935eb0ac845b7e4f7f707f', '15', '30');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '6d07cdb650fc1fca94c0dd51a8ed971e', '1', '30');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '9bb5f086e2f1efdbc8215e55f8a4a30f', '705', '30');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '43e4c5c6dda6740216e3bd54ff200c15', '2', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '36f30db66d6fe42f34a91d15b6097af0', '197', '15');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', '6d07cdb650fc1fca94c0dd51a8ed971e', '0', '55');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'e0e644a3727f0f1671e917f7b376c66f', '8', '15');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'c5cb7c746b98e872e69f0a5ef8e2d386', '8', '15');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '6b7b2713b1a52397c7282509906e8c5e', '26', '30');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '36f30db66d6fe42f34a91d15b6097af0', '81', '30');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', '36f30db66d6fe42f34a91d15b6097af0', '115', '55');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '33619221f61feb039c524037c50aeb95', '3', '15');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '03a4c698ec11e112036183c308cfb94c', '15', '15');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'ea5a17b7f6c42320f7c242f2871a0f8d', '21', '15');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '4f49b5eb675277e6401832966f112262', '3', '15');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '1385c8e98187fabdc04a600693e0ae8f', '2', '15');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', '9bb5f086e2f1efdbc8215e55f8a4a30f', '869', '55');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'ca0904a308346c194ff8ec780ccf6736', '3', '15');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', '43e4c5c6dda6740216e3bd54ff200c15', '0', '55');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'aa0b823f483b02cc5a7516cab09c4f92', '7', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'f58bb53a4bdd39d6d70b706d77fbc74f', '0', '30');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', 'f58bb53a4bdd39d6d70b706d77fbc74f', '1', '80');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '1b10aad87b70a90c7514b3aa2feb52d1', '6', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'ca083d233cbca174c1dec911b9c91e42', '3', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'c4339dfb63d53dbe95ff3f1297cd889d', '6', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'e2c3b13624da53a64bfd36596e04227b', '1', '30');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '099f465c0c34dd5ef59f230a21447af4', '2', '310');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '49a77fab810b41f76e378df436869254', '1', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '4ab5e4638b035213c341b7d4706ded4f', '7', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'bb2a45b7652a7900e7810128a329597e', '36', '30');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', 'bb2a45b7652a7900e7810128a329597e', '0', '155');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'a805c97cc13e0d4a7e07c7552cf101f9', '24', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '12b77bc3aa3cdf5b2283684271bc916c', '3', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '775c0ff651b405a676fc9ee1729302f4', '32', '30');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '775c0ff651b405a676fc9ee1729302f4', '146', '80');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '5f2f53403bda85d4fee078d944dd6d7e', '24', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '8bf2c38ba9d08fd609a3d40b35ea659c', '4', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '781a121e409741ff53f5978578067146', '6', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '592857bc812f813ed52fa8b187582fc2', '0', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'eb61a0b08b9bfdfda961d64410eba5bc', '38', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'ad8f4d8e577f50deae4492bd03c96b56', '27', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '127260b5602737d7ca8a56f3ff47cfde', '10', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '1de67183872072ed605030a8bf3059be', '37', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '77099dca8f67b65ca91af53d0461ac2f', '31', '30');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', 'f58bb53a4bdd39d6d70b706d77fbc74f', '0', '155');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'c9879e4c3738297c06b0b14d78dc39d6', '33', '30');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', '781a121e409741ff53f5978578067146', '10', '80');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'ba5b232ca920fefa398ae123afcc87eb', '15', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '2de0f1d3eca04c1a8aff5354db0874ed', '10', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'ce13ba86e509d2fab5ed13c2cddf00c9', '24', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '4e079b4084dcdd84cf4393a003a38283', '23', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'aa588ffcf27da87551c01d7c88b24829', '16', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'a71dfe5ae44c6f0d4c4be100a2e85748', '28', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '98c04e5c0946bf13d399e8577f181912', '2', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '377b01fca16375319e1d921b89f66604', '13', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '2007608a6942d33ec38e7c3d870fa674', '29', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'cc5cfc9a3fac118adae1bfb7f6dc6c3a', '15', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'dd58b4170ec8d6d20f876405b4b1265d', '22', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'd4cd8bac31b76768226bd72adc430ab9', '25', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '97563ab1d73bbb1e071ec933b5b06e6c', '3', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'e777555550491c15e506da8cafb60086', '29', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '7159624dfdba178c848da03a6ffefec9', '23', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '087efeb819f49c1789df1f599ec15388', '34', '30');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '087efeb819f49c1789df1f599ec15388', '100', '310');
INSERT INTO `playeryaopin` VALUES ('复伤丹', '9', '1200', '0', '0', '0', '0', '3c9d1d6c8f225e9e4139cccd830fdd00', '99', '310');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '3c9d1d6c8f225e9e4139cccd830fdd00', '30', '30');
INSERT INTO `playeryaopin` VALUES ('回春汤', '8', '600', '0', '0', '0', '0', '3c9d1d6c8f225e9e4139cccd830fdd00', '8', '155');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '42352a5bb2acc1e76e8a2fa10ba7673b', '2', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'f76c11b6601d3a6ce505c616b64ed478', '0', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '0ed4ce0a982475dad32cea331e8e50d7', '23', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '9f98bca6ec1fa9e5b63f70012148b511', '4', '30');
INSERT INTO `playeryaopin` VALUES ('回血散', '7', '300', '0', '0', '0', '0', 'f76c11b6601d3a6ce505c616b64ed478', '1', '80');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', '3bfa14243cba16bb92e090b54cc5d544', '25', '30');
INSERT INTO `playeryaopin` VALUES ('还原丹', '6', '100', '0', '0', '0', '0', 'e14b6e0d27bea46402a112c75c170887', '26', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '69c80660d27b6ae392cfcfaff9377abd', '1', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '7aa100d4e1f9756c2c918199f7c6f8cd', '3', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '0d35be128035927ccc312fd5d99eb55c', '30', '30');
INSERT INTO `playeryaopin` VALUES ('Phục thương đan', '9', '1200', '0', '0', '0', '0', '0d35be128035927ccc312fd5d99eb55c', '91', '310');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '7153c651e46f98c7061e956c023b4fca', '26', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'f15a4aaba08473a5afd6a6521c76d9cf', '16', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'efc744bfecbcc5b1d2443ff739987af9', '13', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '547f7c3b2c069650f414a69ef4402498', '23', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'c1b448051cf88f6dcf535ced41e53127', '27', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'e3ce66181b307263d31593be743bdd64', '24', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '0dee7d958d6808a52df8c485ce7657af', '0', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'e03886cbdd41f2973d1e16d83a1250a2', '32', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi xuân thang', '8', '600', '0', '0', '0', '0', '0d35be128035927ccc312fd5d99eb55c', '20', '155');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'deef530148bcb297a74d0509125b844f', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'e83893c48ddfe5e084b2bdea428aa07f', '27', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '0d35be128035927ccc312fd5d99eb55c', '10', '80');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '483047f1250b4db899cb9a4770efe1e2', '25', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'c0787a8c7d117e9a540222e8c1b744af', '26', '30');
INSERT INTO `playeryaopin` VALUES ('Phục thương đan', '9', '1200', '0', '0', '0', '0', '91322e4d4529a1c0db2580a4d5e07ff1', '56', '310');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'df1905b2799580cd3861d79686bacbad', '0', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '91322e4d4529a1c0db2580a4d5e07ff1', '3', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '7837bb48be44041b2ee92d061d08653e', '27', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '80eaf5ea9d36f0a8c87d3eba1bd05055', '13', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '11ee841a987d5674196d37fef51ed9a6', '28', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '1f014c041b1cb42cb1a75f9449e99998', '24', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '91322e4d4529a1c0db2580a4d5e07ff1', '0', '80');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '0dee7d958d6808a52df8c485ce7657af', '0', '80');
INSERT INTO `playeryaopin` VALUES ('Phục thương đan', '9', '1200', '0', '0', '0', '0', '0dee7d958d6808a52df8c485ce7657af', '0', '310');
INSERT INTO `playeryaopin` VALUES ('Hồi xuân thang', '8', '600', '0', '0', '0', '0', '0dee7d958d6808a52df8c485ce7657af', '0', '155');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', 'efc744bfecbcc5b1d2443ff739987af9', '13', '80');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '3204b1df760fd73acf5332398961f416', '0', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '754ae44f81dc019f17c06a41aa2ea715', '15', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '987fa1ed57063997f01f22767178a600', '0', '30');
INSERT INTO `playeryaopin` VALUES ('Phục thương đan', '9', '1200', '0', '0', '0', '0', '3204b1df760fd73acf5332398961f416', '1964', '310');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '7d1526a0dd4803a1fda914bcebd93b47', '3', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'f0ac44856637b747beb115331972de83', '29', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'f039e55562a77296188f2963ca97fae1', '27', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '78d406e749821c6f055f787edde7fee2', '25', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '5342074c8ce889f9ce11bcd4f254355f', '0', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'a995483a30393a2c0386c786200c4c84', '2', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'fcdd5d501dd7b299a36d97981bbd664f', '4', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '7d1526a0dd4803a1fda914bcebd93b47', '26', '80');
INSERT INTO `playeryaopin` VALUES ('Hồi xuân thang', '8', '600', '0', '0', '0', '0', '3204b1df760fd73acf5332398961f416', '24', '155');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '6d269e625ac8a8e57a6f38d43ebbd3c6', '16', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '65f69095d290c9579a2255210d058fb1', '19', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '00bec478348b21e8e9135bb08a6787cd', '6', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '5b5df97f24dda63106a3cfdbec0f2f37', '20', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '5be0b95fe4591bf4593f16cacfb9136c', '27', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'eae57174fc4d0114b0a244a0b4d46cd1', '25', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'a6edc2472e88417ac151bf97c7231a23', '30', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '5342074c8ce889f9ce11bcd4f254355f', '0', '80');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'f365c41cca1867794c0d56a0d2964f52', '12', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'b0937c2a2e0292043bf9afbc25cc43d7', '14', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '132a2ae60d254a56c7264893f03a6a25', '0', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'a82a81044ec116f876d03885c2973ba6', '0', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', 'df1905b2799580cd3861d79686bacbad', '0', '80');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '65f69095d290c9579a2255210d058fb1', '3', '80');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '9dc0bb8899c5497aa2dacab00c77fd5c', '0', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '1ad63d508f70be6d8d83235471f1fc8b', '3', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '132a2ae60d254a56c7264893f03a6a25', '0', '80');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', 'a82a81044ec116f876d03885c2973ba6', '0', '80');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '2f1d8f88000b56e6b5c3007d36f2c1c8', '1', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi xuân thang', '8', '600', '0', '0', '0', '0', '132a2ae60d254a56c7264893f03a6a25', '0', '155');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '557b7f4de2be11fd91d173d236fea6b4', '35', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '2f1d8f88000b56e6b5c3007d36f2c1c8', '0', '80');
INSERT INTO `playeryaopin` VALUES ('Hồi xuân thang', '8', '600', '0', '0', '0', '0', '2f1d8f88000b56e6b5c3007d36f2c1c8', '10', '155');
INSERT INTO `playeryaopin` VALUES ('Hồi xuân thang', '8', '600', '0', '0', '0', '0', 'df1905b2799580cd3861d79686bacbad', '30', '155');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '3204b1df760fd73acf5332398961f416', '9', '80');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'aecc6f9f63ececb58dcfe256ac7d6897', '26', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '07c4aa8db44ac27c5047134da59caf04', '8', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '59c0c0ee89fc09541f4c7760cd40f2f0', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '254884cc98a27262e70f650f6f2692bc', '13', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '6def45155adf21e7aad4a3e12759f7e6', '2', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi xuân thang', '8', '600', '0', '0', '0', '0', 'a82a81044ec116f876d03885c2973ba6', '191', '155');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'efc23151bb317b15d8b8da7a9568727d', '17', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '328e720a8f53d40808701b2cc47641c9', '15', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'ae5c1ace8df289cb52e1e6e6bba81084', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '97d54e32270c248846cd545730dff24c', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'd2270581618374bd45714ee5704931b9', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'c39219e0f88619106fc81c6324b91549', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'bf9939cbe76a46d23d3518233af2f5c4', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'b640a2de9bf6e48433937295ee06bbcd', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '834f2bbe62c7ff8b8588da6721123dfb', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'a3662eaf07dda1c197ceabba10c75e02', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '6748710cbb3b0d6453f6f90c020b2f2e', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'cad17f862127f53425dba7035d7e7c04', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '12859183b2c1aa3ab363f36b377d3e2a', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Phục thương đan', '9', '1200', '0', '0', '0', '0', 'df1905b2799580cd3861d79686bacbad', '10', '310');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '471555821ff06e8c401d3e6fb0f890d9', '0', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '8941761f4845a31c23a6328e5e579202', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '465133246a843b93c24201350509133a', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '6d3e49a106b7d4332c562fa96aaa7b31', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', 'b0937c2a2e0292043bf9afbc25cc43d7', '3', '80');
INSERT INTO `playeryaopin` VALUES ('Hồi xuân thang', '8', '600', '0', '0', '0', '0', '5342074c8ce889f9ce11bcd4f254355f', '24', '155');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '95409c694fc35f303dc09eea69444dd8', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Phục thương đan', '9', '1200', '0', '0', '0', '0', '132a2ae60d254a56c7264893f03a6a25', '56', '310');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '471555821ff06e8c401d3e6fb0f890d9', '1', '80');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'a99db0da877f1c5e3579d338f49271fe', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '2db67eedafd57b9251452c84fd6e72dd', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '1dae7225f245dd20b9e9819ccf00bb14', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '6636a00499a701a8e4aee28099e899c3', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'dbd913282216b9f36dc0aacf77fb8f4d', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '9bea8bb6f86f26e1a55e2abb63f9f479', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'abad3256447bf495020a18e2c7f72df8', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'a5be62b4b78aa6ec7502924aa6c7ecb0', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '003222c0bc5a54469192d5c6dc2e96a4', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '2d3523906f45daf8b05d4ee873b2fb75', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '745b8b0c24f3b050d2e5d4f040e09755', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'b7e9ee418c890496b897cfddc3827361', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'f63078630a88b1ecee7ee913ceb19812', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '93f526702057373149a9cfa640385eb3', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '8ffb820f9fe09045a9e8ecdfbc712802', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'ec3dcb49b71ec220951be37a1e1cbda2', '24', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'ef9ba5ede60da54d81838439bf4957d5', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '4e192ae86106454c54d1c8571060d9cb', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '4faa68ad2836d9a580a095d5d4e5ac34', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '2569b951da435bb9c77d68f84156b531', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '8096bab241a745965c3fc88cc699df17', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'b9914dd0b8bdc9ab234a551d6a9989c3', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '4028d7fd3906be6e99e9847cf5ec5748', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'e24af8ce4572a56388bba51fce9c5c2d', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '67f1b64af52c989385241db4b2b6daf8', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'fa80a1400e8952183e656d20ae298168', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '4c2776c8859d4e1723bd6d7fab1b2772', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '5a383efd6fd05659b53d81f46bb374ba', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'c316eef7f547fdb67b02a02991c08595', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '6641224d5c7b03639d8c3a821aaf5265', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '7e11a224cf7d680b4434a8d4ffb38e18', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'ae48252617495d4d8415a9b2897e88da', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'ed1e41cb1a37291afaeafe372a999ece', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'cba408727a6faf27e19799a28a7245d9', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '392d311e85536f5a22ac352458ed417d', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'b1a11bf20372c1917c015177e70da375', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '51218a11dafd6581e03eb517fd323935', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '78452c0d4b172fb2dcee08d338f56acc', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '0a02202fed191e30afc1626b1171b09d', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'f47188dbeb689c63337216ffcfdc80aa', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'b69d90fc03f0fa785b1c6ddb3b3829b8', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '97f6c8467286a08954edfa6955510a71', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'ce4cd32dada7f32b83853711542c22ca', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '8a7efb7f2df77e079d227b2b0518b47f', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '071cc2053b1d893f70a8717e139a890b', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'b07cf0573d533fd6fafea889f4b00341', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '9224230b7a147c55b158c0642c0dae34', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'bf32173db0102374b65590833ad0cc7f', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '2c2297bb0c8a0ac18b2fd1f3f48787e2', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '8459472e192b644642eb5042a71624a4', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '03dd6871353d919e243d6cc9cd0edc21', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '2a111a75f25e6f87d99b0925f8fa4f09', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '485169fef9ff97368fad99c5d7b9eaba', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'c8d9ca8dc1c454d877b29418bb69c23f', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '00bec478348b21e8e9135bb08a6787cd', '0', '80');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '9dc0bb8899c5497aa2dacab00c77fd5c', '20', '80');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'da5ec0d2cab02e7b2f6f617fcfbac658', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '3646314d5a3e639bcb2cba2d20ea1227', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'd7c100e7739bbbd6446020fa21eb43cb', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '90e8f3a897aa7fcb31627a8e75eeaa9c', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'edcbf1d0ea9bb879b925b69aac3a4019', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Phục thương đan', '9', '1200', '0', '0', '0', '0', 'a82a81044ec116f876d03885c2973ba6', '92', '310');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '144f1c155fcb7fedf5915e15c68aed52', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '45500dfe80d0c1774817786a44a50e93', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'de606cacc6a6ba649a3bf437b993d5fb', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'f47ac3d9c8ff47415290e5bbee5d94ba', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '9467812eb836c2b70c021e8ef1d52ab1', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '7c8c3deb469f9576d97eb1bdedd44ded', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'e4eeb15d095a35e9ca0934aa4c5d7348', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '820454b1128c1a80ae000002be521290', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '0bc389301f085642f280e2bb5736a480', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'e08d6b644f78d1b2fba58b3b9336e7c7', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '4d6c7bbb353fe3b1998ab154b4b8de34', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '022efa153704457feb2e54c5bbe671b5', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'e1ea2ceff741958658f9ec6f3fb34337', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '5203a615004c27accb73b0d2dfe0d7e9', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '2a9d05e96984a01ac6a3d3fa26c423d2', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'c4370b9318ff613ff94f1c1f579ceffd', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'f94a4e70090449b1305bcfabc2fc3063', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '500a2437c1bb8f02f7c49e28601dfb6e', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '3133ef63491fc4a52701e636dfbf9fa3', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'f7f614975423ea19029307b81d8c830d', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '17a653630bf9efddc2913636da715feb', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '596e08e7ab36427ead738fb68c3b0a19', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'e1cdfa10364d6fe840293d6058435f84', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'c39e1158234b1cbed1235f3a92e2190a', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'c40d9b4ce23e9d6301ae100078b494b1', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '39486819141832199e9f6ce0f07df80f', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '28540a58a176409ab6ab670ad8b84d9a', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'db0c22a8d6c70028f1458c5bde301d42', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'e26d19ccb75a13d79282f2494544ed63', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'ae43a1ceec1a1cd209229a4a2a576694', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'dad5603cf172dda4d361f94d72ffa9b3', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '477f97929463f731805fea917796116b', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '3a70d43cd5e915c33fca9ecaed82c166', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'd94223c92b09cca1881b7aa57c9be239', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '4e8649b4605a7b24838a6eb8ccbcdafd', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'ddfafa84970edb8a1a2e1ce511cb3bea', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'dd799830db04c768c1bc8c999adb9eb3', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '0728f444fe41245dc6009bae1abd5076', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '907c9e6c88d5dfdc389cd159e8e1227c', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '42de75f09bd5e5f02dc4ec20d84f6ec1', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '59906aabadcb687e8dd91cc3e7840c8f', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '90888bddd4da7a0ca3c3400b09cb8608', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '24924d381bc4839740c136cba998f8a1', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'd8561aa207c9c921d2fcbff47f1b004f', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'b28c7d5de2c2ba559cf68ae2e2d8aa8e', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '677f23772319fda9f0b168cb4e7a921e', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'da689f730710e8cbc65d9ca654e5ffc5', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '1f014c041b1cb42cb1a75f9449e99998', '4', '80');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '1f4d7e6d0493153d0a425f21883df5fe', '23', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '53cd539db99d47571d60f4d91d019219', '26', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '361279866296d10396c06791e1f7b796', '24', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '8d97e33eb204fcab472e184928d89803', '26', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'eca24beba178ffa2d273410f2b1eff68', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '9ca6dc570525096a45e9d1fd4bdda384', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'efb6f6c5f57692b790f014c5b38dd816', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '67d33ee391a22e8e317f6a3b9bd43b9d', '10', '30');
INSERT INTO `playeryaopin` VALUES ('Hồi xuân thang', '8', '600', '0', '0', '0', '0', '9dc0bb8899c5497aa2dacab00c77fd5c', '1', '155');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', 'e99904f72c48e48b4bc5ee8cf8e966d6', '25', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '9c484fb3dc297a35f106796ed135a98d', '11', '30');
INSERT INTO `playeryaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '0e67ef9235186f4f55a624ee83eb0eb9', '18', '30');

-- ----------------------------
-- Table structure for playerzhuangbei
-- ----------------------------
DROP TABLE IF EXISTS `playerzhuangbei`;
CREATE TABLE `playerzhuangbei` (
  `zbname` varchar(255) NOT NULL,
  `zbinfo` varchar(255) NOT NULL,
  `zbgj` varchar(255) NOT NULL,
  `zbfy` varchar(255) NOT NULL,
  `zbbj` varchar(255) NOT NULL,
  `zbxx` varchar(255) NOT NULL,
  `zbid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `zbnowid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` text NOT NULL,
  `zbhp` varchar(255) NOT NULL,
  `qianghua` int(11) NOT NULL,
  `zblv` int(11) NOT NULL,
  `zbtool` int(11) NOT NULL,
  PRIMARY KEY (`zbnowid`)
) ENGINE=MyISAM AUTO_INCREMENT=77598 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of playerzhuangbei
-- ----------------------------
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '422', '75742', '3c9d1d6c8f225e9e4139cccd830fdd00', '40', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '3', '0', '0', '1', '25', '426', '75672', '0ed4ce0a982475dad32cea331e8e50d7', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '3', '0', '1', '3', '29', '431', '75659', '3bfa14243cba16bb92e090b54cc5d544', '0', '1', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '422', '75683', '3c9d1d6c8f225e9e4139cccd830fdd00', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '427', '75674', '9f98bca6ec1fa9e5b63f70012148b511', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '426', '75666', '0ed4ce0a982475dad32cea331e8e50d7', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '11', '3', '1', '1', '36', '422', '75715', '3c9d1d6c8f225e9e4139cccd830fdd00', '0', '3', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '427', '75675', '9f98bca6ec1fa9e5b63f70012148b511', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Thanh phong hộ giáp', 'Thủ tự thanh phong thường bạn', '0', '5', '1', '0', '26', '426', '75669', '0ed4ce0a982475dad32cea331e8e50d7', '25', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '427', '75676', '9f98bca6ec1fa9e5b63f70012148b511', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '427', '75677', '9f98bca6ec1fa9e5b63f70012148b511', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '1', '8', '1', '0', '30', '424', '75678', 'f76c11b6601d3a6ce505c616b64ed478', '50', '2', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '431', '75752', '3bfa14243cba16bb92e090b54cc5d544', '40', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '13', '3', '0', '2', '27', '424', '75682', 'f76c11b6601d3a6ce505c616b64ed478', '0', '11', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '3', '0', '0', '1', '25', '422', '75741', '3c9d1d6c8f225e9e4139cccd830fdd00', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '8', '3', '1', '1', '36', '422', '75717', '3c9d1d6c8f225e9e4139cccd830fdd00', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '424', '75713', 'f76c11b6601d3a6ce505c616b64ed478', '22', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '0', '8', '1', '0', '31', '431', '75711', '3bfa14243cba16bb92e090b54cc5d544', '55', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Nguyệt luân thương', 'Nguyệt luân thương', '11', '4', '0', '2', '37', '424', '75718', 'f76c11b6601d3a6ce505c616b64ed478', '3', '8', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '0', '7', '1', '0', '30', '422', '75709', '3c9d1d6c8f225e9e4139cccd830fdd00', '50', '0', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '0', '8', '1', '0', '31', '424', '75708', 'f76c11b6601d3a6ce505c616b64ed478', '55', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '422', '75740', '3c9d1d6c8f225e9e4139cccd830fdd00', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Nguyệt luân thương', 'Nguyệt luân thương', '10', '0', '0', '2', '37', '424', '75719', 'f76c11b6601d3a6ce505c616b64ed478', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '422', '75745', '3c9d1d6c8f225e9e4139cccd830fdd00', '40', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '422', '75746', '3c9d1d6c8f225e9e4139cccd830fdd00', '40', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '422', '75744', '3c9d1d6c8f225e9e4139cccd830fdd00', '40', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '422', '75743', '3c9d1d6c8f225e9e4139cccd830fdd00', '40', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '434', '75747', 'e14b6e0d27bea46402a112c75c170887', '40', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '7', '9', '0', '0', '28', '475', '75896', 'e03886cbdd41f2973d1e16d83a1250a2', '40', '8', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '10', '0', '0', '1', '25', '462', '75805', '7153c651e46f98c7061e956c023b4fca', '0', '7', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '463', '75791', '547f7c3b2c069650f414a69ef4402498', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '434', '75750', 'e14b6e0d27bea46402a112c75c170887', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '438', '75753', 'b7f5e984a6a22f3ef2b4072f2614f43e', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Hắc ma chủy thủ', 'Hắc ma chủy thủ', '18', '0', '3', '4', '33', '440', '75754', 'f0be893286b66272230904a0a7d33168', '0', '4', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hắc ma chủy thủ', 'Hắc ma chủy thủ', '14', '0', '3', '4', '33', '424', '75755', 'f76c11b6601d3a6ce505c616b64ed478', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hắc ma chủy thủ', 'Hắc ma chủy thủ', '14', '0', '3', '4', '33', '440', '75762', 'f0be893286b66272230904a0a7d33168', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '442', '75780', '7aa100d4e1f9756c2c918199f7c6f8cd', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Hắc ma chủy thủ', 'Hắc ma chủy thủ', '14', '0', '3', '4', '33', '440', '75760', 'f0be893286b66272230904a0a7d33168', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hắc ma chủy thủ', 'Hắc ma chủy thủ', '14', '0', '3', '4', '33', '440', '75763', 'f0be893286b66272230904a0a7d33168', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hắc ma chủy thủ', 'Hắc ma chủy thủ', '14', '0', '3', '4', '33', '441', '75764', 'f7c38ddb495be49224c8d819f34654ec', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hắc ma chủy thủ', 'Hắc ma chủy thủ', '14', '0', '3', '4', '33', '441', '75765', 'f7c38ddb495be49224c8d819f34654ec', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hắc ma chủy thủ', 'Hắc ma chủy thủ', '14', '0', '3', '4', '33', '441', '75766', 'f7c38ddb495be49224c8d819f34654ec', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hắc ma chủy thủ', 'Hắc ma chủy thủ', '14', '0', '3', '4', '33', '440', '75767', 'f0be893286b66272230904a0a7d33168', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hắc ma chủy thủ', 'Hắc ma chủy thủ', '14', '15', '3', '4', '33', '440', '75776', 'f0be893286b66272230904a0a7d33168', '0', '15', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '442', '75777', '7aa100d4e1f9756c2c918199f7c6f8cd', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '442', '75778', '7aa100d4e1f9756c2c918199f7c6f8cd', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '442', '75781', '7aa100d4e1f9756c2c918199f7c6f8cd', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '442', '75782', '7aa100d4e1f9756c2c918199f7c6f8cd', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '442', '75783', '7aa100d4e1f9756c2c918199f7c6f8cd', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '4', '3', '5', '32', '478', '76005', '483047f1250b4db899cb9a4770efe1e2', '20', '1', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '6', '10', '1', '0', '38', '450', '75932', '0d35be128035927ccc312fd5d99eb55c', '120', '6', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '462', '75785', '7153c651e46f98c7061e956c023b4fca', '13', '3', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '460', '75792', 'f15a4aaba08473a5afd6a6521c76d9cf', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '3', '0', '0', '1', '25', '460', '75793', 'f15a4aaba08473a5afd6a6521c76d9cf', '5', '5', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '463', '76056', '547f7c3b2c069650f414a69ef4402498', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '5', '9', '2', '0', '35', '450', '75908', '0d35be128035927ccc312fd5d99eb55c', '62', '5', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '1', '4', '3', '5', '32', '477', '75944', 'e83893c48ddfe5e084b2bdea428aa07f', '20', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '530', '77417', 'a82a81044ec116f876d03885c2973ba6', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '13', '0', '1', '3', '29', '478', '75973', '483047f1250b4db899cb9a4770efe1e2', '0', '11', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '2', '4', '3', '5', '32', '469', '75903', 'e3ce66181b307263d31593be743bdd64', '21', '4', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '2', '3', '3', '5', '32', '488', '77313', '1f014c041b1cb42cb1a75f9449e99998', '20', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '509', '76241', 'fcdd5d501dd7b299a36d97981bbd664f', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '20', '0', '0', '4', '34', '450', '75913', '0d35be128035927ccc312fd5d99eb55c', '0', '5', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '19', '2', '0', '4', '34', '450', '75875', '0d35be128035927ccc312fd5d99eb55c', '0', '6', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '0', '12', '1', '0', '31', '470', '75939', '0dee7d958d6808a52df8c485ce7657af', '55', '4', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '2', '8', '1', '0', '30', '469', '75897', 'e3ce66181b307263d31593be743bdd64', '53', '4', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '1', '8', '1', '0', '30', '727', '77564', '9c484fb3dc297a35f106796ed135a98d', '53', '3', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '477', '75949', 'e83893c48ddfe5e084b2bdea428aa07f', '21', '1', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '487', '76043', '11ee841a987d5674196d37fef51ed9a6', '40', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '4', '0', '0', '1', '25', '468', '75823', 'c1b448051cf88f6dcf535ced41e53127', '0', '1', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '10', '0', '1', '3', '29', '476', '75898', 'deef530148bcb297a74d0509125b844f', '0', '8', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '9', '1', '1', '3', '29', '481', '75981', 'c0787a8c7d117e9a540222e8c1b744af', '1', '9', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '2', '7', '1', '0', '30', '520', '76460', '5be0b95fe4591bf4593f16cacfb9136c', '50', '2', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '485', '76037', '80eaf5ea9d36f0a8c87d3eba1bd05055', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '2', '3', '3', '5', '32', '459', '76070', 'efc744bfecbcc5b1d2443ff739987af9', '20', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '4', '0', '1', '3', '29', '468', '75872', 'c1b448051cf88f6dcf535ced41e53127', '0', '2', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '5', '9', '2', '0', '35', '450', '75878', '0d35be128035927ccc312fd5d99eb55c', '62', '5', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '18', '0', '0', '4', '34', '450', '75893', '0d35be128035927ccc312fd5d99eb55c', '0', '3', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '2', '9', '1', '0', '31', '469', '75901', 'e3ce66181b307263d31593be743bdd64', '64', '6', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '0', '10', '2', '0', '35', '470', '76048', '0dee7d958d6808a52df8c485ce7657af', '65', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '475', '75902', 'e03886cbdd41f2973d1e16d83a1250a2', '40', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '3', '11', '1', '0', '31', '499', '76223', '987fa1ed57063997f01f22767178a600', '55', '6', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '9', '4', '1', '1', '36', '469', '75988', 'e3ce66181b307263d31593be743bdd64', '1', '3', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '468', '75857', 'c1b448051cf88f6dcf535ced41e53127', '40', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '19', '0', '0', '4', '34', '470', '76047', '0dee7d958d6808a52df8c485ce7657af', '0', '4', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '2', '11', '1', '0', '31', '477', '75926', 'e83893c48ddfe5e084b2bdea428aa07f', '64', '8', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '573', '77010', 'd2270581618374bd45714ee5704931b9', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '7', '0', '0', '1', '25', '477', '75866', 'e83893c48ddfe5e084b2bdea428aa07f', '1', '5', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '10', '1', '0', '1', '25', '475', '75869', 'e03886cbdd41f2973d1e16d83a1250a2', '0', '8', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '475', '75918', 'e03886cbdd41f2973d1e16d83a1250a2', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hắc ma chủy thủ', 'Hắc ma chủy thủ', '29', '0', '3', '4', '33', '479', '75916', '91322e4d4529a1c0db2580a4d5e07ff1', '0', '15', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '1', '3', '3', '5', '32', '477', '75946', 'e83893c48ddfe5e084b2bdea428aa07f', '20', '1', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '0', '11', '1', '0', '31', '459', '76071', 'efc744bfecbcc5b1d2443ff739987af9', '70', '8', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '8', '3', '1', '1', '36', '459', '76080', 'efc744bfecbcc5b1d2443ff739987af9', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '2', '8', '1', '0', '30', '477', '75933', 'e83893c48ddfe5e084b2bdea428aa07f', '50', '3', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '3', '0', '0', '1', '25', '463', '76059', '547f7c3b2c069650f414a69ef4402498', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '475', '75940', 'e03886cbdd41f2973d1e16d83a1250a2', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '475', '75941', 'e03886cbdd41f2973d1e16d83a1250a2', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Thị hồn cốt nhẫn', 'Thị hồn cốt nhẫn', '22', '0', '5', '3', '39', '450', '75950', '0d35be128035927ccc312fd5d99eb55c', '0', '5', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '0', '13', '1', '0', '31', '476', '75951', 'deef530148bcb297a74d0509125b844f', '55', '5', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '0', '10', '1', '0', '30', '486', '76300', '7837bb48be44041b2ee92d061d08653e', '50', '3', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Thị hồn cốt nhẫn', 'Thị hồn cốt nhẫn', '50', '0', '5', '3', '39', '492', '76492', '3204b1df760fd73acf5332398961f416', '0', '23', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '0', '8', '1', '0', '30', '478', '75998', '483047f1250b4db899cb9a4770efe1e2', '50', '1', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '485', '75982', '80eaf5ea9d36f0a8c87d3eba1bd05055', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '459', '76076', 'efc744bfecbcc5b1d2443ff739987af9', '21', '1', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '484', '75957', '36774f5c423b7a8bb7858bb4642e128d', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '0', '8', '1', '0', '30', '481', '75997', 'c0787a8c7d117e9a540222e8c1b744af', '56', '3', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '5', '0', '0', '2', '27', '551', '76679', 'ba3ce5be6bb148766f7d32bed729cfef', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '2', '11', '1', '0', '38', '450', '75965', '0d35be128035927ccc312fd5d99eb55c', '120', '3', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '4', '7', '1', '0', '30', '488', '77312', '1f014c041b1cb42cb1a75f9449e99998', '50', '4', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Nguyệt luân thương', 'Nguyệt luân thương', '12', '0', '0', '2', '37', '470', '76042', '0dee7d958d6808a52df8c485ce7657af', '0', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '8', '3', '1', '1', '36', '488', '77316', '1f014c041b1cb42cb1a75f9449e99998', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '10', '0', '0', '2', '27', '459', '76054', 'efc744bfecbcc5b1d2443ff739987af9', '0', '5', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '481', '76035', 'c0787a8c7d117e9a540222e8c1b744af', '20', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '10', '3', '1', '1', '36', '459', '76009', 'efc744bfecbcc5b1d2443ff739987af9', '0', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '728', '77573', '0e67ef9235186f4f55a624ee83eb0eb9', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '9', '3', '1', '1', '36', '470', '76011', '0dee7d958d6808a52df8c485ce7657af', '0', '1', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '1', '10', '1', '0', '31', '481', '76012', 'c0787a8c7d117e9a540222e8c1b744af', '61', '5', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '13', '0', '0', '2', '27', '486', '76040', '7837bb48be44041b2ee92d061d08653e', '0', '8', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '1', '3', '3', '5', '32', '481', '76028', 'c0787a8c7d117e9a540222e8c1b744af', '20', '1', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '3', '0', '0', '1', '25', '487', '76029', '11ee841a987d5674196d37fef51ed9a6', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '0', '10', '1', '0', '31', '478', '76018', '483047f1250b4db899cb9a4770efe1e2', '55', '2', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '15', '0', '0', '4', '34', '535', '77521', '9dc0bb8899c5497aa2dacab00c77fd5c', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '481', '76032', 'c0787a8c7d117e9a540222e8c1b744af', '20', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '3', '0', '0', '1', '25', '485', '76033', '80eaf5ea9d36f0a8c87d3eba1bd05055', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '1', '13', '1', '0', '31', '719', '77568', '53cd539db99d47571d60f4d91d019219', '58', '7', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '487', '76025', '11ee841a987d5674196d37fef51ed9a6', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '722', '77024', '8d97e33eb204fcab472e184928d89803', '20', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '20', '0', '0', '4', '34', '501', '76259', '7d1526a0dd4803a1fda914bcebd93b47', '0', '5', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '506', '76224', 'a995483a30393a2c0386c786200c4c84', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Quân quan mạch đao', 'Quân dụng tỏa tử giáp', '149', '0', '5', '4', '48', '531', '77212', '132a2ae60d254a56c7264893f03a6a25', '0', '32', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '519', '77407', '00bec478348b21e8e9135bb08a6787cd', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '11', '1', '0', '38', '470', '76067', '0dee7d958d6808a52df8c485ce7657af', '126', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '8', '3', '1', '1', '36', '459', '76081', 'efc744bfecbcc5b1d2443ff739987af9', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '9', '3', '1', '1', '36', '459', '76079', 'efc744bfecbcc5b1d2443ff739987af9', '0', '1', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '15', '4', '3', '5', '32', '492', '76104', '3204b1df760fd73acf5332398961f416', '20', '16', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Thị hồn cốt nhẫn', 'Thị hồn cốt nhẫn', '25', '0', '5', '3', '39', '480', '76730', 'df1905b2799580cd3861d79686bacbad', '0', '8', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '493', '76113', '17101f9d4b65bad5d190afab2f99117b', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '504', '76190', '78d406e749821c6f055f787edde7fee2', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · thú hồn hạng liên', 'Duyên phong · thú hồn hạng liên', '18', '12', '4', '4', '44', '492', '77036', '3204b1df760fd73acf5332398961f416', '55', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '5', '0', '0', '2', '27', '502', '76252', 'f039e55562a77296188f2963ca97fae1', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '2', '9', '2', '0', '35', '518', '76570', '65f69095d290c9579a2255210d058fb1', '62', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '504', '76188', '78d406e749821c6f055f787edde7fee2', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '14', '1', '0', '2', '27', '562', '76821', 'aecc6f9f63ececb58dcfe256ac7d6897', '1', '11', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '589', '76924', 'c5ade303cb17684643aeff84423cb708', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '506', '76233', 'a995483a30393a2c0386c786200c4c84', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '505', '77428', '5342074c8ce889f9ce11bcd4f254355f', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '510', '76253', '5934d4cfe76f9339c8ba2a88b162269c', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Thanh phong hộ giáp', 'Thủ tự thanh phong thường bạn', '0', '5', '1', '0', '26', '494', '76123', '754ae44f81dc019f17c06a41aa2ea715', '25', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '494', '76120', '754ae44f81dc019f17c06a41aa2ea715', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '12', '4', '1', '1', '36', '499', '76254', '987fa1ed57063997f01f22767178a600', '0', '5', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Thanh phong hộ giáp', 'Thủ tự thanh phong thường bạn', '0', '5', '1', '0', '26', '494', '76122', '754ae44f81dc019f17c06a41aa2ea715', '25', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '722', '76316', '8d97e33eb204fcab472e184928d89803', '20', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '4', '4', '3', '5', '32', '499', '76234', '987fa1ed57063997f01f22767178a600', '20', '5', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '2', '12', '1', '0', '31', '520', '76465', '5be0b95fe4591bf4593f16cacfb9136c', '55', '6', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '504', '76199', '78d406e749821c6f055f787edde7fee2', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '0', '7', '1', '0', '30', '532', '76524', '024285ca73e87438c68cf82f4d2ee7ca', '50', '0', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Hắc ma chủy thủ', 'Hắc ma chủy thủ', '62', '0', '3', '4', '33', '492', '76143', '3204b1df760fd73acf5332398961f416', '0', '30', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '463', '76146', '547f7c3b2c069650f414a69ef4402498', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '463', '76147', '547f7c3b2c069650f414a69ef4402498', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '10', '0', '0', '2', '27', '499', '76189', '987fa1ed57063997f01f22767178a600', '0', '5', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '0', '10', '2', '0', '35', '501', '76263', '7d1526a0dd4803a1fda914bcebd93b47', '65', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '20', '0', '0', '4', '34', '480', '76541', 'df1905b2799580cd3861d79686bacbad', '0', '5', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Thanh phong hộ giáp', 'Thủ tự thanh phong thường bạn', '0', '5', '1', '0', '26', '463', '76153', '547f7c3b2c069650f414a69ef4402498', '25', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '9', '0', '1', '3', '29', '502', '76249', 'f039e55562a77296188f2963ca97fae1', '0', '7', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '5', '3', '5', '32', '719', '77587', '53cd539db99d47571d60f4d91d019219', '20', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '562', '76819', 'aecc6f9f63ececb58dcfe256ac7d6897', '46', '3', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '544', '76680', 'c247e85792e955f2d8ca0663a95ef39d', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '524', '76473', 'a6edc2472e88417ac151bf97c7231a23', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '501', '76211', '7d1526a0dd4803a1fda914bcebd93b47', '20', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '5', '0', '0', '2', '27', '502', '76251', 'f039e55562a77296188f2963ca97fae1', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '590', '76932', 'e7da68284647dad4587312fb43c3c4cf', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '16', '0', '0', '28', '502', '76227', 'f039e55562a77296188f2963ca97fae1', '40', '8', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '504', '76204', '78d406e749821c6f055f787edde7fee2', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '3', '3', '3', '5', '32', '520', '76469', '5be0b95fe4591bf4593f16cacfb9136c', '20', '3', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '0', '7', '1', '0', '30', '499', '76206', '987fa1ed57063997f01f22767178a600', '50', '0', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '3', '0', '0', '1', '25', '504', '76207', '78d406e749821c6f055f787edde7fee2', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Quân dụng tỏa tử giáp', 'Kiếp đao', '5', '25', '5', '0', '47', '531', '77207', '132a2ae60d254a56c7264893f03a6a25', '170', '9', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '520', '76481', '5be0b95fe4591bf4593f16cacfb9136c', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '728', '77570', '0e67ef9235186f4f55a624ee83eb0eb9', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '8', '2', '1', '3', '29', '503', '76225', 'f0ac44856637b747beb115331972de83', '2', '10', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '504', '76222', '78d406e749821c6f055f787edde7fee2', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '1', '9', '1', '0', '30', '503', '76392', 'f0ac44856637b747beb115331972de83', '53', '4', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '509', '76242', 'fcdd5d501dd7b299a36d97981bbd664f', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '611', '77048', 'a5be62b4b78aa6ec7502924aa6c7ecb0', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '588', '77005', '95409c694fc35f303dc09eea69444dd8', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '17', '0', '0', '4', '34', '501', '76260', '7d1526a0dd4803a1fda914bcebd93b47', '0', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '15', '0', '0', '28', '517', '76447', '5b5df97f24dda63106a3cfdbec0f2f37', '48', '11', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '7', '0', '0', '2', '27', '520', '76443', '5be0b95fe4591bf4593f16cacfb9136c', '0', '2', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '10', '0', '1', '3', '29', '518', '76421', '65f69095d290c9579a2255210d058fb1', '0', '8', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '610', '76955', '4ab1097327f63a1deadfd6721b3155ad', '40', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '4', '3', '5', '32', '486', '76312', '7837bb48be44041b2ee92d061d08653e', '20', '1', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Thị hồn cốt nhẫn', 'Thị hồn cốt nhẫn', '17', '0', '5', '3', '39', '519', '77414', '00bec478348b21e8e9135bb08a6787cd', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '524', '76466', 'a6edc2472e88417ac151bf97c7231a23', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '0', '10', '1', '0', '31', '486', '76319', '7837bb48be44041b2ee92d061d08653e', '55', '2', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '521', '76428', 'eae57174fc4d0114b0a244a0b4d46cd1', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '3', '0', '0', '1', '25', '521', '76446', 'eae57174fc4d0114b0a244a0b4d46cd1', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '8', '3', '3', '5', '32', '518', '76440', '65f69095d290c9579a2255210d058fb1', '20', '8', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '6', '1', '1', '3', '29', '521', '76430', 'eae57174fc4d0114b0a244a0b4d46cd1', '1', '6', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '516', '76331', '6d269e625ac8a8e57a6f38d43ebbd3c6', '20', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '722', '76334', '8d97e33eb204fcab472e184928d89803', '20', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '673', '77239', 'de606cacc6a6ba649a3bf437b993d5fb', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '521', '76425', 'eae57174fc4d0114b0a244a0b4d46cd1', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '3', '7', '1', '0', '30', '518', '76426', '65f69095d290c9579a2255210d058fb1', '50', '3', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '0', '9', '1', '0', '30', '517', '76497', '5b5df97f24dda63106a3cfdbec0f2f37', '50', '2', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '533', '77425', '67d33ee391a22e8e317f6a3b9bd43b9d', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '5', '3', '3', '5', '32', '533', '76490', '67d33ee391a22e8e317f6a3b9bd43b9d', '20', '5', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '2', '3', '3', '5', '32', '528', '76607', 'b0937c2a2e0292043bf9afbc25cc43d7', '20', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '1', '3', '3', '5', '32', '503', '76414', 'f0ac44856637b747beb115331972de83', '20', '1', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '572', '76921', '97d54e32270c248846cd545730dff24c', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '1', '4', '3', '5', '32', '538', '76751', '2f1d8f88000b56e6b5c3007d36f2c1c8', '21', '3', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '518', '76442', '65f69095d290c9579a2255210d058fb1', '20', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Nguyệt luân thương', 'Nguyệt luân thương', '10', '0', '0', '2', '37', '560', '76629', 'b9ed5f7f48d6002db99626ae8f022baa', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '521', '76436', 'eae57174fc4d0114b0a244a0b4d46cd1', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '524', '76527', 'a6edc2472e88417ac151bf97c7231a23', '40', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '521', '76438', 'eae57174fc4d0114b0a244a0b4d46cd1', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '524', '76510', 'a6edc2472e88417ac151bf97c7231a23', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '584', '77016', '471555821ff06e8c401d3e6fb0f890d9', '20', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '5', '0', '0', '2', '27', '536', '76454', '5ee8523aac65e35244462f7c8b65aa4e', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '0', '8', '1', '0', '31', '503', '76409', 'f0ac44856637b747beb115331972de83', '55', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '0', '9', '2', '0', '35', '479', '76519', '91322e4d4529a1c0db2580a4d5e07ff1', '62', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '520', '76480', '5be0b95fe4591bf4593f16cacfb9136c', '20', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '526', '76482', 'f365c41cca1867794c0d56a0d2964f52', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '0', '8', '1', '0', '31', '520', '76477', '5be0b95fe4591bf4593f16cacfb9136c', '55', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '15', '1', '0', '38', '722', '76940', '8d97e33eb204fcab472e184928d89803', '120', '5', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '524', '76488', 'a6edc2472e88417ac151bf97c7231a23', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '2', '9', '2', '0', '35', '535', '76514', '9dc0bb8899c5497aa2dacab00c77fd5c', '62', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '4', '3', '5', '32', '517', '76525', '5b5df97f24dda63106a3cfdbec0f2f37', '20', '1', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '479', '76526', '91322e4d4529a1c0db2580a4d5e07ff1', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '12', '5', '1', '1', '36', '520', '76530', '5be0b95fe4591bf4593f16cacfb9136c', '0', '6', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '8', '3', '1', '1', '36', '564', '76733', '59c0c0ee89fc09541f4c7760cd40f2f0', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '10', '3', '1', '1', '36', '520', '76532', '5be0b95fe4591bf4593f16cacfb9136c', '0', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '0', '9', '2', '0', '35', '0', '76533', '', '62', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '691', '77146', '17a653630bf9efddc2913636da715feb', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách trảm cuồng lan thương', 'Bách trảm cuồng lan', '20', '0', '0', '5', '40', '682', '77151', '022efa153704457feb2e54c5bbe671b5', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '5', '0', '0', '2', '27', '553', '76698', '200bf133981166e62a56d838617bcab1', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '566', '76860', '254884cc98a27262e70f650f6f2692bc', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '14', '1', '0', '38', '480', '76749', 'df1905b2799580cd3861d79686bacbad', '120', '4', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '537', '76627', '1ad63d508f70be6d8d83235471f1fc8b', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '5', '0', '0', '2', '27', '555', '76687', '06fbd149264dc74569f23b348101c0c4', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '524', '76538', 'a6edc2472e88417ac151bf97c7231a23', '40', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '586', '76971', '465133246a843b93c24201350509133a', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '7', '8', '1', '0', '31', '528', '76604', 'b0937c2a2e0292043bf9afbc25cc43d7', '55', '7', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '587', '76984', '6d3e49a106b7d4332c562fa96aaa7b31', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '11', '3', '1', '1', '36', '517', '76546', '5b5df97f24dda63106a3cfdbec0f2f37', '0', '3', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Thị hồn cốt nhẫn', 'Thị hồn cốt nhẫn', '23', '0', '5', '3', '39', '479', '76552', '91322e4d4529a1c0db2580a4d5e07ff1', '0', '6', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Nguyệt luân thương', 'Nguyệt luân thương', '10', '0', '0', '2', '37', '561', '76633', '96c3c7f28f7ada4dce2c8f1dbdc419ef', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '15', '0', '0', '4', '34', '518', '76564', '65f69095d290c9579a2255210d058fb1', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '654', '77143', '8a7efb7f2df77e079d227b2b0518b47f', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '2', '7', '1', '0', '30', '528', '76597', 'b0937c2a2e0292043bf9afbc25cc43d7', '50', '2', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Thị hồn cốt nhẫn', 'Thị hồn cốt nhẫn', '17', '0', '5', '3', '39', '479', '76568', '91322e4d4529a1c0db2580a4d5e07ff1', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '529', '76575', 'cf2f747ba60ee6e02aeb6b750182d691', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '12', '3', '1', '1', '36', '528', '76970', 'b0937c2a2e0292043bf9afbc25cc43d7', '0', '4', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '529', '76577', 'cf2f747ba60ee6e02aeb6b750182d691', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '3', '0', '0', '1', '25', '529', '76581', 'cf2f747ba60ee6e02aeb6b750182d691', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '472', '76870', '314b6439ec01d71838961c71c7d874c2', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '576', '76989', 'b640a2de9bf6e48433937295ee06bbcd', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '591', '76804', '0cb8f67a8c561a63dacaa09158f7f40c', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '566', '76859', '254884cc98a27262e70f650f6f2692bc', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '655', '77136', '071cc2053b1d893f70a8717e139a890b', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '592', '76744', '8430ef32db1b255ff6cbe21f99e999f2', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '2', '8', '1', '0', '30', '538', '76732', '2f1d8f88000b56e6b5c3007d36f2c1c8', '53', '4', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Nguyệt luân thương', 'Nguyệt luân thương', '10', '0', '0', '2', '37', '608', '76626', '6e4aeebf5cd05538d633891e444f1122', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '669', '77229', '90e8f3a897aa7fcb31627a8e75eeaa9c', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '545', '76685', '83c1f495f13e5447fca661992ccee009', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '0', '9', '2', '0', '35', '539', '76650', 'e6830fe7835906ba70e9a1a8aed1ceb3', '62', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '0', '9', '2', '0', '35', '540', '76654', '66cf1a9ab2721d6c11dc4cb24249428a', '62', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '11', '1', '0', '38', '480', '76655', 'df1905b2799580cd3861d79686bacbad', '120', '1', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '5', '10', '1', '0', '31', '535', '76686', '9dc0bb8899c5497aa2dacab00c77fd5c', '55', '7', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '0', '9', '2', '0', '35', '541', '76659', '2185f80f47a082048bd9db8c3525d9f7', '62', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '50', '1', '0', '38', '492', '76660', '3204b1df760fd73acf5332398961f416', '120', '30', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '9', '3', '1', '1', '36', '578', '76716', 'a3662eaf07dda1c197ceabba10c75e02', '0', '1', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '574', '76925', 'c39219e0f88619106fc81c6324b91549', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '13', '0', '1', '3', '29', '568', '76896', 'efc23151bb317b15d8b8da7a9568727d', '0', '11', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Thanh phong hộ giáp', 'Thủ tự thanh phong thường bạn', '0', '5', '1', '0', '26', '612', '76957', 'fbd3d515e501ab709aaea351abf2acdd', '25', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Nguyệt luân thương', 'Nguyệt luân thương', '10', '0', '0', '2', '37', '538', '76817', '2f1d8f88000b56e6b5c3007d36f2c1c8', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '542', '76682', 'e238ea4bdb4a2a90dfcd4567e00945d3', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '5', '0', '0', '2', '27', '543', '76683', 'd74a13192703b1cddd544c8b0ecd0bff', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Thị hồn cốt nhẫn', 'Thị hồn cốt nhẫn', '26', '0', '5', '3', '39', '480', '76713', 'df1905b2799580cd3861d79686bacbad', '0', '9', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '5', '0', '0', '2', '27', '556', '76688', '83b5198f712e84da985fc479c9fc2c0e', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '546', '76689', 'e4f422fe1b5cc251be6e7937bd177f99', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '548', '76690', '62e06d38c7d24d82f21eb56f228cf03c', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '5', '0', '0', '2', '27', '557', '76691', '85e633e596b131abb347dcf62a46e307', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '2', '3', '3', '5', '32', '535', '76692', '9dc0bb8899c5497aa2dacab00c77fd5c', '20', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '549', '76693', '6993d6c9bbaa7e5b08a5093ca818b3da', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · thú hồn hạng liên', 'Duyên phong · thú hồn hạng liên', '32', '12', '4', '4', '44', '531', '77134', '132a2ae60d254a56c7264893f03a6a25', '55', '13', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '550', '76695', '2512c48fa5ad9252986d4170708adf43', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '552', '76696', '46d5fc2815779f012fb904af9b765de0', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '554', '76697', '37057f77a2ca4c7ef726f47004aa7eb6', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '565', '76858', '6def45155adf21e7aad4a3e12759f7e6', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '2', '10', '1', '0', '31', '538', '76734', '2f1d8f88000b56e6b5c3007d36f2c1c8', '61', '6', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '656', '77135', 'b07cf0573d533fd6fafea889f4b00341', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '0', '8', '1', '0', '31', '503', '76740', 'f0ac44856637b747beb115331972de83', '55', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '8', '4', '1', '1', '36', '570', '76710', 'ae5c1ace8df289cb52e1e6e6bba81084', '0', '1', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '569', '76886', '328e720a8f53d40808701b2cc47641c9', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '1', '4', '3', '5', '32', '538', '76738', '2f1d8f88000b56e6b5c3007d36f2c1c8', '21', '3', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '690', '77147', 'f7f614975423ea19029307b81d8c830d', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '593', '76752', '382e2cfe200d1231ffe1a2e306d42a6b', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '1', '4', '3', '5', '32', '538', '76753', '2f1d8f88000b56e6b5c3007d36f2c1c8', '21', '3', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '564', '76851', '59c0c0ee89fc09541f4c7760cd40f2f0', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '10', '5', '1', '1', '36', '538', '76763', '2f1d8f88000b56e6b5c3007d36f2c1c8', '2', '6', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '595', '76757', 'ac715806d021d762ad5d783e08794bd4', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '20', '0', '0', '4', '34', '722', '76923', '8d97e33eb204fcab472e184928d89803', '0', '5', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '570', '76889', 'ae5c1ace8df289cb52e1e6e6bba81084', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '596', '76761', '8bc80ee3535cd08e96cbdc945bb9881d', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '479', '76793', '91322e4d4529a1c0db2580a4d5e07ff1', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '662', '77162', '03dd6871353d919e243d6cc9cd0edc21', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '3', '0', '0', '1', '25', '569', '76885', '328e720a8f53d40808701b2cc47641c9', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '563', '76849', '07c4aa8db44ac27c5047134da59caf04', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Thị hồn cốt nhẫn', 'Thị hồn cốt nhẫn', '71', '0', '5', '3', '39', '492', '76780', '3204b1df760fd73acf5332398961f416', '0', '30', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '585', '76969', '8941761f4845a31c23a6328e5e579202', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '566', '76862', '254884cc98a27262e70f650f6f2692bc', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '566', '76861', '254884cc98a27262e70f650f6f2692bc', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '650', '77125', 'f47188dbeb689c63337216ffcfdc80aa', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '607', '77046', 'abad3256447bf495020a18e2c7f72df8', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Thanh phong hộ giáp', 'Thủ tự thanh phong thường bạn', '0', '5', '1', '0', '26', '617', '76958', '751058112ea7895985fa67cf23ed7bba', '25', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Nguyệt luân thương', 'Nguyệt luân thương', '10', '0', '0', '2', '37', '566', '76853', '254884cc98a27262e70f650f6f2692bc', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Nguyệt luân thương', 'Nguyệt luân thương', '10', '0', '0', '2', '37', '569', '76854', '328e720a8f53d40808701b2cc47641c9', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '566', '76855', '254884cc98a27262e70f650f6f2692bc', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '599', '76872', '0ed5b695d1c6831efb9ef209045e6872', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '472', '76873', '314b6439ec01d71838961c71c7d874c2', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '601', '76874', '998ea2ed1e539242b37b3d145ec984c1', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '602', '76875', 'f02ab205f576a1761a1efad0ee014d65', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '568', '76881', 'efc23151bb317b15d8b8da7a9568727d', '40', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '0', '8', '1', '0', '31', '547', '77026', '557b7f4de2be11fd91d173d236fea6b4', '55', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '569', '76883', '328e720a8f53d40808701b2cc47641c9', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '575', '76976', 'bf9939cbe76a46d23d3518233af2f5c4', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '575', '76926', 'bf9939cbe76a46d23d3518233af2f5c4', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '0', '7', '1', '0', '30', '568', '76907', 'efc23151bb317b15d8b8da7a9568727d', '50', '0', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '568', '76920', 'efc23151bb317b15d8b8da7a9568727d', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '598', '77038', '1dae7225f245dd20b9e9819ccf00bb14', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '629', '77084', '4faa68ad2836d9a580a095d5d4e5ac34', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '597', '77037', '2db67eedafd57b9251452c84fd6e72dd', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '573', '76922', 'd2270581618374bd45714ee5704931b9', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '594', '77035', 'a99db0da877f1c5e3579d338f49271fe', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '568', '76914', 'efc23151bb317b15d8b8da7a9568727d', '22', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '7', '1', '1', '3', '29', '547', '76915', '557b7f4de2be11fd91d173d236fea6b4', '1', '7', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '578', '76931', 'a3662eaf07dda1c197ceabba10c75e02', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '576', '76928', 'b640a2de9bf6e48433937295ee06bbcd', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '632', '77090', 'b9914dd0b8bdc9ab234a551d6a9989c3', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '577', '76930', '834f2bbe62c7ff8b8588da6721123dfb', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '579', '76933', '6748710cbb3b0d6453f6f90c020b2f2e', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '1', '4', '3', '5', '32', '547', '77023', '557b7f4de2be11fd91d173d236fea6b4', '21', '3', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '580', '76937', 'cad17f862127f53425dba7035d7e7c04', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '581', '76938', '12859183b2c1aa3ab363f36b377d3e2a', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '604', '76943', 'fff129361f0ecd915545b09a4f23741a', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '606', '76946', '8bf7e7c51e89f7d055431b885e88c7aa', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '655', '77144', '071cc2053b1d893f70a8717e139a890b', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '577', '76949', '834f2bbe62c7ff8b8588da6721123dfb', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '615', '76950', '9fa9af61fba789b3a3a68dd18bec0355', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '574', '76951', 'c39219e0f88619106fc81c6324b91549', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '12', '3', '1', '1', '36', '528', '76982', 'b0937c2a2e0292043bf9afbc25cc43d7', '0', '4', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '625', '77083', 'ec3dcb49b71ec220951be37a1e1cbda2', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '609', '76954', '2aa1cf134292f1739bd9ff431db93908', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '605', '76956', '9bea8bb6f86f26e1a55e2abb63f9f479', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '607', '76978', 'abad3256447bf495020a18e2c7f72df8', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '613', '77049', '003222c0bc5a54469192d5c6dc2e96a4', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Thanh phong hộ giáp', 'Thủ tự thanh phong thường bạn', '0', '5', '1', '0', '26', '618', '76959', '96a60d2c0f22959633c766cd4be60293', '25', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Thanh phong hộ giáp', 'Thủ tự thanh phong thường bạn', '0', '5', '1', '0', '26', '619', '76960', 'cb477a5c69f52fc35afc1f62e97197e7', '25', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Thanh phong hộ giáp', 'Thủ tự thanh phong thường bạn', '0', '5', '1', '0', '26', '620', '76961', '112c512ed3ce9b33ac455449ad26e8a4', '25', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Thanh phong hộ giáp', 'Thủ tự thanh phong thường bạn', '0', '5', '1', '0', '26', '622', '76962', '97bf4556a5d23ded2646f81a24b293d6', '25', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '630', '77082', '2569b951da435bb9c77d68f84156b531', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '586', '76975', '465133246a843b93c24201350509133a', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '656', '77145', 'b07cf0573d533fd6fafea889f4b00341', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '20', '0', '0', '4', '34', '505', '77015', '5342074c8ce889f9ce11bcd4f254355f', '0', '5', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '587', '76983', '6d3e49a106b7d4332c562fa96aaa7b31', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '3', '7', '1', '0', '30', '584', '77004', '471555821ff06e8c401d3e6fb0f890d9', '50', '3', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '588', '77013', '95409c694fc35f303dc09eea69444dd8', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '5', '0', '0', '1', '25', '563', '76987', '07c4aa8db44ac27c5047134da59caf04', '0', '2', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '613', '76993', '003222c0bc5a54469192d5c6dc2e96a4', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '16', '2', '0', '4', '34', '505', '77017', '5342074c8ce889f9ce11bcd4f254355f', '0', '3', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '11', '4', '0', '2', '27', '584', '77009', '471555821ff06e8c401d3e6fb0f890d9', '0', '10', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '3', '0', '0', '1', '25', '625', '77079', 'ec3dcb49b71ec220951be37a1e1cbda2', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '0', '11', '1', '0', '31', '584', '77011', '471555821ff06e8c401d3e6fb0f890d9', '55', '3', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '685', '77264', '2a9d05e96984a01ac6a3d3fa26c423d2', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '653', '77142', 'ce4cd32dada7f32b83853711542c22ca', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '10', '3', '1', '1', '36', '584', '77027', '471555821ff06e8c401d3e6fb0f890d9', '0', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '3', '8', '1', '0', '30', '547', '77020', '557b7f4de2be11fd91d173d236fea6b4', '53', '5', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '2', '10', '1', '0', '31', '547', '77025', '557b7f4de2be11fd91d173d236fea6b4', '61', '6', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '547', '77031', '557b7f4de2be11fd91d173d236fea6b4', '20', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '597', '77032', '2db67eedafd57b9251452c84fd6e72dd', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '0', '8', '1', '0', '31', '547', '77033', '557b7f4de2be11fd91d173d236fea6b4', '55', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · thú hồn hạng liên', 'Duyên phong · thú hồn hạng liên', '38', '12', '4', '4', '44', '492', '77034', '3204b1df760fd73acf5332398961f416', '55', '16', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '633', '77047', '4028d7fd3906be6e99e9847cf5ec5748', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '600', '77041', '6636a00499a701a8e4aee28099e899c3', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '5', '3', '5', '32', '584', '77042', '471555821ff06e8c401d3e6fb0f890d9', '20', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '584', '77043', '471555821ff06e8c401d3e6fb0f890d9', '20', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '603', '77044', 'dbd913282216b9f36dc0aacf77fb8f4d', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '605', '77045', '9bea8bb6f86f26e1a55e2abb63f9f479', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '621', '77057', 'b7e9ee418c890496b897cfddc3827361', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '614', '77051', '2d3523906f45daf8b05d4ee873b2fb75', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '652', '77141', '97f6c8467286a08954edfa6955510a71', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '616', '77053', '745b8b0c24f3b050d2e5d4f040e09755', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · thú hồn hạng liên', 'Duyên phong · thú hồn hạng liên', '18', '12', '4', '4', '44', '492', '77054', '3204b1df760fd73acf5332398961f416', '55', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · thú hồn hạng liên', 'Duyên phong · thú hồn hạng liên', '20', '12', '4', '4', '44', '530', '77140', 'a82a81044ec116f876d03885c2973ba6', '55', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '651', '77139', 'b69d90fc03f0fa785b1c6ddb3b3829b8', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · thú hồn hạng liên', 'Duyên phong · thú hồn hạng liên', '18', '12', '4', '4', '44', '530', '77138', 'a82a81044ec116f876d03885c2973ba6', '55', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '623', '77061', 'f63078630a88b1ecee7ee913ceb19812', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '631', '77062', '8096bab241a745965c3fc88cc699df17', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '651', '77137', 'b69d90fc03f0fa785b1c6ddb3b3829b8', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '624', '77064', '93f526702057373149a9cfa640385eb3', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Quân dụng tỏa tử giáp', 'Kiếp đao', '5', '16', '5', '0', '47', '492', '77320', '3204b1df760fd73acf5332398961f416', '170', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Kiếp đao', 'Yêu vương kiếm toái phiến hợp thành', '25', '0', '4', '5', '46', '492', '77319', '3204b1df760fd73acf5332398961f416', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '626', '77067', '8ffb820f9fe09045a9e8ecdfbc712802', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '0', '9', '2', '0', '35', '696', '77068', '39486819141832199e9f6ce0f07df80f', '62', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '625', '77069', 'ec3dcb49b71ec220951be37a1e1cbda2', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '627', '77070', 'ef9ba5ede60da54d81838439bf4957d5', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '625', '77071', 'ec3dcb49b71ec220951be37a1e1cbda2', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '628', '77072', '4e192ae86106454c54d1c8571060d9cb', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Thị hồn cốt nhẫn', 'Thị hồn cốt nhẫn', '17', '3', '5', '3', '39', '505', '77073', '5342074c8ce889f9ce11bcd4f254355f', '0', '3', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '632', '77074', 'b9914dd0b8bdc9ab234a551d6a9989c3', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · thú hồn hạng liên', 'Duyên phong · thú hồn hạng liên', '18', '12', '4', '4', '44', '530', '77219', 'a82a81044ec116f876d03885c2973ba6', '55', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '630', '77085', '2569b951da435bb9c77d68f84156b531', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '16', '2', '0', '4', '34', '535', '77222', '9dc0bb8899c5497aa2dacab00c77fd5c', '0', '3', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '631', '77089', '8096bab241a745965c3fc88cc699df17', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '689', '77253', '3133ef63491fc4a52701e636dfbf9fa3', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · thú hồn hạng liên', 'Duyên phong · thú hồn hạng liên', '23', '19', '4', '4', '44', '531', '77133', '132a2ae60d254a56c7264893f03a6a25', '55', '12', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '633', '77092', '4028d7fd3906be6e99e9847cf5ec5748', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '702', '77228', '477f97929463f731805fea917796116b', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '635', '77099', '67f1b64af52c989385241db4b2b6daf8', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '21', '3', '0', '42', '531', '77131', '132a2ae60d254a56c7264893f03a6a25', '155', '11', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '634', '77097', 'e24af8ce4572a56388bba51fce9c5c2d', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '668', '77227', 'd7c100e7739bbbd6446020fa21eb43cb', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '666', '77224', 'da5ec0d2cab02e7b2f6f617fcfbac658', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '653', '77102', 'ce4cd32dada7f32b83853711542c22ca', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '636', '77103', 'fa80a1400e8952183e656d20ae298168', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '667', '77225', '3646314d5a3e639bcb2cba2d20ea1227', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '637', '77105', '4c2776c8859d4e1723bd6d7fab1b2772', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '652', '77106', '97f6c8467286a08954edfa6955510a71', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '638', '77107', '5a383efd6fd05659b53d81f46bb374ba', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '647', '77108', '51218a11dafd6581e03eb517fd323935', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '649', '77109', '0a02202fed191e30afc1626b1171b09d', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '639', '77110', 'c316eef7f547fdb67b02a02991c08595', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '640', '77111', '6641224d5c7b03639d8c3a821aaf5265', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '644', '77112', 'cba408727a6faf27e19799a28a7245d9', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '641', '77113', '7e11a224cf7d680b4434a8d4ffb38e18', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '642', '77114', 'ae48252617495d4d8415a9b2897e88da', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '642', '77115', 'ae48252617495d4d8415a9b2897e88da', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '643', '77116', 'ed1e41cb1a37291afaeafe372a999ece', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '644', '77117', 'cba408727a6faf27e19799a28a7245d9', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '645', '77118', '392d311e85536f5a22ac352458ed417d', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '646', '77119', 'b1a11bf20372c1917c015177e70da375', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '647', '77120', '51218a11dafd6581e03eb517fd323935', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '648', '77121', '78452c0d4b172fb2dcee08d338f56acc', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Bách trảm cuồng lan thương', 'Bách trảm cuồng lan', '20', '0', '0', '5', '40', '681', '77221', '4d6c7bbb353fe3b1998ab154b4b8de34', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '681', '77260', '4d6c7bbb353fe3b1998ab154b4b8de34', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '687', '77266', 'f94a4e70090449b1305bcfabc2fc3063', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '649', '77124', '0a02202fed191e30afc1626b1171b09d', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '672', '77236', '45500dfe80d0c1774817786a44a50e93', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · thú hồn hạng liên', 'Duyên phong · thú hồn hạng liên', '18', '12', '4', '4', '44', '530', '77148', 'a82a81044ec116f876d03885c2973ba6', '55', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '688', '77149', '500a2437c1bb8f02f7c49e28601dfb6e', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '658', '77150', '9224230b7a147c55b158c0642c0dae34', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Bách trảm cuồng lan thương', 'Bách trảm cuồng lan', '20', '0', '0', '5', '40', '680', '77152', 'e08d6b644f78d1b2fba58b3b9336e7c7', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách trảm cuồng lan thương', 'Bách trảm cuồng lan', '20', '0', '0', '5', '40', '679', '77153', '0bc389301f085642f280e2bb5736a480', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '665', '77154', 'c8d9ca8dc1c454d877b29418bb69c23f', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '660', '77155', '2c2297bb0c8a0ac18b2fd1f3f48787e2', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '661', '77156', '8459472e192b644642eb5042a71624a4', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách trảm cuồng lan thương', 'Bách trảm cuồng lan', '20', '3', '0', '5', '40', '505', '77157', '5342074c8ce889f9ce11bcd4f254355f', '0', '3', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '663', '77158', '2a111a75f25e6f87d99b0925f8fa4f09', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · phá quân yêu đái', 'Duyên phong · phá quân yêu đái', '0', '24', '0', '0', '43', '531', '77161', '132a2ae60d254a56c7264893f03a6a25', '170', '10', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '659', '77165', 'bf32173db0102374b65590833ad0cc7f', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '671', '77235', '144f1c155fcb7fedf5915e15c68aed52', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '659', '77168', 'bf32173db0102374b65590833ad0cc7f', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '674', '77169', 'f47ac3d9c8ff47415290e5bbee5d94ba', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '660', '77170', '2c2297bb0c8a0ac18b2fd1f3f48787e2', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '661', '77171', '8459472e192b644642eb5042a71624a4', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '519', '77191', '00bec478348b21e8e9135bb08a6787cd', '20', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '662', '77173', '03dd6871353d919e243d6cc9cd0edc21', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '663', '77174', '2a111a75f25e6f87d99b0925f8fa4f09', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '664', '77176', '485169fef9ff97368fad99c5d7b9eaba', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '665', '77177', 'c8d9ca8dc1c454d877b29418bb69c23f', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '675', '77190', '9467812eb836c2b70c021e8ef1d52ab1', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '687', '77252', 'f94a4e70090449b1305bcfabc2fc3063', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '519', '77189', '00bec478348b21e8e9135bb08a6787cd', '20', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '714', '77180', 'd8561aa207c9c921d2fcbff47f1b004f', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '5', '0', '0', '2', '27', '727', '77561', '9c484fb3dc297a35f106796ed135a98d', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '712', '77182', '90888bddd4da7a0ca3c3400b09cb8608', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '717', '77183', 'da689f730710e8cbc65d9ca654e5ffc5', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '691', '77270', '17a653630bf9efddc2913636da715feb', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '676', '77184', '7c8c3deb469f9576d97eb1bdedd44ded', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '3', '0', '0', '1', '25', '728', '77572', '0e67ef9235186f4f55a624ee83eb0eb9', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '15', '0', '0', '4', '34', '519', '77410', '00bec478348b21e8e9135bb08a6787cd', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '2', '5', '3', '5', '32', '519', '77187', '00bec478348b21e8e9135bb08a6787cd', '20', '4', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '519', '77198', '00bec478348b21e8e9135bb08a6787cd', '20', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '670', '77233', 'edcbf1d0ea9bb879b925b69aac3a4019', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '692', '77231', '596e08e7ab36427ead738fb68c3b0a19', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Quân quan mạch đao', 'Quân dụng tỏa tử giáp', '149', '0', '5', '4', '48', '530', '77208', 'a82a81044ec116f876d03885c2973ba6', '0', '32', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · thú hồn hạng liên', 'Duyên phong · thú hồn hạng liên', '18', '12', '4', '4', '44', '530', '77202', 'a82a81044ec116f876d03885c2973ba6', '55', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '722', '77401', '8d97e33eb204fcab472e184928d89803', '40', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '674', '77240', 'f47ac3d9c8ff47415290e5bbee5d94ba', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '675', '77241', '9467812eb836c2b70c021e8ef1d52ab1', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '676', '77242', '7c8c3deb469f9576d97eb1bdedd44ded', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '677', '77243', 'e4eeb15d095a35e9ca0934aa4c5d7348', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '678', '77244', '820454b1128c1a80ae000002be521290', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '704', '77245', 'd94223c92b09cca1881b7aa57c9be239', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '713', '77246', '24924d381bc4839740c136cba998f8a1', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '716', '77247', '677f23772319fda9f0b168cb4e7a921e', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '715', '77248', 'b28c7d5de2c2ba559cf68ae2e2d8aa8e', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Thanh phong hộ giáp', 'Thủ tự thanh phong thường bạn', '0', '5', '1', '0', '26', '728', '77591', '0e67ef9235186f4f55a624ee83eb0eb9', '25', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '703', '77251', '3a70d43cd5e915c33fca9ecaed82c166', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '686', '77254', 'c4370b9318ff613ff94f1c1f579ceffd', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '685', '77255', '2a9d05e96984a01ac6a3d3fa26c423d2', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '684', '77256', '5203a615004c27accb73b0d2dfe0d7e9', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '683', '77257', 'e1ea2ceff741958658f9ec6f3fb34337', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '679', '77258', '0bc389301f085642f280e2bb5736a480', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '680', '77259', 'e08d6b644f78d1b2fba58b3b9336e7c7', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '682', '77261', '022efa153704457feb2e54c5bbe671b5', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '683', '77262', 'e1ea2ceff741958658f9ec6f3fb34337', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '684', '77263', '5203a615004c27accb73b0d2dfe0d7e9', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '686', '77265', 'c4370b9318ff613ff94f1c1f579ceffd', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '712', '77293', '90888bddd4da7a0ca3c3400b09cb8608', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '688', '77267', '500a2437c1bb8f02f7c49e28601dfb6e', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '689', '77268', '3133ef63491fc4a52701e636dfbf9fa3', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '690', '77269', 'f7f614975423ea19029307b81d8c830d', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '693', '77271', 'e1cdfa10364d6fe840293d6058435f84', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '692', '77272', '596e08e7ab36427ead738fb68c3b0a19', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '693', '77273', 'e1cdfa10364d6fe840293d6058435f84', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '694', '77274', 'c39e1158234b1cbed1235f3a92e2190a', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '695', '77275', 'c40d9b4ce23e9d6301ae100078b494b1', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '696', '77276', '39486819141832199e9f6ce0f07df80f', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '697', '77277', '28540a58a176409ab6ab670ad8b84d9a', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '698', '77278', 'db0c22a8d6c70028f1458c5bde301d42', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '699', '77279', 'e26d19ccb75a13d79282f2494544ed63', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '700', '77280', 'ae43a1ceec1a1cd209229a4a2a576694', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '701', '77281', 'dad5603cf172dda4d361f94d72ffa9b3', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '702', '77282', '477f97929463f731805fea917796116b', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '703', '77283', '3a70d43cd5e915c33fca9ecaed82c166', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '704', '77284', 'd94223c92b09cca1881b7aa57c9be239', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '705', '77285', '4e8649b4605a7b24838a6eb8ccbcdafd', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '706', '77286', 'ddfafa84970edb8a1a2e1ce511cb3bea', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '707', '77287', 'dd799830db04c768c1bc8c999adb9eb3', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '708', '77288', '0728f444fe41245dc6009bae1abd5076', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '709', '77290', '907c9e6c88d5dfdc389cd159e8e1227c', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '710', '77291', '42de75f09bd5e5f02dc4ec20d84f6ec1', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '711', '77292', '59906aabadcb687e8dd91cc3e7840c8f', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '713', '77296', '24924d381bc4839740c136cba998f8a1', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '714', '77297', 'd8561aa207c9c921d2fcbff47f1b004f', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '715', '77298', 'b28c7d5de2c2ba559cf68ae2e2d8aa8e', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '716', '77299', '677f23772319fda9f0b168cb4e7a921e', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '717', '77300', 'da689f730710e8cbc65d9ca654e5ffc5', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Thị hồn cốt nhẫn', 'Thị hồn cốt nhẫn', '20', '0', '5', '3', '39', '505', '77301', '5342074c8ce889f9ce11bcd4f254355f', '0', '3', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '8', '3', '1', '1', '36', '488', '77315', '1f014c041b1cb42cb1a75f9449e99998', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '0', '8', '1', '0', '31', '488', '77314', '1f014c041b1cb42cb1a75f9449e99998', '55', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '13', '0', '1', '3', '29', '488', '77308', '1f014c041b1cb42cb1a75f9449e99998', '0', '11', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Quân quan mạch đao', 'Quân dụng tỏa tử giáp', '30', '0', '5', '4', '48', '492', '77318', '3204b1df760fd73acf5332398961f416', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '718', '77321', '1f4d7e6d0493153d0a425f21883df5fe', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '718', '77322', '1f4d7e6d0493153d0a425f21883df5fe', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '718', '77323', '1f4d7e6d0493153d0a425f21883df5fe', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '718', '77324', '1f4d7e6d0493153d0a425f21883df5fe', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '3', '0', '0', '1', '25', '718', '77325', '1f4d7e6d0493153d0a425f21883df5fe', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '11', '1', '0', '38', '501', '77327', '7d1526a0dd4803a1fda914bcebd93b47', '126', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '530', '77328', 'a82a81044ec116f876d03885c2973ba6', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '530', '77329', 'a82a81044ec116f876d03885c2973ba6', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hắc ma chủy thủ', 'Hắc ma chủy thủ', '14', '0', '3', '4', '33', '530', '77330', 'a82a81044ec116f876d03885c2973ba6', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Nguyệt luân thương', 'Nguyệt luân thương', '10', '0', '0', '2', '37', '530', '77331', 'a82a81044ec116f876d03885c2973ba6', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '0', '9', '2', '0', '35', '530', '77332', 'a82a81044ec116f876d03885c2973ba6', '62', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '15', '3', '0', '42', '722', '77337', '8d97e33eb204fcab472e184928d89803', '155', '5', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '505', '77338', '5342074c8ce889f9ce11bcd4f254355f', '155', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '3', '1', '1', '3', '29', '727', '77558', '9c484fb3dc297a35f106796ed135a98d', '1', '3', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '728', '77571', '0e67ef9235186f4f55a624ee83eb0eb9', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '0', '9', '2', '0', '35', '720', '77346', '361279866296d10396c06791e1f7b796', '62', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Thị hồn cốt nhẫn', 'Thị hồn cốt nhẫn', '21', '0', '5', '3', '39', '501', '77347', '7d1526a0dd4803a1fda914bcebd93b47', '0', '4', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '505', '77353', '5342074c8ce889f9ce11bcd4f254355f', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '9', '1', '0', '2', '27', '719', '77364', '53cd539db99d47571d60f4d91d019219', '1', '6', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '0', '7', '1', '0', '30', '719', '77588', '53cd539db99d47571d60f4d91d019219', '50', '0', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Thị hồn cốt nhẫn', 'Thị hồn cốt nhẫn', '17', '0', '5', '3', '39', '501', '77371', '7d1526a0dd4803a1fda914bcebd93b47', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hắc ma chủy thủ', 'Hắc ma chủy thủ', '14', '0', '3', '4', '33', '718', '77372', '1f4d7e6d0493153d0a425f21883df5fe', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '720', '77373', '361279866296d10396c06791e1f7b796', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '720', '77374', '361279866296d10396c06791e1f7b796', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '720', '77379', '361279866296d10396c06791e1f7b796', '40', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '720', '77376', '361279866296d10396c06791e1f7b796', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '501', '77377', '7d1526a0dd4803a1fda914bcebd93b47', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '3', '0', '0', '1', '25', '720', '77378', '361279866296d10396c06791e1f7b796', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '0', '9', '2', '0', '35', '519', '77413', '00bec478348b21e8e9135bb08a6787cd', '62', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '722', '77402', '8d97e33eb204fcab472e184928d89803', '40', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '0', '10', '2', '0', '35', '519', '77405', '00bec478348b21e8e9135bb08a6787cd', '62', '1', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '2', '10', '1', '0', '38', '535', '77404', '9dc0bb8899c5497aa2dacab00c77fd5c', '120', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '16', '0', '0', '4', '34', '519', '77406', '00bec478348b21e8e9135bb08a6787cd', '0', '1', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '15', '0', '0', '4', '34', '519', '77411', '00bec478348b21e8e9135bb08a6787cd', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '724', '77396', 'eca24beba178ffa2d273410f2b1eff68', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '723', '77397', '9ca6dc570525096a45e9d1fd4bdda384', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '725', '77398', 'efb6f6c5f57692b790f014c5b38dd816', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Duyên phong · thú hồn hạng liên', 'Duyên phong · thú hồn hạng liên', '18', '12', '4', '4', '44', '492', '77418', '3204b1df760fd73acf5332398961f416', '55', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Thị hồn cốt nhẫn', 'Thị hồn cốt nhẫn', '17', '5', '5', '3', '39', '535', '77419', '9dc0bb8899c5497aa2dacab00c77fd5c', '3', '8', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '0', '10', '1', '0', '30', '719', '77590', '53cd539db99d47571d60f4d91d019219', '50', '3', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '0', '7', '1', '0', '30', '719', '77589', '53cd539db99d47571d60f4d91d019219', '50', '0', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '5', '0', '0', '2', '27', '487', '77518', '11ee841a987d5674196d37fef51ed9a6', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '8', '0', '1', '3', '29', '726', '77537', 'e99904f72c48e48b4bc5ee8cf8e966d6', '0', '6', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '2', '8', '0', '0', '28', '726', '77538', 'e99904f72c48e48b4bc5ee8cf8e966d6', '53', '8', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '726', '77539', 'e99904f72c48e48b4bc5ee8cf8e966d6', '40', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '5', '0', '0', '2', '27', '487', '77531', '11ee841a987d5674196d37fef51ed9a6', '0', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '1', '10', '2', '0', '35', '538', '77542', '2f1d8f88000b56e6b5c3007d36f2c1c8', '62', '2', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '505', '77543', '5342074c8ce889f9ce11bcd4f254355f', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '505', '77544', '5342074c8ce889f9ce11bcd4f254355f', '120', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '1', '9', '0', '0', '28', '727', '77553', '9c484fb3dc297a35f106796ed135a98d', '42', '3', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '7', '0', '0', '1', '25', '726', '77536', 'e99904f72c48e48b4bc5ee8cf8e966d6', '1', '5', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '15', '0', '0', '4', '34', '535', '77517', '9dc0bb8899c5497aa2dacab00c77fd5c', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '2', '0', '0', '1', '23', '726', '77535', 'e99904f72c48e48b4bc5ee8cf8e966d6', '0', '1', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '15', '0', '0', '4', '34', '535', '77513', '9dc0bb8899c5497aa2dacab00c77fd5c', '0', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '475', '77541', 'e03886cbdd41f2973d1e16d83a1250a2', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '2', '2', '0', '0', '24', '726', '77534', 'e99904f72c48e48b4bc5ee8cf8e966d6', '10', '2', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '0', '9', '2', '0', '35', '535', '77533', '9dc0bb8899c5497aa2dacab00c77fd5c', '62', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '505', '77508', '5342074c8ce889f9ce11bcd4f254355f', '20', '0', '0', '0');
INSERT INTO `playerzhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '475', '77540', 'e03886cbdd41f2973d1e16d83a1250a2', '10', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('<span style=color:red> 【khai thiên kiếm】</span>', '<span style=color:red> 【khai thiên kiếm】</span>', '50', '0', '10', '10', '100', '440', '77592', 'f0be893286b66272230904a0a7d33168', '100', '0', '0', '1');
INSERT INTO `playerzhuangbei` VALUES ('<span style=color:red> 【khai thiên dây chuyền】</span>', '<span style=color:red> 【khai thiên dây chuyền】</span>', '0', '0', '15', '15', '200', '440', '77593', 'f0be893286b66272230904a0a7d33168', '0', '0', '0', '2');
INSERT INTO `playerzhuangbei` VALUES ('<span style=color:red> 【khai thiên chiến giáp】</span>', '<span style=color:red> 【khai thiên chiến giáp】</span>', '0', '60', '0', '0', '300', '440', '77594', 'f0be893286b66272230904a0a7d33168', '450', '0', '0', '3');
INSERT INTO `playerzhuangbei` VALUES ('<span style=color:red>【khai thiên đai lưng】 </span>', '<span style=color:red>【khai thiên đai lưng】 </span>', '20', '20', '0', '0', '400', '440', '77595', 'f0be893286b66272230904a0a7d33168', '150', '0', '0', '4');
INSERT INTO `playerzhuangbei` VALUES ('<span style=color:red>【khai thiên nhẫn】</span>', '<span style=color:red>【khai thiên nhẫn】</span>', '25', '0', '0', '10', '500', '440', '77596', 'f0be893286b66272230904a0a7d33168', '0', '0', '0', '5');
INSERT INTO `playerzhuangbei` VALUES ('<span style=color:red>【 khai thiên giày】</span>', '<span style=color:red>【 khai thiên giày】</span>', '20', '20', '10', '10', '600', '440', '77597', 'f0be893286b66272230904a0a7d33168', '0', '0', '0', '6');

-- ----------------------------
-- Table structure for qy
-- ----------------------------
DROP TABLE IF EXISTS `qy`;
CREATE TABLE `qy` (
  `qyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qyname` varchar(255) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`qyid`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qy
-- ----------------------------
INSERT INTO `qy` VALUES ('14', 'Tân thủ thôn', '225');
INSERT INTO `qy` VALUES ('16', 'Tụ tiên thành', '239');
INSERT INTO `qy` VALUES ('17', 'Ma hóa khu vực', '249');
INSERT INTO `qy` VALUES ('18', 'Vạn thiên sơn vực', '260');
INSERT INTO `qy` VALUES ('20', 'Yêu vương điện', '267');
INSERT INTO `qy` VALUES ('21', 'Viêm dương thành', '272');
INSERT INTO `qy` VALUES ('22', 'Trung tâm mua sắm', '272');
INSERT INTO `qy` VALUES ('23', 'Quảng trường trung tâm', '272');
INSERT INTO `qy` VALUES ('24', 'Khu rèn luyện', '272');
INSERT INTO `qy` VALUES ('25', 'Thung lũng hoang dã', '272');
INSERT INTO `qy` VALUES ('26', 'Mỏ chất thải', '272');
INSERT INTO `qy` VALUES ('27', 'Bãi biển phía Nam', '272');
INSERT INTO `qy` VALUES ('28', 'Bên ngoài bãi biển phía Nam', '272');
INSERT INTO `qy` VALUES ('29', 'Hang động dã thú', '272');
INSERT INTO `qy` VALUES ('30', 'Mỏ bỏ hoang', '272');
INSERT INTO `qy` VALUES ('31', 'Đảo ước mơ', '272');
INSERT INTO `qy` VALUES ('32', 'Ngoại ô Đảo ước mơ', '272');
INSERT INTO `qy` VALUES ('33', 'Bên ngoài Đền Shige', '272');
INSERT INTO `qy` VALUES ('34', 'Bên trong Đền Shige', '272');
INSERT INTO `qy` VALUES ('35', 'Bên ngoài đền Woma', '272');
INSERT INTO `qy` VALUES ('36', 'Bên trong đền Woma', '272');
INSERT INTO `qy` VALUES ('37', 'Bên ngoài đền Zuma', '272');
INSERT INTO `qy` VALUES ('38', 'Bên trong đền Zuma', '272');
INSERT INTO `qy` VALUES ('39', 'Rừng cây', '272');
INSERT INTO `qy` VALUES ('40', 'Thung lũng Chết', '272');
INSERT INTO `qy` VALUES ('41', 'Vùng ngoại ô Rồng Quỷ', '272');
INSERT INTO `qy` VALUES ('42', 'Hang Kiến', '272');
INSERT INTO `qy` VALUES ('43', 'Đảo Panyu', '272');
INSERT INTO `qy` VALUES ('44', 'Thung Lũng Giun', '272');
INSERT INTO `qy` VALUES ('45', 'Thung lũng Wannian', '272');

-- ----------------------------
-- Table structure for renwu
-- ----------------------------
DROP TABLE IF EXISTS `renwu`;
CREATE TABLE `renwu` (
  `rwname` varchar(255) NOT NULL,
  `rwzl` int(11) NOT NULL,
  `rwdj` varchar(255) NOT NULL,
  `rwzb` varchar(255) NOT NULL,
  `rwexp` varchar(255) NOT NULL,
  `rwyxb` varchar(255) NOT NULL,
  `rwid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rwyq` int(11) NOT NULL,
  `rwinfo` varchar(255) NOT NULL,
  `rwcount` int(11) NOT NULL,
  `rwlx` int(255) NOT NULL,
  `rwyp` text NOT NULL,
  `lastrwid` int(11) NOT NULL,
  `rwjineng` varchar(255) NOT NULL,
  PRIMARY KEY (`rwid`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of renwu
-- ----------------------------
INSERT INTO `renwu` VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '13', '56', 'Tối cận sơn trư hạ sơn, nhiễu loạn liễu ngã môn đích sinh hoạt, thỉnh bang ngã môn cản bào tha môn', '5', '2', '6|3', '0', '');
INSERT INTO `renwu` VALUES ('Thu tập phong mật', '1', '1|5', '23', '200', '100', '14', '8', 'Thu tập ngạnh sí phong đích phong mật', '10', '2', '6|3', '0', '');
INSERT INTO `renwu` VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '19', '76', 'Ma đạo đối giá phiến đại địa thủy chung bất tử tâm, dụ hoặc liễu ngã môn ngận đa tộc nhân nhập ma liễu, hi vọng nhĩ năng cú giải cứu tha môn', '50', '1', '', '-1', '');
INSERT INTO `renwu` VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '20', '77', 'Ngã hảo phạ, bang ngã sát liễu tha môn! ! !', '50', '1', '', '-1', '');
INSERT INTO `renwu` VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '21', '82', 'Bộ lạc hiện tại khuyết thiểu đại lượng thú bì quá đông', '30', '2', '', '-1', '');
INSERT INTO `renwu` VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '25', '55', 'Ngạnh sí phong nhiễu', '20', '3', '', '-1', '');
INSERT INTO `renwu` VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '24', '11', 'Hoa vương đại mụ', '18', '3', '6|10', '25', '');
INSERT INTO `renwu` VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '28', '11', 'Cố nhân', '14', '1', '6|10', '-1', '');
INSERT INTO `renwu` VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '27', '12', 'Đồ tẫn yêu vương', '150', '1', '9|5', '-1', '');
INSERT INTO `renwu` VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '29', '62', 'Lang hoạn thành tai, bang bang ngã môn', '10', '3', '', '24', '');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `username` text,
  `userpass` text,
  `token` text
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('abc837932126', 'zzq229', '5e957390699be5a489b946a522480951');
INSERT INTO `userinfo` VALUES ('YourMotherBOOM', 's819122s', '4b88bef282a4169c5f980719f6f324c0');
INSERT INTO `userinfo` VALUES ('1271716477', '1271716477', '69e38acedaba6f4d9a0944e211e36f29');
INSERT INTO `userinfo` VALUES ('1915498868', '1542236297', '87f8e87109d981f3f161c43ea7b42189');
INSERT INTO `userinfo` VALUES ('12717164777', '1271716477', 'b6d21580c1c7811d68dd35d45600fd09');
INSERT INTO `userinfo` VALUES ('yyy123456', 'yyy123', 'f1649d9584c004a44ba1350164d27edf');
INSERT INTO `userinfo` VALUES ('16668888', '123456', '98b3f6fab6dde596afb2ae0c47b39531');
INSERT INTO `userinfo` VALUES ('eto258159', 'zaw258159', '7c94757e2a45dacae0e888442da982b5');
INSERT INTO `userinfo` VALUES ('1666888', '123456', 'c508c53d00f8fcd0f39e3d2f858d2383');
INSERT INTO `userinfo` VALUES ('1250189', '123456', 'dccd00acbf6308d1eab462bcf9972ba1');
INSERT INTO `userinfo` VALUES ('niubie', 'niubie', 'd5cff8630f39f71e7ec544249084b884');
INSERT INTO `userinfo` VALUES ('710942034', '333ypc', 'd64870bce6d7d20e4a357e9618e67f6a');
INSERT INTO `userinfo` VALUES ('xu464720', 'xu1234', 'ee2ab04d5e49a7d6c7e878f1e8eeb4e7');
INSERT INTO `userinfo` VALUES ('111111', '111111', '0457f756ac8208d9da6fa2e4f432d7d0');
INSERT INTO `userinfo` VALUES ('weeeee', 'qwertasdfg', '5a5248decb098173bbb8d3ea930cec57');
INSERT INTO `userinfo` VALUES ('cjg199618', '254893', '9b7a95672ac9a1691085ef9e329dac2e');
INSERT INTO `userinfo` VALUES ('xxxxxx', 'uuuuuu', 'a8fcf8584ee2947bd79649d6eb30104b');
INSERT INTO `userinfo` VALUES ('huagui', '199618', '5b5dabca397f9ad206ae516f2a9e8d8c');
INSERT INTO `userinfo` VALUES ('uuuuuu', 'xxxxxx', '7843e60906c6513f94bc9fc97236ea97');
INSERT INTO `userinfo` VALUES ('eeeeee', '111111', '0f8572ed68430a1b6ac13d4ee2bf93f4');
INSERT INTO `userinfo` VALUES ('2783599178', '233666', '7dda1d028412c6fcb9c2afb1510152b3');
INSERT INTO `userinfo` VALUES ('1041604633', '61339557656', 'f2b2094a95d316f8d7a552f4cf3d75fe');
INSERT INTO `userinfo` VALUES ('1209133343', '3331234435', 'f2351f790fadec16742d905e246bfa71');
INSERT INTO `userinfo` VALUES ('13511643472', '233666', '2b755b4ea9f3cd34f5b80db286628764');
INSERT INTO `userinfo` VALUES ('hahaha', '123456', '868ac3606d3fe0e98b748b17dd624fa9');
INSERT INTO `userinfo` VALUES ('liu2521533', '111111', '392e801e88183e1001e949d870b2a6f3');
INSERT INTO `userinfo` VALUES ('1265558010', 'yanan123', '29045222da73fb9782ba587872fabe46');
INSERT INTO `userinfo` VALUES ('123456', '123456', '3e096ced657944ff66bbdfc30d059f2a');
INSERT INTO `userinfo` VALUES ('asdfgh', '1234567', 'a38573d6bd430a396762778c2a57a3f5');
INSERT INTO `userinfo` VALUES ('13777659292', '112233', '267ed415573736c86d3346f251b3e520');
INSERT INTO `userinfo` VALUES ('abc123321', '1234567', '87c15964d286a26de34a6f4019ba6705');
INSERT INTO `userinfo` VALUES ('1545445717', 'a1545445716', 'f554e88102cb7c51daa99fbfb00c3e9d');
INSERT INTO `userinfo` VALUES ('zs3718140', '123456', '6d50828b4238b267d3a5bf44a5123dc6');
INSERT INTO `userinfo` VALUES ('wangjie123456', '654321', '082e250dca21694791c00e681018bec4');
INSERT INTO `userinfo` VALUES ('1054114709', '159357', 'e861f921ea384970fa7d8a631ad970b0');
INSERT INTO `userinfo` VALUES ('a61124012', '123123', 'ae838e961d88c52fb24a2211cd8df9d3');
INSERT INTO `userinfo` VALUES ('drrream', '201123', 'b321da01f057955f92a83371075f205b');
INSERT INTO `userinfo` VALUES ('444444', '444444', '8eb877c767d0923e0864ceda7da22d53');
INSERT INTO `userinfo` VALUES ('325ice', 'woailuo', '1a78ea55d84b740f42a3efce9ed5e007');
INSERT INTO `userinfo` VALUES ('bbbaaa', 'aaaaaa', 'c02cb4450e03cd0e0c03e13c0bf00aab');
INSERT INTO `userinfo` VALUES ('5w4t54te', '5w4t54te', 'f76ef3699652871251c89b5daa1567a4');
INSERT INTO `userinfo` VALUES ('18915345067', 'wzywenziye724', '48da7c96f39f0138234030c804d33ff2');
INSERT INTO `userinfo` VALUES ('cs3230524', 'cs2231808', '15c1bb95e92c5ba671b98701e2556304');
INSERT INTO `userinfo` VALUES ('瞎逼逼', '352314693', '7688935d61a9f93e118148ef538c5cdf');
INSERT INTO `userinfo` VALUES ('1455182178', '123456000', 'b99a2d628f747ce11cee67c0a778a313');
INSERT INTO `userinfo` VALUES ('89283578', 'wszw5499', '08323357072c9f5d3f9daba4d9160ec9');
INSERT INTO `userinfo` VALUES ('15218904755', '5201314', '93b2ceb1e895525d1700a1b7da60a711');
INSERT INTO `userinfo` VALUES ('978675771', 'yyh978', '0d320ad25e1c29a8ce1223212582814f');
INSERT INTO `userinfo` VALUES ('j5124343', '61339557656', '424c1ee752e07eae30db59eb93b0e793');
INSERT INTO `userinfo` VALUES ('123456789', '61339557656', '67a5407f3bd067f3259a2a65bdd52113');
INSERT INTO `userinfo` VALUES ('987654321', '61339557656', 'f991439686643ce5b1d0fc0a872e3660');
INSERT INTO `userinfo` VALUES ('135781012', '61339557656', '79c7b27b535b0f172f9d0a6d2cb4ed38');
INSERT INTO `userinfo` VALUES ('321654987', '61339557656', 'ceb90aa43625658e02b37e5262319a83');
INSERT INTO `userinfo` VALUES ('asdfghjkl', '61339557656', '0e5f92407cd53a7187bb4a9dbc480cc5');
INSERT INTO `userinfo` VALUES ('qwertyuiop', '61339557656', '9b0ae73594eee043ba27787e570dba38');
INSERT INTO `userinfo` VALUES ('zxcvbnm', '61339557656', 'b53becb04649ff45ad85775bab3cc36b');
INSERT INTO `userinfo` VALUES ('liangzhuonan', '61339557656', '16987553a705e9d2a1ed9a6e3b9900e1');
INSERT INTO `userinfo` VALUES ('liangshi', '61339557656', 'cc72c71386871c352079e12210e7777b');
INSERT INTO `userinfo` VALUES ('dianmiao', '61339557656', '42a85d9370a75a565b2b818eedd0633f');
INSERT INTO `userinfo` VALUES ('nigebichi', '61339557656', 'e9e8704fefec8fd1d952051d1f555f98');
INSERT INTO `userinfo` VALUES ('leidabudong', '61339557656', 'd83aae370b73004b9b76aba715c7acd9');
INSERT INTO `userinfo` VALUES ('jipinlingshi', '61339557656', 'f34082a434aeb8ea871793819e141f43');
INSERT INTO `userinfo` VALUES ('huajianzang', '61339557656', '5e43532d3bacb52519bffb544b84a3b9');
INSERT INTO `userinfo` VALUES ('leijing', '61339557656', '788d14d8963f492e39a85bf8ecdd52e7');
INSERT INTO `userinfo` VALUES ('yijianlian', '61339557656', '1f366fe6a264e9adf9bc76bfb33c8298');
INSERT INTO `userinfo` VALUES ('85674688', '1999421', '9d7cd9a310d5970ab345abcb6c40137a');
INSERT INTO `userinfo` VALUES ('86574688A', '1999421', '798951873896caab5c98b77d4f008862');
INSERT INTO `userinfo` VALUES ('205273565', 'q3588563', '6edf5a4d7e3d380b8286e51d8695240c');
INSERT INTO `userinfo` VALUES ('86574688', '1999421', 'f005c160bf7e515eb9967c2c74b9b10a');
INSERT INTO `userinfo` VALUES ('linsoft', '123456', '8124fdc27f2a79e6f871ec6064920de8');
INSERT INTO `userinfo` VALUES ('23333333333333', '123321', '3af46cc8e2d77585d2a76e62ee3fb7a4');
INSERT INTO `userinfo` VALUES ('123321', '123321', '4db2ef7c070ce3be4bb5972ea261298f');
INSERT INTO `userinfo` VALUES ('770325272', '770325272', '769ceaffc8b1dc661597da0282628340');
INSERT INTO `userinfo` VALUES ('1928517106', '770019299eee', '92fe7382f72a6cc9a9c14e218a124c3d');
INSERT INTO `userinfo` VALUES ('q123456', 'q123456', '165948a212eba800ba9be7f0a281916d');
INSERT INTO `userinfo` VALUES ('半瓶神仙醋', 'wei760825311wei', '05423485f5c6b18c97b2e89e537c5cc2');
INSERT INTO `userinfo` VALUES ('666666666', '666666', '75a37f21fbf987ac3023b0a3dd95eed8');
INSERT INTO `userinfo` VALUES ('koow763614984', '123123', 'fc3c996aa3fc468745882e4d6bc55ac8');
INSERT INTO `userinfo` VALUES ('819769328', '819769328', '9e258680fc52af4887b54b3e5efa8210');
INSERT INTO `userinfo` VALUES ('qqwert', '1232123', '91f8ffbb263713f6969b489f3b1ee355');
INSERT INTO `userinfo` VALUES ('宁宁', '13967810490', 'bd326fa3658ab87708b6ff4be9547407');
INSERT INTO `userinfo` VALUES ('http://121.42.197.43/', 'http://121.42.197.43/', 'c164b9838f550c5bba49c3aba87df54f');
INSERT INTO `userinfo` VALUES ('index.php', 'index.php', '70a033a1669b8b19707e9dc12cf699f9');
INSERT INTO `userinfo` VALUES ('aaaaaaa', 'aaaaaaa', '89defce711c850804269f99337badd50');
INSERT INTO `userinfo` VALUES ('1048548080', 'ggbggb', '25b7b362c176783d5365e30a37427bb8');
INSERT INTO `userinfo` VALUES ('zhq19881022', 'z19881022', '97cf9304672b8c36bcd10a1cbe010c49');
INSERT INTO `userinfo` VALUES ('fuheiyanjingshe', '1301303', '5a49329d0f4cee494e377ac11350b28b');
INSERT INTO `userinfo` VALUES ('zitaoikcye', 'zitaoikcye', '8307b852839ff6be183ffa78a74920af');
INSERT INTO `userinfo` VALUES ('abc8379', 'zzq229', '1208716e3a1ceabdba921d6b15511975');
INSERT INTO `userinfo` VALUES ('yosemite', '123123', '1439529dbb71319409aff44f86bf08c5');
INSERT INTO `userinfo` VALUES ('yang1234', '123456', '89f2b25387611c9b467d46ad851acf48');
INSERT INTO `userinfo` VALUES ('md123456', 'md123456', '813e6e0358a0f30227e2acdc6ca9c2be');
INSERT INTO `userinfo` VALUES ('1663433965', '6897632436', 'e6436241096aab70186936c60748d499');
INSERT INTO `userinfo` VALUES ('wnh964', 'wnhwnhsds', '83cb0e966edf86a29cf5aaca02e07f9d');
INSERT INTO `userinfo` VALUES ('204643441', 'yjmily21', 'dcc475aba47251e543a2ff6ce031643a');
INSERT INTO `userinfo` VALUES ('hoodhopelin123', 'games@hood.com', '1a52dfaca0d02d88e9a5722bc55a1c54');
INSERT INTO `userinfo` VALUES ('15811187781', '1928517106eee', 'aba5a4adc0e3bc7f94051bf1504468f5');
INSERT INTO `userinfo` VALUES ('星辰', 'gudao15333', '7eff274ed167595dc8b8eb4097f2c2cf');
INSERT INTO `userinfo` VALUES ('457482471', '666666', 'd9beb5748b38f405039a0fe6e924fe45');
INSERT INTO `userinfo` VALUES ('glasseye', 'loveyou228', 'c589878e0b29e165452491a6b6aa3489');
INSERT INTO `userinfo` VALUES ('kakb818', '3319247', 'de07e73c3c6d0486ae3c40425724f671');
INSERT INTO `userinfo` VALUES ('qeqeqqqqqq', 'qqqqqq', 'c115d1b82d35c15478ba12a9871f8dfc');
INSERT INTO `userinfo` VALUES ('453521', '453520', 'e37b4bd21958bfc226f7c7acbcaa59f0');
INSERT INTO `userinfo` VALUES ('o123456789', '232356', '7a3f0a2c0aff973e011bdd9e416a735f');
INSERT INTO `userinfo` VALUES ('1151223116', '1151223116', 'd59d1172c186816e44e2709501932f5c');
INSERT INTO `userinfo` VALUES ('2875587647', '1234567', '77d27871c06d75e4083bb2802bade9a9');
INSERT INTO `userinfo` VALUES ('2570368303', '123456', '34651c934e918b33fe3f9303bd23b0c5');
INSERT INTO `userinfo` VALUES ('2977404260', '123456789', '4367784356b95082004c3d56bb4fd91a');
INSERT INTO `userinfo` VALUES ('1097684180', 'wangs1234', '45ac67975b73923ba28eff5d0d037e88');
INSERT INTO `userinfo` VALUES ('2803026965', '15850968690', 'aa291e5c1d6c56e564bed74b5a7baf65');
INSERT INTO `userinfo` VALUES ('567890', '111111', 'dd72c5fb910fe1162cb8f92a17b3546b');
INSERT INTO `userinfo` VALUES ('yi5752', 'yi5752162', '01fd1e0856a6635d955c31d0115606c1');
INSERT INTO `userinfo` VALUES ('5678901', '1111111', '62d7eadcb644eb171aa9d39969465e4c');
INSERT INTO `userinfo` VALUES ('56789012', '1111111', '1874e0b5e152820c0b67769648608afc');
INSERT INTO `userinfo` VALUES ('1035226874', '87654321', 'd7fe1c3e19b0a7b9e57dd5be51acba52');
INSERT INTO `userinfo` VALUES ('z5128442', '111111', '94665eb922234025ceea22db8b2d6fb9');
INSERT INTO `userinfo` VALUES ('z51284421', '111111', '3a277f1eb3acfa1412936be55d881f54');
INSERT INTO `userinfo` VALUES ('z51284422', '111111', '14ab2accfba8493fd9e966f65acd6924');
INSERT INTO `userinfo` VALUES ('2729842103', '000000000', '8c3589673a9b455c75dfa8f84b73c1a7');
INSERT INTO `userinfo` VALUES ('2250630365', '123456789', 'f8916af2a167370a15a9bdfb11e0c5c3');
INSERT INTO `userinfo` VALUES ('129324501', '1984357986', 'f58ca5771082595f53819021e41534a7');
INSERT INTO `userinfo` VALUES ('怪你入戏太深° ', 'yjxwoshiyindage', 'b17265ae61cecbc2734a953a8a5e91fb');
INSERT INTO `userinfo` VALUES ('811986590', 'a1994123', 'f1e98eefae129018dc728e27560c3a8b');
INSERT INTO `userinfo` VALUES ('abc2902153217', '123456', 'eb859a5144f1a9221c85ce2fed7cc296');
INSERT INTO `userinfo` VALUES ('2902153217', '555555', '3bd8bda9ec9ae388ac6b8cf853a6b0fc');
INSERT INTO `userinfo` VALUES ('2643521720', 'chen5201314.', 'e66aa48378e646e6f1e952eb1a6e36b1');
INSERT INTO `userinfo` VALUES ('533521', '533521', '3a162b4cefc4ff3655e1830bda953576');
INSERT INTO `userinfo` VALUES ('ia670470664', '8513771', '47d70ff24778d60dd1d528d355f18243');
INSERT INTO `userinfo` VALUES ('gudaotian', 'EFGGGOOD', '198d61c1a7f639d7fb26bf498e4a7ff5');
INSERT INTO `userinfo` VALUES ('辅导员', 'efgg15333', '82ab3cec35710e73cb57a4512cdd20c7');
INSERT INTO `userinfo` VALUES ('古道', 'efgg15333', '5e6b36602ba713d6ff9e17e8702ae9d8');
INSERT INTO `userinfo` VALUES ('774508', '774508', '37ac8b7cc8f71c6383f72538c0d33f53');
INSERT INTO `userinfo` VALUES ('cdf999', '111111', 'af89fb352b7f7fc4ed4cd68a562c0573');
INSERT INTO `userinfo` VALUES ('y461796452', 'f461796452', '1675b1c9a6394cc2f699ebae3db5ee7f');
INSERT INTO `userinfo` VALUES ('87654321', '12345678', '3c0516fdc5c38119e9d3a64fe563e543');
INSERT INTO `userinfo` VALUES ('qweqwe', 'qweqwe', 'a31e735487b64d02a070098dd52ed0dd');
INSERT INTO `userinfo` VALUES ('bingshi', '210585', 'cef08e184be356c9a29c96227bfc5e82');
INSERT INTO `userinfo` VALUES ('linbei003', 'linbei003', '7c74486aac07e72c73e40a4af553fdad');
INSERT INTO `userinfo` VALUES ('test123', 'test123', '75cb838ed90b1d93c3a6b6a62e0cc5fb');
INSERT INTO `userinfo` VALUES ('zjsmzhq', 'zjsmzhq', '5200d24260152a80fb6aecd14481f7fa');
INSERT INTO `userinfo` VALUES ('binglong12', 'wangziquan', '055b559be237d5a8e6d901b927bea5ec');
INSERT INTO `userinfo` VALUES ('1qweqwe', 'Aa123123', 'ae43278211f0185f3a8e5ee9a1a27ef9');
INSERT INTO `userinfo` VALUES ('aiwenaidan', 'aiwenaidan999', '7e13f649642331458114e979170a00d1');
INSERT INTO `userinfo` VALUES ('1234568', '222222', '72525ad2f4491207dda26ab5e7e5a062');
INSERT INTO `userinfo` VALUES ('111222', '111222', 'ff51c8d135ed761190d7e912c3d2c11a');
INSERT INTO `userinfo` VALUES ('孤岛', '1533396', 'c8f024d1496d77eda1f699d8cbca7792');
INSERT INTO `userinfo` VALUES ('1337433463', '05060212M', 'ab80e91531272ff0997fa1c325760e2a');
INSERT INTO `userinfo` VALUES ('123456789z', '654321', 'adafc2f53d3720e8995108d412c4fc35');
INSERT INTO `userinfo` VALUES ('1969928633', '654321', '2fc7f1fe8bca86103e8b6d43adc05ae2');
INSERT INTO `userinfo` VALUES ('1771206859', '124578', 'd0ac22f1cef09342c5fc9f042eadebe3');
INSERT INTO `userinfo` VALUES ('2662694840', '999111222', 'ac3e5adf7d0e79be7896202e3dab78d3');
INSERT INTO `userinfo` VALUES ('1234560', '1234560', '2a9a4fe21d1ad97cb9332db57046a141');
INSERT INTO `userinfo` VALUES ('863756430', '123456', '42c1bd4a4cf2cd1c9b75f1e12716a5dd');
INSERT INTO `userinfo` VALUES ('风遥', '1234567', '00a0c1920eb8864b355c3650bc0b699a');
INSERT INTO `userinfo` VALUES ('a616909678', 'ch19950202', '2d307ab463aec2b6e8c809d8d8535107');
INSERT INTO `userinfo` VALUES ('abc7777', 'zzq229', '4c33599a414dd95f7ef15bf525105cda');
INSERT INTO `userinfo` VALUES ('红尘眷恋', 'long@123', '33928791763a66d71e7efe966aee2729');
INSERT INTO `userinfo` VALUES ('as123456', 'as12345', '7fb690dc08d7791ee464cecad6e728d9');
INSERT INTO `userinfo` VALUES ('李迩芦', '19840927', '0aec8176b7498322c9536b782fcd4a51');
INSERT INTO `userinfo` VALUES ('白秋', 'qgjx1212', 'd847bc33ef1e39ede1eda873d704cb1a');
INSERT INTO `userinfo` VALUES ('541420514', '2318768', '216c8e1940050708a9e88c217dec46bb');
INSERT INTO `userinfo` VALUES ('shuyan', 'xht9109', 'ce87dcdacb921bdbbee6d27ccdd1a1d6');
INSERT INTO `userinfo` VALUES ('hehehe', '9518520', 'c442c3f71609edbc97a16818ac7675d1');
INSERT INTO `userinfo` VALUES ('1112223338', '123654789', '7fd66b9135614055df24d4fb4d95aead');
INSERT INTO `userinfo` VALUES ('abctest', 'abctest', '12175fdd4a028538b06343b3e053e809');
INSERT INTO `userinfo` VALUES ('道长', '123456', 'e8f07fd9dd9747eb7061440ea1f95577');
INSERT INTO `userinfo` VALUES ('道长1', '123456', '634a3ef9c704b392f57961fe7f5b8dea');
INSERT INTO `userinfo` VALUES ('xing030411', '030411kjk', '044ca22581d263964fd0158282fadb42');
INSERT INTO `userinfo` VALUES ('123456799', '123456789', '849e353e7d5ea864cdaac5915801bc75');
INSERT INTO `userinfo` VALUES ('123123', '123456', '3523574420f1cad4018e802180ae440c');
INSERT INTO `userinfo` VALUES ('982162639', 'www456789', '6b95038f4e35e4c204cd63c4291f47dc');
INSERT INTO `userinfo` VALUES ('1098933710', 'A123459', 'c911094e95590dda0b8a0813dca6f27f');
INSERT INTO `userinfo` VALUES ('abcd123', 'abcd123', 'a3f9ecbb5e8f608ebbf0416a51004bc7');
INSERT INTO `userinfo` VALUES ('whytdl', '919926256', 'b9066cad96a2d83cc94596bbb09e763c');
INSERT INTO `userinfo` VALUES ('abcdefg', '123456789', '0bcbf80f605a7a4b32629e5080292a39');
INSERT INTO `userinfo` VALUES ('黑猫', 'heimao', '5bcf6db33b57444bec34f05cf5fab6e8');
INSERT INTO `userinfo` VALUES ('2331292718', '895207', 'a5318beda844395277cc8ca528f9cd16');
INSERT INTO `userinfo` VALUES ('道长2', '123456', '0244846e79462dd7f89732301276bd56');
INSERT INTO `userinfo` VALUES ('1234567', '7777777', 'db7d71820512cabea82d964fb062e143');
INSERT INTO `userinfo` VALUES ('q76891828', 'q76891828', 'd9ffd17ec312dd7d906d3d0bd09e9c33');
INSERT INTO `userinfo` VALUES ('juhuaguai', '123456', '567e3d19771392bddf87d647b1c79370');
INSERT INTO `userinfo` VALUES ('a1314520', 'a1314520', 'abec8758f4bb1bf557b0189d4e0ab5c6');
INSERT INTO `userinfo` VALUES ('a456456', '456456', '6f0a298234aa18874f0a855454ef359f');
INSERT INTO `userinfo` VALUES ('nhokkokhoc', 'haiyen', '6c6d4c14f98475ec90384718cdfa00a7');
INSERT INTO `userinfo` VALUES ('nhokyeuem', 'haiyen', '36451f0c0f91f9fb44becff88f3a1b9a');
INSERT INTO `userinfo` VALUES ('abc837932126', 'zzq229', '5e957390699be5a489b946a522480951');
INSERT INTO `userinfo` VALUES ('YourMotherBOOM', 's819122s', '4b88bef282a4169c5f980719f6f324c0');
INSERT INTO `userinfo` VALUES ('1271716477', '1271716477', '69e38acedaba6f4d9a0944e211e36f29');
INSERT INTO `userinfo` VALUES ('1915498868', '1542236297', '87f8e87109d981f3f161c43ea7b42189');
INSERT INTO `userinfo` VALUES ('12717164777', '1271716477', 'b6d21580c1c7811d68dd35d45600fd09');
INSERT INTO `userinfo` VALUES ('yyy123456', 'yyy123', 'f1649d9584c004a44ba1350164d27edf');
INSERT INTO `userinfo` VALUES ('16668888', '123456', '98b3f6fab6dde596afb2ae0c47b39531');
INSERT INTO `userinfo` VALUES ('eto258159', 'zaw258159', '7c94757e2a45dacae0e888442da982b5');
INSERT INTO `userinfo` VALUES ('1666888', '123456', 'c508c53d00f8fcd0f39e3d2f858d2383');
INSERT INTO `userinfo` VALUES ('1250189', '123456', 'dccd00acbf6308d1eab462bcf9972ba1');
INSERT INTO `userinfo` VALUES ('niubie', 'niubie', 'd5cff8630f39f71e7ec544249084b884');
INSERT INTO `userinfo` VALUES ('710942034', '333ypc', 'd64870bce6d7d20e4a357e9618e67f6a');
INSERT INTO `userinfo` VALUES ('xu464720', 'xu1234', 'ee2ab04d5e49a7d6c7e878f1e8eeb4e7');
INSERT INTO `userinfo` VALUES ('111111', '111111', '0457f756ac8208d9da6fa2e4f432d7d0');
INSERT INTO `userinfo` VALUES ('weeeee', 'qwertasdfg', '5a5248decb098173bbb8d3ea930cec57');
INSERT INTO `userinfo` VALUES ('cjg199618', '254893', '9b7a95672ac9a1691085ef9e329dac2e');
INSERT INTO `userinfo` VALUES ('xxxxxx', 'uuuuuu', 'a8fcf8584ee2947bd79649d6eb30104b');
INSERT INTO `userinfo` VALUES ('huagui', '199618', '5b5dabca397f9ad206ae516f2a9e8d8c');
INSERT INTO `userinfo` VALUES ('uuuuuu', 'xxxxxx', '7843e60906c6513f94bc9fc97236ea97');
INSERT INTO `userinfo` VALUES ('eeeeee', '111111', '0f8572ed68430a1b6ac13d4ee2bf93f4');
INSERT INTO `userinfo` VALUES ('2783599178', '233666', '7dda1d028412c6fcb9c2afb1510152b3');
INSERT INTO `userinfo` VALUES ('1041604633', '61339557656', 'f2b2094a95d316f8d7a552f4cf3d75fe');
INSERT INTO `userinfo` VALUES ('1209133343', '3331234435', 'f2351f790fadec16742d905e246bfa71');
INSERT INTO `userinfo` VALUES ('13511643472', '233666', '2b755b4ea9f3cd34f5b80db286628764');
INSERT INTO `userinfo` VALUES ('hahaha', '123456', '868ac3606d3fe0e98b748b17dd624fa9');
INSERT INTO `userinfo` VALUES ('liu2521533', '111111', '392e801e88183e1001e949d870b2a6f3');
INSERT INTO `userinfo` VALUES ('1265558010', 'yanan123', '29045222da73fb9782ba587872fabe46');
INSERT INTO `userinfo` VALUES ('123456', '123456', '3e096ced657944ff66bbdfc30d059f2a');
INSERT INTO `userinfo` VALUES ('asdfgh', '1234567', 'a38573d6bd430a396762778c2a57a3f5');
INSERT INTO `userinfo` VALUES ('13777659292', '112233', '267ed415573736c86d3346f251b3e520');
INSERT INTO `userinfo` VALUES ('abc123321', '1234567', '87c15964d286a26de34a6f4019ba6705');
INSERT INTO `userinfo` VALUES ('1545445717', 'a1545445716', 'f554e88102cb7c51daa99fbfb00c3e9d');
INSERT INTO `userinfo` VALUES ('zs3718140', '123456', '6d50828b4238b267d3a5bf44a5123dc6');
INSERT INTO `userinfo` VALUES ('wangjie123456', '654321', '082e250dca21694791c00e681018bec4');
INSERT INTO `userinfo` VALUES ('1054114709', '159357', 'e861f921ea384970fa7d8a631ad970b0');
INSERT INTO `userinfo` VALUES ('a61124012', '123123', 'ae838e961d88c52fb24a2211cd8df9d3');
INSERT INTO `userinfo` VALUES ('drrream', '201123', 'b321da01f057955f92a83371075f205b');
INSERT INTO `userinfo` VALUES ('444444', '444444', '8eb877c767d0923e0864ceda7da22d53');
INSERT INTO `userinfo` VALUES ('325ice', 'woailuo', '1a78ea55d84b740f42a3efce9ed5e007');
INSERT INTO `userinfo` VALUES ('bbbaaa', 'aaaaaa', 'c02cb4450e03cd0e0c03e13c0bf00aab');
INSERT INTO `userinfo` VALUES ('5w4t54te', '5w4t54te', 'f76ef3699652871251c89b5daa1567a4');
INSERT INTO `userinfo` VALUES ('18915345067', 'wzywenziye724', '48da7c96f39f0138234030c804d33ff2');
INSERT INTO `userinfo` VALUES ('cs3230524', 'cs2231808', '15c1bb95e92c5ba671b98701e2556304');
INSERT INTO `userinfo` VALUES ('瞎逼逼', '352314693', '7688935d61a9f93e118148ef538c5cdf');
INSERT INTO `userinfo` VALUES ('1455182178', '123456000', 'b99a2d628f747ce11cee67c0a778a313');
INSERT INTO `userinfo` VALUES ('89283578', 'wszw5499', '08323357072c9f5d3f9daba4d9160ec9');
INSERT INTO `userinfo` VALUES ('15218904755', '5201314', '93b2ceb1e895525d1700a1b7da60a711');
INSERT INTO `userinfo` VALUES ('978675771', 'yyh978', '0d320ad25e1c29a8ce1223212582814f');
INSERT INTO `userinfo` VALUES ('j5124343', '61339557656', '424c1ee752e07eae30db59eb93b0e793');
INSERT INTO `userinfo` VALUES ('123456789', '61339557656', '67a5407f3bd067f3259a2a65bdd52113');
INSERT INTO `userinfo` VALUES ('987654321', '61339557656', 'f991439686643ce5b1d0fc0a872e3660');
INSERT INTO `userinfo` VALUES ('135781012', '61339557656', '79c7b27b535b0f172f9d0a6d2cb4ed38');
INSERT INTO `userinfo` VALUES ('321654987', '61339557656', 'ceb90aa43625658e02b37e5262319a83');
INSERT INTO `userinfo` VALUES ('asdfghjkl', '61339557656', '0e5f92407cd53a7187bb4a9dbc480cc5');
INSERT INTO `userinfo` VALUES ('qwertyuiop', '61339557656', '9b0ae73594eee043ba27787e570dba38');
INSERT INTO `userinfo` VALUES ('zxcvbnm', '61339557656', 'b53becb04649ff45ad85775bab3cc36b');
INSERT INTO `userinfo` VALUES ('liangzhuonan', '61339557656', '16987553a705e9d2a1ed9a6e3b9900e1');
INSERT INTO `userinfo` VALUES ('liangshi', '61339557656', 'cc72c71386871c352079e12210e7777b');
INSERT INTO `userinfo` VALUES ('dianmiao', '61339557656', '42a85d9370a75a565b2b818eedd0633f');
INSERT INTO `userinfo` VALUES ('nigebichi', '61339557656', 'e9e8704fefec8fd1d952051d1f555f98');
INSERT INTO `userinfo` VALUES ('leidabudong', '61339557656', 'd83aae370b73004b9b76aba715c7acd9');
INSERT INTO `userinfo` VALUES ('jipinlingshi', '61339557656', 'f34082a434aeb8ea871793819e141f43');
INSERT INTO `userinfo` VALUES ('huajianzang', '61339557656', '5e43532d3bacb52519bffb544b84a3b9');
INSERT INTO `userinfo` VALUES ('leijing', '61339557656', '788d14d8963f492e39a85bf8ecdd52e7');
INSERT INTO `userinfo` VALUES ('yijianlian', '61339557656', '1f366fe6a264e9adf9bc76bfb33c8298');
INSERT INTO `userinfo` VALUES ('85674688', '1999421', '9d7cd9a310d5970ab345abcb6c40137a');
INSERT INTO `userinfo` VALUES ('86574688A', '1999421', '798951873896caab5c98b77d4f008862');
INSERT INTO `userinfo` VALUES ('205273565', 'q3588563', '6edf5a4d7e3d380b8286e51d8695240c');
INSERT INTO `userinfo` VALUES ('86574688', '1999421', 'f005c160bf7e515eb9967c2c74b9b10a');
INSERT INTO `userinfo` VALUES ('linsoft', '123456', '8124fdc27f2a79e6f871ec6064920de8');
INSERT INTO `userinfo` VALUES ('23333333333333', '123321', '3af46cc8e2d77585d2a76e62ee3fb7a4');
INSERT INTO `userinfo` VALUES ('123321', '123321', '4db2ef7c070ce3be4bb5972ea261298f');
INSERT INTO `userinfo` VALUES ('770325272', '770325272', '769ceaffc8b1dc661597da0282628340');
INSERT INTO `userinfo` VALUES ('1928517106', '770019299eee', '92fe7382f72a6cc9a9c14e218a124c3d');
INSERT INTO `userinfo` VALUES ('q123456', 'q123456', '165948a212eba800ba9be7f0a281916d');
INSERT INTO `userinfo` VALUES ('半瓶神仙醋', 'wei760825311wei', '05423485f5c6b18c97b2e89e537c5cc2');
INSERT INTO `userinfo` VALUES ('666666666', '666666', '75a37f21fbf987ac3023b0a3dd95eed8');
INSERT INTO `userinfo` VALUES ('koow763614984', '123123', 'fc3c996aa3fc468745882e4d6bc55ac8');
INSERT INTO `userinfo` VALUES ('819769328', '819769328', '9e258680fc52af4887b54b3e5efa8210');
INSERT INTO `userinfo` VALUES ('qqwert', '1232123', '91f8ffbb263713f6969b489f3b1ee355');
INSERT INTO `userinfo` VALUES ('宁宁', '13967810490', 'bd326fa3658ab87708b6ff4be9547407');
INSERT INTO `userinfo` VALUES ('http://121.42.197.43/', 'http://121.42.197.43/', 'c164b9838f550c5bba49c3aba87df54f');
INSERT INTO `userinfo` VALUES ('index.php', 'index.php', '70a033a1669b8b19707e9dc12cf699f9');
INSERT INTO `userinfo` VALUES ('aaaaaaa', 'aaaaaaa', '89defce711c850804269f99337badd50');
INSERT INTO `userinfo` VALUES ('1048548080', 'ggbggb', '25b7b362c176783d5365e30a37427bb8');
INSERT INTO `userinfo` VALUES ('zhq19881022', 'z19881022', '97cf9304672b8c36bcd10a1cbe010c49');
INSERT INTO `userinfo` VALUES ('fuheiyanjingshe', '1301303', '5a49329d0f4cee494e377ac11350b28b');
INSERT INTO `userinfo` VALUES ('zitaoikcye', 'zitaoikcye', '8307b852839ff6be183ffa78a74920af');
INSERT INTO `userinfo` VALUES ('abc8379', 'zzq229', '1208716e3a1ceabdba921d6b15511975');
INSERT INTO `userinfo` VALUES ('yosemite', '123123', '1439529dbb71319409aff44f86bf08c5');
INSERT INTO `userinfo` VALUES ('yang1234', '123456', '89f2b25387611c9b467d46ad851acf48');
INSERT INTO `userinfo` VALUES ('md123456', 'md123456', '813e6e0358a0f30227e2acdc6ca9c2be');
INSERT INTO `userinfo` VALUES ('1663433965', '6897632436', 'e6436241096aab70186936c60748d499');
INSERT INTO `userinfo` VALUES ('wnh964', 'wnhwnhsds', '83cb0e966edf86a29cf5aaca02e07f9d');
INSERT INTO `userinfo` VALUES ('204643441', 'yjmily21', 'dcc475aba47251e543a2ff6ce031643a');
INSERT INTO `userinfo` VALUES ('hoodhopelin123', 'games@hood.com', '1a52dfaca0d02d88e9a5722bc55a1c54');
INSERT INTO `userinfo` VALUES ('15811187781', '1928517106eee', 'aba5a4adc0e3bc7f94051bf1504468f5');
INSERT INTO `userinfo` VALUES ('星辰', 'gudao15333', '7eff274ed167595dc8b8eb4097f2c2cf');
INSERT INTO `userinfo` VALUES ('457482471', '666666', 'd9beb5748b38f405039a0fe6e924fe45');
INSERT INTO `userinfo` VALUES ('glasseye', 'loveyou228', 'c589878e0b29e165452491a6b6aa3489');
INSERT INTO `userinfo` VALUES ('kakb818', '3319247', 'de07e73c3c6d0486ae3c40425724f671');
INSERT INTO `userinfo` VALUES ('qeqeqqqqqq', 'qqqqqq', 'c115d1b82d35c15478ba12a9871f8dfc');
INSERT INTO `userinfo` VALUES ('453521', '453520', 'e37b4bd21958bfc226f7c7acbcaa59f0');
INSERT INTO `userinfo` VALUES ('o123456789', '232356', '7a3f0a2c0aff973e011bdd9e416a735f');
INSERT INTO `userinfo` VALUES ('1151223116', '1151223116', 'd59d1172c186816e44e2709501932f5c');
INSERT INTO `userinfo` VALUES ('2875587647', '1234567', '77d27871c06d75e4083bb2802bade9a9');
INSERT INTO `userinfo` VALUES ('2570368303', '123456', '34651c934e918b33fe3f9303bd23b0c5');
INSERT INTO `userinfo` VALUES ('2977404260', '123456789', '4367784356b95082004c3d56bb4fd91a');
INSERT INTO `userinfo` VALUES ('1097684180', 'wangs1234', '45ac67975b73923ba28eff5d0d037e88');
INSERT INTO `userinfo` VALUES ('2803026965', '15850968690', 'aa291e5c1d6c56e564bed74b5a7baf65');
INSERT INTO `userinfo` VALUES ('567890', '111111', 'dd72c5fb910fe1162cb8f92a17b3546b');
INSERT INTO `userinfo` VALUES ('yi5752', 'yi5752162', '01fd1e0856a6635d955c31d0115606c1');
INSERT INTO `userinfo` VALUES ('5678901', '1111111', '62d7eadcb644eb171aa9d39969465e4c');
INSERT INTO `userinfo` VALUES ('56789012', '1111111', '1874e0b5e152820c0b67769648608afc');
INSERT INTO `userinfo` VALUES ('1035226874', '87654321', 'd7fe1c3e19b0a7b9e57dd5be51acba52');
INSERT INTO `userinfo` VALUES ('z5128442', '111111', '94665eb922234025ceea22db8b2d6fb9');
INSERT INTO `userinfo` VALUES ('z51284421', '111111', '3a277f1eb3acfa1412936be55d881f54');
INSERT INTO `userinfo` VALUES ('z51284422', '111111', '14ab2accfba8493fd9e966f65acd6924');
INSERT INTO `userinfo` VALUES ('2729842103', '000000000', '8c3589673a9b455c75dfa8f84b73c1a7');
INSERT INTO `userinfo` VALUES ('2250630365', '123456789', 'f8916af2a167370a15a9bdfb11e0c5c3');
INSERT INTO `userinfo` VALUES ('129324501', '1984357986', 'f58ca5771082595f53819021e41534a7');
INSERT INTO `userinfo` VALUES ('怪你入戏太深° ', 'yjxwoshiyindage', 'b17265ae61cecbc2734a953a8a5e91fb');
INSERT INTO `userinfo` VALUES ('811986590', 'a1994123', 'f1e98eefae129018dc728e27560c3a8b');
INSERT INTO `userinfo` VALUES ('abc2902153217', '123456', 'eb859a5144f1a9221c85ce2fed7cc296');
INSERT INTO `userinfo` VALUES ('2902153217', '555555', '3bd8bda9ec9ae388ac6b8cf853a6b0fc');
INSERT INTO `userinfo` VALUES ('2643521720', 'chen5201314.', 'e66aa48378e646e6f1e952eb1a6e36b1');
INSERT INTO `userinfo` VALUES ('533521', '533521', '3a162b4cefc4ff3655e1830bda953576');
INSERT INTO `userinfo` VALUES ('ia670470664', '8513771', '47d70ff24778d60dd1d528d355f18243');
INSERT INTO `userinfo` VALUES ('gudaotian', 'EFGGGOOD', '198d61c1a7f639d7fb26bf498e4a7ff5');
INSERT INTO `userinfo` VALUES ('辅导员', 'efgg15333', '82ab3cec35710e73cb57a4512cdd20c7');
INSERT INTO `userinfo` VALUES ('古道', 'efgg15333', '5e6b36602ba713d6ff9e17e8702ae9d8');
INSERT INTO `userinfo` VALUES ('774508', '774508', '37ac8b7cc8f71c6383f72538c0d33f53');
INSERT INTO `userinfo` VALUES ('cdf999', '111111', 'af89fb352b7f7fc4ed4cd68a562c0573');
INSERT INTO `userinfo` VALUES ('y461796452', 'f461796452', '1675b1c9a6394cc2f699ebae3db5ee7f');
INSERT INTO `userinfo` VALUES ('87654321', '12345678', '3c0516fdc5c38119e9d3a64fe563e543');
INSERT INTO `userinfo` VALUES ('qweqwe', 'qweqwe', 'a31e735487b64d02a070098dd52ed0dd');
INSERT INTO `userinfo` VALUES ('bingshi', '210585', 'cef08e184be356c9a29c96227bfc5e82');
INSERT INTO `userinfo` VALUES ('linbei003', 'linbei003', '7c74486aac07e72c73e40a4af553fdad');
INSERT INTO `userinfo` VALUES ('test123', 'test123', '75cb838ed90b1d93c3a6b6a62e0cc5fb');
INSERT INTO `userinfo` VALUES ('zjsmzhq', 'zjsmzhq', '5200d24260152a80fb6aecd14481f7fa');
INSERT INTO `userinfo` VALUES ('binglong12', 'wangziquan', '055b559be237d5a8e6d901b927bea5ec');
INSERT INTO `userinfo` VALUES ('1qweqwe', 'Aa123123', 'ae43278211f0185f3a8e5ee9a1a27ef9');
INSERT INTO `userinfo` VALUES ('aiwenaidan', 'aiwenaidan999', '7e13f649642331458114e979170a00d1');
INSERT INTO `userinfo` VALUES ('1234568', '222222', '72525ad2f4491207dda26ab5e7e5a062');
INSERT INTO `userinfo` VALUES ('111222', '111222', 'ff51c8d135ed761190d7e912c3d2c11a');
INSERT INTO `userinfo` VALUES ('孤岛', '1533396', 'c8f024d1496d77eda1f699d8cbca7792');
INSERT INTO `userinfo` VALUES ('1337433463', '05060212M', 'ab80e91531272ff0997fa1c325760e2a');
INSERT INTO `userinfo` VALUES ('123456789z', '654321', 'adafc2f53d3720e8995108d412c4fc35');
INSERT INTO `userinfo` VALUES ('1969928633', '654321', '2fc7f1fe8bca86103e8b6d43adc05ae2');
INSERT INTO `userinfo` VALUES ('1771206859', '124578', 'd0ac22f1cef09342c5fc9f042eadebe3');
INSERT INTO `userinfo` VALUES ('2662694840', '999111222', 'ac3e5adf7d0e79be7896202e3dab78d3');
INSERT INTO `userinfo` VALUES ('1234560', '1234560', '2a9a4fe21d1ad97cb9332db57046a141');
INSERT INTO `userinfo` VALUES ('863756430', '123456', '42c1bd4a4cf2cd1c9b75f1e12716a5dd');
INSERT INTO `userinfo` VALUES ('风遥', '1234567', '00a0c1920eb8864b355c3650bc0b699a');
INSERT INTO `userinfo` VALUES ('a616909678', 'ch19950202', '2d307ab463aec2b6e8c809d8d8535107');
INSERT INTO `userinfo` VALUES ('abc7777', 'zzq229', '4c33599a414dd95f7ef15bf525105cda');
INSERT INTO `userinfo` VALUES ('红尘眷恋', 'long@123', '33928791763a66d71e7efe966aee2729');
INSERT INTO `userinfo` VALUES ('as123456', 'as12345', '7fb690dc08d7791ee464cecad6e728d9');
INSERT INTO `userinfo` VALUES ('李迩芦', '19840927', '0aec8176b7498322c9536b782fcd4a51');
INSERT INTO `userinfo` VALUES ('白秋', 'qgjx1212', 'd847bc33ef1e39ede1eda873d704cb1a');
INSERT INTO `userinfo` VALUES ('541420514', '2318768', '216c8e1940050708a9e88c217dec46bb');
INSERT INTO `userinfo` VALUES ('shuyan', 'xht9109', 'ce87dcdacb921bdbbee6d27ccdd1a1d6');
INSERT INTO `userinfo` VALUES ('hehehe', '9518520', 'c442c3f71609edbc97a16818ac7675d1');
INSERT INTO `userinfo` VALUES ('1112223338', '123654789', '7fd66b9135614055df24d4fb4d95aead');
INSERT INTO `userinfo` VALUES ('abctest', 'abctest', '12175fdd4a028538b06343b3e053e809');
INSERT INTO `userinfo` VALUES ('道长', '123456', 'e8f07fd9dd9747eb7061440ea1f95577');
INSERT INTO `userinfo` VALUES ('道长1', '123456', '634a3ef9c704b392f57961fe7f5b8dea');
INSERT INTO `userinfo` VALUES ('xing030411', '030411kjk', '044ca22581d263964fd0158282fadb42');
INSERT INTO `userinfo` VALUES ('123456799', '123456789', '849e353e7d5ea864cdaac5915801bc75');
INSERT INTO `userinfo` VALUES ('123123', '123456', '3523574420f1cad4018e802180ae440c');
INSERT INTO `userinfo` VALUES ('982162639', 'www456789', '6b95038f4e35e4c204cd63c4291f47dc');
INSERT INTO `userinfo` VALUES ('1098933710', 'A123459', 'c911094e95590dda0b8a0813dca6f27f');
INSERT INTO `userinfo` VALUES ('abcd123', 'abcd123', 'a3f9ecbb5e8f608ebbf0416a51004bc7');
INSERT INTO `userinfo` VALUES ('whytdl', '919926256', 'b9066cad96a2d83cc94596bbb09e763c');
INSERT INTO `userinfo` VALUES ('abcdefg', '123456789', '0bcbf80f605a7a4b32629e5080292a39');
INSERT INTO `userinfo` VALUES ('黑猫', 'heimao', '5bcf6db33b57444bec34f05cf5fab6e8');
INSERT INTO `userinfo` VALUES ('2331292718', '895207', 'a5318beda844395277cc8ca528f9cd16');
INSERT INTO `userinfo` VALUES ('道长2', '123456', '0244846e79462dd7f89732301276bd56');
INSERT INTO `userinfo` VALUES ('1234567', '7777777', 'db7d71820512cabea82d964fb062e143');
INSERT INTO `userinfo` VALUES ('q626739426', 'q230780', 'd9ffd17ec312dd7d906d3d0bd09e9c33');
INSERT INTO `userinfo` VALUES ('juhuaguai', '123456', '567e3d19771392bddf87d647b1c79370');
INSERT INTO `userinfo` VALUES ('a1314520', 'a1314520', 'abec8758f4bb1bf557b0189d4e0ab5c6');
INSERT INTO `userinfo` VALUES ('namhsd119', 'namlaanh', '8a347812344c5e2edda74f7e688fb998');
INSERT INTO `userinfo` VALUES ('zinba463', 'zinba123', '7e0c31054e636d9f44914eabe59580d5');
INSERT INTO `userinfo` VALUES ('trung9b', '123456', '61b45c19c244b464869eb54b5e1accfa');
INSERT INTO `userinfo` VALUES ('Nthat2018', 'that120490', 'a58b58a3acd38e9e2a9aa6b668b05b20');
INSERT INTO `userinfo` VALUES ('rinna123', 'lamvip77', '007fcb21932e4d74d73e10e20bf3fc8d');
INSERT INTO `userinfo` VALUES ('linhpk', 'qqqqqq', '0a68e1cec319279b37771177903153f5');
INSERT INTO `userinfo` VALUES ('linhpk1', 'qqqqqqq', 'fe9462d6d1579869195e474f1abf8aa8');
INSERT INTO `userinfo` VALUES ('Hungluyen', '241189', 'e3f151b7c33c7995eb70bdcb4254b887');
INSERT INTO `userinfo` VALUES ('hehehe123', '123456', '5ece7560d82ac047a7f689f0106e690b');
INSERT INTO `userinfo` VALUES ('Kietvn301', '123456789', '4a8860c9c12b6675288508fc2a2dcf63');
INSERT INTO `userinfo` VALUES ('congproqn', '100463', '94669672b0110c90e6595fe351650e3c');
INSERT INTO `userinfo` VALUES ('sasasa', 'sasasa', '4961639285e1bf5e51d502c1c77312f9');
INSERT INTO `userinfo` VALUES ('VogueVT01', '12345678', 'f5f8cb2b6c6bf5f801017befd297776b');
INSERT INTO `userinfo` VALUES ('Bathan20', 'ayenlea', '0fc3fd28c2dce24aa6c748dc25c8d683');
INSERT INTO `userinfo` VALUES ('hoangdai', '123456', 'e10f6a6719c52c50d7a0a815e461e940');
INSERT INTO `userinfo` VALUES ('Habits', '123121', '3744e82f39b121b784591755941e1213');
INSERT INTO `userinfo` VALUES ('lehongphuc789', 'phuckaknut123', '6b279228ae278cbeb28bbab1803c9349');
INSERT INTO `userinfo` VALUES ('haunguyen069920', 'Minhhau992006', 'edf59254be53da8f68768ee910ef9289');
INSERT INTO `userinfo` VALUES ('khan093', '010203', 'a68dd56fecedebbde32b3c1583ab4c36');
INSERT INTO `userinfo` VALUES ('nguyenvu34t', 'ayenlea', '86edf7802a237ff63335cf0c7c119193');
INSERT INTO `userinfo` VALUES ('heobii', 'asdasd', '89bc3e964f2264aeac5c3efb15ae4514');
INSERT INTO `userinfo` VALUES ('Siv3el', 'Kiroto1998', '7f05998c7de72d6efa757b9d5caae429');
INSERT INTO `userinfo` VALUES ('Valen1402', 'khoa1402', '0cc588ba80df372dfdbfe2e9e9b84ce0');
INSERT INTO `userinfo` VALUES ('tanphatqb', 'phat123', '40b56bee806b9fabc946ce9c2f0d5df8');
INSERT INTO `userinfo` VALUES ('Truccandy ', 'qqqqqq', 'f17f7ed4dd7db73b3e71c1a3c52ad39b');
INSERT INTO `userinfo` VALUES ('mugi2005', '12345678', '80c1b7d379515346f43551bdc3e8e118');
INSERT INTO `userinfo` VALUES ('mugia2005', 'ttoan2005', 'a9c565d2605a8e967c2793ffbf7be5c1');
INSERT INTO `userinfo` VALUES ('chiengroup', 'ngocyeu', '6027fcb120e1d604f68c5279d4b48cc1');
INSERT INTO `userinfo` VALUES ('tankhanh', 'tankhanh', 'c2bf9e1b5234aabb464df8ca9c3e395a');
INSERT INTO `userinfo` VALUES ('MaNoCanh', 'ayenlea', '75e99153a60f6d322535a1a6348c18ce');
INSERT INTO `userinfo` VALUES ('tuankhung1973', 'tuan123456', 'a44073272cd26dd0c55b47bcedbfc6b9');
INSERT INTO `userinfo` VALUES ('nhokbuon94', 'haiyen', 'fd1a54eacd356c6a4dcc4fff10078d49');
INSERT INTO `userinfo` VALUES ('gakuku123123', 'azz123123', '3609a8e0a7d4bf76fab1140f60826aa7');
INSERT INTO `userinfo` VALUES ('tuantuan ', '12101998', 'a5e222a1831d13e7d88aae82e248fe28');
INSERT INTO `userinfo` VALUES ('vanson11', '123456', '8fa19ba1500d94bef04eb65525386423');
INSERT INTO `userinfo` VALUES ('gakuku1231231', 'azz123123', '998eb6203f42efad048216349782563a');
INSERT INTO `userinfo` VALUES ('edwin94', 'edwin94', '69c1211d1730f1594235b71fe54af673');
INSERT INTO `userinfo` VALUES ('thanhnagi', '20122002tt', 'a95515dfbcc9d0fbd4366a031295628c');
INSERT INTO `userinfo` VALUES ('NTHD1933', 'thanhvinh1012004', '8d18ab1ddb4833daa7cd457e7f23d90f');
INSERT INTO `userinfo` VALUES ('Leviet', 'blackhole', '8210cf73089b0ec35b3236024f9e56da');
INSERT INTO `userinfo` VALUES ('beegan123', 'AnDeath1', 'dfdc5bfbd11402aef4b6473b6bc89061');
INSERT INTO `userinfo` VALUES ('trjeul0ng', '123456', '610124431605be94012355faf0b9b65c');
INSERT INTO `userinfo` VALUES ('Heovatoi', 'alokimngan', '075711e8f3d11562f336e48c6402d3e5');
INSERT INTO `userinfo` VALUES ('Member1', '12456532', '6057c59b88a77d65b1c429b6a7e66178');
INSERT INTO `userinfo` VALUES ('roboinbox', '123456', 'b90c810ceb381fe64860ec96d6dfe6dc');
INSERT INTO `userinfo` VALUES ('Quynhquynh', 'quynh97', '22fbeb108be84d48955868f0dac4c2af');
INSERT INTO `userinfo` VALUES ('Ngochieust', 'hieust123', '8c119e441febac8a6daea1320eef0302');
INSERT INTO `userinfo` VALUES ('ngochung', '123456', '9e7173e1db3567073b20d0e903503a36');
INSERT INTO `userinfo` VALUES ('caonguyen', '123456', '09df3dac49005748d2cb5a78c2a6e1cc');
INSERT INTO `userinfo` VALUES ('thangbaon', 'anhphat16', 'a10efe23abc8c53bbaf10c511b2a7384');
INSERT INTO `userinfo` VALUES ('Nhocdilan', '090909', 'eed78c872ad65335e21b79f8b612de08');
INSERT INTO `userinfo` VALUES ('buiminhtri', '123456', '051256ad0c3e0f16370d6a7274249d9e');
INSERT INTO `userinfo` VALUES ('Titka1', '462016', 'f83792ba10ab38531474e765eaadefc1');
INSERT INTO `userinfo` VALUES ('bemien', 'maiyeuem', '1548bf0875e947f30bdc2732edda8ce3');
INSERT INTO `userinfo` VALUES ('Bemiennui', 'maiyeuem', '62923be0a940a0b636d2439737210df7');
INSERT INTO `userinfo` VALUES ('Kenpachi1954', 'Handoi1954', 'fd9c0fae8000597df1ba5384267b1651');
INSERT INTO `userinfo` VALUES ('harusayoyo', '123456', '75ca42f4f76aaca7d6a40b82160cca61');
INSERT INTO `userinfo` VALUES ('ahihidongoc34', '9876543210', '5f97e79517a4950fffdac042bf3b4ba7');
INSERT INTO `userinfo` VALUES ('Longkaka9999', 'long123', '7f8291cb43f3cd76dbd6042d827abd7d');
INSERT INTO `userinfo` VALUES ('idthupc', 'anhyeuem1', 'bff6ca1b5796bc29986e21c861ba2e75');
INSERT INTO `userinfo` VALUES ('Ngochoa', 'hoa2020', '1d8b8ce8006090043e50fbc2ec15f172');
INSERT INTO `userinfo` VALUES ('aopro098', '0987345892', '216b0f40f3590b540cdf2c9f76915194');
INSERT INTO `userinfo` VALUES ('Snkcctv', 'snkcctv', '8b71df0369e895f97edfc6d309a62944');
INSERT INTO `userinfo` VALUES ('huyvdnd', 'huytao99', 'ab19dbb8c675fb9a1f99687bd2b619a3');
INSERT INTO `userinfo` VALUES ('Rozas999', 'hieu123', '6480c0922a0bcd166f5d69dee53744b2');
INSERT INTO `userinfo` VALUES ('Cuongnd', 'adadad', 'cb620eefb453c92b005680c2f4e544cb');
INSERT INTO `userinfo` VALUES ('zzmuhongzz', '123456', 'ee539060481c655bd94ecf54f5c4bd1a');
INSERT INTO `userinfo` VALUES ('tracyxing', '123456', 'd0baa35058c4ed7d80e9b4acc4ee72bf');
INSERT INTO `userinfo` VALUES ('meou123', 'thangcailon', 'ace1e7077c589eecd2b7027d09b2fad2');
INSERT INTO `userinfo` VALUES ('Bolaymay', 'anhlong', '533ef88f439e4ac618313ce821e95b27');
INSERT INTO `userinfo` VALUES ('Helo01', '123123', '972d45090008afbdf9fc9510279f65cd');
INSERT INTO `userinfo` VALUES ('abcxyz123', '123456', 'ec0337ca3a0bef24986f76e509cc680d');
INSERT INTO `userinfo` VALUES ('bangtam182', 'quangliem', 'e419b53db8cdcec3fd9335cf8a3a19f3');
INSERT INTO `userinfo` VALUES ('anhliem1995', 'anhliem1995', '9794dd579ea45e5f4d1d0ddbf27035f2');
INSERT INTO `userinfo` VALUES ('baodeo12', 'ducmanh', '053d0396f57a8fbb5676c665b623b09a');
INSERT INTO `userinfo` VALUES ('bungbu11', 'kenzjpa', '35eae6f6344b2bc1dce9107107603f41');
INSERT INTO `userinfo` VALUES ('lykuku', '112233', '8d4588d54154f4ef764ded948f4827f6');
INSERT INTO `userinfo` VALUES ('TieuViem', 'matkhau1', '75c81e12021b0b07b3ff9fa3d053c50b');
INSERT INTO `userinfo` VALUES ('ninhtd97', 'ninh1997', '1907d816b1d0f54e76a9e76de0e9dd60');
INSERT INTO `userinfo` VALUES ('baka1203', '120399', 'ce6b44afc7a1b256637a889ba577a7b3');
INSERT INTO `userinfo` VALUES ('nganhanhtu', '281992', '635d61819aecd85907220862313e571a');
INSERT INTO `userinfo` VALUES ('volks9x', '123465', 'd8f5af5487b0f33c661b047c5287ea66');
INSERT INTO `userinfo` VALUES ('shouljin00', '147356900', '825f2bfe74023e87edeebf541b78a9a4');
INSERT INTO `userinfo` VALUES ('baxicula', 'chanwa', '3db0ff4bd540e7e8023c4afdc1e02e0f');
INSERT INTO `userinfo` VALUES ('Ziezie12345', 'ziezie12345', 'e10507161c836e6c9ba8e943fc1e450e');
INSERT INTO `userinfo` VALUES ('Anmaymoc', 'anhnhoem', '2af6c3528a8a339eabf50d97e387c177');
INSERT INTO `userinfo` VALUES ('qungsv3nn1', '123456', '7ceee34cbf0bf461fb6554d1347fa39f');
INSERT INTO `userinfo` VALUES ('Hoangthien', 'ssssss', 'cfdb8881195cbc9af9768c3282641b77');
INSERT INTO `userinfo` VALUES ('Yuyon1404', 'thydu2711', 'ed63a0b06b5ee1f6c74b4bdb487de1ba');
INSERT INTO `userinfo` VALUES ('bachugf', '123123', '732cc42ec2116fd7ccea6808351681af');
INSERT INTO `userinfo` VALUES ('mokmeo', 'zxczxcv', '5085bea0e82b52704d245041aa3f2000');
INSERT INTO `userinfo` VALUES ('tuan4105', 'tuanabc4105', '42a48d548f757b6f0a0d5806cadaaa5d');
INSERT INTO `userinfo` VALUES ('congsang1', '2961988', '7a62e8a4442dd37f2012693526fe410b');
INSERT INTO `userinfo` VALUES ('nhmq01', 'minhminh', 'f2c6f214927c54c70f0c9151e2c22bb5');
INSERT INTO `userinfo` VALUES ('haison', 'tu1806', 'ce1e19a9b313dc15e0c9b9ee95c7ba2a');
INSERT INTO `userinfo` VALUES ('meou12', 'thangcailon', '549e40bbc60ae932276c34984da7cf7a');
INSERT INTO `userinfo` VALUES ('meou1234', 'thangcailon', 'c9a4081250984e26e4e1a8ae16a9a2a6');
INSERT INTO `userinfo` VALUES ('meou12345', 'thangcailon', 'ef7bb847966de9435ac13a796f3e2249');
INSERT INTO `userinfo` VALUES ('phucloc', 'phucloc1', 'a5e0459171adbef59c9814ad0e74de25');
INSERT INTO `userinfo` VALUES ('heovatoi1', 'asdasd', '4c37aad63c7119ac28886e9f15913ac3');
INSERT INTO `userinfo` VALUES ('dfsogrej', '010203', '781829fd25440df91b1969a7610b69a8');
INSERT INTO `userinfo` VALUES ('Thythy96', '939669', '162c2720f1bb866ca95df1f0aea4f658');
INSERT INTO `userinfo` VALUES ('ngamy1', 'asdasd', '6fdb300060830a1f0ad35a07fd545c07');
INSERT INTO `userinfo` VALUES ('ngamy2', 'asdasd', 'dd10ca09f1a8606df88fd9c5edf5aa70');
INSERT INTO `userinfo` VALUES ('ngamy13', 'asdasd', '03a12b7231b7b89550dffddd560b8400');
INSERT INTO `userinfo` VALUES ('google', 'asdasd', '2aa7ca00a26127387248068a793bb928');
INSERT INTO `userinfo` VALUES ('google1', 'asdasd', 'a453b974c9d9e9c75b0a7af0c329a677');
INSERT INTO `userinfo` VALUES ('google2', 'asdasd', '7a91575a93c6680623c2554c4fc8fdde');
INSERT INTO `userinfo` VALUES ('google3', 'asdasd', '5f402e51cc02ca2575ece7b77f7c06c3');
INSERT INTO `userinfo` VALUES ('vandau1', '123456', '5ded44f47a3c05b512d7e191606e5d2d');
INSERT INTO `userinfo` VALUES ('google4', 'asdasd', '91f79a3bc691c112bbdbac377ee651c7');
INSERT INTO `userinfo` VALUES ('google45', 'asdasd', 'dc6e97c6aff41167dc29516af5f8cd64');
INSERT INTO `userinfo` VALUES ('google46', 'asdasd', '2f9f17abd9033f4f3f85f1babcec6317');
INSERT INTO `userinfo` VALUES ('google47', 'asdasd', 'ccba085a53383f19854b528e62b81109');
INSERT INTO `userinfo` VALUES ('muanhanh', 'asdasd', 'bf3eda77f3d433c8077caec6b6115357');
INSERT INTO `userinfo` VALUES ('google11', 'asdasd', 'f76b5cee1531211d3ed90cacb69f10c5');
INSERT INTO `userinfo` VALUES ('google12', 'asdasd', '05ebaf45a480022346219feaa4d8e62d');
INSERT INTO `userinfo` VALUES ('google13', 'asdasd', '93453a627c0b98a04cb262172d805eed');
INSERT INTO `userinfo` VALUES ('google14', 'asdasd', '88d153831cd18d27c5b925ff72a7d9b9');
INSERT INTO `userinfo` VALUES ('google15', 'asdasd', '2ab5ec1c1a19535247ae287eccf2e510');
INSERT INTO `userinfo` VALUES ('google16', 'asdasd', 'db70c472f40264c51a91cac84ff2de9a');
INSERT INTO `userinfo` VALUES ('ducminh93', 'minh1993', 'ef0f0e47863821244d180d1c335c7494');
INSERT INTO `userinfo` VALUES ('vip999', 'dmm123', 'cbe3e8d06cfe42a6f8f3abd44b4cb968');
INSERT INTO `userinfo` VALUES ('google21', 'asdasd', '9481e177b2dbb6e294f59f1ee3a03737');
INSERT INTO `userinfo` VALUES ('google22', 'asdasd', '92d406231ac18b1107b687111fe06fbb');
INSERT INTO `userinfo` VALUES ('251297', 'khangpro', '48b173e4b8f926eadb9f3fc0f3342178');
INSERT INTO `userinfo` VALUES ('huy1911', 'huy123', 'f7a87e18a30168c87de9922706c466d9');
INSERT INTO `userinfo` VALUES ('zeus01', 'zxcvbnm', 'd6c7e5e503969972783d548c4f809e57');
INSERT INTO `userinfo` VALUES ('truong22', 'ha2202', '8157b19de057b1c78401e8390650fa22');
INSERT INTO `userinfo` VALUES ('Hulkkk', 'hjklmn', '924dae2305b40c6c9784d9ba562603fe');
INSERT INTO `userinfo` VALUES ('zeko123', 'imposerpor123', '24977cba61fd7ae1b6b4964471a362a0');
INSERT INTO `userinfo` VALUES ('Honghai19', '0966477622', '99b0aec10ceaccdcb799d76d2d74b24f');
INSERT INTO `userinfo` VALUES ('tieuchuc', '250101', 'e897fa723cf75c66f9f599308ce8664f');
INSERT INTO `userinfo` VALUES ('tranthaihoang', '250101', '05dd58c709f23c297c8bfc9509bb2146');
INSERT INTO `userinfo` VALUES ('Lokizz', 'hjnbvg', '54b889e418983eadebd1c00a45e25fc0');
INSERT INTO `userinfo` VALUES ('Phiblack272', '01203211773', '32c03afedfa0488e0298b3e5da304436');
INSERT INTO `userinfo` VALUES ('haisonhd03', 'tu1806', '81bca4d7df44df4c6e0b13de85167d8d');
INSERT INTO `userinfo` VALUES ('haisonhd00', 'tu1806', 'aa5c23fc32dd0108662a018282b2f545');
INSERT INTO `userinfo` VALUES ('haisonhd01', 'tu1806', 'd027ec792af0026c8e7046113ed08c0a');
INSERT INTO `userinfo` VALUES ('haisonhd02', 'tu1806', '794459e4f870939f098a8edd0c98fc86');
INSERT INTO `userinfo` VALUES ('haisonhd04', 'tu1806', '213d178f8e99a7b3cf4e7bc167d7a17b');
INSERT INTO `userinfo` VALUES ('haisonhd05', 'tu1806', 'edb5bc00b04a3f2c0642ff5eea732b7b');
INSERT INTO `userinfo` VALUES ('cloneu003', 'ssssss', 'b3888e324fcd1c26b2cca86cbb98b738');
INSERT INTO `userinfo` VALUES ('haisonhd06', 'http://ttk.shineiot.co/index.php', '1638d5e5fb8c0fc6d9f8b35f94fd9327');
INSERT INTO `userinfo` VALUES ('haisonhd07', 'tu1806', '894f115e27a29a825b5a65ce250c18a6');
INSERT INTO `userinfo` VALUES ('haisonhd08', 'tu1806', '2482ebac088365af467a2137058607f0');
INSERT INTO `userinfo` VALUES ('thang1', 'thangcailon', '2d01330f72606f8ef2d1809d4421b713');
INSERT INTO `userinfo` VALUES ('meou123456', 'thangcailon', '891b3d24031d7d52bd18bc4535bc3d29');
INSERT INTO `userinfo` VALUES ('thang123', 'thangcailon', '87057529d1df23585893649c05ee2bbe');
INSERT INTO `userinfo` VALUES ('thang1234', 'thangcailon', 'f3395167b377bf803af3bc2096d4cef4');
INSERT INTO `userinfo` VALUES ('firelcdrag', '123123', '6f7d3876a1c7e4f7306dede3b38f374e');
INSERT INTO `userinfo` VALUES ('haisonhd09', 'tu1806', 'addacc799bac57f4eca3356c24ae7f2a');
INSERT INTO `userinfo` VALUES ('zeus02', 'zxcvbnm', 'ec38af71820704aa22d18c45e2157ef3');
INSERT INTO `userinfo` VALUES ('Zeus03', 'zxccxz', '5efad7a950cdce39a88006c649e3f7e9');
INSERT INTO `userinfo` VALUES ('zeus04', 'mimimi', '8cbf2e14b05e1f68fb300ac36dbabf95');
INSERT INTO `userinfo` VALUES ('google23', 'asdasd', '6868b5f11f80888b4ceab296eeb059b9');
INSERT INTO `userinfo` VALUES ('google24', 'ASDASD', '37b30d47198882e2d5bb2e75c2ee92bb');
INSERT INTO `userinfo` VALUES ('google25', 'ASDASD', '0fc11b6e7c3f241eaee7afce9e8a9207');
INSERT INTO `userinfo` VALUES ('google26', 'ASDASD', '5670be224c6a3d58ceb133e53b18508b');
INSERT INTO `userinfo` VALUES ('google27', 'ASDASD', 'd9cabde6b3f7901219aa9a65235699ea');
INSERT INTO `userinfo` VALUES ('haisonhd1', 'tu1806', 'b7eb9e2d5465ba1d86f528b1501e29e5');
INSERT INTO `userinfo` VALUES ('google28', 'ASDASD', '7fc329be9ca6c763d41ce7764e3d831a');
INSERT INTO `userinfo` VALUES ('tobi01', 'cvbbvc', 'a2435bedab0a42a189a41f5efedd386e');
INSERT INTO `userinfo` VALUES ('google29', 'ASDASD', '3641f3d293584fabb7952b09bc0cf9f8');
INSERT INTO `userinfo` VALUES ('haisonhd2', 'tu1806', 'b90a256848aafe86b5b03298547acd59');
INSERT INTO `userinfo` VALUES ('google30', 'ASDASD', '17e75d85049e6382fecfb97b52a45179');
INSERT INTO `userinfo` VALUES ('google31', 'asdasd', '957801ba72ff7004db09cc6fbaea596a');
INSERT INTO `userinfo` VALUES ('haisonhd3', 'tu1806', '95df5573f135d2f74c31adfc2067e714');
INSERT INTO `userinfo` VALUES ('google32', 'asdasd', '78857bcfe0888ef17d796d19c94b6f18');
INSERT INTO `userinfo` VALUES ('tobi02', 'mnbbnm', '058981596e20013e476c611da17bc506');
INSERT INTO `userinfo` VALUES ('google33', 'asdasd', 'be2c0c1d171164d78719e50ea64f0959');
INSERT INTO `userinfo` VALUES ('haisonhd4', 'tu1806', '4d51a3238e498bd55aacff381f4e41eb');
INSERT INTO `userinfo` VALUES ('google34', 'asdasd', '938aa10a337d5b667512e4b827c1a436');
INSERT INTO `userinfo` VALUES ('haisonhd5', 'tu1806', 'f909b66fa260221bd542bd91b751ef01');
INSERT INTO `userinfo` VALUES ('google35', 'asdasd', 'ba2c2ea05c9224447103db2acec89f22');
INSERT INTO `userinfo` VALUES ('google36', 'asdasd', '854d288ad8ec317f45dd223508c185f4');
INSERT INTO `userinfo` VALUES ('google37', 'asdasd', 'de5ff761090162e7de6469c8086accdb');
INSERT INTO `userinfo` VALUES ('google38', 'asdasd', '3e8fad8239f8f82d5254366635c5ec4a');
INSERT INTO `userinfo` VALUES ('haisonhd6', 'tu1806', 'ae16789ca994532d27de30ce5619c236');
INSERT INTO `userinfo` VALUES ('haisonhd7', 'tu1806', '0473af4f0c8be42061779c64fd04505a');
INSERT INTO `userinfo` VALUES ('tobi03', 'bnmmnb', '0d122b3f6ae9cb7bfe5c760c8a498a7b');
INSERT INTO `userinfo` VALUES ('google39', 'asdasd', '9a501f49e504e17a3b2082d7efea54a2');
INSERT INTO `userinfo` VALUES ('haisonhd8', 'haisonhd8', '7a12ce5f6503d7c89aa550f75526fa9c');
INSERT INTO `userinfo` VALUES ('google40', 'asdasd', '23b150d12e2bae20dcd6d5c6b6e242f2');
INSERT INTO `userinfo` VALUES ('google41', 'asdasd', '2298049c21541f07a6189f8944e29292');
INSERT INTO `userinfo` VALUES ('google42', 'asdasd', '34ff9d22a26e64a4f92e3ce519a14e90');
INSERT INTO `userinfo` VALUES ('google43', 'asdasd', 'ae9fa2f0de9af3b57ff114fa8dd86515');
INSERT INTO `userinfo` VALUES ('haisonhd9', 'haisonhd9', 'a1c9ced89b6e064153cc89f9712709cd');
INSERT INTO `userinfo` VALUES ('google44', 'asdasd', '2c7da809cdce62810de4da6bfb3487b1');
INSERT INTO `userinfo` VALUES ('haisonh1', 'haisonh1', '0a7e34930f0566d3a7f8a1a56840a405');
INSERT INTO `userinfo` VALUES ('haisonh2', 'haisonh2', '15e7075ab5df042460352a182eb4a0a6');
INSERT INTO `userinfo` VALUES ('nambe01992', '123123', 'de82c60969f8ec8d759741bcd7248cf1');
INSERT INTO `userinfo` VALUES ('haisonh3', 'haisonh3', '495adf8dd27833f63abd31f08254746c');
INSERT INTO `userinfo` VALUES ('haisonh4', 'haisonh4', '3447dd61274c943d4cdaf819fe82985d');
INSERT INTO `userinfo` VALUES ('haisonh5', 'haisonh5', 'c610a3caaa8a587a7dfe1d776e3642d8');
INSERT INTO `userinfo` VALUES ('haisonh6', 'haisonh6', 'b85dc75f7ce8d8d3525a2bd720a4845b');
INSERT INTO `userinfo` VALUES ('tobi04', 'bnmmnb', '9f84ba8b042ac332628ed7f9351f1e66');
INSERT INTO `userinfo` VALUES ('haisonh7', 'haisonh7', '91f3c1f514330e2626e51f5c0dd8dac8');
INSERT INTO `userinfo` VALUES ('haisonh8', 'haisonh8', '0ec3919e4a2e823c02756523b568417f');
INSERT INTO `userinfo` VALUES ('haisonh9', 'haisonh9', '902dd96f583916c11d4efe688c83d66d');
INSERT INTO `userinfo` VALUES ('haison1', 'haison1', 'e05f5b6829d56a802cd5c946dc1e8c46');
INSERT INTO `userinfo` VALUES ('haison2', 'haison2', 'dc4fd36e3a5b1790c10f38f06b1d44ce');
INSERT INTO `userinfo` VALUES ('haison3', 'haison3', '957578358b1937eb81f221921a42994b');
INSERT INTO `userinfo` VALUES ('haison4', 'haison4', '157604d13db94cdde4d9aa9fc6fb4897');
INSERT INTO `userinfo` VALUES ('haison5', 'haison5', '395e256df14ee09cc7967c29f148b01f');
INSERT INTO `userinfo` VALUES ('haison6', 'haison6', '7fda251e2e94cf7da6b0ccbde5f89393');
INSERT INTO `userinfo` VALUES ('haison7', 'haison7', '5bed532522afcf399b018423559aa664');
INSERT INTO `userinfo` VALUES ('haison8', 'haison8', '996f3e108ace6823dfc1405f578c675e');
INSERT INTO `userinfo` VALUES ('tobi05', 'bnmmnb', 'eb9d940b9e77dcc6b7f0b76b43faada7');
INSERT INTO `userinfo` VALUES ('haison9', 'haison9', '632c36e916d4ce5e474ca8079ffb33f8');
INSERT INTO `userinfo` VALUES ('tobi06', 'bnmmnb', '1e17b1d39f4a0813268b533d226f613b');
INSERT INTO `userinfo` VALUES ('haiso1', 'haiso1', '614f1ec69089c8c880afdb427a8a1a6c');
INSERT INTO `userinfo` VALUES ('haaso1', 'haaso1', 'e30f19259b58dc1132a8439e8a66285d');
INSERT INTO `userinfo` VALUES ('tobi07', 'bnmmnb', 'da7c6cb4888f3ebc8899936ae69b09ac');
INSERT INTO `userinfo` VALUES ('haaso2', 'haaso2', '07d3dd733119cfeaf0c9e37a7ad5d23f');
INSERT INTO `userinfo` VALUES ('tobi08', 'bnmmnb', 'bfe5edc2e22fdd1bb2000dc1b8d24477');
INSERT INTO `userinfo` VALUES ('haaso3', 'haaso3', '7c9a97ef0e45926385dace640a8af5e0');
INSERT INTO `userinfo` VALUES ('tobi09', 'bnmmnb', 'e6f97795f919bcb79f7f2d224a430b25');
INSERT INTO `userinfo` VALUES ('haaso4', 'haaso4', 'aa3ea31e46f9c4a2f4739a4e778e00eb');
INSERT INTO `userinfo` VALUES ('haaso5', 'haaso5', '94417a87a838ee5249b4f7ea842c62ba');
INSERT INTO `userinfo` VALUES ('haaso6', 'haaso6', '21e8dffe6ec0ba2c67b2ed5ec92a96bc');
INSERT INTO `userinfo` VALUES ('haaso7', 'haaso7', '83eeaecfed2187b046980c46f6d5ee78');
INSERT INTO `userinfo` VALUES ('haaso8', 'haaso8', '632443eb505d0feaf2e8701a41da2aa1');
INSERT INTO `userinfo` VALUES ('doiphudu', 'quyettu84', 'b3e4ea5b21217c08454169526ce65574');
INSERT INTO `userinfo` VALUES ('tobi10', 'bnmmnb', 'b0d4215175dbdcc03ddfc591984164b0');
INSERT INTO `userinfo` VALUES ('haaso9', 'haaso9', '921ffc7c72d5c11c3a918143b955cd4c');
INSERT INTO `userinfo` VALUES ('haasc1', 'haasc1', '4f6c2fb901c734755ecd6a90c9372c61');
INSERT INTO `userinfo` VALUES ('haasc2', 'haasc2', 'ffc3b271e0f5dad3ee23353483813777');
INSERT INTO `userinfo` VALUES ('haasc3', 'haasc3', 'aae9dd8b08929acdeba008185e4d8817');
INSERT INTO `userinfo` VALUES ('haasc4', 'haasc4', '159d59f17c60296feb48b33fb7b6a9c5');
INSERT INTO `userinfo` VALUES ('haasc5', 'haasc5', '979c863db9dc8675f14aa5781353d2ca');
INSERT INTO `userinfo` VALUES ('haasc6', 'haasc6', '53e13fdef10fe4a366e6c8948027a698');
INSERT INTO `userinfo` VALUES ('haasc7', 'haasc7', 'cd48daf5a1753a260fc66e34d3349e9a');
INSERT INTO `userinfo` VALUES ('haasc8', 'haasc8', '199199127037481bc29d5ed3796ef431');
INSERT INTO `userinfo` VALUES ('haasc9', 'haasc9', '36ddb1b3361c78d9b0be81ef95e27e3d');
INSERT INTO `userinfo` VALUES ('haasd1', 'haasd1', '761a41552840c9a39da8149c2cef8ff8');
INSERT INTO `userinfo` VALUES ('haasd2', 'haasd2', 'fc9f694d291fd203927708889c30d2bf');
INSERT INTO `userinfo` VALUES ('haasd3', 'haasd3', 'bc9af13b3b58f6d7e983b4e68a25a2f0');
INSERT INTO `userinfo` VALUES ('haasd4', 'haasd4', '6c00ccd2d68d7bf2ed05ab4e704d1c68');
INSERT INTO `userinfo` VALUES ('haasd5', 'haasd5', 'b9f096df240dc486eb51642954df803c');
INSERT INTO `userinfo` VALUES ('haasd6', 'haasd6', '7cd333fb248ddcaeb203ceed745f92c0');
INSERT INTO `userinfo` VALUES ('haasd7', 'haasd7', '38bf232ad0e60900184497ce1e93e836');
INSERT INTO `userinfo` VALUES ('haasd8', 'haasd8', '53616834af743c225613be641dacf047');
INSERT INTO `userinfo` VALUES ('haasd9', 'haasd9', '0ed4fe9b1af921413ae5a4c5e9e3c9af');
INSERT INTO `userinfo` VALUES ('haasd0', 'haasd0', '9b30fddab9c3479aeb5f3ab3f9556c9c');
INSERT INTO `userinfo` VALUES ('tobi11', 'bnmmnb', 'ea3d2fcfd4df7d917d024f604a46c130');
INSERT INTO `userinfo` VALUES ('tobi12', 'bnmmnb', '947abd32d50cd4013c5df4a46117a7a6');
INSERT INTO `userinfo` VALUES ('tobi13', 'bnmmnb', 'b4b5f1193fb9328e1489c06f4aec55cc');
INSERT INTO `userinfo` VALUES ('tobi14', 'bnmmnb', '78b30447bcf40ac8325fa24e62b94061');
INSERT INTO `userinfo` VALUES ('tobi15', 'bnmmnb', 'aed82c406125046a56a059963f833385');
INSERT INTO `userinfo` VALUES ('tobi16', 'bnmmnb', '545a5f7b4ce12ed31beaa7673a9717c8');
INSERT INTO `userinfo` VALUES ('tobi17', 'bnmmnb', '445f45a2ed8a15cfe2c059a30f391a3d');
INSERT INTO `userinfo` VALUES ('tobi18', 'bnmmnb', '992c2a2048ae932b323709f343fdd051');
INSERT INTO `userinfo` VALUES ('tobi19', 'bnmmnb', 'bd3630cad6dc89cf803112f9b91e694b');
INSERT INTO `userinfo` VALUES ('tobi20', 'bnmmnb', 'f7a9053c9eee831dfb29e45b959ca16f');
INSERT INTO `userinfo` VALUES ('tobi21', 'bnmmnb', 'f52119e74b5c43914f7b8a61139ab4fa');
INSERT INTO `userinfo` VALUES ('tobi22', 'bnmmnb', '84a6fd75aa020e08be73402eda05a560');
INSERT INTO `userinfo` VALUES ('tobi23', 'bnmmnb', '03e31b2fe82cb73685b181d8841092d6');
INSERT INTO `userinfo` VALUES ('haissn1', 'haissn1', 'e4f9e74584f20c50017938bc3857af7a');
INSERT INTO `userinfo` VALUES ('haissn2', 'haissn2', '3c582827cbdbadbef1e1c8586e8d7332');
INSERT INTO `userinfo` VALUES ('haissn3', 'haissn3', '2d37cc09eb9aadec717c41e9c9449d5e');
INSERT INTO `userinfo` VALUES ('haissn4', 'haissn4', '82caede0c5293d4071c5c86d2f2b248a');
INSERT INTO `userinfo` VALUES ('tobi24', 'bnmmnb', 'ddad5a84743d325fe885c2ca8711ea8d');
INSERT INTO `userinfo` VALUES ('haissn5', 'haissn5', '3ab5a7d047d6e16acb112c2c9e75b479');
INSERT INTO `userinfo` VALUES ('haissn6', 'haissn6', '0ca674f3639d83230d198b2e0105d990');
INSERT INTO `userinfo` VALUES ('haissn7', 'haissn7', 'ae83696a24d852116f8c6ba809bd417b');
INSERT INTO `userinfo` VALUES ('haissn8', 'haissn8', '0899610ffa5ac25b22057b277abe9f2e');
INSERT INTO `userinfo` VALUES ('haissn9', 'haissn9', '99f4007457a542a002150b35848caecc');
INSERT INTO `userinfo` VALUES ('haissz1', 'haissz1', '640ed77280cca31993ad21f0a95b2116');
INSERT INTO `userinfo` VALUES ('haissz2', 'haissz2', '69b5ba6fca12a044b3dea9a09bcf2201');
INSERT INTO `userinfo` VALUES ('haissz3', 'haissz3', 'eabd3d8d1279afbd42b5b416f54133cb');
INSERT INTO `userinfo` VALUES ('haissz4', 'haissz4', 'beacd0764158d2cfc99bc2b27416e2ea');
INSERT INTO `userinfo` VALUES ('tobi25', 'bnmmnb', '8c6d7e98d695128685f928369382ac9e');
INSERT INTO `userinfo` VALUES ('haissz5', 'haissz5', '7d83e781b512f1355ec7801dd4d7135c');
INSERT INTO `userinfo` VALUES ('haissz6', 'haissz6', '1e3b8006695f6c0856eb2f926048d450');
INSERT INTO `userinfo` VALUES ('tobi26', 'bnmmnb', 'c94267a6ae1667390cfc8676ff32b5ec');
INSERT INTO `userinfo` VALUES ('haissz7', 'haissz7', '875f9a0cc19f94e474e89623d306a5e3');
INSERT INTO `userinfo` VALUES ('haissz8', 'haissz8', 'a62a925ceafc7be85363b2d457e257ed');
INSERT INTO `userinfo` VALUES ('haissz9', 'haissz9', '844e18faa1696f30e7935718df8b3b02');
INSERT INTO `userinfo` VALUES ('haissz0', 'haissz0', 'b2beaabc73a5a9ab77227548082171ae');
INSERT INTO `userinfo` VALUES ('haisss1', 'haisss1', '806ab28412fdc7d825a3a4bd3499c6b2');
INSERT INTO `userinfo` VALUES ('haisss2', 'haisss2', 'cff241ad93b7861a841ad6c630ff9227');
INSERT INTO `userinfo` VALUES ('haisss3', 'haisss3', '25460ff9c8e3fe2f5e6bed54e6f8ecfb');
INSERT INTO `userinfo` VALUES ('haisss4', 'haisss4', '326ac5d02475885757404cb33a427a4a');
INSERT INTO `userinfo` VALUES ('Rozas222', 'hieu123', 'd48c62bf26807b3b8fec451c1717b972');
INSERT INTO `userinfo` VALUES ('nobita12', '123123', '5cb3034d688bb8745cacb334c3960c1a');
INSERT INTO `userinfo` VALUES ('rozas111', 'hieu123', 'b657221e81c3ef1c304b8707c9880ab7');
INSERT INTO `userinfo` VALUES ('NamN007', 'hoainam2007', 'f6f3fe218ab92ae1afee7a1dc418d10e');
INSERT INTO `userinfo` VALUES ('anmeo999', '120399', 'f3c61aef89e80a8530ed1545534d58ef');
INSERT INTO `userinfo` VALUES ('skynet01', 'skynet01', 'e27de95455d3cd96b92b30699afd0513');
INSERT INTO `userinfo` VALUES ('skynet02', 'skynet02', 'aa32d45afa501fa304dee28c5e54caef');
INSERT INTO `userinfo` VALUES ('skynet1', 'skynet1', 'cab84694d55c30dc0caf38b650279b69');
INSERT INTO `userinfo` VALUES ('qqqqqqqq12345', 'qqqqqqqq1', '77956924d67fd2a27785b081e51684e4');
INSERT INTO `userinfo` VALUES ('Thythy962', '939669', 'a6e052e7088f4d29e666b69637efcdd6');
INSERT INTO `userinfo` VALUES ('congsang2', '2961988', '5528c1e12f511fb64a6084cdca426778');

-- ----------------------------
-- Table structure for yaopin
-- ----------------------------
DROP TABLE IF EXISTS `yaopin`;
CREATE TABLE `yaopin` (
  `ypname` varchar(255) NOT NULL,
  `ypid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `yphp` int(11) NOT NULL,
  `ypgj` int(11) NOT NULL,
  `ypfy` int(11) NOT NULL,
  `ypxx` int(11) NOT NULL,
  `ypbj` int(11) NOT NULL,
  `ypjg` int(11) NOT NULL,
  PRIMARY KEY (`ypid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yaopin
-- ----------------------------
INSERT INTO `yaopin` VALUES ('Hoàn nguyên đan', '6', '100', '0', '0', '0', '0', '30');
INSERT INTO `yaopin` VALUES ('Hồi huyết tán', '7', '300', '0', '0', '0', '0', '80');
INSERT INTO `yaopin` VALUES ('Hồi xuân thang', '8', '600', '0', '0', '0', '0', '155');
INSERT INTO `yaopin` VALUES ('Phục thương đan', '9', '1200', '0', '0', '0', '0', '310');

-- ----------------------------
-- Table structure for zhuangbei
-- ----------------------------
DROP TABLE IF EXISTS `zhuangbei`;
CREATE TABLE `zhuangbei` (
  `zbname` varchar(255) NOT NULL,
  `zbinfo` varchar(255) NOT NULL,
  `zbgj` varchar(255) NOT NULL,
  `zbfy` varchar(255) NOT NULL,
  `zbbj` varchar(255) NOT NULL,
  `zbxx` varchar(255) NOT NULL,
  `zbid` int(11) NOT NULL AUTO_INCREMENT,
  `zbhp` varchar(255) NOT NULL,
  `zblv` int(11) NOT NULL,
  `zbtool` int(11) NOT NULL,
  PRIMARY KEY (`zbid`)
) ENGINE=MyISAM AUTO_INCREMENT=608 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhuangbei
-- ----------------------------
INSERT INTO `zhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '10', '0', '3');
INSERT INTO `zhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '3', '0', '0', '1', '25', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('Thanh phong hộ giáp', 'Thủ tự thanh phong thường bạn', '0', '5', '1', '0', '26', '25', '0', '3');
INSERT INTO `zhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '5', '0', '0', '2', '27', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '40', '0', '3');
INSERT INTO `zhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '0', '7', '1', '0', '30', '50', '0', '2');
INSERT INTO `zhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '0', '8', '1', '0', '31', '55', '0', '3');
INSERT INTO `zhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '20', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Hắc ma chủy thủ', 'Hắc ma chủy thủ', '14', '0', '3', '4', '33', '0', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '15', '0', '0', '4', '34', '0', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '0', '9', '2', '0', '35', '62', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '8', '3', '1', '1', '36', '0', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Nguyệt luân thương', 'Nguyệt luân thương', '10', '0', '0', '2', '37', '0', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '120', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Thị hồn cốt nhẫn', 'Thị hồn cốt nhẫn', '17', '0', '5', '3', '39', '0', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Bách trảm cuồng lan thương', 'Bách trảm cuồng lan', '20', '0', '0', '5', '40', '0', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Duyên phong · cầu lôi y', 'Duyên phong · cầu lôi y', '0', '10', '0', '0', '41', '150', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '155', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Duyên phong · phá quân yêu đái', 'Duyên phong · phá quân yêu đái', '0', '14', '0', '0', '43', '170', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Duyên phong · thú hồn hạng liên', 'Duyên phong · thú hồn hạng liên', '18', '12', '4', '4', '44', '55', '0', '0');
INSERT INTO `zhuangbei` VALUES ('[ thần khí ] yêu vương kiếm', '[ thần khí ] yêu vương kiếm', '45', '0', '13', '11', '45', '0', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Kiếp đao', 'Yêu vương kiếm toái phiến hợp thành', '25', '0', '4', '5', '46', '0', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Quân dụng tỏa tử giáp', 'Kiếp đao', '5', '16', '5', '0', '47', '170', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Quân quan mạch đao', 'Quân dụng tỏa tử giáp', '30', '0', '5', '4', '48', '0', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Chu Niên Khánh Kiếm', 'Vũ Khí', '20', '0', '0', '10', '49', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('Chu Niên Khánh Găng', 'Găng Tay', '0', '5', '10', '0', '50', '150', '0', '2');
INSERT INTO `zhuangbei` VALUES ('Chu Niên Khánh Y Phục', 'Y Phục', '0', '0', '20', '3', '51', '150', '0', '3');
INSERT INTO `zhuangbei` VALUES ('Chu Niên Khánh Đai', 'Đai Lưng', '0', '10', '10', '5', '52', '50', '0', '4');
INSERT INTO `zhuangbei` VALUES ('Chu Niên Khánh Nhẫn', 'Nhẫn', '5', '5', '5', '10', '53', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('Chu niên Khánh Giày', 'Giày', '10', '10', '10', '10', '54', '100', '0', '6');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> 【khai thiên kiếm】</span>', '<span style=color:red> 【khai thiên kiếm】</span>', '50', '0', '10', '10', '100', '100', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> huyền thiên </span>', '<span style=color:#DCB5FF> huyền thiên </span>', '30', '0', '5', '4', '101', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> trấn thiên </span>', '<span style=color:#DCB5FF> trấn thiên </span>', '30', '0', '5', '4', '102', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>AWM thư kích thương </span>', '<span style=color:green>AWM thư kích thương </span>', '30', '0', '5', '4', '103', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>Groza bộ thương </span>', '<span style=color:green>Groza bộ thương </span>', '30', '0', '5', '4', '104', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>M249 ky thương </span>', '<span style=color:green>M249 ky thương </span>', '30', '0', '5', '4', '105', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>M24 thư kích thương </span>', '<span style=color:green>M24 thư kích thương </span>', '30', '0', '5', '4', '106', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>Mk14EBR bộ thương </span>', '<span style=color:green>Mk14EBR bộ thương </span>', '30', '0', '5', '4', '107', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi kiếm (chiến)】</span>', '<span style=color:green>【 trác việt chi kiếm (chiến)】</span>', '30', '0', '5', '4', '108', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi kiếm (pháp)】</span>', '<span style=color:green>【 trác việt chi kiếm (pháp)】</span>', '30', '0', '5', '4', '109', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi kiếm (đạo)】</span>', '<span style=color:green>【 trác việt chi kiếm (đạo)】</span>', '30', '0', '5', '4', '110', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 thành chủ chi nhận 】</span>', '<span style=color:green>【 thành chủ chi nhận 】</span>', '30', '0', '5', '4', '111', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 quý tân chi kiếm 】</span>', '<span style=color:green>【 quý tân chi kiếm 】</span>', '30', '0', '5', '4', '112', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> luyện ngục </span>', '<span style=color:green> luyện ngục </span>', '30', '0', '5', '4', '113', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> ngân xà </span>', '<span style=color:green> ngân xà </span>', '30', '0', '5', '4', '114', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> ma trượng </span>', '<span style=color:green> ma trượng </span>', '30', '0', '5', '4', '115', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> vô cực côn </span>', '<span style=color:orange> vô cực côn </span>', '30', '0', '5', '4', '116', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> tài quyết chi trượng </span>', '<span style=color:orange> tài quyết chi trượng </span>', '30', '0', '5', '4', '117', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> cốt ngọc quyền trượng </span>', '<span style=color:orange> cốt ngọc quyền trượng </span>', '30', '0', '5', '4', '118', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red>【 hội viên huyết nhận 】</span>', '<span style=color:red>【 hội viên huyết nhận 】</span>', '30', '0', '5', '4', '119', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thị hồn pháp trượng </span>', '<span style=color:red> thị hồn pháp trượng </span>', '30', '0', '5', '4', '120', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> đồ long đao </span>', '<span style=color:red> đồ long đao </span>', '30', '0', '5', '4', '121', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> tiêu diêu phiến </span>', '<span style=color:red> tiêu diêu phiến </span>', '30', '0', '5', '4', '122', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> long văn kiếm </span>', '<span style=color:red> long văn kiếm </span>', '30', '0', '5', '4', '123', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> 【khai thiên dây chuyền】</span>', '<span style=color:red> 【khai thiên dây chuyền】</span>', '0', '0', '15', '15', '200', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> liệt diễm dây chuyền </span>', '<span style=color:#DCB5FF> liệt diễm dây chuyền </span>', '30', '0', '5', '4', '201', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> lôi đình dây chuyền </span>', '<span style=color:#DCB5FF> lôi đình dây chuyền </span>', '30', '0', '5', '4', '202', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi liên (chiến)】</span>', '<span style=color:green>【 trác việt chi liên (chiến)】</span>', '30', '0', '5', '4', '203', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi liên (pháp)】</span>', '<span style=color:green>【 trác việt chi liên (pháp)】</span>', '30', '0', '5', '4', '204', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi liên (đạo)】</span>', '<span style=color:green>【 trác việt chi liên (đạo)】</span>', '30', '0', '5', '4', '205', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 quý tân nhân tâm 】</span>', '<span style=color:green>【 quý tân nhân tâm 】</span>', '30', '0', '5', '4', '206', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> thiên địa </span>', '<span style=color:green> thiên địa </span>', '30', '0', '5', '4', '207', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> thiên châu dây chuyền </span>', '<span style=color:green> thiên châu dây chuyền </span>', '30', '0', '5', '4', '208', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> u linh dây chuyền </span>', '<span style=color:green> u linh dây chuyền </span>', '30', '0', '5', '4', '209', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> sinh mệnh dây chuyền </span>', '<span style=color:green> sinh mệnh dây chuyền </span>', '30', '0', '5', '4', '210', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> hồng ma dây chuyền </span>', '<span style=color:green> hồng ma dây chuyền </span>', '30', '0', '5', '4', '211', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> ma huyết dây chuyền </span>', '<span style=color:green> ma huyết dây chuyền </span>', '30', '0', '5', '4', '212', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> ác ma linh đang </span>', '<span style=color:orange> ác ma linh đang </span>', '30', '0', '5', '4', '213', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> linh hồn dây chuyền </span>', '<span style=color:orange> linh hồn dây chuyền </span>', '30', '0', '5', '4', '214', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> lục sắc dây chuyền </span>', '<span style=color:orange> lục sắc dây chuyền </span>', '30', '0', '5', '4', '215', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> đồng vực dây chuyền </span>', '<span style=color:orange> đồng vực dây chuyền </span>', '30', '0', '5', '4', '216', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:purple> mộc vực dây chuyền </span>', '<span style=color:purple> mộc vực dây chuyền </span>', '30', '0', '5', '4', '217', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red>【 hội viên dây chuyền 】</span>', '<span style=color:red>【 hội viên dây chuyền 】</span>', '30', '0', '5', '4', '218', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thánh chiến dây chuyền </span>', '<span style=color:red> thánh chiến dây chuyền </span>', '30', '0', '5', '4', '219', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thiên tôn dây chuyền </span>', '<span style=color:red> thiên tôn dây chuyền </span>', '30', '0', '5', '4', '220', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> pháp thần dây chuyền </span>', '<span style=color:red> pháp thần dây chuyền </span>', '30', '0', '5', '4', '221', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> 【khai thiên chiến giáp】</span>', '<span style=color:red> 【khai thiên chiến giáp】</span>', '0', '60', '0', '0', '300', '450', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> quang mang chiến giáp </span>', '<span style=color:#DCB5FF> quang mang chiến giáp </span>', '30', '0', '5', '4', '301', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> liệt diễm chiến giáp </span>', '<span style=color:#DCB5FF> liệt diễm chiến giáp </span>', '30', '0', '5', '4', '302', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> liệt diễm chiến giáp </span>', '<span style=color:#DCB5FF> liệt diễm chiến giáp </span>', '30', '0', '5', '4', '303', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> lôi đình chiến giáp </span>', '<span style=color:#DCB5FF> lôi đình chiến giáp </span>', '30', '0', '5', '4', '304', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> lôi đình chiến giáp </span>', '<span style=color:#DCB5FF> lôi đình chiến giáp </span>', '30', '0', '5', '4', '305', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi giáp (chiến)】</span>', '<span style=color:green>【 trác việt chi giáp (chiến)】</span>', '30', '0', '5', '4', '306', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi giáp (pháp)】</span>', '<span style=color:green>【 trác việt chi giáp (pháp)】</span>', '30', '0', '5', '4', '307', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi giáp (đạo)】</span>', '<span style=color:green>【 trác việt chi giáp (đạo)】</span>', '30', '0', '5', '4', '308', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 quý tân vô địch 】</span>', '<span style=color:green>【 quý tân vô địch 】</span>', '30', '0', '5', '4', '309', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> cát lợi phục </span>', '<span style=color:green> cát lợi phục </span>', '30', '0', '5', '4', '310', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red>【 hội viên chiến giáp 】</span>', '<span style=color:red>【 hội viên chiến giáp 】</span>', '30', '0', '5', '4', '311', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thánh chiến bảo giáp </span>', '<span style=color:red> thánh chiến bảo giáp </span>', '30', '0', '5', '4', '312', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thiên tôn đạo bào </span>', '<span style=color:red> thiên tôn đạo bào </span>', '30', '0', '5', '4', '313', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thiên sư trường bào </span>', '<span style=color:red> thiên sư trường bào </span>', '30', '0', '5', '4', '314', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thiên ma thần giáp </span>', '<span style=color:red> thiên ma thần giáp </span>', '30', '0', '5', '4', '315', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> pháp thần phi phong </span>', '<span style=color:red> pháp thần phi phong </span>', '30', '0', '5', '4', '316', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> nghê thường vũ y </span>', '<span style=color:red> nghê thường vũ y </span>', '30', '0', '5', '4', '317', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red>【khai thiên đai lưng】 </span>', '<span style=color:red>【khai thiên đai lưng】 </span>', '20', '20', '0', '0', '400', '150', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> liệt diễm đai lưng </span>', '<span style=color:#DCB5FF> liệt diễm đai lưng </span>', '30', '0', '5', '4', '401', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> lôi đình đai lưng </span>', '<span style=color:#DCB5FF> lôi đình đai lưng </span>', '30', '0', '5', '4', '402', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt đai lưng (chiến)】</span>', '<span style=color:green>【 trác việt đai lưng (chiến)】</span>', '30', '0', '5', '4', '403', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt đai lưng (pháp)】</span>', '<span style=color:green>【 trác việt đai lưng (pháp)】</span>', '30', '0', '5', '4', '404', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt đai lưng (đạo)】</span>', '<span style=color:green>【 trác việt đai lưng (đạo)】</span>', '30', '0', '5', '4', '405', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 quý tân tí hoàn 】</span>', '<span style=color:green>【 quý tân tí hoàn 】</span>', '30', '0', '5', '4', '406', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> tam nhãn đai lưng</span>', '<span style=color:green> tam nhãn đai lưng</span>', '30', '0', '5', '4', '407', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> uy hợp </span>', '<span style=color:green> uy hợp </span>', '30', '0', '5', '4', '408', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> u linh thủ sáo</span>', '<span style=color:green> u linh thủ sáo</span>', '30', '0', '5', '4', '409', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> tư bối nhi đai lưng</span>', '<span style=color:green> tư bối nhi đai lưng</span>', '30', '0', '5', '4', '410', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> thần bí đai lưng </span>', '<span style=color:green> thần bí đai lưng </span>', '30', '0', '5', '4', '411', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> hồng ma đai lưng </span>', '<span style=color:green> hồng ma đai lưng </span>', '30', '0', '5', '4', '412', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> ma huyết đai lưng </span>', '<span style=color:green> ma huyết đai lưng </span>', '30', '0', '5', '4', '413', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> tâm linh đai lưng</span>', '<span style=color:orange> tâm linh đai lưng</span>', '30', '0', '5', '4', '414', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> đồng vực đai lưng</span>', '<span style=color:orange> đồng vực đai lưng</span>', '30', '0', '5', '4', '415', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> kỵ sĩ đai lưng</span>', '<span style=color:orange> kỵ sĩ đai lưng</span>', '30', '0', '5', '4', '416', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> long chi đai lưng</span>', '<span style=color:orange> long chi đai lưng</span>', '30', '0', '5', '4', '417', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:purple> mộc vực đai lưng</span>', '<span style=color:purple> mộc vực đai lưng</span>', '30', '0', '5', '4', '418', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red>【 hội viên đai lưng 】</span>', '<span style=color:red>【 hội viên đai lưng 】</span>', '30', '0', '5', '4', '419', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thánh chiến đai lưng</span>', '<span style=color:red> thánh chiến đai lưng</span>', '30', '0', '5', '4', '420', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thiên tôn đai lưng</span>', '<span style=color:red> thiên tôn đai lưng</span>', '30', '0', '5', '4', '421', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> pháp thần đai lưng</span>', '<span style=color:red> pháp thần đai lưng</span>', '30', '0', '5', '4', '422', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red>【khai thiên nhẫn】</span>', '<span style=color:red>【khai thiên nhẫn】</span>', '25', '0', '0', '10', '500', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thiên tôn nhẫn</span>', '<span style=color:red> thiên tôn nhẫn</span>', '30', '0', '5', '4', '501', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thánh chiến nhẫn</span>', '<span style=color:red> thánh chiến nhẫn</span>', '30', '0', '5', '4', '502', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:purple> mộc vực nhẫn</span>', '<span style=color:purple> mộc vực nhẫn</span>', '30', '0', '5', '4', '503', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> thái thản nhẫn</span>', '<span style=color:orange> thái thản nhẫn</span>', '30', '0', '5', '4', '504', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> lực lượng nhẫn</span>', '<span style=color:orange> lực lượng nhẫn</span>', '30', '0', '5', '4', '505', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> long chi nhẫn</span>', '<span style=color:green> long chi nhẫn</span>', '30', '0', '5', '4', '506', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> ma tý nhẫn</span>', '<span style=color:green> ma tý nhẫn</span>', '30', '0', '5', '4', '507', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> ma huyết nhẫn </span>', '<span style=color:green> ma huyết nhẫn </span>', '30', '0', '5', '4', '508', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> ẩn thân nhẫn</span>', '<span style=color:green> ẩn thân nhẫn</span>', '30', '0', '5', '4', '509', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> phòng ngự nhẫn</span>', '<span style=color:green> phòng ngự nhẫn</span>', '30', '0', '5', '4', '510', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> bạc kim nhẫn</span>', '<span style=color:green> bạc kim nhẫn</span>', '30', '0', '5', '4', '511', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> hồng ma nhẫn </span>', '<span style=color:green> hồng ma nhẫn </span>', '30', '0', '5', '4', '512', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> hồng bảo thạch nhẫn</span>', '<span style=color:green> hồng bảo thạch nhẫn</span>', '30', '0', '5', '4', '513', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> thần bí nhẫn </span>', '<span style=color:green> thần bí nhẫn </span>', '30', '0', '5', '4', '514', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> thần lực nhẫn</span>', '<span style=color:green> thần lực nhẫn</span>', '30', '0', '5', '4', '515', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> hỏa diễm nhẫn</span>', '<span style=color:green> hỏa diễm nhẫn</span>', '30', '0', '5', '4', '516', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> hộ thân nhẫn</span>', '<span style=color:green> hộ thân nhẫn</span>', '30', '0', '5', '4', '517', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> phục hoạt nhẫn</span>', '<span style=color:green> phục hoạt nhẫn</span>', '30', '0', '5', '4', '518', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> truyện tống nhẫn</span>', '<span style=color:green> truyện tống nhẫn</span>', '30', '0', '5', '4', '519', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red>【 khai thiên giày】</span>', '<span style=color:red>【 khai thiên giày】</span>', '20', '20', '10', '10', '600', '0', '0', '6');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 quý tân giày 】</span>', '<span style=color:green>【 quý tân giày 】</span>', '30', '0', '5', '4', '601', '0', '0', '6');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi ngoa (đạo)】</span>', '<span style=color:green>【 trác việt chi ngoa (đạo)】</span>', '30', '0', '5', '4', '602', '0', '0', '6');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi ngoa (pháp)】</span>', '<span style=color:green>【 trác việt chi ngoa (pháp)】</span>', '30', '0', '5', '4', '603', '0', '0', '6');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi ngoa (chiến)】</span>', '<span style=color:green>【 trác việt chi ngoa (chiến)】</span>', '30', '0', '5', '4', '604', '0', '0', '6');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> lôi đình giày </span>', '<span style=color:#DCB5FF> lôi đình giày </span>', '30', '0', '5', '4', '605', '0', '0', '6');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> liệt diễm giày </span>', '<span style=color:#DCB5FF> liệt diễm giày </span>', '30', '0', '5', '4', '606', '0', '0', '6');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> quang mang giày </span>', '<span style=color:#DCB5FF> quang mang giày </span>', '30', '0', '5', '4', '607', '0', '0', '6');

-- ----------------------------
-- Table structure for zhurenwu
-- ----------------------------
DROP TABLE IF EXISTS `zhurenwu`;
CREATE TABLE `zhurenwu` (
  `zrwname` varchar(255) NOT NULL,
  `zrwid` int(11) NOT NULL,
  `zrwyq` varchar(255) NOT NULL,
  `yqcount` varchar(255) NOT NULL,
  `zrwjldj` varchar(255) NOT NULL,
  `zrwjlzb` varchar(255) NOT NULL,
  `zrwjlyp` varchar(255) NOT NULL,
  `zrwjljn` varchar(255) NOT NULL,
  `lastid` int(11) NOT NULL,
  `zrwexp` int(11) NOT NULL,
  `zrwyxb` int(11) NOT NULL,
  PRIMARY KEY (`zrwid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhurenwu
-- ----------------------------
