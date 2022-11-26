-- ----------------------------
-- Table structure for fangshi_dj
-- ----------------------------
DROP TABLE IF EXISTS `fangshi_dj`;
CREATE TABLE `fangshi_dj`
(
    `djid`    int(11) NOT NULL,
    `djcount` int(11) NOT NULL,
    `uid`     int(11) NOT NULL,
    `pay`     int(11) NOT NULL,
    `payid`   int(11) unsigned NOT NULL AUTO_INCREMENT,
    `djname`  varchar(255) NOT NULL,
    `djinfo`  varchar(255) NOT NULL,
    PRIMARY KEY (`payid`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fangshi_dj
-- ----------------------------
INSERT INTO `fangshi_dj`
VALUES ('6', '14', '531', '2250', '33', 'Phù lục tàn hiệt-sơ cấp linh', 'Hối đoái phù lục dùng');
INSERT INTO `fangshi_dj`
VALUES ('8', '3', '722', '2000', '76', 'Ngạnh sí phong mật', 'Cứng rắn cánh phong mật ong');
INSERT INTO `fangshi_dj`
VALUES ('1', '53', '505', '2000', '82', 'Cường hóa thạch', 'Cường hóa trang bị dùng đạo cụ');
INSERT INTO `fangshi_dj`
VALUES ('6', '1', '726', '1000', '83', 'Phù lục tàn hiệt-sơ cấp linh', 'Hối đoái phù lục dùng');
