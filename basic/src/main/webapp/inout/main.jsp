<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메인</h1>
	<%= session.getAttribute("id") %>
	<a href="loginout.jsp">로그아웃</a>
</body>
</html>