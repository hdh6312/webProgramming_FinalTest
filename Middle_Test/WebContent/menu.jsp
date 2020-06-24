<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>

<!DOCTYPE HTML>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>메뉴</title>
<meta name="author" content="Antonio Pratas">
<link rel="stylesheet" type="text/css"
	href="http://meyerweb.com/eric/tools/css/reset/reset.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<style type="text/css">

/* Importing Amaranth Font for menu text */
@import url(http://fonts.googleapis.com/css?family=Amaranth);

@font-face {
	font-family: 'gashigogi_M';
	src: url("resources/font/gashigogi_M.ttf") format("truetype");
}

header, a, img, li {
	transition: all 1s;
	-moz-transition: all 1s; /* Firefox 4 */
	-webkit-transition: all 1s; /* Safari and Chrome */
	-o-transition: all 1s; /* Opera */
}

/* Basic layout */

body {
	background-color: #ffffff;
}

ul {
	list-style-type: none;
	float: right;
}

li {
	display: inline;
	float: left;
}

img.logo {
	float: left;
	padding-left: 120px
}

nav {
	width: 960px;
	margin-left: 100px;
}

section.stretch {
	float: left;
	height: 1500px;
	width: 100%;
}

section.stretch p {
	font-family: 'gashigogi_M';
	font-size: 30px;
	color: #969696;
	text-align: center;
	position: relative;
	margin-top: 250px;
}

section.stretch p.bottom {
	top: 100%;
}

header {
	background: #ffffff;
	float: left;
	width: 100%;
	position: fixed;
	z-index: 10;
}

header a {
	color: #177991; 
	text-decoration: none;
	font-family: 'gashigogi_M';
	text-transform: uppercase;
}

header a.active, header a:hover {
	color: #177991;
}

header li {
	margin-right: 30px;
}

/* Sizes for the bigger menu */
header.large {
	height: 120px;
}

header.large img {
	width: 400px;
	height: 130px;
}

header.large li {
	margin-top: 45px;
}

/* Sizes for the smaller menu */
header.small {
	height: 50px;
}

header.small img {
	width: 287px;
	height: 69px;
	margin-top: -10px;
}

header.small li {
	margin-top: 17px;
}
</style>

<script type="text/javascript">
		$(document).on("scroll",function(){
			if($(document).scrollTop()>100){ 
				$("header").removeClass("large").addClass("small");
				}
			else{
				$("header").removeClass("small").addClass("large");
				}
			});
	</script>

</head>

<body>

	<header class="large">
			<a href="./welcome.jsp"><img class="logo" src="./resources/css/Logo.png" /></a>
			<ul>
				<c:choose>
					<c:when test="${empty sessionId}">
						<li><a href="<c:url value="/loginMember.jsp"/>">로그인 </a></li>
						<li><a href='<c:url value="/addMember.jsp"/>'>회원 가입</a></li>
					</c:when>
					<c:otherwise>
						<li style="padding-top: 7px; color: white">[<%=sessionId%>님]</li>
						<li><a href="<c:url value="/logoutMember.jsp"/>">로그아웃 </a></li>
						<li><a href="<c:url value="/updateMember.jsp"/>">회원 수정</a></li>
					</c:otherwise>
				</c:choose>
				<li><a href="<c:url value="/products.jsp"/>">상품 목록</a></li>
				<li><a href="<c:url value="/addProduct.jsp"/>">상품 등록</a></li>
				<li><a href="<c:url value="/editProduct.jsp?edit=update"/>">상품 수정</a></li>
				<li><a href="<c:url value="/editProduct.jsp?edit=delete"/>">상품 삭제</a></li>
				<li><a href="<c:url value="/BoardListAction.do?pageNum=1"/>">게시판</a></li>
			</ul>
	</header>

</body>

</html>