# 简介

这个项目使用了JSP、Servlet、Ajax、Cookies、Filter制作，代码中有大量讲解的注释，是我的一个小作业。

登陆界面：

![登录界面](/文档/截图/登录界面.png)

管理员后台：

![2](/文档/截图/后台.png)

游戏界面：

![游戏界面](/文档/截图/游戏界面.png)

游戏结算界面：

![游戏结算](/文档/截图/游戏结算.png)

具体介绍在\文档\面向对象综合设计小组报告.pdf文件中，可自行查看。

# 环境

- IntelliJ IDEA Ultimate
- OpenJDK 11
- Tomcat 9
- MySQL 8
- Navicat 12 for MySQL

# 使用说明

## 下载文件

![下载](/文档/截图/下载.png)

## 配置好相应的环境

安装好数据库、IDE、OpenJDK等环境与工具。

## 修改文件

### 数据库

\src\com\courseDesign\englishWordGame\util目录下的DBUtil.java文件中，将以下代码进行修改：

```java
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/EnglishWordGame", "root", "ztcztcztc");
```

- EnglishWordGame修改为你的数据库名字；
- root修改为你的MySQL数据库账号；
- ztcztcztc修改为你的数据库密码。

### 导入数据

- \sql目录下的EnglishWordGame.sql为相应的数据库文件，将它导入；
- 相应的账号查看数据库文件即可。