-- create table `account`
# DROP TABLE `account` IF EXISTS
CREATE TABLE `account` (
                         `id` int(11) NOT NULL AUTO_INCREMENT,
                         `name` varchar(20) NOT NULL,
                         `money` double DEFAULT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `account` VALUES ('1', 'aaa', '1000');
INSERT INTO `account` VALUES ('2', 'bbb', '1000');
INSERT INTO `account` VALUES ('3', 'ccc', '1000');
INSERT INTO `account` VALUES ('4', 'ddd', '1000');
INSERT INTO `account` VALUES ('5', 'eee', '1000');
INSERT INTO `account` VALUES ('6', 'fff', '1000');
INSERT INTO `account` VALUES ('7', 'ggg', '1000');
INSERT INTO `account` VALUES ('8', 'hhh', '1000');
INSERT INTO `account` VALUES ('9', 'iii', '1000');
