 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %><!--for using c for each and all other which starts with c prefix c  -->
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
button {
    background-color: #4c6baf;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}
</style>
</head>

<body>
<nav class="navbar navbar-inverse navbar">
  <div class="container-fluid">
 
     
   
   
    <ul class="nav navbar-nav">
      <li><a href="./">Home</a></li>
   
      
        <c:if test="${pageContext.request.userPrincipal.name  !='hrishikeskrishna@rediffmail.com'}">
      <li class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" >Search Category
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
    <c:forEach var="category" items="${catd}">
      <li><a href="selectcat?cid=${category.id}">${category.catname}</a></li>
     </c:forEach>
     </ul>
       </c:if>
        <c:if test="${pageContext.request.userPrincipal.name  == 'hrishikeskrishna@rediffmail.com'}">
      <li><a href="ad">Admin</a></li>
       </c:if> 
  </ul>
 
    <ul class="nav navbar-nav navbar-right">
    <c:if test="${pageContext.request.userPrincipal.name != null && pageContext.request.userPrincipal.name != 'hrishikeskrishna@rediffmail.com'}">
    <li><a href="cart">Cart</a></li>
   	</c:if>
   	<c:if test="${pageContext.request.userPrincipal.name == null}">
    <li><a href="login">Login</a></li>
    <li><a href="signup">Create Account</a></li>
    </c:if>
    <c:if test="${pageContext.request.userPrincipal.name != null}">
    <li><a>Welcome ${pageContext.request.userPrincipal.name}</a></li>
  	
  	</c:if>
  	<c:if test="${pageContext.request.userPrincipal.name!=null}">
  	<li><a href='<c:url value="/j_spring_security_logout"/>'>Logout</a></li>
  	</c:if>
    </ul>
   
   </div>  
  
</nav>
</body>
</html>