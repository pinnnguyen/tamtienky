-- ----------------------------
-- Table structure for qy
-- ----------------------------
DROP TABLE IF EXISTS `qy`;
CREATE TABLE `qy`
(
    `qyid`   int(10) unsigned NOT NULL AUTO_INCREMENT,
    `qyname` varchar(255) NOT NULL,
    `mid`    int(11) NOT NULL,
    PRIMARY KEY (`qyid`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qy
-- ----------------------------
INSERT INTO `qy`
VALUES ('14', 'Tân thủ thôn', '225');
INSERT INTO `qy`
VALUES ('16', 'Tụ tiên thành', '239');
INSERT INTO `qy`
VALUES ('17', 'Ma hóa khu vực', '249');
INSERT INTO `qy`
VALUES ('18', 'Vạn thiên sơn vực', '260');
INSERT INTO `qy`
VALUES ('20', 'Yêu vương điện', '267');
INSERT INTO `qy`
VALUES ('21', 'Viêm dương thành', '272');
INSERT INTO `qy`
VALUES ('22', 'Trung tâm mua sắm', '272');
INSERT INTO `qy`
VALUES ('23', 'Quảng trường trung tâm', '272');
INSERT INTO `qy`
VALUES ('24', 'Khu rèn luyện', '272');
INSERT INTO `qy`
VALUES ('25', 'Thung lũng hoang dã', '272');
INSERT INTO `qy`
VALUES ('26', 'Mỏ chất thải', '272');
INSERT INTO `qy`
VALUES ('27', 'Bãi biển phía Nam', '272');
INSERT INTO `qy`
VALUES ('28', 'Bên ngoài bãi biển phía Nam', '272');
INSERT INTO `qy`
VALUES ('29', 'Hang động dã thú', '272');
INSERT INTO `qy`
VALUES ('30', 'Mỏ bỏ hoang', '272');
INSERT INTO `qy`
VALUES ('31', 'Đảo ước mơ', '272');
INSERT INTO `qy`
VALUES ('32', 'Ngoại ô Đảo ước mơ', '272');
INSERT INTO `qy`
VALUES ('33', 'Bên ngoài Đền Shige', '272');
INSERT INTO `qy`
VALUES ('34', 'Bên trong Đền Shige', '272');
INSERT INTO `qy`
VALUES ('35', 'Bên ngoài đền Woma', '272');
INSERT INTO `qy`
VALUES ('36', 'Bên trong đền Woma', '272');
INSERT INTO `qy`
VALUES ('37', 'Bên ngoài đền Zuma', '272');
INSERT INTO `qy`
VALUES ('38', 'Bên trong đền Zuma', '272');
INSERT INTO `qy`
VALUES ('39', 'Rừng cây', '272');
INSERT INTO `qy`
VALUES ('40', 'Thung lũng Chết', '272');
INSERT INTO `qy`
VALUES ('41', 'Vùng ngoại ô Rồng Quỷ', '272');
INSERT INTO `qy`
VALUES ('42', 'Hang Kiến', '272');
INSERT INTO `qy`
VALUES ('43', 'Đảo Panyu', '272');
INSERT INTO `qy`
VALUES ('44', 'Thung Lũng Giun', '272');
INSERT INTO `qy`
VALUES ('45', 'Thung lũng Wannian', '272');