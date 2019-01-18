package com.courseDesign.englishWordGame.servlet;

import com.courseDesign.englishWordGame.dao.NotesDao;
import com.courseDesign.englishWordGame.dao.UserDao;
import com.courseDesign.englishWordGame.pojo.Notes;
import com.courseDesign.englishWordGame.pojo.User;
import com.courseDesign.englishWordGame.util.Pagination;
import com.courseDesign.englishWordGame.util.ScorePassingValues;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", urlPatterns = {"/userServlet"})
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //处理编码
        request.setCharacterEncoding("utf-8");

        //获取type
        String type = request.getParameter("type");

        //注册
        if ("insert".equals(type)) {
            //获取账号密码
            String name = request.getParameter("name");
            String pwd = request.getParameter("pwd");

            //生成User类
            User user = new User();
            user.setName(name);
            user.setPwd(pwd);

            //往数据库添加
            UserDao ud = new UserDao();
            boolean result = ud.insertOne(user);

            //添加成功
            if (result) {
                List<User> list = ud.selectAll();
                request.setAttribute("list", list);
                request.getRequestDispatcher("login.jsp").forward(request, response);
                //添加失败
            } else {
                request.setAttribute("error", "注册失败");
                request.getRequestDispatcher("sign-up.jsp").forward(request, response);
            }
            //更新数据库中的密码
        } else if ("update".equals(type)) {
            //获取id
            int uid = Integer.parseInt(request.getParameter("id"));

            //输出获取的值
            //System.out.println(uid);

            //获取新密码
            String pwd = request.getParameter("pwd");

            //生成User类
            User user = new User();
            user.setId(uid);
            user.setPwd(pwd);

            //更新密码
            UserDao ud = new UserDao();
            boolean result = ud.updateOne(user);

            //更新成功
            if (result) {
                request.getRequestDispatcher("login.jsp").forward(request, response);
                //更新失败
            } else {
                request.setAttribute("error", "修改失败");
                request.getRequestDispatcher("password-changing.jsp").forward(request, response);
            }
            //修改密码
        } else if ("selectById".equals(type)) {
            //获取id
            String uid = request.getParameter("id");

            //根据id查询用户
            UserDao ud = new UserDao();
            User u = ud.selectUserById(uid);

            //如果有这个用户
            if (u != null) {
                request.setAttribute("user", u);
                request.getRequestDispatcher("password-changing.jsp").forward(request, response);
            }
            //展示排名
        } else if ("rank".equals(type)) {
            UserDao ud = new UserDao();
            //获取难度
            String difficulty = request.getParameter("Difficulty");

            //获取id
            String uid = request.getParameter("id");

            //查找当前用户
            User u = ud.selectUserById(uid);

            //获取用户数据
            List<User> list = ud.rankAll(difficulty);

            //如果数据库中有数据
            if (list != null) {
                //分页
                Pagination p = new Pagination();
                p.pagination(request);

                //获取总页数
                int countPage = ud.selectNum() / 15 + 1;

                //传值
                ScorePassingValues S = new ScorePassingValues();
                S.scorePassingValues(request, response, countPage, list, u, difficulty);
            }
            //展示个人游戏记录
        } else if ("my".equals(type)) {
            UserDao ud = new UserDao();
            NotesDao nd = new NotesDao();

            //获取id
            String uid = request.getParameter("id");

            //查找当前用户
            User u = ud.selectUserById(uid);

            //生成个人游戏记录
            List<Notes> list = nd.selectUserById(uid);
            List<Notes> listt = nd.selectUserByList(list);

            if (listt != null) {
                //分页
                Pagination p = new Pagination();
                p.pagination(request);

                //获取总页数
                int countPage = nd.selectNum(u.getId()) / 15 + 1;

                request.setAttribute("countPage", countPage);
                request.setAttribute("listt", listt);
                request.setAttribute("user", u);
                request.getRequestDispatcher("my-index.jsp").forward(request, response);
            }
        }
    }
}