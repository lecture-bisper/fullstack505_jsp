<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-04-25
  Time: 오전 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="com.bitc.jsp_0425.CookieManager"%>
<%@ page import="com.bitc.jsp_0425.JSFunction" %>

<%
  // 클라이언트에서 userid, userpw, saveCheck 값을 가져옴
  String userId = request.getParameter("userId");
  String userPw = request.getParameter("userPw");
  String saveCheck = request.getParameter("saveCheck");

//  사용자 정보와 클라이언트에서 전송된 정보가 같으면
  if ("must".equals(userId) && "1234".equals(userPw)) {
//    클라이언트에서 전송된 정보 중 saveCheck 값이 "Y" 이면
    if (saveCheck != null && saveCheck.equals("Y")) {
//      쿠키 생성
      CookieManager.makeCookie(response, "loginId", userId, 86400);
    }
    else {
      CookieManager.deleteCookie(response, "loginId");
    }

    JSFunction.alertLocation("로그인에 성공했습니다.", "IdSaveMain.jsp", out);
  }
  else {
    JSFunction.alertBack("로그인에 실패했습니다.", out);
  }
%>






