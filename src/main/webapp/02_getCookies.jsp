<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie &amp; Session (get cookie)</title>
</head>
<body>
<h3>클라리언트로부터 얻어 온 Cookie</h3><br>
<%
	Cookie[] cookies = request.getCookies();
	
	for(Cookie c : cookies){
		out.println(c.getName()+" : "+c.getValue()+"<br>");
	}
%>

</body>
</html>