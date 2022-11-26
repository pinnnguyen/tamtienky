-- ----------------------------
-- Table structure for guaiwu
-- ----------------------------
DROP TABLE IF EXISTS `guaiwu`;
CREATE TABLE `guaiwu`
(
    `gname` text CHARACTER SET utf8 NOT NULL,
    `glv`   text         NOT NULL,
    `id`    int(11) NOT NULL AUTO_INCREMENT,
    `ginfo` text CHARACTER SET utf8 NOT NULL,
    `gsex`  varchar(255) NOT NULL,
    `ghp`   int(11) NOT NULL,
    `ggj`   int(11) NOT NULL,
    `gfy`   int(11) NOT NULL,
    `gbj`   int(11) NOT NULL,
    `gxx`   int(11) NOT NULL,
    `gzb`   text         NOT NULL,
    `dljv`  int(11) NOT NULL,
    `gdj`   text         NOT NULL,
    `djjv`  int(11) NOT NULL,
    `gyp`   text         NOT NULL,
    `ypjv`  int(11) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of guaiwu
-- ----------------------------
INSERT INTO `guaiwu`
VALUES ('Ngạnh sí phong', '1', '55', 'Ngạnh sí phong', 'M', '40', '5', '3', '0', '0', '23', '10', '8', '30', '6', '8');
INSERT INTO `guaiwu`
VALUES ('Sơn trư', '1', '56', 'Sơn thượng đích chư', 'M', '40', '4', '4', '0', '0', '24', '10', '1', '2', '', '0');
INSERT INTO `guaiwu`
VALUES ('Lão hổ', '2', '57', 'Hung mãnh đích lão hổ', 'M', '70', '8', '6', '0', '0', '25', '10', '1', '3', '', '0');
INSERT INTO `guaiwu`
VALUES ('Hoa yêu', '3', '58', 'Hoa yêu, tiểu yêu', 'F', '110', '15', '7', '0', '0', '26', '10', '1', '4', '', '0');
INSERT INTO `guaiwu`
VALUES ('Cuồng bạo dã lang', '6', '62', 'Cuồng bạo dã lang', 'M', '190', '23', '19', '0', '0', '28', '20', '1', '5', '',
        '0');
INSERT INTO `guaiwu`
VALUES ('Thị huyết dã lang', '5', '61', 'Thị huyết dã lang', 'M', '160', '22', '16', '0', '0', '28', '20', '1', '5', '',
        '0');
INSERT INTO `guaiwu`
VALUES ('Long tước', '7', '63', 'Long tước', 'F', '220', '27', '22', '0', '0', '27', '20', '1,6', '8', '', '0');
INSERT INTO `guaiwu`
VALUES ('Bách tuế long tước', '8', '64', 'Bách tuế long tước', 'M', '250', '32', '25', '0', '0', '29', '20', '1,6', '7',
        '', '0');
INSERT INTO `guaiwu`
VALUES ('Hà hoa hoa mị', '9', '65', 'Hà hoa hoa mị', 'F', '280', '35', '28', '0', '0', '30', '21', '6', '17', '', '0');
INSERT INTO `guaiwu`
VALUES ('Huyết lôi ưng', '12', '66', 'Huyết lôi ưng', 'M', '370', '46', '37', '0', '0', '32', '21', '1', '6', '', '0');
INSERT INTO `guaiwu`
VALUES ('Lôi ưng', '10', '67', 'Lôi ưng', 'M', '310', '38', '31', '0', '0', '31', '21', '1', '5', '', '0');
INSERT INTO `guaiwu`
VALUES ('Ma tu sĩ', '13', '69', 'Ma tu sĩ', 'M', '400', '49', '40', '0', '0', '', '22', '1', '6', '', '0');
INSERT INTO `guaiwu`
VALUES ('Ma hóa chi thông tí viên', '16', '70', 'Ma hóa chi thông tí viên', 'M', '490', '61', '50', '0', '0', '36',
        '22', '', '5', '6', '5');
INSERT INTO `guaiwu`
VALUES ('Ma hóa chi linh hầu', '17', '71', 'Ma hóa chi linh hầu', 'M', '520', '65', '53', '0', '0', '', '5', '1', '5',
        '', '5');
INSERT INTO `guaiwu`
VALUES ('Ma hóa chi kiếm ma', '18', '72', 'Ma hóa chi kiếm ma', 'M', '550', '68', '56', '0', '0', '', '5', '7', '20',
        '', '5');
INSERT INTO `guaiwu`
VALUES ('Ma hóa chi ấu xỉ miêu nữ', '19', '73', 'Ma hóa chi ấu xỉ miêu nữ', 'F', '580', '72', '59', '0', '0', '37', '5',
        '1,7', '5', '7', '5');
INSERT INTO `guaiwu`
VALUES ('Ma hóa chi nha nhân', '20', '74', 'Ma hóa chi nha nhân', 'M', '610', '76', '62', '0', '0', '', '5', '7', '5',
        '', '5');
INSERT INTO `guaiwu`
VALUES ('Ma hóa sơn tiêu', '21', '75', 'Ma hóa sơn tiêu', 'M', '640', '80', '65', '0', '0', '33', '20', '1,7', '20',
        '7', '20');
INSERT INTO `guaiwu`
VALUES ('Nhập ma man tộc chiến sĩ', '21', '76', 'Nhập ma đích man tộc chiến sĩ', 'M', '640', '80', '65', '0', '0',
        '34,35', '7', '1', '7', '7', '7');
INSERT INTO `guaiwu`
VALUES ('Nhập ma man tộc tế tự', '22', '77', 'Nhập ma đích man tộc tế tự', 'F', '670', '84', '68', '0', '0', '35', '7',
        '1', '7', '7', '7');
INSERT INTO `guaiwu`
VALUES ('Ma hóa man lang', '23', '78', 'Ma hóa đích man lang', 'M', '700', '87', '71', '0', '0', '', '7', '1', '6', '',
        '7');
INSERT INTO `guaiwu`
VALUES ('Ma hóa cuồng sư', '24', '79', 'Ma hóa cuồng sư', 'M', '730', '91', '74', '0', '0', '', '7', '1', '6', '', '7');
INSERT INTO `guaiwu`
VALUES ('Ma đạo khống thú sư', '26', '80', '', 'M', '790', '99', '81', '0', '0', '', '7', '1', '6', '', '7');
INSERT INTO `guaiwu`
VALUES ('Bách niên xà quái', '27', '81', 'Tu luyện bách niên đích xà quái', 'M', '820', '103', '84', '0', '0', '', '7',
        '1', '8', '', '7');
INSERT INTO `guaiwu`
VALUES ('Xích lân thú', '28', '82', 'Xích lân thú', 'M', '850', '106', '87', '0', '0', '', '7', '1,10', '7', '', '7');
INSERT INTO `guaiwu`
VALUES ('Cức thử', '29', '83', 'Cức thử', 'M', '880', '110', '90', '0', '0', '38', '7', '9', '20', '', '7');
INSERT INTO `guaiwu`
VALUES ('Oán linh', '30', '84', 'Oán linh', 'F', '1510', '204', '183', '0', '0', '39', '8', '1', '9', '', '8');
INSERT INTO `guaiwu`
VALUES ('Nham ma', '31', '85', 'Nham ma', 'M', '1560', '211', '189', '0', '0', '40', '8', '1', '8', '', '8');
INSERT INTO `guaiwu`
VALUES ('Thị linh thử yêu', '32', '86', 'Thị linh thử yêu', 'M', '1610', '218', '195', '0', '0', '41', '8', '1', '9',
        '', '8');
INSERT INTO `guaiwu`
VALUES ('Xích luyện phúc xà yêu', '33', '87', 'Xích luyện phúc xà yêu', 'F', '1660', '224', '201', '0', '0', '42', '9',
        '1', '9', '8', '9');
INSERT INTO `guaiwu`
VALUES ('Bách niên xuyên sơn giáp', '34', '88', 'Bách niên xuyên sơn giáp Bì hậu khí huyết cường thịnh', 'M', '2000',
        '150', '330', '0', '0', '44', '9', '1', '9', '8', '9');
INSERT INTO `guaiwu`
VALUES ('Thanh cổ hổ', '35', '89', 'Thanh cổ hổ', 'M', '1760', '238', '214', '0', '0', '', '5', '1', '5', '', '5');
INSERT INTO `guaiwu`
VALUES ('Liệt châu ưng', '37', '90', 'Liệt châu ưng', 'M', '1860', '252', '226', '0', '0', '', '5', '1', '5', '9', '5');
INSERT INTO `guaiwu`
VALUES ('Bạch báo yêu', '38', '91', 'Bạch báo yêu', 'M', '1910', '258', '232', '0', '0', '43', '5', '1', '5', '', '5');
INSERT INTO `guaiwu`
VALUES ('Lôi la yêu', '39', '92', 'Lôi la yêu', 'F', '1960', '265', '238', '0', '0', '', '5', '1', '5', '', '5');
INSERT INTO `guaiwu`
VALUES ('Huyết nha', '40', '93', 'Huyết nha', 'M', '2010', '272', '244', '0', '0', '', '5', '1', '10', '', '5');
INSERT INTO `guaiwu`
VALUES ('Huyết nha vương', '55', '94', 'Huyết nha vương', 'M', '5860', '594', '558', '0', '0', '', '8', '12', '1', '',
        '8');
INSERT INTO `guaiwu`
VALUES ('Hắc diễm yêu vương', '56', '95', 'Hắc diễm yêu vương', 'F', '4530', '653', '454', '0', '0', '', '5', '12', '1',
        '', '5');
INSERT INTO `guaiwu`
VALUES ('Kiếp sát giả', '45', '96', 'Kiếp sát giả', 'M', '2260', '306', '275', '0', '0', '46', '5', '1', '5', '', '5');
INSERT INTO `guaiwu`
VALUES ('Tinh duệ bạn binh', '47', '97', 'Tinh duệ bạn binh', 'M', '2360', '320', '287', '0', '0', '47', '5', '', '5',
        '', '5');
INSERT INTO `guaiwu`
VALUES ('Bạn binh đội trường', '50', '98', 'Bạn binh đội trường', 'M', '3510', '440', '405', '0', '0', '48', '5', '',
        '5', '', '5');
