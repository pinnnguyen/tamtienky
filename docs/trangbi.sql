-- ----------------------------
-- Table structure for zhuangbei
-- ----------------------------
DROP TABLE IF EXISTS `zhuangbei`;
CREATE TABLE `zhuangbei` (
                             `zbname` varchar(255) NOT NULL,
                             `zbinfo` varchar(255) NOT NULL,
                             `zbgj` varchar(255) NOT NULL,
                             `zbfy` varchar(255) NOT NULL,
                             `zbbj` varchar(255) NOT NULL,
                             `zbxx` varchar(255) NOT NULL,
                             `zbid` int(11) NOT NULL AUTO_INCREMENT,
                             `zbhp` varchar(255) NOT NULL,
                             `zblv` int(11) NOT NULL,
                             `zbtool` int(11) NOT NULL,
                             PRIMARY KEY (`zbid`)
) ENGINE=MyISAM AUTO_INCREMENT=608 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhuangbei
-- ----------------------------
INSERT INTO `zhuangbei` VALUES ('Tân thủ mộc kiếm', 'Tân thủ sử dụng đích mộc kiếm', '1', '0', '0', '1', '23', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('Tân thủ bố y', 'Tân thủ sử dụng đích bố y', '0', '2', '0', '0', '24', '10', '0', '3');
INSERT INTO `zhuangbei` VALUES ('Minh nguyệt chi kiếm', 'Minh nguyệt minh nguyệt', '3', '0', '0', '1', '25', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('Thanh phong hộ giáp', 'Thủ tự thanh phong thường bạn', '0', '5', '1', '0', '26', '25', '0', '3');
INSERT INTO `zhuangbei` VALUES ('Bách luyện thanh cương kiếm', 'Bách luyện thanh cương kiếm', '5', '0', '0', '2', '27', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('Bách luyện khinh nhị giáp', 'Bách luyện khinh nhị giáp', '0', '8', '0', '0', '28', '40', '0', '3');
INSERT INTO `zhuangbei` VALUES ('Sơ cấp thị huyết kiếm', 'Sơ cấp thị huyết kiếm', '2', '0', '1', '3', '29', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('Khinh nhị khôi', 'Khinh nhị khôi', '0', '7', '1', '0', '30', '50', '0', '2');
INSERT INTO `zhuangbei` VALUES ('Lôi ưng hộ giáp', 'Lôi ưng hộ giáp', '0', '8', '1', '0', '31', '55', '0', '3');
INSERT INTO `zhuangbei` VALUES ('Huyết ưng hạng liên', 'Huyết ưng hạng liên', '0', '3', '3', '5', '32', '20', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Hắc ma chủy thủ', 'Hắc ma chủy thủ', '14', '0', '3', '4', '33', '0', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Trung cấp phệ huyết kiếm', 'Trung cấp phệ huyết kiếm', '15', '0', '0', '4', '34', '0', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Phổ thông man giáp', 'Phổ thông man giáp', '0', '9', '2', '0', '35', '62', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Vẫn thiết vũ côn', 'Vẫn thiết vũ côn', '8', '3', '1', '1', '36', '0', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Nguyệt luân thương', 'Nguyệt luân thương', '10', '0', '0', '2', '37', '0', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Hậu thổ giáp', 'Hậu thổ giáp', '0', '10', '1', '0', '38', '120', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Thị hồn cốt nhẫn', 'Thị hồn cốt nhẫn', '17', '0', '5', '3', '39', '0', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Bách trảm cuồng lan thương', 'Bách trảm cuồng lan', '20', '0', '0', '5', '40', '0', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Duyên phong · cầu lôi y', 'Duyên phong · cầu lôi y', '0', '10', '0', '0', '41', '150', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Duyên phong · mặc hồn ngoa', 'Duyên phong · mặc hồn ngoa', '0', '10', '3', '0', '42', '155', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Duyên phong · phá quân yêu đái', 'Duyên phong · phá quân yêu đái', '0', '14', '0', '0', '43', '170', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Duyên phong · thú hồn hạng liên', 'Duyên phong · thú hồn hạng liên', '18', '12', '4', '4', '44', '55', '0', '0');
INSERT INTO `zhuangbei` VALUES ('[ thần khí ] yêu vương kiếm', '[ thần khí ] yêu vương kiếm', '45', '0', '13', '11', '45', '0', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Kiếp đao', 'Yêu vương kiếm toái phiến hợp thành', '25', '0', '4', '5', '46', '0', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Quân dụng tỏa tử giáp', 'Kiếp đao', '5', '16', '5', '0', '47', '170', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Quân quan mạch đao', 'Quân dụng tỏa tử giáp', '30', '0', '5', '4', '48', '0', '0', '0');
INSERT INTO `zhuangbei` VALUES ('Chu Niên Khánh Kiếm', 'Vũ Khí', '20', '0', '0', '10', '49', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('Chu Niên Khánh Găng', 'Găng Tay', '0', '5', '10', '0', '50', '150', '0', '2');
INSERT INTO `zhuangbei` VALUES ('Chu Niên Khánh Y Phục', 'Y Phục', '0', '0', '20', '3', '51', '150', '0', '3');
INSERT INTO `zhuangbei` VALUES ('Chu Niên Khánh Đai', 'Đai Lưng', '0', '10', '10', '5', '52', '50', '0', '4');
INSERT INTO `zhuangbei` VALUES ('Chu Niên Khánh Nhẫn', 'Nhẫn', '5', '5', '5', '10', '53', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('Chu niên Khánh Giày', 'Giày', '10', '10', '10', '10', '54', '100', '0', '6');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> 【khai thiên kiếm】</span>', '<span style=color:red> 【khai thiên kiếm】</span>', '50', '0', '10', '10', '100', '100', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> huyền thiên </span>', '<span style=color:#DCB5FF> huyền thiên </span>', '30', '0', '5', '4', '101', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> trấn thiên </span>', '<span style=color:#DCB5FF> trấn thiên </span>', '30', '0', '5', '4', '102', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>AWM thư kích thương </span>', '<span style=color:green>AWM thư kích thương </span>', '30', '0', '5', '4', '103', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>Groza bộ thương </span>', '<span style=color:green>Groza bộ thương </span>', '30', '0', '5', '4', '104', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>M249 ky thương </span>', '<span style=color:green>M249 ky thương </span>', '30', '0', '5', '4', '105', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>M24 thư kích thương </span>', '<span style=color:green>M24 thư kích thương </span>', '30', '0', '5', '4', '106', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>Mk14EBR bộ thương </span>', '<span style=color:green>Mk14EBR bộ thương </span>', '30', '0', '5', '4', '107', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi kiếm (chiến)】</span>', '<span style=color:green>【 trác việt chi kiếm (chiến)】</span>', '30', '0', '5', '4', '108', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi kiếm (pháp)】</span>', '<span style=color:green>【 trác việt chi kiếm (pháp)】</span>', '30', '0', '5', '4', '109', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi kiếm (đạo)】</span>', '<span style=color:green>【 trác việt chi kiếm (đạo)】</span>', '30', '0', '5', '4', '110', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 thành chủ chi nhận 】</span>', '<span style=color:green>【 thành chủ chi nhận 】</span>', '30', '0', '5', '4', '111', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 quý tân chi kiếm 】</span>', '<span style=color:green>【 quý tân chi kiếm 】</span>', '30', '0', '5', '4', '112', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> luyện ngục </span>', '<span style=color:green> luyện ngục </span>', '30', '0', '5', '4', '113', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> ngân xà </span>', '<span style=color:green> ngân xà </span>', '30', '0', '5', '4', '114', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> ma trượng </span>', '<span style=color:green> ma trượng </span>', '30', '0', '5', '4', '115', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> vô cực côn </span>', '<span style=color:orange> vô cực côn </span>', '30', '0', '5', '4', '116', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> tài quyết chi trượng </span>', '<span style=color:orange> tài quyết chi trượng </span>', '30', '0', '5', '4', '117', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> cốt ngọc quyền trượng </span>', '<span style=color:orange> cốt ngọc quyền trượng </span>', '30', '0', '5', '4', '118', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red>【 hội viên huyết nhận 】</span>', '<span style=color:red>【 hội viên huyết nhận 】</span>', '30', '0', '5', '4', '119', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thị hồn pháp trượng </span>', '<span style=color:red> thị hồn pháp trượng </span>', '30', '0', '5', '4', '120', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> đồ long đao </span>', '<span style=color:red> đồ long đao </span>', '30', '0', '5', '4', '121', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> tiêu diêu phiến </span>', '<span style=color:red> tiêu diêu phiến </span>', '30', '0', '5', '4', '122', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> long văn kiếm </span>', '<span style=color:red> long văn kiếm </span>', '30', '0', '5', '4', '123', '0', '0', '1');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> 【khai thiên dây chuyền】</span>', '<span style=color:red> 【khai thiên dây chuyền】</span>', '0', '0', '15', '15', '200', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> liệt diễm dây chuyền </span>', '<span style=color:#DCB5FF> liệt diễm dây chuyền </span>', '30', '0', '5', '4', '201', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> lôi đình dây chuyền </span>', '<span style=color:#DCB5FF> lôi đình dây chuyền </span>', '30', '0', '5', '4', '202', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi liên (chiến)】</span>', '<span style=color:green>【 trác việt chi liên (chiến)】</span>', '30', '0', '5', '4', '203', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi liên (pháp)】</span>', '<span style=color:green>【 trác việt chi liên (pháp)】</span>', '30', '0', '5', '4', '204', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi liên (đạo)】</span>', '<span style=color:green>【 trác việt chi liên (đạo)】</span>', '30', '0', '5', '4', '205', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 quý tân nhân tâm 】</span>', '<span style=color:green>【 quý tân nhân tâm 】</span>', '30', '0', '5', '4', '206', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> thiên địa </span>', '<span style=color:green> thiên địa </span>', '30', '0', '5', '4', '207', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> thiên châu dây chuyền </span>', '<span style=color:green> thiên châu dây chuyền </span>', '30', '0', '5', '4', '208', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> u linh dây chuyền </span>', '<span style=color:green> u linh dây chuyền </span>', '30', '0', '5', '4', '209', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> sinh mệnh dây chuyền </span>', '<span style=color:green> sinh mệnh dây chuyền </span>', '30', '0', '5', '4', '210', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> hồng ma dây chuyền </span>', '<span style=color:green> hồng ma dây chuyền </span>', '30', '0', '5', '4', '211', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> ma huyết dây chuyền </span>', '<span style=color:green> ma huyết dây chuyền </span>', '30', '0', '5', '4', '212', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> ác ma linh đang </span>', '<span style=color:orange> ác ma linh đang </span>', '30', '0', '5', '4', '213', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> linh hồn dây chuyền </span>', '<span style=color:orange> linh hồn dây chuyền </span>', '30', '0', '5', '4', '214', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> lục sắc dây chuyền </span>', '<span style=color:orange> lục sắc dây chuyền </span>', '30', '0', '5', '4', '215', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> đồng vực dây chuyền </span>', '<span style=color:orange> đồng vực dây chuyền </span>', '30', '0', '5', '4', '216', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:purple> mộc vực dây chuyền </span>', '<span style=color:purple> mộc vực dây chuyền </span>', '30', '0', '5', '4', '217', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red>【 hội viên dây chuyền 】</span>', '<span style=color:red>【 hội viên dây chuyền 】</span>', '30', '0', '5', '4', '218', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thánh chiến dây chuyền </span>', '<span style=color:red> thánh chiến dây chuyền </span>', '30', '0', '5', '4', '219', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thiên tôn dây chuyền </span>', '<span style=color:red> thiên tôn dây chuyền </span>', '30', '0', '5', '4', '220', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> pháp thần dây chuyền </span>', '<span style=color:red> pháp thần dây chuyền </span>', '30', '0', '5', '4', '221', '0', '0', '2');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> 【khai thiên chiến giáp】</span>', '<span style=color:red> 【khai thiên chiến giáp】</span>', '0', '60', '0', '0', '300', '450', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> quang mang chiến giáp </span>', '<span style=color:#DCB5FF> quang mang chiến giáp </span>', '30', '0', '5', '4', '301', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> liệt diễm chiến giáp </span>', '<span style=color:#DCB5FF> liệt diễm chiến giáp </span>', '30', '0', '5', '4', '302', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> liệt diễm chiến giáp </span>', '<span style=color:#DCB5FF> liệt diễm chiến giáp </span>', '30', '0', '5', '4', '303', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> lôi đình chiến giáp </span>', '<span style=color:#DCB5FF> lôi đình chiến giáp </span>', '30', '0', '5', '4', '304', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> lôi đình chiến giáp </span>', '<span style=color:#DCB5FF> lôi đình chiến giáp </span>', '30', '0', '5', '4', '305', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi giáp (chiến)】</span>', '<span style=color:green>【 trác việt chi giáp (chiến)】</span>', '30', '0', '5', '4', '306', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi giáp (pháp)】</span>', '<span style=color:green>【 trác việt chi giáp (pháp)】</span>', '30', '0', '5', '4', '307', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi giáp (đạo)】</span>', '<span style=color:green>【 trác việt chi giáp (đạo)】</span>', '30', '0', '5', '4', '308', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 quý tân vô địch 】</span>', '<span style=color:green>【 quý tân vô địch 】</span>', '30', '0', '5', '4', '309', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> cát lợi phục </span>', '<span style=color:green> cát lợi phục </span>', '30', '0', '5', '4', '310', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red>【 hội viên chiến giáp 】</span>', '<span style=color:red>【 hội viên chiến giáp 】</span>', '30', '0', '5', '4', '311', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thánh chiến bảo giáp </span>', '<span style=color:red> thánh chiến bảo giáp </span>', '30', '0', '5', '4', '312', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thiên tôn đạo bào </span>', '<span style=color:red> thiên tôn đạo bào </span>', '30', '0', '5', '4', '313', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thiên sư trường bào </span>', '<span style=color:red> thiên sư trường bào </span>', '30', '0', '5', '4', '314', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thiên ma thần giáp </span>', '<span style=color:red> thiên ma thần giáp </span>', '30', '0', '5', '4', '315', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> pháp thần phi phong </span>', '<span style=color:red> pháp thần phi phong </span>', '30', '0', '5', '4', '316', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> nghê thường vũ y </span>', '<span style=color:red> nghê thường vũ y </span>', '30', '0', '5', '4', '317', '0', '0', '3');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red>【khai thiên đai lưng】 </span>', '<span style=color:red>【khai thiên đai lưng】 </span>', '20', '20', '0', '0', '400', '150', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> liệt diễm đai lưng </span>', '<span style=color:#DCB5FF> liệt diễm đai lưng </span>', '30', '0', '5', '4', '401', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> lôi đình đai lưng </span>', '<span style=color:#DCB5FF> lôi đình đai lưng </span>', '30', '0', '5', '4', '402', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt đai lưng (chiến)】</span>', '<span style=color:green>【 trác việt đai lưng (chiến)】</span>', '30', '0', '5', '4', '403', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt đai lưng (pháp)】</span>', '<span style=color:green>【 trác việt đai lưng (pháp)】</span>', '30', '0', '5', '4', '404', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt đai lưng (đạo)】</span>', '<span style=color:green>【 trác việt đai lưng (đạo)】</span>', '30', '0', '5', '4', '405', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 quý tân tí hoàn 】</span>', '<span style=color:green>【 quý tân tí hoàn 】</span>', '30', '0', '5', '4', '406', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> tam nhãn đai lưng</span>', '<span style=color:green> tam nhãn đai lưng</span>', '30', '0', '5', '4', '407', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> uy hợp </span>', '<span style=color:green> uy hợp </span>', '30', '0', '5', '4', '408', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> u linh thủ sáo</span>', '<span style=color:green> u linh thủ sáo</span>', '30', '0', '5', '4', '409', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> tư bối nhi đai lưng</span>', '<span style=color:green> tư bối nhi đai lưng</span>', '30', '0', '5', '4', '410', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> thần bí đai lưng </span>', '<span style=color:green> thần bí đai lưng </span>', '30', '0', '5', '4', '411', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> hồng ma đai lưng </span>', '<span style=color:green> hồng ma đai lưng </span>', '30', '0', '5', '4', '412', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> ma huyết đai lưng </span>', '<span style=color:green> ma huyết đai lưng </span>', '30', '0', '5', '4', '413', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> tâm linh đai lưng</span>', '<span style=color:orange> tâm linh đai lưng</span>', '30', '0', '5', '4', '414', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> đồng vực đai lưng</span>', '<span style=color:orange> đồng vực đai lưng</span>', '30', '0', '5', '4', '415', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> kỵ sĩ đai lưng</span>', '<span style=color:orange> kỵ sĩ đai lưng</span>', '30', '0', '5', '4', '416', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> long chi đai lưng</span>', '<span style=color:orange> long chi đai lưng</span>', '30', '0', '5', '4', '417', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:purple> mộc vực đai lưng</span>', '<span style=color:purple> mộc vực đai lưng</span>', '30', '0', '5', '4', '418', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red>【 hội viên đai lưng 】</span>', '<span style=color:red>【 hội viên đai lưng 】</span>', '30', '0', '5', '4', '419', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thánh chiến đai lưng</span>', '<span style=color:red> thánh chiến đai lưng</span>', '30', '0', '5', '4', '420', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thiên tôn đai lưng</span>', '<span style=color:red> thiên tôn đai lưng</span>', '30', '0', '5', '4', '421', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> pháp thần đai lưng</span>', '<span style=color:red> pháp thần đai lưng</span>', '30', '0', '5', '4', '422', '0', '0', '4');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red>【khai thiên nhẫn】</span>', '<span style=color:red>【khai thiên nhẫn】</span>', '25', '0', '0', '10', '500', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thiên tôn nhẫn</span>', '<span style=color:red> thiên tôn nhẫn</span>', '30', '0', '5', '4', '501', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red> thánh chiến nhẫn</span>', '<span style=color:red> thánh chiến nhẫn</span>', '30', '0', '5', '4', '502', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:purple> mộc vực nhẫn</span>', '<span style=color:purple> mộc vực nhẫn</span>', '30', '0', '5', '4', '503', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> thái thản nhẫn</span>', '<span style=color:orange> thái thản nhẫn</span>', '30', '0', '5', '4', '504', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:orange> lực lượng nhẫn</span>', '<span style=color:orange> lực lượng nhẫn</span>', '30', '0', '5', '4', '505', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> long chi nhẫn</span>', '<span style=color:green> long chi nhẫn</span>', '30', '0', '5', '4', '506', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> ma tý nhẫn</span>', '<span style=color:green> ma tý nhẫn</span>', '30', '0', '5', '4', '507', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> ma huyết nhẫn </span>', '<span style=color:green> ma huyết nhẫn </span>', '30', '0', '5', '4', '508', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> ẩn thân nhẫn</span>', '<span style=color:green> ẩn thân nhẫn</span>', '30', '0', '5', '4', '509', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> phòng ngự nhẫn</span>', '<span style=color:green> phòng ngự nhẫn</span>', '30', '0', '5', '4', '510', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> bạc kim nhẫn</span>', '<span style=color:green> bạc kim nhẫn</span>', '30', '0', '5', '4', '511', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> hồng ma nhẫn </span>', '<span style=color:green> hồng ma nhẫn </span>', '30', '0', '5', '4', '512', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> hồng bảo thạch nhẫn</span>', '<span style=color:green> hồng bảo thạch nhẫn</span>', '30', '0', '5', '4', '513', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> thần bí nhẫn </span>', '<span style=color:green> thần bí nhẫn </span>', '30', '0', '5', '4', '514', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> thần lực nhẫn</span>', '<span style=color:green> thần lực nhẫn</span>', '30', '0', '5', '4', '515', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> hỏa diễm nhẫn</span>', '<span style=color:green> hỏa diễm nhẫn</span>', '30', '0', '5', '4', '516', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> hộ thân nhẫn</span>', '<span style=color:green> hộ thân nhẫn</span>', '30', '0', '5', '4', '517', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> phục hoạt nhẫn</span>', '<span style=color:green> phục hoạt nhẫn</span>', '30', '0', '5', '4', '518', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green> truyện tống nhẫn</span>', '<span style=color:green> truyện tống nhẫn</span>', '30', '0', '5', '4', '519', '0', '0', '5');
INSERT INTO `zhuangbei` VALUES ('<span style=color:red>【 khai thiên giày】</span>', '<span style=color:red>【 khai thiên giày】</span>', '20', '20', '10', '10', '600', '0', '0', '6');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 quý tân giày 】</span>', '<span style=color:green>【 quý tân giày 】</span>', '30', '0', '5', '4', '601', '0', '0', '6');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi ngoa (đạo)】</span>', '<span style=color:green>【 trác việt chi ngoa (đạo)】</span>', '30', '0', '5', '4', '602', '0', '0', '6');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi ngoa (pháp)】</span>', '<span style=color:green>【 trác việt chi ngoa (pháp)】</span>', '30', '0', '5', '4', '603', '0', '0', '6');
INSERT INTO `zhuangbei` VALUES ('<span style=color:green>【 trác việt chi ngoa (chiến)】</span>', '<span style=color:green>【 trác việt chi ngoa (chiến)】</span>', '30', '0', '5', '4', '604', '0', '0', '6');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> lôi đình giày </span>', '<span style=color:#DCB5FF> lôi đình giày </span>', '30', '0', '5', '4', '605', '0', '0', '6');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> liệt diễm giày </span>', '<span style=color:#DCB5FF> liệt diễm giày </span>', '30', '0', '5', '4', '606', '0', '0', '6');
INSERT INTO `zhuangbei` VALUES ('<span style=color:#DCB5FF> quang mang giày </span>', '<span style=color:#DCB5FF> quang mang giày </span>', '30', '0', '5', '4', '607', '0', '0', '6');