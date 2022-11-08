<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/11/8
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
    <body>
        <%-- 四大作用域 --%>
        <%
            /*往四大作用域放值*/
            pageContext.setAttribute("pageContext", "pageContextInfo");
            request.setAttribute("request", "requestInfo");
            session.setAttribute("session", "sessionInfo");
            application.setAttribute("application", "applicationInfo");
        %>
        <%-- 取值 --%>
        <%= pageContext.getAttribute("pageContext") %>
        <%= request.getAttribute("request") %>
        <%= session.getAttribute("session") %>
        <%= application.getAttribute("application") %>

        <%
            pageContext.setAttribute("pageContext","修改了");
        %>
        </br>
        修改后
        <%= pageContext.getAttribute("pageContext") %>

        <%
            pageContext.removeAttribute("pageContext");
        %>
        </br>
        删除后后
        <%= pageContext.getAttribute("pageContext") %>
    </body>
</html>
