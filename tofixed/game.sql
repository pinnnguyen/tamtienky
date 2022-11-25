/*
 Navicat Premium Data Transfer

 Source Server         : game
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : 47.107.226.87:3306
 Source Schema         : game

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 19/11/2018 17:16:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 炼丹
-- ----------------------------
DROP TABLE IF EXISTS `炼丹`;
CREATE TABLE `炼丹`  (
  `炼丹效果` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '炼丹效果',
  `炼丹材料` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '炼丹材料',
  `炼丹id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '炼丹id',
  `炼丹名称` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '炼丹名称',
  `炼丹描述` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '炼丹描述',
  PRIMARY KEY (`炼丹id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for boss
-- ----------------------------
DROP TABLE IF EXISTS `boss`;
CREATE TABLE `boss`  (
  `bossname` text CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `bossinfo` text CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `bosslv` text CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `bosshp` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `bossmaxhp` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `bossgj` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `bossfy` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `bossbj` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `bossxx` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `bosszb` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `bossdj` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `bossid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bs` int(255) NOT NULL,
  `bosstime` datetime NOT NULL,
  PRIMARY KEY (`bossid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for club
-- ----------------------------
DROP TABLE IF EXISTS `club`;
CREATE TABLE `club`  (
  `clubname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `clubinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `clublv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `clubid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `clubno1` int(11) NOT NULL,
  `clubexp` int(11) NOT NULL,
  `clubyxb` int(11) NOT NULL,
  `clubczb` int(11) NOT NULL,
  PRIMARY KEY (`clubid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for clubplayer
-- ----------------------------
DROP TABLE IF EXISTS `clubplayer`;
CREATE TABLE `clubplayer`  (
  `clubid` int(11) UNSIGNED NOT NULL,
  `sid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` int(11) NOT NULL,
  `uclv` int(11) NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for daoju
-- ----------------------------
DROP TABLE IF EXISTS `daoju`;
CREATE TABLE `daoju`  (
  `djname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '道具名称',
  `djzl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '道具种类',
  `djinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '道具信息',
  `djid` int(11) NOT NULL AUTO_INCREMENT COMMENT '道具id',
  `djyxb` int(11) NOT NULL COMMENT '道具游戏币',
  PRIMARY KEY (`djid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dis
-- ----------------------------
DROP TABLE IF EXISTS `dis`;
CREATE TABLE `dis`  (
  `dis_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dis_string` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`dis_name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for duihuan
-- ----------------------------
DROP TABLE IF EXISTS `duihuan`;
CREATE TABLE `duihuan`  (
  `dhm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dhzb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dhdj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dhyp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dhyxb` int(11) NOT NULL,
  `dhczb` int(11) NOT NULL,
  `dhname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dhexp` int(11) NOT NULL,
  `dhid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`dhid`, `dhm`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fangshi_dj
-- ----------------------------
DROP TABLE IF EXISTS `fangshi_dj`;
CREATE TABLE `fangshi_dj`  (
  `djid` int(11) NOT NULL,
  `djcount` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `payid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `djname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `djinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`payid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fangshi_zb
-- ----------------------------
DROP TABLE IF EXISTS `fangshi_zb`;
CREATE TABLE `fangshi_zb`  (
  `zbnowid` int(11) NOT NULL,
  `zbname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qianghua` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `payid` int(11) NOT NULL,
  `zbinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zbgj` int(11) NOT NULL,
  `zbfy` int(11) NOT NULL,
  `zbbj` int(11) NOT NULL,
  `zbxx` int(11) NOT NULL,
  `zbid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `zbhp` int(11) NOT NULL,
  `zblv` int(11) NOT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fb
-- ----------------------------
DROP TABLE IF EXISTS `fb`;
CREATE TABLE `fb`  (
  `fbname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fbid` int(11) NOT NULL,
  `fbinfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`fbid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fbmid
-- ----------------------------
DROP TABLE IF EXISTS `fbmid`;
CREATE TABLE `fbmid`  (
  `fmname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fmid` int(11) NOT NULL,
  `fminfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fmnpc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fmgw` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game1
-- ----------------------------
DROP TABLE IF EXISTS `game1`;
CREATE TABLE `game1`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '[系统]玩家uid',
  `sid` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[系统]玩家sid',
  `token` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[系统]用户token',
  `uname` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[系统]玩家名称',
  `ulv` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '[系统]玩家等级',
  `uyxb` int(11) NOT NULL DEFAULT 2000 COMMENT '[系统]玩家游戏币',
  `uczb` int(11) NOT NULL DEFAULT 100 COMMENT '[系统]玩家充值币',
  `uexp` int(11) NOT NULL DEFAULT 0 COMMENT '[系统]玩家经验',
  `vip` int(11) NOT NULL DEFAULT 0 COMMENT '[系统]玩家VIP等级',
  `uhp` int(11) NOT NULL DEFAULT 35 COMMENT '[系统]玩家生命值',
  `umaxhp` int(11) NOT NULL DEFAULT 35 COMMENT '[系统]玩家最大生命值',
  `ugj` int(11) NOT NULL DEFAULT 12 COMMENT '[系统]玩家攻击',
  `ufy` int(11) NOT NULL DEFAULT 5 COMMENT '[系统]玩家防御',
  `usex` int(11) NOT NULL DEFAULT 1 COMMENT '[系统]玩家性别',
  `endtime` datetime NOT NULL COMMENT '[系统]玩家下线时间',
  `nowmid` int(11) NOT NULL DEFAULT 225 COMMENT '[系统]玩家所在地图',
  `uwx` int(11) NOT NULL DEFAULT 0 COMMENT '[系统]暂定',
  `nowguaiwu` int(11) NOT NULL COMMENT '[系统]现在攻击的怪物',
  `tool1` int(11) NOT NULL COMMENT '[系统]装备位置1',
  `tool2` int(11) NOT NULL COMMENT '[系统]装备位置2',
  `tool3` int(11) NOT NULL COMMENT '[系统]装备位置3',
  `tool4` int(11) NOT NULL COMMENT '[系统]装备位置4',
  `tool5` int(11) NOT NULL COMMENT '[系统]装备位置5',
  `tool6` int(11) NOT NULL COMMENT '[系统]装备位置6',
  `ubj` int(11) NOT NULL DEFAULT 0 COMMENT '[系统]玩家暴击',
  `uxx` int(11) NOT NULL DEFAULT 0 COMMENT '[系统]玩家吸血',
  `sfzx` int(11) NOT NULL DEFAULT 0 COMMENT '[系统]是否在线',
  `qandaotime` datetime NOT NULL COMMENT '[系统]暂定',
  `xiuliantime` datetime NOT NULL COMMENT '[系统]修炼时间',
  `sfxl` int(11) NOT NULL DEFAULT 0 COMMENT '[系统]是否修炼',
  `yp1` int(11) NOT NULL COMMENT '[系统]药品位置1',
  `yp2` int(11) NOT NULL COMMENT '[系统]药品位置2',
  `yp3` int(11) NOT NULL COMMENT '[系统]药品位置3',
  `cw` int(11) NOT NULL COMMENT '[系统]宠物位置',
  `jn1` int(11) NOT NULL COMMENT '[系统]技能位置1',
  `jn2` int(11) NOT NULL COMMENT '[系统]技能位置2',
  `jn3` int(11) NOT NULL COMMENT '[系统]技能位置3',
  `ispvp` int(11) NOT NULL DEFAULT 0 COMMENT '[系统]是否PVP',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ggliaotian
-- ----------------------------
DROP TABLE IF EXISTS `ggliaotian`;
CREATE TABLE `ggliaotian`  (
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4080 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guaiwu
-- ----------------------------
DROP TABLE IF EXISTS `guaiwu`;
CREATE TABLE `guaiwu`  (
  `gname` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[系统]怪物名称',
  `glv` int(11) NOT NULL COMMENT '[系统]怪物等级',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '[系统]怪物ID',
  `ginfo` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '[系统]怪物信息',
  `gsex` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL COMMENT '[系统]怪物性别',
  `ghp` int(11) NOT NULL COMMENT '[系统]怪物血量',
  `ggj` int(11) NOT NULL COMMENT '[系统]怪物攻击',
  `gfy` int(11) NOT NULL COMMENT '[系统]怪物防御',
  `gbj` int(11) NOT NULL COMMENT '[系统]怪物暴击',
  `gxx` int(11) NOT NULL COMMENT '[系统]怪物吸血',
  `gzb` text CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL COMMENT '[系统]怪物掉落装备',
  `dljv` int(11) NOT NULL COMMENT '[系统]装备几率',
  `gdj` text CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL COMMENT '[系统]怪物掉落道具',
  `djjv` int(11) NOT NULL COMMENT '[系统]道具几率',
  `gyp` text CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL COMMENT '[系统]怪物掉落药品',
  `ypjv` int(11) NOT NULL COMMENT '[系统]药品几率',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 111 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for im
-- ----------------------------
DROP TABLE IF EXISTS `im`;
CREATE TABLE `im`  (
  `imuid` int(11) NOT NULL,
  `sid` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`imuid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for jineng
-- ----------------------------
DROP TABLE IF EXISTS `jineng`;
CREATE TABLE `jineng`  (
  `jnname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jnid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `jngj` int(11) NOT NULL,
  `jnfy` int(11) NOT NULL,
  `jnbj` int(11) NOT NULL,
  `jnxx` int(11) NOT NULL,
  `jndj` int(11) NOT NULL,
  `djcount` int(11) NOT NULL,
  `xiaohao` int(11) NOT NULL,
  PRIMARY KEY (`jnid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for math
-- ----------------------------
DROP TABLE IF EXISTS `math`;
CREATE TABLE `math`  (
  `math_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `math_string` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `math_type` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`math_name`, `math_type`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mid
-- ----------------------------
DROP TABLE IF EXISTS `mid`;
CREATE TABLE `mid`  (
  `mname` text CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `mid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mgid` text CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `mnpc` text CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `mgtime` datetime NOT NULL,
  `ms` int(11) NOT NULL,
  `midinfo` text CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `midboss` int(11) NOT NULL,
  `mup` int(11) NOT NULL,
  `mdown` int(11) NOT NULL,
  `mleft` int(11) NOT NULL,
  `mright` int(11) NOT NULL,
  `mqy` int(11) NOT NULL,
  `playerinfo` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `ispvp` int(255) NOT NULL,
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for midguaiwu
-- ----------------------------
DROP TABLE IF EXISTS `midguaiwu`;
CREATE TABLE `midguaiwu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gname` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ghp` int(11) NOT NULL,
  `ggj` int(11) NOT NULL,
  `gfy` int(11) NOT NULL,
  `glv` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `gyid` int(11) NOT NULL,
  `gexp` int(11) NOT NULL,
  `sid` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gmaxhp` int(11) NOT NULL,
  `gbj` int(11) NOT NULL,
  `gxx` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2314798 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for npc
-- ----------------------------
DROP TABLE IF EXISTS `npc`;
CREATE TABLE `npc`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nname` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nsex` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `ninfo` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `muban` text CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  `taskid` text CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 75 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for playerchongwu
-- ----------------------------
DROP TABLE IF EXISTS `playerchongwu`;
CREATE TABLE `playerchongwu`  (
  `cwid` int(11) NOT NULL AUTO_INCREMENT,
  `cwname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cwhp` int(11) NOT NULL,
  `cwmaxhp` int(11) NOT NULL,
  `cwgj` int(11) NOT NULL,
  `cwfy` int(11) NOT NULL,
  `cwbj` int(11) NOT NULL,
  `cwxx` int(11) NOT NULL,
  `cwlv` int(11) NOT NULL,
  `cwexp` int(11) NOT NULL,
  `tool1` int(11) NOT NULL,
  `tool2` int(11) NOT NULL,
  `tool3` int(11) NOT NULL,
  `tool4` int(11) NOT NULL,
  `tool5` int(11) NOT NULL,
  `tool6` int(11) NOT NULL,
  `sid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uphp` int(11) NOT NULL,
  `upgj` int(11) NOT NULL,
  `upfy` int(11) NOT NULL,
  `cwpz` int(11) NOT NULL,
  PRIMARY KEY (`cwid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3587 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for playerdaoju
-- ----------------------------
DROP TABLE IF EXISTS `playerdaoju`;
CREATE TABLE `playerdaoju`  (
  `djname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `djzl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `djinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` int(11) NOT NULL,
  `sid` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `djsum` int(11) NOT NULL,
  `djid` int(11) NOT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for playerjineng
-- ----------------------------
DROP TABLE IF EXISTS `playerjineng`;
CREATE TABLE `playerjineng`  (
  `jnname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jnid` int(11) NOT NULL,
  `jngj` int(11) NOT NULL,
  `jnfy` int(11) NOT NULL,
  `jnbj` int(11) NOT NULL,
  `jnxx` int(11) NOT NULL,
  `sid` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jncount` int(11) NOT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for playerrenwu
-- ----------------------------
DROP TABLE IF EXISTS `playerrenwu`;
CREATE TABLE `playerrenwu`  (
  `rwname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rwzl` int(11) NOT NULL,
  `rwdj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rwzb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rwexp` int(11) NOT NULL,
  `rwyxb` int(11) NOT NULL,
  `sid` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rwzt` int(11) NOT NULL,
  `rwid` int(11) NOT NULL,
  `rwyq` int(11) NOT NULL,
  `rwcount` int(11) NOT NULL,
  `rwnowcount` int(11) NOT NULL,
  `rwlx` int(11) NOT NULL,
  `rwyp` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` int(11) NOT NULL,
  `rwjineng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `chufa` int(11) NULL DEFAULT NULL,
  `tijiao` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for playeryaopin
-- ----------------------------
DROP TABLE IF EXISTS `playeryaopin`;
CREATE TABLE `playeryaopin`  (
  `ypname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ypid` int(11) NOT NULL,
  `yphp` int(11) NOT NULL,
  `ypgj` int(11) NOT NULL,
  `ypfy` int(11) NOT NULL,
  `ypxx` int(11) NOT NULL,
  `ypbj` int(11) NOT NULL,
  `sid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ypsum` int(11) NOT NULL,
  `ypjg` int(11) NOT NULL,
  PRIMARY KEY (`ypid`, `sid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for playerzhuangbei
-- ----------------------------
DROP TABLE IF EXISTS `playerzhuangbei`;
CREATE TABLE `playerzhuangbei`  (
  `zbname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zbinfo` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zbgj` int(11) NOT NULL,
  `zbfy` int(11) NOT NULL,
  `zbbj` int(11) NOT NULL,
  `zbxx` int(11) NOT NULL,
  `zbid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `zbnowid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zbhp` int(11) NOT NULL,
  `qianghua` int(11) NOT NULL,
  `zblv` int(11) NOT NULL,
  `zbtool` int(11) NOT NULL,
  PRIMARY KEY (`zbnowid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 75668 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qy
-- ----------------------------
DROP TABLE IF EXISTS `qy`;
CREATE TABLE `qy`  (
  `qyid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `qyname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`qyid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for renwu
-- ----------------------------
DROP TABLE IF EXISTS `renwu`;
CREATE TABLE `renwu`  (
  `rwname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rwzl` int(11) NOT NULL,
  `rwdj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rwzb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rwexp` int(11) NOT NULL,
  `rwyxb` int(11) NOT NULL,
  `rwid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rwyq` int(11) NOT NULL,
  `rwinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rwcount` int(11) NOT NULL,
  `rwlx` int(255) NOT NULL,
  `rwyp` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastrwid` int(11) NOT NULL,
  `chufa` int(11) NULL DEFAULT NULL,
  `tijiao` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`rwid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for session
-- ----------------------------
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session`  (
  `skey` char(32) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire` int(11) NOT NULL,
  PRIMARY KEY (`skey`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for system_config
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config`  (
  `m_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `m_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `m_string` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`m_name`, `m_value`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `username` text CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL,
  `userpass` text CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL,
  `token` text CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for yaopin
-- ----------------------------
DROP TABLE IF EXISTS `yaopin`;
CREATE TABLE `yaopin`  (
  `ypname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ypid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `yphp` int(11) NOT NULL,
  `ypgj` int(11) NOT NULL,
  `ypfy` int(11) NOT NULL,
  `ypxx` int(11) NOT NULL,
  `ypbj` int(11) NOT NULL,
  `ypjg` int(11) NOT NULL,
  PRIMARY KEY (`ypid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for zhuangbei
-- ----------------------------
DROP TABLE IF EXISTS `zhuangbei`;
CREATE TABLE `zhuangbei`  (
  `zbname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '装备名称',
  `zbinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '装备信息',
  `zbgj` int(11) NOT NULL COMMENT '装备攻击',
  `zbfy` int(11) NOT NULL COMMENT '装备防御',
  `zbbj` int(11) NOT NULL COMMENT '装备暴击',
  `zbxx` int(11) NOT NULL COMMENT '装备吸血',
  `zbid` int(11) NOT NULL AUTO_INCREMENT COMMENT '装备id',
  `zbhp` int(11) NOT NULL COMMENT '装备生命',
  `zblv` int(11) NOT NULL COMMENT '装备等级',
  `zbtool` int(11) NOT NULL COMMENT '装备位置',
  PRIMARY KEY (`zbid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for zhurenwu
-- ----------------------------
DROP TABLE IF EXISTS `zhurenwu`;
CREATE TABLE `zhurenwu`  (
  `zrwname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zrwid` int(11) NOT NULL,
  `zrwyq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `yqcount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zrwjldj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zrwjlzb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zrwjlyp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zrwjljn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastid` int(11) NOT NULL,
  `zrwexp` int(11) NOT NULL,
  `zrwyxb` int(11) NOT NULL,
  PRIMARY KEY (`zrwid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
