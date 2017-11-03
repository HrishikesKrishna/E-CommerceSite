<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!--for using c for each and all other which starts with c prefix c  -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Admin</title>

</head>
<body>
	<jsp:include page="Header.jsp" />
	<div class="container-fluid">
		<div class="jumbotron">

			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#product">Product</a></li>
				<li><a data-toggle="tab" href="#category">Category</a></li>
				<li><a data-toggle="tab" href="#supplier">Supplier</a></li>
				<li><a data-toggle="tab" href="#list">List</a></li>

			</ul>

			<div class="tab-content">

				<div id="product" class="tab-pane fade in active">
					<br>
					<form class="form-horizontal" action="addp" method="post"
						enctype="multipart/form-data">
						<!-- by default every method is get, don't give get method ,because it passes data through unique resource locator, not secure it is visible in url bar,when refreshed the data is passed again -->
						<div class="form-group">
							<label class="control-label col-sm-2"><b>Name</b></label>
							<div class="col-sm-10">
								<input type="text" placeholder="Enter Product name" name="name"
									required>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2"><b>Stock</b></label>
							<div class="col-sm-10">
								<input type="number" placeholder="Enter Stock" name="stock"
									required>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2" for="inputName"><b>Category</b></label>
							<div class="col-sm-10">
								<select name="cat" required>
									<option value="${c.id}">Select Category</option>
									<c:forEach var="c" items="${cat}">
										<!--while retrieving from controller to jsp page use dollar sign  -->
										<option value="${c.id}">${c.catname}</option>
									</c:forEach>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2"><b>Supplier</b></label>
							<div class="col-sm-10">
								<select name="sup" required>
									<option value="${s.id}">Select Supplier</option>
									<c:forEach var="s" items="${sup}">
										<option value="${s.id}">${s.supname}</option>
									</c:forEach>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2"><b>Image</b></label>
							<div class="col-sm-10">
								<input type="file" name="img" required />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2"><b>Short
									Description</b></label>
							<div class="col-sm-10">
								<input type="text" placeholder="Enter Product Description"
									name="stds" required>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2"><b>Price</b></label>
							<div class="col-sm-10">
								<input type="text" placeholder="Enter Product price"
									name="price" required>
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-2 col-sm-offset-2">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</div>


					</form>
				</div>


				<div id="category" class="tab-pane fade">
					<form class="form-horizontal" action="addc" method=post>
						<div class="form-group">
							<br> <label class="control-label col-sm-2"><b>Name</b></label>
							<div class="col-sm-10">
								<input type="text" placeholder="Enter Category name"
									name="Catname" required>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-2 col-sm-offset-2 ">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</div>
					</form>
				</div>

				<div id="supplier" class="tab-pane fade">
					<form class="form-horizontal" action="adds" method=post>
						<div class="form-group">
							<br> <label class="control-label col-sm-2"><b>Name</b></label>
							<div class="col-sm-10">
								<input type="text" placeholder="Enter Supplier Name"
									name="supname" required>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2"><b>Address</b></label>
							<div class="col-sm-10">
								<input type="text" placeholder="Enter Supplier Address"
									name="sadr" required>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-2 col-sm-offset-2">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</div>
					</form>
				</div>

				<div id="list" class="tab-pane fade">

					<ul>
						<br>
						<li><div>
								<a href="listp?stat=">Products List</a>
							</div></li>
						<br>
						<li><div>
								<a href="listc">Category List</a>
							</div></li>
						<br>
						<li><div>
								<a href="lists">Suppliers List</a>
							</div></li>
					</ul>

				</div>
			</div>
		</div>
	</div>
</body>
</html>