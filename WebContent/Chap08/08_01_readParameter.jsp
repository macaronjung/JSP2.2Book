<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="08_02_viewErrorMessage.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파라미터 출력</title>
</head>
<body>
	name parameter value : <%= request.getParameter("name").toUpperCase() %>
</body>
</html>