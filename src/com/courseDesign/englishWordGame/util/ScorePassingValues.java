package com.courseDesign.englishWordGame.util;

import com.courseDesign.englishWordGame.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ScorePassingValues {
    public void scorePassingValues(HttpServletRequest request, HttpServletResponse response, int countPage, List<User> list, User u) throws ServletException, IOException {
        request.setAttribute("countPage", countPage);
        request.setAttribute("list", list);
        request.setAttribute("user", u);
        request.getRequestDispatcher("score-index.jsp").forward(request, response);
    }
}
