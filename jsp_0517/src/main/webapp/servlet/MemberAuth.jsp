<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-05-17
  Time: 오후 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>MemberAuth.jsp</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
          crossorigin="anonymous"></script>
</head>
<body>
<div class="container my-4">
  <h2>MVC 패턴으로 회원인증하기</h2>

  <p><strong>${authMessage}</strong></p>
  <br>
  <a href="/servlet/MemberAuth.mvc?id=nakja&pass=1234" class="btn btn-link">회원인증 (관리자)</a>
  <a href="/servlet/MemberAuth.mvc?id=testuser1&pass=1234" class="btn btn-link">회원인증 (회원)</a>
  <a href="/servlet/MemberAuth.mvc?id=stranger&pass=1234" class="btn btn-link">회원인증 (비회원)</a>
</div>
</body>
</html>






