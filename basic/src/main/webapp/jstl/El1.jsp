<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
    <!--  <%
    	pageContext.setAttribute("scopeValue", "page");
    	request.setAttribute("scopeValue", "request");
    	session.setAttribute("scopeValue", "session");
    	application.setAttribute("scopeValue", "application");
    
    %>-->
    <c:set var = "scopeValue" value = "page" scope ="page" />
    <c:set var = "scopeValue" value = "request" scope ="request" />
    <c:set var = "scopeValue" value = "session" scope ="session" />
    <c:set var = "scopeValue" value = "application" scope ="application" />
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>각 영역에 저장된 속성값 읽기</title>
</head>
<body>
	<ul>
		<li>${pageScope.scopeValue }</li>
		<li>${requestScope.scopeValue }</li>
		<li>${sessionScope.scopeValue }</li>
		<li>${applicationScope.scopeValue }</li>
	
	</ul>
		<ul>
		<li>${ scopeValue }</li>
	</ul>
	
	
	
	

</body>

</html>