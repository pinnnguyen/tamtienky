-- ----------------------------
-- Table structure for fangshi_zb
-- ----------------------------
DROP TABLE IF EXISTS `fangshi_zb`;
CREATE TABLE `fangshi_zb`
(
    `zbnowid`  int(11) NOT NULL,
    `zbname`   varchar(255) NOT NULL,
    `qianghua` int(11) NOT NULL,
    `pay`      int(11) NOT NULL,
    `payid`    int(11) NOT NULL AUTO_INCREMENT,
    `zbinfo`   varchar(255) NOT NULL,
    `zbgj`     int(11) NOT NULL,
    `zbfy`     int(11) NOT NULL,
    `zbbj`     int(11) NOT NULL,
    `zbxx`     int(11) NOT NULL,
    `zbid`     int(11) NOT NULL,
    `uid`      int(11) NOT NULL,
    `sid`      int(11) NOT NULL,
    `zbhp`     int(11) NOT NULL,
    `zblv`     int(11) NOT NULL,
    UNIQUE KEY `payid` (`payid`),
    UNIQUE KEY `zbnowid` (`zbnowid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fangshi_zb
-- ----------------------------
INSERT INTO `fangshi_zb`
VALUES ('76533', 'Phổ thông man giáp', '0', '5000', '1', 'Phổ thông man giáp', '0', '9', '2', '0', '35', '479',
        '913220000', '62', '0');