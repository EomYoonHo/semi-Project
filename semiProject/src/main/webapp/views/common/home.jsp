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
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>
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
   $(function() {

	    get_rate();
	    get_czk();
	    get_nok();
	    get_jpy();
	    get_cnh();
	    get_mxn();
	    get_bob();
	    get_lak();
	    
	 }); 
	function get_rate() {
	      $.ajax({
	               type : "GET",
	               url : "https://quotation-api-cdn.dunamu.com/v1/forex/recent?codes=FRX.KRWUSD",
	               data : {},
	               success : function(response) {
	                  console.log(response);
	                  let now_rate = response[0].basePrice;
	                  console.log(now_rate);
	                  let nowrate = document.getElementsByClassName("now_rate");
	                  nowrate[0].innerHTML = now_rate+"₩"
	                  nowrate[1].innerHTML = now_rate+"₩"
	                  nowrate[2].innerHTML = now_rate+"₩"
	               }
	            })
	   }
	   
	   function get_czk() {
	      $.ajax({
	               type : "GET",
	               url : "https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/czk.json",
	               data : {},
	               success : function(response) {
	                  console.log(response['czk'])
	                  let now_rate = response['czk'].krw;
	                  let get_czk = document.getElementsByClassName("get_czk")
	                  get_czk[0].innerHTML = Math.round(now_rate)+"₩"
	                  get_czk[1].innerHTML = Math.round(now_rate)+"₩"
	                  get_czk[2].innerHTML = Math.round(now_rate)+"₩"
	               }
	            })
	   }
	   function get_nok() {
	      $.ajax({
	               type : "GET",
	               url : "https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/nok.json",
	               data : {},
	               success : function(response) {
	                  console.log(response['nok'])
	                  let now_rate = response['nok'].krw;
	                  let get_nok = document.getElementsByClassName("get_nok")
	                  get_nok[0].innerHTML = Math.round(now_rate)+"₩"
	                  get_nok[1].innerHTML = Math.round(now_rate)+"₩"
	                  get_nok[2].innerHTML = Math.round(now_rate)+"₩"
	               }
	            })
	   }
	   function get_jpy() {
	      $.ajax({
	               type : "GET",
	               url : "https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/jpy.json",
	               data : {},
	               success : function(response) {
	                  console.log(response['jpy'])
	                  let now_rate = response['jpy'].krw;
	                  let get_jpy = document.getElementsByClassName("get_jpy")
	                  get_jpy[0].innerHTML = Math.round((now_rate*100))+"₩"
	                  get_jpy[1].innerHTML = Math.round((now_rate*100))+"₩"
	                  get_jpy[2].innerHTML = Math.round((now_rate*100))+"₩"
	               }
	            })
	   }
	   function get_cnh() {
	      $.ajax({
	               type : "GET",
	               url : "https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/cnh.json",
	               data : {},
	               success : function(response) {
	                  console.log(response['cnh'])
	                  let now_rate = response['cnh'].krw;
	                  let get_cnh = document.getElementsByClassName("get_cnh")
	                  get_cnh[0].innerHTML = Math.round(now_rate)+"₩"
	                  get_cnh[1].innerHTML = Math.round(now_rate)+"₩"
	                  get_cnh[2].innerHTML = Math.round(now_rate)+"₩"
	               }
	            })
	   }

	   function get_mxn() {
	      $.ajax({
	               type : "GET",
	               url : "https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/mxn.json",
	               data : {},
	               success : function(response) {
	                  console.log(response['mxn'])
	                  let now_rate = response['mxn'].krw;
	                  let get_mxn = document.getElementsByClassName("get_mxn")
	                  get_mxn[0].innerHTML = Math.round(now_rate)+"₩"
	                  get_mxn[1].innerHTML = Math.round(now_rate)+"₩"
	                  get_mxn[2].innerHTML = Math.round(now_rate)+"₩"
	               }
	            })
	   }
	   function get_bob() {
	      $.ajax({
	               type : "GET",
	               url : "https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/bob.json",
	               data : {},
	               success : function(response) {
	                  console.log(response['bob'])
	                  let now_rate = response['bob'].krw;
	                  let get_bob = document.getElementsByClassName("get_bob")
	                  get_bob[0].innerHTML = Math.round(now_rate)+"₩"
	                  get_bob[1].innerHTML = Math.round(now_rate)+"₩"
	                  get_bob[2].innerHTML = Math.round(now_rate)+"₩"
	               }
	            })
	   }
	   function get_lak() {
	      $.ajax({
	               type : "GET",
	               url : "https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/lak.json",
	               data : {},
	               success : function(response) {
	                  console.log(response['lak'])
	                  let now_rate = response['lak'].krw;
	                  let get_lak = document.getElementsByClassName("get_lak")
	                  get_lak[0].innerHTML = (now_rate*1000).toFixed(2)+"₩"
	                  get_lak[1].innerHTML = (now_rate*1000).toFixed(2)+"₩"
	                  get_lak[2].innerHTML = (now_rate*1000).toFixed(2)+"₩"
	               }
	            })
	   }
   </script>
</head>

<body>
	<!-- [S]glamping-N1 -->
	<header class="glamping-N1" data-bid="jILPJ5JfH5">
<%@ include file="/views/common/header.jsp"%>
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
                <a href="/packageControll.do?p_idx=2" class="btnset btnset-round btnset-line btnset-black">상품보기</a>
              </div>
            </div>
            <div class="cardset cardset-xl cardset-deco cardset-hor hover07">
              <figure class="cardset-figure">
                <img class="cardset-img" src="/resources/image/파파파리.jpg" alt="카드이미지">
              </figure>
              <div class="cardset-body">
                <h2 class="cardset-tit"> <p style="font-size: 80px;">BEST 2</p> <br> 서유럽 패키지 <br> [프랑스/스위스/이탈리아] </h2>
                <p class="cardset-desc"> [국적기] 서유럽 스테디셀러 상품! <br> 한번의 상품으로 서유럽을 알차게 보고싶다면 이상품! <br><br>PESS-PORT가 여러분들과 함께합니다. </p>
                <a href="/packageControll.do?p_idx=1" class="btnset btnset-round btnset-line btnset-black">상품보기</a>
              </div>
            </div>
            <div class="cardset cardset-xl cardset-deco cardset-hor row-rever hover06">
              <figure class="cardset-figure">
                <img class="cardset-img" src="/resources/image/미미미동부.jpg" alt="카드이미지">
              </figure>
              <div class="cardset-body">
                <h2 class="cardset-tit"> <p style="font-size: 80px;">BEST 3</p> <br> 미동부 패키지 <br> [캐나다/미국] </h2>
                <p class="cardset-desc"> 미동부 대표도시와 세계 3대 폭포 나이아가라 폭포를 포함해 <br> 캐나다 동부 대표도시들을 아우르는 미주 대표상품! <br><br>PESS-PORT가 여러분들과 함께합니다. </p>
                <a href="/packageControll.do?p_idx=6" class="btnset btnset-round btnset-line btnset-black">상품보기</a>
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
                  <a href="/packageControll.do?p_idx=1" class="cardset">
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
                  <a href="/packageControll.do?p_idx=2" class="cardset">
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
                  <a href="/packageControll.do?p_idx=3" class="cardset">
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
                  <a href="/packageControll.do?p_idx=4" class="cardset">
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
                  <a href="/packageControll.do?p_idx=5" class="cardset">
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
                  <a href="/packageControll.do?p_idx=6" class="cardset">
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
                  <a href="/packageControll.do?p_idx=7" class="cardset">
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
                  <a href="/packageControll.do?p_idx=8" class="cardset">
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
                  <a href="/packageControll.do?p_idx=9" class="cardset">
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
            <a href="/views/package/orderList.jsp" class="btnset btnset-text btnset-icon">자세히보기 <div class="btnset-img">
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
						<h2 class="textset-tit">PESS-PORT의 세계날씨 & 환율</h2>
						<p class="textset-desc">실시간 정보를 확인해 보세요!</p>
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
											<p class="rate">1코루나 = <span id="get_czk" class="get_czk"></span></p>
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
											<p class="rate">1크로네 = <span id="get_nok" class="get_nok">()</span></p>
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
											<p class="rate">100엔 = <span id="get_jpy" class="get_jpy"></span></p>
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
											<p class="rate">1위안 = <span id="get_cnh" class="get_cnh"></span></p>
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
											<p class="rate">1달러 = <span id="now_rate" class="now_rate"></span></p>
											
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
											<p class="rate">1페소 = <span id="get_mxn" class="get_mxn"></span></p>
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
											<p class="rate">1볼리비아노 = <span id="get_bob" class="get_bob"></span></p>
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
											 <p class="rate">1000킵 = <span id="get_lak" class="get_lak"></span></p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
<footer class="glamping-N3" data-bid="hNLPJ5jFl2">
		<%@ include file="/views/common/footer.jsp"%>
</footer>

</body>


</html>
