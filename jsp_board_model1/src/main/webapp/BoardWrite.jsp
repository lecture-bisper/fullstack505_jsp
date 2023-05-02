<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-05-02
  Time: 오전 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>model1 방식 게시판 만들기</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
          crossorigin="anonymous"></script>
</head>
<body>
<header class="mb-4">
  <nav class="navbar navbar-expand-sm navbar-dark bg-dark mb-3">
    <ul class="navbar-nav">
      <li class="nav-link"><a class="nav-link" href="#">메뉴1</a></li>
    </ul>
  </nav>
  <div class="container rounded my-4 py-5 bg-secondary bg-opacity-25">
    <h1 class="text-center">Model1 방식 게시판 글 등록 페이지</h1>
  </div>
</header>
<main class="container my-4 p-0">
  <div class="row">
    <div class="col-sm-6 mx-auto">
      <form name="writeFrm" method="post" action="WriteProcess.jsp" >
        <div class="my-3">
          <label for="post-title" class="form-label">제목 : </label>
          <input type="text" class="form-control" id="post-title" name="postTitle" placeholder="제목을 입력하세요">
        </div>
        <div class="my-3">
          <label for="post-content" class="form-label">내용 : </label>
          <textarea class="form-control" id="post-content" name="postContent" rows="5" placeholder="내용을 입력하세요"></textarea>
        </div>
        <div class="my-3 d-grid gap-3">
          <button type="submit" class="btn btn-primary">글 등록</button>
          <button type="reset" class="btn btn-secondary" id="btn-reset">취소</button>
        </div>
      </form>
    </div>
  </div>
</main>
<footer class="container-fluid my-5 p-5 border-top">
  <p class="lead text-muted text-center">made by fullstack505</p>
</footer>
</body>
</html>






