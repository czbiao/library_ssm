/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`library` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `library`;

/*Table structure for table `library_admin` */

CREATE TABLE `library_admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ano` varchar(20) DEFAULT NULL COMMENT '管理员编号',
  `aname` varchar(50) DEFAULT NULL COMMENT '姓名',
  `password` varchar(20) DEFAULT NULL COMMENT '密码',
  `cdate` datetime DEFAULT NULL COMMENT '创建时间',
  `udate` datetime DEFAULT NULL COMMENT '更新时间',
  `yn` int(11) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `library_admin` */

insert  into `library_admin`(`id`,`ano`,`aname`,`password`,`cdate`,`udate`,`yn`) values (1,'A111111','Administrator','111111','2015-12-16 17:12:44','2015-12-26 03:34:10',1),(2,'A222222','Admin','222222','2015-12-20 17:12:44','2015-12-23 13:30:14',1),(3,'A333333','adm','333333','2016-01-14 14:51:35',NULL,1);

/*Table structure for table `library_book` */

CREATE TABLE `library_book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bno` varchar(20) DEFAULT NULL COMMENT '图书编号',
  `bname` varchar(100) DEFAULT NULL COMMENT '图书名称',
  `tid` bigint(20) DEFAULT NULL COMMENT '类型编号',
  `author` varchar(50) DEFAULT NULL COMMENT '作者',
  `price` double(8,2) DEFAULT NULL COMMENT '价格',
  `total` int(11) DEFAULT '0' COMMENT '图书总数量',
  `remain` int(11) DEFAULT '0' COMMENT '在馆数量',
  `brief` varchar(500) DEFAULT NULL COMMENT '简介',
  `cdate` datetime DEFAULT NULL COMMENT '创建时间',
  `udate` datetime DEFAULT NULL COMMENT '更新时间',
  `yn` int(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `library_book` */

insert  into `library_book`(`id`,`bno`,`bname`,`tid`,`author`,`price`,`total`,`remain`,`brief`,`cdate`,`udate`,`yn`) values (1,'100001','大学英语',1,'刘玲',38.50,50,49,'新视野大学英语教程 郑树棠总主编 北京：外语教学与研究出版社，2003。  ','2015-12-21 13:43:23','2016-05-07 23:39:03',1),(2,'100002','计算机基础',3,'张良',39.70,50,49,'《计算机基础》内容分为三篇，各篇内容如下：第一篇为综合评析。对历年“专转本”计算机基础考试的内容、形式、理论知识考点和操作能力考点进行了评析、汇总，并提出了针对性的复习方案。第二篇为内容详解。分10个章节对考试内容和掌握程度进行详尽阐述，并配备了典型试题解析和仿真练习。第三篇为全真测试。提供了近年来的考试试卷和解答，供考生实战训练之用。','2015-12-21 13:43:23','2016-05-07 23:39:06',1),(3,'100003','C语言程序设计',3,'王晓光',45.80,50,49,'C语言是一种计算机程序设计语言。它既有高级语言的特点，又具有汇编语言的特点。它可以作为系统设计语言，编写工作系统应用程序，也可以作为应用程序设计语言，编写不依赖计算机硬件的应用程序。因此，它的应用范围广泛。','2015-12-21 13:43:23','2016-05-07 23:39:09',1),(4,'100004','Linux基础',3,'李良',54.60,50,49,'Linux是一种自由和开放源码的类Unix操作系统。目前存在着许多不同的Linux,但它们都使用了Linux内核。Linux可安装在各种计算机硬件设备中，从手机、平板电脑、路由器和视频游戏控制台，到台式计算机、大型机和超级计算机。Linux是一个领先的操作系统，世界上运算最快的10台超级计算机运行的都是Linux操作系统。严格来讲，Linux这个词本身只表示Linux内核，但实际上人们已经习惯了用','2015-12-21 13:43:23','2016-05-07 23:39:12',1),(5,'100005','芈月传',2,'蒋胜男',149.10,60,58,'她是历史上真实存在的传奇女性。“太后”一词由她而来。太后专权，也自她始。','2015-12-21 13:43:23','2016-05-07 23:39:15',1),(6,'100006','Java编程思想（第4版）',3,'Bruce Eckel',73.40,60,58,'《计算机科学丛书：Java编程思想（第4版）》赢得了全球程序员的广泛赞誉，即使是最晦涩的概念，在BruceEckel的文字亲和力和小而直接的编程示例面前也会化解于无形。从Java的基础语法到高级特性（深入的面向对象概念、多线程、自动项目构建、单元测试和调试等），本书都能逐步指导你轻松掌握。','2015-12-24 10:55:44','2016-05-07 23:39:18',1),(8,'100007','深入理解Java虚拟机',3,'周志明',58.00,60,58,'本书第1版两年内印刷近10次，4家网上书店的评论近4?000条，98%以上的评论全部为5星级的好评，是整个Java图书领域公认的经典著作和超级畅销书，繁体版在台湾也十分受欢迎。第2版在第1版的基础上做了很大的改进：根据全新的JDK 1.7对全书内容进行了全面的升级和补充；增加了大量处理各种常见JVM问题的技巧和优佳实践；增加了若干与生产环境相结合的实战案例；对第1版中的错误和不足之处的修正；等等。第2版不仅技术更新、内容更丰富，而且实战性更强。','2015-12-25 23:05:33','2016-05-07 23:39:27',1),(9,'100008','Java从入门到精通',3,'明日科技',40.70,40,40,'《软件开发视频大讲堂 Java从入门到精通（第3版）》从初学者角度出发，通过通俗易懂的语言、丰富多彩的实例，详细介绍了使用Java语言进行程序开发需要掌握的知识。全书分为28章，包括初识Java，熟悉Eclipse开发工具，Java语言基础，流程控制，字符串，数组，类和对象，包装类，数字处理类，接口、继承与多态，类的高级特性，异常处理，Swing程序设计，集合类，I/O（输入/输出），反射，枚举类型与泛型，多线程，网络通信，数据库操作，Swing表格组件，Swing树组件，Swing其他高级组件，高级布局管理器，高级事件处理，AWT绘图与音频播放，打印技术和企业进销存管理系统等。','2015-12-25 23:09:16','2016-05-07 23:05:05',1),(10,'100009','盗墓笔记1七星鲁王宫',2,'南派三叔',32.00,40,40,'《盗墓笔记1七星鲁王宫》：','2015-12-26 01:28:15','2015-12-30 23:01:20',1),(11,'100010','火车上的女孩',2,'宝拉·霍金斯',28.50,40,40,'瑞秋每天早晚在固定时间搭乘通勤火车上下班。她熟知火车会在同一盏信号灯前停留，让她得以透过车窗，窥见路旁15号住户的后院。她对这户人家的生活渐渐痴迷，甚至给男女主人分别取了名字：“杰丝”和“杰森”。在瑞秋的想象中，他们是一对情投意合的璧人，恩爱甜蜜的夫妻。她无比艳羡，又满怀妒意。直到有一天,瑞秋从车窗里看到了15号住户异常的一幕。一分钟后，火车重新启动，但三个人的命运从此改变。过去她只能从车窗后窥视陌生人的生活，而此刻，她与他们，开始有了紧密的交集。瑞秋不再甘心只当一个搭火车经过的路人……','2015-12-26 01:49:40','2015-12-26 02:58:00',1),(12,'100011','吉他入门经典教程',6,'李国标',33.80,20,20,'抱着一把木吉他，随意弹唱喜欢的歌曲，这是多么炫酷的一件事！本书为零基础小白贴身打造，教会你从“DoReMi”开始，到《月亮代表我的心》、《童年》等简单歌曲，直到《十年》《她来听我的演唱会》，最后到创作属于自己的音乐，不知不觉中达到随心所欲的地步！','2015-12-30 23:02:38','2015-12-30 23:07:50',1);

/*Table structure for table `library_book_student` */

CREATE TABLE `library_book_student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bid` bigint(20) DEFAULT NULL COMMENT '图书id',
  `sid` bigint(20) DEFAULT NULL COMMENT '学生id',
  `bdate` datetime DEFAULT NULL COMMENT '借书日期',
  `rdate` datetime DEFAULT NULL COMMENT '最后还书日期',
  `cdate` datetime DEFAULT NULL COMMENT '创建时间',
  `udate` datetime DEFAULT NULL COMMENT '更新时间',
  `yn` int(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

/*Data for the table `library_book_student` */

insert  into `library_book_student`(`id`,`bid`,`sid`,`bdate`,`rdate`,`cdate`,`udate`,`yn`) values (22,1,1,'2015-12-30 23:36:33','2016-01-29 23:36:33','2015-12-30 23:36:33','2015-12-30 23:37:04',0),(23,2,1,'2015-12-30 23:36:39','2016-01-29 23:36:39','2015-12-30 23:36:39','2015-12-30 23:39:02',0),(24,3,1,'2015-12-30 23:36:44','2016-01-29 23:36:44','2015-12-30 23:36:44','2016-05-07 23:07:54',0),(25,4,1,'2015-12-30 23:37:30','2016-01-29 23:37:30','2015-12-30 23:37:30','2016-05-07 23:07:49',0),(26,5,2,'2016-05-07 22:56:14','2016-06-06 22:56:14','2016-05-07 22:56:14',NULL,1),(27,9,3,'2016-05-07 22:59:08','2016-06-06 22:59:08','2016-05-07 22:59:08','2016-05-07 23:05:05',0),(28,9,3,'2016-05-07 23:03:43','2016-06-06 23:03:43','2016-05-07 23:03:43','2016-05-07 23:05:05',0),(29,6,3,'2016-05-07 23:04:00','2016-06-06 23:04:00','2016-05-07 23:04:00',NULL,1),(30,8,3,'2016-05-07 23:04:07','2016-06-06 23:04:07','2016-05-07 23:04:07',NULL,1),(31,3,3,'2016-05-07 23:04:14','2016-06-06 23:04:14','2016-05-07 23:04:14','2016-05-07 23:04:38',0),(32,1,1,'2016-05-07 23:39:03','2016-06-06 23:39:03','2016-05-07 23:39:03',NULL,1),(33,2,1,'2016-05-07 23:39:06','2016-06-06 23:39:06','2016-05-07 23:39:06',NULL,1),(34,3,1,'2016-05-07 23:39:09','2016-06-06 23:39:09','2016-05-07 23:39:09',NULL,1),(35,4,1,'2016-05-07 23:39:12','2016-06-06 23:39:12','2016-05-07 23:39:12',NULL,1),(36,5,1,'2016-05-07 23:39:15','2016-06-06 23:39:15','2016-05-07 23:39:15',NULL,1),(37,6,1,'2016-05-07 23:39:18','2016-06-06 23:39:18','2016-05-07 23:39:18',NULL,1),(38,8,1,'2016-05-07 23:39:27','2016-06-06 23:39:27','2016-05-07 23:39:27',NULL,1);

/*Table structure for table `library_book_type` */

CREATE TABLE `library_book_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tname` varchar(20) DEFAULT NULL COMMENT '图书分类',
  `cdate` datetime DEFAULT NULL COMMENT '创建时间',
  `udate` datetime DEFAULT NULL COMMENT '更新时间',
  `yn` int(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `library_book_type` */

insert  into `library_book_type`(`id`,`tname`,`cdate`,`udate`,`yn`) values (1,'语言','2015-12-21 13:43:23','2015-12-26 02:01:26',1),(2,'文学','2015-12-21 13:43:23',NULL,1),(3,'计算机','2015-12-22 12:55:16','2015-12-26 02:26:26',1),(4,'科技','2015-12-22 12:57:58',NULL,1),(5,'美术','2015-12-22 12:57:58',NULL,1),(6,'音乐','2015-12-22 12:57:58',NULL,1);

/*Table structure for table `library_setting` */

CREATE TABLE `library_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '设置项名称',
  `value` int(11) DEFAULT NULL COMMENT '设置项值',
  `cdate` datetime DEFAULT NULL COMMENT '创建时间',
  `udate` datetime DEFAULT NULL COMMENT '更新时间',
  `yn` int(11) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `library_setting` */

insert  into `library_setting`(`id`,`name`,`value`,`cdate`,`udate`,`yn`) values (1,'最多借阅天数',30,'2015-12-16 17:12:44','2015-12-26 03:40:18',1),(2,'最多借阅本数',7,'2015-12-20 17:12:44','2015-12-26 03:40:44',1);

/*Table structure for table `library_student` */

CREATE TABLE `library_student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sno` varchar(20) DEFAULT NULL COMMENT '学号',
  `sname` varchar(50) DEFAULT NULL COMMENT '姓名',
  `password` varchar(20) DEFAULT NULL COMMENT '密码',
  `cdate` datetime DEFAULT NULL COMMENT '创建日期',
  `udate` datetime DEFAULT NULL COMMENT '修改日期',
  `yn` int(11) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `library_student` */

insert  into `library_student`(`id`,`sno`,`sname`,`password`,`cdate`,`udate`,`yn`) values (1,'S111111','李晓明','111111','2015-12-16 17:12:44','2015-12-23 13:52:06',1),(2,'S222222','张晓华','222222','2015-12-16 17:12:44',NULL,1),(3,'S333333','孙晓丽','333333','2015-12-16 17:12:44',NULL,1),(4,'S444444','吴晓兰','444444','2015-12-16 17:12:44',NULL,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
