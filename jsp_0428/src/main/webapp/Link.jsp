<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-04-28
  Time: 오전 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<table class="table table-hover table-striped">
  <tr>
    <td>
      <% if (session.getAttribute("UserId") == null) { %>
      <a href="./LoginForm.jsp">로그인</a>
      <% } else { %>
      <a href="./Logout.jsp">로그아웃</a>
      <% } %>
      &nbsp;&nbsp;&nbsp;
      <a href="./List.jsp">게시판(페이징x)</a>
      &nbsp;&nbsp;&nbsp;
      <a href="./List.jsp">게시판(페이징o)</a>
    </td>
  </tr>
</table>






