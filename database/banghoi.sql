-- ----------------------------
-- Table structure for club
-- ----------------------------
DROP TABLE IF EXISTS `club`;
CREATE TABLE `club`
(
    `clubname` varchar(255) NOT NULL,
    `clubinfo` varchar(255) NOT NULL,
    `clublv`   varchar(255) NOT NULL,
    `clubid`   int(11) NOT NULL AUTO_INCREMENT,
    `clubno1`  int(11) NOT NULL,
    `clubexp`  int(11) NOT NULL,
    `clubyxb`  int(11) NOT NULL,
    `clubczb`  int(11) NOT NULL,
    PRIMARY KEY (`clubid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of club
-- -- ----------------------------
-- INSERT INTO `club`
-- VALUES ('Phong Vân', 'Phong Vân', '1', '1', '423', '0', '0', '0');
-- INSERT INTO `club`
-- VALUES ('Khoái hoạt thành', 'Khoái hoạt thành', '1', '3', '422', '0', '0', '0');
-- INSERT INTO `club`
-- VALUES ('Minh Phượng', 'Minh Phượng', '1', '4', '424', '0', '0', '0');
-- INSERT INTO `club`
-- VALUES ('Đỉnh Kout', 'Zô ae', '1', '5', '501', '0', '0', '0');
-- INSERT INTO `club`
-- VALUES ('Phá Thiên', 'Ahihi', '1', '6', '505', '0', '0', '0');
-- INSERT INTO `club`
-- VALUES ('CuồngTông', 'PhongTửCuồngTông', '1', '7', '516', '0', '0', '0');
-- INSERT INTO `club`
-- VALUES ('Sát Thần', 'Đỉnh', '1', '8', '531', '0', '0', '0');
-- INSERT INTO `club`
-- VALUES ('Mê Dú', 'Ai mê gái thì vô', '1', '9', '480', '0', '0', '0');

-- ----------------------------
-- Table structure for clubplayer
-- ----------------------------
DROP TABLE IF EXISTS `clubplayer`;
CREATE TABLE `clubplayer`
(
    `clubid` int(11) NOT NULL,
    `sid`    varchar(255) NOT NULL,
    `uid`    int(11) NOT NULL,
    `uclv`   int(11) NOT NULL,
    PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -- ----------------------------
-- -- Records of clubplayer
-- -- ----------------------------
-- INSERT INTO `clubplayer`
-- VALUES ('1', '0268fe396bc44c608aa9a18d6a0cb549', '423', '1');
-- INSERT INTO `clubplayer`
-- VALUES ('3', '3c9d1d6c8f225e9e4139cccd830fdd00', '422', '1');
-- INSERT INTO `clubplayer`
-- VALUES ('4', 'f76c11b6601d3a6ce505c616b64ed478', '424', '1');
-- INSERT INTO `clubplayer`
-- VALUES ('5', '7d1526a0dd4803a1fda914bcebd93b47', '501', '1');
-- INSERT INTO `clubplayer`
-- VALUES ('6', '5342074c8ce889f9ce11bcd4f254355f', '505', '1');
-- INSERT INTO `clubplayer`
-- VALUES ('7', '6d269e625ac8a8e57a6f38d43ebbd3c6', '516', '1');
-- INSERT INTO `clubplayer`
-- VALUES ('8', '132a2ae60d254a56c7264893f03a6a25', '531', '1');
-- INSERT INTO `clubplayer`
-- VALUES ('9', 'df1905b2799580cd3861d79686bacbad', '480', '1');