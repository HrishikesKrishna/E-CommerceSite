<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>HK's Project</title>
<style>
h2.bg-success{
    padding: 15px;
}

.required-lbl{
    color: red;
}

label[for="billinginformation"]{
    display: inline;
    float: left;
    margin:0px 45px 0px 0px;
}

.card-expiry{
    padding-left: 0px;
}

.confirm-btn{
    float:right;
}

.bg-primary{
    padding: 10px;
}

label{
    margin-bottom :0px;
}
</style>
</head>


<body>
<jsp:include page="Header.jsp"/>
<div class="container">
	<div class="row">
		<img class="spi-header" src="" >
        <hr/>
        <h1>Fitness Zone</h1>
        <hr/>
        <strong>Order Summary:</strong>
        <h4 class="bg-success">Total Cart Value :Rs ${tp} </h4>
        
        <form action="placeorder" method=POST>
        
        <div class="form-group col-md-12 bg-primary">
            <label class="control-label" for="billinginformation">Shipping Information</label>
        </div>
        
        <div class="shipping-info">
            <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="name">Name</label>
              <div class="controls">
                <input id="name" name="name" type="text" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="housename">House Name</label>
              <div class="controls">
                <input id="lastname" name="housename" type="text" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="streetname">Street Name</label>
              <div class="controls">
                <input id="streetname" name="streetname" type="text" placeholder="" class="form-control" required="">
              </div>
            </div>
            
             
            <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="postcode">Post Code</label>
              <div class="controls">
                <input id="postcode" name="postcode" type="text" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <hr/> <!-- thematic break -->
            
           
        
        
            <div class="form-group col-md-12 bg-primary">
                <label class="control-label" for="contactinformation">Contact Information:</label>
            </div>
            
            <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="emailaddress">Email Address</label>
              <div class="controls">
                <input id="email" name="email" type="email" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <div class="form-group col-md-6">
              <label class="control-label" for="phone">Phone</label>
              <div class="controls">
                <input id="phone" name="phoneno" type="number" placeholder="" class="form-control" required="">
              </div>
            </div>
            
           
            
            
            
            <div class="form-group col-md-12">
                <div class="control-group confirm-btn">
                  <label class="control-label" for="placeorderbtn"></label>
                  <div class="controls">
                    <button id="placeorderbtn" type="submit" name="placeorderbtn" class="btn btn-primary">Place My Order</button>
                  </div>
                </div>
            </div>
            
        </div>
        </form>
	</div>
</div>
</body>
</html>