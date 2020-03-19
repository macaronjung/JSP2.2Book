<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 입력 폼</title>
</head>
<body>

<!-- 출력메세지로 읽어오는 내용 확인할 것(오류 발생 시)-->
<!-- 루트(/JSP2.2Book)까지만 읽어와서 주소 못 찾음->앞에 폴더 주소까지 입력할 것 -->
<form action="<%= request.getContextPath() %>/Chap11/11_05_processJoining.jsp" method="post">

<table border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>아이디</td>
	<td colspan="3"><input type="text" name="id" size="10"></td>
</tr>
<tr>
	<td>이름</td>
	<td><input type="text" name="name" size="10"></td>
	<td>이메일</td>
	<td><input type="text" name="email" size="10"></td>
</tr>
<tr>
	<td>주소</td>
	<td colspan="3"><input type="text" name="address" size="10"></td>
</tr>
<tr>
	<td colspan="4" align="center">
	<input type="submit" value="회원가입">
	</td>
</tr>
</table>

</form>

</body>
</html>