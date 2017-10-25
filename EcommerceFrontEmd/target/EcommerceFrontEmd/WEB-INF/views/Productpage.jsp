<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %><!--for using c for each and all other which starts with c prefix c  -->
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<body>
<jsp:include page="Header.jsp"/>
<div class="container">
<div class="row">

	<div class="col-md-6">
	<img src="resources/DatabaseImages/${probyid.image}" alt="" class="image-responsive"/>

</div>

<div class="col-md-6">
	
	<div class="row">
	<div class="col-md-12">
	<h1><u>${probyid.name}</u></h1>
	</div>
	</div>

	<div class="row">
	<div class="col-md-12">
	<h3>${probyid.sd}</h3>
	</div>
	</div>
	
	<div class="row">
	<div class="col-md-12">
	<h3>Price ${probyid.price}</h3>
	</div>
	</div>	

	<div class="row">
	<div class="col-md-12">
	
	</div>
	</div>
	
	
	
	<div class="row add-to-cart">
 	<div class="col-md-4">
    <div class="form-group">
	
	<c:if test ="${pageContext.request.userPrincipal.name!=null}"> 
	<label>Quantity</label>
	<form action="user/addcart" method="post">
	<input type="number" name="qty" required>
	<input type="hidden" name="pid" value="${probyid.id}"/>
	<button type="submit" class="btn btn-lg btn-brand btn-full-width">
    Add to Cart
    </button>
  	<button class="btn btn-lg btn-brand btn-full-width" class="btn btn-lg btn-brand btn-full-width">
    Buy Now
    </button>
   	</form>
  	</c:if>
   	</div>
	</div>
	</div>
	
</div><!-- end row -->
</div>
</div>
</div>
</body>
</html>