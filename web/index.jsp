<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/11/8
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" errorPage="./error.jsp" %>
<html>
  <head>
    <title>Test</title>
  </head>
  <body>
    <!-- html中的注释可以在jsp中使用  这个注释能够通过网页查看源代码看到-->
    <%-- 这是我们jsp中的注解  这个注释网页源代码是看不见的 --%>
    <%-- 等于out.print()表达式 --%>
    <%= new Date().toLocaleString()%>
    <%-- jsp脚本 --%>
    <%
      String name = "小明";
      /*int a = 1/0;*/
    %>
    <%= name %>
    <%-- 一般设置全局申明 --%>
    <%!
      int age = 17;
    %>
    <%= age %>
    </br>
    <% if (age >= 18) { %>
      <%= name + ":" +age %>岁，你成年了。
    <% } else { %>
      <%= name + ":" +age %>岁，你未满18岁。
    <% } %>

  </body>
</html>
