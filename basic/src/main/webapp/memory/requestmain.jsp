<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "common.person" %>
    <%
    	//request 객체에 id=sym , pwd = 1234 저장하세요
    	//request 객체에 person(홍길동, ,31);
    
    %>
    
    <%

    
    	
    	request.setAttribute("id", "id");
    request.setAttribute("pwd", 1234);
    request.setAttribute("person", new person("홍길동",31));
    	
%>
    
    <html>
<head><title>page 영역</title></head>
<body>
   
</body>
</html>