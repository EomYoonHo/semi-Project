<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>semi-Project</title>
<link rel="stylesheet" href="/resources/css/setting.css">
<link rel="stylesheet" href="/resources/css/plugin.css">
<link rel="stylesheet" href="/resources/css/semi.css">
<link rel="stylesheet" href="/resources/css/common.css">
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="/resources/css/yh.css">
<link rel="stylesheet" href="/resources/css/table.css">

<link
	href="https://fonts.googleapis.com/css?family=Cabin:400,700|Playfair+Display:900"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Ephesis&display=swap"
	rel="stylesheet">

</head>
<body>
	<!-- [S]glamping-N1 -->
	<header class="glamping-N1" data-bid="jILPJ5JfH5">
		<div class="header-container container-lg">
			<div class="header-left">
				<h1 class="header-title">
					<a href="home.html"> <img src="./img/pessport.png" alt="로고">
					</a>
				</h1>
			</div>
			<div class="header-center">
				<ul class="header-gnblist">
					<li class="header-gnbitem"><a class="header-gnblink"
						href="map.html"> <span>여행지추천</span>
					</a>
						<ul class="header-sublist">
							<li class="header-subitem"><a class="header-sublink"
								href="map.html"> <span>지도로 이동</span>
							</a></li>
						</ul></li>
					<li class="header-gnbitem"><a class="header-gnblink"
						href="list.html"> <span>자유게시판</span>
					</a>
						<ul class="header-sublist">
							<li class="header-subitem"><a class="header-sublink"
								href="list.html"> <span>게시판</span>
							</a></li>
							<li class="header-subitem"><a class="header-sublink"
								href="list2.html"> <span>게시글 작성</span>
							</a></li>
						</ul></li>
					<li class="header-gnbitem"><a class="header-gnblink"
						href="review.html"> <span>리뷰게시판</span>
					</a>
						<ul class="header-sublist">
							<li class="header-subitem"><a class="header-sublink"
								href="review.html"> <span>게시판</span>
							</a></li>
							<li class="header-subitem"><a class="header-sublink"
								href="review2.html"> <span>게시글 작성</span>
							</a></li>
						</ul></li>
					<li class="header-gnbitem"><a class="header-gnblink"
						href="orderList.html"> <span>여행패키지</span>
					</a>
						<ul class="header-sublist">
							<li class="header-subitem"><a class="header-sublink"
								href="orderList.html"> <span>패키지 상품</span>
							</a></li>
						</ul></li>
					<li class="header-gnbitem"><a class="header-gnblink"
						href="myPage.html"> <span>마이페이지</span>
					</a>
						<ul class="header-sublist">
							<li class="header-subitem"><a class="header-sublink"
								href="infoDetail.html"> <span>내정보</span>
							</a></li>
							<li class="header-subitem"><a class="header-sublink"
								href="myList.html"> <span>구매목록</span>
							</a></li>
						</ul></li>
					<a class="header-gnblink log" href="login.html"> <span>로그인</span>
					</a>
					<a class="header-gnblink log1" href="register.html"> <span>회원가입</span>
					</a>
			</div>
		</div>
	</header>
	<img src="./img/airplane2.jpg" alt="">
	<!-- [E]glamping-N1 -->
	<br>
	<br>
	<br>
	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h3 class="pgc" style="font-size: 100px;">
					<b>Order Result</b>
				</h3>
				<br>
			</div>
		</div>
		<br>
		<br>
		<!-- board list area -->
		<div id="board-list">
			<div class="container iipp3">
				<table class="board-table">
					<tr>
						<th>주문번호</th>
						<td>${orderDTO.o_idx}</td>
					</tr>
					<tr>
						<th>상품이름</th>
						<td>${orderDTO.o_name}</td>
					</tr>
					<tr>
						<th>상품가격</th>
						<td>${getPrice.p_price} 원</td>
					</tr>
					<tr>
						<th>예약인원</th>
						<td>${people} 명</td>
					</tr>
					<tr>
						<th>결제하실 금액</th>
						<td>${orderDTO.o_paid_amount} 원</td>
					</tr>
					<tr>
						<th>구매자전화번호</th>
						<td>${orderDTO.o_buyer_phone}</td>
					</tr>
					<tr>
						<th>구매자이름</th>
						<td>${orderDTO.o_buyer_name}</td>
					</tr>
					<tr>
						<th>구매자이메일</th>
						<td>${orderDTO.o_buyer_email}</td>
					</tr>
					<tr>
						<th>여행기간</th>
						<td>${orderDTO.o_period}</td>
					</tr>
					<tr>
						<th>구매일자</th>
						<td>${orderDTO.o_paid_at}</td>
					</tr>
				</table>
			</div>
		</div>
		<form action="">
			<div class="pt-1 wwwii">
				<button class="custom-btn btn-6" formaction="review2.html">
					<span>확인</span>
			</div>
		</form>
	</section>


	<div class="page-title">
		<div class="container">
			<h3 class="pgc" style="font-size: 50px;">Thank you for using [
				Pess-Port ] travel agency.</h3>
		</div>
	</div>
	<!-- [E]glamping-N9 -->
	<!-- [S]glamping-N3 -->
	<footer class="glamping-N3" data-bid="hNLPJ5jFl2">
		<div class="footer-container">
			<!-- <audio src="./music/home.mp3" controls="controls" autoplay="autoplay" style="display: none;"></audio> -->
			<img class="footer-backimg img-pc" src="./img/apl.jpg" alt="PC 푸터 비주얼">
			<div class="footer-body container-md">
				<h2 class="footer-logo">
					<a href="javascript:void(0)">
					 <img src="./img/pessport.png" alt="로고">
					</a>
				</h2>

				<ul class="footer-snslist">
					<li class="footer-snsitem">
					<a class="footer-snslink" href="javascript:void(0)"> 
					<img src="./icon/ico_instagram_white.svg" alt="인스타그램">
					</a></li>
					<li class="footer-snsitem">
					<a class="footer-snslink" href="javascript:void(0)"> 
					<img src="./icon/ico_youtube_white.svg" alt="유튜브">
					</a></li>
					<li class="footer-snsitem">
					<a class="footer-snslink" href="javascript:void(0)">
					<img src="./icon/ico_facebook_white.svg" alt="페이스북">
					</a></li>
				</ul>
				<ul class="footer-menugroup">
					<li class="footer-menulink"><a href="javascript:void(0)">
							<span>이용약관</span>
					</a></li>
					<li class="footer-menulink"><a href="javascript:void(0)">
							<span>개인정보처리방침</span>
					</a></li>
					<li class="footer-menulink"><a href="home1.html"> <span>이스터에그</span>
					</a></li>
				</ul>
				<div class="footer-txtgroup">
					<div class="footer-txt">
						<p>경기도 안양시 만안구 안양로 303 안양메쎄타워 8층</p>
						<p>
							<span>T. 010-1234-5678</span> <span>E. pessport@naver.com</span>
						</p>
					</div>
					<div class="footer-txt">
						<p>2023 BY SEMI-PROJECT "PESS-PORT"</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- [E]glamping-N3 -->
	<script src="./js/setting.js"></script>
	<script src="./js/plugin.js"></script>
	<script src="./js/template.js"></script>
	<script src="./js/common.js"></script>
	<script src="./js/script.js"></script>

</body>
</html>










