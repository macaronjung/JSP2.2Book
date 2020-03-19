<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 자바빈을 사용하기 위해서는 <jsp:useBean> 액션태그를 사용
id : 생성할 객체의 이름을 정의
class : 객체를 생성할 클래스명을 정의
scope : JavaBean 객체가 공유되는 범위를 지정 -->
<!-- 이름이 member인 객체를 생성->request 기본 객체에 저장 -->
<jsp:useBean id="member" scope="request"
	class="Chap11.member.MemberInfo" />

<%-- <jsp:setProperty name="Chap11.member.MemberInfo" property="*" /> --%>
	<!-- 행16 종료되지 않은 [&lt;jsp:useBean] 태그 오류 ㅜㅜ -->
	<%
		member.setId("macaron");
		member.setName("마카롱");
	%>
<jsp:forward page="/11_03_useObject.jsp" />