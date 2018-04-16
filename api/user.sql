/*
Navicat MySQL Data Transfer

Source Server         : user
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : user

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-04-12 15:34:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goodslist
-- ----------------------------
DROP TABLE IF EXISTS `goodslist`;
CREATE TABLE `goodslist` (
  `id` varchar(255) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `myname` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `sale` varchar(255) DEFAULT NULL,
  `cheap` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodslist
-- ----------------------------
INSERT INTO `goodslist` VALUES ('001', '../images/goods1.png', 'Up & Down Open Cowhild Leather Case with Crocodile...', 'USD 219', 'USD 189', 'Save USD 30');
INSERT INTO `goodslist` VALUES ('002', '../images/goods2.png', 'Up & Down Open Cowhild Leather Case with Crocodile...', 'USD 219', 'USD 189', 'Save USD 30');
INSERT INTO `goodslist` VALUES ('003', '../images/goods3.png', 'Up & Down Open Cowhild Leather Case with Crocodile...', 'USD 219', 'USD 189', 'Save USD 30');
INSERT INTO `goodslist` VALUES ('004', '../images/goods4.png', 'Up & Down Open Cowhild Leather Case with Crocodile...', 'USD 219', 'USD 189', 'Save USD 30');
INSERT INTO `goodslist` VALUES ('005', '../images/goods5.png', 'Up & Down Open Cowhild Leather Case with Crocodile...', 'USD 219', 'USD 189', 'Save USD 30');
INSERT INTO `goodslist` VALUES ('006', '../images/goods6.png', 'Up & Down Open Cowhild Leather Case with Crocodile...', 'USD 219', 'USD 189', 'Save USD 30');
INSERT INTO `goodslist` VALUES ('007', '../images/goods7.png', 'Up & Down Open Cowhild Leather Case with Crocodile...', 'USD 219', 'USD 189', 'Save USD 30');
INSERT INTO `goodslist` VALUES ('008', '../images/goods8.png', 'Up & Down Open Cowhild Leather Case with Crocodile...', 'USD 219', 'USD 189', 'Save USD 30');
INSERT INTO `goodslist` VALUES ('009', '../images/goods9.png', 'Up & Down Open Cowhild Leather Case with Crocodile...', 'USD 219', 'USD 189', 'Save USD 30');
INSERT INTO `goodslist` VALUES ('010', '../images/goods10.png', 'Up & Down Open Cowhild Leather Case with Crocodile...', 'USD 219', 'USD 189', 'Save USD 30');
INSERT INTO `goodslist` VALUES ('011', '../images/goods11.png', 'Up & Down Open Cowhild Leather Case with Crocodile...', 'USD 219', 'USD 189', 'Save USD 30');
INSERT INTO `goodslist` VALUES ('012', '../images/goods12.png', 'Up & Down Open Cowhild Leather Case with Crocodile...', 'USD 219', 'USD 189', 'Save USD 30');
INSERT INTO `goodslist` VALUES ('013', '../images/goods11.png', 'Up & Down Open Cowhild Leather Case with Crocodile...', 'USD 219', 'USD 189', 'Save USD 30');
INSERT INTO `goodslist` VALUES ('014', '../images/goods12.png', 'Up & Down Open Cowhild Leather Case with Crocodile...', 'USD 219', 'USD 189', 'Save USD 30');
INSERT INTO `goodslist` VALUES ('015', '../images/goods4.png', 'Up & Down Open Cowhild Leather Case with Crocodile...', 'USD 219', 'USD 189', 'Save USD 30');

-- ----------------------------
-- Table structure for phone
-- ----------------------------
DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone` (
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phone
-- ----------------------------
INSERT INTO `phone` VALUES ('hkz110110', '15918091123');
INSERT INTO `phone` VALUES ('1121801911', '13923098917');
INSERT INTO `phone` VALUES ('hkz950929', '15766704518');
INSERT INTO `phone` VALUES ('hhk133144', '16834349090');
SET FOREIGN_KEY_CHECKS=1;
