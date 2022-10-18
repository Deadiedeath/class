<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
	<li>${person.name }, ${person.age }</li>
	<li>${requestScope.strObj }</li>
	<li>${intObj }</li>
	
	<h2>매개변수로 전달된 값 읽기</h2>
	<li> ${param.first + param.second }</li>
	<li> ${param.first + param.second }</li>

</ul>
</body>
</html>