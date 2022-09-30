<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "dto.product" %>
    <%@ page import = "dao.productrepository" %>
      <%@ page import = "com.oreilly.servlet.*" %>
    <%@ page import = "com.oreilly.servlet.multipart.*" %>
    <%@ page import= "java.util.* " %>
    <%@ page import = "java.io.*" %>

    <%
    request.setCharacterEncoding("UTF-8");
    
    	String filename ="";
    	String realfolder = "C:\\Users\\ict05-24\\git\\repository\\basic\\src\\main\\webapp\\webmarket\\resources\\images";
    	String encType="UTF-8";
    	int maxSize = 5*1024*1024; //최대 5MB
    
    	MultipartRequest multi = new MultipartRequest(request, realfolder, maxSize, encType, new DefaultFileRenamePolicy());
    	
	 String productId = request.getParameter("productId");
	 String pname = request.getParameter("name");
	 String unitPrice = request.getParameter("unitPrice");
	 String description = request.getParameter("description");
	 String manufacturer = request.getParameter("manufacturer");
	 String category = request.getParameter("category");
	 String unitInstock = request.getParameter("unitsInStock");
	 String condition = request.getParameter("condition");
	 Integer price =0;
	 
	 
	 
	 if(unitPrice.isEmpty()) price=0;
	 else price = Integer.valueOf(unitPrice);
	 
	 long stock=0;
	 if(unitInstock.isEmpty()) stock=0;
	 else stock = Long.valueOf(unitInstock);
	 
	 product newProduct = new product();
	 
	newProduct.setProductId(productId);
	newProduct.setCategory(category);
	newProduct.setCondition(condition);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setPname(pname);
	newProduct.setUnitInstock(stock);
	newProduct.setUnitPrice(price);
	newProduct.setFilename(filename);
	
    
	productrepository dao = productrepository.getInstance();
	dao.addProduct(newProduct);
	response.sendRedirect("product.jsp");
	
    %>