<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Login</title>
<style>
input[type=text],input[type=password]{
	width:100%;
	padding:12px 20px;
	margin:8px;
	display:inline-block;
	border:1px solid #ccc;
	box-sizing:border-box;
}
</style>
</head>
<body>
<jsp:include page="Header.jsp"/>
<div class="container-fluid">
<div class="jumbotron">
<p><strong>Please Login</strong></p>


<form  action="j_spring_security_check"  method="post">



<div class="form-group">
<label>Username</label>
<input type="text"  pattern="[a-z0-9._%+-]+@[a-z]+\.[a-z]{2,3}$" title="hrishikeskrishna@rediffmail.com" name="cusername" required>

</div>

<div class="form-group">
<label>Password</label>
<input type="password" name="cpassword" required>

</div>
<div class="form-group">

<button type="submit"class="btn btn-primary">Login</button>

</div>
</form>


</div>
</div>
<jsp:include page="Footer.jsp"/>
</body>
</html>