<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-04-21
  Time: 오후 12:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Title</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
          crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
<%--  <header class="my-4">--%>
<%--    <h1 class="text-center">Header 영역입니다.</h1>--%>
<%--  </header>--%>

  <%@ include file="header.jsp" %>

  <main class="my-4">
    <div class="row">
      <div class="col-sm-6 mx-auto">
        <h1>include를 사용한 페이지</h1>
        <p>여기는 main 영역입니다.</p>
      </div>
    </div>
  </main>

  <%@ include file="footer.jsp" %>

<%--  <footer class="my-4 border-top p-5 bg-secondary">--%>
<%--    <p class="text-white text-center">made by fullstack 505</p>--%>
<%--  </footer>--%>
</div>
</body>
</html>






