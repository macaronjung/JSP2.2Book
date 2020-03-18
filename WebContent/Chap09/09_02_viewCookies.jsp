<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쿠키 목록</title>
</head>
<body>
Cookie List <br>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length>0) {
		for(int i=0; i<cookies.length; i++) {
%>
	<%= cookies[i].getName() %> =
	<!-- 인코딩 해서 값을 저장했으므로 디코딩으로 값을 읽어옴 -->
	<%= URLDecoder.decode(cookies[i].getValue(), "euc-kr") %> <br>
<%
		}/*for end*/
	}/*if end*/ else {
%>
쿠키가 없어요!!!
<%
	}/*else end*/
%>
</body>
</html>