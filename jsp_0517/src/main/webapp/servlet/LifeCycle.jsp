<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-05-17
  Time: 오전 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>서블릿 생명주기 메소드</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
          crossorigin="anonymous"></script>

  <script>
    function requestAction(frm, met) {
      // 매개변수에 따라서 전송 방식 선택
      if (met == 1) {
        frm.method = "GET";
      }
      else {
        frm.method = "POST";
      }
      // form의 submit 동작
      frm.submit();
    }
  </script>
</head>
<body>
<div class="container my-4">
  <h2>서블릿 생명주기(Life Cycle) 메소드</h2>
  <form action="/servlet/LifeCycle.do">
    <div class="my-3">
<%--      버튼에 클릭 이벤트로 자바스크립트 함수 requestAction() 를 설정함--%>
      <button type="button" class="btn btn-primary" onclick="requestAction(this.form, 1)">Get 방식 요청하기</button>
      <button type="button" class="btn btn-success" onclick="requestAction(this.form, 2)">Post 방식 요청하기</button>
    </div>
  </form>
</div>
</body>
</html>






