<%--
  Created by IntelliJ IDEA.
  User: dormirr
  Date: 19-1-8
  Time: 下午2:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <title>英语单词游戏</title>
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
            <h1>游戏积分排名</h1>
            <p>欢迎您 &nbsp;&bull;&nbsp; ${user.name }</p>
            <p><a href="userServlet?type=selectById&&id=${user.id }"><span class="label">修改密码</span></a></p>
            <table width="100%">
                <thead>
                <tr align="center">
                    <th>序号</th>
                    <th>账号</th>
                    <th>单局最高积分</th>
                    <th>累计积分</th>
                    <th>累计积分排名</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list }" var="item">
                    <tr align="center">
                        <td>${item.id }</td>
                        <td>${item.name }</td>
                        <td>${item.highestScore }</td>
                        <td>${item.grandTotalScore }</td>
                        <td>${item.ranking }</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </header>

        <!-- Footer -->
        <footer id="footer">
            <span class="copyright">请继续努力</span>
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