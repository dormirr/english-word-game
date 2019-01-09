CREATE TABLE `用户` (
`用户序号`  int(8) UNSIGNED NOT NULL AUTO_INCREMENT ,
`账号`  varchar(60) NOT NULL ,
`密码`  varchar(60) NOT NULL ,
`单局最高积分`  int(8) UNSIGNED ZEROFILL NULL ,
`累计积分`  int(8) UNSIGNED ZEROFILL NULL ,
`累计积分排名`  int(8) UNSIGNED NULL ,
PRIMARY KEY (`用户序号`)
)
;

CREATE TABLE `单词` (
`单词序号`  int(8) UNSIGNED NOT NULL AUTO_INCREMENT ,
`英文`  varchar(60) NOT NULL ,
`中文`  varchar(60) NOT NULL ,
`难度`  varchar(60) NOT NULL ,
PRIMARY KEY (`单词序号`)
)
;

CREATE TABLE `记录` (
`用户序号`  int(8) NOT NULL ,
`单词序号`  int(8) NOT NULL ,
`次数`  int(8) NOT NULL ,
PRIMARY KEY (`用户序号`,`单词序号`)
)
;

CREATE TABLE `积分` (
`游戏序号`  int(8) UNSIGNED NOT NULL AUTO_INCREMENT ,
`用户序号`  int(8) UNSIGNED NOT NULL ,
`游戏积分`  int(8) UNSIGNED ZEROFILL NOT NULL ,
PRIMARY KEY (`游戏序号`)
)
;

INSERT INTO `用户` (`用户序号`, `账号`, `密码`, `单局最高积分`, `累计积分`, `累计积分排名`) VALUES ('1', '管理员', '123', '999999', '999999', '1');