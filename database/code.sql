-- ----------------------------
-- Records of duihuan
-- ----------------------------
INSERT INTO `duihuan`
VALUES ('DA71AAF69D931648', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan`
VALUES ('49852B2FA355EA54', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan`
VALUES ('C49212A00B3B11AB', '', '1|50', '', '0', '0', '20', '0', '10');
INSERT INTO `duihuan`
VALUES ('26E3757F842DEABA', '', '8|10,12|20', '', '0', '0', '30', '0', '13');
INSERT INTO `duihuan`
VALUES ('5FBC09F7745B3174', '', '8|10,12|20', '', '0', '0', '30', '0', '19');
INSERT INTO `duihuan`
VALUES ('1B958DC758D1570C', '', '1|50', '', '0', '0', '20', '0', '7');
INSERT INTO `duihuan`
VALUES ('0D959B010FF1EF9D', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan`
VALUES ('05EDE59AA14DD17A', '23,24,25,26,27,28,29', '', '', '0', '0', '12', '0', '3');
INSERT INTO `duihuan`
VALUES ('BBAABF0C1E46ED70', '', '8|10,12|20', '', '0', '0', '30', '0', '17');
INSERT INTO `duihuan`
VALUES ('EC13CD0E5601D140', '23,24,25,26,27,28,29', '', '', '0', '0', '12', '0', '6');
INSERT INTO `duihuan`
VALUES ('98F01CDB439A05EF', '', '1|50', '', '0', '0', '20', '0', '9');
INSERT INTO `duihuan`
VALUES ('E3E4ED0CD757A3CF', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan`
VALUES ('870C85455682BC80', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan`
VALUES ('870C85455682BC82', '33', '1|10000', '9|1000', '10000', '10000', 'VIP code', '0', '1');
INSERT INTO `duihuan`
VALUES ('EC13CD0E5601D142', '23,24,25,26,27,28,29', '1|10000', '9|1000', '10000', '10000', 'VIP code', '0', '6');

-- ----------------------------
-- Table structure for duihuan_copy
-- ----------------------------
DROP TABLE IF EXISTS `duihuan_copy`;
CREATE TABLE `duihuan_copy`
(
    `dhm`    varchar(255) NOT NULL,
    `dhzb`   varchar(255) DEFAULT NULL,
    `dhdj`   varchar(255) DEFAULT NULL,
    `dhyp`   varchar(255) DEFAULT NULL,
    `dhyxb`  int(11) NOT NULL,
    `dhczb`  int(11) NOT NULL,
    `dhname` varchar(255) DEFAULT NULL,
    `dhexp`  int(11) NOT NULL,
    `dhid`   int(11) unsigned NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (`dhid`, `dhm`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of duihuan_copy
-- ----------------------------
INSERT INTO `duihuan_copy`
VALUES ('DA71AAF69D931648', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan_copy`
VALUES ('49852B2FA355EA54', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan_copy`
VALUES ('C49212A00B3B11AB', '', '1|50', '', '0', '0', '20', '0', '10');
INSERT INTO `duihuan_copy`
VALUES ('26E3757F842DEABA', '', '8|10,12|20', '', '0', '0', '30', '0', '13');
INSERT INTO `duihuan_copy`
VALUES ('5FBC09F7745B3174', '', '8|10,12|20', '', '0', '0', '30', '0', '19');
INSERT INTO `duihuan_copy`
VALUES ('1B958DC758D1570C', '', '1|50', '', '0', '0', '20', '0', '7');
INSERT INTO `duihuan_copy`
VALUES ('0D959B010FF1EF9D', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan_copy`
VALUES ('240C93CAEA5F1FA9', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan_copy`
VALUES ('05EDE59AA14DD17A', '23,24,25,26,27,28,29', '', '', '0', '0', '12', '0', '3');
INSERT INTO `duihuan_copy`
VALUES ('BBAABF0C1E46ED70', '', '8|10,12|20', '', '0', '0', '30', '0', '17');
INSERT INTO `duihuan_copy`
VALUES ('EC13CD0E5601D140', '23,24,25,26,27,28,29', '', '', '0', '0', '12', '0', '6');
INSERT INTO `duihuan_copy`
VALUES ('98F01CDB439A05EF', '', '1|50', '', '0', '0', '20', '0', '9');
INSERT INTO `duihuan_copy`
VALUES ('E3E4ED0CD757A3CF', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');
INSERT INTO `duihuan_copy`
VALUES ('870C85455682BC80', '33', '1|100', '9|100', '0', '0', 'Tân thủ thăng cấp bao', '88888', '1');