<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>remove all sessions</title>
</head>
<body>
	<%
	// 세션에 첫 번째 값을 저장 ("s_name1" 이름으로 "세션에 저장된 첫번째 값임2" 값 설정)
    session.setAttribute("s2_name1", "세션에 저장된 첫번째 값임2");
    
    // 세션에 두 번째 값을 저장 ("s_name2" 이름으로 "세션에 저장된 두번째 값임2" 값 설정)
    session.setAttribute("s2_name2", "세션에 저장된 두번째 값임2");
    
    // 세션에 세 번째 값을 저장 ("s_name3" 이름으로 "세션에 저장된 세번째 값임2" 값 설정)
    session.setAttribute("s2_name3", "세션에 저장된 세번째 값임2");

	out.print("<h3> >> 모든 세션을 지우기 전 <</h3>");
	

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
    
    // 현재 세션을 무효화 (세션에 저장된 모든 데이터 삭제)
    session.invalidate();
    
    // 세션 무효화 후 메시지를 출력
    out.print("<hr><h3> >> 세션 값을 지운 뒤 <<</h3>");
    
    // 세션 ID가 여전히 유효한지 여부를 확인
    out.print("세션 아이디가 유효하냐?<br>");
    
    // 요청된 세션 ID가 유효한지 확인
    if (request.isRequestedSessionIdValid()) {
        // 세션 ID가 유효할 경우 출력
        out.print("세션 아이디가 유효함<hr>");
    } else {
        // 세션 ID가 유효하지 않을 경우 출력
        out.print("세션 아이디가 유효하지 않음<hr>");
    }
    
	%>
</body>
</html>