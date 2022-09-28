<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="member.Member" scope="request"/>
<jsp:setProperty name="member" property="*"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>회원가입 jsp</title>
</head>
<body>
	<p> 아이디 :<%=member.getId() %></p>
	<p> 이름 :<%=member.getName() %></p>
	<p> 비밀번호 :<%=member.getPs() %></p>
	<p> 비밀번호 확인 :<%=member.getPs_check() %></p>
	

</body>
</html>