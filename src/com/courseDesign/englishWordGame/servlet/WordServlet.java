package com.courseDesign.englishWordGame.servlet;

import com.courseDesign.englishWordGame.dao.WordDao;
import com.courseDesign.englishWordGame.pojo.Word;

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
        request.setCharacterEncoding("utf-8");

        String type = request.getParameter("type");

        if ("insert".equals(type)) {
            request.setCharacterEncoding("utf-8");

            String word1 = request.getParameter("word");
            String chinese = request.getParameter("chinese");
            String difficulty = request.getParameter("difficulty");

            Word word = new Word();
            word.setWord(word1);
            word.setChinese(chinese);
            word.setDifficulty(difficulty);

            WordDao ud = new WordDao();
            boolean result = ud.insertOne(word);
            if (result) {
                //分页
                List<Word> list = ud.selectAll();
                int pageNos;
                if (request.getParameter("pageNos") == null || Integer.parseInt(request.getParameter("pageNos")) < 1)
                    pageNos = 1;
                else {
                    pageNos = Integer.parseInt(request.getParameter("pageNos"));
                }
                request.setAttribute("pageNos", pageNos);
                // 定义总页数并存到session中
                int countPage = ud.selectNum() / 15;
                // 在实际开发中我们的总页数可以根据sql语句得到查询到的总条数，然后用总条数除每页的条数得到总页数
                request.setAttribute("countPage", countPage);
                request.setAttribute("list", list);
                request.getRequestDispatcher("word-index.jsp").forward(request, response);

            } else {
                request.setAttribute("error", "新增失败");
                request.getRequestDispatcher("add-words.jsp").forward(request, response);
            }
        } else if ("delete".equals(type)) {
            request.setCharacterEncoding("utf-8");

            String uid = request.getParameter("uid");

            WordDao ud = new WordDao();
            boolean result = ud.deleteOne(uid);
            System.out.println(result);
            if (result) {
                //分页
                List<Word> list = ud.selectAll();
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

        }*/ else if ("selectAll".equals(type)) {
            request.setCharacterEncoding("utf-8");

            WordDao ud = new WordDao();

            List<Word> list = ud.selectAll();
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
                request.getRequestDispatcher("word-index.jsp").forward(request, response);
            }

        } else if ("like".equals(type)) {
            request.setCharacterEncoding("utf-8");

            //2.获取str
            String str = request.getParameter("str");

            WordDao ud = new WordDao();
            List<Word> list = ud.selectLike(str);

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
                // 定义总页数
                int countPage = 1;
                //总页数可以根据sql语句得到查询到的总条数，然后用总条数除每页的条数得到总页数
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
