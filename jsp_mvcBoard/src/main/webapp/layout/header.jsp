<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-05-18
  Time: 오전 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--    스크립틀릿 사용--%>
<%--<%--%>
<%--  String pageName = request.getParameter("pageName");--%>
<%--  String result = "";--%>

<%--  if (pageName.equals("listPage")) {--%>
<%--    result = "게시물 목록 페이지";--%>
<%--  }--%>
<%--  else if (pageName.equals("writePage")) {--%>
<%--    result = "게시물 등록 페이지";--%>
<%--  }--%>
<%--  else if (pageName.equals("viewPage")) {--%>
<%--    result = "게시물 상세 페이지";--%>
<%--  }--%>
<%--  else if (pageName.equals("confirmedPage")) {--%>
<%--    result = "게시물 비밀번호 확인 페이지";--%>
<%--  }--%>
<%--  else if (pageName.equals("editPage")) {--%>
<%--    result = "게시물 수정 페이지";--%>
<%--  }--%>
<%--%>--%>

<header class="py-5 bg-secondary bg-opacity-10">
  <div class="container">
    <h1 class="display-2 text-center">MVC2 방식 게시판</h1>
<%--    <h2 class="text-center"><%=result%></h2>--%>

<%--    el 언어를 사용하여 제목 변경--%>
    <c:choose>
      <c:when test="${param.pageName == 'listPage'}">
        <h2 class="text-center">게시물 목록 페이지</h2>
      </c:when>
      <c:when test="${param.pageName == 'writePage'}">
        <h2 class="text-center">게시물 등록 페이지</h2>
      </c:when>
      <c:when test="${param.pageName == 'viewPage'}">
        <h2 class="text-center">게시물 상세 페이지</h2>
      </c:when>
      <c:when test="${param.pageName == 'confirmedPage'}">
        <h2 class="text-center">게시물 비밀번호 확인 페이지</h2>
      </c:when>
      <c:when test="${param.pageName == 'editPage'}">
        <h2 class="text-center">게시물 수정 페이지</h2>
      </c:when>
    </c:choose>
  </div>
</header>






