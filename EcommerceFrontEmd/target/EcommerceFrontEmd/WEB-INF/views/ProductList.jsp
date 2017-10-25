<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="Header.jsp"/>
<div class="container">

<table class="table">
<thead>
	<tr>
	<th>ID</th>
	<th>Product</th>
	<th>Short Description</th>
	<th>Price</th>
	<th>Action</th>
	</tr>
</thead>

<c:forEach var="product" items="${listop}">
<tbody>
	<tr>
	<td>${product.id}</td>
	<td>${product.name}</td>
	<td>${product.sd}</td>
	<td>${product.price}</td>
	<td><a href="updatep?pid=${product.id }"><button type="button" class="btn">Update Product</button></a>
		<a href="deletep?pid=${product.id }"><button type="button" class="btn">Delete Product</button></a>
	</td>
	</tr>
</tbody>
</c:forEach>	
</table>
</div>
</body>
</html>