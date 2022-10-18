<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.HashMap" %>
    <%@ page import = "java.util.Map" %>
    <%@ page import = "java.util.List" %>
    <%@ page import = "java.util.ArrayList" %>
    <%@ page import = "school.Person" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
    <%
	List<Person> aList = new ArrayList<Person>();
	aList.add(new Person("이순신", 55));
	aList.add(new Person("세종대왕", 500));
	
%>
<%
Map<String, Person> map2 = new HashMap<String, Person>();
map2.put("king1", new Person("문종", 60));
map2.put("king2", new Person("단종", 55));

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>foreach</title>
</head>
<body>
<h4>for 형태 : foreach</h4>
<c:forEach begin = "1" end = "3" step = "1" var = "i">
<p>반복 ${i} </p>
</c:forEach>

<c:set var ="list" value = "<%=aList %>" />
<c:forEach items="${list }" var = "list" >
${list.name } ${list.age }
</c:forEach>




<c:set var ="list2"  value = "<%=map2 %>" />

<c:forEach var = "king" items="${list2 }"  >

${king.key } ${king.value.name } ${king.value.age }
</c:forEach>
</body>
</html>