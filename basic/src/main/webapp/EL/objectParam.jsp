
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="school.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객체 보내고 출력</title>
</head>
<body>
	<!--  person객체를 생성하여 홍길동, 33 값을 request객체에 저장하시오
	String객체 strObj를 생성하여 값을 "나는 문자열입니다." request에 저장
	integer객체 intObj 99를 생성하여 request에 저장-->
	<%
		Person person = new Person("홍길동",33);
		request.setAttribute("person", person);
		request.setAttribute("strObj", "나는 문자열입니다");
		request.setAttribute("intObj", 99);
	
	%>
	<jsp:forward page="objectRestul.jsp">
	<jsp:param value = "10" name = "first"/>
	<jsp:param value = "20" name = "second"/>
	</jsp:forward>
	
</body>
</html>