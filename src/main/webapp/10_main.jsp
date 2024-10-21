<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Main</title>
</head>
<body>
    <%
        // 세션에서 로그인된 사용자 정보를 가져옴
        if(session.getAttribute("loginUser") == null){
            // 로그인 정보가 없으면 로그인 폼으로 리다이렉트
            response.sendRedirect("10_loginForm.jsp");
        }
        else{
            // 로그인 정보가 있으면 메인 페이지 내용 표시
    %>
            <!-- 로그인한 사용자에게 인사말 표시 -->
            <p><%= session.getAttribute("loginUser") %>님, 안녕하세요!</p>
            <p>홈페이지에 오신 것을 환영합니다.</p>
            <p>즐거운 시간 보내세요.</p>
            
            <!-- 로그아웃 폼 -->
            <form action="10_logout.jsp" method="post">
                <input type="submit" value="로그아웃">
            </form>
    <%
        }
    %>
</body>
</html>
