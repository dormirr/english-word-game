package com.courseDesign.englishWordGame.servlet;

import com.courseDesign.englishWordGame.dao.UserDao;
import com.courseDesign.englishWordGame.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = {"/loginServlet"})
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //post方式解决中文乱码问题：告诉servlet要用UTF-8的码表来解码
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        //接受浏览器表单提交的数据
        String name = request.getParameter("name");
        String pwd = request.getParameter("pwd");
        String rememberUser = request.getParameter("rememberUser");

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
                //Cookie记住用户
                if ("on".equals(rememberUser)) {
                    //构造Cookie对象
                    //添加到Cookie中
                    Cookie nameCookie = new Cookie("name", name);
                    Cookie pwdCookie = new Cookie("pwd", pwd);

                    //设置过期时间（5分钟）
                    nameCookie.setMaxAge(60 * 5);
                    pwdCookie.setMaxAge(60 * 5);

                    //存储
                    response.addCookie(nameCookie);
                    response.addCookie(pwdCookie);
                } else {
                    //清除Cookie
                    Cookie[] cookies = request.getCookies();
                    if (cookies != null && cookies.length > 0) {
                        //遍历Cookie
                        for (int i = 0; i < cookies.length; i++) {
                            Cookie cookie = cookies[i];
                            if ("name".equals(cookie.getName())) {
                                //删除
                                cookie.setMaxAge(0);
                                //存储
                                response.addCookie(cookie);
                            } else if ("pwd".equals(cookie.getName())) {
                                //删除
                                cookie.setMaxAge(0);
                                //存储
                                response.addCookie(cookie);
                            }
                        }
                    }
                }

                //拦截器 存储在Session中
                HttpSession session = request.getSession();
                session.setAttribute("users", name);
                request.setAttribute("user", user);
                request.getRequestDispatcher("play-welcome.jsp").forward(request, response);
            }
            //密码错误
            else {
                //密码不对
                request.setAttribute("error", "密码不正确");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        }
        //没查到
        else {
            //用户名不正确
            request.setAttribute("error", "用户名不正确");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doPost(request, response);
    }
}
