<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.css" />
<script type="text/javascript" src="./resources/js/validation_addProduct.js"></script>
<title>상품 수정</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 수정</h1>
		</div>
	</div>
	<%@ include file="dbconn.jsp"%>
	<%
		String productId = request.getParameter("id");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		String sql = "select * from product where p_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, productId);
		rs = pstmt.executeQuery();
		if (rs.next()) {
	%>
	<div class="container">
		<div class="text-right">
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
		</div>
		<div class="row">
			<div class="col-md-5">
				<img src="./resources/images/<%=rs.getString("p_filename")%>" alt="image" style="width: 100%" />
			</div>
			<div class="col-md-7">
				<form name="newProduct" action="./processUpdateProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
					<div class="form-group row">
						<label class="col-sm-2">분류</label>
						<div class="col-sm-3">
							<input type="radio" name="category" value="Top">상의
							<input type="radio" name="category" value="Outer" >아우터
							<input type="radio" name="category" value="Pants" >바지
							<input type="radio" name="category" value="Skirt" >치마
							<input type="radio" name="category" value="Dress" >원피스
							<input type="radio" name="category" value="Accessary" >악세사리
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">상품 코드</label>
						<div class="col-sm-3">
							<input type="text" id="productId" name="productId" class="form-control" value='<%=rs.getString("p_id")%>'>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">상품 명</label>
						<div class="col-sm-3">
							<input type="text" id="name" name="name" class="form-control" value="<%=rs.getString("p_name")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">가격</label>
						<div class="col-sm-3">
							<input type="text" id="unitPrice" name="unitPrice" class="form-control" value="<%=rs.getInt("p_unitPrice")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">상세 설명</label>
						<div class="col-sm-5">
							<textarea name="description" cols="50" rows="2" class="form-control"><%=rs.getString("p_description")%></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">제조국</label>
						<div class="col-sm-3">
							<input type="text" name="country" class="form-control" value="<%=rs.getString("p_makeCountry")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">재고 수</label>
						<div class="col-sm-3">
							<input type="text" id="unitsInStock" name="unitsInStock" class="form-control" value="<%=rs.getLong("p_unitsInStock")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">이미지</label>
						<div class="col-sm-5">
							<input type="file" name="productImage" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-10 ">
							<input type="submit" class="btn btn-primary" value="등록">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%
		}
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	%>
</body>
</html>
