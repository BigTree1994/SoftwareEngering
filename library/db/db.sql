
# Host: localhost    Database: test
# ------------------------------------------------------
# Server version 5.5.15

DROP DATABASE IF EXISTS `test`;
CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET gbk */;
USE `test`;

#
# Source for table book
#

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `BookNO` int(11) NOT NULL,
  `BookName` varchar(50) DEFAULT NULL,
  `Author` varchar(50) DEFAULT NULL,
  `Publishment` varchar(50) DEFAULT NULL,
  `ButTime` varchar(50) DEFAULT NULL,
  `Borrowed` varchar(50) DEFAULT NULL,
  `Ordered` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`BookNO`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Dumping data for table book
#
LOCK TABLES `book` WRITE;

INSERT INTO `book` VALUES (10001,'oracle��������','������','ˮ��������','2003.1.12','��','��');
INSERT INTO `book` VALUES (10002,'���ݿ���Ŀ����','���˻�','�廪������','2003.3.16','��','��');
INSERT INTO `book` VALUES (10003,'��ѧӢ��','����','���ĳ�����','2007.1.12','��','��');
INSERT INTO `book` VALUES (10004,'����','����','����������','2003.1.12','��','��');
INSERT INTO `book` VALUES (10005,'Ӣ���ȫ','jeans','���ĳ�����','2003.1.12','��','��');
INSERT INTO `book` VALUES (10006,'���������','лϣ��','�߽̳�����','2003.11.04','��','��');
INSERT INTO `book` VALUES (10007,'����Ӣ��','����','�Ļ�������','2003.3.12','��','��');
INSERT INTO `book` VALUES (10008,'��ֵ����','���ĳ�','ʵ��������','2008.1.15','��','��');
INSERT INTO `book` VALUES (10009,'java me','��һ��','�����ʵ������','2004.1.12','��','��');
INSERT INTO `book` VALUES (10010,'˼������','�⿡','ͬ�ô�ѧ������','2003.1.12','��','��');
UNLOCK TABLES;

#
# Source for table exceedtime
#

DROP TABLE IF EXISTS `exceedtime`;
CREATE TABLE `exceedtime` (
  `StuNO` int(11) NOT NULL DEFAULT '0',
  `BookNO` int(11) DEFAULT NULL,
  `BookName` varchar(50) NOT NULL DEFAULT '',
  `DelayTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`StuNO`,`BookName`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Dumping data for table exceedtime
#
LOCK TABLES `exceedtime` WRITE;

INSERT INTO `exceedtime` VALUES (10001,10001,'oracle��������',50);
INSERT INTO `exceedtime` VALUES (10002,10002,'���ݿ���Ŀ����',50);
INSERT INTO `exceedtime` VALUES (10003,10001,'oracle��������',50);
INSERT INTO `exceedtime` VALUES (10004,10002,'���ݿ���Ŀ����',50);
UNLOCK TABLES;

#
# Source for table losebook
#

DROP TABLE IF EXISTS `losebook`;
CREATE TABLE `losebook` (
  `LBNO` int(11) NOT NULL,
  `StuNO` int(11) DEFAULT NULL,
  `BookNO` int(11) DEFAULT NULL,
  `BookName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`LBNO`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Dumping data for table losebook
#
LOCK TABLES `losebook` WRITE;

UNLOCK TABLES;

#
# Source for table manager
#

DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `mgNo` int(11) NOT NULL,
  `permitted` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mgNo`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Dumping data for table manager
#
LOCK TABLES `manager` WRITE;

INSERT INTO `manager` VALUES (1001,'1','1001');
UNLOCK TABLES;

#
# Source for table orderreport
#

DROP TABLE IF EXISTS `orderreport`;
CREATE TABLE `orderreport` (
  `BookNO` int(11) NOT NULL,
  `StuName` varchar(50) DEFAULT NULL,
  `Class` varchar(50) DEFAULT NULL,
  `BookName` varchar(50) DEFAULT NULL,
  `StuNO` int(11) DEFAULT NULL,
  `Author` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`BookNO`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Dumping data for table orderreport
#
LOCK TABLES `orderreport` WRITE;

UNLOCK TABLES;

#
# Source for table record
#

DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `BookNO` int(11) NOT NULL,
  `StuNO` int(11) DEFAULT NULL,
  `BorrowTime` varchar(50) DEFAULT NULL,
  `ReturnTime` varchar(50) DEFAULT NULL,
  `Borrowed` varchar(50) DEFAULT NULL,
  `Ordered` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`BookNO`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Dumping data for table record
#
LOCK TABLES `record` WRITE;

UNLOCK TABLES;

#
# Source for table student
#

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `StuNO` int(11) NOT NULL,
  `StuName` varchar(50) DEFAULT NULL,
  `StuAge` int(11) DEFAULT NULL,
  `StuSex` varchar(50) DEFAULT NULL,
  `Class` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `Tel` char(11) DEFAULT NULL,
  `Permitted` varchar(50) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`StuNO`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Dumping data for table student
#
LOCK TABLES `student` WRITE;

INSERT INTO `student` VALUES (10001,'��Сʫ',20,'Ů','�����1��','�����ϵ','2592921','��','number1');
INSERT INTO `student` VALUES (10002,'���',21,'Ů','�����1��','�����ϵ','13730120123','��','number2');
INSERT INTO `student` VALUES (10003,'����',20,'��','�����1��','�����ϵ','13633654578','��','number3');
INSERT INTO `student` VALUES (10004,'�ζ�',22,'��','�����1��','�����ϵ','2568975','��','number4');
INSERT INTO `student` VALUES (10005,'����',21,'Ů','�����1��','�����ϵ','13936968956','��','number5');
INSERT INTO `student` VALUES (10006,'�ν�',20,'��','�����2��','�����ϵ','1234667','��','number6');
UNLOCK TABLES;

