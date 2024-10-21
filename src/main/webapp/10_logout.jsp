<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
</head>
<body>
    <%
        // 현재 세션 무효화 (로그아웃 처리)
        session.invalidate();
    %>
    <!-- 로그아웃 완료 메시지 및 로그인 폼으로 이동 -->
    <script type="text/javascript">
        alert("로그아웃 되었습니다.");
        location.href = "10_loginForm.jsp";
    </script>
</body>
</html>
