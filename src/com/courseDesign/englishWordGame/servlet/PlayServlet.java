package com.courseDesign.englishWordGame.servlet;

import com.courseDesign.englishWordGame.dao.NotesDao;
import com.courseDesign.englishWordGame.dao.UserDao;
import com.courseDesign.englishWordGame.dao.WordDao;
import com.courseDesign.englishWordGame.pojo.Notes;
import com.courseDesign.englishWordGame.pojo.User;
import com.courseDesign.englishWordGame.pojo.Word;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@WebServlet(name = "PlayServlet", urlPatterns = {"/playServlet"})
public class PlayServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String type = request.getParameter("type");

        //初始化生成四个单词的数据
        if ("play".equals(type)) {
            request.setCharacterEncoding("utf-8");

            WordDao ud = new WordDao();
            UserDao udd = new UserDao();

            String uid = request.getParameter("id");
            User u = udd.selectUserById(uid);

            //记录错误次数
            int sum = 3;


            //生成数据
            List<Word> listtrue = ud.selectOne();
            List<Word> listflase = ud.selectThree();
            List<Word> listall = new ArrayList<Word>();
            listall.addAll(listtrue);
            listall.addAll(listflase);

            //添加记录
            NotesDao uddd = new NotesDao();
            Notes n = new Notes();
            n.setUid(u.getId());
            n.setWid(listtrue.get(0).getId());
            n.setFrequency(0);
            boolean result = uddd.insertOne(n);

            //初始化积分
            System.out.println(udd.updateDifficulty(u, 0));

            //打乱list
            Collections.shuffle(listall);

            //查看数据
            for (int i = 0; i < listall.size(); i++) {
                System.out.println(listall.get(i));
                System.out.println(i);
            }

            if (listtrue != null && listflase != null) {
                //succ
                request.setAttribute("difficulty",udd.selectDifficulty(uid));
                request.setAttribute("listtrue", listtrue);
                request.setAttribute("listall", listall);
                request.setAttribute("user", u);
                request.setAttribute("sum", sum);
                request.getRequestDispatcher("play-index.jsp").forward(request, response);
            }
            //判断对错
        } else if ("judge".equals(type)) {
            String uid = request.getParameter("id");
            int fid = Integer.parseInt(request.getParameter("fid"));
            int tid = Integer.parseInt(request.getParameter("tid"));
            int sum = Integer.parseInt(request.getParameter("sum"));
            //选对
            if (fid == tid) {
                WordDao ud = new WordDao();
                UserDao udd = new UserDao();
                NotesDao uddd = new NotesDao();

                User u = udd.selectUserById(uid);

                //生成数据
                List<Word> listtrue = ud.selectOne();
                List<Word> listflase = ud.selectThree();
                List<Word> listall = new ArrayList<Word>();
                listall.addAll(listtrue);
                listall.addAll(listflase);

                //积分加一
                udd.updateDifficulty(u, udd.selectDifficulty(uid) + 1);

                //打乱list
                Collections.shuffle(listall);

                if (listtrue != null && listflase != null) {
                    //succ
                    request.setAttribute("difficulty",udd.selectDifficulty(uid));
                    request.setAttribute("listtrue", listtrue);
                    request.setAttribute("listall", listall);
                    request.setAttribute("user", u);
                    request.setAttribute("sum", sum);
                    request.getRequestDispatcher("play-index.jsp").forward(request, response);
                }
                //选错
            } else {
                sum--;

                //添加记录
                WordDao ud = new WordDao();
                UserDao udd = new UserDao();
                NotesDao uddd = new NotesDao();
                Notes n = new Notes();

                User u = udd.selectUserById(uid);
                n = uddd.selectNotes(uid, request.getParameter("tid"));
                if (n != null) {
                    uddd.updateOne(n, n.getFrequency() + 1);
                } else {
                    //添加记录
                    Notes nn = new Notes();
                    nn.setUid(u.getId());
                    nn.setWid(tid);
                    nn.setFrequency(1);
                    uddd.insertOne(nn);
                }

                //游戏结束
                if (sum <= 0) {

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
                    //游戏继续
                } else {
                    List<Word> listtrue = ud.selectOne();
                    List<Word> listflase = ud.selectThree();
                    List<Word> listall = new ArrayList<Word>();
                    listall.addAll(listtrue);
                    listall.addAll(listflase);

                    //打乱list
                    Collections.shuffle(listall);

                    if (listtrue != null && listflase != null) {
                        //succ
                        request.setAttribute("difficulty",udd.selectDifficulty(uid));
                        request.setAttribute("listtrue", listtrue);
                        request.setAttribute("listall", listall);
                        request.setAttribute("user", u);
                        request.setAttribute("sum", sum);
                        request.getRequestDispatcher("play-index.jsp").forward(request, response);
                    }
                }
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
