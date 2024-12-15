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
<link rel="stylesheet" href="css/addpage.css">
<title>update page</title>
</head>
<body>
 <jsp:include page="navbar.jsp"></jsp:include><br>
	<hr>
	<h3 align="center">Update Product Details</h3>
	<div class="col-md-4 col-md-offset-4" style="margin-left: 500px" id="login">
		<section id="inner-wrapper" class="login">
			<article>
				<form action="update-product" method="post">
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-user">
							</i></span> <input type="number" name="p_id" class="form-control"
								placeholder="Product Id" value="${p.p_id}">
						</div>
						<br>
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-user">
							</i></span> <input type="text" name="name" class="form-control"
								placeholder="Product Name" value="${p.name}">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-envelope">
							</i></span> <input type="number" name="price" class="form-control" placeholder="Price" value="${p.price}">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-key">
							</i></span> <input type="number" name="quantity" class="form-control" placeholder="Quantity" value="${p.quantity}">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-key">
							</i></span> <input type="text" name="category" class="form-control" placeholder="Category" value="${p.category}">
						</div>
					</div>
					<button type="submit" class="btn btn-success btn-block">Update
						Record</button>
				</form>
			</article>
		</section>
	</div>
</body>
</html>