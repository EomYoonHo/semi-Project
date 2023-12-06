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
					<a href="/views/common/home.jsp"> <img src="/resources/image/pessport.png" alt="로고">
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
								href="/views/common/map.jsp"> <span>지도로 이동</span>
							</a></li>
						</ul></li>
					<li class="header-gnbitem"><a class="header-gnblink" href="">
							<span>게시판</span>
					</a>
						<ul class="header-sublist">
							<li class="header-subitem"><a class="header-sublink"
								href="boardList.do?cpage=1"> <span>커뮤니티</span>
							</a></li>
							<li class="header-subitem"><a class="header-sublink"
								href="/views/board/list2.jsp"> <span>게시글 작성</span>
							</a></li>
							<li class="header-subitem"><a class="header-sublink"
								href="/reviewBoardList.do?cpage=1"> <span>리뷰</span>
							</a></li>
							<li class="header-subitem"><a class="header-sublink"
								href="/views/reviewboard/reviewEnroll.jsp"> <span>리뷰 작성</span>
							</a></li>
						</ul></li>
					<li class="header-gnbitem"><a class="header-gnblink" href="">
							<span>여행패키지</span>
					</a>
						<ul class="header-sublist">
							<li class="header-subitem">
							<a class="header-sublink" href="/views/package/orderList.jsp"> <span>패키지 상품</span>
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
								href="/views/myPage/myPage.jsp"> <span>마이페이지</span>
							</a></li>
							<li class="header-subitem"><a class="header-sublink"
								onclick="myinfoForm()"> <span>내정보</span>
							</a></li>
							<li class="header-subitem"><a class="header-sublink"
								href="/MyList.do"> <span>구매목록</span>
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
                <img class="contents-backimg img-pc" src="/resources/image/bg1.jpg" alt="PC 메인 비주얼 이미지">
                <div class="contents-slide-group container-md">
                  <div class="textset textset-visual">
                    <h2 class="textset-tit">PESS-PORT 여행사에 오신걸 환영합니다</h2>
                    <p class="textset-desc"> 저희 PESS-PORT 여행사는 여행의 모든 정보를 제공합니다 <br> 즐거운 하루 되십시오. </p>
                </div>
              </div>
            </div>
            <div class="swiper-slide">
              <img class="contents-backimg img-pc" src="/resources/image/bg2.jpg" alt="PC 메인 비주얼 이미지">
              <div class="contents-slide-group container-md">
                <div class="textset textset-visual">
                  <h2 class="textset-tit">소소한 행복, 커뮤니티</h2>
                  <p class="textset-desc"> 공감과 소통이 만들어내는 무한의 네트워크! <br> 지금바로 커뮤니티에서 여러분들의 의견을 펼쳐보세요 </p>
                </div>
              </div>
            </div>
            <div class="swiper-slide">
              <img class="contents-backimg img-pc" src="/resources/image/bg4.jpg" alt="PC 메인 비주얼 이미지">
              <div class="contents-slide-group container-md">
                <div class="textset textset-visual">
                  <h2 class="textset-tit">소중한 경험, 리뷰</h2>
                  <p class="textset-desc"> 직접적인 경험의 솔직한 반영, 가치의 나침반! <br> 지금바로 리뷰에서 여러분들의 경험담을 펼쳐보세요 </p>
                </div>
              </div>
            </div>
            <div class="swiper-slide">
              <img class="contents-backimg img-pc" src="/resources/image/bg3.jpg" alt="PC 메인 비주얼 이미지">
              <div class="contents-slide-group container-md">
                <div class="textset textset-visual">
                  <h2 class="textset-tit">고객의 소리, 귀를 열겠습니다</h2>
                  <p class="textset-desc">  홈페이지 이용중에 불편사항, 건의사항 등등 <br> 저희 PESS-PORT가 해결하겠습니다 </p>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-button-next">&nbsp;&nbsp;&nbsp;<img src="/resources/icon/ico_arrow_right_withe.svg" alt=""></div>
          <div class="swiper-button-prev">&nbsp;&nbsp;&nbsp;<img src="/resources/icon/ico_arrow_left_withe.svg" alt=""></div>
          <div class="contents-control">
            <div class="swiper-pagination"></div>
            <div class="swiper-button-pause">
              <img src="/resources/icon/ico_pause_white.svg" alt="스와이퍼 멈춤버튼">
            </div>
            <div class="swiper-button-play">
              <img src="/resources/icon/ico_play_white.svg" alt="스와이퍼 재생버튼">
            </div>
          </div>
        </div>
      </div>
    </div>
		<!-- [E]glamping-N4 -->
		    <br><br><br>
    <video muted autoplay loop style="width: 100%;">
      <source src="/resources/video/main2.mp4" type="video/mp4">
    </video>
		<!-- [S]glamping-N5 -->
    <div class="glamping-N5" data-bid="KmLpj5JFIP">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="cardset-wrap">
            <div class="cardset cardset-xl cardset-deco cardset-hor row-rever hover06">
              <figure class="cardset-figure">
                <img class="cardset-img" src="/resources/image/동동동유럽.jpg" alt="카드이미지">
              </figure>
              <div class="cardset-body">
                <h2 class="cardset-tit"> <p style="font-size: 80px;">BEST 1</p> <br> 동유럽 패키지 <br> [체코/오스트리아/헝가리] </h2>
                <p class="cardset-desc"> 체코와인시음, <br> 동유럽 3대도시 자유시간 제공, <br> 국적기 왕복직항 <br><br>PESS-PORT가 여러분들과 함께합니다. </p>
                <a href="orderDetail.html" class="btnset btnset-round btnset-line btnset-black">상품보기</a>
              </div>
            </div>
            <div class="cardset cardset-xl cardset-deco cardset-hor hover07">
              <figure class="cardset-figure">
                <img class="cardset-img" src="/resources/image/파파파리.jpg" alt="카드이미지">
              </figure>
              <div class="cardset-body">
                <h2 class="cardset-tit"> <p style="font-size: 80px;">BEST 2</p> <br> 서유럽 패키지 <br> [프랑스/스위스/이탈리아] </h2>
                <p class="cardset-desc"> [국적기] 서유럽 스테디셀러 상품! <br> 한번의 상품으로 서유럽을 알차게 보고싶다면 이상품! <br><br>PESS-PORT가 여러분들과 함께합니다. </p>
                <a href="orderDetail.html" class="btnset btnset-round btnset-line btnset-black">상품보기</a>
              </div>
            </div>
            <div class="cardset cardset-xl cardset-deco cardset-hor row-rever hover06">
              <figure class="cardset-figure">
                <img class="cardset-img" src="/resources/image/미미미동부.jpg" alt="카드이미지">
              </figure>
              <div class="cardset-body">
                <h2 class="cardset-tit"> <p style="font-size: 80px;">BEST 3</p> <br> 미동부 패키지 <br> [캐나다/미국] </h2>
                <p class="cardset-desc"> 미동부 대표도시와 세계 3대 폭포 나이아가라 폭포를 포함해 <br> 캐나다 동부 대표도시들을 아우르는 미주 대표상품! <br><br>PESS-PORT가 여러분들과 함께합니다. </p>
                <a href="orderDetail.html" class="btnset btnset-round btnset-line btnset-black">상품보기</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
		<!-- [E]glamping-N5 -->
		<div class="glamping-N7" data-bid="BNlPj5JfJn">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset">
            <h2 class="textset-tit">PESS-PORT 여행패키지</h2>
            <p class="textset-desc"> PESS-PORT의 엄선된 9가지 패키지! </p>
          </div>
          <div class="contents-swiper">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <div class="contents-slide-group container-md hover01">
                  <a href="javascript:void(0);" class="cardset">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="/resources/image/package파리투어1.PNG" alt="이미지">
                    </figure>
                    <div class="cardset-body">
                      <h2 class="cardset-tit">파리 패키지</h2>
                      <p class="cardset-desc"> Paris Tour <br> 3,699,000 ₩ </p>
                    </div>
                  </a>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group container-md hover01">
                  <a href="javascript:void(0);" class="cardset">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="/resources/image/package동유럽2.PNG" alt="이미지">
                    </figure>
                    <div class="cardset-body">
                      <h2 class="cardset-tit">동유럽 패키지</h2>
                      <p class="cardset-desc"> Eastern Europe Tour <br> 2,599,000 ₩ </p>
                    </div>
                  </a>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group container-md hover01">
                  <a href="javascript:void(0);" class="cardset">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="/resources/image/package북유럽3.PNG" alt="이미지">
                    </figure>
                    <div class="cardset-body">
                      <h2 class="cardset-tit">북유럽 패키지</h2>
                      <p class="cardset-desc"> North Europe Tour <br> 4,699,000 ₩ </p>
                    </div>
                  </a>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group container-md hover01">
                  <a href="javascript:void(0);" class="cardset">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="/resources/image/package삿포로4.PNG" alt="이미지">
                    </figure>
                    <div class="cardset-body">
                      <h2 class="cardset-tit">삿포로 패키지</h2>
                      <p class="cardset-desc"> Sapporo Tour <br> 1,299,000 ₩ </p>
                    </div>
                  </a>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group container-md hover01">
                  <a href="javascript:void(0);" class="cardset">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="/resources/image/package장가계5.PNG" alt="이미지">
                    </figure>
                    <div class="cardset-body">
                      <h2 class="cardset-tit">장가계 패키지</h2>
                      <p class="cardset-desc"> Jangjiaji Tour <br> 569,000 ₩ </p>
                    </div>
                  </a>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group container-md hover01">
                  <a href="javascript:void(0);" class="cardset">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="/resources/image/package미동부6.PNG" alt="이미지">
                    </figure>
                    <div class="cardset-body">
                      <h2 class="cardset-tit">미동부 패키지</h2>
                      <p class="cardset-desc"> Eastern U.S Tour <br> 4,340,200 ₩ </p>
                    </div>
                  </a>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group container-md hover01">
                  <a href="javascript:void(0);" class="cardset">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="/resources/image/package칸쿤7.PNG" alt="이미지">
                    </figure>
                    <div class="cardset-body">
                      <h2 class="cardset-tit">칸쿤 패키지</h2>
                      <p class="cardset-desc"> Cancun Tour <br> 5,326,200 ₩ </p>
                    </div>
                  </a>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group container-md hover01">
                  <a href="javascript:void(0);" class="cardset">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="/resources/image/package남미투어8.PNG" alt="이미지">
                    </figure>
                    <div class="cardset-body">
                      <h2 class="cardset-tit">남미 패키지</h2>
                      <p class="cardset-desc"> South America Tour <br> 19,900,000 ₩ </p>
                    </div>
                  </a>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="contents-slide-group container-md hover01">
                  <a href="javascript:void(0);" class="cardset">
                    <figure class="cardset-figure">
                      <img class="cardset-img" src="/resources/image/package라오스9.PNG" alt="이미지">
                    </figure>
                    <div class="cardset-body">
                      <h2 class="cardset-tit">라오스 패키지</h2>
                      <p class="cardset-desc"> Laos Tour <br> 619,900 ₩ </p>
                    </div>
                  </a>
                </div>
              </div>
            </div>
            <div class="swiper-button-next">&nbsp;&nbsp;&nbsp;<img src="/resources/icon/ico_arrow_right_withe.svg" alt=""></div>
            <div class="swiper-button-prev">&nbsp;&nbsp;&nbsp;<img src="/resources/icon/ico_arrow_left_withe.svg" alt=""></div>
          </div>
          <div class="contents-control">
            <div class="swiper-pagination"></div>
            <a href="orderList.html" class="btnset btnset-text btnset-icon">자세히보기 <div class="btnset-img">
                <img src="/resources/icon/ico_more_black.svg" alt="자세히보기 아이콘">
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>
		<!-- [S]glamping-N6 -->
	<div class="glamping-N6" data-bid="LzLPJ5JfJ7">
      <div class="contents-inner">
        <div class="contents-container">
          <div class="imageset">
            <img class="imageset-img img-pc" src="/resources/image/airplane.jpg" alt="PC 이미지">
          </div>
          <div class="cardset cardset-xl cardset-deco">
            <h2 class="cardset-tit"> 어디갈지 모르시겠다구요? <br> 저희가 추천해드립니다!! </h2>
            <p class="cardset-desc"> 전세계 어디든 PESS-PORT와 함께 <br> 특별한 추억을 선물합니다. </p>
            <a href="/views/common/map.jsp" class="btnset btnset-round btnset-line btnset-white">Let's Go</a>
          </div>
        </div>
      </div>
    </div>
		<!-- [E]glamping-N6 -->
		
		<!-- [S]glamping-N8 -->
	<div class="glamping-N8" data-bid="HXLpj5jFk6">
      <div class="contents-inner">
        <div class="contents-container">
          <div class="videoset">
            <video class="videoset-video">
              <source src="/resources/video/ocean.mp4">
            </video>
            <div class="videoset-body container-md">
              <p class="videoset-subtit">PESS - PORT</p>
              <h2 class="videoset-tit"> 기분좋은 일상 속 행복 여행 <br> PESS-PORT 여행사 </h2>
              <button class="videoset-play">
                <img src="/resources/icon/ico_video_play.svg" alt="플레이버튼">
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
						<h2 class="textset-tit">PESS-PORT의 세계날씨</h2>
						<p class="textset-desc">세계날씨를 확인해 보세요!</p>
					</div>
					<div class="contents-control">
						<div class="swiper-button-prev">
							<img src="/resources/icon/ico_arrow_left_withe.svg" alt="">
						</div>
						<div class="swiper-button-next">
							<img src="/resources/icon/ico_arrow_right_withe.svg" alt="">
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
											<img class="cardset-img" src="/resources/image/국기한국.png" alt="이미지">
										</figure>
										<div class="cardset-profile">
											<script>
												$
														.getJSON(
																'https://api.openweathermap.org/data/2.5/weather?q=Seoul&appid=0ad6b5563ac41e400483a568e90cfe26&units=metric',
																function(result) {
																	$('.ctemp1')
																			.append(
																					result.main.temp)
																			.append(
																					"℃");
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
											<img class="cardset-img" src="/resources/image/국기체코.png" alt="이미지">
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
											<img class="cardset-img" src="/resources/image/국기노르웨이.png" alt="이미지">
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
											<img class="cardset-img" src="/resources/image/국기일본.png" alt="이미지">
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
											<img class="cardset-img" src="/resources/image/국기중국.png" alt="이미지">
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
											<img class="cardset-img" src="/resources/image/국기미국.png" alt="이미지">
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
											<img class="cardset-img" src="/resources/image/국기멕시코.png" alt="이미지">
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
											<img class="cardset-img" src="/resources/image/국기볼리비아.png" alt="이미지">
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
											<img class="cardset-img" src="/resources/image/국기라오스.png" alt="이미지">
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
			src="/resources/image/top.png" alt="" width="20">
	</span>
	</a>
	<!-- [S]glamping-N3 -->
	<footer class="glamping-N3" data-bid="hNLPJ5jFl2">
		<div class="footer-container">
			<!--<audio src="./music/home.mp3" controls="controls" autoplay="autoplay" style="display: none;"></audio> -->
			<img class="footer-backimg img-pc" src="/resources/image/apl.jpg"
				alt="PC 푸터 비주얼">
			<div class="footer-body container-md">
				<h2 class="footer-logo">
					<a href="javascript:void(0)"> <img src="/resources/image/pessport.png"
						alt="로고">
					</a>
				</h2>

				<ul class="footer-snslist">
					<li class="footer-snsitem"><a class="footer-snslink"
						href="https://www.instagram.com/"> <img
							src="/resources/icon/ico_instagram_white.svg" alt="인스타그램">
					</a></li>
					<li class="footer-snsitem"><a class="footer-snslink"
						href="https://www.youtube.com"> <img
							src="/resources/icon/ico_youtube_white.svg" alt="유튜브">
					</a></li>
					<li class="footer-snsitem"><a class="footer-snslink"
						href="https://www.facebook.com"> <img
							src="/resources/icon/ico_facebook_white.svg" alt="페이스북">
					</a></li>
				</ul>
				<ul class="footer-menugroup">
					<li class="footer-menulink"><a href="javascript:void(0)">
							<span>이용약관</span>
					</a></li>
					<li class="footer-menulink"><a href="javascript:void(0)">
							<span>개인정보처리방침</span>
					</a></li>
					<li class="footer-menulink"><a href="/views/common/home1.jsp"> <span>이스터에그</span>
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
	<script src="/resources/js/setting.js"></script>
	<script src="/resources/js/plugin.js"></script>
	<script src="/resources/js/template.js"></script>
	<script src="/resources/js/common.js"></script>
	<script src="/resources/js/script.js"></script>
</body>