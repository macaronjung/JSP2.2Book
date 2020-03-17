<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>from.jsp의 제목</title>
</head>
<body>

이 페이지는 from.jsp가 생성한 것입니다.
<!-- forward 는 웹 컨테이너 내에서 요청의 흐름을 이동시킴
웹 브라우저는 요청 처리가 다른 JSP로 이동됐다는 사실을 모름 -->
<jsp:forward page="to.jsp"></jsp:forward>
</body>
</html>