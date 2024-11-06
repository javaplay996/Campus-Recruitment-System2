/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmb9475
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmb9475` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmb9475`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmb9475/upload/1619171411917.png'),(2,'picture2','http://localhost:8080/ssmb9475/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmb9475/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusszhaopinxinxi` */

DROP TABLE IF EXISTS `discusszhaopinxinxi`;

CREATE TABLE `discusszhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='招聘信息评论表';

/*Data for the table `discusszhaopinxinxi` */

insert  into `discusszhaopinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-04-23 17:48:02',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-04-23 17:48:02',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-04-23 17:48:02',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-04-23 17:48:02',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-04-23 17:48:02',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-04-23 17:48:02',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `gangweifenlei` */

DROP TABLE IF EXISTS `gangweifenlei`;

CREATE TABLE `gangweifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='岗位分类';

/*Data for the table `gangweifenlei` */

insert  into `gangweifenlei`(`id`,`addtime`,`leixing`) values (91,'2021-04-23 17:48:02','类型1'),(92,'2021-04-23 17:48:02','类型2'),(93,'2021-04-23 17:48:02','类型3'),(94,'2021-04-23 17:48:02','类型4'),(95,'2021-04-23 17:48:02','类型5'),(96,'2021-04-23 17:48:02','类型6');

/*Table structure for table `jianlitoudi` */

DROP TABLE IF EXISTS `jianlitoudi`;

CREATE TABLE `jianlitoudi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `gerenjianli` varchar(200) DEFAULT NULL COMMENT '个人简历',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='简历投递';

/*Data for the table `jianlitoudi` */

insert  into `jianlitoudi`(`id`,`addtime`,`qiyezhanghao`,`qiyemingcheng`,`yuanxi`,`gerenjianli`,`beizhu`,`shouji`,`xuehao`,`xingming`,`sfsh`,`shhf`) values (61,'2021-04-23 17:48:02','企业账号1','企业名称1','院系1','','备注1','13823888881','学号1','姓名1','是',''),(62,'2021-04-23 17:48:02','企业账号2','企业名称2','院系2','','备注2','13823888882','学号2','姓名2','是',''),(63,'2021-04-23 17:48:02','企业账号3','企业名称3','院系3','','备注3','13823888883','学号3','姓名3','是',''),(64,'2021-04-23 17:48:02','企业账号4','企业名称4','院系4','','备注4','13823888884','学号4','姓名4','是',''),(65,'2021-04-23 17:48:02','企业账号5','企业名称5','院系5','','备注5','13823888885','学号5','姓名5','是',''),(66,'2021-04-23 17:48:02','企业账号6','企业名称6','院系6','','备注6','13823888886','学号6','姓名6','是','');

/*Table structure for table `qiuzhixinxi` */

DROP TABLE IF EXISTS `qiuzhixinxi`;

CREATE TABLE `qiuzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `zhuanyetezhang` longtext COMMENT '专业特长',
  `gerenjianjie` longtext COMMENT '个人简介',
  `xuqiuzhiwei` longtext COMMENT '需求职位',
  `daiyuyaoqiu` longtext COMMENT '待遇要求',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='求职信息';

/*Data for the table `qiuzhixinxi` */

insert  into `qiuzhixinxi`(`id`,`addtime`,`xuehao`,`xingming`,`yuanxi`,`zhuanyetezhang`,`gerenjianjie`,`xuqiuzhiwei`,`daiyuyaoqiu`,`shouji`,`zhaopian`) values (71,'2021-04-23 17:48:02','学号1','姓名1','院系1','专业特长1','个人简介1','需求职位1','待遇要求1','13823888881','http://localhost:8080/ssmb9475/upload/qiuzhixinxi_zhaopian1.jpg'),(72,'2021-04-23 17:48:02','学号2','姓名2','院系2','专业特长2','个人简介2','需求职位2','待遇要求2','13823888882','http://localhost:8080/ssmb9475/upload/qiuzhixinxi_zhaopian2.jpg'),(73,'2021-04-23 17:48:02','学号3','姓名3','院系3','专业特长3','个人简介3','需求职位3','待遇要求3','13823888883','http://localhost:8080/ssmb9475/upload/qiuzhixinxi_zhaopian3.jpg'),(74,'2021-04-23 17:48:02','学号4','姓名4','院系4','专业特长4','个人简介4','需求职位4','待遇要求4','13823888884','http://localhost:8080/ssmb9475/upload/qiuzhixinxi_zhaopian4.jpg'),(75,'2021-04-23 17:48:02','学号5','姓名5','院系5','专业特长5','个人简介5','需求职位5','待遇要求5','13823888885','http://localhost:8080/ssmb9475/upload/qiuzhixinxi_zhaopian5.jpg'),(76,'2021-04-23 17:48:02','学号6','姓名6','院系6','专业特长6','个人简介6','需求职位6','待遇要求6','13823888886','http://localhost:8080/ssmb9475/upload/qiuzhixinxi_zhaopian6.jpg');

/*Table structure for table `qiye` */

DROP TABLE IF EXISTS `qiye`;

CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) NOT NULL COMMENT '企业账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `qiyeyouxiang` varchar(200) NOT NULL COMMENT '企业邮箱',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyezhanghao` (`qiyezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='企业';

/*Data for the table `qiye` */

insert  into `qiye`(`id`,`addtime`,`qiyezhanghao`,`mima`,`qiyemingcheng`,`lianxiren`,`lianxidianhua`,`qiyeyouxiang`,`tupian`) values (21,'2021-04-23 17:48:02','企业1','123456','企业名称1','联系人1','13823888881','773890001@qq.com','http://localhost:8080/ssmb9475/upload/qiye_tupian1.jpg'),(22,'2021-04-23 17:48:02','企业2','123456','企业名称2','联系人2','13823888882','773890002@qq.com','http://localhost:8080/ssmb9475/upload/qiye_tupian2.jpg'),(23,'2021-04-23 17:48:02','企业3','123456','企业名称3','联系人3','13823888883','773890003@qq.com','http://localhost:8080/ssmb9475/upload/qiye_tupian3.jpg'),(24,'2021-04-23 17:48:02','企业4','123456','企业名称4','联系人4','13823888884','773890004@qq.com','http://localhost:8080/ssmb9475/upload/qiye_tupian4.jpg'),(25,'2021-04-23 17:48:02','企业5','123456','企业名称5','联系人5','13823888885','773890005@qq.com','http://localhost:8080/ssmb9475/upload/qiye_tupian5.jpg'),(26,'2021-04-23 17:48:02','企业6','123456','企业名称6','联系人6','13823888886','773890006@qq.com','http://localhost:8080/ssmb9475/upload/qiye_tupian6.jpg');

/*Table structure for table `qiyexinxi` */

DROP TABLE IF EXISTS `qiyexinxi`;

CREATE TABLE `qiyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyebianhao` varchar(200) DEFAULT NULL COMMENT '企业编号',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `qiyexingzhi` varchar(200) DEFAULT NULL COMMENT '企业性质',
  `qiyedidian` varchar(200) DEFAULT NULL COMMENT '企业地点',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `xiangqing` longtext COMMENT '详情',
  `qiyetupian` varchar(200) DEFAULT NULL COMMENT '企业图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyebianhao` (`qiyebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='企业信息';

/*Data for the table `qiyexinxi` */

insert  into `qiyexinxi`(`id`,`addtime`,`qiyebianhao`,`qiyemingcheng`,`qiyexingzhi`,`qiyedidian`,`fuzeren`,`lianxidianhua`,`qiyeyouxiang`,`xiangqing`,`qiyetupian`) values (41,'2021-04-23 17:48:02','企业编号1','企业名称1','企业性质1','企业地点1','负责人1','13823888881','773890001@qq.com','详情1','http://localhost:8080/ssmb9475/upload/qiyexinxi_qiyetupian1.jpg'),(42,'2021-04-23 17:48:02','企业编号2','企业名称2','企业性质2','企业地点2','负责人2','13823888882','773890002@qq.com','详情2','http://localhost:8080/ssmb9475/upload/qiyexinxi_qiyetupian2.jpg'),(43,'2021-04-23 17:48:02','企业编号3','企业名称3','企业性质3','企业地点3','负责人3','13823888883','773890003@qq.com','详情3','http://localhost:8080/ssmb9475/upload/qiyexinxi_qiyetupian3.jpg'),(44,'2021-04-23 17:48:02','企业编号4','企业名称4','企业性质4','企业地点4','负责人4','13823888884','773890004@qq.com','详情4','http://localhost:8080/ssmb9475/upload/qiyexinxi_qiyetupian4.jpg'),(45,'2021-04-23 17:48:02','企业编号5','企业名称5','企业性质5','企业地点5','负责人5','13823888885','773890005@qq.com','详情5','http://localhost:8080/ssmb9475/upload/qiyexinxi_qiyetupian5.jpg'),(46,'2021-04-23 17:48:02','企业编号6','企业名称6','企业性质6','企业地点6','负责人6','13823888886','773890006@qq.com','详情6','http://localhost:8080/ssmb9475/upload/qiyexinxi_qiyetupian6.jpg');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','e3ero3447z8lknntp1u1fdelcv8si10c','2021-04-23 17:49:52','2021-04-23 18:49:53'),(2,1619171646017,'1','yonghu','用户','kczhwxsao93smxea7kofktdcbtjfbnjo','2021-04-23 17:54:10','2021-04-23 18:54:10');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-23 17:48:02');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619171646018 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`tupian`) values (11,'2021-04-23 17:48:02','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmb9475/upload/yonghu_tupian1.jpg'),(12,'2021-04-23 17:48:02','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmb9475/upload/yonghu_tupian2.jpg'),(13,'2021-04-23 17:48:02','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmb9475/upload/yonghu_tupian3.jpg'),(14,'2021-04-23 17:48:02','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmb9475/upload/yonghu_tupian4.jpg'),(15,'2021-04-23 17:48:02','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmb9475/upload/yonghu_tupian5.jpg'),(16,'2021-04-23 17:48:02','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmb9475/upload/yonghu_tupian6.jpg'),(1619171646017,'2021-04-23 17:54:06','1','1','1',NULL,'15879854685','','',NULL);

/*Table structure for table `yonghuxinxi` */

DROP TABLE IF EXISTS `yonghuxinxi`;

CREATE TABLE `yonghuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xueyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '学院名称',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `zhuanye` date DEFAULT NULL COMMENT '专业',
  `zhengzhimianmao` varchar(200) DEFAULT NULL COMMENT '政治面貌',
  `biyeriqi` date DEFAULT NULL COMMENT '毕业日期',
  `xieyishubianhao` varchar(200) DEFAULT NULL COMMENT '协议书编号',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='用户信息';

/*Data for the table `yonghuxinxi` */

insert  into `yonghuxinxi`(`id`,`addtime`,`xuehao`,`xingming`,`xingbie`,`xueyuanmingcheng`,`yuanxi`,`zhuanye`,`zhengzhimianmao`,`biyeriqi`,`xieyishubianhao`,`fujian`,`lianxidianhua`) values (31,'2021-04-23 17:48:02','学号1','姓名1','男','学院名称1','院系1','2021-04-23','政治面貌1','2021-04-23','协议书编号1','','13823888881'),(32,'2021-04-23 17:48:02','学号2','姓名2','男','学院名称2','院系2','2021-04-23','政治面貌2','2021-04-23','协议书编号2','','13823888882'),(33,'2021-04-23 17:48:02','学号3','姓名3','男','学院名称3','院系3','2021-04-23','政治面貌3','2021-04-23','协议书编号3','','13823888883'),(34,'2021-04-23 17:48:02','学号4','姓名4','男','学院名称4','院系4','2021-04-23','政治面貌4','2021-04-23','协议书编号4','','13823888884'),(35,'2021-04-23 17:48:02','学号5','姓名5','男','学院名称5','院系5','2021-04-23','政治面貌5','2021-04-23','协议书编号5','','13823888885'),(36,'2021-04-23 17:48:02','学号6','姓名6','男','学院名称6','院系6','2021-04-23','政治面貌6','2021-04-23','协议书编号6','','13823888886');

/*Table structure for table `yuanxifenlei` */

DROP TABLE IF EXISTS `yuanxifenlei`;

CREATE TABLE `yuanxifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='院系分类';

/*Data for the table `yuanxifenlei` */

insert  into `yuanxifenlei`(`id`,`addtime`,`leixing`) values (81,'2021-04-23 17:48:02','类型1'),(82,'2021-04-23 17:48:02','类型2'),(83,'2021-04-23 17:48:02','类型3'),(84,'2021-04-23 17:48:02','类型4'),(85,'2021-04-23 17:48:02','类型5'),(86,'2021-04-23 17:48:02','类型6');

/*Table structure for table `zhaopinxinxi` */

DROP TABLE IF EXISTS `zhaopinxinxi`;

CREATE TABLE `zhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `qiyedidian` varchar(200) DEFAULT NULL COMMENT '企业地点',
  `zhaopingangwei` varchar(200) DEFAULT NULL COMMENT '招聘岗位',
  `zhaopinrenshu` int(11) DEFAULT NULL COMMENT '招聘人数',
  `zhiweiyaoqiu` longtext COMMENT '职位要求',
  `gongzuoneirong` longtext COMMENT '工作内容',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `toudiyouxiang` varchar(200) DEFAULT NULL COMMENT '投递邮箱',
  `qiyejieshao` longtext COMMENT '企业介绍',
  `qiyefengmian` varchar(200) DEFAULT NULL COMMENT '企业封面',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='招聘信息';

/*Data for the table `zhaopinxinxi` */

insert  into `zhaopinxinxi`(`id`,`addtime`,`qiyezhanghao`,`qiyemingcheng`,`qiyedidian`,`zhaopingangwei`,`zhaopinrenshu`,`zhiweiyaoqiu`,`gongzuoneirong`,`xinzidaiyu`,`lianxidianhua`,`toudiyouxiang`,`qiyejieshao`,`qiyefengmian`,`sfsh`,`shhf`,`clicktime`,`clicknum`) values (51,'2021-04-23 17:48:02','企业账号1','企业名称1','企业地点1','招聘岗位1',1,'职位要求1','工作内容1','薪资待遇1','13823888881','773890001@qq.com','企业介绍1','http://localhost:8080/ssmb9475/upload/zhaopinxinxi_qiyefengmian1.jpg','是','','2021-04-23 17:48:02',1),(52,'2021-04-23 17:48:02','企业账号2','企业名称2','企业地点2','招聘岗位2',2,'职位要求2','工作内容2','薪资待遇2','13823888882','773890002@qq.com','企业介绍2','http://localhost:8080/ssmb9475/upload/zhaopinxinxi_qiyefengmian2.jpg','是','','2021-04-23 17:54:11',3),(53,'2021-04-23 17:48:02','企业账号3','企业名称3','企业地点3','招聘岗位3',3,'职位要求3','工作内容3','薪资待遇3','13823888883','773890003@qq.com','企业介绍3','http://localhost:8080/ssmb9475/upload/zhaopinxinxi_qiyefengmian3.jpg','是','','2021-04-23 17:48:02',3),(54,'2021-04-23 17:48:02','企业账号4','企业名称4','企业地点4','招聘岗位4',4,'职位要求4','工作内容4','薪资待遇4','13823888884','773890004@qq.com','企业介绍4','http://localhost:8080/ssmb9475/upload/zhaopinxinxi_qiyefengmian4.jpg','是','','2021-04-23 17:48:02',4),(55,'2021-04-23 17:48:02','企业账号5','企业名称5','企业地点5','招聘岗位5',5,'职位要求5','工作内容5','薪资待遇5','13823888885','773890005@qq.com','企业介绍5','http://localhost:8080/ssmb9475/upload/zhaopinxinxi_qiyefengmian5.jpg','是','','2021-04-23 17:48:02',5),(56,'2021-04-23 17:48:02','企业账号6','企业名称6','企业地点6','招聘岗位6',6,'职位要求6','工作内容6','薪资待遇6','13823888886','773890006@qq.com','企业介绍6','http://localhost:8080/ssmb9475/upload/zhaopinxinxi_qiyefengmian6.jpg','是','','2021-04-23 17:48:02',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
