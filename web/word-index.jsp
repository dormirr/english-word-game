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
            <p>欢迎您&bull;${user.name }&emsp;<a href="login.jsp">退出登录</a>&emsp;<a href="userServlet?type=selectById&&id=${user.id }">修改密码</a></p>
            <p><a href="wordServlet?type=add&&id=${user.id }">增加单词</a></p>
            <form action="wordServlet?type=like&&id=${user.id }" method="post">
                <button type="submit"
                        style="background:transparent;border:0px solid #ffffff;color:#ffffff;font-size: 1em">
                    <p>搜索单词</p>
                </button>
                <input name="str" type="text" placeholder="请输入要搜索单词的中英文"
                       style="background:transparent;border:1px solid #ffffff"><br/><br/>
            </form>

            <table width="100%">
                <thead>
                <tr align="center">
                    <th>单词英文</th>
                    <th>单词中文</th>
                    <th>单词难度</th>
                    <th>修改单词</th>
                    <th>删除单词</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list }" var="item" begin="${(pageNos-1)*15 }" end="${pageNos*15-1}">
                    <tr align="center">
                        <td>${item.word }</td>
                        <td>${item.chinese }</td>
                        <td>${item.difficulty }</td>
                        <td>
                            <a href="wordServlet?type=selectById&&wid=${item.id }&&id=${user.id }">修改
                            </a>
                        </td>
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
