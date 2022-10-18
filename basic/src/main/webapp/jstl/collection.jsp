<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.HashMap" %>
    <%@ page import = "java.util.Map" %>
    <%@ page import = "java.util.List" %>
    <%@ page import = "java.util.ArrayList" %>
    <%@ page import = "school.Person" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 컬렉션</title>
</head>
<body>
<h2>list계열</h2>
<%
	List<Person> aList = new ArrayList<Person>();
	aList.add(new Person("이순신", 55));
	aList.add(new Person("세종대왕", 500));
	
%>
<c:set var ="kings" value ="<%=aList %>" scope ="request"></c:set>
<ul>
	<li>${kings[0].name}, ${kings[0].age }  </li>
	<li>${kings[1].name}, ${kings[1].age }</li>
	<li>${goodman[2] }</li>
</ul>

<h2>Map계열</h2>
<%
	Map<String, String> map = new HashMap<String, String>();
	map.put("세조", "이방원");
	map.put("세종", "이도");
	
	Map<String, Person> map2 = new HashMap<String, Person>();
	map2.put("king1", new Person("문종", 60));
	map2.put("king2", new Person("단종", 55));


%>
<c:set var = "kingsman" value ="map" />

<c:set var = "kingsman2" value ="map2" />

<ul>
	<li>${kingsman["세종"]}</li>
	<li>${kingsman["세조"] }</li>
</ul>

<ul>
	<li>${kingsman2.king1.name}, ${kingsman2.king1.age}</li>
	<li>${kingsman2.king2.name}, ${kingsman2.king2.age}</li>
</ul>
</body>
</html>