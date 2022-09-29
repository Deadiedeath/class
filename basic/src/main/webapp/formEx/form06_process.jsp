<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.*,java.util.*"%>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>요청 파라미터 이름</th>
			<th>요청 파라미터 값</th>
		</tr>
		<%
			request.setCharacterEncoding("UTF-8");
			
			Enumeration paramNames = request.getParameterNames();
			while (paramNames.hasMoreElements()) {
				String name = (String) paramNames.nextElement();
				if(name.equals("hobby")){
					
					String[] paramValue = request.getParameterValues(name);
					for(int i =0;i<paramValue.length;i++){
						out.print("<tr><td>" + name + (i+1) + " </td>\n");
					out.println("<td> " + paramValue[i] + "</td></tr>\n");}
					continue;
				}				
				out.print("<tr><td>" + name + " </td>\n");
				String paramValue = request.getParameter(name);
				out.println("<td> " + paramValue + "</td></tr>\n");
			}
			
		%>
		
		<% %>
	</table>
</body>
</html>