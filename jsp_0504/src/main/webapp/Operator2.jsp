<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-05-04
  Time: 오후 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>표현 언어 - 연산자 2</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
          crossorigin="anonymous"></script>
</head>
<body>
<div class="container my-4">
  <%
    pageContext.setAttribute("num1", 9);
    pageContext.setAttribute("num2", "10");

    pageContext.setAttribute("nullStr", null);
    pageContext.setAttribute("emptyStr", "");
//    int 타입의 배열 생성, 크기가 0으로 생성
    pageContext.setAttribute("lengthZero", new Integer[0]);
//    ArrayList 생성, 데이터 입력 없음, size가 0임
    pageContext.setAttribute("sizeZero", new ArrayList());
  %>
  <h3>empty 연산자</h3>
  <p>empty nullStr : ${empty nullStr}</p>
  <p>empty emptyStr : ${empty emptyStr}</p>
  <p>empty lengthZero : ${empty lengthZero}</p>
  <p>empty sizeZero : ${empty sizeZero}</p>

  <h3>삼항 연산자</h3>
  <p>num1 gt num2 ? "참" : "거짓" => ${num1 gt num2 ? "num1이 크다" : "num2가 크다"}</p>

  <h3>null 연산</h3>
<%--  기본 자바 문법에서는 null과 연산 시 오류--%>
<%--  JSP의 표현언어에서는 null을 0으로 인식--%>
  <p>null + 10 : ${null + 10}</p>
  <p>nullStr + 10 : ${nullStr + 10}</p>
  <p>param.noVar > 10 : ${param.noVar > 10}</p>
</div>
</body>
</html>






