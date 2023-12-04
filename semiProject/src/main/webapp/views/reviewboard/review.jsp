<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en-us">


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

  <link href="https://fonts.googleapis.com/css?family=Cabin:400,700|Playfair+Display:900" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ephesis&display=swap" rel="stylesheet">
<script src="/resources/js/reviewboard.js"></script>	

</head>

<body>
  <!-- [S]glamping-N1 -->
  <header class="glamping-N1" data-bid="jILPJ5JfH5">
    <div class="header-container container-lg">
      <div class="header-left">
        <h1 class="header-title">
          <a href="home.html">
            <img src="/resources/img/pessport.png" alt="로고">
          </a>
        </h1>
      </div>
      <div class="header-center">
        <ul class="header-gnblist">
          <li class="header-gnbitem">
            <a class="header-gnblink" href="map.html">
              <span>여행지추천</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
                <a class="header-sublink" href="map.html">
                  <span>지도로 이동</span>
                </a>
              </li>
            </ul>
          </li>
          <li class="header-gnbitem">
            <a class="header-gnblink" href="list.html">
              <span>자유게시판</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
                <a class="header-sublink" href="list.html">
                  <span>게시판</span>
                </a>
              </li>
              <li class="header-subitem">
                <a class="header-sublink" href="list2.html">
                  <span>게시글 작성</span>
                </a>
              </li>
            </ul>
          </li>
          <li class="header-gnbitem">
            <a class="header-gnblink" href="review.html">
              <span>리뷰게시판</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
                <a class="header-sublink" href="review.html">
                  <span>게시판</span>
                </a>
              </li>
              <li class="header-subitem">
                <a class="header-sublink" href="review2.html">
                  <span>게시글 작성</span>
                </a>
              </li>
            </ul>
          </li>
          <li class="header-gnbitem">
            <a class="header-gnblink" href="orderList.html">
              <span>여행패키지</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
                <a class="header-sublink" href="orderList.html">
                  <span>패키지 상품</span>
                </a>
              </li>
            </ul>
          </li>
          <li class="header-gnbitem">
            <a class="header-gnblink" href="myPage.html">
              <span>마이페이지</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
                <a class="header-sublink" href="infoDetail.html">
                  <span>내정보</span>
                </a>
              </li>
              <li class="header-subitem">
                <a class="header-sublink" href="myList.html">
                  <span>구매목록</span>
                </a>
              </li>
            </ul>
          </li>
          <a class="header-gnblink log" href="login.html">
            <span>로그인</span>
          </a>
          <a class="header-gnblink log1" href="register.html">
            <span>회원가입</span>
          </a>
        </div>
      </div>
    </header>
    <div class="glamping-N3">
      <img class="footer-backimg img-pc" src="/resources/img/airplane2.jpg" alt="PC 푸터 비주얼">
    </div>
    <!-- [E]glamping-N1 -->
    <br><br><br>
    <section class="notice">
        <div class="page-title">
            <div class="container">
                <h3 class="pgc" style="font-size: 100px;"><b>Review</b></h3>
                <br>
                <h3 class="pgc">Tell us about your experience.</h3>
            </div>
      </div>
      <br><br>
          <!-- board seach area -->
		<div id="board-search">
			<div class="container">
				<div class="search-window">
					<form action="/reviewBoardList.do" method="GET">
						<div class="search-wrap">
							<input type="hidden" name="cpage" value="1"> <input
								id="search" type="search" name="searchText"
								placeholder="검색어를 입력해주세요.">
							<button type="submit" class="btn btn-dark">검색</button>
						</div>
					</form>
				</div>
			</div>
		</div>
       
      <!-- board list area -->
        <div id="board-list">
			<div class="container">
				<table class="board-table">
					<thead>
						<tr>
							<th scope="col" class="th-num">번호</th>
							<th scope="col" class="th-title">제목</th>
							<th scope="col" class="th-num">작성자</th>
							<th scope="col" class="th-date">별점</th>
							<th scope="col" class="th-num">조회수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<th><a href="#!">[공지사항] 개인정보 처리방침 변경안내처리방침</a>
							<p>테스트</p>
							</th>
							<td>운영자</td>
							<td>★★★★★</td>
							<td>30</td>
						</tr>

						<c:choose>
							<c:when test="${empty list}">
								<tr>
									<td colspan="5" class="text-center">등록된 글이 없습니다 리뷰를
										등록해주세요.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="item" items="${list}">
									<tr>
									<tr onclick="detailPage(${item.idx})">
										<td>${row}</td>
										<th>${item.title}</th>
										<td>${item.nickName}</td>
										<td>${item.star}</td>
										<td>${item.views}</td>
									</tr>
									</tr>
									<c:set var="row" value="${row-1}" />
								</c:forEach>
							</c:otherwise>
						</c:choose>

						<tr scope="row">



							<!-- 
                      <tr>
                          <td>2</td>
                          <th><a href="#!">민수형 먹방입니다. 이용해주셔서 감사합니다</a></th>
                          <td>나는민수</td>
                          <td>★★★★★</td>
                          <td>1</td>
                      </tr>
      
                      <tr>
                        <td>3</td>
                        <th><a href="#!">민수형 먹방입니다. 이용해주셔서 감사합니다</a></th>
                        <td>나는민수</td>
                        <td>★★★★★</td>
                          <td>1</td>
                    </tr>

                    <tr>
                      <td>4</td>
                      <th><a href="#!">민수형 먹방입니다. 이용해주셔서 감사합니다</a></th>
                      <td>나는민수</td>
                      <td>★★★★★</td>
                          <td>1</td>
                  </tr>

                  <tr>
                    <td>5</td>
                    <th><a href="#!">민수형 먹방입니다. 이용해주셔서 감사합니다</a></th>
                    <td>나는민수</td>
                    <td>★★★★★</td>
                    <td>1</td>
                </tr>

                <tr>
                  <td>6</td>
                  <th><a href="#!">민수형 먹방입니다. 이용해주셔서 감사합니다</a></th>
                  <td>나는민수</td>
                  <td>★★★★★</td>
                          <td>1</td>
              </tr>

              <tr>
                <td>7</td>
                <th><a href="#!">민수형 먹방입니다. 이용해주셔서 감사합니다</a></th>
                <td>나는민수</td>
                <td>★★★★★</td>
                          <td>1</td>
            </tr>

            <tr>
              <td>8</td>
              <th><a href="#!">민수형 먹방입니다. 이용해주셔서 감사합니다</a></th>
              <td>나는민수</td>
              <td>★★★★★</td>
              <td>1</td>
          </tr>

          <tr>
            <td>9</td>
            <th><a href="#!">민수형 먹방입니다. 이용해주셔서 감사합니다</a></th>
            <td>나는민수</td>
            <td>★★★★★</td>
                          <td>1</td>
        </tr>

        <tr>
          <td>10</td>
          <th><a href="#!">민수형 먹방입니다. 이용해주셔서 감사합니다</a></th>
          <td>나는민수</td>
          <td>★★★★★</td>
          <td>1</td>
      </tr>

      <tr>
        <td>11</td>
        <th><a href="#!">민수형 먹방입니다. 이용해주셔서 감사합니다</a></th>
        <td>나는민수</td>
        <td>★★★★★</td>
                          <td>1</td>
    </tr>

    <tr>
      <td>12</td>
      <th><a href="#!">민수형 먹방입니다. 이용해주셔서 감사합니다</a></th>
      <td>나는민수</td>
      <td>★★★★★</td>
                          <td>1</td>
  </tr>
   -->
					</tbody>
				</table>
			</div>
		</div>

		<form action="/views/reviewboard/reviewEnroll.jsp" method="POST">
			<button class="btn-s btn-s-dark">글작성</button>
		</form>
		
<div class="pagination wcct">
    <a href="#">&laquo;</a>
    <a href="#">1</a>
    <a href="#">2</a>
    <a href="#">3</a>
    <a href="#">4</a>
    <a href="#">5</a>
    <a href="#">&raquo;</a>
  </div>
</section>
<div class="page-title">
  <div class="container">
      <h3 class="pgc" style="font-size: 50px;">
        Thank you for using [ Pess-Port ] travel agency.</h3>
  </div>
</div>
    <!-- [E]glamping-N9 -->
  <!-- [S]glamping-N3 -->
  <footer class="glamping-N3" data-bid="hNLPJ5jFl2">
    <div class="footer-container">
      <!-- <audio src="./music/home.mp3" controls="controls" autoplay="autoplay" style="display: none;"></audio> -->
      <img class="footer-backimg img-pc" src="/resources/img/apl.jpg" alt="PC 푸터 비주얼">
      <div class="footer-body container-md">
        <h2 class="footer-logo">
          <a href="javascript:void(0)">
              <img src="/resources/img/pessport.png" alt="로고">
          </a>
        </h2>
       
        <ul class="footer-snslist">
          <li class="footer-snsitem">
            <a class="footer-snslink" href="javascript:void(0)">
              <img src="/resources/icon/ico_instagram_white.svg" alt="인스타그램">
            </a>
          </li>
          <li class="footer-snsitem">
            <a class="footer-snslink" href="javascript:void(0)">
              <img src="/resources/icon/ico_youtube_white.svg" alt="유튜브">
            </a>
          </li>
          <li class="footer-snsitem">
            <a class="footer-snslink" href="javascript:void(0)">
              <img src="/resources/icon/ico_facebook_white.svg" alt="페이스북">
            </a>
          </li>
        </ul>
        <ul class="footer-menugroup">
          <li class="footer-menulink">
            <a href="javascript:void(0)">
              <span>이용약관</span>
            </a>
          </li>
          <li class="footer-menulink">
            <a href="javascript:void(0)">
              <span>개인정보처리방침</span>
            </a>
          </li>
          <li class="footer-menulink">
            <a href="home1.html">
              <span>이스터에그</span>
            </a>
          </li>
        </ul>
        <div class="footer-txtgroup">
          <div class="footer-txt">
            <p> 경기도 안양시 만안구 안양로 303 안양메쎄타워 8층 </p>
            <p>
              <span>T. 010-1234-5678</span>
              <span>E. pessport@naver.com</span>
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
  <script src="/resources/js/style/setting.js"></script>
  <script src="/resources/js/style/plugin.js"></script>
  <script src="/resources/js/style/template.js"></script>
  <script src="/resources/js/style/common.js"></script>
  <script src="/resources/js/style/script.js"></script>
  
</body>