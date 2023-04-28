<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-04-28
  Time: 오전 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--데이터 베이스를 사용하기 때문에 DTO 클래스와 DAO 클래스를 모두 import --%>
<%@ page import="com.bitc.jsp_0428.MemberDTO" %>
<%@ page import="com.bitc.jsp_0428.MemberDAO" %>

<%
  // 클라이언트에서 전달된 데이터 가져오기
  String userId = request.getParameter("user_id");
  String userPw = request.getParameter("user_pw");

//  DB객체 생성
  MemberDAO dao = new MemberDAO();
  dao.dbOpen(); // DB 연결

//  데이터베이스와 데이터를 주고받을 DTO 클래스 타입의 객체 생성
//  DAO 를 통해서 데이터 가져오기
  MemberDTO dto = dao.getMember(userId, userPw);

  dao.dbClose(); // DB 연결 종료

// 가져온 DTO 객체에 데이터가 있는지 확인
  if (dto.getId() != null) {
//    데이터가 있을 경우 세션에 데이터 추가
    session.setAttribute("UserId", dto.getId());
    session.setAttribute("UserName", dto.getName());
    response.sendRedirect("./LoginForm.jsp");
  }
  else {
//    데이터가 없을 경우 내장객체 request에 오류 메시지 추가
    request.setAttribute("LoginErrMsg", "로그인 오류입니다.");
    request.getRequestDispatcher("./LoginForm.jsp").forward(request, response);
  }
%>
