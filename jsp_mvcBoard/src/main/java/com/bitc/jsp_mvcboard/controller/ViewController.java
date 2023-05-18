package com.bitc.jsp_mvcboard.controller;

import com.bitc.jsp_mvcboard.model.MVCBoardDAO;
import com.bitc.jsp_mvcboard.model.MVCBoardDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/mvcBoard/View.do")
public class ViewController extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//    1. 전달받은 게시물 번호 가져오기
    int idx = Integer.parseInt(req.getParameter("idx"));

//    2. 데이터베이스에 연결하여 게시물 번호에 맞는 게시물 정보를 가져오기
    MVCBoardDAO dao = new MVCBoardDAO();
    MVCBoardDTO board = dao.selectBoardDetail(idx);
    dao.dbClose();

//    3. view 페이지에 데이터 전달(request 영역에 데이터 저장)
    req.setAttribute("board", board);

    req.getRequestDispatcher("/view/view.jsp").forward(req, resp);
  }
}
