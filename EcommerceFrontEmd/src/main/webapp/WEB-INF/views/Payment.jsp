<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="Header.jsp"/>
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
            <a href="thanku"><button type="submit"class="btn btn-default">Make Payment</button></a>
            
</body>
</html>