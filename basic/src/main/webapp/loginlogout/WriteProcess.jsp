<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "board.BoardDAO" %>
<%@ page import = "board.boardDTO" %>
<%@ include file = "isLoggedin.jsp" %>

<!-- 폼값 받기 -->
<% String title = request.getParameter("title");
	String content = request.getParameter("content");
	
%>



<!-- DTO객체에 저장 -->
<%
	boardDTO dto = new boardDTO();
	
	dto.setTitle(title);
	dto.setContent(content);
	dto.setId(session.getAttribute("UserId").toString());
%>
<!-- dto객체를 통해 dto저장 -->
<%
	BoardDAO dao = new BoardDAO(application);
	int iResult = dao.insertWrite(dto);

%>
<!-- 글 db 입력 성공과 실패 여부 처리 -->
<%
	if(iResult ==1){
		response.sendRedirect("List.jsp");
	}
	else{
		request.getRequestDispatcher("Write.jsp").forward(request, response);
	}
%>