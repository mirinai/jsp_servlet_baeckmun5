<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie &amp; Session (set cookie)</title>
</head>
<body>
	<%
	// 1. Cookie 오브젝트 만들기
	Cookie c = new Cookie("id", "pinkSung");
	// 2. 유효기간 설정
	c.setMaxAge(360 * 24 * 60 * 60);// unit per sec => 365days
	// 3. 클라이언트에 쿠키 보내기
	response.addCookie(c); // 유효기간이 1년인 쿠키를 보냄
	// 4. 쿠키를 만들어 클라이언트에 보내기(데이터만 넣기)
	response.addCookie(new Cookie("pwd", "1234"));
	response.addCookie(new Cookie("age", "23"));
	%>

	<h3>쿠키 설정함</h3>
	<!-- 
	JSESSIONID	8410D85B575550E0A66A8D16E69CEA30	localhost	/web-study-05	세션	42	✓					Medium	
	age	23	localhost	/web-study-05	세션	5						Medium	
	id	pinkSung	localhost	/web-study-05	2025-10-16T04:03:32.993Z	10						Medium	
	pwd	1234	localhost	/web-study-05	세션	7						Medium	
	
	 -->
</body>
</html>