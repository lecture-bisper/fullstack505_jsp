<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-05-10
  Time: 오후 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="com.bitc.jsp_0510.Person" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.LinkedList" %>
<%@ page import="java.util.List" %>

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
  <h4>List 컬렉션 사용하기</h4>
  <%
    List<Person> lists = new LinkedList<>();
    lists.add(new Person("맹사성", 34));
    lists.add(new Person("장영실", 44));
    lists.add(new Person("신숙주", 54));
  %>

<%--  jstl을 사용하여 리스트 객체를 page 영역에 저장--%>
  <c:set var="lists" value="<%=lists%>"></c:set>

  <ul>
    <c:forEach var="item" items="${lists}">
      <li>이름 : ${item.name}, 나이 : ${item.age}</li>
    </c:forEach>
  </ul>


  <h4>Map 컬렉션 사용하기</h4>
  <%
    Map<String, Person> maps = new HashMap<>();
    maps.put("1st", new Person("맹사성", 34));
    maps.put("2nd", new Person("장영실", 44));
    maps.put("3rd", new Person("신숙주", 54));
  %>

  <c:set var="maps" value="<%=maps%>"></c:set>

  <ul>
    <c:forEach var="item" items="${maps}">
      <li>Key => ${item.key}<br>Value => 이름 : ${item.value.name}, 나이 : ${item.value.age}</li>
    </c:forEach>
  </ul>

</div>
</body>
</html>






