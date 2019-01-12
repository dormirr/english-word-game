package com.courseDesign.englishWordGame.util;

import javax.servlet.http.HttpServletRequest;

public class Pagination {
    public void pagination(HttpServletRequest request) {
        int pageNos;

        //当前页数是首页
        if (request.getParameter("pageNos") == null || Integer.parseInt(request.getParameter("pageNos")) < 1) {
            pageNos = 1;
            //当前页数不是首页
        } else {
            //获取当前是哪页
            pageNos = Integer.parseInt(request.getParameter("pageNos"));
        }

        //保存页数
        request.setAttribute("pageNos", pageNos);
    }
}
