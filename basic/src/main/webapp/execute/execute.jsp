<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.sql.ResultSet" %>
    <%@ page import = "java.sql.Statement" %>
    <%@ page import = "java.sql.Connection" %>
    <%@ page import = "common.JDBConnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록 조회 테스트</title>
</head>
<body>
	<%
		JDBConnect jdbc = new JDBConnect();
		String sql = "select id, pass, name, regidate from member";
		Statement stmt = jdbc.con.createStatement();
		
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			String id = rs.getString(1);
			String pw = rs.getString(2);
			String name = rs.getString(3);
			java.sql.Date regidate = rs.getDate("regidate");
			
			out.println(String.format("%s %s %s %s", id, pw ,name, regidate)+"<br/>");
		}
		jdbc.close();
		%>

</body>
</html>