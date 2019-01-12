package com.courseDesign.englishWordGame.util;

import com.courseDesign.englishWordGame.pojo.User;
import com.courseDesign.englishWordGame.pojo.Word;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class PlayPassingValues {
    public void playPassingValues(HttpServletRequest request, HttpServletResponse response, int difficulty, List<Word> listtrue, List<Word> listall, User u, int sum) throws ServletException, IOException {
        request.setAttribute("difficulty", difficulty);
        request.setAttribute("listtrue", listtrue);
        request.setAttribute("listall", listall);
        request.setAttribute("user", u);
        request.setAttribute("sum", sum);
        request.getRequestDispatcher("play-index.jsp").forward(request, response);
    }
}
