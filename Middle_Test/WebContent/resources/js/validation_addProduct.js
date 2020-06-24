function CheckAddProduct() {

//	var category = document.getElementById("category");
	var productId= document.getElementById("productId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var unitsInStock = document.getElementById("unitsInStock");
	
	if (!check(/^.{4,11}/, productId, "[상품 코드]\n5~12자까지 입력하세요")) {
		return false;
	}
	
//	if (category.value = "Top") {
//		if (!check(/^T/), productId) {
//			alert("[상품 코드]\n첫 글자는 반드시 T로 시작하세요");
//		}
//		return false;
//	} else if (categoty.value = "Outer") {
//		if (!check(/^O/)) {
//			alert("[상품 코드]\n첫 글자는 반드시 O로 시작하세요");
//		}
//		return false;
//	} else if (category.value = "Pants") {
//		if (!check(/^P/), productId) {
//			alert("[상품 코드]\n첫 글자는 반드시 P로 시작하세요");
//		}
//		return false;
//	} else if (category.value = "Skirt") {
//		if (!check(/^S/), productId) {
//			alert("[상품 코드]\n첫 글자는 반드시 S로 시작하세요");
//		}
//		return false;
//	} else if (category.value = "Dress") {
//		if (!check(/^D/), productId){
//			alert("[상품 코드]\n첫 글자는 반드시 D로 시작하세요");
//		}
//		return false;
//	} else if  (category.value = "Accessary") {
//		if (!check(/^A/), productId){
//			alert("[상품 코드]\n첫 글자는 반드시 A로 시작하세요");
//		}
//		return false;
//	}

	if (name.value.length < 1 || name.value.length > 50) {
		alert("[상품명]\n반드시 입력해주세요\n최대 50자까지 입력하세요");
		name.select();
		name.focus();
		return false;
	}
	if (unitPrice.value.length == 0 || isNaN(unitPrice.value)) {
		alert("[가격]\n숫자만 입력하세요");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}

	if (unitPrice.value < 0) {
		alert("[가격]\n음수를 입력할 수 없습니다");
		unitPrice.select();
		unitPrice.focus();
		return false;
	} else if (!check(/^\d+(?:[.]?[\d]?[\d])?$/, unitPrice,
			"[가격]\n소수점 둘째 자리까지만 입력하세요"))
		return false;

	if (isNaN(unitsInStock.value)) {
		alert("[재고 수]\n숫자만 입력하세요");
		unitsInStock.select();
		unitsInStock.focus();
		return false;
	}

	
	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	 document.newProduct.submit()
}
