<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF+e083">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Cart</title>
<style>

/* Set a style for all buttons */
button {
    background-color: #4c6baf;
    color: white;
    padding: 14px ;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}
</style>
<script>
function stockcheck()
{
	var quantity=document.getElementById("qyone").value;
	var stock=document.getElementById("st").value;
	var quantitytwo=document.getElementById("qytwo").value;
	if(quantitytwo<quantity){
		if((quantitytwo-quantity)<=stock)
		
		return true;
	}else{
		alert("Required stock unavailable")
	return false;
	}
}
</script>
</head>
<body>
<jsp:include page="Header.jsp"/>
 <c:if test="${fn:length(locart) eq 0}"> <!--jstl function tag -->
 <div class="container">
 <div class="row">
 <div class="col-sm-12 col-md-10 col-md-offset-1">
<table class="table table-hover">
<thead>
<tr>
<th>Cart</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<h5>Your shopping cart is empty. Please add products to access cart.</h5>
</td>

<td>
                     
                        <a href="./"><button type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </button></a>
    </td>                
</tbody>
</table>
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
<br>
<br>




 </div>
 </div>
 </div>
 </c:if>
 <c:if test="${fn:length(locart) ge 1}">
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                     	<th></th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                    
                </thead>
                <tbody>
                 <c:forEach var="lc" items="${locart}" >
                    <tr>
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="${pageContext.request.contextPath}/resources/DatabaseImages/${lc.pid.image}" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">${lc.pid.name}</a></h4>
                                <h5 class="media-heading"> by <a href="#">${lc.pid.sid.supname}</a></h5>
                            </div>
                        </div></td>
                        
                        <td class="col-sm-1 col-md-1" style="text-align:center">   
                    	${lc.qty}
                       	<a href="edit?cartid=${lc.id}"><button type="submit" class="btn btn-primary" onclick="stockcheck()" >Edit</button></a>
                         </td>
                         
						                     
                        <td class="col-sm-1 col-md-1 text-center"></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${lc.price}</strong></td>
                 		<td class="col-sm-1 col-md-1 text-center"><strong>${lc.price*lc.qty}</strong></td> 
                       	
                       	<td class="col-sm-1 col-md-1">
                        <a href="deletecart?caid=${lc.id}">
                        <button type="button" class="btn btn-danger" > Remove</button></a>
                        </td>
                    </tr>
                    </c:forEach>
                    
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Subtotal</h5></td>
                        <td class="text-right"><h5><strong>${sb}</strong></h5></td>
                    </tr>
                    <tr>
                    	<td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>GST & Handling Charges</h5></td>
                        <td class="text-right"><h5><strong>${gst}</strong></h5></td>
                    </tr>
                    <tr>
                    	<td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong>${sb+gst}</strong></h3></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td class="col-sm-1 col-md-1">   
                        <a href="./"><button type="button" class="btn btn-primary">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </button></a></td>
                        <td class="col-sm-1 col-md-1">
                        <a href="checkout?tp=${sb+gst}&&qty="><button type="button" class="btn btn-success">
                            Checkout <span class="glyphicon glyphicon-play"></span>
                        </button></a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</c:if>



<jsp:include page="Footer.jsp"/>
</body>
</html>