<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-04-21
  Time: 오후 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>에러 발생 테스트</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
          crossorigin="anonymous"></script>
</head>
<body>
<%
  // 오류 발생, request.getParameter("age") 가 실행되면 클라이언트에서 age라는 이름으로 데이터가 넘어와야 함
//  현재 age 에 값이 없으므로 null 이 넘어오게 되고, 이를 Integer.parseInt() 메소드를 사용하여 정수로 변경하려고 하기 때문에 오류가 발생함
  int myAge = Integer.parseInt(request.getParameter("age")) + 10;
  out.println("10년 후 당신의 나이는 " + myAge + "입니다.");
%>
</body>
</html>






