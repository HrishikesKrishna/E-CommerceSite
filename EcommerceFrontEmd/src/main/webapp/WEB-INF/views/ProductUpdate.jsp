<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %><!--for using c for each and all other which starts with c prefix c  -->


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

  <form class="form-horizontal"action="updatepro" method="post"><!-- by default every method is get,dont give get method ,bcs it passes data through url,not secure it is visible in url bar,when refreshed the data i spassed again -->
   <input type="hidden" value="${pro.id}"name="id">
  <label><b>Name</b></label>
  <input type="text" value="${pro.name}"name="name"required >
  
  <label for="inputName">Category</label>
  	<select name="cat">
  	<option value="volvo">Select Category</option>
  	<c:forEach var="c" items="${catlist}"><!--while retrieving from controller to jsp page use dollar sign  -->
  	<option value="${c.id}">${c.catname}
  	</option>
  	</c:forEach>
  </select>
  	<label for="inputName">Supplier</label>
  	<select name="sup">
  	<option value="volvo">Select Supplier</option>
  	<c:forEach var="s" items="${suplist}"> 
  	<option value="${s.id}">${s.supname}</option>
   	</c:forEach> 
   </select>
   
   <label><b>Short Description</b></label>
  <input type="text" value="${pro.sd} "name="stds"required>
  <label><b>Price</b></label>
  <input type="text" value="${pro.price}" name="price"required>
  <button type="submit"class="btn btn-default" >Submit</button>
  </form>  
  </div>
  

</body>
</html>