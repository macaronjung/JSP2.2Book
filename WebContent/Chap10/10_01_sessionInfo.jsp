<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 세션 사용 지정(기본 값이 true 이므로 생략가능) -->
<%@ page session="true" %>
    <%	
    	//자동완성 임포트 잘 시킬 것!!!(Date, SimpleDateFormat)
    	//long 타입 시간 값 저장위해 Date 객체 생성
    	//Date 클래스는 구버전으로 날짜 관련 정보는 Calendar 클래스를 사용하는 것을 추천
    	//Date() 생성자 : 현재의 날짜와 시간을 저장한 객체를 생성
    	//https://hyeonstorage.tistory.com/204
    	Date time = new Date();
    	//Date 객체가 저장한 시간 값을 지정한 양식으로 출력
    	SimpleDateFormat formatter =
    			new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세션정보</title>
</head>
<body>

세션ID : <%= session.getId() %> <br>
<%
	time.setTime(session.getCreationTime());
%>
세션생성시간 : <%= formatter.format(time) %> <br>
<%
	time.setTime(session.getLastAccessedTime());
%>
최근접근시간 : <%= formatter.format(time) %>
</body>
</html>