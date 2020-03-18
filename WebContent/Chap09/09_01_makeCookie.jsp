<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//Cookie 객체 생성->URLEncoder 클래스 사용 쿠키 값 인코딩
	Cookie cookie = new Cookie("name", URLEncoder.encode("최범균", "euc-kr"));
	response.addCookie(cookie);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= cookie.getName() %> Cookie-Value = "<%= cookie.getValue() %>"	
</body>
</html>