-- ----------------------------
-- Table structure for daoju
-- ----------------------------
DROP TABLE IF EXISTS `daoju`;
CREATE TABLE `daoju`
(
    `djname` varchar(255) NOT NULL,
    `djzl`   varchar(255) NOT NULL,
    `djinfo` varchar(255) NOT NULL,
    `djid`   int(11) NOT NULL AUTO_INCREMENT,
    `djyxb`  int(11) NOT NULL,
    PRIMARY KEY (`djid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of daoju
-- ----------------------------
INSERT INTO `daoju`
VALUES ('Cường hóa thạch', '2', 'Cường hóa trang bị dùng đạo cụ', '1', '10');
INSERT INTO `daoju`
VALUES ('Phù lục tàn hiệt-sơ cấp linh', '', 'Hối đoái phù lục dùng', '6', '1');
INSERT INTO `daoju`
VALUES ('Phù lục tàn hiệt-sơ cấp ma', '', 'Hối đoái phù lục', '7', '1');
INSERT INTO `daoju`
VALUES ('Ngạnh sí phong mật', '', 'Cứng rắn cánh phong mật ong', '8', '1');
INSERT INTO `daoju`
VALUES ('Phù lục tàn hiệt-sơ cấp man', '', 'Phù lục Tàn Hiệt - sơ cấp rất', '9', '1');
INSERT INTO `daoju`
VALUES ('Phù lục tàn hiệt-trung cấp linh', '', 'Phù lục Tàn Hiệt - trung cấp linh', '10', '5');
INSERT INTO `daoju`
VALUES ('Sơ cấp ma linh', '', 'Sơ cấp Ma Linh', '11', '10');
INSERT INTO `daoju`
VALUES ('[thần khí] yêu vương kiếm toái phiến', '', '[Thần khí] Yêu Vương kiếm mảnh vỡ', '12', '100');