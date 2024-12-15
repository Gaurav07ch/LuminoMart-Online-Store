<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="css/addpage.css">
<title>add page</title>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include><br>
	<hr>

	<h3 align="center">Add Product Details</h3>
	<div class="col-md-4 col-md-offset-4" style="margin-left: 500px" id="login">
		<section id="inner-wrapper" class="login">
			<article>
				<form action="insert-product" method="post">
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-user">
							</i></span> <input type="text" name="name" class="form-control"
								placeholder="Product Name">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-envelope">
							</i></span> <input type="number" name="price" class="form-control" placeholder="Price">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-key">
							</i></span> <input type="number" name="quantity" class="form-control" placeholder="Quantity">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-key">
							</i></span> <input type="text" name="category" class="form-control" placeholder="Category">
						</div>
					</div>
					<button type="submit" class="btn btn-success btn-block">Save
						Record</button>
				</form>
			</article>
		</section>
	</div>
</body>
</html>