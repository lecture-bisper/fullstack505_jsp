<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-05-04
  Time: 오후 3:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.*" %>
<%@ page import="com.bitc.jsp_0504.Person" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>JSTL - set</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
          crossorigin="anonymous"></script>
</head>
<body>
<div class="container my-4">
  <c:set var="directVar" value="100"></c:set>
  <c:set var="elVar" value="${directVar mod 5}"></c:set>
  <c:set var="expVar" value="<%=new Date()%>"></c:set>
  <c:set var="betweenVar">변수값 요렇게 설정</c:set>

  <h4>EL을 이용해 변수 출력</h4>
  <ul>
    <li>directVar : ${pageScope.directVar}</li>
    <li>elVar : ${elVar}</li>
    <li>expVar : ${expVar}</li>
    <li>betweenVar : ${betweenVar}</li>
  </ul>

  <h4>자바빈즈 생성 1 - 생성자 사용</h4>
  <c:set var="personVar1" value='<%= new Person("박문수", 50)%>' scope="request"></c:set>
  <ul>
    <li>이름 : ${requestScope.personVar1.name}</li>
    <Li>나이 : ${personVar1.age}</Li>
  </ul>

  <h4>자바빈즈 생성 2 - target</h4>
  <c:set var="personVar2" value="<%= new Person() %>" scope="request"></c:set>
  <c:set target="${personVar2}" property="name" value="정약용"></c:set>
  <c:set target="${personVar2}" property="age" value="60"></c:set>
  <ul>
    <li>이름 : ${personVar2.name}</li>
    <li>나이 : ${requestScope.personVar2.age}</li>
  </ul>
</div>
</body>
</html>






