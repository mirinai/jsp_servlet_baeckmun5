<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get all sessions</title>
</head>
<body>
	<h3>세션에 설정된 모든 값 받아오기</h3>
<%
    // 세션에 저장된 모든 속성의 이름을 Enumeration 타입으로 가져옴
    Enumeration names = session.getAttributeNames();
    
    // 모든 속성 이름을 반복하여 처리
    while(names.hasMoreElements()) {
        // 현재 속성의 이름을 가져와 문자열로 변환
        String name = names.nextElement().toString();
        
        // 속성 이름을 통해 해당 속성 값을 가져옴
        String value = session.getAttribute(name).toString();
        
        // 속성의 이름과 값을 브라우저에 출력
        out.println(name + " : " + value + "<br>");
    }
%>

</body>
</html>