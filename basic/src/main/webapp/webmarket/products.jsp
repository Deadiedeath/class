<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <%@ page import = "dto.product" %>
  
   <%@ page import = "dao.productrepository" %>
   
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세</title>
<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class = "jumbotron">
 		<div class = "container"> 
 			<h1 class = "display-3">
 			상품 상세
 			</h1>
 		</div>
 	</div>
    <%
    productrepository dao = productrepository.getInstance();
    	String id = request.getParameter("id");
    	product p = dao.getProductByid(id);
    %>
    

<div class ="container">
    	<div class = "row" align = "center">
    	
    	<div class = "col-md-6">
    		<h3>상품명 : <%=p.getPname() %></h3>
    		<p>설명 : <%=p.getDescription() %> </p>
    		<p>제조사 : <%=p.getManufacturer() %> </p>
    		<p>상태 : <%=p.getCondition() %> </p>
    		<p>재고 : <%=p.getUnitInstock() %> </p>
    		<p><a href="#" class="btn btn-info">상품주문</a>
    		<a href="product.jsp" class="btn btn-secondary">상품목록</a></p>
    		
    	</div>
    	
    	</div>
    
    </div>
    <jsp:include page="footer.jsp" />
   
</body>
</html>