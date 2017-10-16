<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>HK's Project</title>
</head>
<body>
<jsp:include page="Header.jsp"/>
<div class="container-fluid">
<div class="jumbotron">
<p><strong>Login</strong></p>
<button type="button" class="btn btn-primary">Continue Shopping</button>

<form class="form-horizontal" action="j_spring_security_check"  method="post">
<h3>Please Login</h3>


<div class="form-group">
<label>Username</label>
<input type="text" name="cusername" required>

</div>

<div class="form-group">
<label>Password</label>
<input type="password" name="cpassword" required>

</div>
<div class="form-group">

<button type="submit"class="btn btn-default">Login</button>

</div>
</form>
</div>
</div>

<footer>&copy; NIIT E-Commerce Case Study Project 2017</footer>
</body>
</html>