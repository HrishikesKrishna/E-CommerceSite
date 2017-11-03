<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier List</title>
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
	<th>Name</th>
	<th>Action</th>
	</tr>
</thead>
<c:forEach var="supplier" items="${listos}">
<tbody>

	<tr>
	<td>${supplier.id}</td>
	<td>${supplier.supname}</td>
	<td><a href="updates?sid=${supplier.id }"><button type="button" class="btn">Update</button></a>
		<a href="deletes?sid=${supplier.id }"><button type="button" class="btn">Delete</button></a>
	</td>
	</tr>
</tbody>
</c:forEach>	
</table>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<jsp:include page="Footer.jsp"/>
</body>
</html>