<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-05-12
  Time: 오전 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Title</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
          crossorigin="anonymous"></script>
</head>
<body>
<div class="container my-4">
  <h3>파일 업로드</h3>
  <span style="color: red;">${errorMessage}</span>
  <form action="UploadProcess.jsp" method="post" enctype="multipart/form-data" name="fileForm">
    <label for="user-name">작성자 : </label>
    <input type="text" id="user-name" name="userName" value="머스트해브"><br>
    <label for="title">제목 : </label>
    <input type="text" id="title" name="title"><br>
    <label for="cate">카테고리(선택사항) : </label>
<%--    checkbox 사용 시 name 속성의 값이 동일하면 서버에 배열로 전달--%>
    <input type="checkbox" id="cate" name="cate" value="사진" checked>사진
    <input type="checkbox" name="cate" value="과제">과제
    <input type="checkbox" name="cate" value="워드">워드
    <input type="checkbox" name="cate" value="음원">음원<br>
    <label for="file">첨부파일</label>
    <input type="file" id="file" name="attachedFile"><br>
    <button type="submit" class="btn btn-primary">전송하기</button>
  </form>
</div>
</body>
</html>






