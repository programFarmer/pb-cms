/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : pb-cms-base

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 26/09/2019 15:53:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for biz_article
-- ----------------------------
DROP TABLE IF EXISTS `biz_article`;
CREATE TABLE `biz_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '文章标题',
  `user_id` varchar(20) DEFAULT NULL COMMENT '用户ID',
  `author` varchar(50) DEFAULT NULL COMMENT '作者',
  `cover_image` varchar(255) DEFAULT NULL COMMENT '文章封面图片',
  `qrcode_path` varchar(255) DEFAULT NULL COMMENT '文章专属二维码地址',
  `is_markdown` tinyint(1) unsigned DEFAULT '1',
  `content` longtext COMMENT '文章内容',
  `content_md` longtext COMMENT 'markdown版的文章内容',
  `top` tinyint(1) unsigned DEFAULT '0' COMMENT '是否置顶',
  `category_id` int(11) unsigned DEFAULT NULL COMMENT '类型',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `recommended` tinyint(1) unsigned DEFAULT '0' COMMENT '是否推荐',
  `slider` tinyint(1) unsigned DEFAULT '0' COMMENT '是否轮播',
  `slider_img` varchar(255) DEFAULT NULL COMMENT '轮播图地址',
  `original` tinyint(1) unsigned DEFAULT '1' COMMENT '是否原创',
  `description` varchar(300) DEFAULT NULL COMMENT '文章简介，最多200字',
  `keywords` varchar(200) DEFAULT NULL COMMENT '文章关键字，优化搜索',
  `comment` tinyint(1) unsigned DEFAULT '1' COMMENT '是否开启评论',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of biz_article
-- ----------------------------
BEGIN;
INSERT INTO `biz_article` VALUES (1, '有史以来最复杂的软件', '1', '郑其锋', 'http://img.puboot.com/stuxnet.png', NULL, 1, '<p><strong>Stuxnet 蠕虫病毒可能是有史以来最复杂的软件。 </strong></p>\r\n<p>我们不知道 Stuxnet 的作者是谁，只知道大概是在2005年至2010年间编写的。</p>\r\n<p>这种病毒藏在 U 盘上。当 U 盘插入 PC，它会自动运行，将自已复制到该 PC。它至少有三种自动运行的方法。如果某种方法行不通，就尝试另一种。其中的两种运行方法是全新的，使用了 Windows 的两个无人知晓的秘密 Bug。</p>\r\n<p>一旦蠕虫进入 PC ，它会尝试获得该 PC 的管理员权限，使用的也是前面提到的那两个无人知道的秘密 Bug。然后，它把自己留下的痕迹全部清除，不让防病毒软件检测到它的存在，用户不会看到任何东西。这种蠕虫隐藏得很好，出现后一年多，没有任何一家安全公司发现它的存在。</p>\r\n<p>它会秘密访问 <a href=\"http://www.mypremierfutbol.com/\">http://www.mypremierfutbol.com</a> 或 <a href=\"http://www.todaysfutbol.com/\">http://www.todaysfutbol.com</a> 这两个网站，告诉服务器已经成功侵入了一台新的 PC，然后从网站下载最新版本自行更新。</p>\r\n<p>它会将自身复制到任何插入该 PC 的 U 盘。使用的 U 盘驱动程序由 Realtek 公司进行了数字签名，但是 Realtek 公司并不知道有这个签名。这意味着，蠕虫作者能够获取 Realtek 公司的最高密钥。</p>\r\n<p>它利用两个 Windows 的 Bug ----一个涉及网络打印机，另一个涉及网络文件----将自己传播到局域网里面的其他计算机上。</p>\r\n<p>直到这一步，它的真正任务还没有开始。</p>\r\n<p>它在每一台计算机上寻找一种由西门子设计的用于大型工业机械自动化的控制软件。一旦发现这种软件，它会使用另<em>一个</em>以前未知的 Bug，将自身复制到工业控制器的驱动程序。然后，它会检查两家特定公司的工业电机，其中一家公司在伊朗，另一家在芬兰。它要搜索的特定电机称为变频驱动器，主要用于运行工业离心机，提纯多种化学品，比如铀。</p>\r\n<p>由于蠕虫完全控制了离心机，因此它可以做任何事情，可以将离心机全部关闭，也可以将它们全部摧毁：只需设定以最大速度旋转离心机，直到它们全都像炸弹一样爆炸，杀死任何恰好站在附近的人。</p>\r\n<p>但它没有这么做，一旦它控制了每台离心机......它就进入潜伏。一旦达到设定的时间，它就会悄悄地唤醒自己，锁住离心机，使得人类无法关闭这些机器。然后悄悄地，蠕虫开始旋转这些离心机，修改了安全参数，增加了一些气体压力......</p>\r\n<p>此外，它还会在离心机正常运转的时候，偷录一段21秒的数据记录。当它控制离心机运行的时候，会一遍又一遍地播放这段数据记录。管理人员会看到，计算机屏幕上的所有离心机运行数据都很正常，但这其实是蠕虫让他们看的。</p>\r\n<p>现在让我们想象一下，有一家工厂正在用离心机净化铀。电脑上的所有数字都表明离心机运行正常。但是，离心机正在悄悄地出问题，一个接一个地倒下，这使得铀产量一直下降。铀必须是纯净的。你的铀不够纯净，无法做任何有用的事情。</p>\r\n<p>工厂的管理者根本找不到原因，离心机的数据是正常的。你永远不会知道，所有这些问题都是由一种计算机蠕虫引起的。这是一种历史上最狡猾和最聪明的计算机蠕虫，它由一些拥有无限资金和无限资源的令人难以置信的秘密团队编写，并且设计时只考虑一个目的：偷偷摧毁某个国家的核弹计划，并且不被发现。</p>\r\n', '**Stuxnet 蠕虫病毒可能是有史以来最复杂的软件。 **\r\n\r\n我们不知道 Stuxnet 的作者是谁，只知道大概是在2005年至2010年间编写的。\r\n\r\n这种病毒藏在 U 盘上。当 U 盘插入 PC，它会自动运行，将自已复制到该 PC。它至少有三种自动运行的方法。如果某种方法行不通，就尝试另一种。其中的两种运行方法是全新的，使用了 Windows 的两个无人知晓的秘密 Bug。\r\n\r\n一旦蠕虫进入 PC ，它会尝试获得该 PC 的管理员权限，使用的也是前面提到的那两个无人知道的秘密 Bug。然后，它把自己留下的痕迹全部清除，不让防病毒软件检测到它的存在，用户不会看到任何东西。这种蠕虫隐藏得很好，出现后一年多，没有任何一家安全公司发现它的存在。\r\n\r\n它会秘密访问 [http://www.mypremierfutbol.com](http://www.mypremierfutbol.com/) 或 [http://www.todaysfutbol.com](http://www.todaysfutbol.com/) 这两个网站，告诉服务器已经成功侵入了一台新的 PC，然后从网站下载最新版本自行更新。\r\n\r\n它会将自身复制到任何插入该 PC 的 U 盘。使用的 U 盘驱动程序由 Realtek 公司进行了数字签名，但是 Realtek 公司并不知道有这个签名。这意味着，蠕虫作者能够获取 Realtek 公司的最高密钥。\r\n\r\n它利用两个 Windows 的 Bug ----一个涉及网络打印机，另一个涉及网络文件----将自己传播到局域网里面的其他计算机上。\r\n\r\n直到这一步，它的真正任务还没有开始。\r\n\r\n它在每一台计算机上寻找一种由西门子设计的用于大型工业机械自动化的控制软件。一旦发现这种软件，它会使用另*一个*以前未知的 Bug，将自身复制到工业控制器的驱动程序。然后，它会检查两家特定公司的工业电机，其中一家公司在伊朗，另一家在芬兰。它要搜索的特定电机称为变频驱动器，主要用于运行工业离心机，提纯多种化学品，比如铀。\r\n\r\n由于蠕虫完全控制了离心机，因此它可以做任何事情，可以将离心机全部关闭，也可以将它们全部摧毁：只需设定以最大速度旋转离心机，直到它们全都像炸弹一样爆炸，杀死任何恰好站在附近的人。\r\n\r\n但它没有这么做，一旦它控制了每台离心机......它就进入潜伏。一旦达到设定的时间，它就会悄悄地唤醒自己，锁住离心机，使得人类无法关闭这些机器。然后悄悄地，蠕虫开始旋转这些离心机，修改了安全参数，增加了一些气体压力......\r\n\r\n此外，它还会在离心机正常运转的时候，偷录一段21秒的数据记录。当它控制离心机运行的时候，会一遍又一遍地播放这段数据记录。管理人员会看到，计算机屏幕上的所有离心机运行数据都很正常，但这其实是蠕虫让他们看的。\r\n\r\n现在让我们想象一下，有一家工厂正在用离心机净化铀。电脑上的所有数字都表明离心机运行正常。但是，离心机正在悄悄地出问题，一个接一个地倒下，这使得铀产量一直下降。铀必须是纯净的。你的铀不够纯净，无法做任何有用的事情。\r\n\r\n工厂的管理者根本找不到原因，离心机的数据是正常的。你永远不会知道，所有这些问题都是由一种计算机蠕虫引起的。这是一种历史上最狡猾和最聪明的计算机蠕虫，它由一些拥有无限资金和无限资源的令人难以置信的秘密团队编写，并且设计时只考虑一个目的：偷偷摧毁某个国家的核弹计划，并且不被发现。', 0, 2, 1, 0, 0, '', 1, 'Stuxnet 蠕虫病毒可能是有史以来最复杂的软件', 'Stuxnet 蠕虫病毒', 1, '2019-09-14 13:07:26', '2019-09-14 13:07:26');
COMMIT;

-- ----------------------------
-- Table structure for biz_article_look
-- ----------------------------
DROP TABLE IF EXISTS `biz_article_look`;
CREATE TABLE `biz_article_look` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(20) unsigned NOT NULL COMMENT '文章ID',
  `user_id` varchar(20) DEFAULT NULL COMMENT '已登录用户ID',
  `user_ip` varchar(50) DEFAULT NULL COMMENT '用户IP',
  `look_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '浏览时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of biz_article_look
-- ----------------------------
BEGIN;
INSERT INTO `biz_article_look` VALUES (1, 1, NULL, '0:0:0:0:0:0:0:1', '2018-09-13 23:30:25', '2018-09-13 23:30:25', '2018-09-13 23:30:25');
INSERT INTO `biz_article_look` VALUES (2, 1, NULL, '0:0:0:0:0:0:0:1', '2018-09-19 16:56:59', '2018-09-19 16:56:59', '2018-09-19 16:56:59');
INSERT INTO `biz_article_look` VALUES (3, 1, NULL, '0:0:0:0:0:0:0:1', '2018-09-20 00:52:15', '2018-09-20 00:52:15', '2018-09-20 00:52:15');
INSERT INTO `biz_article_look` VALUES (4, 1, NULL, '0:0:0:0:0:0:0:1', '2019-09-11 11:32:04', '2019-09-11 11:32:04', '2019-09-11 11:32:04');
INSERT INTO `biz_article_look` VALUES (5, 1, NULL, '0:0:0:0:0:0:0:1', '2019-09-11 22:16:09', '2019-09-11 22:16:09', '2019-09-11 22:16:09');
INSERT INTO `biz_article_look` VALUES (6, 1, NULL, '0:0:0:0:0:0:0:1', '2019-09-12 09:58:22', '2019-09-12 09:58:22', '2019-09-12 09:58:22');
INSERT INTO `biz_article_look` VALUES (7, 1, NULL, '0:0:0:0:0:0:0:1', '2019-09-13 10:05:22', '2019-09-13 10:05:22', '2019-09-13 10:05:22');
INSERT INTO `biz_article_look` VALUES (8, 1, NULL, '0:0:0:0:0:0:0:1', '2019-09-14 10:55:45', '2019-09-14 10:55:45', '2019-09-14 10:55:45');
INSERT INTO `biz_article_look` VALUES (9, 2, NULL, '0:0:0:0:0:0:0:1', '2019-09-14 11:06:49', '2019-09-14 11:06:49', '2019-09-14 11:06:49');
INSERT INTO `biz_article_look` VALUES (10, 3, NULL, '0:0:0:0:0:0:0:1', '2019-09-14 12:42:52', '2019-09-14 12:42:52', '2019-09-14 12:42:52');
INSERT INTO `biz_article_look` VALUES (11, 1, NULL, '0:0:0:0:0:0:0:1', '2019-09-14 15:35:20', '2019-09-14 15:35:20', '2019-09-14 15:35:20');
INSERT INTO `biz_article_look` VALUES (12, 6, NULL, '0:0:0:0:0:0:0:1', '2019-09-14 16:35:31', '2019-09-14 16:35:31', '2019-09-14 16:35:31');
INSERT INTO `biz_article_look` VALUES (13, 4, NULL, '0:0:0:0:0:0:0:1', '2019-09-14 16:35:37', '2019-09-14 16:35:37', '2019-09-14 16:35:37');
INSERT INTO `biz_article_look` VALUES (14, 9, NULL, '0:0:0:0:0:0:0:1', '2019-09-15 17:10:53', '2019-09-15 17:10:53', '2019-09-15 17:10:53');
INSERT INTO `biz_article_look` VALUES (15, 10, NULL, '0:0:0:0:0:0:0:1', '2019-09-18 09:28:39', '2019-09-18 09:28:39', '2019-09-18 09:28:39');
INSERT INTO `biz_article_look` VALUES (16, 1, NULL, '0:0:0:0:0:0:0:1', '2019-09-26 15:47:52', '2019-09-26 15:47:52', '2019-09-26 15:47:52');
COMMIT;

-- ----------------------------
-- Table structure for biz_article_tags
-- ----------------------------
DROP TABLE IF EXISTS `biz_article_tags`;
CREATE TABLE `biz_article_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) unsigned NOT NULL COMMENT '标签表主键',
  `article_id` int(11) unsigned NOT NULL COMMENT '文章ID',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of biz_article_tags
-- ----------------------------
BEGIN;
INSERT INTO `biz_article_tags` VALUES (1, 2, 1, '2018-09-13 23:30:20', '2018-09-13 23:30:20');
INSERT INTO `biz_article_tags` VALUES (2, 3, 1, '2018-09-13 23:30:20', '2018-09-13 23:30:20');
INSERT INTO `biz_article_tags` VALUES (3, 4, 1, '2018-09-13 23:30:20', '2018-09-13 23:30:20');
INSERT INTO `biz_article_tags` VALUES (6, 1, 2, '2019-09-14 12:36:21', '2019-09-14 12:36:21');
INSERT INTO `biz_article_tags` VALUES (7, 2, 3, '2019-09-14 12:45:41', '2019-09-14 12:45:41');
INSERT INTO `biz_article_tags` VALUES (11, 3, 6, '2019-09-14 13:10:34', '2019-09-14 13:10:34');
INSERT INTO `biz_article_tags` VALUES (12, 4, 6, '2019-09-14 13:10:34', '2019-09-14 13:10:34');
INSERT INTO `biz_article_tags` VALUES (13, 5, 7, '2019-09-14 13:16:10', '2019-09-14 13:16:10');
INSERT INTO `biz_article_tags` VALUES (14, 2, 8, '2019-09-14 13:19:02', '2019-09-14 13:19:02');
INSERT INTO `biz_article_tags` VALUES (19, 10, 11, '2019-09-14 15:31:55', '2019-09-14 15:31:55');
INSERT INTO `biz_article_tags` VALUES (21, 6, 9, '2019-09-14 15:32:22', '2019-09-14 15:32:22');
INSERT INTO `biz_article_tags` VALUES (22, 8, 9, '2019-09-14 15:32:22', '2019-09-14 15:32:22');
INSERT INTO `biz_article_tags` VALUES (23, 6, 10, '2019-09-14 15:32:32', '2019-09-14 15:32:32');
INSERT INTO `biz_article_tags` VALUES (24, 8, 10, '2019-09-14 15:32:32', '2019-09-14 15:32:32');
INSERT INTO `biz_article_tags` VALUES (25, 7, 5, '2019-09-14 15:34:20', '2019-09-14 15:34:20');
INSERT INTO `biz_article_tags` VALUES (26, 10, 4, '2019-09-14 15:34:32', '2019-09-14 15:34:32');
COMMIT;

-- ----------------------------
-- Table structure for biz_category
-- ----------------------------
DROP TABLE IF EXISTS `biz_category`;
CREATE TABLE `biz_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '文章类型名',
  `description` varchar(200) DEFAULT NULL COMMENT '类型介绍',
  `sort` int(10) DEFAULT NULL COMMENT '排序',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '是否可用',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of biz_category
-- ----------------------------
BEGIN;
INSERT INTO `biz_category` VALUES (1, 0, '前端技术', '主要收集、整理的基础前端类文章', 1, 'fa fa-css3', 1, '2018-01-14 21:34:54', '2018-07-25 17:57:50');
INSERT INTO `biz_category` VALUES (2, 0, '后端技术', '网站中记录的后端类文章，包括Java、Spring、SpringBoot、MySQL、大数据和其他在日常工作学习中所用的后端技术', 10, 'fa fa-coffee', 1, '2018-01-14 21:34:57', '2019-09-14 15:28:24');
INSERT INTO `biz_category` VALUES (3, 0, '其他文章', '记录网站建设以及日常工作、学习中的闲言碎语', 50, 'fa fa-folder-open-o', 1, '2018-01-20 22:28:03', '2019-09-14 15:28:50');
INSERT INTO `biz_category` VALUES (4, 0, '领悟', '记录个人生活等文章', 40, NULL, 1, '2018-08-02 11:20:26', '2019-09-14 15:28:38');
INSERT INTO `biz_category` VALUES (5, 3, '总结', '总结反思', 1, NULL, 1, '2019-09-11 11:28:15', '2019-09-11 11:28:15');
INSERT INTO `biz_category` VALUES (6, 0, '工具资源', '开发工具、服务端工具、中间件', 20, NULL, 1, '2019-09-14 15:26:39', '2019-09-14 15:28:28');
COMMIT;

-- ----------------------------
-- Table structure for biz_comment
-- ----------------------------
DROP TABLE IF EXISTS `biz_comment`;
CREATE TABLE `biz_comment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(20) DEFAULT NULL COMMENT '被评论的文章或者页面的ID(-1:留言板)',
  `user_id` varchar(20) DEFAULT NULL COMMENT '评论人的ID',
  `pid` int(20) unsigned DEFAULT NULL COMMENT '父级评论的id',
  `qq` varchar(13) DEFAULT NULL COMMENT '评论人的QQ（未登录用户）',
  `nickname` varchar(13) DEFAULT NULL COMMENT '评论人的昵称（未登录用户）',
  `avatar` varchar(255) DEFAULT NULL COMMENT '评论人的头像地址',
  `email` varchar(100) DEFAULT NULL COMMENT '评论人的邮箱地址（未登录用户）',
  `url` varchar(200) DEFAULT NULL COMMENT '评论人的网站地址（未登录用户）',
  `status` tinyint(1) DEFAULT '0' COMMENT '评论的状态',
  `ip` varchar(64) DEFAULT NULL COMMENT '评论时的ip',
  `lng` varchar(50) DEFAULT NULL COMMENT '经度',
  `lat` varchar(50) DEFAULT NULL COMMENT '纬度',
  `address` varchar(100) DEFAULT NULL COMMENT '评论时的地址',
  `os` varchar(64) DEFAULT NULL COMMENT '评论时的系统类型',
  `os_short_name` varchar(10) DEFAULT NULL COMMENT '评论时的系统的简称',
  `browser` varchar(64) DEFAULT NULL COMMENT '评论时的浏览器类型',
  `browser_short_name` varchar(10) DEFAULT NULL COMMENT '评论时的浏览器的简称',
  `content` varchar(2000) DEFAULT NULL COMMENT '评论的内容',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注（审核不通过时添加）',
  `support` int(10) unsigned DEFAULT '0' COMMENT '支持（赞）',
  `oppose` int(10) unsigned DEFAULT '0' COMMENT '反对（踩）',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for biz_link
-- ----------------------------
DROP TABLE IF EXISTS `biz_link`;
CREATE TABLE `biz_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '链接名',
  `url` varchar(200) NOT NULL COMMENT '链接地址',
  `description` varchar(255) DEFAULT NULL COMMENT '链接介绍',
  `img` varchar(255) DEFAULT NULL COMMENT '友链图片地址',
  `email` varchar(100) DEFAULT NULL COMMENT '友链站长邮箱',
  `qq` varchar(50) DEFAULT NULL COMMENT '友链站长qq',
  `status` int(1) unsigned DEFAULT NULL COMMENT '状态',
  `origin` int(1) DEFAULT NULL COMMENT '1-管理员添加 2-自助申请',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of biz_link
-- ----------------------------
BEGIN;
INSERT INTO `biz_link` VALUES (1, '青创无忧', 'http://www.qdqcwy.cn', 'Just do it！', NULL, NULL, NULL, 1, 1, '', '2018-09-13 23:24:25', '2018-09-13 23:24:25');
COMMIT;

-- ----------------------------
-- Table structure for biz_love
-- ----------------------------
DROP TABLE IF EXISTS `biz_love`;
CREATE TABLE `biz_love` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `biz_id` int(11) unsigned NOT NULL COMMENT '业务ID',
  `biz_type` tinyint(1) DEFAULT NULL COMMENT '业务类型：1.文章，2.评论',
  `user_id` varchar(20) DEFAULT NULL COMMENT '已登录用户ID',
  `user_ip` varchar(50) DEFAULT NULL COMMENT '用户IP',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of biz_love
-- ----------------------------
BEGIN;
INSERT INTO `biz_love` VALUES (1, 1, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-09-13 23:31:53', '2018-09-13 23:31:53');
COMMIT;

-- ----------------------------
-- Table structure for biz_site_info
-- ----------------------------
DROP TABLE IF EXISTS `biz_site_info`;
CREATE TABLE `biz_site_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(255) DEFAULT NULL,
  `site_desc` varchar(255) DEFAULT NULL,
  `site_pic` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_site_info
-- ----------------------------
BEGIN;
INSERT INTO `biz_site_info` VALUES (1, '码上无忧', '90后少年，热爱编程，热爱学习，喜欢分享、交流一些个人项目经验，共同学习，少走弯路。Talk is cheap, show me the code!', 'http://img.puboot.com/ava.jpg', '2018-07-22 22:13:26', '2018-07-22 22:13:29');
COMMIT;

-- ----------------------------
-- Table structure for biz_tags
-- ----------------------------
DROP TABLE IF EXISTS `biz_tags`;
CREATE TABLE `biz_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '书签名',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of biz_tags
-- ----------------------------
BEGIN;
INSERT INTO `biz_tags` VALUES (1, 'Linux', '111', '2018-01-14 21:35:31', '2018-07-25 18:53:34');
INSERT INTO `biz_tags` VALUES (2, 'Java', '222', '2018-01-14 21:35:45', '2018-07-25 18:53:38');
INSERT INTO `biz_tags` VALUES (3, 'Spring', NULL, '2018-01-14 21:35:52', '2018-01-14 21:35:52');
INSERT INTO `biz_tags` VALUES (4, 'Spring Boot', NULL, '2018-01-14 21:36:01', '2018-01-14 21:36:01');
INSERT INTO `biz_tags` VALUES (5, '其他', '其他', '2018-07-25 18:55:06', '2018-07-25 18:55:06');
INSERT INTO `biz_tags` VALUES (6, 'IntelliJ IDEA', 'IntelliJ IDEA', '2019-09-14 15:20:27', '2019-09-14 15:20:27');
INSERT INTO `biz_tags` VALUES (7, '奇闻趣事', '奇闻趣事', '2019-09-14 15:30:40', '2019-09-14 15:30:40');
INSERT INTO `biz_tags` VALUES (8, '工具', '工具', '2019-09-14 15:30:48', '2019-09-14 15:30:48');
INSERT INTO `biz_tags` VALUES (9, '资源', '资源', '2019-09-14 15:30:56', '2019-09-14 15:30:56');
INSERT INTO `biz_tags` VALUES (10, 'JavaScript', 'JavaScript', '2019-09-14 15:31:36', '2019-09-14 15:31:36');
COMMIT;

-- ----------------------------
-- Table structure for biz_theme
-- ----------------------------
DROP TABLE IF EXISTS `biz_theme`;
CREATE TABLE `biz_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id主键',
  `name` varchar(50) DEFAULT NULL COMMENT '主题名（路径前缀）',
  `description` varchar(255) DEFAULT NULL COMMENT '主题描述',
  `img` varchar(255) DEFAULT NULL COMMENT '主题预览图url',
  `status` tinyint(1) DEFAULT NULL COMMENT '0-未启用 1-启用',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_theme
-- ----------------------------
BEGIN;
INSERT INTO `biz_theme` VALUES (1, 'pblog', '默认主题', 'http://img.puboot.com/20190926152748.png', 1, '2018-09-19 15:50:45', '2018-09-19 15:50:45');
COMMIT;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` varchar(32) NOT NULL COMMENT '权限id',
  `name` varchar(100) NOT NULL COMMENT '权限名称',
  `description` varchar(255) DEFAULT NULL COMMENT '权限描述',
  `url` varchar(255) DEFAULT NULL COMMENT '权限访问路径',
  `perms` varchar(255) DEFAULT NULL COMMENT '权限标识',
  `parent_id` int(11) DEFAULT NULL COMMENT '父级权限id',
  `type` int(1) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `order_num` int(3) DEFAULT '0' COMMENT '排序',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `status` int(1) NOT NULL COMMENT '状态：1有效；2删除',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
BEGIN;
INSERT INTO `permission` VALUES (1, '1', '工作台', '工作台', '/workdest', 'workdest', 0, 1, 1, 'fa fa-home', 1, '2017-09-27 21:22:02', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES (2, '2', '权限管理', '权限管理', NULL, NULL, 0, 0, 4, 'fa fa-th-list', 1, '2017-07-13 15:04:42', '2018-09-13 23:49:48');
INSERT INTO `permission` VALUES (3, '201', '用户管理', '用户管理', '/users', 'users', 2, 1, 1, 'fa fa-circle-o', 1, '2017-07-13 15:05:47', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES (4, '20101', '列表查询', '用户列表查询', '/user/list', 'user:list', 3, 2, 0, NULL, 1, '2017-07-13 15:09:24', '2017-10-09 05:38:29');
INSERT INTO `permission` VALUES (5, '20102', '新增', '新增用户', '/user/add', 'user:add', 3, 2, 0, NULL, 1, '2017-07-13 15:06:50', '2018-02-28 17:58:46');
INSERT INTO `permission` VALUES (6, '20103', '编辑', '编辑用户', '/user/edit', 'user:edit', 3, 2, 0, NULL, 1, '2017-07-13 15:08:03', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES (7, '20104', '删除', '删除用户', '/user/delete', 'user:delete', 3, 2, 0, NULL, 1, '2017-07-13 15:08:42', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES (8, '20105', '批量删除', '批量删除用户', '/user/batch/delete', 'user:batchDelete', 3, 2, 0, '', 1, '2018-07-11 01:53:09', '2018-07-11 01:53:09');
INSERT INTO `permission` VALUES (9, '20106', '分配角色', '分配角色', '/user/assign/role', 'user:assignRole', 3, 2, 0, NULL, 1, '2017-07-13 15:09:24', '2017-10-09 05:38:29');
INSERT INTO `permission` VALUES (10, '202', '角色管理', '角色管理', '/roles', 'roles', 2, 1, 2, 'fa fa-circle-o', 1, '2017-07-17 14:39:09', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES (11, '20201', '列表查询', '角色列表查询', '/role/list', 'role:list', 10, 2, 0, NULL, 1, '2017-10-10 15:31:36', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES (12, '20202', '新增', '新增角色', '/role/add', 'role:add', 10, 2, 0, NULL, 1, '2017-07-17 14:39:46', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES (13, '20203', '编辑', '编辑角色', '/role/edit', 'role:edit', 10, 2, 0, NULL, 1, '2017-07-17 14:40:15', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES (14, '20204', '删除', '删除角色', '/role/delete', 'role:delete', 10, 2, 0, NULL, 1, '2017-07-17 14:40:57', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES (15, '20205', '批量删除', '批量删除角色', '/role/batch/delete', 'role:batchDelete', 10, 2, 0, '', 1, '2018-07-10 22:20:43', '2018-07-10 22:20:43');
INSERT INTO `permission` VALUES (16, '20206', '分配权限', '分配权限', '/role/assign/permission', 'role:assignPerms', 10, 2, 0, NULL, 1, '2017-09-26 07:33:05', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES (17, '203', '资源管理', '资源管理', '/permissions', 'permissions', 2, 1, 3, 'fa fa-circle-o', 1, '2017-09-26 07:33:51', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES (18, '20301', '列表查询', '资源列表', '/permission/list', 'permission:list', 17, 2, 0, NULL, 1, '2018-07-12 16:25:28', '2018-07-12 16:25:33');
INSERT INTO `permission` VALUES (19, '20302', '新增', '新增资源', '/permission/add', 'permission:add', 17, 2, 0, NULL, 1, '2017-09-26 08:06:58', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES (20, '20303', '编辑', '编辑资源', '/permission/edit', 'permission:edit', 17, 2, 0, NULL, 1, '2017-09-27 21:29:04', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES (21, '20304', '删除', '删除资源', '/permission/delete', 'permission:delete', 17, 2, 0, NULL, 1, '2017-09-27 21:29:50', '2018-02-27 10:53:14');
INSERT INTO `permission` VALUES (22, '3', '运维管理', '运维管理', NULL, NULL, 0, 0, 7, 'fa fa-th-list', 1, '2018-07-06 15:19:26', '2018-09-12 17:08:55');
INSERT INTO `permission` VALUES (23, '301', '数据监控', '数据监控', '/database/monitoring', 'database', 22, 1, 1, 'fa fa-circle-o', 1, '2018-07-06 15:19:55', '2018-07-06 15:19:55');
INSERT INTO `permission` VALUES (24, '4', '系统管理', '系统管理', NULL, NULL, 0, 0, 5, 'fa fa-th-list', 1, '2018-07-06 15:20:38', '2018-07-24 15:42:28');
INSERT INTO `permission` VALUES (25, '401', '在线用户', '在线用户', '/online/users', 'onlineUsers', 24, 1, 1, 'fa fa-circle-o', 1, '2018-07-06 15:21:00', '2018-07-24 14:58:22');
INSERT INTO `permission` VALUES (32, '1000001992372345', '在线用户查询', '在线用户查询', '/online/user/list', 'onlineUser:list', 25, 2, 0, '', 1, '2018-07-24 15:02:23', '2018-07-24 15:02:23');
INSERT INTO `permission` VALUES (33, '1000002083579304', '踢出用户', '踢出用户', '/online/user/kickout', 'onlineUser:kickout', 25, 2, 0, '', 1, '2018-07-24 15:03:16', '2018-07-24 15:03:16');
INSERT INTO `permission` VALUES (34, '1000000171409776', '批量踢出', '批量踢出', '/online/user/batch/kickout', 'onlineUser:batchKickout', 25, 2, 0, '', 1, '2018-07-24 15:04:09', '2018-07-24 15:04:09');
INSERT INTO `permission` VALUES (35, '1000000863853891', '网站管理', '网站管理', NULL, NULL, 0, 0, 3, 'fa fa-th-list', 1, '2018-07-24 15:44:23', '2018-09-13 23:50:02');
INSERT INTO `permission` VALUES (36, '1000001264798222', '基础信息', '基础设置', '/siteinfo', 'siteinfo', 35, 1, 1, 'fa fa-circle-o', 1, '2018-07-24 15:48:13', '2018-07-24 17:43:39');
INSERT INTO `permission` VALUES (37, '1000000432183856', '保存', '基础设置-保存', '/siteinfo/save', 'siteinfo:save', 36, 2, 0, '', 1, '2018-07-24 15:49:12', '2018-07-24 15:49:12');
INSERT INTO `permission` VALUES (38, '1000001792841328', '系统公告', '系统公告', '/notifies', 'notifies', 35, 1, 2, 'fa fa-circle-o', 0, '2018-07-24 23:40:45', '2018-09-13 12:34:18');
INSERT INTO `permission` VALUES (39, '1000001351219537', '查询', '系统公告-查询', '/notify/list', 'notify:list', 38, 2, 0, '', 0, '2018-07-24 23:41:30', '2018-09-13 12:33:19');
INSERT INTO `permission` VALUES (40, '1000000791685519', '新增', '系统公告-新增', '/notify/add', 'notify:add', 38, 2, 0, '', 0, '2018-07-24 23:42:20', '2018-09-13 12:33:26');
INSERT INTO `permission` VALUES (42, '1000001531648485', '编辑', '系统公告-编辑', '/notify/edit', 'notify:edit', 38, 2, 0, '', 0, '2018-07-24 23:44:39', '2018-09-13 12:33:52');
INSERT INTO `permission` VALUES (43, '1000001548165826', '删除', '系统公告-删除', '/notify/delete', 'notify:delete', 38, 2, 0, '', 0, '2018-07-24 23:45:27', '2018-09-13 12:33:57');
INSERT INTO `permission` VALUES (44, '1000001530229707', '批量删除', '批量删除公告', '/notify/batch/delete', 'notify:batchDelete', 38, 2, 0, '', 0, '2018-07-24 23:46:25', '2018-09-13 12:34:02');
INSERT INTO `permission` VALUES (45, '1000000237721285', '友链管理', '友情链接', '/links', 'links', 35, 1, 3, 'fa fa-circle-o', 1, '2018-07-25 11:05:49', '2018-07-25 11:07:03');
INSERT INTO `permission` VALUES (46, '1000001238193773', '查询', '友链-查询', '/link/list', 'link:list', 45, 2, 0, '', 1, '2018-07-25 11:06:44', '2018-07-25 11:06:44');
INSERT INTO `permission` VALUES (47, '1000001305005793', '新增', '友链-新增', '/link/add', 'link:add', 45, 2, 0, '', 1, '2018-07-25 11:07:46', '2018-07-25 11:07:46');
INSERT INTO `permission` VALUES (48, '1000001679037501', '编辑', '友链-编辑', '/link/edit', 'link:edit', 45, 2, 0, '', 1, '2018-07-25 11:08:21', '2018-07-25 11:08:21');
INSERT INTO `permission` VALUES (49, '1000001011730177', '删除', '友链-删除', '/link/delete', 'link:delete', 45, 2, 0, '', 1, '2018-07-25 11:08:53', '2018-07-25 11:08:53');
INSERT INTO `permission` VALUES (50, '1000001312374743', '批量删除', '友链-批量删除', '/link/batch/delete', 'link:batchDelete', 45, 2, 0, '', 1, '2018-07-25 11:09:40', '2018-07-25 11:09:40');
INSERT INTO `permission` VALUES (51, '1000001507480127', '审核', '友链-审核', '/link/audit', 'link:audit', 45, 2, 0, '', 1, '2018-07-25 11:42:28', '2018-07-25 11:42:28');
INSERT INTO `permission` VALUES (52, '1000000602555213', '文章管理', '文章管理', NULL, NULL, 0, 0, 2, 'fa fa-th-list', 1, '2018-07-25 17:43:12', '2018-09-13 23:49:55');
INSERT INTO `permission` VALUES (53, '1000001729104792', '分类管理', '分类管理', '/categories', 'categories', 52, 1, 3, 'fa fa-circle-o', 1, '2018-07-25 17:43:50', '2018-07-29 21:46:52');
INSERT INTO `permission` VALUES (54, '1000000015836901', '新增', '新增分类', '/category/add', 'category:add', 53, 2, 0, '', 1, '2018-07-25 17:44:28', '2018-07-25 17:44:28');
INSERT INTO `permission` VALUES (55, '1000001439189167', '编辑', '编辑分类', '/category/edit', 'category:edit', 53, 2, 0, '', 1, '2018-07-25 17:44:52', '2018-07-25 17:44:52');
INSERT INTO `permission` VALUES (56, '1000001647995753', '删除', '删除分类', '/category/delete', 'category:delete', 53, 2, 0, '', 1, '2018-07-25 17:45:28', '2018-07-25 17:45:28');
INSERT INTO `permission` VALUES (58, '1000000841419865', '查询', '分类查询', '/category/list', 'category:list', 53, 2, 0, '', 1, '2018-07-25 17:49:43', '2018-07-25 17:49:43');
INSERT INTO `permission` VALUES (59, '1000000976625379', '标签管理', '标签管理', '/tags', 'tags', 52, 1, 4, 'fa fa-circle-o', 1, '2018-07-25 18:50:47', '2018-07-29 21:47:01');
INSERT INTO `permission` VALUES (60, '1000002127467055', '查询', '查询标签列表', '/tag/list', 'tag:list', 59, 2, 0, '', 1, '2018-07-25 18:51:20', '2018-07-25 18:51:20');
INSERT INTO `permission` VALUES (61, '1000001458372033', '新增', '新增标签', '/tag/add', 'tag:add', 59, 2, 0, '', 1, '2018-07-25 18:51:42', '2018-07-25 18:51:42');
INSERT INTO `permission` VALUES (62, '1000001832967209', '编辑', '编辑标签', '/tag/edit', 'tag:edit', 59, 2, 0, '', 1, '2018-07-25 18:52:17', '2018-07-25 18:52:17');
INSERT INTO `permission` VALUES (63, '1000000754923037', '删除', '删除标签', '/tag/delete', 'tag:delete', 59, 2, 0, '', 1, '2018-07-25 18:52:40', '2018-07-25 18:52:40');
INSERT INTO `permission` VALUES (64, '1000000759248744', '批量删除', '批量删除标签', '/tag/batch/delete', 'tag:batchDelete', 59, 2, 0, '', 1, '2018-07-25 18:53:14', '2018-07-25 18:53:14');
INSERT INTO `permission` VALUES (65, '1000001038456544', '文章列表', '文章列表', '/articles', 'articles', 52, 1, 2, 'fa fa-circle-o', 1, '2018-07-29 20:20:23', '2018-07-29 21:46:44');
INSERT INTO `permission` VALUES (66, '1000000686545782', '查询', '查询文章', '/article/list', 'article:list', 65, 2, 0, '', 1, '2018-07-29 20:20:54', '2018-07-29 20:20:54');
INSERT INTO `permission` VALUES (67, '1000001642272578', '新增', '新增文章', '/article/add', 'article:add', 65, 2, 0, '', 1, '2018-07-29 20:21:21', '2018-07-29 20:21:21');
INSERT INTO `permission` VALUES (68, '1000000804049447', '编辑', '编辑文章', '/article/edit', 'article:edit', 65, 2, 0, '', 1, '2018-07-29 20:21:50', '2018-07-29 20:21:50');
INSERT INTO `permission` VALUES (69, '1000000488864959', '删除', '删除文章', '/article/delete', 'article:delete', 65, 2, 0, '', 1, '2018-07-29 20:23:27', '2018-07-29 20:23:27');
INSERT INTO `permission` VALUES (70, '1000000512435306', '批量删除', '批量删除文章', '/article/batch/delete', 'article:batchDelete', 65, 2, 0, '', 1, '2018-07-29 20:23:49', '2018-07-29 20:23:49');
INSERT INTO `permission` VALUES (71, '1000000899091444', '发布文章', '写文章', '/article/add', 'article:add', 52, 1, 1, 'fa fa-circle-o', 1, '2018-07-29 20:39:49', '2018-07-29 21:46:33');
INSERT INTO `permission` VALUES (72, '1000000224901858', '评论管理', '评论管理', '/comments', 'comments', 35, 1, 4, 'fa fa-circle-o', 1, '2018-08-10 09:44:41', '2018-09-19 15:44:13');
INSERT INTO `permission` VALUES (73, '1000001579533936', '查询', '查询', '/comment/list', 'comment:list', 72, 2, 0, '', 1, '2018-08-10 09:46:54', '2018-08-10 09:46:54');
INSERT INTO `permission` VALUES (74, '1000000663968031', '审核', '审核评论', '/comment/audit', 'comment:audit', 72, 2, 0, '', 1, '2018-08-10 09:57:11', '2018-08-10 09:57:11');
INSERT INTO `permission` VALUES (75, '1000000322655547', '回复', '回复评论', '/comment/reply', 'comment:audit', 72, 2, 0, '', 1, '2018-08-10 10:04:28', '2018-08-10 10:04:28');
INSERT INTO `permission` VALUES (76, '1000001419287014', '删除', '删除评论', '/comment/delete', 'comment:delete', 72, 2, 0, '', 1, '2018-08-10 10:06:27', '2018-08-10 10:06:27');
INSERT INTO `permission` VALUES (77, '1000002075182223', '批量删除', '批量删除评论', '/comment/batch/delete', 'comment:batchDelete', 72, 2, 0, '', 1, '2018-08-10 10:07:57', '2018-08-10 10:07:57');
INSERT INTO `permission` VALUES (78, '1000000587822241', '上传管理', '上传管理', '', '', 0, 0, 6, 'fa fa-th-list', 1, '2018-09-12 17:08:41', '2018-09-12 17:08:41');
INSERT INTO `permission` VALUES (79, '1000000493635111', '云存储配置', '云存储配置', '/upload/config', 'upload:config', 78, 1, 1, 'fa fa-circle-o', 1, '2018-09-12 17:10:09', '2018-09-12 17:10:09');
INSERT INTO `permission` VALUES (80, '1000000318760332', '保存', '保存云存储配置', '/upload/saveConfig', 'upload:saveConfig', 79, 2, 0, '', 1, '2018-09-12 17:10:42', '2018-09-12 17:10:42');
INSERT INTO `permission` VALUES (81, '1000000919723998', '主题管理', '主题管理', '/themes', 'themes', 35, 1, 2, 'fa fa-circle-o', 1, '2018-09-19 15:43:50', '2018-09-19 15:43:50');
INSERT INTO `permission` VALUES (82, '1000000784272506', '查询', '主题列表', '/theme/list', 'theme:list', 81, 2, 0, '', 1, '2018-09-19 15:44:50', '2018-09-19 15:44:50');
INSERT INTO `permission` VALUES (83, '1000000215201942', '新增', '新增主题', '/theme/add', 'theme:add', 81, 2, 0, '', 1, '2018-09-19 15:45:34', '2018-09-19 15:45:34');
INSERT INTO `permission` VALUES (84, '1000001065007557', '启用', '启用主题', '/theme/use', 'theme:use', 81, 2, 0, '', 1, '2018-09-19 15:46:28', '2018-09-19 15:46:28');
INSERT INTO `permission` VALUES (85, '1000000431577803', '删除', '删除主题', '/theme/delete', 'theme:delete', 81, 2, 0, '', 1, '2018-09-19 15:48:06', '2018-09-19 15:48:06');
INSERT INTO `permission` VALUES (86, '1000000207002458', '批量删除', '批量删除主题', 'theme/batch/delete', 'theme:batchDelete', 81, 2, 0, '', 1, '2018-09-19 15:48:39', '2018-09-19 15:48:39');
INSERT INTO `permission` VALUES (87, '1000002051091207', '编辑', '编辑主题', '/theme/edit', 'theme:edit', 81, 2, 0, '', 1, '2018-09-19 15:54:34', '2018-09-19 15:54:34');
INSERT INTO `permission` VALUES (88, '5011629010561508', '批量推送', '批量推送百度', '/article/batch/push', 'article:batchPush', 65, 2, 0, '', 1, '2018-10-28 15:15:00', '2018-10-28 15:15:00');
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(20) NOT NULL COMMENT '角色id',
  `name` varchar(50) NOT NULL COMMENT '角色名称',
  `description` varchar(255) DEFAULT NULL COMMENT '角色描述',
  `status` int(1) NOT NULL COMMENT '状态：1有效；2删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES (1, '1', '超级管理员', '超级管理员', 1, '2017-06-28 20:30:05', '2017-06-28 20:30:10');
INSERT INTO `role` VALUES (2, '2', '管理员', '管理员', 1, '2017-06-30 23:35:19', '2017-10-11 09:32:33');
INSERT INTO `role` VALUES (3, '3', '普通用户', '普通用户', 1, '2017-06-30 23:35:44', '2018-07-13 11:44:06');
INSERT INTO `role` VALUES (4, '4', '数据库管理员', '数据库管理员', 1, '2017-07-12 11:50:22', '2017-10-09 17:38:02');
COMMIT;

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(20) NOT NULL COMMENT '角色id',
  `permission_id` varchar(20) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1917 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
BEGIN;
INSERT INTO `role_permission` VALUES (1843, '1', '1');
INSERT INTO `role_permission` VALUES (1844, '1', '1000000602555213');
INSERT INTO `role_permission` VALUES (1845, '1', '1000000899091444');
INSERT INTO `role_permission` VALUES (1846, '1', '1000001038456544');
INSERT INTO `role_permission` VALUES (1847, '1', '1000000686545782');
INSERT INTO `role_permission` VALUES (1848, '1', '1000001642272578');
INSERT INTO `role_permission` VALUES (1849, '1', '1000000804049447');
INSERT INTO `role_permission` VALUES (1850, '1', '1000000488864959');
INSERT INTO `role_permission` VALUES (1851, '1', '1000000512435306');
INSERT INTO `role_permission` VALUES (1852, '1', '5.011629010561508e15');
INSERT INTO `role_permission` VALUES (1853, '1', '1000001729104792');
INSERT INTO `role_permission` VALUES (1854, '1', '1000000015836901');
INSERT INTO `role_permission` VALUES (1855, '1', '1000001439189167');
INSERT INTO `role_permission` VALUES (1856, '1', '1000001647995753');
INSERT INTO `role_permission` VALUES (1857, '1', '1000000841419865');
INSERT INTO `role_permission` VALUES (1858, '1', '1000000976625379');
INSERT INTO `role_permission` VALUES (1859, '1', '1000002127467055');
INSERT INTO `role_permission` VALUES (1860, '1', '1000001458372033');
INSERT INTO `role_permission` VALUES (1861, '1', '1000001832967209');
INSERT INTO `role_permission` VALUES (1862, '1', '1000000754923037');
INSERT INTO `role_permission` VALUES (1863, '1', '1000000759248744');
INSERT INTO `role_permission` VALUES (1864, '1', '1000000863853891');
INSERT INTO `role_permission` VALUES (1865, '1', '1000001264798222');
INSERT INTO `role_permission` VALUES (1866, '1', '1000000432183856');
INSERT INTO `role_permission` VALUES (1867, '1', '1000000919723998');
INSERT INTO `role_permission` VALUES (1868, '1', '1000000784272506');
INSERT INTO `role_permission` VALUES (1869, '1', '1000000215201942');
INSERT INTO `role_permission` VALUES (1870, '1', '1000001065007557');
INSERT INTO `role_permission` VALUES (1871, '1', '1000000431577803');
INSERT INTO `role_permission` VALUES (1872, '1', '1000000207002458');
INSERT INTO `role_permission` VALUES (1873, '1', '1000002051091207');
INSERT INTO `role_permission` VALUES (1874, '1', '1000000237721285');
INSERT INTO `role_permission` VALUES (1875, '1', '1000001238193773');
INSERT INTO `role_permission` VALUES (1876, '1', '1000001305005793');
INSERT INTO `role_permission` VALUES (1877, '1', '1000001679037501');
INSERT INTO `role_permission` VALUES (1878, '1', '1000001011730177');
INSERT INTO `role_permission` VALUES (1879, '1', '1000001312374743');
INSERT INTO `role_permission` VALUES (1880, '1', '1000001507480127');
INSERT INTO `role_permission` VALUES (1881, '1', '1000000224901858');
INSERT INTO `role_permission` VALUES (1882, '1', '1000001579533936');
INSERT INTO `role_permission` VALUES (1883, '1', '1000000663968031');
INSERT INTO `role_permission` VALUES (1884, '1', '1000000322655547');
INSERT INTO `role_permission` VALUES (1885, '1', '1000001419287014');
INSERT INTO `role_permission` VALUES (1886, '1', '1000002075182223');
INSERT INTO `role_permission` VALUES (1887, '1', '2');
INSERT INTO `role_permission` VALUES (1888, '1', '201');
INSERT INTO `role_permission` VALUES (1889, '1', '20101');
INSERT INTO `role_permission` VALUES (1890, '1', '20102');
INSERT INTO `role_permission` VALUES (1891, '1', '20103');
INSERT INTO `role_permission` VALUES (1892, '1', '20104');
INSERT INTO `role_permission` VALUES (1893, '1', '20105');
INSERT INTO `role_permission` VALUES (1894, '1', '20106');
INSERT INTO `role_permission` VALUES (1895, '1', '202');
INSERT INTO `role_permission` VALUES (1896, '1', '20201');
INSERT INTO `role_permission` VALUES (1897, '1', '20202');
INSERT INTO `role_permission` VALUES (1898, '1', '20203');
INSERT INTO `role_permission` VALUES (1899, '1', '20204');
INSERT INTO `role_permission` VALUES (1900, '1', '20205');
INSERT INTO `role_permission` VALUES (1901, '1', '20206');
INSERT INTO `role_permission` VALUES (1902, '1', '203');
INSERT INTO `role_permission` VALUES (1903, '1', '20301');
INSERT INTO `role_permission` VALUES (1904, '1', '20302');
INSERT INTO `role_permission` VALUES (1905, '1', '20303');
INSERT INTO `role_permission` VALUES (1906, '1', '20304');
INSERT INTO `role_permission` VALUES (1907, '1', '4');
INSERT INTO `role_permission` VALUES (1908, '1', '401');
INSERT INTO `role_permission` VALUES (1909, '1', '1000001992372345');
INSERT INTO `role_permission` VALUES (1910, '1', '1000002083579304');
INSERT INTO `role_permission` VALUES (1911, '1', '1000000171409776');
INSERT INTO `role_permission` VALUES (1912, '1', '1000000587822241');
INSERT INTO `role_permission` VALUES (1913, '1', '1000000493635111');
INSERT INTO `role_permission` VALUES (1914, '1', '1000000318760332');
INSERT INTO `role_permission` VALUES (1915, '1', '3');
INSERT INTO `role_permission` VALUES (1916, '1', '301');
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sys_key` varchar(50) DEFAULT NULL COMMENT 'key',
  `sys_value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`sys_key`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='系统配置信息表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` VALUES (1, 'CLOUD_STORAGE_CONFIG', '{\"type\":1,\"qiniuDomain\":\"http://xxx.com\",\"qiniuPrefix\":\"img/blog\",\"qiniuAccessKey\":\"xxxAccessKey\",\"qiniuSecretKey\":\"xxxSecretKey\",\"qiniuBucketName\":\"blog\",\"aliyunDomain\":\"\",\"aliyunPrefix\":\"\",\"aliyunEndPoint\":\"\",\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qcloudBucketName\":\"\",\"qcloudRegion\":\"\"}', 1, '云存储配置信息');
INSERT INTO `sys_config` VALUES (5, 'SITE_NAME', '预见未来', 1, '网站名称');
INSERT INTO `sys_config` VALUES (6, 'SITE_KWD', 'Java JavaScript Spring SpringBoot Vue React', 1, '网站关键字');
INSERT INTO `sys_config` VALUES (7, 'SITE_DESC', '个人博客网站，技术交流，经验分享。', 1, '网站描述');
INSERT INTO `sys_config` VALUES (8, 'SITE_PERSON_PIC', 'http://img.puboot.com/ava.jpg', 1, '站长头像');
INSERT INTO `sys_config` VALUES (9, 'SITE_PERSON_NAME', 'LinZhaoguan', 1, '站长名称');
INSERT INTO `sys_config` VALUES (10, 'SITE_PERSON_DESC', '90后少年，热爱写bug，热爱编程，热爱学习，分享一些个人经验，共同学习，少走弯路。Talk is cheap, show me the code!', 1, '站长描述');
INSERT INTO `sys_config` VALUES (11, 'BAIDU_PUSH_URL', 'http://data.zz.baidu.com/urls?site=https://www.puboot.com&token=EjnfUGGJ1drKk4Oy', 1, '百度推送地址');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
create table user
(
    user_id         varchar(20)  not null comment '用户id',
    username        varchar(50)  not null comment '用户名',
    password        varchar(50)  not null,
    salt            varchar(128) null comment '加密盐值',
    nickname        varchar(50)  null comment '昵称',
    email           varchar(50)  null comment '邮箱',
    phone           varchar(50)  null comment '联系方式',
    sex             int(255)     null comment '年龄：1男2女',
    age             int(3)       null comment '年龄',
    img             varchar(255) null comment '头像地址',
    status          int(1)       not null comment '用户状态：1有效; 2删除',
    create_time     datetime     null comment '创建时间',
    update_time     datetime     null comment '更新时间',
    last_login_time datetime     null comment '最后登录时间',
    constraint user_user_id_uindex
        unique (user_id)
)
    charset = utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('1', 'admin', '56963f91d151bcec486202ddfe961e1b', '637e75dbf633ad6625afe45f7ccbcc7c', '码上无忧', '888@qq.com', '15666666666', 1, 22, 'http://img.puboot.com/ava.jpg', 1, '2018-05-23 21:22:06', '2018-07-17 23:04:46', '2019-09-17 23:20:04');
COMMIT;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL COMMENT '用户id',
  `role_id` varchar(20) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
BEGIN;
INSERT INTO `user_role` VALUES (1, '1', '1');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
