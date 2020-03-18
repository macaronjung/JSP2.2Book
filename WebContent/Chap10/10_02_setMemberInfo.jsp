<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 위치가 여기네? -->
<%
	session.setAttribute("MEMBERID", "macarong");
	session.setAttribute("name", "마카롱");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세션에 정보 저장</title>
</head>
<body>
세션에 정보 저장 완료

<!-- session 기본 객체에 속성 저장 후 세션 종료되기 전까지 속성값 활용 가능 -->
<%
	String name = (String)session.getAttribute("name");
	//세션 유효시간 60분
	session.setMaxInactiveInterval(60*60);
%> <br>
회원이름 : <%= name %>
</body>
</html>