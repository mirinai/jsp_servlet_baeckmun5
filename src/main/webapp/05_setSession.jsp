<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set session</title>
</head>
<body>
	<%
    // 세션에 "id"라는 이름으로 "pinkSung" 값을 설정
    session.setAttribute("id", "pinkSung");
    
    // 세션에 "pwd"라는 이름으로 "1234" 값을 설정
    session.setAttribute("pwd", "1234");
    
    // 세션에 "age"라는 이름으로 "29" 값을 설정
    session.setAttribute("age", "29");
%>
<h3>세션 설정함</h3>

</body>
</html>