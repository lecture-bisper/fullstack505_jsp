<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-04-24
  Time: 오후 3:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>

<%
  ArrayList<String> lists = new ArrayList<>();
  lists.add("리스트");
  lists.add("컬렉션");
  session.setAttribute("lists", lists);
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>내장 객체 - session</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
          crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
  <h2>페이지 이동 후 session 영역의 속성 읽기</h2>
  <a href="SessionLocation.jsp">SessionLocation.jsp 바로가기</a>
</div>
</body>
</html>






