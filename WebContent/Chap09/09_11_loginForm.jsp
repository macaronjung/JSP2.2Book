<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>loginForm</title>
</head>
<body>

<!-- [JSP]getContextPath()와 getRequestURI(), request.getRealPath("/")의 차이
https://finewoo.tistory.com/18
https://yi-chi.tistory.com/12
 -->
<form action="<%-- <%= request.getContextPath() %> --%>./09_12_login.jsp" method="post">
아이디 : <input type="text" name="id" size="10">
패스워드 : <input type="password" name="password" size="10">
<input type="submit" value="LOGIN">
</form>
</body>
</html>