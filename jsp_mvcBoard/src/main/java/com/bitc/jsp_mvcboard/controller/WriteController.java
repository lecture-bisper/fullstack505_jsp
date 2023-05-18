package com.bitc.jsp_mvcboard.controller;

import com.bitc.jsp_mvcboard.model.MVCBoardDAO;
import com.bitc.jsp_mvcboard.model.MVCBoardDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/mvcBoard/Write.do")
public class WriteController extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    req.getRequestDispatcher("/view/write.jsp").forward(req, resp);
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    req.setCharacterEncoding("UTF-8");

//    1. 클라이언트에서 전송된 내용 가져오기
    String title = req.getParameter("title");
    String writer = req.getParameter("writer");
    String pass = req.getParameter("pass");
    String contents = req.getParameter("contents");

    MVCBoardDTO board = new MVCBoardDTO();

    board.setPostTitle(title);
    board.setPostWriter(writer);
    board.setPostPass(pass);
    board.setPostContent(contents);
//    파일은 나중에 구현

//    2. 데이터 베이스 연결
    MVCBoardDAO dao = new MVCBoardDAO();
//    3. 데이터 베이스에 전송된 내용 등록하기
    int result = dao.insertBoard(board);
    dao.dbClose();

//    4. Insert 결과에 따라 페이지 이동
    if (result == 1) {
      resp.sendRedirect("/mvcBoard/List.do");
    }
    else {
      resp.sendRedirect("/mvcBoard/Write.do");
    }
  }
}









