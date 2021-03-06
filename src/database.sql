/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.0.85-community-nt : Database - stu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`stu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `stu`;

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `ID` int(11) NOT NULL auto_increment,
  `department_name` varchar(30) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `department` */

insert  into `department`(`ID`,`department_name`) values (16,'修改后的'),(17,'外语系'),(18,'经管系'),(19,'新闻系'),(20,'科学系'),(21,'生化系'),(27,'生物工程'),(28,'生物工程'),(29,'生物工程'),(30,'生物工程2'),(31,'生物工程3');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `ID` int(11) NOT NULL auto_increment,
  `NAME` varchar(32) NOT NULL,
  `POLITICS_STATUS` int(11) NOT NULL default '1',
  `NATIONALITY` varchar(20) NOT NULL default '',
  `STU_NO` varchar(64) NOT NULL,
  `GENDER` tinyint(4) default NULL,
  `DEPARTMENT` int(11) default NULL,
  `ADDRESS` varchar(128) default NULL,
  `MOBILE` varchar(20) NOT NULL default '',
  `REGIST_DATE` datetime default NULL,
  `BIRTHDAY` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`ID`,`NAME`,`POLITICS_STATUS`,`NATIONALITY`,`STU_NO`,`GENDER`,`DEPARTMENT`,`ADDRESS`,`MOBILE`,`REGIST_DATE`,`BIRTHDAY`) values (1,'李四',1,'汉族','NO000001',1,16,'CN','000013398761567','2011-12-02 00:00:00','2012-10-17 00:00:00'),(2,'张三',1,'汉族','NO000002',1,16,'北京市朝阳区广顺北大街33号院1号楼福码大厦','13398761567','2011-12-02 12:11:00',NULL),(3,'张三',1,'汉族','NO000003',0,16,'北京市朝阳区广顺北大街33号院1号楼福码大厦','13398761567','2011-12-02 00:00:00',NULL),(4,'张三',1,'汉族','NO000004',1,16,'北京市朝阳区广顺北大街33号院1号楼福码大厦','13398761567','2011-12-02 00:00:00','2012-10-19 00:00:00'),(5,'张三',1,'汉族','NO000005',0,16,'北京市朝阳区广顺北大街33号院1号楼福码大厦','013398761567','2011-12-02 00:00:00',NULL),(6,'bbb',2,'汉族','NO000006',1,16,'北京市朝阳区广顺北大街33号院1号楼福码大厦','0013398761567','2010-02-16 00:00:00','2013-01-08 00:00:00'),(7,'张三',1,'汉族','NO000007',1,17,'北京市朝阳区广顺北大街33号院1号楼福码大厦','13398761567','2012-01-18 00:00:00','2012-10-06 00:00:00'),(8,'张三1',1,'汉族','NO0000011',1,16,'北京市朝阳区广顺北大街33号院1号楼福码大厦','13398761567','2011-12-02 00:00:00','2012-10-05 00:00:00'),(9,'张三2',1,'汉族','NO0000012',1,16,'北京市朝阳区广顺北大街33号院1号楼福码大厦','13398761567','2011-12-02 00:00:00','2014-06-12 00:00:00'),(10,'张三3',1,'汉族','NO0000013',0,16,'浙江省杭州市','013398761567','2011-12-02 00:00:00','2012-10-16 00:00:00'),(11,'张三4',1,'汉族','NO0000014',1,18,'河南省开封市','13398761567','2011-12-02 00:00:00',NULL),(13,'张三6',1,'汉族','NO0000016',1,16,'河南省濮阳市','13398761567','2011-12-02 00:00:00','2012-10-26 00:00:00'),(14,'张三7',1,'汉族','NO0000017',1,16,'湖北省武汉市','13398761567','2011-12-02 00:00:00',NULL),(17,'张克',1,'汉族','NO00000013',0,16,'湖南','13398761567','2012-01-04 00:00:00','2012-10-15 00:00:00'),(18,'张克4',0,'汉族','NO00000014',1,19,'湖南4','13398761567','2012-01-29 00:00:00','2012-10-18 00:00:00'),(19,'张克45',2,'汉族','NO00000015',0,16,'湖南5','13398761567','2012-02-14 00:00:00','2012-10-08 00:00:00'),(20,'JIM',1,'汉族','NO0000001',1,16,'USA','13398761567','2011-12-02 00:00:00','2013-12-12 00:00:00'),(21,'JIM',1,'汉族','NO0000001',1,16,'USA','013398761567','2011-12-02 00:00:00','2008-10-15 00:00:00'),(22,'JIM',1,'汉族','NO0000001',1,16,'USA','0013398761567','2011-12-02 00:00:00','2013-01-07 00:00:00'),(23,'JIM',2,'汉族','NO0000001',1,16,'USA','00013398761567','2011-12-02 00:00:00','2013-01-07 00:00:00'),(24,'JIM',2,'汉族','NO0000001',1,16,'USA','0013398761567','2011-12-02 00:00:00','2012-10-01 00:00:00'),(25,'JIM',1,'汉族','NO0000001',1,17,'USA','13398761567','2011-12-02 00:00:00','2012-10-12 00:00:00'),(26,'JIM',2,'汉族','NO0000001',1,16,'USA','13398761567','2011-12-02 00:00:00','2012-10-18 00:00:00'),(27,'JIM',1,'汉族','NO0000001',1,18,'USA','13398761567','2011-12-02 00:00:00','2012-10-19 00:00:00'),(30,'JIM',1,'汉族','NO0000001',1,16,'USA','013398761567','2011-12-02 00:00:00','2013-01-07 00:00:00'),(31,'JIM',1,'汉族','NO0000001',1,16,'USA','13398761567','2011-12-02 00:00:00','2012-10-16 00:00:00'),(33,'JIM',1,'汉族','NO0000001',1,16,'USA','13398761567','2011-12-02 00:00:00','2012-10-27 00:00:00'),(34,'JIM',1,'汉族','NO0000001',1,16,'USA','13398761567','2011-12-02 00:00:00','2012-10-27 00:00:00'),(35,'JIM',1,'汉族','NO0000001',1,16,'USA','013398761567','2011-12-02 00:00:00','2012-10-27 00:00:00'),(36,'Jus',0,'回族','NO0000001',0,16,'UK1wer','13398761560','2012-09-24 00:00:00','2012-09-28 00:00:00'),(37,'安布雷拉',1,'汉族','NO00909',0,21,'USA','13398761567','2012-04-27 00:00:00','2012-08-07 00:00:00'),(38,'赵六',2,'汉族','NO20120924',1,NULL,'上海市黄浦区福建中路225号中悦大厦503室（人民广场福州路上海书城斜对面）','000','2012-09-21 00:00:00','2012-09-14 00:00:00'),(39,'钱七1',1,'汉族','NO2013121301',1,16,'UK1','234234','2013-12-17 00:00:00','2013-11-30 00:00:00'),(40,'周杰伦',1,'汉族','NO20140506001',0,16,'阿斯顿飞','13777777777','2014-06-06 00:00:00','2014-06-12 00:00:00'),(41,'周杰伦',2,'汉族','NO20140506002',1,16,'北京市朝阳区广顺北大街33号院1号楼福码大厦','13777777777','2014-06-01 00:00:00','2014-06-12 00:00:00'),(42,'刘德华',0,'汉族','NO20140506003',0,16,'台北','13777777777','2014-06-10 00:00:00','2013-11-07 00:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
