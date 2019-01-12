<%--
  Created by IntelliJ IDEA.
  User: dormirr
  Date: 19-1-9
  Time: 下午2:38
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
            <h1>单词库</h1>
            <p>欢迎您&bull;${user.name }</p>
            <a href="add-words.jsp"><span class="label">增加单词</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <form action="wordServlet?type=like" method="post">
                <input name="str" type="text" placeholder="请输入要搜索的内容"
                       style="background:transparent;border:1px solid #ffffff">
                <button type="submit" style="background:transparent;border:0px solid #ffffff;color:#ffffff">
                    <span>搜索</span>
                </button>
            </form>

            <table width="100%">
                <thead>
                <tr align="center">
                    <th>单词序号</th>
                    <th>单词英文</th>
                    <th>单词中文</th>
                    <th>难度</th>
                    <th>编辑</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list }" var="item" begin="${(pageNos-1)*15 }" end="${pageNos*15-1}">
                    <tr align="center">
                        <td>${item.id }</td>
                        <td>${item.word }</td>
                        <td>${item.chinese }</td>
                        <td>${item.difficulty }</td>
                        <td>
                            <a href="javascript:if(confirm('确实要删除该内容吗?')){location='wordServlet?type=delete&&id=${item.id }'}">删除
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </header>

        <!-- Footer -->
        <footer id="footer">
            <c:if test="${pageNos>1 }">
                <a href="wordServlet?type=selectAll&&id=${user.id }&&pageNos=1">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="wordServlet?type=selectAll&&id=${user.id }&&pageNos=${pageNos-1 }">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </c:if>
            <c:if test="${pageNos <countPage }">
                <a href="wordServlet?type=selectAll&&id=${user.id }&&pageNos=${pageNos+1 }">下一页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="wordServlet?type=selectAll&&id=${user.id }&&pageNos=${countPage }">末页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </c:if>
            共${countPage }页
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
