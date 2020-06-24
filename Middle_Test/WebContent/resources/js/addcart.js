function addToCart() {
	var userid = '<%=(String) session.getAttribute("sessionId")%>';
	if (userid == null)
	{
		var message = "먼저 로그인 하신후 사용 가능합니다.";
		message = URLEncoder.encode(message, "utf-8");
		response.sendRedirect("loginMember.jsp?message=" + message);
	}
	else
	{
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
}