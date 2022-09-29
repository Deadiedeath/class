<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="fitness.member" %>
    <%@ page import="fitness.memberRepository" %>
    <%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트 확인</title>
</head>
<body>
	<table>
		<tr>
			<th> 아이디 </th> 
			<th> 이름 </th>
			<th> 주소 </th>
			<th> 사유 </th>
			<th> 코멘트 </th>
		</tr>
<%
	memberRepository dao = memberRepository.getInstance();
	ArrayList<member> memberlist = dao.getAllMember();
	member mem=null;
		for(int i =0; i<memberlist.size(); i++){
		mem = memberlist.get(i);
		
	%>

		<tr>
			<td> <%=mem.getUserid() %> </td>
			<td> <%=mem.getUname() %> </td>
			<td> <%=mem.getAddr() %> </td>
			<td> <%=mem.getReason() %> </td>
			<td> <%=mem.getR_comment() %> </td>
	<%} %>
	</table>

</body>
</html>