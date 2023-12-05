<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">

<title>semi-Project</title>
<link rel="stylesheet" href="/resources/css/board/setting.css">
<link rel="stylesheet" href="/resources/css/board/plugin.css">
<link rel="stylesheet" href="/resources/css/board/semi.css">
<link rel="stylesheet" href="/resources/css/board/common.css">
<link rel="stylesheet" href="/resources/css/board/style.css">
</head>

<body>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>
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
					<li class="header-gnbitem"><a class="header-gnblink" href="">
							<span>여행지추천</span>
					</a>
						<ul class="header-sublist">
							<li class="header-subitem"><a class="header-sublink"
								href="map.html"> <span>지도로 이동</span>
							</a></li>
						</ul></li>
					<li class="header-gnbitem"><a class="header-gnblink" href="">
							<span>게시판</span>
					</a>
						<ul class="header-sublist">
							<li class="header-subitem"><a class="header-sublink"
								href="list.html"> <span>커뮤니티</span>
							</a></li>
							<li class="header-subitem"><a class="header-sublink"
								href="list2.html"> <span>커뮤니티 작성</span>
							</a></li>
							<li class="header-subitem"><a class="header-sublink"
								href="review.html"> <span>리뷰</span>
							</a></li>
							<li class="header-subitem"><a class="header-sublink"
								href="review2.html"> <span>리뷰 작성</span>
							</a></li>
						</ul></li>
					<li class="header-gnbitem"><a class="header-gnblink" href="">
							<span>여행패키지</span>
					</a>
						<ul class="header-sublist">
							<li class="header-subitem"><a class="header-sublink"
								href="orderList.html"> <span>패키지 상품</span>
							</a></li>
						</ul></li>
					<li class="header-gnbitem"><a class="header-gnblink" href="">
							<span>고객문의센터</span>
					</a>
						<ul class="header-sublist">
							<li class="header-subitem"><a class="header-sublink"
								onclick="window.location.href = '/customerList.do?cpage=1'">
									<span>고객문의</span>
							</a></li>
							<li class="header-subitem"><a class="header-sublink"
								href="/views/customer/customerEnroll.jsp"> <span>문의하기</span>
							</a></li>
						</ul></li>
					<li class="header-gnbitem"><a class="header-gnblink" href="">
							<span>마이페이지</span>
					</a>
						<ul class="header-sublist">
							<li class="header-subitem"><a class="header-sublink"
								href="myPage.html"> <span>마이페이지</span>
							</a></li>
							<li class="header-subitem"><a class="header-sublink"
								href="infoDetail.html"> <span>내정보</span>
							</a></li>
							<li class="header-subitem"><a class="header-sublink"
								href="myList.html"> <span>구매목록</span>
							</a></li>
						</ul></li>
					<a class="header-gnblink log" href="/form/loginform.do"> <span>로그인</span>
					</a>
					<a class="header-gnblink log1" href="/form/registerform.do"> <span>회원가입</span>
					</a>
			</div>
		</div>
	</header>
	<!-- [E]glamping-N1 -->
	<main class="th-layout-main ">
		<!-- [S]glamping-N4 -->
		<div class="glamping-N4" data-bid="VALpJ5jfI7">
			<div class="contents-container">
				<div class="contents-swiper">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<img class="contents-backimg img-pc" src="./img/bg1.jpg"
								alt="PC 메인 비주얼 이미지">
							<div class="contents-slide-group container-md">
								<div class="textset textset-visual">
									<h2 class="textset-tit">윤호와 떠나는 세계여행</h2>
									<p class="textset-desc">
										존잘윤호와 잊을수없는 여행을 즐겨보세요 !! <br> PESS-PORT 에서 자신있게 초대합니다.
									</p>
								</div>
							</div>
						</div>
						<div class="swiper-slide">
							<img class="contents-backimg img-pc" src="./img/bg2.jpg"
								alt="PC 메인 비주얼 이미지">
							<div class="contents-slide-group container-md">
								<div class="textset textset-visual">
									<h2 class="textset-tit">민수와 떠나는 세계여행</h2>
									<p class="textset-desc">
										쩝쩝박사 민수와 전세계 모든 먹거리를 즐겨보세요 !! <br> PESS-PORT 에서 자신있게
										초대합니다.
									</p>
								</div>
							</div>
						</div>
						<div class="swiper-slide">
							<img class="contents-backimg img-pc" src="./img/bg3.jpg"
								alt="PC 메인 비주얼 이미지">
							<div class="contents-slide-group container-md">
								<div class="textset textset-visual">
									<h2 class="textset-tit">기정이와 떠나는 세계여행</h2>
									<p class="textset-desc">
										개씹노잼 여행입니다 비추천 <br> PESS-PORT 에서 자신없게 초대합니다.
									</p>
								</div>
							</div>
						</div>
						<div class="swiper-slide">
							<img class="contents-backimg img-pc" src="./img/bg4.jpg"
								alt="PC 메인 비주얼 이미지">
							<div class="contents-slide-group container-md">
								<div class="textset textset-visual">
									<h2 class="textset-tit">준언이와 떠나는 세계여행</h2>
									<p class="textset-desc">
										한번 빠지면 헤어나올수없는 매력 "준언" <br> PESS-PORT 에서 자신있게 초대합니다.
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-button-next">
						&nbsp;&nbsp;&nbsp;<img src="./icon/ico_arrow_right_withe.svg"
							alt="">
					</div>
					<div class="swiper-button-prev">
						&nbsp;&nbsp;&nbsp;<img src="./icon/ico_arrow_left_withe.svg"
							alt="">
					</div>
					<div class="contents-control">
						<div class="swiper-pagination"></div>
						<div class="swiper-button-pause">
							<img src="./icon/ico_pause_white.svg" alt="스와이퍼 멈춤버튼">
						</div>
						<div class="swiper-button-play">
							<img src="./icon/ico_play_white.svg" alt="스와이퍼 재생버튼">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- [E]glamping-N4 -->
		<!-- [S]glamping-N5 -->
		<div class="glamping-N5" data-bid="KmLpj5JFIP">
			<div class="contents-inner">
				<div class="contents-container container-md">
					<div class="cardset-wrap">
						<div class="cardset cardset-xl cardset-deco cardset-hor row-rever">
							<figure class="cardset-figure">
								<img class="cardset-img" src="./img/gjjpg1.jpg" alt="카드이미지">
							</figure>
							<div class="cardset-body">
								<h2 class="cardset-tit">
									24시간 "기정" 대기중 <br> 여러분들을 도와드리겠습니다.
								</h2>
								<p class="cardset-desc">
									개선사항, 불편사항 등등 <br> 편하게 문의 주십시오.
								</p>
								<a href="customerService.html"
									class="btnset btnset-round btnset-line btnset-black">고객센터</a>
							</div>
						</div>
						<div class="cardset cardset-xl cardset-deco cardset-hor">
							<figure class="cardset-figure">
								<img class="cardset-img" src="./img/f2.jpg" alt="카드이미지">
							</figure>
							<div class="cardset-body">
								<h2 class="cardset-tit">
									이 아이들은 <br> 배부름이란것을 너무 잘 압니다...
								</h2>
								<p class="cardset-desc">
									저희 살좀빼요 민수형 <br> 다이어트 화이팅!!
								</p>
								<a href="javascript:void(0);"
									class="btnset btnset-round btnset-line btnset-black">식단짜기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- [E]glamping-N5 -->
		<!-- [S]glamping-N6 -->
		<div class="glamping-N6" data-bid="LzLPJ5JfJ7">
			<div class="contents-inner">
				<div class="contents-container">
					<div class="imageset">
						<img class="imageset-img img-pc" src="./img/airplane.jpg"
							alt="PC 이미지"> <img class="imageset-img img-mobile"
							src="./img/img_glamping_mobile_N6_1.png" alt="모바일 이미지">
					</div>
					<div class="cardset cardset-xl cardset-deco">
						<h2 class="cardset-tit">
							어디갈지 모르시겠다구요? <br> 저희가 추천해드립니다!!
						</h2>
						<p class="cardset-desc">
							전세계 어디든 PESS-PORT와 함께 <br> 특별한 추억을 선물합니다.
						</p>
						<a href="map.html"
							class="btnset btnset-round btnset-line btnset-white">Let's Go</a>
					</div>
				</div>
			</div>
		</div>
		<!-- [E]glamping-N6 -->
		<!-- [S]glamping-N7 -->
		<div class="glamping-N7" data-bid="BNlPj5JfJn">
			<div class="contents-inner">
				<div class="contents-container container-md">
					<div class="textset">
						<h2 class="textset-tit">PESS-PORT 여행패키지</h2>
						<p class="textset-desc">패키지로 완벽한 여행을 즐겨보세요 !!</p>
					</div>
					<div class="contents-swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="contents-slide-group container-md">
									<a href="javascript:void(0);" class="cardset">
										<figure class="cardset-figure">
											<img class="cardset-img" src="./img/파리투어1.PNG" alt="이미지">
										</figure>
										<div class="cardset-body">
											<h2 class="cardset-tit">파리 패키지</h2>
											<p class="cardset-desc">
												Paris Tour <br> 3,699,000 ₩
											</p>
										</div>
									</a>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="contents-slide-group container-md">
									<a href="javascript:void(0);" class="cardset">
										<figure class="cardset-figure">
											<img class="cardset-img" src="./img/동유럽2.PNG" alt="이미지">
										</figure>
										<div class="cardset-body">
											<h2 class="cardset-tit">동유럽 패키지</h2>
											<p class="cardset-desc">
												Eastern Europe Tour <br> 2,599,000 ₩
											</p>
										</div>
									</a>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="contents-slide-group container-md">
									<a href="javascript:void(0);" class="cardset">
										<figure class="cardset-figure">
											<img class="cardset-img" src="./img/북유럽3.PNG" alt="이미지">
										</figure>
										<div class="cardset-body">
											<h2 class="cardset-tit">북유럽 패키지</h2>
											<p class="cardset-desc">
												North Europe Tour <br> 4,699,000 ₩
											</p>
										</div>
									</a>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="contents-slide-group container-md">
									<a href="javascript:void(0);" class="cardset">
										<figure class="cardset-figure">
											<img class="cardset-img" src="./img/삿포로4.PNG" alt="이미지">
										</figure>
										<div class="cardset-body">
											<h2 class="cardset-tit">삿포로 패키지</h2>
											<p class="cardset-desc">
												Sapporo Tour <br> 1,299,000 ₩
											</p>
										</div>
									</a>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="contents-slide-group container-md">
									<a href="javascript:void(0);" class="cardset">
										<figure class="cardset-figure">
											<img class="cardset-img" src="./img/장가계5.PNG" alt="이미지">
										</figure>
										<div class="cardset-body">
											<h2 class="cardset-tit">장가계 패키지</h2>
											<p class="cardset-desc">
												Jangjiaji Tour <br> 569,000 ₩
											</p>
										</div>
									</a>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="contents-slide-group container-md">
									<a href="javascript:void(0);" class="cardset">
										<figure class="cardset-figure">
											<img class="cardset-img" src="./img/미동부6.PNG" alt="이미지">
										</figure>
										<div class="cardset-body">
											<h2 class="cardset-tit">미동부 패키지</h2>
											<p class="cardset-desc">
												Eastern U.S Tour <br> 4,340,200 ₩
											</p>
										</div>
									</a>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="contents-slide-group container-md">
									<a href="javascript:void(0);" class="cardset">
										<figure class="cardset-figure">
											<img class="cardset-img" src="./img/칸쿤7.PNG" alt="이미지">
										</figure>
										<div class="cardset-body">
											<h2 class="cardset-tit">칸쿤 패키지</h2>
											<p class="cardset-desc">
												Cancun Tour <br> 5,326,200 ₩
											</p>
										</div>
									</a>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="contents-slide-group container-md">
									<a href="javascript:void(0);" class="cardset">
										<figure class="cardset-figure">
											<img class="cardset-img" src="./img/남미투어8.PNG" alt="이미지">
										</figure>
										<div class="cardset-body">
											<h2 class="cardset-tit">남미 패키지</h2>
											<p class="cardset-desc">
												South America Tour <br> 19,900,000 ₩
											</p>
										</div>
									</a>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="contents-slide-group container-md">
									<a href="javascript:void(0);" class="cardset">
										<figure class="cardset-figure">
											<img class="cardset-img" src="./img/라오스9.PNG" alt="이미지">
										</figure>
										<div class="cardset-body">
											<h2 class="cardset-tit">라오스 패키지</h2>
											<p class="cardset-desc">
												Laos Tour <br> 619,900 ₩
											</p>
										</div>
									</a>
								</div>
							</div>
						</div>
						<div class="swiper-button-next">
							&nbsp;&nbsp;&nbsp;<img src="./icon/ico_arrow_right_withe.svg"
								alt="">
						</div>
						<div class="swiper-button-prev">
							&nbsp;&nbsp;&nbsp;<img src="./icon/ico_arrow_left_withe.svg"
								alt="">
						</div>
					</div>
					<div class="contents-control">
						<div class="swiper-pagination"></div>
						<a href="orderList.html" class="btnset btnset-text btnset-icon">자세히보기
							<div class="btnset-img">
								<img src="./icon/ico_more_black.svg" alt="자세히보기 아이콘">
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
		<!-- [E]glamping-N7 -->
		<!-- [S]glamping-N8 -->
		<div class="glamping-N8" data-bid="HXLpj5jFk6">
			<div class="contents-inner">
				<div class="contents-container">
					<div class="videoset">
						<video class="videoset-video">
							<source src="../video/ocean.mp4">
						</video>
						<div class="videoset-body container-md">
							<p class="videoset-subtit">PESS - PORT</p>
							<h2 class="videoset-tit">
								기분좋은 일상 속 행복 여행 <br> PESS-PORT 여행사
							</h2>
							<button class="videoset-play">
								<img src="./icon/ico_video_play.svg" alt="플레이버튼">
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- [E]glamping-N8 -->
		<!-- [S]glamping-N9 -->
		<div class="glamping-N9" data-bid="KWLPJ5jFkn">
			<div class="contents-inner">
				<div class="contents-container container-md">
					<div class="textset">
						<h2 class="textset-tit">PESS-PORT 생생 리뷰</h2>
						<p class="textset-desc">PESS-PORT의 생생 리뷰를 만나보세요.</p>
					</div>
					<div class="contents-control">
						<div class="swiper-button-prev">
							<img src="./icon/ico_arrow_left_withe.svg" alt="">
						</div>
						<div class="swiper-button-next">
							<img src="./icon/ico_arrow_right_withe.svg" alt="">
						</div>
					</div>
				</div>
				<div class="contents-container">
					<div class="contents-swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="contents-slide-group">
									<div class="cardset cardset-user">
										<figure class="cardset-figure">
											<img class="cardset-img" src="./img/gjjpg.jpg" alt="이미지">
										</figure>
										<div class="cardset-profile">
											<script>
												$.getJSON(
																'https://api.openweathermap.org/data/2.5/weather?q=Seoul&appid=0ad6b5563ac41e400483a568e90cfe26&units=metric',
																function(result) {
																	$('.ctemp1').append(result.main.temp).append("℃");
																	$(
																			'.chumidity1')
																			.append(
																					result.main.humidity)
																			.append(
																					"%");
																	var wiconUrl = '<img src = "https://openweathermap.org/img/wn/'+result.weather[0].icon+'.png" alt="'+result.weather[0].description+'">'
																	$('.icon1')
																			.html(
																					wiconUrl);
																});
											</script>
											<p class="ctemp1">현재온도 :</p>
											<p class="chumidity1">습도 :</p>
											<p class="icon1"></p>
											<p class="cardset-info">서울</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="contents-slide-group">
									<div class="cardset cardset-user">
										<figure class="cardset-figure">
											<img class="cardset-img" src="./img/gjjpg.jpg" alt="이미지">
										</figure>
										<div class="cardset-profile">
											<script>
												$
														.getJSON(
																'https://api.openweathermap.org/data/2.5/weather?q=Prague&appid=0ad6b5563ac41e400483a568e90cfe26&units=metric',
																function(result) {
																	$('.ctemp2')
																			.append(
																					result.main.temp)
																			.append(
																					"℃");
																	$(
																			'.chumidity2')
																			.append(
																					result.main.humidity)
																			.append(
																					"%");
																	var wiconUrl = '<img src = "https://openweathermap.org/img/wn/'+result.weather[0].icon+'.png" alt="'+result.weather[0].description+'">'
																	$('.icon2')
																			.html(
																					wiconUrl);
																});
											</script>
											<p class="ctemp2">현재온도 :</p>
											<p class="chumidity2">습도 :</p>
											<p class="icon2"></p>
											<p class="cardset-info">프라하</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="contents-slide-group">
									<div class="cardset cardset-user">
										<figure class="cardset-figure">
											<img class="cardset-img" src="./img/gjjpg.jpg" alt="이미지">
										</figure>
										<div class="cardset-profile">
											<script>
												$
														.getJSON(
																'https://api.openweathermap.org/data/2.5/weather?q=Oslo&appid=0ad6b5563ac41e400483a568e90cfe26&units=metric',
																function(result) {
																	$('.ctemp3')
																			.append(
																					result.main.temp)
																			.append(
																					"℃");
																	$(
																			'.chumidity3')
																			.append(
																					result.main.humidity)
																			.append(
																					"%");
																	var wiconUrl = '<img src = "https://openweathermap.org/img/wn/'+result.weather[0].icon+'.png" alt="'+result.weather[0].description+'">'
																	$('.icon3')
																			.html(
																					wiconUrl);
																});
											</script>
											<p class="ctemp3">현재온도 :</p>
											<p class="chumidity3">습도 :</p>
											<p class="icon3"></p>
											<p class="cardset-info">오슬로</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="contents-slide-group">
									<div class="cardset cardset-user">
										<figure class="cardset-figure">
											<img class="cardset-img" src="./img/gjjpg.jpg" alt="이미지">
										</figure>
										<div class="cardset-profile">
											<script>
												$
														.getJSON(
																'https://api.openweathermap.org/data/2.5/weather?q=Sapporo&appid=0ad6b5563ac41e400483a568e90cfe26&units=metric',
																function(result) {
																	$('.ctemp4')
																			.append(
																					result.main.temp)
																			.append(
																					"℃");
																	$(
																			'.chumidity4')
																			.append(
																					result.main.humidity)
																			.append(
																					"%");
																	var wiconUrl = '<img src = "https://openweathermap.org/img/wn/'+result.weather[0].icon+'.png" alt="'+result.weather[0].description+'">'
																	$('.icon4')
																			.html(
																					wiconUrl);
																});
											</script>
											<p class="ctemp4">현재온도 :</p>
											<p class="chumidity4">습도 :</p>
											<p class="icon4"></p>
											<p class="cardset-info">삿포로</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="contents-slide-group">
									<div class="cardset cardset-user">
										<figure class="cardset-figure">
											<img class="cardset-img" src="./img/gjjpg.jpg" alt="이미지">
										</figure>
										<div class="cardset-profile">
											<script>
												$
														.getJSON(
																'https://api.openweathermap.org/data/2.5/weather?q=Zhangjiajie&appid=0ad6b5563ac41e400483a568e90cfe26&units=metric',
																function(result) {
																	$('.ctemp5')
																			.append(
																					result.main.temp)
																			.append(
																					"℃");
																	$(
																			'.chumidity5')
																			.append(
																					result.main.humidity)
																			.append(
																					"%");
																	var wiconUrl = '<img src = "https://openweathermap.org/img/wn/'+result.weather[0].icon+'.png" alt="'+result.weather[0].description+'">'
																	$('.icon5')
																			.html(
																					wiconUrl);
																});
											</script>
											<p class="ctemp5">현재온도 :</p>
											<p class="chumidity5">습도 :</p>
											<p class="icon5"></p>
											<p class="cardset-info">장가계</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="contents-slide-group">
									<div class="cardset cardset-user">
										<figure class="cardset-figure">
											<img class="cardset-img" src="./img/gjjpg.jpg" alt="이미지">
										</figure>
										<div class="cardset-profile">
											<script>
												$
														.getJSON(
																'https://api.openweathermap.org/data/2.5/weather?q=New York&appid=0ad6b5563ac41e400483a568e90cfe26&units=metric',
																function(result) {
																	$('.ctemp6')
																			.append(
																					result.main.temp)
																			.append(
																					"℃");
																	$(
																			'.chumidity6')
																			.append(
																					result.main.humidity)
																			.append(
																					"%");
																	var wiconUrl = '<img src = "https://openweathermap.org/img/wn/'+result.weather[0].icon+'.png" alt="'+result.weather[0].description+'">'
																	$('.icon6')
																			.html(
																					wiconUrl);
																});
											</script>
											<p class="ctemp6">현재온도 :</p>
											<p class="chumidity6">습도 :</p>
											<p class="icon6"></p>
											<p class="cardset-info">뉴욕</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="contents-slide-group">
									<div class="cardset cardset-user">
										<figure class="cardset-figure">
											<img class="cardset-img" src="./img/gjjpg.jpg" alt="이미지">
										</figure>
										<div class="cardset-profile">
											<script>
												$
														.getJSON(
																'https://api.openweathermap.org/data/2.5/weather?q=Cancún&appid=0ad6b5563ac41e400483a568e90cfe26&units=metric',
																function(result) {
																	$('.ctemp7')
																			.append(
																					result.main.temp)
																			.append(
																					"℃");
																	$(
																			'.chumidity7')
																			.append(
																					result.main.humidity)
																			.append(
																					"%");
																	var wiconUrl = '<img src = "https://openweathermap.org/img/wn/'+result.weather[0].icon+'.png" alt="'+result.weather[0].description+'">'
																	$('.icon7')
																			.html(
																					wiconUrl);
																});
											</script>
											<p class="ctemp7">현재온도 :</p>
											<p class="chumidity7">습도 :</p>
											<p class="icon7"></p>
											<p class="cardset-info">칸쿤</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="contents-slide-group">
									<div class="cardset cardset-user">
										<figure class="cardset-figure">
											<img class="cardset-img" src="./img/gjjpg.jpg" alt="이미지">
										</figure>
										<div class="cardset-profile">
											<script>
												$
														.getJSON(
																'https://api.openweathermap.org/data/2.5/weather?q=Uyuni&appid=0ad6b5563ac41e400483a568e90cfe26&units=metric',
																function(result) {
																	$('.ctemp8')
																			.append(
																					result.main.temp)
																			.append(
																					"℃");
																	$(
																			'.chumidity8')
																			.append(
																					result.main.humidity)
																			.append(
																					"%");
																	var wiconUrl = '<img src = "https://openweathermap.org/img/wn/'+result.weather[0].icon+'.png" alt="'+result.weather[0].description+'">'
																	$('.icon8')
																			.html(
																					wiconUrl);
																});
											</script>
											<p class="ctemp8">현재온도 :</p>
											<p class="chumidity8">습도 :</p>
											<p class="icon8"></p>
											<p class="cardset-info">유우니</p>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="contents-slide-group">
									<div class="cardset cardset-user">
										<figure class="cardset-figure">
											<img class="cardset-img" src="./img/gjjpg.jpg" alt="이미지">
										</figure>
										<div class="cardset-profile">
											<script>
												$
														.getJSON(
																'https://api.openweathermap.org/data/2.5/weather?q=Vangviang&appid=0ad6b5563ac41e400483a568e90cfe26&units=metric',
																function(result) {
																	$('.ctemp9')
																			.append(
																					result.main.temp)
																			.append(
																					"℃");
																	$(
																			'.chumidity9')
																			.append(
																					result.main.humidity)
																			.append(
																					"%");
																	var wiconUrl = '<img src = "https://openweathermap.org/img/wn/'+result.weather[0].icon+'.png" alt="'+result.weather[0].description+'">'
																	$('.icon9')
																			.html(
																					wiconUrl);
																});
											</script>
											<p class="ctemp9">현재온도 :</p>
											<p class="chumidity9">습도 :</p>
											<p class="icon9"></p>
											<p class="cardset-info">방비엔</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- [E]glamping-N9 -->
	</main>
	<a href="#" class="btn_gotop"> <span
		class="glyphicon glyphicon-chevron-up"> <img
			src="./img/top.png" alt="" width="20">
	</span>
	</a>
	<!-- [S]glamping-N3 -->
	<footer class="glamping-N3" data-bid="hNLPJ5jFl2">
		<div class="footer-container">
			<!-- <audio src="./music/home.mp3" controls="controls" autoplay="autoplay" style="display: none;"></audio> -->
			<img class="footer-backimg img-pc" src="./img/apl.jpg"
				alt="PC 푸터 비주얼">
			<div class="footer-body container-md">
				<h2 class="footer-logo">
					<a href="javascript:void(0)"> <img src="./img/pessport.png"
						alt="로고">
					</a>
				</h2>

				<ul class="footer-snslist">
					<li class="footer-snsitem"><a class="footer-snslink"
						href="javascript:void(0)"> <img
							src="./icon/ico_instagram_white.svg" alt="인스타그램">
					</a></li>
					<li class="footer-snsitem"><a class="footer-snslink"
						href="javascript:void(0)"> <img
							src="./icon/ico_youtube_white.svg" alt="유튜브">
					</a></li>
					<li class="footer-snsitem"><a class="footer-snslink"
						href="javascript:void(0)"> <img
							src="./icon/ico_facebook_white.svg" alt="페이스북">
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
	<script src="resources/js/setting.js"></script>
	<script src="resources/js/plugin.js"></script>
	<script src="resources/js/template.js"></script>
	<script src="resources/js/common.js"></script>
	<script src="resources/js/script.js"></script>
</body>