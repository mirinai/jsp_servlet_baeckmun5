<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie &amp; Session (removeCookies)</title>
</head>
<body>
	<%	
		// setCookies.jsp에서 만든 id의 쿠키를 지움
		Cookie cookie = new Cookie("id","");
	
		cookie.setMaxAge(0); // 쿠키의 유효기간을 마감함
		response.addCookie(cookie);
	%>
	<h3>id 쿠키가 삭제됨</h3>
	<a href="02_getCookies.jsp">
		쿠키가 지워진 것을 보려면 눌러라
	</a>

</body>
</html>