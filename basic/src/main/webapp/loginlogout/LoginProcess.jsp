<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "membership.MemberDTO" %>
    <%@ page import = "membership.MemberDAO" %>
       <%@ page import="java.sql.ResultSet" %>
    <%@ page import = "java.sql.Statement" %>
    <%@ page import = "java.sql.Connection" %>
    <%@ page import = "membership.JDBConnect" %>

	<%
		String userId = request.getParameter("user_id");
		String userPwd = request.getParameter("user_pw");
		
		
		String driver = application.getInitParameter("OracleDriver");
		String url = application.getInitParameter("OracleURL");
		String id = application.getInitParameter("OracleId");
		String pwd = application.getInitParameter("OraclePwd");
	
		
		MemberDAO dao = new MemberDAO(driver, url, id, pwd);
		MemberDTO member = dao.getMemberDTO(userId, userPwd);
		
		dao.close();
		
		
		if(member.getId() !=null){
			
			session.setAttribute("UserId", member.getId());
			session.setAttribute("UserName", member.getName());
			
			response.sendRedirect("LoginForm.jsp");
		}else{
			
			request.setAttribute("LoginErrMsg", "로그인 오류 아이디, 비밀번호 확인!");
			request.getRequestDispatcher("LoginForm.jsp").forward(request, response);
		}
	%>
		
