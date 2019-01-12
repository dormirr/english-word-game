<%--
  Created by IntelliJ IDEA.
  User: dormirr
  Date: 19-1-10
  Time: 下午2:47
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
            <li><a href="#intro">欢迎</a></li>
            <li><a href="#work">游戏</a></li>
            <li><a href="#contact">其他</a></li>
        </ul>
    </nav>
</header>

<!-- Intro -->
<section id="intro" class="main style1 dark fullscreen">
    <div class="content">
        <header>
            <h2>你的积分为：${difficulty }</h2>
        </header>
        <p><strong>你还有${sum }次机会</strong></p>
        <input type="hidden" id="id" value="${user.id }">
        <input type="hidden" id="sum" value="${sum }">
        <footer>
            <a href="#work" class="button style2 down" onclick="CountDown()"></a>
        </footer>
    </div>
</section>

<!-- Work -->
<section id="work" class="main style3 primary">
    <div class="content">
        <header>
            <h2>${listtrue.get(0).getWord() }</h2>
            <p>难度为：${listtrue.get(0).getDifficulty() }</p>
        </header>

        <!-- Gallery  -->
        <form>
            <div class="gallery">
                <article class="from-left">
                    <button type="submit"
                            formaction="playServlet?type=judge&&id=${user.id }&&fid=${listall.get(0).getId() }&&tid=${listtrue.get(0).getId() }&&sum=${sum }"
                            formmethod="post">
                        <p>${listall.get(0).getChinese() }<p/></button>
                </article>
                <article class="from-right">
                    <button type="submit"
                            formaction="playServlet?type=judge&&id=${user.id }&&fid=${listall.get(1).getId() }&&tid=${listtrue.get(0).getId() }&&sum=${sum }"
                            formmethod="post">
                        <p>${listall.get(1).getChinese() }<p/></button>
                </article>
                <article class="from-left">
                    <button type="submit"
                            formaction="playServlet?type=judge&&id=${user.id }&&fid=${listall.get(2).getId() }&&tid=${listtrue.get(0).getId() }&&sum=${sum }"
                            formmethod="post">
                        <p>${listall.get(2).getChinese() }<p/></button>
                </article>
                <article class="from-right">
                    <button type="submit"
                            formaction="playServlet?type=judge&&id=${user.id }&&fid=${listall.get(3).getId() }&&tid=${listtrue.get(0).getId() }&&sum=${sum }"
                            formmethod="post">
                        <p>${listall.get(3).getChinese() }<p/></button>
                </article>
            </div>
        </form>
    </div>
</section>

<!-- Contact -->
<section id="contact" class="main style3 secondary">
    <div class="content">
        <header>
            <h2>计时</h2>
            <p id="timer"></p>
            <p>
                <a href="wordServlet?type=selectAll&&id=${user.id }"><span>单词库</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="userServlet?type=rank&&id=${user.id }"><span>积分排名</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="userServlet?type=my&&id=${user.id }"><span>个人数据</span></a>
            </p>
        </header>
    </div>
</section>

<!-- Footer -->

<!-- Scripts -->
<script src="playassets/js/jquery.min.js"></script>
<script src="playassets/js/jquery.poptrox.min.js"></script>
<script src="playassets/js/jquery.scrolly.min.js"></script>
<script src="playassets/js/jquery.scrollex.min.js"></script>
<script src="playassets/js/browser.min.js"></script>
<script src="playassets/js/breakpoints.min.js"></script>
<script src="playassets/js/util.js"></script>
<script src="playassets/js/main.js"></script>
<script src="playassets/js/time.js"></script>

</body>
</html>