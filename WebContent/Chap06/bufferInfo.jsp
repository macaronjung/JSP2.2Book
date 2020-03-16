<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page buffer="16kb" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>버퍼정보</title>
</head>
<body>

버퍼 크기 : <%= out.getBufferSize() %> <br>
남은 크기 : <%= out.getRemaining() %> <br>
자동 플러시 : <%= out.isAutoFlush() %> <br>
</body>
</html>