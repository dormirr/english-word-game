<%--
  Created by IntelliJ IDEA.
  User: dormirr
  Date: 19-1-13
  Time: 下午2:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <title>修改单词信息</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="rankassets/css/main.css"/>
    <noscript>
        <link rel="stylesheet" href="rankassets/css/noscript.css"/>
    </noscript>
</head>

<body class="is-preload">
<div id="wrapper">
    <div id="bg"></div>
    <div id="overlay"></div>
    <div id="main">

        <!-- Header -->
        <header id="header">
            <h1>修改单词信息</h1>
            <p>欢迎您&bull;${user.name }&emsp;<a href="#" onclick="history.go(-1)">后退</a></p><br/>
            <form action="wordServlet?type=update&&id=${user.id }" method="post">
                <input name="wid" type="hidden" placeholder="" value="${word.id }"
                       style="background:transparent;border:1px solid #ffffff">
                <input name="chinese" type="text" placeholder="" value="${word.chinese }"
                       style="background:transparent;border:1px solid #ffffff"><br/><br/>
                <input name="word" type="text" placeholder="" value="${word.word }"
                       style="background:transparent;border:1px solid #ffffff"><br/><br/>
                <input name="difficulty" type="text" placeholder="" value="${word.difficulty }"
                       style="background:transparent;border:1px solid #ffffff"><br/>
                <button type="submit"
                        style="background:transparent;border:0px solid #ffffff;color:#ffffff;font-size: 1em">
                    <p class="label">提交</p>
                </button>
            </form>
        </header>

        <!-- Footer -->
        <footer id="footer">
            <p style="color:red">${error }</p>
        </footer>

    </div>
</div>
<script>
    window.onload = function () {
        document.body.classList.remove('is-preload');
    }
    window.ontouchmove = function () {
        return false;
    }
    window.onorientationchange = function () {
        document.body.scrollTop = 0;
    }
</script>
</body>

</html>

