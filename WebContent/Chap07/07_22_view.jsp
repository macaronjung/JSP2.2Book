<%@ page contentType="text/html; charset=UTF-8"%>

    <%
    	//선택한 옵션 값을 code 변수에 저장
    	String code = request.getParameter("code");
    	String viewPageURI = null;
    	
    	//code 변수에 따라 이동할 페이지 선택
    	if (code.equals("A")) {
    		viewPageURI = "a.jsp";
    	} else if (code.equals("B")) {
    		viewPageURI = "b.jsp";
    	} else if (code.equals("C")) {
    		viewPageURI = "c.jsp";
    	}
    %>
    
    <jsp:forward page="<%= viewPageURI %>" />