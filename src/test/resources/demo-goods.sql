/*
 Navicat Premium Data Transfer

 Source Server         : MySQL5
 Source Server Type    : MySQL
 Source Server Version : 50528
 Source Host           : localhost:3306
 Source Schema         : javawwtclrobot

 Target Server Type    : MySQL
 Target Server Version : 50528
 File Encoding         : 65001

 Date: 27/01/2022 03:29:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Goods
-- ----------------------------
DROP TABLE IF EXISTS `Goods`;
CREATE TABLE `Goods`  (
                          `id` int(11) NOT NULL AUTO_INCREMENT,
                          `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                          `price` decimal(10, 2) NULL DEFAULT 0.00,
                          `picture` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'default.jpg',
                          PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of Goods
-- ----------------------------
INSERT INTO `Goods` VALUES (1, '浓醇咖啡饮料', 66.50, '1.jpg');
INSERT INTO `Goods` VALUES (2, '百草味东北松子', 42.90, '2.jpg');
INSERT INTO `Goods` VALUES (3, '桂圆干', 39.90, '3.jpg');
INSERT INTO `Goods` VALUES (4, '益达尊享护齿装', 25.90, '4.jpg');
INSERT INTO `Goods` VALUES (5, '手工太平猴魁特', 168.00, '5.jpg');
INSERT INTO `Goods` VALUES (6, '麻辣香辣奶香炭烧', 39.80, '6.jpg');
INSERT INTO `Goods` VALUES (7, '五分瘦腊肠', 126.80, '7.jpg');
INSERT INTO `Goods` VALUES (8, 'PDO特级初榨橄榄油', 178.00, '8.jpg');
INSERT INTO `Goods` VALUES (10, '香港土特产香肠腊味', 30.60, '9.jpg');

SET FOREIGN_KEY_CHECKS = 1;
