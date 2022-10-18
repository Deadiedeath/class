<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>choose</title>
</head>
<body>
<c:set var= "num" value = "100"></c:set>

<c:choose>
	<c:when test="${num mod 2 eq 0 }">
	${num}은 짝수이다.</c:when>
	<c:otherwise>
	${num }은 홀수이다.
	</c:otherwise>

</c:choose>

<h4>국어 영어 수학 점수를 입력하면 평균을 내어 학점을 출력</h4>
<form>
<input type = "text" name = "korean" />
<input type = "text" name = "english" />
<input type = "text" name = "math" />
<input type = "submit" /> 

</form>

<c:if test= "${not(empty param.korean or empty param.english or empty param.math) }">
	<c:set var = "avg" value ="${(param.korean + param.english + param.math)/3 }" />
	평균점수 : ${avg }
	<c:choose>
		<c:when test = "${avg>=90 }">A학점 </c:when>
		<c:when test = "${avg>=80 }">B학점 </c:when>
		<c:when test = "${avg>=70 }">C학점 </c:when>
		<c:otherwise>F학점</c:otherwise>
	</c:choose>
</c:if>


</body>
</html>