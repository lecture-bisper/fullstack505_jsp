<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-05-11
  Time: 오전 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
<div class="container">
  <h4>로케일 설정</h4>
  <c:set var="today" value="<%=new java.util.Date()%>" ></c:set>

<%--  setLocale : value 속성에 언어 정보와 지역 정보를 함께 입력하여 설정--%>
<%--  iso-639를 앞에 입력, 중간에 _ 사용, iso-3166 을 끝에 입력하여 사용--%>
<%--  https://ko.wikipedia.org/wiki/ISO_639--%>
<%--  https://ko.wikipedia.org/wiki/ISO_3166-1_alpha-2--%>
  <h5>한글로 설정</h5>
  <fmt:setLocale value="ko_kr"></fmt:setLocale>
  <fmt:formatNumber value="10000" type="currency" ></fmt:formatNumber><br>
  <fmt:formatDate value="${today}"></fmt:formatDate>
  <br><br>

  <h5>일본어로 설정</h5>
  <fmt:setLocale value="ja_jp"></fmt:setLocale>
  <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber><br>
  <fmt:formatDate value="${today}"></fmt:formatDate>
  <br><br>

  <h5>영어로 설정</h5>
  <fmt:setLocale value="en_us"></fmt:setLocale>
  <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber><br>
  <fmt:formatDate value="${today}"></fmt:formatDate>

</div>
</body>
</html>






