<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "school.MyELclass" %>
    <%
    MyELclass myclass = new MyELclass();
    pageContext.setAttribute("myclass", myclass);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메소드 호출</title>
</head>
<body>
001225-3000000 => ${myclass.getGender("001225-3000000") }
<h2>${MyELclass.stringHello() }</h2>
</body>
</html>