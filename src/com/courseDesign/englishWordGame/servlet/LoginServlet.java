package com.courseDesign.englishWordGame.servlet;

import com.courseDesign.englishWordGame.dao.UserDao;
import com.courseDesign.englishWordGame.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoginServlet", urlPatterns = {"/loginServlet"})
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //post方式解决中文乱码问题：告诉servlet要用UTF-8的码表来解码
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        //接受浏览器表单提交的数据
        String name = request.getParameter("name");
        String pwd = request.getParameter("pwd");

        //检测获取是否成功
        //System.out.println(name);
        //System.out.println(pwd);

        //逻辑处理：连接数据库，进行比对，然后得到结果
        boolean result = false;

        //查询用户
        UserDao ud = new UserDao();
        User user = ud.selectOne(name);

        //查到了
        if (user != null) {
            //密码正确
            if (pwd.equals(user.getPwd())) {
                //succ

                //拦截器 存储在Session中
                HttpSession session = request.getSession();
                session.setAttribute("users", name);

                request.setAttribute("user", user);
                request.getRequestDispatcher("play-welcome.jsp").forward(request, response);
                //密码错误
            } else {
                //密码不对
                request.setAttribute("error", "密码不正确");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
            //没查到
        } else {
            //用户名不正确
            request.setAttribute("error", "用户名不正确");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
