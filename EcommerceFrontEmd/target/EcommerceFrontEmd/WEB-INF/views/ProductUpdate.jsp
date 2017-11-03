<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %><!--for using c for each and all other which starts with c prefix c  -->


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Update</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="Header.jsp"/>
<div class="container">

  <form class="form-horizontal"action="updatepro" method="post"  method="post"enctype="multipart/form-data"><!-- by default every method is get,dont give get method ,bcs it passes data through url,not secure it is visible in url bar,when refreshed the data i spassed again -->
  
  <div class="form-group">
  	<input type="hidden" value="${pro.id}"name="id">
  	<label class="control-label col-sm-2"><b>Name</b></label>
  	<div class="col-sm-10">
  		<input type="text" value="${pro.name}"name="name"required >
  	</div>
  </div>
  
  <div class="form-group">
 	<label class="control-label col-sm-2" for="Stock">Stock</label>
  	<div class="col-sm-10">
  		<input type="text" value="${pro.stock}" name="stock" required>
  	</div>
  </div>
  
  <div class="form-group">
  	<label class="control-label col-sm-2" for="inputName">Category</label>
  	<div class="col-sm-10">
  	  	<select name="cat">
  		<option value="${pro.cid.id}">${pro.cid.catname}</option>
  		<c:forEach var="c" items="${catlist}"><!--while retrieving from controller to jsp page use dollar sign  -->
  		<option value="${c.id}">${c.catname}
  		</option>
  		</c:forEach>
  		</select>
  	</div>
  </div>
  
  <div class="form-group">
  	<label class="control-label col-sm-2" for="inputName">Supplier</label>
  	<div class="col-sm-10">
  		<select name="sup">
  		<option value="${pro.sid.id}">${pro.sid.supname}</option>
  		<c:forEach var="s" items="${suplist}"> 
  		<option value="${s.id}">${s.supname}</option>
   		</c:forEach> 
    	</select>
  	</div> 
  </div>
   
  <div class="form-group">  
	<label class="control-label col-sm-2"><b>Image</b></label>
	<div class="col-sm-10">
   <input type="file" name="img"/>
   </div>
   </div>
   
  <div class="form-group"> 
  	<label class="control-label col-sm-2"><b>Short Description</b></label>
  	<div class="col-sm-10">
  	 	<input type="text" value="${pro.sd}" name="stds"required>
  	</div>
  </div>
 
  <div class="form-group">
  	<label class="control-label col-sm-2"><b>Price</b></label>
  	<div class="col-sm-10">
  		<input type="text" value="${pro.price}" name="price"required>
  	</div>
  </div>
  
  <div class="form-group">
	<div class="col-sm-2 col-sm-offset-2">  
  		<button type="submit"class="btn btn-primary" >Submit</button>
  	</div>
  </div>
  </form>  
  
  </div>
 <jsp:include page="Footer.jsp"/>
 </body>
</html>