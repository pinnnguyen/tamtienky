-- ----------------------------
-- Table structure for renwu
-- ----------------------------
DROP TABLE IF EXISTS `renwu`;
CREATE TABLE `renwu`
(
    `rwname`   varchar(255) NOT NULL,
    `rwzl`     int(11) NOT NULL,
    `rwdj`     varchar(255) NOT NULL,
    `rwzb`     varchar(255) NOT NULL,
    `rwexp`    varchar(255) NOT NULL,
    `rwyxb`    varchar(255) NOT NULL,
    `rwid`     int(11) unsigned NOT NULL AUTO_INCREMENT,
    `rwyq`     int(11) NOT NULL,
    `rwinfo`   varchar(255) NOT NULL,
    `rwcount`  int(11) NOT NULL,
    `rwlx`     int(255) NOT NULL,
    `rwyp`     text         NOT NULL,
    `lastrwid` int(11) NOT NULL,
    `rwjineng` varchar(255) NOT NULL,
    PRIMARY KEY (`rwid`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of renwu
-- ----------------------------
INSERT INTO `renwu`
VALUES ('Sơn trư họa loạn', '2', '1|5', '24', '100', '120', '13', '56',
        'Tối cận sơn trư hạ sơn, nhiễu loạn liễu ngã môn đích sinh hoạt, thỉnh bang ngã môn cản bào tha môn', '5', '2',
        '6|3', '0', '');
INSERT INTO `renwu`
VALUES ('Thu tập phong mật', '1', '1|5', '23', '200', '100', '14', '8', 'Thu tập ngạnh sí phong đích phong mật', '10',
        '2', '6|3', '0', '');
INSERT INTO `renwu`
VALUES ('Man!', '2', '1|30,9|50', '38', '500', '500', '19', '76',
        'Ma đạo đối giá phiến đại địa thủy chung bất tử tâm, dụ hoặc liễu ngã môn ngận đa tộc nhân nhập ma liễu, hi vọng nhĩ năng cú giải cứu tha môn',
        '50', '1', '', '-1', '');
INSERT INTO `renwu`
VALUES ('Sát!', '2', '1|50,9|50', '39', '600', '400', '20', '77', 'Ngã hảo phạ, bang ngã sát liễu tha môn! ! !', '50',
        '1', '', '-1', '');
INSERT INTO `renwu`
VALUES ('Xích lân thú bì', '2', '1|10,10|50', '39', '800', '350', '21', '82',
        'Bộ lạc hiện tại khuyết thiểu đại lượng thú bì quá đông', '30', '2', '', '-1', '');
INSERT INTO `renwu`
VALUES ('Ngạnh sí phong nhiễu', '2', '1|15,6|100,7|100', '', '200', '150', '25', '55', 'Ngạnh sí phong nhiễu', '20',
        '3', '', '-1', '');
INSERT INTO `renwu`
VALUES ('Hoa vương đại mụ', '3', '1|20', '25', '200', '100', '24', '11', 'Hoa vương đại mụ', '18', '3', '6|10', '25',
        '');
INSERT INTO `renwu`
VALUES ('Cố nhân', '3', '1|50', '29', '400', '200', '28', '11', 'Cố nhân', '14', '1', '6|10', '-1', '');
INSERT INTO `renwu`
VALUES ('Đồ tẫn yêu vương', '1', '', '45', '2000', '2000', '27', '12', 'Đồ tẫn yêu vương', '150', '1', '9|5', '-1', '');
INSERT INTO `renwu`
VALUES ('Lang hoạn', '2', '1|100', '', '400', '300', '29', '62', 'Lang hoạn thành tai, bang bang ngã môn', '10', '3',
        '', '24', '');