<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Cookie cookie = new Cookie("oneh", "1time");
	cookie.setMaxAge(60*60); //60초 * 60분 = 1시간
	response.addCookie(cookie);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쿠키유효시간설정</title>
</head>
<body>
	유효 시간 1시간인 쿠키 생성
</body>
</html>