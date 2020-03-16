<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="UTF-8"%>
    
    <%
    	request.setCharacterEncoding("euc-kr");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 파라미터 출력</title>
</head>
<body>

<b>request.getParameter() 메소드 사용</b>
name 파라미터 = <%= request.getParameter("name") %> <br>
address 파라미터 = <%= request.getParameter("address") %> <br>

<p>
<b>request.getParameterValues() 메소드 사용</b>
<%
	//아까 같은 종류를 여러개로 선언했으니까 배열로 처리
	//pet 파라미터 값을 String 배열로 읽어옴
	//String 배열로 읽어오는 이유->pet 파라미터의 값이 한 개 이상 전달될 수 있어서
	String[] values = request.getParameterValues("pet");
	if(values != null) {
		for(int i=0; i<values.length; i++) {
%>
	<%= values[i] %>
<%
		}
	}
%>

<p>
<b>request.getParameterName() 메소드 사용</b>
<%
	//Enumeration 인터페이스는 객체들의 집합(Vector)에서 각각의 객체들을
	//한순간에 하나씩 처리할 수 있는 메소드를 제공하는 켈렉션
	//https://hyeonstorage.tistory.com/210
	Enumeration paramEnum = request.getParameterNames();
	while(paramEnum.hasMoreElements()) {
		String name = (String)paramEnum.nextElement();
%>
	<%= name %>
<% 
	} 
%>

<p>
<b>request.getParameterMap() 메소드 사용</b>
<%
	Map parameterMap = request.getParameterMap();
	String[] nameParam = (String[])parameterMap.get("name");
	
	if(nameParam != null) {
%>
name = <%= nameParam[0] %>
<%
	}
%>
</body>
</html>