<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.css" />
<title>Welcome</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div class="jumbotron">
		
	</div>
	<div class="container">
		<div class="text-center">
			<h3>공지 올라갈것임</h3>
		</div>
		<hr>
	</div>
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp"%>
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select *from product";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next())
				{
			%>
			<div class="col-md-4">
				<img src="./resources/images/<%=rs.getString("p_fileName") %>" style="width: 320px">
				<h3><%=rs.getString("p_name") %></h3>
				<p><%=rs.getString("p_unitPrice") %>원
				<p>
					<a href="./product.jsp?id=<%=rs.getString("p_id") %>"
						class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
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
		</div>
		<hr>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>