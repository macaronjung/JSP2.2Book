<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 쿠키 처리를 위한 보조 유틸리티 클래스 생성 -->
    <%@ page import="util.CookieBox" %>

<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if(id.equals(password)) {
		//ID && PW 같으면 로그인에 성공한 것으로 판단
		response.addCookie(
			//이름이 LOGIN 이고 값이 SUCCESS 인 쿠키 생성(로그인 상태 여부 판단)
			CookieBox.createCookie("LOGIN", "SUCCESS", "/", -1)
				);
		response.addCookie(
			CookieBox.createCookie("ID", id, "/", -1)
				);
		//if 종료시킬 것
		
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인성공</title>
</head>
<body>

로그인 성공~!~!~!
</body>
</html>
<%} %>
<%-- <%
	//로그인 실패시
	} else {
	<script>
	alert("로그인에 실패했어~!");
	history.go(-1);
	</script>
%>
<%
}
%> --%>