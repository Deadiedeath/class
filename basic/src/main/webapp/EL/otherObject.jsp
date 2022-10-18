<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 
    	EL 쿠키나 헤더값을 읽을 수 있도록 내장 객체를 제공한다.
    	-cookie : 쿠키를 읽을 때 사용한다
    	-header : request,getHeadder(헤더명)와 동일하게 헤더값을 읽을때 사용
    	-headerValues : request.getHeaders(헤더명)와 동일하게 값을 배열형태롤 읽을 때
    	-initParam : web.xml에 설정한 컨텍스트 초기화 매게변수를 읽을 때 사용
    	-pageContext : jsp의 pageContext내장 객체와 동일한 역할
     -->
     <%
     CookieManager.makeCookie(response, "ELCookie", "ELnice", 10);
     
     
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
	<li>쿠키값 읽기 : ${cookie.ELCookie.value }</li>
	<li>user agent : ${header['user-agent'] }</li>
	<li>cookie : ${header.cookie }</li>
	<li>host : ${header.host }</li>
	<li>컨텍스트 초기화 매개변수 읽기 : ${initParam.OracleDriver }</li>
	<li>컨텍스트 루트 경로 읽기 : ${pageContext.request.contextPath }</li>
	
</ul>
</body>
</html>