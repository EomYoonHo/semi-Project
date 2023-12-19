<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">

<title>semi-Project</title>
<link rel="stylesheet" href="/resources/css/setting.css">
<link rel="stylesheet" href="/resources/css/plugin.css">
<link rel="stylesheet" href="/resources/css/semi.css">
<link rel="stylesheet" href="/resources/css/common.css">
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="/resources/css/table.css">
<link href="https://fonts.googleapis.com/css?family=Lato:400,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cabin:400,700|Playfair+Display:900"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Ephesis&display=swap"
	rel="stylesheet">


<!-- Custom stlylesheet -->
<!-- Google font -->
<link type="text/css" rel="stylesheet"
	href="/resources/css/bootstrap.min.css" />
<link href="https://fonts.googleapis.com/css?family=PT+Sans:400"
	rel="stylesheet">

<!-- Bootstrap -->


<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="/resources/css/style1.css" />
</head>

<body>
	<!-- [S]glamping-N1 -->
	<header class="glamping-N1" data-bid="jILPJ5JfH5">
<%@ include file="/views/common/header.jsp" %>
	</header>
	<!-- [E]glamping-N1 -->
	<!-- [S]glamping-N4 -->
	<main class="th-layout-main ">
		<div class="glamping-N3">
			<img class="footer-backimg img-pc" src="/resources/image/airplane2.jpg"
				alt="PC 푸터 비주얼">
		</div>
		<br> <br> <br> <br>
		<div class="page-title">
			<div class="container">
				<h3 class="pgc" style="font-size: 100px;">
					<b>Airplane Ticket</b>
				</h3>
				<h3 class="pgc">Have a comfortable flight.</h3>
			</div>
		</div>
		<!-- dd -->
		<div class="glamping-N5" data-bid="KmLpj5JFIP"
			style="padding-top: 0px; padding-bottom: 0px;">
			<div class="contents-inner">
				<div class="contents-container container-md">
					<div class="cardset-wrap">
						<!-- 대한항공 -->
						<div
							class="cardset cardset-xl cardset-deco cardset-hor row-rever bborder">
							<!-- 항공편 테이블 -->
							<div class="cardset-body" style="width: 70%; height: 150px;">
								<div class="row fhg">
									<div class="cell air">
										<br>
										<p class="air_name dfjc">
											<b style="font-size: 35px;">대한항공</b>
										</p>
										<p class="txt dfjc">
											<b>airline:</b><br> <span class="divider_dot"> <b>Korean
													Air</b></span>
										</p>
									</div>
									<div class="cell type">
										<div class="item_course">
											<span class="time dfjc"><b>${airlineDTO.at_godate}</b>&nbsp;&nbsp;
												<span class="city"><b>${airlineDTO.at_starting_point}
														- ${airlineDTO.at_destination}</b></span></span> <span class="move_arrow">
												<p class="wait">
													<span class="tooltip text">경유 1회</span>
												</p> <br>
												<p class="load dfjc">
													<img class="isize" src="/resources/image/티켓plane.png" alt="">
												</p>
											</span> <br> <span class="time dfjc"><b>${airlineDTO.at_backdate}</b>&nbsp;&nbsp;
												<span class="city"><b>${airlineDTO.at_destination}
														- ${airlineDTO.at_starting_point}</b></span></span>
										</div>
									</div>
									<div class="cell pay">
										<br> <br>
										<p class="price">
											<span id="korea" style="font-size: 20px; font-weight: bold;">
											</span> <span><b style="font-size: 30px;">￦</b></span>
										</p>
									</div>
									<div class="cell seat">

										<div class="pt-1">
											<br>
											<button class="custom-btn btn-6-3"
												onclick="requestPayAir('koreaAirLine')">
												<span>예약</span>
											</button>
										</div>

									</div>
								</div>
							</div>
							<!-- 항공사 사진 -->
							<div class="cardset-body dfjc" style="width: 30%; height: 150px;">
								<img src="/resources/image/로고대한항공.png" alt="">
							</div>
						</div>
						<!-- 진에어항공 -->
						<div
							class="cardset cardset-xl cardset-deco cardset-hor row-rever bborder">
							<!-- 항공편 테이블 -->
							<div class="cardset-body" style="width: 70%; height: 150px;">
								<div class="row fhg">
									<div class="cell air">
										<br>
										<p class="air_name dfjc">
											<b style="font-size: 35px;">진에어항공</b>
										</p>
										<p class="txt dfjc">
											<b>airline:</b><br> <span class="divider_dot"><b>Jin
													Air</b></span>
										</p>
									</div>
									<div class="cell type">
										<div class="item_course">
											<span class="time dfjc"><b>${airlineDTO.at_godate}</b>&nbsp;&nbsp;
												<span class="city"><b>${airlineDTO.at_starting_point}
														- ${airlineDTO.at_destination}</b></span></span> <span class="move_arrow">
												<p class="wait">
													<span class="tooltip text">경유 1회</span>
												</p> <br>
												<p class="load dfjc">
													<img class="isize" src="/resources/image/티켓plane.png" alt="">
												</p>
											</span> <br> <span class="time dfjc"><b>${airlineDTO.at_backdate}</b>&nbsp;&nbsp;
												<span class="city"><b>${airlineDTO.at_destination}
														- ${airlineDTO.at_starting_point}</b></span></span>
										</div>
									</div>
									<div class="cell pay">
										<br> <br>
										<p class="price">
											<span id="jinAir" style="font-size: 20px; font-weight: bold;"></span>
											<span><b style="font-size: 30px;">￦</b></span>
										</p>
									</div>
									<div class="cell seat">

										<div class="pt-1">
											<br>
											<button class="custom-btn btn-6-3"
												onclick="requestPayAir('jinAirAirLine')">
												<span>예약</span>
											</button>
										</div>
									</div>
								</div>
							</div>
							<!-- 항공사 사진 -->
							<div class="cardset-body dfjc" style="width: 30%; height: 150px;">
								<img src="/resources/image/로고진에어.png" alt="">
							</div>
						</div>
						<!-- 아시아나항공 -->
						<div
							class="cardset cardset-xl cardset-deco cardset-hor row-rever bborder">
							<!-- 항공편 테이블 -->
							<div class="cardset-body" style="width: 70%; height: 150px;">
								<div class="row fhg">
									<div class="cell air">
										<br>
										<p class="air_name dfjc">
											<b style="font-size: 35px;">아시아나항공</b>
										</p>
										<p class="txt dfjc">
											<b>airline:</b><br> <span class="divider_dot"> <b>Asiana
													Air</b></span>
										</p>
									</div>
									<div class="cell type">
										<div class="item_course">
											<span class="time dfjc"><b>${airlineDTO.at_godate}</b>&nbsp;&nbsp;
												<span class="city"><b>${airlineDTO.at_starting_point}
														- ${airlineDTO.at_destination}</b></span></span> <span class="move_arrow">
												<p class="wait">
													<span class="tooltip text">경유 1회</span>
												</p> <br>
												<p class="load dfjc">
													<img class="isize" src="/resources/image/티켓plane.png" alt="">
												</p>
											</span> <br> <span class="time dfjc"><b>${airlineDTO.at_backdate}</b>&nbsp;&nbsp;
												<span class="city"><b>${airlineDTO.at_destination}
														- ${airlineDTO.at_starting_point}</b></span></span>
										</div>
									</div>
									<div class="cell pay">
										<br> <br>
										<p class="price">
											<span id="asiana" style="font-size: 20px; font-weight: bold;"></span>
											<span><b style="font-size: 30px;">￦</b></span>
										</p>
									</div>
									<div class="cell seat">

										<div class="pt-1">
											<br>
											<button class="custom-btn btn-6-3"
												onclick="requestPayAir('asianaAirLine')">
												<span>예약</span>
											</button>
										</div>

									</div>
								</div>
							</div>
							<!-- 항공사 사진 -->
							<div class="cardset-body dfjc" style="width: 30%; height: 150px;">
								<img src="/resources/image/로고아시아나.png" alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- dd -->
		<br> <br> <br>
		<div class="page-title">
			<div class="container">
				<h3 class="pgc" style="font-size: 50px;">Thank you for using [
					Pess-Port ] travel agency.</h3>
			</div>
		</div>


		<!-- [E]glamping-N4 -->

		<!-- [E]glamping-N9 -->
	</main>

	<!-- [S]glamping-N3 -->
	<footer class="glamping-N3" data-bid="hNLPJ5jFl2">
<%@ include file="/views/common/footer.jsp" %>
	</footer>
</body>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-1.12.4.min.js"
	integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
	crossorigin="anonymous"></script>

<!-- 포트원 sdk -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script type="text/javascript">
        var asianaPrice = Math.ceil(1.1 * ${ airlineDTO.at_all_price });
        var jinAirPrice = Math.ceil(1 * ${ airlineDTO.at_all_price });
        var koreaPrice = Math.ceil(1.04 * ${ airlineDTO.at_all_price });

        var IMP = window.IMP;
        IMP.init('imp88413461');

        var today = new Date();
        var hours = today.getHours();
        var minutes = today.getMinutes();
        var seconds = today.getSeconds();
        var milliseconds = today.getMilliseconds();
        var makeMerchantUid = hours + minutes + seconds + milliseconds;
        var at_all_price = 0;
        var at_airLine;

        $(function () {
            BillAsiana();
            BillJinAir();
            BillKorea();
        });
        function BillAsiana() {
            let asiana = document.getElementById("asiana");
            asiana.innerHTML = Math.ceil(1.1 * ${ airlineDTO.at_all_price });
        }
        function BillJinAir() {
            let jinAir = document.getElementById("jinAir");
            jinAir.innerHTML = Math.ceil(1 * ${ airlineDTO.at_all_price });
        }
        function BillKorea() {
            let korea = document.getElementById("korea");
            korea.innerHTML = Math.ceil(1.04 * ${ airlineDTO.at_all_price });
        }
        function requestPayAir(airLine) {
            if (airLine == 'koreaAirLine') {
                at_all_price = koreaPrice;
                at_airLine='대한항공';
            } else if (airLine == 'jinAirAirLine') {
                at_all_price = jinAirPrice;
                at_airLine='진에어항공';
            } else if (airLine == 'asianaAirLine') {
                at_all_price = asianaPrice;
                at_airLine='아시아나항공';
                
            }

            IMP.request_pay(
                {
                    pg: 'kakaopay.TC0ONETIME',//pg사
                    pay_method: 'kakaopay',//결제수단
                    merchant_uid: "IMP" + makeMerchantUid,//가맹점 주문번호
                    name: "${airlineDTO.korean_start}-${airlineDTO.korean_destination}/${airlineDTO.at_godate}~${airlineDTO.at_backdate}여행",//결제대상 제품명
                    amount: at_all_price, //결제금액
                    buyer_email: "${memberInfo.m_email}",//주문자이메일
                    buyer_name: "${memberInfo.m_name}",//주문자명
                    buyer_tel: "${memberInfo.m_phone}",//주문자 연락처
                    buyer_addr: '서울특별시 강남구 삼성동',//주문자 주소
                    buyer_postcode: '123-456',//주문자 우편
                }, function (rsp) {
                    if (rsp.success) {
                        console.log(rsp);
                        console.log("성공");
                        $.ajax({
                            type: "POST",
                            url: "/AirLinePayment.do",
                            data: {
                                		at_godate: "${airlineDTO.at_godate}",
                            			at_backdate : "${airlineDTO.at_backdate}",
                            			at_starting_point : "${airlineDTO.at_starting_point}",
                            			at_destination : "${airlineDTO.at_destination}",
                            			at_airLine : at_airLine,
                            			at_people: ${airlineDTO.at_people},
                            			at_price_per : ${airlineDTO.at_price_per},
                            			at_all_price : rsp.paid_amount,//결제금액/number
                            			at_imp_uid : rsp.imp_uid,	//포트원 고유 결제 번호
                            			m_no : ${memberInfo.m_no},
                            			korean_start:"${airlineDTO.korean_start}",
                            			korean_destination:"${airlineDTO.korean_destination}",
                            			name : rsp.name	// 상품명
                            			//point : Math.ceil(rsp.paid_amount / 100),
                            			//buyer_tel : rsp.buyer_tel,	//주문자 연락처
                            			//buyer_name : rsp.buyer_name,	//주문자명
                            			//buyer_email : rsp.buyer_email	//주문자 email
    	               				 },
                    success: function(res) {
                        console.log("결제 성공 + db생성 성공");
                        location.href= "/AirLineResult.do?at_imp_uid="+rsp.imp_uid+"&&korean_start="+'${airlineDTO.korean_start}'+"&&korean_destination="+'${airlineDTO.korean_destination}';
                    },
                    error: function(response) {
                        console.log("결제후에 db생성 실패");
                    }
                })

        }else {
            console.log(rsp);
            console.log("실패");
            alert("결제에 실패했습니다. 에러 내용 : " + rsp.error_msg);
        }
    	        }
    	    );
    	}
    </script>

</html>