<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session methods to get information</title>
</head>
<body>
	<h3>세션 정보를 얻어오는 메서드 써보기</h3>

	<%
	// 세션의 고유 ID를 가져와 변수 id_str에 저장
	String id_str = session.getId();

	// 세션에 마지막으로 접근한 시간을 밀리초 단위로 가져와 변수 last_time에 저장
	long last_time = session.getLastAccessedTime();

	// 세션이 생성된 시간을 밀리초 단위로 가져와 변수 created_time에 저장
	long created_time = session.getCreationTime();

	// 마지막 접근 시간과 생성 시간의 차이를 분 단위로 계산하여 사용 시간을 변수 usedTime에 저장
	long usedTime = (last_time - created_time) / 60000;

	// 세션의 최대 비활성화 시간을 초 단위로 가져와 변수 inactive에 저장
	int inactive = session.getMaxInactiveInterval();

	// 세션이 새로 생성된 세션인지 여부를 변수 b_new에 저장
	boolean b_new = session.isNew();
	%>

	[1] 세션 아이디는
	<%=id_str%>(이)다.
	<br>
	<hr>
	<!-- 세션 ID 출력 -->
	[2] 웹 사이트에 머문 시간은
	<%=usedTime%>(이)다.
	<br>
	<hr>
	<!-- 웹 사이트에 머문 시간 출력 -->
	[3] 세션의 유효 시간은
	<%=inactive%>(이)다.
	<br>
	<hr>
	<!-- 세션의 유효 시간 출력 -->
	[4] 세션이 새로 만들어졌냐?
	<br>
	<%
	// 세션이 새로 만들어졌는지 여부에 따라 출력
	if (b_new) {
		out.println("새로 만들어짐"); // 세션이 새로 만들어졌을 경우 출력
	} else {
		out.println("새로운 세션이 만들어지지 않음"); // 기존 세션일 경우 출력
	}
	%>

</body>
</html>