<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--  page 페이지 지시어 JSP페이지를 어떻게 처리할 것인지 정의 -->
    <%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Enumeration<String> en = request.getHeaderNames();
	while(en.hasMoreElements()){
		String name = (String) en.nextElement();
		String values = request.getHeader(name);
		out.print(name + ": " +  "<br>");
	}
	%>
</body>
</html>