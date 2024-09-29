<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<html>
	<head>
		<meta charset="UTF-8">
		<title>Purchases</title>
	</head>
	
	<body>
	<jsp:include page="../welcome.jsp"></jsp:include>
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Purchases list</h5>
							<table class="table">
								<thead>
									<tr>
										<th>ID</th>
										<th>DATE</th>
										<th>QUANTITY</th>
										<th>PRODUCT</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${purchaseList}" var="purchase">
										<tr>
											<td>${purchase.id}</td>
											<td>${purchase.date}</td>
											<td>${purchase.quantity}</td>
											<td>${purchase.product.name}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Add Purchase</h5>
							<form action="purchases" method="post">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Date</label>
									<input type="date" name="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
								</div>
								<div class="mb-3">
									<label for="exampleInputPassword1" class="form-label">Quantity</label>
									<input type="number" min="1" name="quantity" class="form-control" id="exampleInputPassword1">
								</div>
								<div class="mb-3">
									<label for="exampleInputPassword1" class="form-label">Product</label>
									<select name="product" class="form-select">
										<c:forEach items="${productList}" var="product">
											<option value="${product.reference}">${product.name}</option>
										</c:forEach>
									</select>
								</div>
								<button type="submit" class="btn btn-primary">Submit</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>