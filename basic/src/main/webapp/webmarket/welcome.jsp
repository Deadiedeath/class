<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.Date" %>
        <%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

</head>
<body>
	<%@ include file = "menu.jsp" %>
   

	<%! String greeting = "Welcome to Web Shopping Mall";
		String tagline = "Welcome to Web Market"; %>
		
 	<div class = "jumbotron">
 		<div class = "container"> 
 			<h1 class = "display-3"> <%=greeting %> </h1>
 		</div>
 	</div>
    
    <div class = "container">
    	<div class = "text-center">
    	<h3><%=tagline %></h3>
    	<% 
    		Date day = new java.util.Date();
    		String am_pm;
    		int hour = day.getHours();
    		int minute = day.getMinutes();
    		int second = day.getSeconds();
    		if(hour/12==0){
    			am_pm = "AM";
    		}
    		else{
    			am_pm="PM";
    			hour = hour - 12;
    		}
    		String CT = hour + ":" + minute + ":" + second + am_pm ;
    		out.println("접속시간 : "+CT);
    		
    	%>
    	<a href="product.jsp" class="btn btn-secondary">이동</a>
    	<a href="addProduct.jsp" class="btn btn-secondary">상품등록</a>
    	<hr> 
    	</div>
    </div>
    
    <%@ include file = "footer.jsp" %>
    
    
    	<%
	Enumeration<String> en = request.getHeaderNames();
	while(en.hasMoreElements()){
		String name = (String) en.nextElement();
		String values = request.getHeader(name);
		out.print(name + ": " + values + "<br>");
	}
	%>

</body>
</html>