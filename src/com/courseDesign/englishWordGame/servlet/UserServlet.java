package com.courseDesign.englishWordGame.servlet;

import com.courseDesign.englishWordGame.dao.UserDao;
import com.courseDesign.englishWordGame.dao.WordDao;
import com.courseDesign.englishWordGame.pojo.User;

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
        request.setCharacterEncoding("utf-8");

        String type = request.getParameter("type");

        if ("insert".equals(type)) {
            request.setCharacterEncoding("utf-8");

            String name = request.getParameter("name");
            String pwd = request.getParameter("pwd");

            User user = new User();
            user.setName(name);
            user.setPwd(pwd);

            UserDao ud = new UserDao();
            boolean result = ud.insertOne(user);

            if (result) {
                List<User> list = ud.selectAll();
                request.setAttribute("list", list);
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "注册失败");
                request.getRequestDispatcher("sign-up.jsp").forward(request, response);
            }
        } /*else if ("delete".equals(type)) {
            request.setCharacterEncoding("utf-8");

            String uid = request.getParameter("uid");

            UserDao ud = new UserDao();
            boolean result = ud.deleteOne(uid);
            System.out.println(result);
            if (result) {
                List<User> list = ud.selectAll();
                request.setAttribute("list", list);
                request.getRequestDispatcher("table-list.jsp").forward(request, response);
            }
        } */ else if ("update".equals(type)) {
            request.setCharacterEncoding("utf-8");

            int uid = Integer.parseInt(request.getParameter("id"));
            System.out.println(uid);
            String pwd = request.getParameter("pwd");
            User user = new User();
            user.setId(uid);
            user.setPwd(pwd);

            UserDao ud = new UserDao();
            boolean result = ud.updateOne(user);

            if (result) {
                List<User> list = ud.selectAll();
                request.setAttribute("list", list);
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "修改失败");
                request.getRequestDispatcher("user-update.jsp").forward(request, response);
            }
        } else if ("selectById".equals(type)) {
            request.setCharacterEncoding("utf-8");

            //2.获取uid
            String uid = request.getParameter("id");

            UserDao ud = new UserDao();

            User u = ud.selectUserById(uid);

            if (u != null) {

                request.setAttribute("user", u);
                request.getRequestDispatcher("password-changing.jsp").forward(request, response);
            }

        } else if ("rank".equals(type)) {
            WordDao ud = new WordDao();
            UserDao udd = new UserDao();

            String uid = request.getParameter("id");
            User u = udd.selectUserById(uid);

            List<User> list = udd.rankAll();
            if (list != null) {
                //succ

                //分页
                int pageNos;
                if (request.getParameter("pageNos") == null || Integer.parseInt(request.getParameter("pageNos")) < 1) {
                    pageNos = 1;
                } else {
                    pageNos = Integer.parseInt(request.getParameter("pageNos"));
                }
                request.setAttribute("pageNos", pageNos);
                // 定义总页数并存到session中
                int countPage = ud.selectNum() / 15;
                // 在实际开发中我们的总页数可以根据sql语句得到查询到的总条数，然后用总条数除每页的条数得到总页数
                request.setAttribute("countPage", countPage);
                request.setAttribute("list", list);
                request.setAttribute("user", u);
                request.getRequestDispatcher("score-index.jsp").forward(request, response);
            }
        }/*else if ("like".equals(type)) {
            request.setCharacterEncoding("utf-8");

            //2.获取str
            String str = request.getParameter("str");
            String strr = request.getParameter("strr");

            UserDao ud = new UserDao();
            List<User> list = ud.selectLike(str,strr);

            if (list!=null) {
                //succr
                request.setAttribute("list", list);
                request.getRequestDispatcher("table-list.jsp").forward(request, response);
            } else {
                //密码不对
                request.setAttribute("error", "没有找到");
                request.getRequestDispatcher("table-list.jsp").forward(request, response);
            }

        }*/
    }
}