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
		<img class="spi-header" src="" >SPI Header
        <hr/>
        <h1>Smart Property Investment Magazine</h1>
        <hr/>
        <strong>Order Summary:</strong>
        <h2 class="bg-success">Total Cart Value : $74.95 AUD</h2>
        
        <div class="form-group col-md-12 bg-primary">
            <label class="control-label" for="billinginformation">Shipping Information</label>
        </div>
        
        <div class="shipping-info">
            <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="firstname">Name</label>
              <div class="controls">
                <input id="firstname" name="firstname" type="text" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="lastname">House Name</label>
              <div class="controls">
                <input id="lastname" name="lastname" type="text" placeholder="" class="form-control" required="">
              </div>
            </div>
            
            <div class="form-group col-md-6">
              <span class="required-lbl">* </span><label class="control-label" for="shippingaddress1">Street Name</label>
              <div class="controls">
                <input id="shippingaddress1" name="shippingaddress1" type="text" placeholder="" class="form-control" required="">
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
             <div class="control-group">
                  
                  <div class="controls">
                  <label class="control-label" for="billinginformation">Billing Information</label>
                 </div>
                </div>
            </div>
            
            <div class="form-group col-md-6">
                <div class="control-group">
                    <span class="required-lbl">* </span><label class="control-label" for="firstnameonaccount">First Name on Account</label>
                    <div class="controls">
                        <input id="firstnameonaccount" name="firstnameonaccount" type="text" placeholder="" class="form-control" required="">
                    </div>
                </div>
            </div>
            
            <div class="form-group col-md-6">
                <div class="control-group">
                    <span class="required-lbl">* </span><label class="control-label" for="lastnameonaccount">Last Name on Account</label>
                    <div class="controls">
                        <input id="lastnameonaccount" name="lastnameonaccount" type="text" placeholder="" class="form-control" required="">
                    </div>
                </div>
            </div>
            
            <div class="form-group col-md-6">
                <div class="control-group">
                    <span class="required-lbl">* </span><label class="control-label" for="cardnumber">Card Number</label>
                    <div class="controls">
                        <input id="cardnumber" name="cardnumber" type="text" placeholder="" class="form-control" required="">
                    </div>
                </div>
            </div>
            
            <div class="form-group col-md-6" style="height: 60px;">
                Visa and master card Images
            </div>
            
             <div class="form-group col-md-6 card-expiry">
                <div class="control-group col-md-4">
                    <span class="required-lbl">* </span><label class="control-label" for="cvv">CVV</label>
                    <div class="controls">
                        <input id="cvv" name="cvv" type="text" placeholder="" class="form-control" required="">
                    </div>
                </div>
                <div class="control-group col-md-4">
                   <div class="control-group">
                      <label class="control-label" for="month">Expiration Date</label>
                      <div class="controls">
                        <select id="month" name="month" class="input-xlarge">
                          <option>Select Month</option>
                          <option>01</option>
                          <option>02</option>
                          <option>03</option>
                          <option>04</option>
                          <option>05</option>
                          <option>06</option>
                          <option>07</option>
                          <option>08</option>
                          <option>09</option>
                          <option>10</option>
                          <option>11</option>
                          <option>12</option>
                        </select>
                      </div>
                    </div>
                </div>
                
                <div class="control-group col-md-4">
                    <div class="control-group">
                      <label class="control-label" for="selectyear"></label>
                      <div class="controls">
                        <select id="selectyear" name="selectyear" class="input-xlarge">
                          <option>Select Year</option>
                          <option>14</option>
                          <option>15</option>
                          <option>16</option>
                          <option>17</option>
                          <option>18</option>
                          <option>19</option>
                          <option>20</option>
                          <option>21</option>
                          <option>22</option>
                          <option>23</option>
                          <option>24</option>
                          <option>25</option>
                          <option>26</option>
                          <option>27</option>
                          <option>28</option>
                          <option>29</option>
                          <option>30</option>
                        </select>
                      </div>
                    </div>
                </div>
                
            </div>
            
            <div class="form-group col-md-6">
            </div>
            
        <hr/>
        
        
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
                <input id="phone" name="phone" type="number" placeholder="" class="form-control" required="">
              </div>
            </div>
            
           
            
            
            
            <div class="form-group col-md-12">
                <div class="control-group confirm-btn">
                  <label class="control-label" for="placeorderbtn"></label>
                  <div class="controls">
                    <button id="placeorderbtn" name="placeorderbtn" class="btn btn-primary">Place My Order</button>
                  </div>
                </div>
            </div>
            
        </div>
	</div>
</div>
</body>
</html>