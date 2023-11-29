<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en-us">


<head>
<script src="/resources/js/reviewboard.js"></script>

<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">

<meta name="description" content="">

<!-- The compiled CSS file -->
<link rel="stylesheet" href="/resources/css/board/production.css">
<link rel="stylesheet" href="/resources/css/board/yh.css">
<link rel="stylesheet" href="/resources/css/board/table.css">


<!-- 부트스트랩 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>


<!-- Web fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Cabin:400,700|Playfair+Display:900"
	rel="stylesheet">

<!-- favicon.ico. Place these in the root directory. -->
<link rel="shortcut icon" href="favicon.ico">






</head>
<body>
	<section class="notice left2">
		<div class="page-title">
			<div class="container">
				<h3>Review</h3>
			</div>
		</div>

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
								<p>테스트</p></th>
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
									<tr onclick="detailPage(${item.idx})">
										<td>${row}</td>
										<td>${item.title}</td>
										<td>${item.nickName}</td>
										<td>${item.star}</td>
										<td>${item.views}</td>
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
			<button class="btn-s btn-s-dark">리뷰작성</button>
		</form>

	</section>


	<!-- Body -->
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
                  </svg></a>
		</nav>

		<!-- Page Content -->
		<main class="content pt2 pb2">
			<h2>리뷰 게시판 입니다.</h2>


		</main>
		<!-- Footer -->
		<footer class="border--top pt1 pb1">
			<video muted autoplay loop>
				<source src="/views/video/ppp.mp4" type="video/mp4">
			</video>
			<p class="text--gray small mb0">
				&copy; PESS-PORT | 조장 : 엄윤호 <a href="https://www.eatapapaya.com"
					class="link link--text"></a>.
			</p>
		</footer>
	</div>
	<!-- end Body -->

	</div>
	<script src="./css-table-12/js/jquery-3.3.1.min.js"></script>
	<script src="./css-table-12/js/popper.min.js"></script>
	<script src="./css-table-12/js/bootstrap.min.js"></script>
	<script src="./css-table-12/js/main.js"></script>

</body>
</html>