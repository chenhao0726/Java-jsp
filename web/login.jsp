<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/11/8
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/Login" method="post">
        账号：<input type="text" name="username" placeholder="请输入账号"/></br>
        密码：<input type="password" name="password" placeholder="请输入密码"/></br>
        <span style="color: red">${msg}</span></br>
        <input type="submit" value="登录" />
    </form>
</body>
</html>
