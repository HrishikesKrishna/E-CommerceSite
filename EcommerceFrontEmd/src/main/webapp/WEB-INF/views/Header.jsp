<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %><!--for using c for each and all other which starts with c prefix c  -->

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<nav class="navbar navbar-inverse navbar">
  <div class="container-fluid">
     </div>
     
   
   
    <ul class="nav navbar-nav">
      <li><a href="index">Home</a></li>
      <li><a href="admin">Admin</a></li>
      <li class="dropdown"><a href  ="javascript:void(0)"class="dropbtn">Search Category</a>
      <div class="dropdown-content">
      <c:forEach var="category"items="${cat}">
      <a href="${category.id}">${category.catname}</a>
      </c:forEach>
      </div>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="Cart">Cart</a></li>
    <li><a href="Login">Login</a></li>
    <li><a href="#">Create Account</a></li>
    </ul>
     
  
</nav>
</body>
</html>