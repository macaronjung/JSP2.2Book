<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	request.setCharacterEncoding("utf-8");
    %>

<!-- 자바빈 관련 https://hyeonstorage.tistory.com/96 -->
<!-- MemberInfo 자바빈 클래스의 객체를 생성->memberInfo 이름으로 저장 -->   
<jsp:useBean id="memberInfo" class="Chap11.member.MemberInfo" />
<!-- 파라미터의 값을 memberInfo 자바빈 객체의 프로퍼티 값으로 저장 -->
<jsp:setProperty name="memberInfo" property="*" />
<jsp:setProperty property="password" name="memberInfo" value="<%= memberInfo.getId() %>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>

<table width="400" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>아이디</td>
	<td><jsp:getProperty property="id" name="memberInfo"/></td>
	<td>암호</td>
	<td><jsp:getProperty property="password" name="memberInfo"/></td>
</tr>
<tr>
	<td>이름</td>
	<td><jsp:getProperty property="name" name="memberInfo"/></td>
	<td>이메일</td>
	<td><jsp:getProperty property="email" name="memberInfo"/></td>
</tr>
<tr>
	<td>주소</td>
	<td colspan="3">
	<jsp:getProperty property="address" name="memberInfo"/></td>
</tr>
</table>

</body>
</html>