<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import = "fitness.member" %>
<%@ page import = "fitness.memberRepository"  %>

    
    <%
    request.setCharacterEncoding("UTF-8");
    
    String userid = request.getParameter("userid");
    String uname = request.getParameter("uname");
    String pwd = request.getParameter("pwd");
    String addr = request.getParameter("addr");
    String r_comment = request.getParameter("r_comment");
    String reason = request.getParameter("reason");
    
    member newmem = new member();
    
    newmem.setAddr(addr);
    newmem.setPwd(pwd);
    newmem.setR_comment(r_comment);
    newmem.setReason(reason);
    newmem.setUname(uname);
    newmem.setUserid(userid);
    
    session.setAttribute("id", newmem);
    
    
    memberRepository dao = memberRepository.getInstance();
    dao.addMember(newmem);
    
    response.sendRedirect("mem_register_ok.jsp");
    %>