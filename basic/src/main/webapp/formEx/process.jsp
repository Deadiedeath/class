<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체크박스 프로세스</title>
</head>
<body>


	<%
	request.setCharacterEncoding("UTF-8");
	String[] hobby = request.getParameterValues("hobby");
	String comment = request.getParameter("comment");
	%>
	
	<p>취미 : <%
				if(hobby != null){
					for(int i =0; i<hobby.length; i++){
						out.println(" " + hobby[i]);
					}
				}
	%>
	<%=comment %>
</body>
</html>