<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>INFO</title>
</head>
<body>

body_sub에서 name 파라미터 값 : <%= request.getParameter("name") %>
<br/>
name 파라미터 값 목록 : 
<ul>
	<%
		//name 파라미터 값 목록 출력
		String[] names = request.getParameterValues("name");
		for(String name : names) {
	%>
	<li> <%= name %> </li>
	<%
		}
	%>
	</ul>
</ul>
</body>
</html>