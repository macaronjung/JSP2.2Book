<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 목록</title>
</head>
<body>

MEMBER 테이블의 내용
<table width="100%" border="1">
<tr>
	<td>이름</td><td>아이디</td><td>이메일</td>
</tr>
<%
	//1. JDBC 드라이버 로딩(프로그램 실행시 한번만 수행)
	//https://allg.tistory.com/20
	Class.forName("com.mysql.cj.jdbc.Driver");
	//버전 업에 따른 JDBC-Driver 클래스 지정 변경(중간에 cj 추가)

	//DB와 연결하는 객체
	Connection conn = null;
	//Statement 클래스
	//https://sas-study.tistory.com/125
	//Statement -> 기본 객체, 텍스트 SQL 호출
	//실제 데이터베이스에 쿼리를 보내기 위해 필요한 객체
	//삽입, 수정, 삭제, 검색을 처리하는 DML문을 사용할 때는 꼭 이 객체를 사용
	//https://nyhooni.tistory.com/71
	Statement stmt = null;
	//SELECT문을 사용하여 얻어온 레코드 값들을 테이블의 형태로 갖게 되는 객체
	ResultSet rs = null;
	
	try {
		String jdbcDriver = "jdbc:mysql://localhost:3306/chap12?serverTimezone=UTC" +
							"useUnicode=true&characterEncoding=utf8";
		String dbUser = "jspexam";
		String dbPass = "jspex";
		
		String query = "select * from MEMBER order by MEMBERID";
		
		//2.데이터베이스 커넥션 생성
		//jdbc 사용 데이터베이스 연동
		//https://hyeonstorage.tistory.com/110
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		//3.Statement 생성
		stmt = conn.createStatement();
		
		//4.쿼리 실행
		rs = stmt.executeQuery(query);
		
		//5.쿼리 실행 결과 출력
		while(rs.next()) {

		//try,while to terminate
%>
<tr>
	<td><%= rs.getString("NAME") %></td>
	<td><%= rs.getString("MEMBERID") %></td>
	<td><%= rs.getString("EMAIL") %></td>
</tr>
<%
			} /*while end*/
	}/*try end*/ catch(SQLException ex) {
		out.println(ex.getMessage());
		ex.printStackTrace();
	}/*catch end*/ finally {
		//6.사용한 Statement 종료
		if(rs != null) try { rs.close(); } catch(SQLException ex) {}
		if(stmt != null) try { stmt.close(); } catch(SQLException ex) {}
		
		//7.커넥션 종료
		if(conn != null) try { conn.close(); } catch(SQLException ex) {}
	}/*finally end*/
%>
</table>

</body>
</html>