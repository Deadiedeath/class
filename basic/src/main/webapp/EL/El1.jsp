<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	pageContext.setAttribute("scopeValue", "page");
    	request.setAttribute("scopeValue", "request");
    	session.setAttribute("scopeValue", "session");
    	application.setAttribute("scopeValue", "application");
    
    %>
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
	
	<jsp:forward page="ImplictRequest.jsp" />
	
	

</body>

</html>