<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "board.BoardDAO" %>
<%@ page import = "board.boardDTO" %>
<%@ page import = "board.JSFunction" %>
    
    
    <%
    String num = request.getParameter("num");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    
    boardDTO dto = new boardDTO();
    dto.setNum(num);
    dto.setTitle(title);
    dto.setContent(content);
    
    BoardDAO dao = new BoardDAO(application);
    int result = dao.updateEdit(dto);
    
    if(result ==1){
    	response.sendRedirect("view1.jsp?num="+dto.getNum());
    }else
    {
    	JSFunction.alertBack("수정하기 실패", out);
    }
    
    
    %>