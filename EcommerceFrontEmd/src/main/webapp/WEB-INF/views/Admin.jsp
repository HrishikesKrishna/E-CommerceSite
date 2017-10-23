<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %><!--for using c for each and all other which starts with c prefix c  -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Admin</title>
</head>
<body>
<jsp:include page="Header.jsp"/>

  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#product">Product</a></li>
    <li><a data-toggle="tab" href="#category">Category</a></li>
    <li><a data-toggle="tab" href="#supplier">Supplier</a></li>
    <li><a data-toggle="tab" href="#list">List</a></li>
    
  </ul>

  <div class="tab-content">
   <div id="product" class="tab-pane fade in active">
  <form class="form-horizontal"action="addp" method="post"enctype="multipart/form-data"><!-- by default every method is get,dont give get method ,bcs it passes data through url,not secure it is visible in url bar,when refreshed the data i spassed again -->
  <label><b>Name</b></label>
  <input type="text" placeholder="Enter Product name"name="name"required >
  
   <label for="inputName">Category</label>
  	<select name="cat">
  	<option value="volvo">Select Category</option>
  	<c:forEach var="c" items="${cat}"><!--while retrieving from controller to jsp page use dollar sign  -->
  	<option value="${c.id}">${c.catname}
  	</option>
  	</c:forEach>
  	</select>
  	
  	<label for="inputName">Supplier</label>
  	<select name="sup">
  	<option value="volvo">Select Supplier</option>
  	<c:forEach var="s" items="${sup}"> 
  	<option value="${s.id}">${s.supname}</option>
   	</c:forEach> 
    </select>
   <input type="file"name="img"required/>
   
   <label><b>Short Description</b></label>
  <input type="text" placeholder="Enter Product Description" name="stds"required>
  <label><b>Price</b></label>
  <input type="text" placeholder="Enter Product price" name="price"required>
  <button type="submit"class="btn btn-default" >Submit</button>
  </form>  
  </div>
  
 
    <div id="category" class="tab-pane fade">
  	  <form class="form-horizontal" action="addc" method=post>
  <div>
  <label><b>Name</b></label>
  <input type="text" placeholder="Enter Category name" name="Catname" required>
  <button type="submit" class="btn btn-default" >Submit</button>
  </div>
  </form>
   </div>
 
 
    <div id="supplier" class="tab-pane fade">
    <form class="form-horizontal"action="adds" method=post>
  <label><b>Name</b></label>
  <input type="text"placeholder="Enter Supplier Name"name="supname"required>
  <label><b>Address</b></label>
  <input type="text" placeholder="Enter Supplier Address"name="sadr"required>
  <button type="submit"class="btn btn-default">Submit</button>
 	</form >   
    </div>
 
 
    <div id="list" class="tab-pane fade">
    <ul>
  <li><div><a href="listp">Products List</a></div></li>
  <li><div><a href="listc">Category List</a></div></li>
  <li><div><a href="lists">Suppliers List</a></div></li>
  </ul>
    </div>
  </div>
</body>
</html>