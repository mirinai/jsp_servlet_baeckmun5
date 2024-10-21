<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get session</title>
</head>
<body>
	<%
	// 세션에서 "id" 속성의 값을 가져와 String 타입으로 변환하여 변수 id에 저장
	String id = (String) session.getAttribute("id"); // Object => String

	// 세션에서 "pwd" 속성의 값을 가져와 String 타입으로 변환하여 변수 pwd에 저장
	String pwd = (String) session.getAttribute("pwd");

	// 세션에서 "age" 속성의 값을 가져와 String 타입으로 변환하여 변수 age에 저장
	String age = (String) session.getAttribute("age");
	%>
	id :
	<%=id%><br>
	<!-- 변수 id의 값을 HTML로 출력 -->
	pwd :
	<%=pwd%><br>
	<!-- 변수 pwd의 값을 HTML로 출력 -->
	age :
	<%=age%><br>
	<!-- 변수 age의 값을 HTML로 출력 -->

</body>
</html>