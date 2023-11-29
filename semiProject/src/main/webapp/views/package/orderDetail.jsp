<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en-us">
    

    <head>

        <!-- Meta -->
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1">

        <title>Viking Tours</title>
        <meta name="description" content="">

        <!-- The compiled CSS file -->
        <link rel="stylesheet" href="/resources/css/board/production.css">
        <link rel="stylesheet" href="/resources/css/board/yh.css">
        <link rel="stylesheet" href="/resources/css/board/order.css">
        <link rel="stylesheet" href="/resources/css/board/table.css">

        <!-- 부트스트랩 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        

        <!-- Web fonts -->
        <link href="https://fonts.googleapis.com/css?family=Cabin:400,700|Playfair+Display:900" rel="stylesheet">

        <!-- favicon.ico. Place these in the root directory. -->
        <link rel="shortcut icon" href="favicon.ico">

    </head>
    

    <body>
      <!-- ㅇㅇ -->
      <div class="container"> <!-- 중반부 전체를 감싸는 div 태그-->
        <div class="page-title left5">
          <div class="container">
              <h3 style="font-size: 50px;">Tour Package</h3>
            </div>
          </div>
          <!--중반부 를 두개의 div태그로 나누어 오른쪾 절반의 구역으로 나눠줌-->
          <div class="left2">
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
          </div>
        </div><br><br>
          <div id="fifth">
            <div>
                        <p class="packagename">${pack.p_name}</p>
                    </div>
                    <div id="heart2">
                        <a href="#"><i class="far fa-heart" id="heart3"></i></a>
                    </div>
                </div>

                <p class="detail left2">${pack.p_content}</p>
                <div class="productdetail left4">
                  <span>기간</span>
                <select class="pts" name="languages" id="lang">
                  <option value="">기간을 선택해주세요.</option>
                  <option value="">2023-11-23 ~ 2023-12-23</option>
                  <option value="">2023-11-25 ~ 2023-12-25</option>
                  <option value="">2023-11-27 ~ 2023-12-27</option>
                  <option value="">2023-11-29 ~ 2023-12-29</option>
                </select>
              </div>
                <div class="productdetail left3">
                    <span>가격</span>
                    <span>${pack.p_price}</span>
                </div>
                <div class="productdetail left3">
                  <span>인원수</span>
                  <input class="minsu2 pts" type="number">
              </div><br>
                <button style="margin: 0px;" class="btn-s btn-s-dark">구매</button><br><br><br><br>
                <div class="page-title left2">
                <div class="container">
                    <h3 style="font-size: 30px;">Thank you for purchasing our product.</h3>
                </div>
            </div>
      </div>
        <!-- ㅇㅇ -->
    <div class="grid-row">
   
        <div class="body full-width pt1 pr2 pb2 pl2">
            <!-- Navigation -->
			<nav class="navigation border--bottom pt1">
				<a href="/form/loginform.do" class="link link--text left">로그인</a> <a
					href="/form/registerform.do" class="link link--text">회원가입</a>
			</nav>

			<nav class="navigation border--bottom pt1">
				<a href="/views/common/map.jsp" class="link link--text">지도<svg
						xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-globe-americas"
						viewBox="0 0 16 16">
                    <path
							d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0ZM2.04 4.326c.325 1.329 2.532 2.54 3.717 3.19.48.263.793.434.743.484-.08.08-.162.158-.242.234-.416.396-.787.749-.758 1.266.035.634.618.824 1.214 1.017.577.188 1.168.38 1.286.983.082.417-.075.988-.22 1.52-.215.782-.406 1.48.22 1.48 1.5-.5 3.798-3.186 4-5 .138-1.243-2-2-3.5-2.5-.478-.16-.755.081-.99.284-.172.15-.322.279-.51.216-.445-.148-2.5-2-1.5-2.5.78-.39.952-.171 1.227.182.078.099.163.208.273.318.609.304.662-.132.723-.633.039-.322.081-.671.277-.867.434-.434 1.265-.791 2.028-1.12.712-.306 1.365-.587 1.579-.88A7 7 0 1 1 2.04 4.327Z" />
                  </svg></a> <a href="/reviewBoardList.do?cpage=1"
					class="link link--text">리뷰<svg
						xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
                    <path
							d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z" />
                  </svg></a> <a href="/boardList.do?cpage=1"
					class="link link--text">게시판<svg
						xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-card-list" viewBox="0 0 16 16">
                    <path
							d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z" />
                    <path
							d="M5 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 5 8zm0-2.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0 5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm-1-5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zM4 8a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zm0 2.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0z" />
                  </svg></a> <a href="/views/package/orderList.jsp"
					class="link link--text">여행 패키지<svg
						xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-airplane" viewBox="0 0 16 16">
                    <path
							d="M6.428 1.151C6.708.591 7.213 0 8 0s1.292.592 1.572 1.151C9.861 1.73 10 2.431 10 3v3.691l5.17 2.585a1.5 1.5 0 0 1 .83 1.342V12a.5.5 0 0 1-.582.493l-5.507-.918-.375 2.253 1.318 1.318A.5.5 0 0 1 10.5 16h-5a.5.5 0 0 1-.354-.854l1.319-1.318-.376-2.253-5.507.918A.5.5 0 0 1 0 12v-1.382a1.5 1.5 0 0 1 .83-1.342L6 6.691V3c0-.568.14-1.271.428-1.849Zm.894.448C7.111 2.02 7 2.569 7 3v4a.5.5 0 0 1-.276.447l-5.448 2.724a.5.5 0 0 0-.276.447v.792l5.418-.903a.5.5 0 0 1 .575.41l.5 3a.5.5 0 0 1-.14.437L6.708 15h2.586l-.647-.646a.5.5 0 0 1-.14-.436l.5-3a.5.5 0 0 1 .576-.411L15 11.41v-.792a.5.5 0 0 0-.276-.447L9.276 7.447A.5.5 0 0 1 9 7V3c0-.432-.11-.979-.322-1.401C8.458 1.159 8.213 1 8 1c-.213 0-.458.158-.678.599Z" />
                  </svg></a>
				<!-- <c:if test="${!empty sessionScope.name}"><a href="#" class="link link--text">마이페이지</a></c:if> -->
			</nav>
              
        
            <!-- Page Content -->
            <main class="content pt2 pb2">
                <h2>여행 패키지 상세</h2>
            
            </main>
                        <!-- Footer -->
            <footer class="border--top pt1 pb1">
                <!-- <video muted autoplay loop>
                    <source src="../video/ppp.mp4" type="video/mp4">
                </video> -->
                <p class="text--gray small mb0">&copy; PESS-PORT | 조장 : 엄윤호 <a href="https://www.eatapapaya.com" class="link link--text"></a>.</p>
            </footer>
        </div><!-- end Body -->

    </div>

    </body>
</html>
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

