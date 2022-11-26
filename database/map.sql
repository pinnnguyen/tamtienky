-- ----------------------------
-- Table structure for mid
-- ----------------------------
DROP TABLE IF EXISTS `mid`;
CREATE TABLE `mid`
(
    `mname`      text CHARACTER SET utf8 NOT NULL,
    `mid`        int(11) unsigned NOT NULL AUTO_INCREMENT,
    `mgid`       text                            NOT NULL,
    `mnpc`       text                            NOT NULL,
    `mgtime`     datetime                        NOT NULL,
    `ms`         int(11) NOT NULL,
    `midinfo`    text CHARACTER SET utf8 NOT NULL,
    `midboss`    int(11) NOT NULL,
    `mup`        int(11) NOT NULL,
    `mdown`      int(11) NOT NULL,
    `mleft`      int(11) NOT NULL,
    `mright`     int(11) NOT NULL,
    `mqy`        int(11) NOT NULL,
    `playerinfo` varchar(255) CHARACTER SET utf8 NOT NULL,
    `ispvp`      int(255) NOT NULL,
    PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of mid
-- ----------------------------
INSERT INTO `mid`
VALUES ('Tiêu Môn', '225', '', '11,17,12,27,28,29,30,31', '2021-12-12 00:00:00', '0',
        'Trong thôn quảng trường, nhàn rỗi có vẻ như rất nhiều người đều về ở chỗ này', '1', '0', '0', '0', '226', '14',
        'KillVn Hướng Thôn đông đi đến', '0');
INSERT INTO `mid`
VALUES ('Thôn đông', '226', '', '18,32,34,35', '2021-12-12 00:00:00', '0', 'Thôn đông chỗ', '0', '0', '0', '225', '228',
        '14', 'KillVn Hướng Cửa thôn [chiến đấu] đi đến', '0');
INSERT INTO `mid`
VALUES ('Cửa thôn [chiến đấu]', '228', '55|3,56|2', '', '2021-12-13 01:20:17', '0',
        'Cửa thôn, thường thường có quái vật đột kích', '0', '0', '0', '226', '229', '14',
        'KillVn Hướng Tiểu thụ lâm đi đến', '1');
INSERT INTO `mid`
VALUES ('Tiểu thụ lâm', '229', '56|2,57|5', '', '2021-12-11 21:29:48', '0', '', '0', '0', '0', '228', '230', '14',
        'KillVn Hướng Rừng cây chỗ sâu đi đến', '1');
INSERT INTO `mid`
VALUES ('Rừng cây chỗ sâu', '230', '58|4', '', '2021-12-11 21:52:03', '0', '', '0', '0', '0', '229', '231', '14',
        'KillVn Hướng Sơn lâm bên ngoài đi đến', '1');
INSERT INTO `mid`
VALUES ('Sơn lâm bên ngoài', '231', '62|3,61|2', '', '2021-12-11 20:27:01', '0', 'Sơn lâm bên ngoài', '0', '0', '0',
        '230', '232', '14', 'KillVn Hướng Trong núi hồ nước đi đến', '1');
INSERT INTO `mid`
VALUES ('Trong núi hồ nước', '232', '63|2,64|5', '', '2021-12-11 21:33:16', '0', 'Trong núi hồ nước', '0', '0', '0',
        '231', '233', '14', 'KillVn Hướng Trong hồ Kojima đi đến', '1');
INSERT INTO `mid`
VALUES ('Trong hồ Kojima', '233', '65|6', '', '2021-12-11 21:43:22', '0', 'Trong hồ Kojima', '0', '0', '0', '232',
        '235', '14', 'KillVn Hướng Dãy núi hiện lên ở phương đông miệng đi đến', '1');
INSERT INTO `mid`
VALUES ('Dãy núi hiện lên ở phương đông miệng', '235', '66|3,67|4', '', '2021-12-11 21:39:44', '0', '', '0', '0', '0',
        '233', '236', '14', 'KillVn Hướng Thành tây ngoại ô đi đến', '1');
INSERT INTO `mid`
VALUES ('Thành tây ngoại ô', '236', '69|5', '', '2021-12-11 21:52:05', '0', '', '0', '0', '0', '235', '237', '16',
        'KillVn Hướng Tụ Tiên thành tây đi đến', '1');
INSERT INTO `mid`
VALUES ('Tụ Tiên thành tây', '237', '', '13,14,36,37', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '236', '238',
        '16', 'KillVn Hướng Tụ Tiên tây nhai đi đến', '1');
INSERT INTO `mid`
VALUES ('Tụ Tiên tây nhai', '238', '', '15', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '237', '239', '16',
        'KillVn Hướng Tụ ở giữa tòa tiên thành đi đến', '1');
INSERT INTO `mid`
VALUES ('Tụ ở giữa tòa tiên thành', '239', '', '16,17,38,39,29,30', '2021-12-12 00:00:00', '0', '', '0', '0', '273',
        '238', '240', '16', 'KillVn Hướng Tụ Tiên Đông nhai đi đến', '0');
INSERT INTO `mid`
VALUES ('Tụ Tiên Đông nhai', '240', '', '23,40,41,42', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '239', '241',
        '16', 'KillVn Hướng Tụ Tiên Thành Đông đi đến', '1');
INSERT INTO `mid`
VALUES ('Tụ Tiên Thành Đông', '241', '', '', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '240', '242', '16',
        'KillVn Hướng Thành Đông ngoại ô đi đến', '1');
INSERT INTO `mid`
VALUES ('Thành Đông ngoại ô', '242', '70|3,71|2', '', '2021-12-11 14:46:15', '0', '', '0', '0', '0', '241', '243',
        '16', 'KillVn Hướng Ma hóa động quật đi đến', '1');
INSERT INTO `mid`
VALUES ('Ma hóa động quật', '243', '72|6', '', '2021-12-11 10:46:20', '0', '', '0', '246', '0', '242', '244', '16',
        'KillVn Hướng Trong bộ lạc đi đến', '1');
INSERT INTO `mid`
VALUES ('Động quật lối ra', '244', '74|5', '', '2021-12-11 03:38:50', '0', '', '0', '0', '0', '243', '245', '17',
        'MjnhNgo Hướng Trong bộ lạc đi đến', '1');
INSERT INTO `mid`
VALUES ('Ma hóa bình nguyên', '245', '73|4', '', '2021-12-11 16:00:44', '0', '', '0', '0', '0', '244', '247', '17',
        'Nguyệt Hướng Bộ lạc tây ngoại ô đi đến', '1');
INSERT INTO `mid`
VALUES ('Động quật chỗ sâu', '246', '75|1', '', '2021-12-11 21:27:42', '200', '', '0', '0', '243', '0', '0', '17',
        'MjnhNgo Hướng Ma hóa động quật đi đến', '1');
INSERT INTO `mid`
VALUES ('Bộ lạc tây ngoại ô', '247', '76|4,77|2', '', '2021-12-11 16:17:14', '0', '', '0', '0', '0', '245', '248',
        '17', 'ngocljn Hướng Trong bộ lạc đi đến', '1');
INSERT INTO `mid`
VALUES ('Bộ lạc tây', '248', '', '20,43,44', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '247', '249', '17',
        'KillVn Hướng Trong bộ lạc đi đến', '1');
INSERT INTO `mid`
VALUES ('Trong bộ lạc', '249', '', '15,17,21,47,30,48,49', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '248', '250',
        '17', 'KillVn Hướng Bộ lạc đông đi đến', '0');
INSERT INTO `mid`
VALUES ('Bộ lạc đông', '250', '', '19,22', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '249', '251', '17',
        'KillVn Hướng Bộ lạc Đông Giao đi đến', '1');
INSERT INTO `mid`
VALUES ('Bộ lạc Đông Giao', '251', '78|6', '', '2021-12-11 12:07:04', '0', '', '0', '0', '0', '250', '252', '17',
        'KillVn Hướng Chuông gió cổ trấn đi đến', '1');
INSERT INTO `mid`
VALUES ('Rất bên bờ sông', '252', '78|2,79|4', '', '2021-12-11 00:49:32', '0', '', '0', '0', '0', '251', '253', '17',
        'Phucloc Hướng Qua sông bến cảng đi đến', '1');
INSERT INTO `mid`
VALUES ('Qua sông bến cảng', '253', '80|5', '', '2021-12-11 16:01:54', '0', '', '0', '0', '0', '252', '254', '17',
        'Hải Sơn Hướng Thôn quảng trường đi đến', '1');
INSERT INTO `mid`
VALUES ('Rất bên kia bờ sông', '254', '81|6', '', '2021-12-11 03:39:34', '0', '', '0', '0', '0', '253', '255', '17',
        'Hải Sơn Hướng Qua sông bến cảng đi đến', '1');
INSERT INTO `mid`
VALUES ('Không biết sơn lĩnh 1', '255', '82|7', '', '2021-12-11 13:12:54', '0', '', '0', '0', '0', '254', '256', '18',
        'Tử Mộc  Hướng Không biết sơn lĩnh 2 đi đến', '1');
INSERT INTO `mid`
VALUES ('Không biết sơn lĩnh 2', '256', '83|5', '', '2021-12-11 21:40:13', '30', '', '0', '257', '0', '255', '258',
        '18', 'Tử Mộc  Hướng Không biết sơn lĩnh 3 đi đến', '1');
INSERT INTO `mid`
VALUES ('Không người sơn động', '257', '84|1', '', '2021-12-11 18:44:19', '200', '', '0', '0', '256', '0', '0', '18',
        'Hải Sơn Hướng Không biết sơn lĩnh 2 đi đến', '1');
INSERT INTO `mid`
VALUES ('Không biết sơn lĩnh 3', '258', '85|6', '', '2021-12-10 23:58:27', '200', '', '0', '0', '0', '256', '259', '18',
        'Tử Mộc  Hướng Không biết sơn lĩnh 2 đi đến', '1');
INSERT INTO `mid`
VALUES ('Chuông gió cổ trấn tây', '259', '', '15,51,53', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '258', '260',
        '18', 'Hải Sơn Hướng Không biết sơn lĩnh 3 đi đến', '1');
INSERT INTO `mid`
VALUES ('Chuông gió cổ trấn', '260', '', '24,46,50,52,54,55,30', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '259',
        '261', '18', 'KillVn Hướng Chuông gió cổ trấn đông đi đến', '0');
INSERT INTO `mid`
VALUES ('Chuông gió cổ trấn đông', '261', '', '19,56', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '260', '262',
        '18', 'MjnhNgo Hướng Viêm Dương thành trung tâm đi đến', '1');
INSERT INTO `mid`
VALUES ('Yêu thú rừng cây ngoại bộ 1', '262', '86|3', '', '2021-12-11 13:12:46', '200', '', '0', '0', '0', '261', '263',
        '18', 'Hải Sơn Hướng Chuông gió cổ trấn đông đi đến', '1');
INSERT INTO `mid`
VALUES ('Yêu thú rừng cây ngoại bộ 2', '263', '87|7', '', '2021-12-11 19:46:29', '0', '', '0', '0', '0', '262', '264',
        '18', 'Shinsoo Hướng Rừng cây chỗ sâu Yêu Thú sơn đi đến', '1');
INSERT INTO `mid`
VALUES ('Rừng cây chỗ sâu Yêu Thú sơn', '264', '88|5', '', '2021-12-11 19:49:02', '100', '', '0', '0', '0', '263',
        '265', '18', 'Shinsoo Hướng Vạn Yêu Sơn dưới đáy đi đến', '1');
INSERT INTO `mid`
VALUES ('Vạn Yêu Sơn dưới đáy', '265', '89|4,90|4', '', '2021-12-11 01:36:18', '0', '', '0', '0', '0', '264', '266',
        '18', 'Shinsoo Hướng Vạn Yêu Sơn eo đi đến', '1');
INSERT INTO `mid`
VALUES ('Vạn Yêu Sơn eo', '266', '91|3,92|5', '', '2021-12-10 22:59:06', '0', '', '0', '268', '267', '265', '269', '18',
        'Shinsoo Hướng Yêu Vương ngoài điện vây đi đến', '1');
INSERT INTO `mid`
VALUES ('Yêu Vương ngoài điện vây', '267', '94|3,95|3', '24,30', '2021-12-10 22:32:34', '0', '', '0', '266', '0', '0',
        '0', '20', 'Phucloc Hướng Vạn Yêu Sơn eo đi đến', '1');
INSERT INTO `mid`
VALUES ('Vạn Yêu Sơn đỉnh', '268', '93|7', '', '2021-12-10 22:58:57', '0', '', '0', '0', '266', '0', '0', '18',
        'Shinsoo Hướng Vạn Yêu Sơn eo đi đến', '1');
INSERT INTO `mid`
VALUES ('Viêm Dương vùng ngoại ô', '269', '96|4,97|4', '', '2021-12-11 02:23:42', '0', '', '0', '0', '0', '266', '270',
        '21', 'Shinsoo Hướng Vạn Yêu Sơn eo đi đến', '1');
INSERT INTO `mid`
VALUES ('Viêm Dương tây ngoại ô', '270', '98|7', '', '2021-12-11 03:25:53', '0', '', '0', '0', '0', '269', '271', '21',
        'Shinsoo Hướng Viêm Dương vùng ngoại ô đi đến', '1');
INSERT INTO `mid`
VALUES ('Viêm Dương tây nhai', '271', '', '', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '270', '272', '21',
        'Shinsoo Hướng Viêm Dương tây ngoại ô đi đến', '1');
INSERT INTO `mid`
VALUES ('Viêm Dương thành trung tâm', '272', '', '24,25,30', '2021-12-12 00:00:00', '0', '', '0', '0', '0', '271', '0',
        '21', 'MjnhNgo Hướng Thôn quảng trường đi đến', '0');
INSERT INTO `mid`
VALUES ('Môn phái quản lý chỗ', '273', '', '26', '2021-12-12 00:00:00', '0', '', '0', '239', '0', '0', '0', '16',
        'DạLy Hướng Tụ ở giữa tòa tiên thành đi đến', '1');