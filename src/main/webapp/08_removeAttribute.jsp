<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션에 저장된 특정 객체 삭제하기</title>
</head>
<body>
<%
    // 세션에 첫 번째 값을 저장 ("s_name1" 이름으로 "세션에 저장된 첫번째 값임" 값 설정)
    session.setAttribute("s_name1", "세션에 저장된 첫번째 값임");
    
    // 세션에 두 번째 값을 저장 ("s_name2" 이름으로 "세션에 저장된 두번째 값임" 값 설정)
    session.setAttribute("s_name2", "세션에 저장된 두번째 값임");
    
    // 세션에 세 번째 값을 저장 ("s_name3" 이름으로 "세션에 저장된 세번째 값임" 값 설정)
    session.setAttribute("s_name3", "세션에 저장된 세번째 값임");
    
    // 세션에 저장된 값을 출력하기 전 메시지 출력
    out.print("<h3> >> 세션을 지우기 전 <<</h3>");
    
    // 세션에 저장된 모든 속성의 이름을 Enumeration 타입으로 가져옴
    Enumeration names = session.getAttributeNames();
    
    // 모든 속성 이름을 반복하여 처리 (세션에 저장된 값을 출력)
    while (names.hasMoreElements()) {
        // 현재 속성의 이름을 가져옴
        String name = names.nextElement().toString();
        
        // 속성 이름을 통해 해당 속성 값을 가져옴
        String value = session.getAttribute(name).toString();
        
        // 속성의 이름과 값을 브라우저에 출력
        out.println(name + " : " + value + "<br>");
    }
    
    // 세션에서 "s_name2" 속성 삭제 (두 번째 값 제거)
    session.removeAttribute("s_name2");
    
    
    out.print("<h3> >> 세션을 지운 뒤 <<</h3>");
    
    
    // 세션에 저장된 모든 속성의 이름을 Enumeration 타입으로 다시 가져옴 (갱신 후)
    names = session.getAttributeNames();
    
    // 모든 속성 이름을 반복하여 처리 (갱신된 세션 값을 출력)
    while (names.hasMoreElements()) {
        // 현재 속성의 이름을 가져옴
        String name = names.nextElement().toString();
        
        // 속성 이름을 통해 해당 속성 값을 가져옴
        String value = session.getAttribute(name).toString();
        
        // 속성의 이름과 값을 브라우저에 출력
        out.println(name + " : " + value + "<br>");
    }
%>

</body>
</html>