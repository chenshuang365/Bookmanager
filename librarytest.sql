/*
 Navicat Premium Data Transfer

 Source Server         : database
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : librarytest

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 16/12/2020 12:25:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `book_id` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `book_author` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `book_ISBN` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `book_price` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `book_state` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`book_ISBN`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (NULL, '简爱', '夏洛蒂 勃朗特', '1', '43', '已借出');
INSERT INTO `book` VALUES (NULL, '老人与海', '海明威', '2', '42.7', '可借');
INSERT INTO `book` VALUES (NULL, '挪威的森林', '村上春树', '3', '36.5', '可借');
INSERT INTO `book` VALUES (NULL, 'Java编程思想', 'Bruce Eckel ', '4', '111', '可借');
INSERT INTO `book` VALUES (NULL, '算法导论（原书第2版）', ' Thomas H.Cormen', '5', '155', '已借出');
INSERT INTO `book` VALUES (NULL, '计算机网络（自顶向下方法）', ' James F. Kurose', '6', '78', '已借出');
INSERT INTO `book` VALUES (NULL, '深入理解计算机系统（原书第2版）', 'Randal E.Bryant', '7', '120', '可借');
INSERT INTO `book` VALUES (NULL, '骆驼祥子', '老舍', '8', '59', '可借');

-- ----------------------------
-- Table structure for borrow_message
-- ----------------------------
DROP TABLE IF EXISTS `borrow_message`;
CREATE TABLE `borrow_message`  (
  `message_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `book_ISBN` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `borrow_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `return_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `huan` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `yuyue` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow_message
-- ----------------------------
INSERT INTO `borrow_message` VALUES (NULL, '简爱', '1', '123', '2020-12-16 12:17:06', '2021-02-16 12:18:24', '未还', '不预约');
INSERT INTO `borrow_message` VALUES (NULL, '算法导论（原书第2版）', '5', '123', '2020-12-16 12:17:14', '2021-02-16 12:17:14', '未还', '不预约');
INSERT INTO `borrow_message` VALUES (NULL, '计算机网络（自顶向下方法）', '6', '123', '2020-12-16 12:17:26', '2021-02-16 12:17:26', '未还', '不预约');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `manager_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `manager_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`manager_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('admin', 'admin', 'admin');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('reader', '123', '123');
INSERT INTO `user` VALUES ('reader2', '456', '456');

SET FOREIGN_KEY_CHECKS = 1;
