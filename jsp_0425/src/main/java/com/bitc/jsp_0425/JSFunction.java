package com.bitc.jsp_0425;

import javax.servlet.jsp.JspWriter;

public class JSFunction {
  public static void alertLocation(String msg, String url, JspWriter out) {
//    location.href : 자바스크립트에서 지원하는 원하는 페이지로 이동 명령
    try {
      String script = "";
      script += "<script>";
      script += "alert('" + msg + "');";
      script += "location.href = '" + url + "';";
      script += "</script>";
      out.println(script);
    }
    catch (Exception e) {}
  }

  public static void alertBack(String msg, JspWriter out) {
//    history.back() : 자바스크립트에서 지원하는 이전 페이지로 이동 명령
    try {
      String script = "<script>";
      script += "alert('" + msg + "');";
      script += "history.back();";
      script += "</script>";
      out.println(script);
    }
    catch (Exception e) {}
  }
}
