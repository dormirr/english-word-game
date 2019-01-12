package com.courseDesign.englishWordGame.servlet;

import com.courseDesign.englishWordGame.dao.WordDao;
import com.courseDesign.englishWordGame.pojo.Word;
import com.courseDesign.englishWordGame.util.Pagination;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "WordServlet", urlPatterns = {"/wordServlet"})
public class WordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //处理编码
        request.setCharacterEncoding("utf-8");

        //获取type
        String type = request.getParameter("type");

        //增加单词
        if ("insert".equals(type)) {
            //获取单词中英文，难度
            String word1 = request.getParameter("word");
            String chinese = request.getParameter("chinese");
            String difficulty = request.getParameter("difficulty");

            //添加到数据库
            Word word = new Word();
            word.setWord(word1);
            word.setChinese(chinese);
            word.setDifficulty(difficulty);

            //添加到数据库
            WordDao wd = new WordDao();
            boolean result = wd.insertOne(word);

            if (result) {
                List<Word> list = wd.selectAll();

                //分页
                Pagination p = new Pagination();
                p.pagination(request);
                int countPage = wd.selectNum() / 15 + 1;

                request.setAttribute("countPage", countPage);
                request.setAttribute("list", list);
                request.getRequestDispatcher("word-index.jsp").forward(request, response);

                //添加失败
            } else {
                request.setAttribute("error", "新增失败");
                request.getRequestDispatcher("add-words.jsp").forward(request, response);
            }
            //删除单词
        } else if ("delete".equals(type)) {
            //获取单词id
            String wid = request.getParameter("id");

            WordDao wd = new WordDao();

            //删除单词
            boolean result = wd.deleteOne(wid);

            //查看是否删除成功
            //System.out.println(result);

            if (result) {
                List<Word> list = wd.selectAll();

                //分页
                Pagination p = new Pagination();
                p.pagination(request);
                int countPage = wd.selectNum() / 15 + 1;

                request.setAttribute("countPage", countPage);
                request.setAttribute("list", list);
                request.getRequestDispatcher("word-index.jsp").forward(request, response);
            }
        } /*else if ("update".equals(type)) {
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
        }  else if ("selectById".equals(type)) {
            request.setCharacterEncoding("utf-8");

            //2.获取uid
            String uid = request.getParameter("id");

            WordDao ud = new WordDao();

            Word u = ud.selectUserById(uid);

            if (u != null) {

                request.setAttribute("user", u);
                request.getRequestDispatcher("password-changing.jsp").forward(request, response);
            }
           //查看单词的数据库
        }*/ else if ("selectAll".equals(type)) {

            WordDao wd = new WordDao();

            List<Word> list = wd.selectAll();

            //数据库有东西
            if (list != null) {
                //分页
                Pagination p = new Pagination();
                p.pagination(request);

                int countPage = wd.selectNum() / 15 + 1;

                request.setAttribute("countPage", countPage);
                request.setAttribute("list", list);
                request.getRequestDispatcher("word-index.jsp").forward(request, response);
            }
            //模糊查询
        } else if ("like".equals(type)) {
            //获取要查询的东西
            String str = request.getParameter("str");

            WordDao ud = new WordDao();

            //查询前15条
            List<Word> list = ud.selectLike(str);

            //如果查询到了数据
            if (list != null) {
                //分页
                Pagination p = new Pagination();
                p.pagination(request);

                //只显示1页
                int countPage = 1;

                //传值
                request.setAttribute("countPage", countPage);
                request.setAttribute("list", list);
                request.getRequestDispatcher("word-index.jsp").forward(request, response);
            }

        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
