<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Sales</title>
	</head>
	<body>
		<jsp:include page="../welcome.jsp"></jsp:include>
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Sales list</h5>
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
									<c:forEach items="${salesList}" var="sale">
										<tr>
											<td>${sale.id}</td>
											<td><fmt:formatDate value="${sale.date}" pattern="dd-MM-yyyy"/></td>
											<td>${sale.quantity}</td>
											<td>${sale.product.name}</td>
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
							<h5 class="card-title">Add sale</h5>
							<form action="sales" method="post">
								<div class="mb-3">
									<label for="exampleInputPassword1" class="form-label">Product</label>
									<select name="reference" class="form-select">
										<c:forEach items="${productList}" var="product">
											<option value="${product.reference}">${product.name}</option>
										</c:forEach>
									</select>
								</div>

								<div class="mb-3">
									<label for="exampleInputPassword1" class="form-label">Quantity</label>
									<input type="number" min="1" name="quantity" class="form-control" id="exampleInputPassword1">
								</div>

								<button type="submit" class="btn btn-primary">Submit</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
</html>