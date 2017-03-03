<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>particular product details</title>
</head>
<body>
<br>	
<br>	
<br>	
<br>	

	<div>
		<div class="page-header">
			<b>PRODUCT DETAILS</b>
			<table>
				<tr>
					<td>Product Name:</td>
					<td>${product.name}</td>

				</tr>
				<tr>
					<td>Product Description:</td>
					<td>${product.description}</td>

				</tr>
				<tr>
					<td>Product Price:</td>
					<td>${product.price}</td>

				</tr>
				<tr>
					<td>Product Category details:</td>
					<td>${product.categoryDetails.categoryDetails}</td>

				</tr>
				<tr>
					<td>Manufacturing date:</td>
					<td>${product.mfg}</td>

				</tr>
			</table>
		</div>
	</div>

	

</body>
<%@include file="footer.jsp"%>
</html>