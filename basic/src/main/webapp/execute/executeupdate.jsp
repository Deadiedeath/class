<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%@ page import="java.sql.ResultSet" %>
    <%@ page import = "java.sql.Statement" %>
    <%@ page import = "java.sql.Connection" %>
    <%@ page import = "common.JDBConnect" %>
    <%@ page import = "java.sql.PreparedStatement" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 추가</title>
</head>
<body>
	<%
	//1. db연결
	JDBConnect jdbc = new JDBConnect();
	//2. 입력 값 준비
	String id = "test1";
	String pw = "1111";
	String name ="테스트";
	//3. 쿼리문 생성
	String sql = "insert into member values(?, ?, ?, sysdate)";
	PreparedStatement psmt = jdbc.con.prepareStatement(sql);
	//4. 쿼리문 수행
	psmt.setString(1, id);
	psmt.setString(2, pw);
	psmt.setString(3, name);
	
	
	int inResult = psmt.executeUpdate();
	out.println(inResult);
	
	jdbc.close();
	%>
</body>
</html>