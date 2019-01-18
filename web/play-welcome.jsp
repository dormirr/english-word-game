<%--
  Created by IntelliJ IDEA.
  User: dormirr
  Date: 19-1-10
  Time: 下午2:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>英语单词游戏</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="playassets/css/main.css"/>
    <noscript>
        <link rel="stylesheet" href="playassets/css/noscript.css"/>
    </noscript>
</head>
<body class="is-preload">

<!-- Header -->
<header id="header">
    <h1>欢迎${user.name }登录</h1>
    <nav>
        <ul>
            <li><a href="userServlet?type=selectById&&id=${user.id }">修改密码</a></li>
            <li><a href="userServlet?type=my&&id=${user.id }">游戏记录</a></li>
            <li><a href="login.jsp">退出登录</a></li>
        </ul>
    </nav>
</header>

<!-- Intro -->
<section id="intro" class="main style1 dark fullscreen">
    <div class="content">
        <header>
            <h2>你好&nbsp;&bull;&nbsp;${user.name }</h2>
        </header>
        <p>欢迎来到<strong>英语单词游戏</strong>，<br/>
            <strong>英语单词游戏</strong>是一个单词统计的练习游戏。英文单词随机显示，<br/>
            用户在5秒内选择单词对应的中文词语，提交答案。<br/>
            通过计分、页面的特效等提高趣味性，<br/>
            使学习和记单词成为一种乐趣。</p>
        <p><strong>点击对应的难度开始游戏</strong></p>
        <footer>
            <p><strong>简单&emsp;&emsp;&emsp;中等&emsp;&emsp;&emsp;困难&emsp;&emsp;&emsp;随机</strong></p>
            <a href="playServlet?type=play&&id=${user.id }&&Difficulty=简单" class="button style2 down">简单</a>
            <a href="playServlet?type=play&&id=${user.id }&&Difficulty=中等" class="button style2 down">中等</a>
            <a href="playServlet?type=play&&id=${user.id }&&Difficulty=困难" class="button style2 down">困难</a>
            <a href="playServlet?type=play&&id=${user.id }&&Difficulty=随机" class="button style2 down">随机</a>
        </footer>
    </div>
</section>

<!-- Scripts -->
<script src="playassets/js/jquery.min.js"></script>
<script src="playassets/js/jquery.poptrox.min.js"></script>
<script src="playassets/js/jquery.scrolly.min.js"></script>
<script src="playassets/js/jquery.scrollex.min.js"></script>
<script src="playassets/js/browser.min.js"></script>
<script src="playassets/js/breakpoints.min.js"></script>
<script src="playassets/js/util.js"></script>
<script src="playassets/js/main.js"></script>

</body>
</html>
