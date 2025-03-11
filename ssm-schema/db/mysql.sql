DROP DATABASE IF EXISTS ssmJenZ0;

CREATE DATABASE ssmJenZ0 default character set utf8mb4 collate utf8mb4_general_ci;

USE ssmJenZ0;

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`xueshengxuehao` varchar(200)  UNIQUE   COMMENT '学生学号',
	`xueshengxingming` varchar(200)    COMMENT '学生姓名',
	`mima` varchar(200)    COMMENT '密码',
	`xingbie` varchar(200)    COMMENT '性别',
	`nianji` varchar(200)    COMMENT '年级',
	`banji` varchar(200)    COMMENT '班级',
	`shenfenzheng` varchar(200)    COMMENT '身份证',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生';

INSERT INTO xuesheng(xueshengxuehao,xueshengxingming,mima,xingbie,nianji,banji,shenfenzheng,lianxidianhua) VALUES('学生1','学生姓名1','123456','男','年级1','班级1','440300199101010001','020-89819991');
INSERT INTO xuesheng(xueshengxuehao,xueshengxingming,mima,xingbie,nianji,banji,shenfenzheng,lianxidianhua) VALUES('学生2','学生姓名2','123456','男','年级2','班级2','440300199202020002','020-89819992');
INSERT INTO xuesheng(xueshengxuehao,xueshengxingming,mima,xingbie,nianji,banji,shenfenzheng,lianxidianhua) VALUES('学生3','学生姓名3','123456','男','年级3','班级3','440300199303030003','020-89819993');


DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`jiaoshigonghao` varchar(200)  UNIQUE   COMMENT '教师工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	`mima` varchar(200)    COMMENT '密码',
	`zhicheng` varchar(200)    COMMENT '职称',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`shenfenzheng` varchar(200)    COMMENT '身份证',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师';

INSERT INTO jiaoshi(jiaoshigonghao,jiaoshixingming,mima,zhicheng,lianxidianhua,shenfenzheng) VALUES('教师1','教师姓名1','123456','职称1','020-89819991','440300199101010001');
INSERT INTO jiaoshi(jiaoshigonghao,jiaoshixingming,mima,zhicheng,lianxidianhua,shenfenzheng) VALUES('教师2','教师姓名2','123456','职称2','020-89819992','440300199202020002');
INSERT INTO jiaoshi(jiaoshigonghao,jiaoshixingming,mima,zhicheng,lianxidianhua,shenfenzheng) VALUES('教师3','教师姓名3','123456','职称3','020-89819993','440300199303030003');


DROP TABLE IF EXISTS `zaixianxuanti`;

CREATE TABLE `zaixianxuanti` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`ketitimu` varchar(200)    COMMENT '课题题目',
	`tupian` varchar(200)    COMMENT '图片',
	`jianjie` longtext    COMMENT '简介',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`fabushijian` date    COMMENT '发布时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线选题';

INSERT INTO zaixianxuanti(ketitimu,tupian,jianjie,jiaoshigonghao,fabushijian,sfsh,shhf) VALUES('课题题目1','zaixianxuanti_tupian1','简介1','教师工号1',CURRENT_TIMESTAMP,'否','');
INSERT INTO zaixianxuanti(ketitimu,tupian,jianjie,jiaoshigonghao,fabushijian,sfsh,shhf) VALUES('课题题目2','zaixianxuanti_tupian2','简介2','教师工号2',CURRENT_TIMESTAMP,'否','');
INSERT INTO zaixianxuanti(ketitimu,tupian,jianjie,jiaoshigonghao,fabushijian,sfsh,shhf) VALUES('课题题目3','zaixianxuanti_tupian3','简介3','教师工号3',CURRENT_TIMESTAMP,'否','');


DROP TABLE IF EXISTS `wenjianmoban`;

CREATE TABLE `wenjianmoban` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`biaoti` varchar(200)    COMMENT '标题',
	`wenjian` varchar(200)    COMMENT '文件',
	`tupian` varchar(200)    COMMENT '图片',
	`xiangqing` longtext    COMMENT '详情',
	`fabushijian` datetime    COMMENT '发布时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件模板';

INSERT INTO wenjianmoban(biaoti,wenjian,tupian,xiangqing,fabushijian) VALUES('标题1','文件1','wenjianmoban_tupian1','详情1',CURRENT_TIMESTAMP);
INSERT INTO wenjianmoban(biaoti,wenjian,tupian,xiangqing,fabushijian) VALUES('标题2','文件2','wenjianmoban_tupian2','详情2',CURRENT_TIMESTAMP);
INSERT INTO wenjianmoban(biaoti,wenjian,tupian,xiangqing,fabushijian) VALUES('标题3','文件3','wenjianmoban_tupian3','详情3',CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `xueshengtiwen`;

CREATE TABLE `xueshengtiwen` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`woyaotiwen` longtext    COMMENT '我要提问',
	`xueshengxuehao` varchar(200)    COMMENT '学生学号',
	`xueshengxingming` varchar(200)    COMMENT '学生姓名',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	`tiwenshijian` datetime    COMMENT '提问时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生提问';

INSERT INTO xueshengtiwen(woyaotiwen,xueshengxuehao,xueshengxingming,jiaoshigonghao,jiaoshixingming,tiwenshijian) VALUES('我要提问1','学生学号1','学生姓名1','教师工号1','教师姓名1',CURRENT_TIMESTAMP);
INSERT INTO xueshengtiwen(woyaotiwen,xueshengxuehao,xueshengxingming,jiaoshigonghao,jiaoshixingming,tiwenshijian) VALUES('我要提问2','学生学号2','学生姓名2','教师工号2','教师姓名2',CURRENT_TIMESTAMP);
INSERT INTO xueshengtiwen(woyaotiwen,xueshengxuehao,xueshengxingming,jiaoshigonghao,jiaoshixingming,tiwenshijian) VALUES('我要提问3','学生学号3','学生姓名3','教师工号3','教师姓名3',CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `laoshidayi`;

CREATE TABLE `laoshidayi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`laoshidayi` longtext    COMMENT '老师答疑',
	`xueshengxuehao` varchar(200)    COMMENT '学生学号',
	`xueshengxingming` varchar(200)    COMMENT '学生姓名',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	`dayishijian` datetime    COMMENT '答疑时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='老师答疑';

INSERT INTO laoshidayi(laoshidayi,xueshengxuehao,xueshengxingming,jiaoshigonghao,jiaoshixingming,dayishijian) VALUES('老师答疑1','学生学号1','学生姓名1','教师工号1','教师姓名1',CURRENT_TIMESTAMP);
INSERT INTO laoshidayi(laoshidayi,xueshengxuehao,xueshengxingming,jiaoshigonghao,jiaoshixingming,dayishijian) VALUES('老师答疑2','学生学号2','学生姓名2','教师工号2','教师姓名2',CURRENT_TIMESTAMP);
INSERT INTO laoshidayi(laoshidayi,xueshengxuehao,xueshengxingming,jiaoshigonghao,jiaoshixingming,dayishijian) VALUES('老师答疑3','学生学号3','学生姓名3','教师工号3','教师姓名3',CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `kaitibaogao`;

CREATE TABLE `kaitibaogao` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`ketitimu` varchar(200)    COMMENT '课题题目',
	`kaitibaogao` longtext    COMMENT '开题报告',
	`xueshengxuehao` varchar(200)    COMMENT '学生学号',
	`xueshengxingming` varchar(200)    COMMENT '学生姓名',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`tijiaoshijian` datetime    COMMENT '提交时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开题报告';

INSERT INTO kaitibaogao(ketitimu,kaitibaogao,xueshengxuehao,xueshengxingming,jiaoshigonghao,tijiaoshijian,sfsh,shhf) VALUES('课题题目1','开题报告1','学生学号1','学生姓名1','教师工号1',CURRENT_TIMESTAMP,'否','');
INSERT INTO kaitibaogao(ketitimu,kaitibaogao,xueshengxuehao,xueshengxingming,jiaoshigonghao,tijiaoshijian,sfsh,shhf) VALUES('课题题目2','开题报告2','学生学号2','学生姓名2','教师工号2',CURRENT_TIMESTAMP,'否','');
INSERT INTO kaitibaogao(ketitimu,kaitibaogao,xueshengxuehao,xueshengxingming,jiaoshigonghao,tijiaoshijian,sfsh,shhf) VALUES('课题题目3','开题报告3','学生学号3','学生姓名3','教师工号3',CURRENT_TIMESTAMP,'否','');


DROP TABLE IF EXISTS `zhongqibaogao`;

CREATE TABLE `zhongqibaogao` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`ketitimu` varchar(200)    COMMENT '课题题目',
	`kaishishijian` date    COMMENT '开始时间',
	`jiezhishijian` date    COMMENT '截至时间',
	`zhongqibaogao` longtext    COMMENT '中期报告',
	`xueshengxuehao` varchar(200)    COMMENT '学生学号',
	`xueshengxingming` varchar(200)    COMMENT '学生姓名',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`tijiaoshijian` datetime    COMMENT '提交时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='中期报告';

INSERT INTO zhongqibaogao(ketitimu,kaishishijian,jiezhishijian,zhongqibaogao,xueshengxuehao,xueshengxingming,jiaoshigonghao,tijiaoshijian,sfsh,shhf) VALUES('课题题目1',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'中期报告1','学生学号1','学生姓名1','教师工号1',CURRENT_TIMESTAMP,'否','');
INSERT INTO zhongqibaogao(ketitimu,kaishishijian,jiezhishijian,zhongqibaogao,xueshengxuehao,xueshengxingming,jiaoshigonghao,tijiaoshijian,sfsh,shhf) VALUES('课题题目2',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'中期报告2','学生学号2','学生姓名2','教师工号2',CURRENT_TIMESTAMP,'否','');
INSERT INTO zhongqibaogao(ketitimu,kaishishijian,jiezhishijian,zhongqibaogao,xueshengxuehao,xueshengxingming,jiaoshigonghao,tijiaoshijian,sfsh,shhf) VALUES('课题题目3',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'中期报告3','学生学号3','学生姓名3','教师工号3',CURRENT_TIMESTAMP,'否','');


DROP TABLE IF EXISTS `biyelunwen`;

CREATE TABLE `biyelunwen` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`ketitimu` varchar(200)    COMMENT '课题题目',
	`kaishishijian` datetime    COMMENT '开始时间',
	`jiezhishijian` datetime    COMMENT '截至时间',
	`biyelunwen` longtext    COMMENT '毕业论文',
	`xueshengxuehao` varchar(200)    COMMENT '学生学号',
	`xueshengxingming` varchar(200)    COMMENT '学生姓名',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`tijiaoshijian` datetime    COMMENT '提交时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='毕业论文';

INSERT INTO biyelunwen(ketitimu,kaishishijian,jiezhishijian,biyelunwen,xueshengxuehao,xueshengxingming,jiaoshigonghao,tijiaoshijian,sfsh,shhf) VALUES('课题题目1',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'毕业论文1','学生学号1','学生姓名1','教师工号1',CURRENT_TIMESTAMP,'否','');
INSERT INTO biyelunwen(ketitimu,kaishishijian,jiezhishijian,biyelunwen,xueshengxuehao,xueshengxingming,jiaoshigonghao,tijiaoshijian,sfsh,shhf) VALUES('课题题目2',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'毕业论文2','学生学号2','学生姓名2','教师工号2',CURRENT_TIMESTAMP,'否','');
INSERT INTO biyelunwen(ketitimu,kaishishijian,jiezhishijian,biyelunwen,xueshengxuehao,xueshengxingming,jiaoshigonghao,tijiaoshijian,sfsh,shhf) VALUES('课题题目3',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'毕业论文3','学生学号3','学生姓名3','教师工号3',CURRENT_TIMESTAMP,'否','');


DROP TABLE IF EXISTS `xueshengtiti`;

CREATE TABLE `xueshengtiti` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`ketitimu` varchar(200)    COMMENT '课题题目',
	`jianjie` longtext    COMMENT '简介',
	`xueshengxuehao` varchar(200)    COMMENT '学生学号',
	`xueshengxingming` varchar(200)    COMMENT '学生姓名',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`tijiaoshijian` datetime    COMMENT '提交时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生提题';

INSERT INTO xueshengtiti(ketitimu,jianjie,xueshengxuehao,xueshengxingming,jiaoshigonghao,tijiaoshijian,sfsh,shhf) VALUES('课题题目1','简介1','学生学号1','学生姓名1','教师工号1',CURRENT_TIMESTAMP,'否','');
INSERT INTO xueshengtiti(ketitimu,jianjie,xueshengxuehao,xueshengxingming,jiaoshigonghao,tijiaoshijian,sfsh,shhf) VALUES('课题题目2','简介2','学生学号2','学生姓名2','教师工号2',CURRENT_TIMESTAMP,'否','');
INSERT INTO xueshengtiti(ketitimu,jianjie,xueshengxuehao,xueshengxingming,jiaoshigonghao,tijiaoshijian,sfsh,shhf) VALUES('课题题目3','简介3','学生学号3','学生姓名3','教师工号3',CURRENT_TIMESTAMP,'否','');


DROP TABLE IF EXISTS `lunwenjindu`;

CREATE TABLE `lunwenjindu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`ketitimu` varchar(200)    COMMENT '课题题目',
	`lunwenjindu` longtext    COMMENT '论文进度',
	`xueshengxuehao` varchar(200)    COMMENT '学生学号',
	`xueshengxingming` varchar(200)    COMMENT '学生姓名',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`tijiaoshijian` datetime    COMMENT '提交时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='论文进度';

INSERT INTO lunwenjindu(ketitimu,lunwenjindu,xueshengxuehao,xueshengxingming,jiaoshigonghao,tijiaoshijian,sfsh,shhf) VALUES('课题题目1','论文进度1','学生学号1','学生姓名1','教师工号1',CURRENT_TIMESTAMP,'否','');
INSERT INTO lunwenjindu(ketitimu,lunwenjindu,xueshengxuehao,xueshengxingming,jiaoshigonghao,tijiaoshijian,sfsh,shhf) VALUES('课题题目2','论文进度2','学生学号2','学生姓名2','教师工号2',CURRENT_TIMESTAMP,'否','');
INSERT INTO lunwenjindu(ketitimu,lunwenjindu,xueshengxuehao,xueshengxingming,jiaoshigonghao,tijiaoshijian,sfsh,shhf) VALUES('课题题目3','论文进度3','学生学号3','学生姓名3','教师工号3',CURRENT_TIMESTAMP,'否','');


DROP TABLE IF EXISTS `lunwenchazhong`;

CREATE TABLE `lunwenchazhong` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`wangzhanmingcheng` varchar(200)    COMMENT '网站名称',
	`tupian` varchar(200)    COMMENT '图片',
	`wangzhi` varchar(200)    COMMENT '网址',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='论文查重';

INSERT INTO lunwenchazhong(wangzhanmingcheng,tupian,wangzhi) VALUES('网站名称1','lunwenchazhong_tupian1','网址1');
INSERT INTO lunwenchazhong(wangzhanmingcheng,tupian,wangzhi) VALUES('网站名称2','lunwenchazhong_tupian2','网址2');
INSERT INTO lunwenchazhong(wangzhanmingcheng,tupian,wangzhi) VALUES('网站名称3','lunwenchazhong_tupian3','网址3');


DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`title` varchar(200)    COMMENT '帖子标题',
	`content` longtext NOT NULL   COMMENT '帖子内容',
	`parentid` bigint    COMMENT '父节点id',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`username` varchar(200)    COMMENT '用户名',
	`isdone` varchar(200)    COMMENT '是否关闭[关闭/开放]',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='论坛表';

INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题1','帖子内容1',1,1,'用户名1','是否关闭[关闭/开放]1');
INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题2','帖子内容2',2,2,'用户名2','是否关闭[关闭/开放]2');
INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题3','帖子内容3',3,3,'用户名3','是否关闭[关闭/开放]3');


DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(1,1,'表名1','收藏名称1','storeup_picture1');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(2,2,'表名2','收藏名称2','storeup_picture2');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(3,3,'表名3','收藏名称3','storeup_picture3');


DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

INSERT INTO news(title,picture,content) VALUES('标题1','news_picture1','内容1');
INSERT INTO news(title,picture,content) VALUES('标题2','news_picture2','内容2');
INSERT INTO news(title,picture,content) VALUES('标题3','news_picture3','内容3');



DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name) values(1,'picture1');
insert into config(id,name) values(2,'picture2');
insert into config(id,name) values(3,'picture3');
insert into config(id,name) values(4,'picture4');
insert into config(id,name) values(5,'picture5');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

