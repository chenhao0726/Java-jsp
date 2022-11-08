package com.chen.servlet;

import com.chen.domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取页面的值
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        User user = new User(username, password);
        // 判断登录
        if ("chen".equals(username) && "123455".equals(password)) {
            // 把user放入session
            req.getSession().setAttribute("user",user);
            // 跳转页面 重定向
            resp.sendRedirect("/success.jsp");
        } else {
            req.setAttribute("msg","账号密码错误！");
            // 跳转页面 请求转发
            req.getRequestDispatcher("/login.jsp").forward(req,resp);
        }
    }
}
