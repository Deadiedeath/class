<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "fitness.member" %>
    <%@ page import = "fitness.memberRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 완료</title>
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<h1>회원 가입 완료</h1>
	<%
		member id = (member)session.getAttribute("id");
		
		
	%>
	
	<p>아이디 :<%=id.getUserid() %> </p>
	<p>비밀번호 :<%=id.getPwd() %>   </p>
	<p>이름 :<%=id.getUname() %>  </p>
	<p>주소 :<%=id.getAddr() %>  </p>
	<p>목표 :<%=id.getReason() %>  </p>
	<p>코멘트 :<%=id.getR_comment() %>  </p>
	
	
	
	
	
	
	<a href="member.html" class="btn btn-secondary">처음으로</a>
	<a href="check_list.jsp" class="btn btn-secondary">리스트 확인</a>
	
	
	
<script>

  alert("회원가입을 환영합니다")
</script>
	
</body>
</html>