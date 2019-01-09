<%--
  Created by IntelliJ IDEA.
  User: 贺璐璐
  Date: 2019/1/9
  Time: 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>修改密码</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="loginassets/css/main.css"/>
    <noscript>
        <link rel="stylesheet" href="loginassets/css/noscript.css"/>
    </noscript>
</head>

<body class="landing is-preload">

<!-- Page Wrapper -->
<div id="page-wrapper">


    <!-- Three -->
    <section id="three" class="wrapper style3 special">
        <div class="inner">
            <header class="major">
                <h2>修改密码</h2>
                <p>修改密码以找回您的原账号</p>
            </header>
            <div class="inner">
                <form action="userServlet?type=update" method="post">
                    <input type="hidden" name="id" value="${user.id }">
                    <input name="pwd" type="password" placeholder="请输入一个新的密码">
                    <br/>
                    <ul class="actions stacked">
                        <li>
                            <button type="submit" class="button fit primary">提交并登录</button>
                        </li>
                        <li>
                            <p style="color:red">${error }</p>
                        </li>
                    </ul>
                </form>
            </div>
            <ul class="features">
                <li class="icon fa-paper-plane-o">
                    <h3>数据保存</h3>
                    <p>每一次的游戏记录都会保存</p>
                </li>
                <li class="icon fa-laptop">
                    <h3>用户排名</h3>
                    <p>与其他用户进行排名比较</p>
                </li>
                <li class="icon fa-code">
                    <h3>单词随机显示</h3>
                    <p>单词会无序出现</p>
                </li>
                <li class="icon fa-headphones">
                    <h3>单词记录</h3>
                    <p>用户遇到的所有单词的选择结果都会记录</p>
                </li>
                <li class="icon fa-heart-o">
                    <h3>单词数据</h3>
                    <p>我们提供一个基础的单词数据库，用户可自行进行修改。</p>
                </li>
                <li class="icon fa-flag-o">
                    <h3>华丽的动效</h3>
                    <p>基于HTML5+CSS3，非常漂亮</p>
                </li>
            </ul>

        </div>
    </section>
</div>

<!-- Scripts -->
<script src="loginassets/js/jquery.min.js"></script>
<script src="loginassets/js/jquery.scrollex.min.js"></script>
<script src="loginassets/js/jquery.scrolly.min.js"></script>
<script src="loginassets/js/browser.min.js"></script>
<script src="loginassets/js/breakpoints.min.js"></script>
<script src="loginassets/js/util.js"></script>
<script src="loginassets/js/main.js"></script>

</body>

</html>
