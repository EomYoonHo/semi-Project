<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- jQuery -->
<script type="text/javascript"
	src="<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>"></script>
<!-- 포트원 sdk -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script type="text/javascript">
	var IMP = window.IMP;
	IMP.init('imp88413461');

	var today = new Date();
	var hours = today.getHours();
	var minutes = today.getMinutes();
	var seconds = today.getSeconds();
	var milliseconds = today.getMilliseconds();
	var makeMerchantUid = hours + minutes + seconds + milliseconds;

	function requestPay() {
		IMP.request_pay({
			pg : 'nice_v2',
			pay_method : 'card',
			merchant_uid : "IMP" + makeMerchantUid,
			name : 'nice',
			amount : 1004,
			buyer_email : 'Iamport@chai.finance',
			buyer_name : '포트원 기술지원팀',
			buyer_tel : '010-1234-5678',
			buyer_addr : '서울특별시 강남구 삼성동',
			buyer_postcode : '123-456',
		}, function(rsp) {
			if (rsp.success) {
				console.log(rsp);
			} else {
				console.log(rsp);
			}
		});
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button onclick="requestPay()">결제하기</button>
</body>
</html>