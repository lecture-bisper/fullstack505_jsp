<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-05-11
  Time: 오전 9:15
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
<%--  jstl을 사용하여 Date클래스의 객체를 생성 후 page영역의 변수 today에 저장--%>
<%--  현재 시간을 기준으로 날짜 및 시간 정보를 저장함--%>
  <c:set var="today" value="<%=new java.util.Date()%>" ></c:set>

  <h4>날짜 포맷</h4>
<%--  jstl을 사용하여 page영역에 저장된 날짜 정보를 불러와서 화면에 출력--%>
<%--  type속성을 date으로 설정하여 날짜 정보만 출력--%>
  <p>full : <fmt:formatDate value="${today}" type="date" dateStyle="full"></fmt:formatDate></p>
  <p>short : <fmt:formatDate value="${today}" type="date" dateStyle="short"></fmt:formatDate></p>
  <p>long : <fmt:formatDate value="${today}" type="date" dateStyle="long"></fmt:formatDate></p>
  <p>default : <fmt:formatDate value="${today}" type="date" dateStyle="default"></fmt:formatDate></p>

  <h4>시간 포맷</h4>
<%--  type속성을 time으로 설정하여 시간 정보만 출력--%>
  <p>full : <fmt:formatDate value="${today}" type="time" timeStyle="full"></fmt:formatDate> </p>
  <p>short : <fmt:formatDate value="${today}" type="time" timeStyle="short"></fmt:formatDate> </p>
  <p>long : <fmt:formatDate value="${today}" type="time" timeStyle="long"></fmt:formatDate> </p>
  <p>default : <fmt:formatDate value="${today}" type="time" timeStyle="default"></fmt:formatDate> </p>

  <h4>날짜/시간 표시</h4>
<%--  type속성을 both으로 설정하여 날짜, 시간 정보 모두 출력--%>
  <p><fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"></fmt:formatDate> </p>
<%--  type속성을 both으로 설정하여 날짜, 시간 정보 모두 출력, 출력 패턴을 사용자가 직접 지정--%>
<%--  y : 년도 표시, M : 월 표시, d : 일 표시, h : 시간 표시, m : 분 표시, s : 초 표시--%>
<%--  패턴은 https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/text/SimpleDateFormat.html#number 참고--%>
  <p><fmt:formatDate value="${today}" type="both" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate> </p>

  <h4>타임존 설정</h4>
  <fmt:timeZone value="GMT">
    <p><fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"></fmt:formatDate></p>
  </fmt:timeZone>
  <fmt:timeZone value="America/Chicago">
    <p><fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"></fmt:formatDate></p>
  </fmt:timeZone>
  <fmt:timeZone value="Asia/Seoul">
    <p><fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"></fmt:formatDate></p>
  </fmt:timeZone>
</div>
</body>
</html>






