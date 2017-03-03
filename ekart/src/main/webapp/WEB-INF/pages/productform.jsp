<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ page isELIgnored="false"%>
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Form</title>
<link
	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script>
	$(function() {
		$('input[name=mfg]').datepicker({
			format : 'YYYY-mm-dd'
		});
	});
</script>
</head>
<body>
	<div class="container-wrapper">
		<div class="container">
			<c:url value="/admin/product/addProduct" var="url"></c:url>
			<form:form action="${url}" commandName="product">

				<div class="form-group">
					<div>
						<label for="id"></label>
						<form:hidden path="id" />

					</div>
				</div>
				<br>
				<br>
				<br>
				<div>
					<div class="form-group">
						<label for="name">Product name</label>
						<form:input path="name" class="form-control" />
						<form:errors path="name" cssStyle="color:#ff0000"></form:errors>
					</div>
				</div>
				<div>
					<div class="form-group">
						<label for="description">Description</label>
						<form:input path="description" class="form-control" />
						<form:errors path="description" cssStyle="color:#ff0000"></form:errors>
					</div>
				</div>
				<div>
					<div class="form-group">
						<label for="price">Price</label>
						<form:input path="price" class="form-control" />
						<form:errors path="price" cssStyle="color:#ff0000"></form:errors>
					</div>
				</div>
				<div>
					<div class="form-group">
						<label for="quantity">Quantity</label>
						<form:input path="quantity" class="form-control" />
						<form:errors path="quantity" cssStyle="color:#ff0000"></form:errors>
					</div>
				</div>
				<div>
					<div class="form-group">
						<label for="mfg">MF Date</label>
						<form:input path="mfg" class="form-control" />
						<form:errors path="mfg" cssStyle="color:#ff0000"></form:errors>
					</div>
				</div>
				<div class="form-group">
					<label for="categoryDetails">Category</label>
					<c:forEach var="c" items="${categories}">
						<form:radiobutton path="categoryDetails.id" value="${c.id}" />${c.categoryDetails }
</c:forEach>
					<form:errors path="categoryDetails" cssStyle="color:#ff0000"></form:errors>
				</div>
	


<div>
<input type="submit" value="Add Product" class="btn btn-default" name="action">
</div>

		</form:form>

	</div>
	</div>

</body>
</html>