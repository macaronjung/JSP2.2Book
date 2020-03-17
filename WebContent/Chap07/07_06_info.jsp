<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>info</title>
</head>
<body>
	
	<table width="100%" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td>제품번호</td> <td>XXXX</td>
	</tr>
	<tr>
		<td>가격</td> <td>10000원</td>
	</tr>
	</table>
	
	<!-- 
	org.apache.jasper.JasperException:
	/Chap07/info.jsp (행: [25], 열: [2]) "name"과 "value" 속성들을 포함한 "jsp:param" 표준 액션이 요구됩니다.
	 -->
	 <!-- 인클루드와 파람 중간에 주석이 있어서 오류 나왔었음 -->
	<jsp:include page="infoSub.jsp" flush="false">
		<jsp:param name="type" value="A"/>
	</jsp:include>
</body>
</html>