package com.courseDesign.englishWordGame.servlet;

import com.courseDesign.englishWordGame.dao.UserDao;
import com.courseDesign.englishWordGame.dao.WordDao;
import com.courseDesign.englishWordGame.pojo.User;
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

        //获取id
        String uid = request.getParameter("id");

        UserDao ud = new UserDao();
        //查找当前用户
        User u = ud.selectUserById(uid);

        //增加单词
        if ("insert".equals(type)) {
            //获取单词中英文，难度
            String word1 = request.getParameter("word");
            String chinese = request.getParameter("chinese");
            String difficulty = request.getParameter("difficulty");

            //生成Word
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
                request.setAttribute("user", u);
                request.getRequestDispatcher("word-index.jsp").forward(request, response);

                //添加失败
            } else {
                request.setAttribute("error", "新增失败");
                request.getRequestDispatcher("add-words.jsp").forward(request, response);
            }
            //增加单词页面跳转
        } else if ("add".equals(type)) {
            request.setAttribute("user", u);
            request.getRequestDispatcher("add-words.jsp").forward(request, response);
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
                request.setAttribute("user", u);
                request.getRequestDispatcher("word-index.jsp").forward(request, response);
            }
            //修改单词信息
        } else if ("update".equals(type)) {
            int wid = Integer.parseInt(request.getParameter("wid"));
            String chinese = request.getParameter("chinese");
            String word1 = request.getParameter("word");
            String difficulty = request.getParameter("difficulty");
            Word word = new Word();
            word.setId(wid);
            word.setChinese(chinese);
            word.setWord(word1);
            word.setDifficulty(difficulty);
            WordDao wd = new WordDao();
            boolean result = wd.updateOne(word);

            if (result) {
                List<Word> list = wd.selectAll();

                //分页
                Pagination p = new Pagination();
                p.pagination(request);

                int countPage = wd.selectNum() / 15 + 1;

                request.setAttribute("countPage", countPage);
                request.setAttribute("list", list);
                request.setAttribute("user", u);
                request.getRequestDispatcher("word-index.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "修改失败");
                request.setAttribute("user", u);
                request.getRequestDispatcher("modify-word.jsp").forward(request, response);
            }
            //根据单词id查询单词
        } else if ("selectById".equals(type)) {
            //获取单词id
            String wid = request.getParameter("wid");

            WordDao wd = new WordDao();

            Word w = wd.selectUserById(wid);

            if (w != null) {

                request.setAttribute("word", w);
                request.setAttribute("user", u);
                request.getRequestDispatcher("modify-word.jsp").forward(request, response);
            }
            //查看单词的数据库
        } else if ("selectAll".equals(type)) {

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
                request.setAttribute("user", u);
                request.getRequestDispatcher("word-index.jsp").forward(request, response);
            }
            //模糊查询
        } else if ("like".equals(type)) {
            //获取要查询的东西
            String str = request.getParameter("str");

            WordDao wd = new WordDao();

            //查询前15条
            List<Word> list = wd.selectLike(str);

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
                request.setAttribute("user", u);
                request.getRequestDispatcher("word-index.jsp").forward(request, response);
            }

        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
