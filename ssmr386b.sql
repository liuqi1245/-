/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3307
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3307
 Source Schema         : ssmr386b

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 25/03/2023 21:50:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `isdefault` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1679749170386 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '2023-02-11 15:38:11', 11, '宇宙银河系金星1号', '金某', '13823888881', '是');
INSERT INTO `address` VALUES (2, '2023-02-11 15:38:11', 12, '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address` VALUES (3, '2023-02-11 15:38:11', 13, '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address` VALUES (4, '2023-02-11 15:38:11', 14, '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address` VALUES (5, '2023-02-11 15:38:11', 15, '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address` VALUES (6, '2023-02-11 15:38:11', 16, '宇宙银河系月球1号', '月某', '13823888886', '是');
INSERT INTO `address` VALUES (7, '2023-02-11 15:38:11', 17, '宇宙银河系黑洞1号', '黑某', '13823888887', '是');
INSERT INTO `address` VALUES (8, '2023-02-11 15:38:11', 18, '宇宙银河系地球1号', '地某', '13823888888', '是');
INSERT INTO `address` VALUES (1676102099690, '2023-02-11 15:54:59', 1676101914203, '人民南路323号', '11', '13823888888', '是');
INSERT INTO `address` VALUES (1677137134535, '2023-02-23 15:25:34', 1677136982431, '武汉', '123', '13245678901', '是');
INSERT INTO `address` VALUES (1679749170385, '2023-03-25 20:59:30', 1679749097576, '湖北', '55', '12345678901', '是');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'lingshixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户名称',
  `goodtype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1679749149228 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1677139187554, '2023-02-23 15:59:47', 'lingshixinxi', 1677136982431, 45, '品牌5', 'upload/lingshixinxi_tupian5.jpg', 1, 99.9, 0, '商家账号5', '零食类型5');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '提问',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1679749215935 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线客服' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (91, '2023-02-11 15:38:11', 1, 1, '提问1', '回复1', 1);
INSERT INTO `chat` VALUES (92, '2023-02-11 15:38:11', 2, 2, '提问2', '回复2', 2);
INSERT INTO `chat` VALUES (93, '2023-02-11 15:38:11', 3, 3, '提问3', '回复3', 3);
INSERT INTO `chat` VALUES (94, '2023-02-11 15:38:11', 4, 4, '提问4', '回复4', 4);
INSERT INTO `chat` VALUES (95, '2023-02-11 15:38:11', 5, 5, '提问5', '回复5', 5);
INSERT INTO `chat` VALUES (96, '2023-02-11 15:38:11', 6, 6, '提问6', '回复6', 6);
INSERT INTO `chat` VALUES (97, '2023-02-11 15:38:11', 7, 7, '提问7', '回复7', 7);
INSERT INTO `chat` VALUES (98, '2023-02-11 15:38:11', 8, 8, '提问8', '回复8', 8);
INSERT INTO `chat` VALUES (1676102162714, '2023-02-11 15:56:02', 1676101914203, NULL, '你好', NULL, 0);
INSERT INTO `chat` VALUES (1677576833669, '2023-02-28 17:33:53', 1676101914203, NULL, 'asdas', NULL, 0);
INSERT INTO `chat` VALUES (1679744864536, '2023-03-25 19:47:43', 1676101914203, NULL, 'adwdawasd', NULL, 1);
INSERT INTO `chat` VALUES (1679749215934, '2023-03-25 21:00:15', 1679749097576, NULL, '打我打我的', NULL, 1);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/picture3.jpg');

-- ----------------------------
-- Table structure for discusslingshixinxi
-- ----------------------------
DROP TABLE IF EXISTS `discusslingshixinxi`;
CREATE TABLE `discusslingshixinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '零食信息评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for lingshifenlei
-- ----------------------------
DROP TABLE IF EXISTS `lingshifenlei`;
CREATE TABLE `lingshifenlei`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lingshifenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '零食分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1676101978011 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '零食分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lingshifenlei
-- ----------------------------
INSERT INTO `lingshifenlei` VALUES (31, '2023-02-11 15:38:11', '零食分类1');
INSERT INTO `lingshifenlei` VALUES (32, '2023-02-11 15:38:11', '零食分类2');
INSERT INTO `lingshifenlei` VALUES (33, '2023-02-11 15:38:11', '零食分类3');
INSERT INTO `lingshifenlei` VALUES (34, '2023-02-11 15:38:11', '零食分类4');
INSERT INTO `lingshifenlei` VALUES (35, '2023-02-11 15:38:11', '零食分类5');
INSERT INTO `lingshifenlei` VALUES (36, '2023-02-11 15:38:11', '零食分类6');
INSERT INTO `lingshifenlei` VALUES (37, '2023-02-11 15:38:11', '零食分类7');
INSERT INTO `lingshifenlei` VALUES (38, '2023-02-11 15:38:11', '零食分类8');
INSERT INTO `lingshifenlei` VALUES (1676101978010, '2023-02-11 15:52:57', '11');

-- ----------------------------
-- Table structure for lingshixinxi
-- ----------------------------
DROP TABLE IF EXISTS `lingshixinxi`;
CREATE TABLE `lingshixinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商家名称',
  `lingshimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '零食名称',
  `lingshixiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '零食详情',
  `lingshileixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '零食类型',
  `pinpai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '品牌',
  `tupian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '图片',
  `guige` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '规格',
  `shengchanriqi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生产日期',
  `baozhiqi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '保质期',
  `thumbsupnum` int(11) DEFAULT 0 COMMENT '赞',
  `crazilynum` int(11) DEFAULT 0 COMMENT '踩',
  `clicktime` datetime(0) DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT 0 COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1678937252262 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '零食信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lingshixinxi
-- ----------------------------
INSERT INTO `lingshixinxi` VALUES (41, '2023-02-11 15:38:11', '商家账号1', '商家名称1', '虾条', '零食详情1', '零食类型1', '品牌1', 'upload/lingshixinxi_tupian1.jpg,upload/lingshixinxi_tupian2.jpg,upload/lingshixinxi_tupian3.jpg', '规格1', '生产日期1', '保质期1', 1, 1, '2023-03-25 19:36:44', 18, 99.9);
INSERT INTO `lingshixinxi` VALUES (42, '2023-02-11 15:38:11', '商家账号2', '商家名称2', '三只松鼠', '零食详情2', '零食类型2', '品牌2', 'upload/lingshixinxi_tupian2.jpg,upload/lingshixinxi_tupian3.jpg,upload/lingshixinxi_tupian4.jpg', '规格2', '生产日期2', '保质期2', 2, 2, '2023-02-23 15:49:36', 8, 99.9);
INSERT INTO `lingshixinxi` VALUES (43, '2023-02-11 15:38:11', '商家账号3', '商家名称3', '味咪', '零食详情3', '零食类型3', '品牌3', 'upload/lingshixinxi_tupian3.jpg,upload/lingshixinxi_tupian4.jpg,upload/lingshixinxi_tupian5.jpg', '规格3', '生产日期3', '保质期3', 3, 3, '2023-02-23 15:59:10', 6, 99.9);
INSERT INTO `lingshixinxi` VALUES (44, '2023-02-11 15:38:11', '商家账号4', '商家名称4', '旺旺', '零食详情4', '零食类型4', '品牌4', 'upload/lingshixinxi_tupian4.jpg,upload/lingshixinxi_tupian5.jpg,upload/lingshixinxi_tupian6.jpg', '规格4', '生产日期4', '保质期4', 4, 4, '2023-03-25 20:34:44', 11, 99.9);
INSERT INTO `lingshixinxi` VALUES (45, '2023-02-11 15:38:11', '商家账号5', '商家名称5', '两只松鼠', '零食详情5', '零食类型5', '品牌5', 'upload/lingshixinxi_tupian5.jpg,upload/lingshixinxi_tupian6.jpg,upload/lingshixinxi_tupian7.jpg', '规格5', '生产日期5', '保质期5', 5, 5, '2023-02-23 16:00:34', 9, 99.9);
INSERT INTO `lingshixinxi` VALUES (46, '2023-02-11 15:38:11', '商家账号6', '商家名称6', '饼干', '零食详情6', '零食类型6', '品牌6', 'upload/lingshixinxi_tupian6.jpg,upload/lingshixinxi_tupian7.jpg,upload/lingshixinxi_tupian8.jpg', '规格6', '生产日期6', '保质期6', 6, 6, '2023-03-25 19:36:57', 12, 99.9);
INSERT INTO `lingshixinxi` VALUES (47, '2023-02-11 15:38:11', '商家账号7', '商家名称7', '百草味', '零食详情7', '零食类型7', '品牌7', 'upload/lingshixinxi_tupian7.jpg,upload/lingshixinxi_tupian8.jpg,upload/lingshixinxi_tupian9.jpg', '规格7', '生产日期7', '保质期7', 7, 7, '2023-02-23 15:50:24', 11, 99.9);
INSERT INTO `lingshixinxi` VALUES (48, '2023-02-11 15:38:11', '商家账号8', '商家名称8', '旺汪', '零食详情8', '零食类型8', '品牌8', 'upload/lingshixinxi_tupian8.jpg,upload/lingshixinxi_tupian9.jpg,upload/lingshixinxi_tupian10.jpg', '规格8', '生产日期8', '保质期8', 8, 8, '2023-03-25 19:37:10', 14, 99.9);
INSERT INTO `lingshixinxi` VALUES (1676102013785, '2023-02-11 15:53:33', '22', '李田', '11', '<p>输入零食详情</p>', '11', '11', 'upload/1676101992825.jpg', '11', '11', '11', 0, 0, '2023-03-25 20:59:47', 27, 80);
INSERT INTO `lingshixinxi` VALUES (1678937252261, '2023-03-16 11:27:32', '22', '李田', '大饼', '', '11', '', '', '', '', '', 0, 0, '2023-03-25 20:34:34', 1, 20);

-- ----------------------------
-- Table structure for lingshiyuding
-- ----------------------------
DROP TABLE IF EXISTS `lingshiyuding`;
CREATE TABLE `lingshiyuding`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单编号',
  `lingshimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '零食名称',
  `pinpai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '品牌',
  `yudingshuliang` int(11) NOT NULL COMMENT '预订数量',
  `jiage` float NOT NULL COMMENT '价格',
  `zongjiage` float DEFAULT NULL COMMENT '总价格',
  `yudingshijian` datetime(0) DEFAULT NULL COMMENT '预订时间',
  `beizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账号',
  `nicheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '昵称',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商家名称',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dingdanbianhao`(`dingdanbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1679750643701 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '零食预订' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lingshiyuding
-- ----------------------------
INSERT INTO `lingshiyuding` VALUES (61, '2023-02-11 15:38:11', '1111111111', '零食名称1', '品牌1', 1, 1, 1, '2023-02-11 15:38:11', '备注1', '账号1', '昵称1', '商家账号1', '商家名称1', '未支付');
INSERT INTO `lingshiyuding` VALUES (62, '2023-02-11 15:38:11', '2222222222', '零食名称2', '品牌2', 2, 2, 2, '2023-02-11 15:38:11', '备注2', '账号2', '昵称2', '商家账号2', '商家名称2', '未支付');
INSERT INTO `lingshiyuding` VALUES (63, '2023-02-11 15:38:11', '3333333333', '零食名称3', '品牌3', 3, 3, 3, '2023-02-11 15:38:11', '备注3', '账号3', '昵称3', '商家账号3', '商家名称3', '未支付');
INSERT INTO `lingshiyuding` VALUES (64, '2023-02-11 15:38:11', '4444444444', '零食名称4', '品牌4', 4, 4, 4, '2023-02-11 15:38:11', '备注4', '账号4', '昵称4', '商家账号4', '商家名称4', '未支付');
INSERT INTO `lingshiyuding` VALUES (65, '2023-02-11 15:38:11', '5555555555', '零食名称5', '品牌5', 5, 5, 5, '2023-02-11 15:38:11', '备注5', '账号5', '昵称5', '商家账号5', '商家名称5', '未支付');
INSERT INTO `lingshiyuding` VALUES (66, '2023-02-11 15:38:11', '6666666666', '零食名称6', '品牌6', 6, 6, 6, '2023-02-11 15:38:11', '备注6', '账号6', '昵称6', '商家账号6', '商家名称6', '未支付');
INSERT INTO `lingshiyuding` VALUES (67, '2023-02-11 15:38:11', '7777777777', '零食名称7', '品牌7', 7, 7, 7, '2023-02-11 15:38:11', '备注7', '账号7', '昵称7', '商家账号7', '商家名称7', '未支付');
INSERT INTO `lingshiyuding` VALUES (68, '2023-02-11 15:38:11', '8888888888', '零食名称8', '品牌8', 8, 8, 8, '2023-02-11 15:38:11', '备注8', '账号8', '昵称8', '商家账号8', '商家名称8', '未支付');
INSERT INTO `lingshiyuding` VALUES (1676102147687, '2023-02-11 15:55:47', '1676102177062', '22', '22', 10, 50, 500, '2023-02-11 15:56:17', '', '11', '小小', '22', '李田', '已支付');
INSERT INTO `lingshiyuding` VALUES (1677559447778, '2023-02-28 12:44:07', '1677559440541', '22', '22', 2, 50, 100, '2023-02-28 12:44:00', '', '11', '小小', '22', '李田', '已支付');
INSERT INTO `lingshiyuding` VALUES (1678937128297, '2023-03-16 11:25:27', '1678937118221', '22', '22', 50, 50, 2500, '2023-03-16 11:25:18', '', '11', '小小', '22', '李田', '已支付');
INSERT INTO `lingshiyuding` VALUES (1679744477145, '2023-03-25 19:41:16', '1679744470366', '零食名称2', '品牌2', 10, 22, 220, '2023-03-25 19:41:10', '', '11', '小小', '商家账号2', '商家名称2', '已支付');
INSERT INTO `lingshiyuding` VALUES (1679744841522, '2023-03-25 19:47:21', '1679744831940', '22', '22', 20, 50, 1000, '2023-03-25 19:47:11', '123', '11', '小小', '22', '李田', '已支付');
INSERT INTO `lingshiyuding` VALUES (1679745089047, '2023-03-25 19:51:28', '1679745082254', '22', '22', 10, 50, 500, '2023-03-25 19:51:22', '', '11', '小小', '22', '李田', '已支付');
INSERT INTO `lingshiyuding` VALUES (1679747505063, '2023-03-25 20:31:44', '1679747499068', '22', '22', 20, 50, 1000, '2023-03-25 20:31:39', '', '11', '小小', '22', '李田', '已支付');
INSERT INTO `lingshiyuding` VALUES (1679747741856, '2023-03-25 20:35:41', '1679747735972', '22', '22', 12, 50, 600, '2023-03-25 20:35:35', '', '11', '小小', '22', '李田', '已支付');
INSERT INTO `lingshiyuding` VALUES (1679748636278, '2023-03-25 20:50:35', '1679748628550', '22', '22', 10, 50, 500, '2023-03-25 20:50:28', '', '11', '小小', '22', '李田', '已支付');
INSERT INTO `lingshiyuding` VALUES (1679749205776, '2023-03-25 21:00:05', '1679749197856', '22', '22', 11, 50, 550, '2023-03-25 20:59:57', '', '55', '55', '22', '李田', '已支付');
INSERT INTO `lingshiyuding` VALUES (1679749778759, '2023-03-25 21:09:38', '1679749771456', '22', '22', 14, 50, 700, '2023-03-25 21:09:31', '', '55', '55', '22', '李田', '未支付');
INSERT INTO `lingshiyuding` VALUES (1679750643700, '2023-03-25 21:24:03', '1679750638809', '22', '22', 5, 50, 250, '2023-03-25 21:23:58', '', '55', '55', '22', '李田', '');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '简介',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 149 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '新闻资讯' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (141, '2023-02-11 15:38:11', '有梦想，就要努力去实现', '不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。', 'upload/news_picture1.jpg', '<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>');
INSERT INTO `news` VALUES (142, '2023-02-11 15:38:11', '又是一年毕业季', '又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。', 'upload/news_picture2.jpg', '<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>');
INSERT INTO `news` VALUES (143, '2023-02-11 15:38:11', '挫折路上，坚持常在心间', '回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。', 'upload/news_picture3.jpg', '<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
INSERT INTO `news` VALUES (144, '2023-02-11 15:38:11', '挫折是另一个生命的开端', '当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。', 'upload/news_picture4.jpg', '<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>');
INSERT INTO `news` VALUES (145, '2023-02-11 15:38:11', '你要去相信，没有到不了的明天', '有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。', 'upload/news_picture5.jpg', '<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>');
INSERT INTO `news` VALUES (146, '2023-02-11 15:38:11', '离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端', '无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。', 'upload/news_picture6.jpg', '<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
INSERT INTO `news` VALUES (147, '2023-02-11 15:38:11', 'Leave未必是一种痛苦', '无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。', 'upload/news_picture7.jpg', '<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
INSERT INTO `news` VALUES (148, '2023-02-11 15:38:11', '坚持才会成功', '回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。', 'upload/news_picture8.jpg', '<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'lingshixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT 0 COMMENT '价格',
  `discountprice` float DEFAULT 0 COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT 0 COMMENT '总价格',
  `discounttotal` float DEFAULT 0 COMMENT '折扣总价格',
  `type` int(11) DEFAULT 1 COMMENT '支付类型',
  `status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `logistics` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '物流',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户名称',
  `goodtype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orderid`(`orderid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1679749188887 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1677137146486, '2023-02-23 15:25:46', '202322315254625', 'lingshixinxi', 1677136982431, 41, '品牌1', 'upload/lingshixinxi_tupian1.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已取消', '武汉', '13245678901', '123', '', NULL, '商家账号1', '零食类型1');
INSERT INTO `orders` VALUES (1677137146795, '2023-02-23 15:25:46', '20232231525466', 'lingshixinxi', 1677136982431, 42, '品牌2', 'upload/lingshixinxi_tupian2.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已取消', '武汉', '13245678901', '123', '', NULL, '商家账号2', '零食类型2');
INSERT INTO `orders` VALUES (1677137163617, '2023-02-23 15:26:03', '20232231526385', 'lingshixinxi', 1677136982431, 41, '品牌1', 'upload/lingshixinxi_tupian1.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已支付', '武汉', '13245678901', '123', '', NULL, '商家账号1', '零食类型1');
INSERT INTO `orders` VALUES (1677137163864, '2023-02-23 15:26:03', '20232231526383', 'lingshixinxi', 1677136982431, 42, '品牌2', 'upload/lingshixinxi_tupian2.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已支付', '武汉', '13245678901', '123', '', NULL, '商家账号2', '零食类型2');
INSERT INTO `orders` VALUES (1677137428126, '2023-02-23 15:30:27', '2023223153027976', 'lingshixinxi', 1677136982431, 44, '品牌4', 'upload/lingshixinxi_tupian4.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已取消', '武汉', '13245678901', '123', '', NULL, '商家账号4', '零食类型4');
INSERT INTO `orders` VALUES (1677137443807, '2023-02-23 15:30:42', '2023223153042893', 'lingshixinxi', 1677136982431, 44, '品牌4', 'upload/lingshixinxi_tupian4.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已支付', '武汉', '13245678901', '123', '', NULL, '商家账号4', '零食类型4');
INSERT INTO `orders` VALUES (1677138330674, '2023-02-23 15:45:30', '202322315453055', 'lingshixinxi', 1677136982431, 46, '品牌6', 'upload/lingshixinxi_tupian6.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已支付', '武汉', '13245678901', '123', '', NULL, '商家账号6', '零食类型6');
INSERT INTO `orders` VALUES (1677138363676, '2023-02-23 15:46:02', '202322315462716', 'lingshixinxi', 1677136982431, 47, '品牌7', 'upload/lingshixinxi_tupian7.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已支付', '武汉', '13245678901', '123', '', NULL, '商家账号7', '零食类型7');
INSERT INTO `orders` VALUES (1677138576854, '2023-02-23 15:49:36', '2023223154936801', 'lingshixinxi', 1677136982431, 42, '品牌2', 'upload/lingshixinxi_tupian2.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已支付', '武汉', '13245678901', '123', '', NULL, '商家账号2', '零食类型2');
INSERT INTO `orders` VALUES (1677138624994, '2023-02-23 15:50:24', '2023223155024617', 'lingshixinxi', 1677136982431, 47, '品牌7', 'upload/lingshixinxi_tupian7.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已支付', '武汉', '13245678901', '123', '', NULL, '商家账号7', '零食类型7');
INSERT INTO `orders` VALUES (1677139151052, '2023-02-23 15:59:11', '2023223155910987', 'lingshixinxi', 1677136982431, 43, '品牌3', 'upload/lingshixinxi_tupian3.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已支付', '武汉', '13245678901', '123', '', NULL, '商家账号3', '零食类型3');
INSERT INTO `orders` VALUES (1677139235303, '2023-02-23 16:00:34', '202322316034781', 'lingshixinxi', 1677136982431, 45, '品牌5', 'upload/lingshixinxi_tupian5.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '未支付', '武汉', '13245678901', '123', '', NULL, '商家账号5', '零食类型5');
INSERT INTO `orders` VALUES (1677577505487, '2023-02-28 17:45:04', '202322817454891', 'lingshixinxi', 1676101914203, 41, '品牌1', 'upload/lingshixinxi_tupian1.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已支付', '人民南路323号', '13823888888', '11', '', NULL, '商家账号1', '零食类型1');
INSERT INTO `orders` VALUES (1677577505825, '2023-02-28 17:45:04', '202322817454886', 'lingshixinxi', 1676101914203, 46, '品牌6', 'upload/lingshixinxi_tupian6.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已支付', '人民南路323号', '13823888888', '11', '', NULL, '商家账号6', '零食类型6');
INSERT INTO `orders` VALUES (1678936599415, '2023-03-16 11:16:38', '2023316111638830', 'lingshixinxi', 1676101914203, 41, '品牌1', 'upload/lingshixinxi_tupian1.jpg', 100, 99.9, 99.9, 9990, 9990, 1, '已支付', '人民南路323号', '13823888888', '11', '', NULL, '商家账号1', '零食类型1');
INSERT INTO `orders` VALUES (1678937004625, '2023-03-16 11:23:24', '2023316112324507', 'lingshixinxi', 1676101914203, 1676102013785, '11', 'upload/1676101992825.jpg', 10, 80, 80, 800, 800, 1, '已退款', '人民南路323号', '13823888888', '11', '', NULL, '22', '11');
INSERT INTO `orders` VALUES (1678937799252, '2023-03-16 11:36:38', '2023316113638866', 'lingshixinxi', 1676101914203, 41, '品牌1', 'upload/lingshixinxi_tupian1.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已支付', '人民南路323号', '13823888888', '11', '', NULL, '商家账号1', '零食类型1');
INSERT INTO `orders` VALUES (1678937835840, '2023-03-16 11:37:15', '2023316113715592', 'lingshixinxi', 1676101914203, 44, '品牌4', 'upload/lingshixinxi_tupian4.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已支付', '人民南路323号', '13823888888', '11', '', NULL, '商家账号4', '零食类型4');
INSERT INTO `orders` VALUES (1679744230638, '2023-03-25 19:37:10', '2023325193710516', 'lingshixinxi', 1676101914203, 48, '品牌8', 'upload/lingshixinxi_tupian8.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已支付', '人民南路323号', '13823888888', '11', '', NULL, '商家账号8', '零食类型8');
INSERT INTO `orders` VALUES (1679744802910, '2023-03-25 19:46:42', '20233251946423', 'lingshixinxi', 1676101914203, 1676102013785, '11', 'upload/1676101992825.jpg', 1, 80, 80, 80, 80, 1, '已完成', '人民南路323号', '13823888888', '11', '', NULL, '22', '11');
INSERT INTO `orders` VALUES (1679744890941, '2023-03-25 19:48:10', '2023325194810638', 'lingshixinxi', 1676101914203, 1676102013785, '11', 'upload/1676101992825.jpg', 1, 80, 80, 80, 80, 1, '已完成', '人民南路323号', '13823888888', '11', '', NULL, '22', '11');
INSERT INTO `orders` VALUES (1679744938170, '2023-03-25 19:48:57', '2023325194857337', 'lingshixinxi', 1676101914203, 1676102013785, '11', 'upload/1676101992825.jpg', 1, 80, 80, 80, 80, 1, '已完成', '人民南路323号', '13823888888', '11', '', NULL, '22', '11');
INSERT INTO `orders` VALUES (1679747696361, '2023-03-25 20:34:56', '2023325203456153', 'lingshixinxi', 1676101914203, 1676102013785, '11', 'upload/1676101992825.jpg', 1, 80, 80, 80, 80, 1, '已完成', '人民南路323号', '13823888888', '11', '', NULL, '22', '11');
INSERT INTO `orders` VALUES (1679747710317, '2023-03-25 20:35:09', '202332520359607', 'lingshixinxi', 1676101914203, 1676102013785, '11', 'upload/1676101992825.jpg', 1, 80, 80, 80, 80, 1, '已完成', '人民南路323号', '13823888888', '11', '', NULL, '22', '11');
INSERT INTO `orders` VALUES (1679749179837, '2023-03-25 20:59:39', '2023325205939300', 'lingshixinxi', 1679749097576, 1676102013785, '11', 'upload/1676101992825.jpg', 1, 80, 80, 80, 80, 1, '已完成', '湖北', '12345678901', '55', '', NULL, '22', '11');
INSERT INTO `orders` VALUES (1679749188886, '2023-03-25 20:59:47', '2023325205947894', 'lingshixinxi', 1679749097576, 1676102013785, '11', 'upload/1676101992825.jpg', 2, 80, 80, 160, 160, 1, '已完成', '湖北', '12345678901', '55', '', NULL, '22', '11');

-- ----------------------------
-- Table structure for shangjia
-- ----------------------------
DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE `shangjia`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商家账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `shangjiamingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商家名称',
  `shangjiadizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商家地址',
  `shangjiadianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商家电话',
  `shangjiafengmian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '商家封面',
  `money` float DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `shangjiazhanghao`(`shangjiazhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1676101958958 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商家' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangjia
-- ----------------------------
INSERT INTO `shangjia` VALUES (21, '2023-02-11 15:38:11', '商家账号1', '123456', '商家名称1', '商家地址1', '13823888881', 'upload/shangjia_shangjiafengmian1.jpg', 200);
INSERT INTO `shangjia` VALUES (22, '2023-02-11 15:38:11', '商家账号2', '123456', '商家名称2', '商家地址2', '13823888882', 'upload/shangjia_shangjiafengmian2.jpg', 200);
INSERT INTO `shangjia` VALUES (23, '2023-02-11 15:38:11', '商家账号3', '123456', '商家名称3', '商家地址3', '13823888883', 'upload/shangjia_shangjiafengmian3.jpg', 200);
INSERT INTO `shangjia` VALUES (24, '2023-02-11 15:38:11', '商家账号4', '123456', '商家名称4', '商家地址4', '13823888884', 'upload/shangjia_shangjiafengmian4.jpg', 200);
INSERT INTO `shangjia` VALUES (25, '2023-02-11 15:38:11', '商家账号5', '123456', '商家名称5', '商家地址5', '13823888885', 'upload/shangjia_shangjiafengmian5.jpg', 200);
INSERT INTO `shangjia` VALUES (26, '2023-02-11 15:38:11', '商家账号6', '123456', '商家名称6', '商家地址6', '13823888886', 'upload/shangjia_shangjiafengmian6.jpg', 200);
INSERT INTO `shangjia` VALUES (27, '2023-02-11 15:38:11', '商家账号7', '123456', '商家名称7', '商家地址7', '13823888887', 'upload/shangjia_shangjiafengmian7.jpg', 200);
INSERT INTO `shangjia` VALUES (28, '2023-02-11 15:38:11', '商家账号8', '123456', '商家名称8', '商家地址8', '13823888888', 'upload/shangjia_shangjiafengmian8.jpg', 200);
INSERT INTO `shangjia` VALUES (1676101958957, '2023-02-11 15:52:38', '22', '22', '李田', '111', '13823888881', 'upload/1676101958146.jpg', 0);

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1676102116771 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1676102109050, '2023-02-11 15:55:08', 1676101914203, 41, 'lingshixinxi', '品牌1', 'upload/lingshixinxi_tupian1.jpg', '1', '零食类型1', NULL);
INSERT INTO `storeup` VALUES (1676102116770, '2023-02-11 15:55:15', 1676101914203, 1676102013785, 'lingshixinxi', '11', 'upload/1676101992825.jpg', '1', '11', NULL);

-- ----------------------------
-- Table structure for systemintro
-- ----------------------------
DROP TABLE IF EXISTS `systemintro`;
CREATE TABLE `systemintro`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '副标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `picture1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '图片1',
  `picture2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '图片2',
  `picture3` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '图片3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '关于我们' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of systemintro
-- ----------------------------
INSERT INTO `systemintro` VALUES (1, '2023-02-11 15:38:11', '系统简介', 'SYSTEM INTRODUCTION', '当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。', 'upload/systemintro_picture1.jpg', 'upload/systemintro_picture2.jpg', 'upload/systemintro_picture3.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1676101914203, '11', 'yonghu', '用户', 'e2448fcusq8vv944ha1ioqj8lzaam1z3', '2023-02-11 15:51:58', '2023-03-25 21:56:14');
INSERT INTO `token` VALUES (2, 1676101958957, '22', 'shangjia', '商家', '8nxh1u9ehqco7swtyt1u42m4flkmm8x9', '2023-02-11 15:52:47', '2023-03-25 22:05:12');
INSERT INTO `token` VALUES (3, 1, 'admin', 'users', '管理员', 'b2qwgrvgo5o9dh2if8y34qhozkt7ndst', '2023-02-11 16:00:04', '2023-03-25 22:06:14');
INSERT INTO `token` VALUES (4, 1677136982431, '123', 'yonghu', '用户', 'mo5dfcicbtfgtdxkmw2xlwxnoftmx4yk', '2023-02-23 15:23:13', '2023-02-23 16:58:45');
INSERT INTO `token` VALUES (5, 1677561028892, '12', 'yonghu', '用户', 'ov7ef2vqf3oxsgbrv8acr8au675d8k03', '2023-02-28 13:10:36', '2023-02-28 14:10:36');
INSERT INTO `token` VALUES (6, 21, '商家账号1', 'shangjia', '商家', '9mtxo2q9yo2gxzzek1zyxgf9ly6w6z1b', '2023-03-16 11:14:52', '2023-03-16 12:20:02');
INSERT INTO `token` VALUES (7, 1679749097576, '55', 'yonghu', '用户', 'jm83rubu0rxh4hf9zh8b0j1l92thzgtz', '2023-03-25 20:58:31', '2023-03-25 22:14:37');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2023-02-11 15:38:12');

-- ----------------------------
-- Table structure for wanghonglingshi
-- ----------------------------
DROP TABLE IF EXISTS `wanghonglingshi`;
CREATE TABLE `wanghonglingshi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lingshimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '零食名称',
  `pinpai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '品牌',
  `lingshileixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '零食类型',
  `lingshixiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '零食详情',
  `daohuoshijian` date DEFAULT NULL COMMENT '到货时间',
  `lingshitupian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '零食图片',
  `jiage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '价格',
  `guige` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '规格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商家名称',
  `thumbsupnum` int(11) DEFAULT 0 COMMENT '赞',
  `crazilynum` int(11) DEFAULT 0 COMMENT '踩',
  `clicknum` int(11) DEFAULT 0 COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1676102051377 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网红零食' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wanghonglingshi
-- ----------------------------
INSERT INTO `wanghonglingshi` VALUES (51, '2023-02-11 15:38:11', '零食名称1', '品牌1', '零食类型1', '零食详情1', '2023-02-11', 'upload/wanghonglingshi_lingshitupian1.jpg,upload/wanghonglingshi_lingshitupian2.jpg,upload/wanghonglingshi_lingshitupian3.jpg', '11', '规格1', 1, '商家账号1', '商家名称1', 1, 1, 9);
INSERT INTO `wanghonglingshi` VALUES (52, '2023-02-11 15:38:11', '零食名称2', '品牌2', '零食类型2', '零食详情2', '2023-02-11', 'upload/wanghonglingshi_lingshitupian2.jpg,upload/wanghonglingshi_lingshitupian3.jpg,upload/wanghonglingshi_lingshitupian4.jpg', '22', '规格2', 2, '商家账号2', '商家名称2', 2, 2, 7);
INSERT INTO `wanghonglingshi` VALUES (53, '2023-02-11 15:38:11', '零食名称3', '品牌3', '零食类型3', '零食详情3', '2023-02-11', 'upload/wanghonglingshi_lingshitupian3.jpg,upload/wanghonglingshi_lingshitupian4.jpg,upload/wanghonglingshi_lingshitupian5.jpg', '23', '规格3', 3, '商家账号3', '商家名称3', 3, 3, 3);
INSERT INTO `wanghonglingshi` VALUES (54, '2023-02-11 15:38:11', '零食名称4', '品牌4', '零食类型4', '零食详情4', '2023-02-11', 'upload/wanghonglingshi_lingshitupian4.jpg,upload/wanghonglingshi_lingshitupian5.jpg,upload/wanghonglingshi_lingshitupian6.jpg', '34', '规格4', 4, '商家账号4', '商家名称4', 4, 4, 4);
INSERT INTO `wanghonglingshi` VALUES (55, '2023-02-11 15:38:11', '零食名称5', '品牌5', '零食类型5', '零食详情5', '2023-02-11', 'upload/wanghonglingshi_lingshitupian5.jpg,upload/wanghonglingshi_lingshitupian6.jpg,upload/wanghonglingshi_lingshitupian7.jpg', '45', '规格5', 5, '商家账号5', '商家名称5', 5, 5, 5);
INSERT INTO `wanghonglingshi` VALUES (56, '2023-02-11 15:38:11', '零食名称6', '品牌6', '零食类型6', '零食详情6', '2023-02-11', 'upload/wanghonglingshi_lingshitupian6.jpg,upload/wanghonglingshi_lingshitupian7.jpg,upload/wanghonglingshi_lingshitupian8.jpg', '36', '规格6', 6, '商家账号6', '商家名称6', 6, 6, 7);
INSERT INTO `wanghonglingshi` VALUES (57, '2023-02-11 15:38:11', '零食名称7', '品牌7', '零食类型7', '零食详情7', '2023-02-11', 'upload/wanghonglingshi_lingshitupian7.jpg,upload/wanghonglingshi_lingshitupian8.jpg,upload/wanghonglingshi_lingshitupian9.jpg', '47', '规格7', 7, '商家账号7', '商家名称7', 7, 7, 8);
INSERT INTO `wanghonglingshi` VALUES (58, '2023-02-11 15:38:11', '零食名称8', '品牌8', '零食类型8', '零食详情8', '2023-02-11', 'upload/wanghonglingshi_lingshitupian8.jpg,upload/wanghonglingshi_lingshitupian9.jpg,upload/wanghonglingshi_lingshitupian10.jpg', '58', '规格8', 8, '商家账号8', '商家名称8', 8, 8, 9);
INSERT INTO `wanghonglingshi` VALUES (1676102051376, '2023-02-11 15:54:11', '22', '22', '11', '<p>输入零食详情</p>', '2023-02-13', 'upload/1676102035576.jpg', '50', '22', 5, '22', '李田', 0, 0, 22);

-- ----------------------------
-- Table structure for weiyuejin
-- ----------------------------
DROP TABLE IF EXISTS `weiyuejin`;
CREATE TABLE `weiyuejin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单编号',
  `shangjiamingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商家名称',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商家账号',
  `lingshimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '零食名称',
  `quxiaoshuliang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '取消数量',
  `jiage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '价格',
  `zongjiage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '总价格',
  `weiyuejin` float NOT NULL COMMENT '违约金',
  `quxiaoshijian` date DEFAULT NULL COMMENT '取消时间',
  `dengjishijian` datetime(0) DEFAULT NULL COMMENT '登记时间',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账号',
  `nicheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '昵称',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1679749334532 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '违约金' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of weiyuejin
-- ----------------------------
INSERT INTO `weiyuejin` VALUES (81, '2023-02-11 15:38:11', '订单编号1', '商家名称1', '商家账号1', '零食名称1', '取消数量1', '价格1', '总价格1', 1, '2023-02-11', '2023-02-11 15:38:11', '账号1', '昵称1', '未支付');
INSERT INTO `weiyuejin` VALUES (82, '2023-02-11 15:38:11', '订单编号2', '商家名称2', '商家账号2', '零食名称2', '取消数量2', '价格2', '总价格2', 2, '2023-02-11', '2023-02-11 15:38:11', '账号2', '昵称2', '未支付');
INSERT INTO `weiyuejin` VALUES (83, '2023-02-11 15:38:11', '订单编号3', '商家名称3', '商家账号3', '零食名称3', '取消数量3', '价格3', '总价格3', 3, '2023-02-11', '2023-02-11 15:38:11', '账号3', '昵称3', '未支付');
INSERT INTO `weiyuejin` VALUES (84, '2023-02-11 15:38:11', '订单编号4', '商家名称4', '商家账号4', '零食名称4', '取消数量4', '价格4', '总价格4', 4, '2023-02-11', '2023-02-11 15:38:11', '账号4', '昵称4', '未支付');
INSERT INTO `weiyuejin` VALUES (85, '2023-02-11 15:38:11', '订单编号5', '商家名称5', '商家账号5', '零食名称5', '取消数量5', '价格5', '总价格5', 5, '2023-02-11', '2023-02-11 15:38:11', '账号5', '昵称5', '未支付');
INSERT INTO `weiyuejin` VALUES (86, '2023-02-11 15:38:11', '订单编号6', '商家名称6', '商家账号6', '零食名称6', '取消数量6', '价格6', '总价格6', 6, '2023-02-11', '2023-02-11 15:38:11', '账号6', '昵称6', '未支付');
INSERT INTO `weiyuejin` VALUES (87, '2023-02-11 15:38:11', '订单编号7', '商家名称7', '商家账号7', '零食名称7', '取消数量7', '价格7', '总价格7', 7, '2023-02-11', '2023-02-11 15:38:11', '账号7', '昵称7', '未支付');
INSERT INTO `weiyuejin` VALUES (88, '2023-02-11 15:38:11', '订单编号8', '商家名称8', '商家账号8', '零食名称8', '取消数量8', '价格8', '总价格8', 8, '2023-02-11', '2023-02-11 15:38:11', '账号8', '昵称8', '未支付');
INSERT INTO `weiyuejin` VALUES (1676102254559, '2023-02-11 15:57:33', '1676102225389', '李田', '22', '22', '5', '50', '250', 100, '2023-02-11', '2023-02-11 15:58:05', '11', '小小', '已支付');
INSERT INTO `weiyuejin` VALUES (1679747582405, '2023-03-25 20:33:01', '1676102225389', '李田', '22', '22', '5', '60', '250', 50, '2023-02-11', '2023-03-25 20:32:55', '11', '小小', '已支付');
INSERT INTO `weiyuejin` VALUES (1679749334531, '2023-03-25 21:02:14', '1679749260649', '李田', '22', '22', '10', '50', '500', 400, '2023-03-25', '2023-03-25 21:02:06', '55', '55', '已支付');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `nicheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '昵称',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `touxiang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '头像',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `shenfenzhenghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证号',
  `nianling` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '年龄',
  `money` float DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zhanghao`(`zhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1679749097577 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2023-02-11 15:38:11', '账号1', '123456', '昵称1', '男', 'upload/yonghu_touxiang1.jpg', '13823888881', '440300199101010001', '年龄1', 200);
INSERT INTO `yonghu` VALUES (12, '2023-02-11 15:38:11', '账号2', '123456', '昵称2', '男', 'upload/yonghu_touxiang2.jpg', '13823888882', '440300199202020002', '年龄2', 200);
INSERT INTO `yonghu` VALUES (13, '2023-02-11 15:38:11', '账号3', '123456', '昵称3', '男', 'upload/yonghu_touxiang3.jpg', '13823888883', '440300199303030003', '年龄3', 200);
INSERT INTO `yonghu` VALUES (14, '2023-02-11 15:38:11', '账号4', '123456', '昵称4', '男', 'upload/yonghu_touxiang4.jpg', '13823888884', '440300199404040004', '年龄4', 200);
INSERT INTO `yonghu` VALUES (15, '2023-02-11 15:38:11', '账号5', '123456', '昵称5', '男', 'upload/yonghu_touxiang5.jpg', '13823888885', '440300199505050005', '年龄5', 200);
INSERT INTO `yonghu` VALUES (16, '2023-02-11 15:38:11', '账号6', '123456', '昵称6', '男', 'upload/yonghu_touxiang6.jpg', '13823888886', '440300199606060006', '年龄6', 200);
INSERT INTO `yonghu` VALUES (17, '2023-02-11 15:38:11', '账号7', '123456', '昵称7', '男', 'upload/yonghu_touxiang7.jpg', '13823888887', '440300199707070007', '年龄7', 200);
INSERT INTO `yonghu` VALUES (18, '2023-02-11 15:38:11', '账号8', '123456', '昵称8', '男', 'upload/yonghu_touxiang8.jpg', '13823888888', '440300199808080008', '年龄8', 200);
INSERT INTO `yonghu` VALUES (1676101914203, '2023-02-11 15:51:54', '11', '11', '小小', '女', 'upload/1676101899255.jpeg', '13823888888', '441121123123123123', '21', 36511.3);
INSERT INTO `yonghu` VALUES (1677136982431, '2023-02-23 15:23:02', '123', '123', '用户', '男', 'upload/1677139130869.jpg', '12345678901', '420116200909122451', '12', 1);
INSERT INTO `yonghu` VALUES (1677561028892, '2023-02-28 13:10:28', '12', '12', '12', '男', 'upload/1677561020467.jpg', NULL, NULL, NULL, 0);
INSERT INTO `yonghu` VALUES (1679744160257, '2023-03-25 19:36:00', '33', '33', '123', '男', 'upload/1679744132962.jpg', '12312312312', '420116200008292918', '23', 0);
INSERT INTO `yonghu` VALUES (1679744725681, '2023-03-25 19:45:25', '44', '44', '44', '男', 'upload/1679744721791.jpg', NULL, NULL, NULL, 0);
INSERT INTO `yonghu` VALUES (1679749097576, '2023-03-25 20:58:17', '55', '22', '55', '男', 'upload/1679749094335.jpg', NULL, NULL, NULL, 4760);

-- ----------------------------
-- Table structure for yudingquxiao
-- ----------------------------
DROP TABLE IF EXISTS `yudingquxiao`;
CREATE TABLE `yudingquxiao`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单编号',
  `lingshimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '零食名称',
  `pinpai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '品牌',
  `quxiaoshuliang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '取消数量',
  `jiage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '价格',
  `zongjiage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '总价格',
  `quxiaoshijian` datetime(0) DEFAULT NULL COMMENT '取消时间',
  `quxiaoyuanyin` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '取消原因',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账号',
  `nicheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '昵称',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商家名称',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dingdanbianhao`(`dingdanbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1679750043861 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '预订取消' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yudingquxiao
-- ----------------------------
INSERT INTO `yudingquxiao` VALUES (71, '2023-02-11 15:38:11', '1111111111', '零食名称1', '品牌1', '取消数量1', '价格1', '总价格1', '2023-02-11 15:38:11', '取消原因1', '账号1', '昵称1', '商家账号1', '商家名称1', '是', '');
INSERT INTO `yudingquxiao` VALUES (72, '2023-02-11 15:38:11', '2222222222', '零食名称2', '品牌2', '取消数量2', '价格2', '总价格2', '2023-02-11 15:38:11', '取消原因2', '账号2', '昵称2', '商家账号2', '商家名称2', '是', '');
INSERT INTO `yudingquxiao` VALUES (73, '2023-02-11 15:38:11', '3333333333', '零食名称3', '品牌3', '取消数量3', '价格3', '总价格3', '2023-02-11 15:38:11', '取消原因3', '账号3', '昵称3', '商家账号3', '商家名称3', '是', '');
INSERT INTO `yudingquxiao` VALUES (74, '2023-02-11 15:38:11', '4444444444', '零食名称4', '品牌4', '取消数量4', '价格4', '总价格4', '2023-02-11 15:38:11', '取消原因4', '账号4', '昵称4', '商家账号4', '商家名称4', '是', '');
INSERT INTO `yudingquxiao` VALUES (75, '2023-02-11 15:38:11', '5555555555', '零食名称5', '品牌5', '取消数量5', '价格5', '总价格5', '2023-02-11 15:38:11', '取消原因5', '账号5', '昵称5', '商家账号5', '商家名称5', '是', '');
INSERT INTO `yudingquxiao` VALUES (76, '2023-02-11 15:38:11', '6666666666', '零食名称6', '品牌6', '取消数量6', '价格6', '总价格6', '2023-02-11 15:38:11', '取消原因6', '账号6', '昵称6', '商家账号6', '商家名称6', '是', '');
INSERT INTO `yudingquxiao` VALUES (77, '2023-02-11 15:38:11', '7777777777', '零食名称7', '品牌7', '取消数量7', '价格7', '总价格7', '2023-02-11 15:38:11', '取消原因7', '账号7', '昵称7', '商家账号7', '商家名称7', '是', '');
INSERT INTO `yudingquxiao` VALUES (78, '2023-02-11 15:38:11', '8888888888', '零食名称8', '品牌8', '取消数量8', '价格8', '总价格8', '2023-02-11 15:38:11', '取消原因8', '账号8', '昵称8', '商家账号8', '商家名称8', '是', '');
INSERT INTO `yudingquxiao` VALUES (1679748185541, '2023-03-25 20:43:05', '1679748182036', '22', '22', '5', '50', '250', '2023-03-25 20:43:02', '', '11', '小小', '22', '李田', '是', '');
INSERT INTO `yudingquxiao` VALUES (1679748753320, '2023-03-25 20:52:32', '1679748746666', '22', '22', '10', '50', '500', '2023-03-25 20:52:26', '', '11', '小小', '22', '李田', '是', '');
INSERT INTO `yudingquxiao` VALUES (1679749267068, '2023-03-25 21:01:06', '1679749260649', '22', '22', '10', '50', '500', '2023-03-25 21:01:00', '', '55', '55', '22', '李田', '是', '');
INSERT INTO `yudingquxiao` VALUES (1679750043860, '2023-03-25 21:14:03', '1679750037111', '22', '22', '22', '50', '1100', '2023-03-25 21:13:57', '', '55', '55', '22', '李田', '待审核', '');

SET FOREIGN_KEY_CHECKS = 1;
