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
<body class="is-preload" style="overflow:hidden"><!--去除滚动条-->

<!-- Header -->
<header id="header">
    <h1>欢迎${user.name }登录</h1>
    <nav>
        <ul>
            <li><a href="userServlet?type=my&&id=${user.id }">游戏记录</a></li>
            <li><a href="userServlet?type=rank&&id=${user.id }&&Difficulty=${Difficulty }">积分排名</a></li>
            <li><a href="wordServlet?type=selectAll&&id=${user.id }">单词库</a></li>
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
        <input type="hidden" id="Difficulty" value="${Difficulty }">
        <footer>
            <a href="#work" class="button style2 down" onclick="CountDown();cancelDisMouseWheel()"></a>
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
                            formaction="playServlet?type=judge&&id=${user.id }&&fid=${listall.get(0).getId() }&&tid=${listtrue.get(0).getId() }&&sum=${sum }&&Difficulty=${Difficulty }"
                            formmethod="post">
                        <p>${listall.get(0).getChinese() }<p/></button>
                </article>
                <article class="from-right">
                    <button type="submit"
                            formaction="playServlet?type=judge&&id=${user.id }&&fid=${listall.get(1).getId() }&&tid=${listtrue.get(0).getId() }&&sum=${sum }&&Difficulty=${Difficulty }"
                            formmethod="post">
                        <p>${listall.get(1).getChinese() }<p/></button>
                </article>
                <br/>
                <article class="from-left">
                    <button type="submit"
                            formaction="playServlet?type=judge&&id=${user.id }&&fid=${listall.get(2).getId() }&&tid=${listtrue.get(0).getId() }&&sum=${sum }&&Difficulty=${Difficulty }"
                            formmethod="post">
                        <p>${listall.get(2).getChinese() }<p/></button>
                </article>
                <article class="from-right">
                    <button type="submit"
                            formaction="playServlet?type=judge&&id=${user.id }&&fid=${listall.get(3).getId() }&&tid=${listtrue.get(0).getId() }&&sum=${sum }&&Difficulty=${Difficulty }"
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
            <p>英语单词游戏是一个单词统计的练习游戏。英文单词随机显示，<br/>
                用户在5秒内选择单词对应的中文词语，提交答案。<br/>
                通过计分、页面的特效等提高趣味性，<br/>
                使学习和记单词成为一种乐趣。</p>
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
<script src="playassets/js/wheel.js"></script>

</body>
</html>