<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>">
<!-- 포트원 sdk -->
<script type="text/javascript" src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>


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
		IMP.request_pay(
	        {
	            pg: 'kakaopay.TC0ONETIME',
	            pay_method: 'kakaopay',
	            merchant_uid: "IMP" + makeMerchantUid,
	            name: 'kakaopay',  
	            amount: 1004,
	            buyer_email: 'Iamport@chai.finance',
	            buyer_name: '포트원 기술지원팀',
	            buyer_tel: '010-1234-5678',
	            buyer_addr: '서울특별시 강남구 삼성동',
	            buyer_postcode: '123-456',
	        },function (rsp){
	            if(rsp.success){
	                console.log(rsp);
	                console.log(rsp.imp_uid);
	                console.log(rsp.merchant_uid);
	                console.log(rsp.paid_amount);
	                console.log(rsp.name);
	                console.log("성공");
	              

	                $.ajax({
	                	type : "POST",
	                	url : "/payment.do",
	                	data : {
	                		   	imp_uid : rsp.imp_uid,
		                        merchant_uid : rsp.merchant_uid,
		                        name : rsp.name,
		                        paid_amount : rsp.paid_amount
	                	
	                },
	                success : function(res){
	                	console.log(rsp.merchant_uid)
	                	location.href= "/orderResult.do?merchant_uid="+ rsp.merchant_uid;
	                },
	                error :  function(response){
	                }
	            })
	            }else{
	                console.log(rsp);
	                console.log("실패");	   
	                alert('결제에 실패했습니다. 에러 내용:${rsp.error_msg}');
	            }
	        }
	    );
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button onclick="requestPay()">결제하기</button>
	
</body>
</html>