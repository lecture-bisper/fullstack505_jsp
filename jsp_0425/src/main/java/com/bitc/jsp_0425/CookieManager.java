package com.bitc.jsp_0425;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieManager {
//  쿠키 생성
//  클라이언트로 데이터를 전송하기 위한 response 내장 객체와 쿠키 이름, 쿠키 값, 쿠키 유지 시간을 매개변수로 받음
  public static void makeCookie(HttpServletResponse response, String name, String value, int time) {
//    쿠키 생성
    Cookie cookie = new Cookie(name, value);
    cookie.setPath("/");
    cookie.setMaxAge(time); // 쿠키 유지 시간, 0을 입력 시 쿠키 제거
    response.addCookie(cookie); // 클라이언트로 전송하기 위해 response 내장 객체에 쿠키 추가
  }

//  쿠키 읽어 오기
//  클라이언트에서 전송된 데이터를 가지고 있는 request 내장 객체와 쿠키 이름을 매개변수로 받음
  public static String readCookie(HttpServletRequest request, String name) {
    String cookieValue = "";

//    모든 쿠키 데이터 가져오기
    Cookie[] cookies = request.getCookies();

    if (cookies != null) {
      for (Cookie cookie : cookies) {
        String cookieName = cookie.getName();

//        지정한 쿠키 이름과 같을 경우 변수에 쿠키값 저장
        if (cookieName.equals(name)) {
          cookieValue = cookie.getValue();
        }
      }
    }

    return cookieValue;
  }

//  쿠키 정보 삭제
//  클라이언트에게 데이터를 전달할 response 내장 객체와 쿠키 이름을 매개변수로 받음
  public static void deleteCookie(HttpServletResponse response, String name) {
//    미리 만들어 놓은 makeCookie 메소드를 이용하여 쿠키 정보를 삭제
//    쿠키 유지 시간을 0으로 설정 시 쿠키 정보 삭제
    makeCookie(response, name, "", 0);
  }
}
