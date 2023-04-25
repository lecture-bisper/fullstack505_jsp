<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-04-21
  Time: 오후 3:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>내장 객체 - request</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
          crossorigin="anonymous"></script>
</head>
<body>
<div class="container my-4">
  <h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
  <a href="http://10.100.204.54:8080/RequestWebInfo.jsp?eng=Hello&han=안녕">GET 방식 전송</a>
  <br>
  <form method="POST" action="http://10.100.204.54:8080/RequestWebInfo.jsp">
    영어 : <input type="text" name="eng" value="Bye"><br>
    한글 : <input type="text" name="han" value="잘가"><br>
    <input type="submit" value="POST 방식 전송">
  </form>

  <h2>2. 클라이언트의 요청 매개변수 읽기</h2>
  <form action="RequestParameter.jsp" method="POST">
    아이디 : <input type="text" name="id" value=""><br>
    성별 :
    <input type="radio" name="gender" value="min">남자
    <input type="radio" name="gender" value="woman" checked="checked">여자
    <br>
    관심사항 :
    <input type="checkbox" name="favo" value="eco">경제
    <input type="checkbox" name="favo" value="pol" checked="checked">정치
    <input type="checkbox" name="favo" value="ent">연애
    <br>
    자기소개 :
    <textarea name="intro" cols="30" rows="4"></textarea>
    <br>
    <input type="submit" value="전송하기">
  </form>

  <h2>3. HTTP 요청 헤더 정보 읽기</h2>
  <a href="RequestHeader.jsp">요청 헤더 정보 읽기</a>
</div>
</body>
</html>






