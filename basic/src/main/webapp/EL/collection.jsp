<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.HashMap" %>
    <%@ page import = "java.util.Map" %>
    <%@ page import = "java.util.List" %>
    <%@ page import = "java.util.ArrayList" %>
    <%@ page import = "school.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 컬렉션 출력</title>
</head>
<body>
<h2>list계열</h2>
<%
	List<Object> aList = new ArrayList<Object>();
	aList.add("명량-이순신");
	aList.add(new Person("세종대왕", 500));
	pageContext.setAttribute("goodman", aList);
%>
<ul>
	<li>${goodman[0] }</li>
	<li>${goodman[1].name }, ${goodman[1].age }</li>
	<li>${goodman[2] }</li>
</ul>

<h2>Map계열</h2>
<%
	Map<String, String> map = new HashMap<String, String>();
	map.put("세조", "이방원");
	map.put("세종", "이도");
	pageContext.setAttribute("king", map);

%>
<ul>
	<li>${king["세종"] }</li>
	<li>${king["세조"] }</li>
</ul>
</body>
</html>