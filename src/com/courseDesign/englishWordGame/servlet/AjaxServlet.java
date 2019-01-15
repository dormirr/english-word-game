package com.courseDesign.englishWordGame.servlet;

import com.courseDesign.englishWordGame.dao.UserDao;
import com.courseDesign.englishWordGame.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AjaxServlet", urlPatterns = {"/ajaxServlet"})
public class AjaxServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //post方式解决中文乱码问题：告诉servlet要用UTF-8的码表来解码
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        //输出流
        PrintWriter pw = response.getWriter();

        //获取输入
        String name = request.getParameter("name");

        //判断昵称是否已被使用
        UserDao ud = new UserDao();
        User user = ud.selectOne(name);
        System.out.println("判断完成");

        if (user != null) {
            pw.print(true);
        } else {

            pw.print(false);
        }
    }
}
