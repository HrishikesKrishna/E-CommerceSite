<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %><!--for using c for each and all other which starts with c prefix c  -->
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>

body{
    margin-top:20px;
}

.store-item {
    padding: 5px;
    position: relative;
    display: block;
    margin-bottom: 30px;
    border: 4px solid #eee;
    -webkit-transition: all .2s ease-out;
    transition: all .2s ease-out;
}

.store-item:hover {
    border-color: #ddd;
    text-decoration: none;
}

.store-item:hover .store-item-image img {
    -webkit-transform: scale(1.3);
    transform: scale(1.3);
}

.store-item:hover .store-item-rating {
    animation-name: fadeInQuick;
    -webkit-animation-name: fadeInQuick;
    animation-duration: .5s;
    -webkit-animation-duration: .5s;
    animation-timing-function: ease-out;
    -webkit-animation-timing-function: ease-out;
    visibility: visible!important;
    display:block;
     opacity: 1;
     background:transparent;
}

.store-item-rating {
    position: absolute;
    top: 0;
    right: 0;
    left: 0;
    text-align: center;
    padding: 10px;
    opacity: 0;
    filter: alpha(opacity=0);
    background-color: #fff;
    -webkit-transition: all .2s ease-out;
    transition: all .2s ease-out;
    z-index: 10;
}

.text-warning, 
.text-warning:hover, 
a.text-warning, 
a.text-warning:focus, 
a.text-warning:hover {
    color: #e67e22;
}

.store-item-image {
    overflow: hidden;
}

.store-item-image img {
    -webkit-transition: transform .2s ease-out;
    transition: transform .2s ease-out;
}

.store-item-info {
    padding: 20px;
    background-color: #f9f9f9;
}

.themed-color-dark {
    color: #394263;
}

.store-item-price {
    font-weight: 700;
    font-size: 28px;
}

.text-primary, .text-primary:hover, a, a:focus, a:hover {
    color: #1bbae1;
    text-decoration:none;
}

.store-menu {
  margin-top: 30px;
}

.store-menu ul li {
  border-bottom: 1px solid #f0f4f7;
}

.store-menu ul li:last-child {
  border-bottom: none;
}

.store-menu ul li a {
  color: #93a3b5;
  font-size: 14px;
  font-weight: 400;
}

.store-menu ul li a i {
  margin-right: 8px;
  font-size: 14px;
}

.store-menu ul li a:hover {
  background-color: #fafcfd;
  color: #5b9bd1;
}

.store-menu ul li.active {
  border-bottom: none;
}

.store-menu ul li.active a {
  color: #5b9bd1;
  background-color: #f6f9fb;
  border-left: 2px solid #5b9bd1;
  margin-left: -2px;
}


</style>
</head>
<body>
<jsp:include page="Header.jsp"/>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

<div class="container bootstrap snippet">
    
    <div class="row">
    <c:forEach items="${lpcd}" var="productl" >
    <div class="col-md-4 col-sm-4">
                <div class="store-item">
                    
                    <div class="store-item-image">
                        <a href="#">
                            <img src="resources/DatabaseImages/${productl.image}" alt="" class="img-responsive">
                        </a>
                    </div>
                    <div class="store-item-info clearfix">
                        <span class="store-item-price themed-color-dark pull-right">${productl.price}</span>
                        <a href=""><strong>${productl.name}</strong></a><br>
                        <small><i class="fa fa-shopping-cart text-muted"></i>
                        <a href="#" class="text-muted">Add to Cart</a></small> <!-- a href for going to corrsponding product page give in out of div to enable to entire ox instead of seperate elements like photo and name -->
                    </div>
                </div>
            </div> 
            </c:forEach>
            </div>
            
            </div>
            


</body>
</html>