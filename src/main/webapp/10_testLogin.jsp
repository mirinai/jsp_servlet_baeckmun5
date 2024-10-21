<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Test Login</title>
</head>
<body>
    <%
        // 고정된 사용자 정보 (실제 환경에서는 데이터베이스 등을 사용)
        String id = "root";       // 올바른 아이디
        String pwd = "1234";      // 올바른 비밀번호
        String name = "mirinai";  // 로그인한 사용자의 이름

        // 요청 파라미터로 받은 아이디와 비밀번호를 검증
        if(id.equals(request.getParameter("id")) 
                && pwd.equals(request.getParameter("pwd"))){
            // 인증 성공 시 세션에 사용자 이름 저장
            session.setAttribute("loginUser", name);
            // 메인 페이지로 리다이렉트
            response.sendRedirect("10_main.jsp");
        }
        else{
            // 인증 실패 시 로그인 폼으로 리다이렉트
            response.sendRedirect("10_loginForm.jsp");
        }
    %>
</body>
</html>
