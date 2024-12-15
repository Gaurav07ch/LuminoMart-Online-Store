 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>display page</title>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include><br>
	<hr>
	<h3 align="center">All Products Details</h3>
	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">Pid</th>
				<th scope="col">Product Name</th>
				<th scope="col">Product Price</th>
				<th scope="col">Product Quantity</th>
				<th scope="col">Product Category</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="p" items="${products}">
				<tr>
					<th scope="row">${p.p_id}</th>
					<td>${p.name}</td>
					<td>${p.price}</td>
					<td>${p.quantity}</td>
					<td>${p.category}</td>
					<td><a href="view-product?p_id=${p.p_id}" class="btn btn-info">UPDATE</a>  &nbsp;
					<a href="delete-product?p_id=${p.p_id}" class="btn btn-danger">DELETE</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>