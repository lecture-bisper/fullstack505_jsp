<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-05-03
  Time: 오전 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ include file="IsLoggedIn.jsp"%>

<%
  String uri = request.getRequestURI();
  String title = "";

  switch (uri) {
    case "/BoardWrite.jsp":
      title = "Model1 방식 게시판 글 등록 페이지";
      break;

    case "/BoardRead.jsp":
      title = "Model1 방식 게시판 글 확인 페이지";
      break;

    case "/BoardUpdate.jsp":
      title = "Model1 방식 게시판 글 수정 페이지";
      break;

    case "/Login.jsp":
      title = "Model1 방식 게시판 회원 로그인 페이지";
      break;

    default:
      title = "Model1 방식 게시판 목록 페이지";
      break;
  }
%>

<header class="mb-4">
  <nav class="navbar navbar-expand-sm navbar-dark bg-dark mb-3">
    <ul class="navbar-nav me-auto">
      <li class="nav-link"><a class="nav-link" href="#">Home</a></li>
    </ul>
    <form class="d-flex me-2" action="LogoutProcess.jsp" method="post">
      <%
        if (session.getAttribute("userId") != null) {
      %>
          <span class="navbar-text me-2"><%=session.getAttribute("userName").toString()%> 님 반갑습니다.</span>
          <button type="submit" class="btn btn-outline-secondary">Logout</button>
      <%
        }
        else {
      %>
          <a href="Login.jsp" class="btn btn-outline-success">Login</a>
      <%
        }
      %>
    </form>
  </nav>
  <div class="container rounded my-4 py-5 bg-secondary bg-opacity-25">
    <h1 class="text-center"><%=title%></h1>
  </div>
</header>
