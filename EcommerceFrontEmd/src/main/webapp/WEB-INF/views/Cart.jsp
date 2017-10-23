<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>HK's Project</title>
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
</head>
<body>
<jsp:include page="Header.jsp"/>
<div class="container-fluid">
<div class="jumbotron">
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
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
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="${pageContext.request.contextPath}/resources/DatabaseImages/${lc.pid.image}" style="width: 72px; height: 72px;"> </a><!-- $continous interception,so page context provides full diectory image url b4 resourc/dbimage -->
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">${lc.pid.name}</a></h4> <!-- lc.pid bcs theres no name in cart table  we have to access it through pid value -->
                                <h5 class="media-heading"> by <a href="#">${lc.pid.sid.supname}</a></h5>
                               
                            </div>
                        </div>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                       <td class="col-sm-1 col-md-1 text-center"><strong>${lc.qty}</strong></td>
                        
                        <td class="col-sm-1 col-md-1 text-center"><strong>${lc.price}</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${lc.price*lc.qty}</strong></td>
                        <td class="col-sm-1 col-md-1">
                        <a class="btn btn-danger" href="deletecart?caid=${lc.id}">
                            <span class="glyphicon glyphicon-remove"></span> Remove</a>
                      </td>
                       
                        </tr>
                        </c:forEach>
                    
                    
                                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Subtotal</h5></td>
                        <td class="text-right"><h5><strong>${tp}</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Tax</h5></td>
                        <td class="text-right"><h5><strong>6.94</strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong>${tp + 6.94}</strong></h3></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <a href="cs"><button type="button" class="btn btn-primary" >
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </button></a></td>
                        <td>
                        <a href="order"><button type="submit" class="btn btn-success">
                            Checkout <span class="glyphicon glyphicon-play"></span>
                        </button></a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>      
</div>



<footer>&copy; NIIT E-Commerce Case Study Project 2017</footer>
</body>
</html>