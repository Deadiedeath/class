<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="common.person"  %>
<%
	pageContext.setAttribute("pageInteger",1000);
	pageContext.setAttribute("pageString", "lsb");
	pageContext.setAttribute("pagePerson", new person("상범",100));


%>
<%
	int num = (int)pageContext.getAttribute("pageInteger");
	String id = (String)pageContext.getAttribute("pageString");
	person info = (person)pageContext.getAttribute("pagePerson");
	%>
	
	<ul>
		<li><%=num %> </li>
		<li><%=id %> </li>
		<li><%=info.getName() %> </li>
		<li><%=info.getAge() %> </li>
	
	</ul>
	
	
	
	<h2>include된 파일에서 page영역 읽어오기 </h2>
	<%@ include file = "PageInclude.jsp" %>
	<h2>페이지 이동 후 page영역 읽어오기 </h2>
	<a href ="pageLocation.jsp">페이지 이동</a> 