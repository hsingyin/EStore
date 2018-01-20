/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : estore

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-20 10:48:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `accountid` int(11) NOT NULL AUTO_INCREMENT,
  `balance` float DEFAULT NULL,
  PRIMARY KEY (`accountid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', '-4711');

-- ----------------------------
-- Table structure for mycomputers
-- ----------------------------
DROP TABLE IF EXISTS `mycomputers`;
CREATE TABLE `mycomputers` (
  `Id` int(100) NOT NULL AUTO_INCREMENT,
  `Brand` varchar(255) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `Price` float NOT NULL,
  `Publishingdate` date NOT NULL,
  `Salesamount` int(255) NOT NULL,
  `Storenumber` int(255) NOT NULL,
  `Remark` text,
  `Url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of mycomputers
-- ----------------------------
INSERT INTO `mycomputers` VALUES ('1', 'Lenovo/联想', '拯救者R720', '6399', '2009-06-22', '2', '0', '', 'https://img14.360buyimg.com/n0/jfs/t15049/87/1663809259/215478/4effd883/5a54725aNc2bfede3.jpg');
INSERT INTO `mycomputers` VALUES ('2', 'Lenovo/联想', 'IdeaPad520', '7788', '2009-06-22', '3', '1', '', 'https://img14.360buyimg.com/n0/jfs/t15577/77/15567626/68061/bcb650da/5a250d6dN5021fd39.jpg');
INSERT INTO `mycomputers` VALUES ('3', 'Lenovo/联想', '小新潮7000', '5799', '2009-06-22', '3', '3', '', 'https://img14.360buyimg.com/n0/jfs/t10366/269/1156861319/249444/b4748f86/59ddb6a1Nab0db15a.jpg');
INSERT INTO `mycomputers` VALUES ('4', 'Lenovo/联想', '扬天V110', '5466', '2009-06-22', '99', '86', '', 'https://img14.360buyimg.com/n0/jfs/t11665/144/1977363093/148875/2afebfe2/5a102166N24669fb0.jpg');
INSERT INTO `mycomputers` VALUES ('5', 'Lenovo/联想', '天逸310', '4878', '2009-06-22', '3', '100', '', 'https://img14.360buyimg.com/n0/jfs/t11137/61/317409326/206620/795ce1df/59ed8b95N45d478aa.jpg');
INSERT INTO `mycomputers` VALUES ('6', 'Lenovo/联想', 'YOGA710', '4547', '2009-06-22', '3', '100', '', 'https://img14.360buyimg.com/n0/jfs/t3793/114/394282152/175032/419db602/58089d25N0529144e.jpg');
INSERT INTO `mycomputers` VALUES ('7', 'Lenovo/联想', '灵耀S4000UA', '8755', '2009-06-22', '2', '12', '', 'https://img14.360buyimg.com/n0/jfs/t14599/47/1719827073/241151/1842b1bf/5a558428Nac6701f8.jpg');
INSERT INTO `mycomputers` VALUES ('8', '华硕', '飞行堡垒四代', '5577', '2009-06-22', '2', '13', '', 'https://img14.360buyimg.com/n0/jfs/t12373/136/2098321220/289540/a78cf3ae/5a322179N5ad65368.jpg');
INSERT INTO `mycomputers` VALUES ('9', '华硕', '傲世V241', '5678', '2009-06-22', '3', '16', '', 'https://img14.360buyimg.com/n0/jfs/t15721/192/153946165/323073/f1632294/5a289d75Na52414f1.jpg');
INSERT INTO `mycomputers` VALUES ('10', '华硕', '顽石FL8000', '7558', '2009-06-22', '3', '17', '', 'https://img14.360buyimg.com/n0/jfs/t14809/116/1353021633/238143/dc984dee/5a4db56fN05526605.jpg');
INSERT INTO `mycomputers` VALUES ('11', '华硕', '灵焕3', '4577', '2009-06-22', '9', '17', '', 'https://img10.360buyimg.com/n1/s450x450_jfs/t12430/308/203140737/205408/d6357060/5a0562fcN93f86b13.jpg');
INSERT INTO `mycomputers` VALUES ('12', '华硕', '灵耀3', '8877', '2009-06-22', '9', '19', '', 'https://img14.360buyimg.com/n0/jfs/t11557/254/2470034939/232568/deae5003/5a18200dN6c3b9ee0.jpg');
INSERT INTO `mycomputers` VALUES ('13', '华硕', '灵耀U4000', '6677', '2009-06-22', '6', '14', '', 'https://img14.360buyimg.com/n0/jfs/t13522/11/2081039894/95185/e7c394d6/5a3231fbN8ba41527.jpg');
INSERT INTO `mycomputers` VALUES ('14', 'TinkPad', 'E470c', '4688', '2009-06-22', '9', '12', '', 'https://img14.360buyimg.com/n0/jfs/t16357/52/866540934/261455/2b01e587/5a434797N1299bda3.jpg');
INSERT INTO `mycomputers` VALUES ('15', 'TinkPad', 'New S2', '7899', '2009-06-22', '8', '14', '', 'https://img14.360buyimg.com/n0/jfs/t15187/253/1057049023/225106/a06a6722/5a435c85Na46f2823.jpg');
INSERT INTO `mycomputers` VALUES ('16', 'TinkPad', '翼480', '7887', '2009-06-22', '8', '23', '', 'https://img14.360buyimg.com/n0/jfs/t14920/22/1777379314/198740/95d0cc64/5a582c82N56109a34.jpg');
INSERT INTO `mycomputers` VALUES ('17', 'TinkPad', '黑侠E570', '5565', '2009-06-22', '7', '24', '', 'https://img14.360buyimg.com/n0/jfs/t16117/219/863344336/280658/6d765e35/5a436902N52254c4e.jpg');
INSERT INTO `mycomputers` VALUES ('18', 'TinkPad', 'E560', '7897', '2009-06-22', '8', '25', '', 'https://img14.360buyimg.com/n0/jfs/t8452/195/381457995/270920/bbd530eb/59a659a3N09b0c621.jpg');
INSERT INTO `mycomputers` VALUES ('19', 'TinkPad', 'X270', '7867', '2009-06-22', '7', '26', '', 'https://img14.360buyimg.com/n0/jfs/t14878/106/1055955167/194749/ea6d39/5a43391cN7b9165d1.jpg');
INSERT INTO `mycomputers` VALUES ('20', 'TinkPad', 'T470', '4545', '2009-06-22', '10', '26', '', 'https://img14.360buyimg.com/n0/jfs/t14971/132/1050352559/252493/c8f294cd/5a43398fNc7239122.jpg');
INSERT INTO `mycomputers` VALUES ('21', 'TinkPad', 'X1 Carbon 2017', '5778', '2009-06-22', '5', '28', '', 'https://img14.360buyimg.com/n0/jfs/t14143/58/1306436672/166146/b84e7109/5a43480dNb102e5ff.jpg');
INSERT INTO `mycomputers` VALUES ('22', 'TinkPad', '黑将S5 2017', '7475', '2009-06-22', '5', '24', '', 'https://img14.360buyimg.com/n0/jfs/t16294/264/579247137/262391/c0311d8d/5a3680e4N1556b858.jpg');
INSERT INTO `mycomputers` VALUES ('23', '戴尔', '灵越燃7000', '3685', '2009-06-22', '5', '25', '', 'https://img14.360buyimg.com/n0/jfs/t10453/85/2217094050/260610/bc7201c5/59f15b82Nae0ef9f3.jpg');
INSERT INTO `mycomputers` VALUES ('24', '戴尔', '灵越7570-R1745S', '5578', '2009-06-22', '5', '26', '', 'https://img14.360buyimg.com/n0/jfs/t7339/186/3433212847/202495/313b3cc3/59f15e0fN58d66eb2.jpg');
INSERT INTO `mycomputers` VALUES ('25', '戴尔', '灵越游匣Master15', '4566', '2009-06-22', '4', '32', '', 'https://img14.360buyimg.com/n0/jfs/t15823/200/670885287/314599/b194c717/5a3a230eN2f84896a.jpg');
INSERT INTO `mycomputers` VALUES ('26', '戴尔', '灵越飞匣14ER', '7378', '2009-06-22', '4', '33', '', 'https://img14.360buyimg.com/n0/jfs/t11875/342/853551087/286947/90b41858/59f99027N0c041a4a.jpg');
INSERT INTO `mycomputers` VALUES ('27', '戴尔', 'XPS13', '7454', '2009-06-22', '3', '34', '', 'https://img14.360buyimg.com/n0/jfs/t7537/177/3956737992/398920/2304bd9c/59f1587aN48a06866.jpg');
INSERT INTO `mycomputers` VALUES ('28', '戴尔', 'XPS15', '10999', '2009-06-22', '4', '35', '', 'https://img14.360buyimg.com/n0/jfs/t13837/321/719476245/393033/3c005d85/5a128bb1N3da985b9.jpg');
INSERT INTO `mycomputers` VALUES ('29', '戴尔', '成就5000', '7645', '2009-06-22', '5', '36', '', 'https://img14.360buyimg.com/n0/jfs/t13597/123/1502382470/248417/4c3428c4/5a20fb62N4072b9a3.jpg');
INSERT INTO `mycomputers` VALUES ('30', '戴尔', '灵越5280', '7777', '2009-06-22', '5', '100', '', 'https://img14.360buyimg.com/n0/jfs/t12214/281/2361720574/192008/7a2408d6/5a3b7a19N7aabf636.jpg');
INSERT INTO `mycomputers` VALUES ('31', '戴尔', '成就3565', '4578', '2009-06-22', '7', '99', '', 'https://img14.360buyimg.com/n0/jfs/t9367/329/1374059840/297787/cd35add8/59c07459N3b30049c.jpg');
INSERT INTO `mycomputers` VALUES ('32', '戴尔', '成就5459', '7956', '2009-06-22', '7', '100', '', 'https://img14.360buyimg.com/n0/jfs/t10633/340/2610639484/232696/c43b4120/59f98fd7Nccba81ec.jpg');

-- ----------------------------
-- Table structure for trade
-- ----------------------------
DROP TABLE IF EXISTS `trade`;
CREATE TABLE `trade` (
  `tradeid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `tradetime` datetime NOT NULL,
  PRIMARY KEY (`tradeid`),
  KEY `user_id_fk` (`userid`),
  CONSTRAINT `trade_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userinfo` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of trade
-- ----------------------------
INSERT INTO `trade` VALUES ('12', '1', '2012-11-01 00:00:00');
INSERT INTO `trade` VALUES ('13', '1', '2012-11-01 00:00:00');
INSERT INTO `trade` VALUES ('14', '1', '2012-11-01 00:00:00');
INSERT INTO `trade` VALUES ('15', '1', '2012-12-20 00:00:00');
INSERT INTO `trade` VALUES ('16', '1', '2012-12-20 00:00:00');
INSERT INTO `trade` VALUES ('17', '1', '2018-01-16 00:00:00');
INSERT INTO `trade` VALUES ('18', '3', '2018-01-16 00:00:00');
INSERT INTO `trade` VALUES ('19', '2', '2018-01-16 00:00:00');
INSERT INTO `trade` VALUES ('20', '1', '2018-01-17 00:00:00');
INSERT INTO `trade` VALUES ('21', '1', '2018-01-17 00:00:00');
INSERT INTO `trade` VALUES ('22', '1', '2018-01-17 00:00:00');
INSERT INTO `trade` VALUES ('23', '1', '2018-01-17 00:00:00');
INSERT INTO `trade` VALUES ('24', '1', '2018-01-17 00:00:00');
INSERT INTO `trade` VALUES ('25', '1', '2018-01-17 00:00:00');
INSERT INTO `trade` VALUES ('26', '2', '2018-01-19 00:00:00');
INSERT INTO `trade` VALUES ('27', '2', '2018-01-19 00:00:00');
INSERT INTO `trade` VALUES ('28', '2', '2018-01-19 00:00:00');
INSERT INTO `trade` VALUES ('29', '2', '2018-01-19 00:00:00');
INSERT INTO `trade` VALUES ('30', '2', '2018-01-19 00:00:00');
INSERT INTO `trade` VALUES ('31', '2', '2018-01-19 00:00:00');

-- ----------------------------
-- Table structure for tradeitem
-- ----------------------------
DROP TABLE IF EXISTS `tradeitem`;
CREATE TABLE `tradeitem` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `computerid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `tradeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `book_id_fk` (`computerid`),
  KEY `trade_id_fk` (`tradeid`),
  CONSTRAINT `tradeitem_ibfk_1` FOREIGN KEY (`computerid`) REFERENCES `mycomputers` (`Id`),
  CONSTRAINT `tradeitem_ibfk_2` FOREIGN KEY (`tradeid`) REFERENCES `trade` (`tradeid`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of tradeitem
-- ----------------------------
INSERT INTO `tradeitem` VALUES ('22', '19', '10', '12');
INSERT INTO `tradeitem` VALUES ('23', '27', '10', '12');
INSERT INTO `tradeitem` VALUES ('24', '7', '10', '12');
INSERT INTO `tradeitem` VALUES ('25', '1', '1', '13');
INSERT INTO `tradeitem` VALUES ('26', '13', '2', '13');
INSERT INTO `tradeitem` VALUES ('27', '14', '3', '13');
INSERT INTO `tradeitem` VALUES ('28', '15', '4', '13');
INSERT INTO `tradeitem` VALUES ('29', '1', '1', '14');
INSERT INTO `tradeitem` VALUES ('30', '13', '2', '14');
INSERT INTO `tradeitem` VALUES ('31', '14', '3', '14');
INSERT INTO `tradeitem` VALUES ('32', '15', '4', '14');
INSERT INTO `tradeitem` VALUES ('33', '22', '5', '14');
INSERT INTO `tradeitem` VALUES ('34', '23', '5', '14');
INSERT INTO `tradeitem` VALUES ('35', '24', '5', '14');
INSERT INTO `tradeitem` VALUES ('36', '2', '1', '15');
INSERT INTO `tradeitem` VALUES ('37', '1', '2', '15');
INSERT INTO `tradeitem` VALUES ('38', '3', '1', '15');
INSERT INTO `tradeitem` VALUES ('39', '2', '1', '16');
INSERT INTO `tradeitem` VALUES ('40', '1', '3', '16');
INSERT INTO `tradeitem` VALUES ('41', '3', '1', '16');
INSERT INTO `tradeitem` VALUES ('47', '1', '1', '19');
INSERT INTO `tradeitem` VALUES ('48', '2', '1', '19');
INSERT INTO `tradeitem` VALUES ('49', '3', '1', '19');
INSERT INTO `tradeitem` VALUES ('50', '1', '1', '27');
INSERT INTO `tradeitem` VALUES ('51', '6', '1', '27');
INSERT INTO `tradeitem` VALUES ('52', '2', '1', '28');
INSERT INTO `tradeitem` VALUES ('53', '6', '1', '29');
INSERT INTO `tradeitem` VALUES ('54', '2', '1', '30');
INSERT INTO `tradeitem` VALUES ('55', '20', '1', '31');
INSERT INTO `tradeitem` VALUES ('56', '11', '1', '31');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  KEY `account_id_fk` (`accountid`),
  CONSTRAINT `userinfo_ibfk_1` FOREIGN KEY (`accountid`) REFERENCES `account` (`accountid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'Tom', '1');
INSERT INTO `userinfo` VALUES ('2', 'AAA', '1');
INSERT INTO `userinfo` VALUES ('3', 'BB', '1');
INSERT INTO `userinfo` VALUES ('4', 'CC', '1');
INSERT INTO `userinfo` VALUES ('5', 'DD', '1');
INSERT INTO `userinfo` VALUES ('6', 'EE', '1');
SET FOREIGN_KEY_CHECKS=1;
