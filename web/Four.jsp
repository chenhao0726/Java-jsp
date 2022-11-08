<%@ page import="com.chen.domain.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/11/8
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
    <body>
        <%-- 四大作用域 --%>
        <%
            /*往四大作用域放值*/
            pageContext.setAttribute("key", "pageContextInfo");
            request.setAttribute("key", "requestInfo");
            session.setAttribute("key", "sessionInfo");
            application.setAttribute("key", "applicationInfo");

            User user = new User("小明", "123456");
            session.setAttribute("user", user);

            session.setAttribute("dog.name", "wwww");
        %>

        ${sessionScope["dog.name"]}
        </br>
        ${user.username}
        ${user.password}
        </br>
        ${pageScope.key}
        ${requestScope.key}
        ${sessionScope.key}
        ${applicationScope.key}
        </br>
        <%= pageContext.getAttribute("key") %>
        <%= request.getAttribute("key") %>
        <%= session.getAttribute("key") %>
        <%= application.getAttribute("key") %>
    </body>
</html>
