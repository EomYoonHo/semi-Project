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
  <link rel="stylesheet" href="/resources/css/board/yh.css">
  <link rel="stylesheet" href="/resources/css/board/table.css">
  <link rel="stylesheet" href="/resources/css/board/order.css">
  <link rel="stylesheet" th:href="@{./css/bootstrap.css}">
        <link rel="stylesheet" th:href="@{./css/custom.min.css}">
        <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">

  <!-- Web fonts -->
  <link href="https://fonts.googleapis.com/css?family=Cabin:400,700|Playfair+Display:900" rel="stylesheet">

  <!-- favicon.ico. Place these in the root directory. -->
  <link rel="shortcut icon" href="favicon.ico">

  <!-- 잡것 -->
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Cabin:400,700|Playfair+Display:900" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ephesis&display=swap" rel="stylesheet">
</head>

<body>
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
    <div class="glamping-N3">
      <img class="footer-backimg img-pc" src="./img/airplane2.jpg" alt="PC 푸터 비주얼">
    </div>
    <br><br><br><br><br><br>

    <div class="container wsmm"> <!-- 중반부 전체를 감싸는 div 태그-->
      <div class="page-title">
        <div class="container">
            <h3 class="pgc" style="font-size: 100px;"><b>Tour Package</b></h3>
            <br>
            <h3 class="pgc">Enjoy the perfect trip.</h3>
        </div>
      </div>
        <!--중반부 를 두개의 div태그로 나누어 오른쪾 절반의 구역으로 나눠줌-->
        
        <div class="product-list">
          <div class="slider">
            <div class="slide img">
              <img src="${pack.p_file_path1}" alt="이미지 1">
            </div>
            <div class="slide img">
              <img src="${pack.p_file_path2}" alt="이미지 1">
            </div>
            <div class="slide img">
              <img src="${pack.p_file_path3}" alt="이미지 1">
            </div>
        </div>
      </div><br><br>
        <div id="fifth">
        	<div>
				<p class="packagename">${pack.p_name}</p>
			</div>
                      <p class="packagename ct">여행 패키지</p>
                      <p class="packagename2 ct">Travel Package</p>
         </div>
                 
              
                  <p class="detail ct">이 패키지는 개씹지리는 여행 패키지입니다.</p>
                  <div class="iipp2">
              <div class="productdetail dfjc">
                <span>기간</span>
              <select class="www pgc pptt">
                <option value="">기간을 선택해주세요.</option>
                <option value="2023-11-23~2023-12-23">2023-11-23 ~ 2023-12-23</option>
                <option value="2023-11-25~2023-12-25">2023-11-25 ~ 2023-12-25</option>
                <option value="2023-11-27~2023-12-27">2023-11-27 ~ 2023-12-27</option>
                <option value="2023-11-29~2023-12-29">2023-11-29 ~ 2023-12-29</option>
              </select>
            </div>
              <div class="productdetail dfjc">
                  <span>1인가격</span>
                  <span>${pack.p_price}</span>
              </div>
              <div class="productdetail dfjc">
                <span>인원수</span>
                <input class="minsu2 pts" value="1" type="number" onclick="multiplication()" onkeyup="multiplication()" id="mulkey" style="background-color: white; width: 5%;">
              </div>
              <div class="iipp6">
                <div class="productdetail dfjc">
                  <span>최종가격</span>
                  <span id="totalPrice"></span>
                </div>
              </div>
              		<div>
			<span>포인트 사용</span> <input type="number" id="pointUse"
				value="${PointBalance.p_balance}" disabled>
			<button onclick="pointUse()">전부 사용</button>
		</div>
		<div class="productdetail left3">
			<span>결제하실금액</span> <span id="payPrice"></span>
		</div>
              
              
      </div>
  </div>
          <br>

          <div class="pt-1 dfjc">
            <button class="custom-btn btn-6" onclick="requestPay()"><span>구매</span>
          </div>

          <br><br>
          <div class="page-title">
                <div class="container">
                    <h3 class="pgc" style="font-size: 50px;">Thank you for using [ Pess-Port ] travel agency.</h3>
                </div>
              </div>
            
        <!-- [E]glamping-N9 -->
        <!-- [S]glamping-N3 -->
        <footer class="glamping-N3" data-bid="hNLPJ5jFl2">
          <div class="footer-container">
      <!-- <audio src="./music/home.mp3" controls="controls" autoplay="autoplay" style="display: none;"></audio> -->
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
<script>
  let currentSlide = 0;
  const slides = document.querySelectorAll('.slide');
  const slideCount = slides.length;

  function showSlide(n) {
      slides.forEach(slide => slide.style.display = 'none');
      slides[n].style.display = 'block';
  }

  function nextSlide() {
      currentSlide = (currentSlide + 1) % slideCount;
      showSlide(currentSlide);
  }

  function prevSlide() {
      currentSlide = (currentSlide - 1 + slideCount) % slideCount;
      showSlide(currentSlide);
  }

  document.addEventListener('DOMContentLoaded', () => {
      showSlide(currentSlide);
      setInterval(nextSlide, 3000); // 3초마다 자동 슬라이드
  });
</script>