<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<link rel="stylesheet"	href="./resources/css/bootstrap.css" />
<script type="text/javascript" src="./resources/js/validation_addProduct.js"></script>	
<title>상품 등록</title>
</head>
<body>
	<fmt:setLocale value='<%= request.getParameter("languege") %>'/>
	<fmt:bundle basename="bundle.message" >
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><fmt:message key="title" /></h1>
		</div>
	</div>
	<div class="container">
		<div class="text-right">
			<a href="?languege=ko" >Korean</a> | <a href="?languege=en" >English</a>
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
		</div>
		<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-groub row">
				<label class="col-sm-2"><fmt:message key="category" /></label>
				<div class="col-sm-5">
					<input type="radio" name="category" value="Top">
					<fmt:message key="Top" />
					<input type="radio" name="category" value="Outer" >
					<fmt:message key="Outer" />
					<input type="radio" name="category" value="Pants" >
					<fmt:message key="Pants" />
					<input type="radio" name="category" value="Skirt" >
					<fmt:message key="Skirt" />
					<input type="radio" name="category" value="Dress" >
					<fmt:message key="Dress" />
					<input type="radio" name="category" value="Accessary" >
					<fmt:message key="Accessary" />
				</div>
			</div>
			<div class="form-groub row">
				<label class="col-sm-2"><fmt:message key="productId" /></label>
				<div class="col-sm-3">
					<input type="text" id="productId" name="productId" class="form-control" >
				</div>
			</div>
			<div class="form-groub row">
				<label class="col-sm-2"><fmt:message key="pname" /></label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control" >
				</div>
			</div>
			<div class="form-groub row">
				<label class="col-sm-2"><fmt:message key="unitPrice" /></label>
				<div class="col-sm-3">
					<input type="text" id="unitPrice" name="unitPrice" class="form-control" >
				</div>
			</div>
			<div class="form-groub row">
				<label class="col-sm-2"><fmt:message key="description" /></label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-groub row">
				<label class="col-sm-2"><fmt:message key="makeCountry" /></label>
				<div class="col-sm-3">
					<input type="text" name="makeCountry" class="form-control" >
				</div>
			</div>
			<div class="form-groub row">
				<label class="col-sm-2"><fmt:message key="unitsInStock" /></label>
				<div class="col-sm-3">
					<input type="text" id="unitsInStock" name="unitsInStock" class="form-control" >
				</div>
			</div>
			<div class ="form-groub row">
				<label class="col-sm-2"><fmt:message key="productImage" /></label>
				<div class="col-sm-5">
					<input type="file" name="productImage" class="form-control">
				</div>
			</div>
			<div class="form-groub row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="button" class="btn btn-primary" value="<fmt:message key="button" />" onclick="CheckAddProduct()">
				</div>
			</div>
		</form>
	</div>
</fmt:bundle>
</body>
</html>