<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.Date" %>
    <%@ page import = "school.Person" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c코어 태그 </title>
</head>
<body>
<!-- taglib c를 이용해서 변수 elvar에 directvar에 100이란 값을 5로 나눈 나머지 값으로 저장 -->
<c:set var = "directvar" value = "100"></c:set>
<c:set var = "elvar" value ="${directvar mod 5 }" />
<c:set var ="expVar" value = "<%=new Date() %>" />
<c:set var = "betweenVar">태그 사이에 변수값을 설정할 수 잇음</c:set>

<ul>
<li>${pageScope.directvar }</li>
<li>${pageScope.elvar }</li>
<li>${pageScope.expVar }</li>
<li>${pageScope.betweenVar }</li>

</ul>

<h2>자바빈즈를 생성 - 생성자 사용</h2>
<c:set var = "person1" value ='<%= new Person("홍길동", 50) %>' scope ="request"></c:set>
<ul>
	<li>${requestScope.person1.name }</li>
	<li>${requestScope.person1.age }</li>
</ul>

<h2>자바빈즈를 생성 - target, property</h2>
<c:set var = "person2" value ='<%= new Person() %>' scope ="request"></c:set>
<c:set target ="${person2 }" property="name" value ="신사임당" />
<c:set target ="${person2 }" property="age" value ="50" />
<ul>
	<li>${requestScope.person2.name }</li>
	<li>${requestScope.person2.age }</li>
</ul>
</body>
</html>