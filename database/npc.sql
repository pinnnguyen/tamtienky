
-- ----------------------------
-- Table structure for npc
-- ----------------------------
DROP TABLE IF EXISTS `npc`;
CREATE TABLE `npc`
(
    `id`     int(11) unsigned NOT NULL AUTO_INCREMENT,
    `nname`  text CHARACTER SET utf8 NOT NULL,
    `nsex`   varchar(255) NOT NULL,
    `ninfo`  text CHARACTER SET utf8 NOT NULL,
    `muban`  text         NOT NULL,
    `taskid` text         NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of npc
-- ----------------------------
INSERT INTO `npc`
VALUES ('11', 'Thôn trường', 'M', 'Trưởng thôn', '', '13,25,24,28');
INSERT INTO `npc`
VALUES ('13', 'Vương lão ngũ', 'M', 'Ai... Một người thời gian, thật thật là khó.', '', '24');
INSERT INTO `npc`
VALUES ('14', 'Hách bỉnh', 'M', 'Ai, cả ngày đứng ở chỗ này thật sự là nhàm chán.', '', '28');
INSERT INTO `npc`
VALUES ('15', 'Chu phú quý [Thương nhân]', 'M', 'Tới tới tới  tiện nghi', 'store.php', '');
INSERT INTO `npc`
VALUES ('16', 'Tụ tiên thành chủ [Phù lục]', 'M', 'Tụ Tiên thành Thành chủ', 'EquipmentExchange.php', '');
INSERT INTO `npc`
VALUES ('18', 'Vương đại mụ', 'F', 'Vương đại mụ', '', '24,29');
INSERT INTO `npc`
VALUES ('17', 'Vân du tiên y [Trị liệu]', 'M', 'Dạo chơi tiên y, tựa hồ đang cái nào đều có thể trông thấy hắn',
        'treatment.php', '');
INSERT INTO `npc`
VALUES ('19', 'Phù lục đại sư', 'M', 'Kỹ năng đại sư, phụ trách hối đoái kỹ năng', 'SkillExchange.php', '');
INSERT INTO `npc`
VALUES ('20', 'Tiểu man', 'F', 'Tiểu Man thật là sợ. . .', '', '20');
INSERT INTO `npc`
VALUES ('21', 'Man tộc trường lão', 'M', 'Man tộc trưởng già', '', '19');
INSERT INTO `npc`
VALUES ('22', 'Man tộc liệp thủ', 'M', 'Già, cạn bất động', '', '21');
INSERT INTO `npc`
VALUES ('23', 'Đoái hoán đại sử', 'M', 'Hối đoái đại sứ', '', '27');
INSERT INTO `npc`
VALUES ('24', 'Chính quy tiên y', 'M', 'Chính quy tiên y', 'Treatment_Level1.php', '');
INSERT INTO `npc`
VALUES ('25', 'Thành chủ tuyết cầm', 'F', 'So dạo chơi càng lành nghề', '', '');
INSERT INTO `npc`
VALUES ('26', 'Môn phái quản lý viên', 'M', 'Thành Viêm Dương thành Thành chủ, Tuyết Cầm', 'Martialartist.php', '');
INSERT INTO `npc`
VALUES ('12', '[Nhục điếm] Hứa thị', 'F', 'Nổi tiếng chua ngoa nhất vùng, nhưng không đâu có thịt ngon bằng ả.', '',
        '');
INSERT INTO `npc`
VALUES ('27', '<span style=color:#F75000>[C.hàng Trang bị] Thiết tượng sư </span>', 'M',
        'Ở đây ta có đồ quý, lại mua ngay...', '', '');
INSERT INTO `npc`
VALUES ('29', '<img src=images/xszdy.png> Hoạt động sứ giả', 'M', 'Hoạt động sứ giả, công cáo các hoạt động quan trọng',
        '', '');
INSERT INTO `npc`
VALUES ('28', '[Dược điếm] Hứa y sinh', 'M', 'Thuốc quý ngàn năm, bổ thận cường dương. 1 người khỏe 3 người vui', '',
        '');
INSERT INTO `npc`
VALUES ('30', '<img src=images/1.gif> Công cáo thiên hạ', 'M', 'Bảng thông báo hoạt động và sự kiện', '', '');
INSERT INTO `npc`
VALUES ('31', '[Vệ binh] Thượng đức', 'M', 'Lâu lắm mới thấy ngươi ghé thăm!!!', '', '');
INSERT INTO `npc`
VALUES ('32', '[Tạp hóa] Chu lão bản', 'M',
        'Nhiều năm bôn tẩu tại các nơi, làm một chút chênh lệch giá mua bán, căn cứ thương nhân nguyên tắc, sẽ ngoài định mức thu lấy một chút đạo cụ.',
        '', '');
INSERT INTO `npc`
VALUES ('33', '[Kỹ năng cao thủ] Phích lịch tôn giả', 'M',
        'Các đời Tế Tự đều là thuộc nhất mạch, trong cõi u minh tựa hồ cũng đã nhất định vận mệnh của hắn, hắn cũng một mực thông qua ma pháp trận dốc lòng nghiên cứu các loại pháp thuật.',
        '', '');
INSERT INTO `npc`
VALUES ('34', 'Tiểu tịch', 'M',
        'Nhiều năm bôn tẩu tại các nơi, làm một chút chênh lệch giá mua bán, căn cứ thương nhân nguyên tắc, sẽ ngoài định mức thu lấy một chút đạo cụ.',
        '', '');
INSERT INTO `npc`
VALUES ('35', 'Quan binh', 'M', 'Thủ thành quan binh, tướng mạo nhưng dung mạo không đẹp nhìn.', '', '');
INSERT INTO `npc`
VALUES ('36', '[Mỹ dung sư] Xương khuê', 'F',
        'Nhu thiện lương, khéo hiểu lòng người, nhu thuận thông minh, quan tâm hiền lành, thanh tú động lòng người, ngại ngùng ngượng ngùng, tựa hồ nam nhân ưa thích phẩm chất đều tập trung ở trên người nàng.',
        '', '');
INSERT INTO `npc`
VALUES ('37', '[Tạp hóa điếm] dược lang', 'M',
        'Ông chủ cửa hàng tạp hóa, nhìn như lười biếng, kì thực khôn khéo hơn người.', '', '');
INSERT INTO `npc`
VALUES ('38', 'Hoàng cung hộ vệ', 'M',
        'Một tên hoàng cung hộ vệ, chuyên môn đối phó những cái kia nghĩ trà trộn vào đến người gây chuyện.', '', '');
INSERT INTO `npc`
VALUES ('39', 'Hành chính quan', 'M', 'Hoàng cung quản gia, trong hoàng cung sự vụ lớn nhỏ đều cần hướng hắn bẩm báo.',
        '', '');
INSERT INTO `npc`
VALUES ('40', 'Lệ linh', 'M', 'Một tên thể trạng khôi ngô phụ nhân, nhìn cực kỳ bưu hãn.', '', '');
INSERT INTO `npc`
VALUES ('41', 'Ma sùng', 'M', 'Một tên thể trạng khôi ngô võ nhân, nhìn cực kỳ bưu hãn.', '', '');
INSERT INTO `npc`
VALUES ('42', '[Khách sạn] Chu mạo', 'M', 'Đây là khách sạn lão bản, nhìn có chút công phu.', '', '');
INSERT INTO `npc`
VALUES ('43', '[Nhục điếm] Bộ lạc', 'M',
        'Nhưng từ khi bại bởi xâm nhập lăng mộ thi trách sau liền nản lòng thoái chí, từ đây tránh tội dân ở giữa.', '',
        '');
INSERT INTO `npc`
VALUES ('44', 'Tây thành môn sĩ binh', 'M',
        'Trông coi cửa thành binh sĩ, chuyên môn đối phó những cái kia nghĩ trà trộn vào đến người gây chuyện.', '',
        '');
INSERT INTO `npc`
VALUES ('45', '<span style=color:red> Pháp lão cương thi </span>', 'M',
        'Là bởi vì phạm phải sai lầm mà bị đuổi ra miếu hòa thượng thi thể thụ trong sơn động kỳ quái lực lượng phục sinh mà thành. Bình thường dưới đất, một khi nghe được có tiếng bước chân liền sẽ từ dưới đất leo ra, dùng hai tay vồ mạnh. Cùng những cương thi khác khác biệt, hắn không thể trọng sinh.',
        '', '');
INSERT INTO `npc`
VALUES ('46', 'Minh trọng đạo quán quán chủ', 'M',
        'Một vị tinh thần lão nhân quắc thước, dưới trán có dài gần tấc râu bạc trắng.', '', '');
INSERT INTO `npc`
VALUES ('47', '[Tạp hóa]Trương thị', 'F',
        'Tại bộ lạc, căn cứ thương nhân nguyên tắc, sẽ ngoài định mức thu lấy một chút đạo cụ.', '', '');
INSERT INTO `npc`
VALUES ('48', '[Thương khố] Khâu thúc', 'M', 'Đây là thương khố lão bản, nhìn có chút công phu.', '', '');
INSERT INTO `npc`
VALUES ('49', '[Dược điếm] Lăng phong', 'M',
        'Danh xưng \"Y một người tiện độc một người\" dùng thuốc kỳ tài kiêm chế độc cao thủ. Giỏi về bào chế các loại tốt nhất dược liệu cùng kịch độc độc dược.',
        '', '');
INSERT INTO `npc`
VALUES ('50', '<span style=color:#F75000>[Trang bị] A long </span>', 'M',
        'Minh nặng tiệm thợ rèn chưởng quỹ kiêm tiểu nhị. Chỗ đánh chế binh khí mặc dù mất tại tinh xảo, lại giá cả lợi ích thực tế, già trẻ không gạt, là người mới học lựa chọn tốt nhất.',
        '', '');
INSERT INTO `npc`
VALUES ('51', '[Ký thụ thương] Thành tú', 'M',
        'Mỗi ngày đều chỉ là yên lặng trợ giúp biên cảnh thôn xóm thanh lý hàng hóa', '', '');
INSERT INTO `npc`
VALUES ('52', '[Lầu Xanh]Thiện anh', 'F', 'Công tử à, vào đây thư giãn với thiếp đi', '', '');
INSERT INTO `npc`
VALUES ('53', '[Tài liêu thương] Thiết trụ', 'M', 'Một cái gật gù đắc ý ngay tại ngâm thơ vật liệu thương.', '', '');
INSERT INTO `npc`
VALUES ('54', '[Thư điếm] Cơ hán', 'M',
        'Sống đến già học đến già là câu thiền ngoài miệng của hắn, đầy bụng kinh luân hắn thông hiểu Truyền Kỳ đại lục bên trên từng cái nghề nghiệp kỹ năng.',
        '', '');
INSERT INTO `npc`
VALUES ('55', '[Dược điếm] Ngọc phân', 'F',
        'Danh xưng \"Y một người tiện độc một người\" dùng thuốc kỳ tài kiêm chế độc cao thủ. Giỏi về bào chế các loại tốt nhất dược liệu cùng kịch độc độc dược.',
        '', '');