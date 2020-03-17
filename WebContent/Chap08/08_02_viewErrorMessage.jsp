<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>에러 발생</title>
</head>
<body>

에러가 발생하였습니다.
<p>
Error Type : <%= exception.getClass().getName() %> <br>
Error Message : <b> <%= exception.getMessage() %> </b>
</body>
</html>