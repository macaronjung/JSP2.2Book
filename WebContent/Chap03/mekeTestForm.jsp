<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form make</title>
</head>
<body>
	폼에 데이터를 입력한 후 '전송' 버튼을 클릭하세요.
	<!-- 입력한 데이터를 전달할 JSP 페이지 설정 -->
	<form action="viewParameter.jsp" method="post">
	이름 : <input type="text" name="name" size="10"><br>
	주소 : <input type="text" name="address" size="30"><br>
	좋아하는 동물 : 
		<input type="checkbox" name="pet" value="dog">강아지
		<input type="checkbox" name="pet" value="cat">고양이
		<input type="checkbox" name="pet" value="pig">돼지잉 <br>
		
		<input type="submit" value="전송">
	</form>
</body>
</html>