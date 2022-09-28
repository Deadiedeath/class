<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate(); //세션객체안의 모든 정보를 삭제

	out.print("로그아웃");
	%>
	
	