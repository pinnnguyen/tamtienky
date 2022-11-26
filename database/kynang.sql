-- ----------------------------
-- Table structure for jineng
-- ----------------------------
DROP TABLE IF EXISTS `jineng`;
CREATE TABLE `jineng`
(
    `jnname`  varchar(255) NOT NULL,
    `jnid`    int(10) unsigned NOT NULL AUTO_INCREMENT,
    `jngj`    int(11) NOT NULL,
    `jnfy`    int(11) NOT NULL,
    `jnbj`    int(11) NOT NULL,
    `jnxx`    int(11) NOT NULL,
    `jndj`    int(11) NOT NULL,
    `djcount` int(11) NOT NULL,
    `xiaohao` int(11) NOT NULL,
    PRIMARY KEY (`jnid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jineng
-- ----------------------------
INSERT INTO `jineng`
VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '6', '5', '0');
INSERT INTO `jineng`
VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '7', '8', '0');
INSERT INTO `jineng`
VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '9', '8', '0');
INSERT INTO `jineng`
VALUES ('Nộ huyết bạo', '7', '12', '2', '20', '8', '10', '10', '0');
INSERT INTO `jineng`
VALUES ('Sơ cấp thị huyết thuật', '8', '1', '0', '0', '20', '11', '15', '0');


-- ----------------------------
-- Table structure for playerjineng
-- ----------------------------
DROP TABLE IF EXISTS `playerjineng`;
CREATE TABLE `playerjineng`
(
    `jnname`  varchar(255) NOT NULL,
    `jnid`    int(11) NOT NULL,
    `jngj`    int(11) NOT NULL,
    `jnfy`    int(11) NOT NULL,
    `jnbj`    int(11) NOT NULL,
    `jnxx`    int(11) NOT NULL,
    `sid`     text         NOT NULL,
    `jncount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of playerjineng
-- ----------------------------
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '43e4c5c6dda6740216e3bd54ff200c15', '7');
-- INSERT INTO `playerjineng`
-- VALUES ('Ngưu B đích kỹ năng', '5', '0', '0', '100', '100', '43e4c5c6dda6740216e3bd54ff200c15', '3');
-- INSERT INTO `playerjineng`
-- VALUES ('Ngưu B đích kỹ năng', '5', '0', '0', '100', '100', 'af1d74362b935eb0ac845b7e4f7f707f', '1');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '099f465c0c34dd5ef59f230a21447af4', '8');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '9bb5f086e2f1efdbc8215e55f8a4a30f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '6d07cdb650fc1fca94c0dd51a8ed971e', '32');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '6d07cdb650fc1fca94c0dd51a8ed971e', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '6d07cdb650fc1fca94c0dd51a8ed971e', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '36f30db66d6fe42f34a91d15b6097af0', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '43e4c5c6dda6740216e3bd54ff200c15', '1');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '9bb5f086e2f1efdbc8215e55f8a4a30f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '9bb5f086e2f1efdbc8215e55f8a4a30f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Nộ huyết bạo', '7', '12', '2', '20', '12', '9bb5f086e2f1efdbc8215e55f8a4a30f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Nộ huyết bạo', '7', '12', '2', '20', '12', '36f30db66d6fe42f34a91d15b6097af0', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '36f30db66d6fe42f34a91d15b6097af0', '9');
-- INSERT INTO `playerjineng`
-- VALUES ('Nộ huyết bạo', '7', '12', '2', '20', '8', '43e4c5c6dda6740216e3bd54ff200c15', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'f58bb53a4bdd39d6d70b706d77fbc74f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', 'f58bb53a4bdd39d6d70b706d77fbc74f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'c4339dfb63d53dbe95ff3f1297cd889d', '5');
-- INSERT INTO `playerjineng`
-- VALUES ('Nộ huyết bạo', '7', '12', '2', '20', '8', '6d07cdb650fc1fca94c0dd51a8ed971e', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Nộ huyết bạo', '7', '12', '2', '20', '8', 'f58bb53a4bdd39d6d70b706d77fbc74f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '592857bc812f813ed52fa8b187582fc2', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '592857bc812f813ed52fa8b187582fc2', '3');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '781a121e409741ff53f5978578067146', '20');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '775c0ff651b405a676fc9ee1729302f4', '20');
-- INSERT INTO `playerjineng`
-- VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '6b7b2713b1a52397c7282509906e8c5e', '1');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'c9879e4c3738297c06b0b14d78dc39d6', '15');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', 'c9879e4c3738297c06b0b14d78dc39d6', '25');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '781a121e409741ff53f5978578067146', '12');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'eb61a0b08b9bfdfda961d64410eba5bc', '3');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', 'eb61a0b08b9bfdfda961d64410eba5bc', '2');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '77099dca8f67b65ca91af53d0461ac2f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '77099dca8f67b65ca91af53d0461ac2f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '775c0ff651b405a676fc9ee1729302f4', '10');
-- INSERT INTO `playerjineng`
-- VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '775c0ff651b405a676fc9ee1729302f4', '23');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', 'ad8f4d8e577f50deae4492bd03c96b56', '2');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'ad8f4d8e577f50deae4492bd03c96b56', '3');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'bb2a45b7652a7900e7810128a329597e', '2');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', 'bb2a45b7652a7900e7810128a329597e', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '4e079b4084dcdd84cf4393a003a38283', '2');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'ce13ba86e509d2fab5ed13c2cddf00c9', '2');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', 'ce13ba86e509d2fab5ed13c2cddf00c9', '8');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'ea5a17b7f6c42320f7c242f2871a0f8d', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'dd58b4170ec8d6d20f876405b4b1265d', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', 'dd58b4170ec8d6d20f876405b4b1265d', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '7159624dfdba178c848da03a6ffefec9', '2');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '7159624dfdba178c848da03a6ffefec9', '3');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'f76c11b6601d3a6ce505c616b64ed478', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', 'f76c11b6601d3a6ce505c616b64ed478', '10');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'e14b6e0d27bea46402a112c75c170887', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', '43e4c5c6dda6740216e3bd54ff200c15', '7');
-- INSERT INTO `playerjineng`
-- VALUES ('牛B的技能', '5', '0', '0', '100', '100', '43e4c5c6dda6740216e3bd54ff200c15', '3');
-- INSERT INTO `playerjineng`
-- VALUES ('牛B的技能', '5', '0', '0', '100', '100', 'af1d74362b935eb0ac845b7e4f7f707f', '1');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', '099f465c0c34dd5ef59f230a21447af4', '8');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', '9bb5f086e2f1efdbc8215e55f8a4a30f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', '6d07cdb650fc1fca94c0dd51a8ed971e', '32');
-- INSERT INTO `playerjineng`
-- VALUES ('魔心爆发', '5', '5', '0', '10', '10', '6d07cdb650fc1fca94c0dd51a8ed971e', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('蛮力附体', '6', '7', '7', '7', '7', '6d07cdb650fc1fca94c0dd51a8ed971e', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', '36f30db66d6fe42f34a91d15b6097af0', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('蛮力附体', '6', '7', '7', '7', '7', '43e4c5c6dda6740216e3bd54ff200c15', '1');
-- INSERT INTO `playerjineng`
-- VALUES ('魔心爆发', '5', '5', '0', '10', '10', '9bb5f086e2f1efdbc8215e55f8a4a30f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('蛮力附体', '6', '7', '7', '7', '7', '9bb5f086e2f1efdbc8215e55f8a4a30f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('怒血爆', '7', '12', '2', '20', '12', '9bb5f086e2f1efdbc8215e55f8a4a30f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('怒血爆', '7', '12', '2', '20', '12', '36f30db66d6fe42f34a91d15b6097af0', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('蛮力附体', '6', '7', '7', '7', '7', '36f30db66d6fe42f34a91d15b6097af0', '9');
-- INSERT INTO `playerjineng`
-- VALUES ('怒血爆', '7', '12', '2', '20', '8', '43e4c5c6dda6740216e3bd54ff200c15', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'f58bb53a4bdd39d6d70b706d77fbc74f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('蛮力附体', '6', '7', '7', '7', '7', 'f58bb53a4bdd39d6d70b706d77fbc74f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'c4339dfb63d53dbe95ff3f1297cd889d', '5');
-- INSERT INTO `playerjineng`
-- VALUES ('怒血爆', '7', '12', '2', '20', '8', '6d07cdb650fc1fca94c0dd51a8ed971e', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('怒血爆', '7', '12', '2', '20', '8', 'f58bb53a4bdd39d6d70b706d77fbc74f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', '592857bc812f813ed52fa8b187582fc2', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('魔心爆发', '5', '5', '0', '10', '10', '592857bc812f813ed52fa8b187582fc2', '3');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', '781a121e409741ff53f5978578067146', '20');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', '775c0ff651b405a676fc9ee1729302f4', '20');
-- INSERT INTO `playerjineng`
-- VALUES ('蛮力附体', '6', '7', '7', '7', '7', '6b7b2713b1a52397c7282509906e8c5e', '1');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'c9879e4c3738297c06b0b14d78dc39d6', '15');
-- INSERT INTO `playerjineng`
-- VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'c9879e4c3738297c06b0b14d78dc39d6', '25');
-- INSERT INTO `playerjineng`
-- VALUES ('魔心爆发', '5', '5', '0', '10', '10', '781a121e409741ff53f5978578067146', '12');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'eb61a0b08b9bfdfda961d64410eba5bc', '3');
-- INSERT INTO `playerjineng`
-- VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'eb61a0b08b9bfdfda961d64410eba5bc', '2');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', '77099dca8f67b65ca91af53d0461ac2f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('魔心爆发', '5', '5', '0', '10', '10', '77099dca8f67b65ca91af53d0461ac2f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('魔心爆发', '5', '5', '0', '10', '10', '775c0ff651b405a676fc9ee1729302f4', '10');
-- INSERT INTO `playerjineng`
-- VALUES ('蛮力附体', '6', '7', '7', '7', '7', '775c0ff651b405a676fc9ee1729302f4', '23');
-- INSERT INTO `playerjineng`
-- VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'ad8f4d8e577f50deae4492bd03c96b56', '2');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'ad8f4d8e577f50deae4492bd03c96b56', '3');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'bb2a45b7652a7900e7810128a329597e', '2');
-- INSERT INTO `playerjineng`
-- VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'bb2a45b7652a7900e7810128a329597e', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', '4e079b4084dcdd84cf4393a003a38283', '2');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'ce13ba86e509d2fab5ed13c2cddf00c9', '2');
-- INSERT INTO `playerjineng`
-- VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'ce13ba86e509d2fab5ed13c2cddf00c9', '8');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'ea5a17b7f6c42320f7c242f2871a0f8d', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'dd58b4170ec8d6d20f876405b4b1265d', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'dd58b4170ec8d6d20f876405b4b1265d', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', '7159624dfdba178c848da03a6ffefec9', '2');
-- INSERT INTO `playerjineng`
-- VALUES ('魔心爆发', '5', '5', '0', '10', '10', '7159624dfdba178c848da03a6ffefec9', '3');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'f76c11b6601d3a6ce505c616b64ed478', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('魔心爆发', '5', '5', '0', '10', '10', 'f76c11b6601d3a6ce505c616b64ed478', '10');
-- INSERT INTO `playerjineng`
-- VALUES ('聚灵斩', '4', '10', '0', '0', '2', 'e14b6e0d27bea46402a112c75c170887', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'deef530148bcb297a74d0509125b844f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'e83893c48ddfe5e084b2bdea428aa07f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', 'e83893c48ddfe5e084b2bdea428aa07f', '12');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '6d269e625ac8a8e57a6f38d43ebbd3c6', '12');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '6d269e625ac8a8e57a6f38d43ebbd3c6', '20');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '91322e4d4529a1c0db2580a4d5e07ff1', '13');
-- INSERT INTO `playerjineng`
-- VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '91322e4d4529a1c0db2580a4d5e07ff1', '12');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '91322e4d4529a1c0db2580a4d5e07ff1', '12');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '9dc0bb8899c5497aa2dacab00c77fd5c', '6');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '132a2ae60d254a56c7264893f03a6a25', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '557b7f4de2be11fd91d173d236fea6b4', '5');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '557b7f4de2be11fd91d173d236fea6b4', '12');
-- INSERT INTO `playerjineng`
-- VALUES ('Nộ huyết bạo', '7', '12', '2', '20', '8', 'df1905b2799580cd3861d79686bacbad', '5');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', 'a82a81044ec116f876d03885c2973ba6', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '5342074c8ce889f9ce11bcd4f254355f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', 'a82a81044ec116f876d03885c2973ba6', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', 'a82a81044ec116f876d03885c2973ba6', '3');
-- INSERT INTO `playerjineng`
-- VALUES ('Ma tâm bạo phát', '5', '5', '0', '10', '10', '5342074c8ce889f9ce11bcd4f254355f', '0');
-- INSERT INTO `playerjineng`
-- VALUES ('Nộ huyết bạo', '7', '12', '2', '20', '8', '3204b1df760fd73acf5332398961f416', '3');
-- INSERT INTO `playerjineng`
-- VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '3204b1df760fd73acf5332398961f416', '10');
-- INSERT INTO `playerjineng`
-- VALUES ('Tụ linh trảm', '4', '10', '0', '0', '2', '3204b1df760fd73acf5332398961f416', '19');
-- INSERT INTO `playerjineng`
-- VALUES ('Man lực phụ thể', '6', '7', '7', '7', '7', '7d1526a0dd4803a1fda914bcebd93b47', '5');