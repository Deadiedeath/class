<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>if</title>
</head>
<body>

<c:set var = "number" value = "100" />
<c:set var = "string" value = "jsp" />

<h4>JSTL if 태그로 짝수 홀수 판별</h4>
<c:if test = "${number mod 2 eq 0 }" var = "result">
	${number }는 짝수입니다.</c:if>
	result : ${result }
	
<h4>JSTL 문자열 비교와 else 구문 흉내내기</h4>
<c:if test = "${String eq 'java' }" var = "result1">
	문자열은 java 입니다.</c:if>
	<c:if test = "${not result1}" >
	문자열은 java가 아닙니다.</c:if>
	
	<!-- EL이 아닌 정수를 지정하면 false
	대소문자 구분없이 "tRue"인 경우 true
	EL양쪽에 빈 공백이 있는 경우 false -->
	

</body>
</html>