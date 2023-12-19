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
<link rel="stylesheet" href="/resources/css/yh.css">
<link rel="stylesheet" href="/resources/css/table.css">
<link rel="stylesheet" href="/resources/css/order.css">
<link rel="stylesheet" th:href="@{./css/bootstrap.css}">
<link rel="stylesheet" th:href="@{./css/custom.min.css}">
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">

<!-- Web fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Cabin:400,700|Playfair+Display:900"
	rel="stylesheet">

<!-- favicon.ico. Place these in the root directory. -->
<link rel="shortcut icon" href="favicon.ico">

<!-- 잡것 -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
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
		<%@ include file="/views/common/header.jsp"%>
	</header>
	<!-- [E]glamping-N1 -->
	<div class="glamping-N3">
		<img class="footer-backimg img-pc"
			src="/resources/image/airplane2.jpg" alt="PC 푸터 비주얼">
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<h3 class="pgc" style="font-size: 100px;">
			<b>Tour Package</b>
		</h3>
		<br>
		<br>
		<h3 class="pgc">Discover 9 carefully selected travel packages!!</h3>
	</div>
	<div class="glamping-N5" data-bid="KmLpj5JFIP">
		<div class="contents-inner">
			<div class="contents-container container-md">
				<div class="cardset-wrap">
					<div class="cardset cardset-xl cardset-deco cardset-hor row-rever">
						<!-- 패키지 리스트 -->
						<figure class="cardset-figure"
							style="width: 70%; padding-left: 100px;">
							<div class="product-list">
							  <div class="hover01">
                  				<figure>
								<a href="/packageControll.do?p_idx=1" class="product"> <img
									src="/resources/image/package파리투어1.PNG" width="225">
									<br><br>
									<p class="packagename">파리 패키지</p>
									<p class="packagename2">Paris Tour</p>
									<div class="product-price">3,699,000 ₩</div>
								</a> 
                  				</figure>
                  				</div>
                  				
                  			<div class="hover01">
                  				<figure>
								<a href="/packageControll.do?p_idx=2" class="product"> <img
									src="/resources/image/package동유럽2.PNG" width="225">
									<br><br>
									<p class="packagename">동유럽 패키지</p>
									<p class="packagename2">Eastern Europe Tour</p>
									<div class="product-price">2,599,000 ₩</div>
								</a> 
                  				</figure>
                  				</div>
                  				
                  			<div class="hover01">
                  				<figure>
								<a href="/packageControll.do?p_idx=3" class="product"> <img
									src="/resources/image/package북유럽3.PNG" width="225">
									<br><br>
									<p class="packagename">북유럽 패키지</p>
									<p class="packagename2">North Europe Tour</p>
									<div class="product-price">4,699,000 ₩</div>
								</a> 
                  				</figure>
                  				</div>
                  				
                  			<div class="hover01">
                  				<figure>
								<a href="/packageControll.do?p_idx=4" class="product"> <img
									src="/resources/image/package삿포로4.PNG" width="225">
									<br><br>
									<p class="packagename">삿포로 패키지</p>
									<p class="packagename2">Sapporo Tour</p>
									<div class="product-price">1,299,000 ₩</div>
								</a> 
                  				</figure>
                  				</div>
                  				
                  			<div class="hover01">
                  				<figure>
								<a href="/packageControll.do?p_idx=5" class="product"> <img
									src="/resources/image/package장가계5.PNG" width="225">
									<br><br>
									<p class="packagename">장가계 패키지</p>
									<p class="packagename2">Jangjiaji Tour</p>
									<div class="product-price">569,000 ₩</div>
								</a> 
                  				</figure>
                  				</div>
                  				
                  			<div class="hover01">
                  				<figure>
								<a href="/packageControll.do?p_idx=6" class="product"> <img
									src="/resources/image/package미동부6.PNG" width="225">
									<br><br>
									<p class="packagename">미동부 패키지</p>
									<p class="packagename2">Eastern U.S Tour</p>
									<div class="product-price">4,340,200 ₩</div>
								</a> 
                  				</figure>
                  				</div>
                  				
                  			<div class="hover01">
                  				<figure>
								<a href="/packageControll.do?p_idx=7" class="product"> <img
									src="/resources/image/package칸쿤7.PNG" width="225">
									<br><br>
									<p class="packagename">칸쿤 패키지</p>
									<p class="packagename2">Cancun Tour</p>
									<div class="product-price">5,326,200 ₩</div>
								</a> 
                  				</figure>
                  				</div>
                  				
                  			<div class="hover01">
                  				<figure>
								<a href="/packageControll.do?p_idx=8" class="product"> <img
									src="/resources/image/package남미투어8.PNG" width="225">
									<br><br>
									<p class="packagename">남미 패키지</p>
									<p class="packagename2">South America Tour</p>
									<div class="product-price">19,900,000 ₩</div>
								</a> 
                  				</figure>
                  				</div>
                  				
                  			<div class="hover01">
                  				<figure>
								<a href="/packageControll.do?p_idx=9" class="product"> <img
									src="/resources/image/package라오스9.PNG" width="225">
									<br><br>
									<p class="packagename">라오스 패키지</p>
									<p class="packagename2">Laos Tour</p>
									<div class="product-price">619,900 ₩</div>
								</a>
                  				</figure>
                  				</div>
                  				
                  				
                  				

							</div>
						</figure>
						<!-- 패키지 소개 -->
						<div class="cardset-body" style="width: 30%;">
							<div class="glamping-N4" data-bid="VALpJ5jfI7">
								<div class="contents-container">
									<div class="contents-swiper">
										<div class="swiper-wrapper">
											<div class="swiper-slide">
												<img class="contents-backimg img-pc"
													src="/resources/image/파파리.jpg" alt="PC 메인 비주얼 이미지">
												<div class="contents-slide-group container-md">
													<div class="textset textset-visual">
														<h2 class="textset-tit">파리 패키지</h2>
														<p class="textset-desc">
															문화와 예술의 중심, <br> 빛의도시 파리. <br> PESS-PORT 에서
															자신있게 초대합니다.
														</p>
													</div>
												</div>
											</div>
											<div class="swiper-slide">
												<img class="contents-backimg img-pc"
													src="/resources/image/동동유럽.jpg" alt="PC 메인 비주얼 이미지">
												<div class="contents-slide-group container-md">
													<div class="textset textset-visual">
														<h2 class="textset-tit">동유럽 패키지</h2>
														<p class="textset-desc">
															역사와 문화가 깊이 깃든, <br> 동유럽의 매혹적인 미스테리. <br>
															PESS-PORT 에서 자신있게 초대합니다.
														</p>
													</div>
												</div>
											</div>
											<div class="swiper-slide">
												<img class="contents-backimg img-pc"
													src="/resources/image/북북유럽.jpg" alt="PC 메인 비주얼 이미지">
												<div class="contents-slide-group container-md">
													<div class="textset textset-visual">
														<h2 class="textset-tit">북유럽 패키지</h2>
														<p class="textset-desc">
															자연과 평화가 어우러진, <br> 북유럽의 신비로운 아름다움. <br>
															PESS-PORT 에서 자신있게 초대합니다.
														</p>
													</div>
												</div>
											</div>
											<div class="swiper-slide">
												<img class="contents-backimg img-pc"
													src="/resources/image/삿삿포로.jpg" alt="PC 메인 비주얼 이미지">
												<div class="contents-slide-group container-md">
													<div class="textset textset-visual">
														<h2 class="textset-tit">삿포로 패키지</h2>
														<p class="textset-desc">
															눈의 도시, <br> 화이트 판타지 삿포로. <br> PESS-PORT 에서 자신있게
															초대합니다.
														</p>
													</div>
												</div>
											</div>
											<div class="swiper-slide">
												<img class="contents-backimg img-pc"
													src="/resources/image/장장가계.jpg" alt="PC 메인 비주얼 이미지">
												<div class="contents-slide-group container-md">
													<div class="textset textset-visual">
														<h2 class="textset-tit">장가계 패키지</h2>
														<p class="textset-desc">
															자연의 품에서 숨쉬는, <br> 평온한 천국 장가계. <br> PESS-PORT 에서
															자신있게 초대합니다.
														</p>
													</div>
												</div>
											</div>
											<div class="swiper-slide">
												<img class="contents-backimg img-pc"
													src="/resources/image/미미동부.jpg" alt="PC 메인 비주얼 이미지">
												<div class="contents-slide-group container-md">
													<div class="textset textset-visual">
														<h2 class="textset-tit">미동부 패키지</h2>
														<p class="textset-desc">
															다채로운 문화와 역사가 공존하는, <br> 미국 동부의 끝없는 도전. <br>
															PESS-PORT 에서 자신있게 초대합니다.
														</p>
													</div>
												</div>
											</div>
											<div class="swiper-slide">
												<img class="contents-backimg img-pc"
													src="/resources/image/칸칸쿤.jpg" alt="PC 메인 비주얼 이미지">
												<div class="contents-slide-group container-md">
													<div class="textset textset-visual">
														<h2 class="textset-tit">칸쿤 패키지</h2>
														<p class="textset-desc">
															푸른 바다와 하얀 모래가 만나는, <br> 카리브의 낙원 칸쿤. <br>
															PESS-PORT 에서 자신있게 초대합니다.
														</p>
													</div>
												</div>
											</div>
											<div class="swiper-slide">
												<img class="contents-backimg img-pc"
													src="/resources/image/남남미.jpg" alt="PC 메인 비주얼 이미지">
												<div class="contents-slide-group container-md">
													<div class="textset textset-visual">
														<h2 class="textset-tit">남미 패키지</h2>
														<p class="textset-desc">
															열정과 모험이 가득한, <br> 라틴의 불꽃 남미. <br> PESS-PORT 에서
															자신있게 초대합니다.
														</p>
													</div>
												</div>
											</div>
											<div class="swiper-slide">
												<img class="contents-backimg img-pc"
													src="/resources/image/라라오스.jpg" alt="PC 메인 비주얼 이미지">
												<div class="contents-slide-group container-md">
													<div class="textset textset-visual">
														<h2 class="textset-tit">라오스 패키지</h2>
														<p class="textset-desc">
															미스테리한 문화와 숨겨진 자연의 아름다움, <br> 낭만적인 라오스. <br>
															PESS-PORT 에서 자신있게 초대합니다.
														</p>
													</div>
												</div>
											</div>
										</div>
										<div class="contents-control">
											<div class="swiper-pagination"></div>
											<div class="swiper-button-pause">
												<img src="/resources/icon/ico_pause_white.svg"
													alt="스와이퍼 멈춤버튼">
											</div>
											<div class="swiper-button-play">
												<img src="/resources/icon/ico_play_white.svg"
													alt="스와이퍼 재생버튼">
											</div>
										</div>
									</div>
								</div>
							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br><br><br>
	<div class="page-title">
		<div class="container">
			<h3 class="pgc" style="font-size: 50px;">Thank you for
				purchasing our product.</h3>
		</div>
	</div>
	<br>
	<br>

	<!-- [E]glamping-N9 -->
	<!-- [S]glamping-N3 -->
	<footer class="glamping-N3" data-bid="hNLPJ5jFl2">
		<%@ include file="/views/common/footer.jsp"%>
	</footer>


</body>
</html>