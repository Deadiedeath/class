<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import = "java.util.ArrayList" %>
   <%@ page import = "dto.product" %>
   <jsp:useBean id="dao" class="dao.productrepository" scope="session" />
   
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class = "jumbotron">
 		<div class = "container"> 
 			<h1 class = "display-3">
 			상품목록 
 			</h1>
 		</div>
 	</div>
    <%
    	ArrayList<product> productlist = dao.getAllProduct();
    %>
    <div class ="container">
    	<div class = "row" align = "center">
    	<%
    	for (int i =0; i <productlist.size(); i++){
    		product p = productlist.get(i);    	
    	%>
    	<div class = "col-md-4">
    		<h3><%=p.getPname() %></h3>
    		<p><%=p.getDescription() %> </p>
    		<p><%=p.getUnitPrice() %> </p>
    		<p><a href="./products.jsp?id=<%=p.getProductId()%>" class="btn btn-secondary" >상세 정보</a> </p>
			<%=p.getProductId() %>
    	</div>
    	<%} %>
    	</div>
    
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>