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
	<div class="glamping-N3">
		<img class="footer-backimg img-pc" src="/resources/image/airplane2.jpg"
			alt="PC 푸터 비주얼">
	</div>
	<!-- [E]glamping-N1 -->
	<br>
	<br>
	<br>
	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h3 class="pgc" style="font-size: 100px;">
					<b>Review</b>
				</h3>
				<br>
				<h3 class="pgc">Tell us about your experience.</h3>
			</div>
		</div>
		<input type="hidden" name="mno" value="${reviewBoard.mno}">
		<br>
		<br>
		<!-- board seach area -->
		<div id="board-search">
			<div class="container iipp6">
				<div class="search-window">
					<form action="/reviewBoardList.do" method="GET">
						<div class="search-wrap">
							
							<input type="hidden" name="cpage" value="1"> 
							<input
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
							<td>●</td>
							<th><a href="/views/common/privacy.jsp">[공지사항] 개인정보 처리방침 변경안내</a>
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
									<tr style="cursor: pointer;" onclick="detailPage(${item.idx}, ${item.mno})">
										<td>${row}</td>
										<th>${item.title}</th>
										<td>${item.nickName}</td>
										<td>${item.star}</td>
										<td>${item.views}</td>
									</tr>
									<c:set var="row" value="${row-1}" />
								</c:forEach>
							</c:otherwise>
						</c:choose>

						<tr scope="row">

					</tbody>
				</table>
			</div>
		</div>

		<form action="/views/reviewboard/reviewEnroll.jsp" method="POST">
			<button class="btn-s btn-s-dark">글작성</button>
		</form>

		
		<div class="pagination wcct">

			<c:choose>
				<c:when test="${pi.currentPage == 1}">
					<a href="#">&laquo;</a>
				</c:when>
				<c:otherwise>
					<a
						href="/reviewBoardList.do?cpage=${pi.currentPage-1}&searchText=${searchText}">&laquo;</a>
				</c:otherwise>
			</c:choose>


			<c:forEach var="page" begin="${pi.startPage}" end="${pi.endPage}">
				<a href="/reviewBoardList.do?cpage=${page}&searchText=${searchText}">${page}</a>
			</c:forEach>


			<c:choose>
				<c:when test="${pi.currentPage == pi.maxPage}">
					<a href="#">&raquo;</a>
				</c:when>
				<c:otherwise>
					<a
						href="/boardList.do?cpage=${pi.currentPage+1}&searchText=${searchText}">&raquo;</a>
				</c:otherwise>
			</c:choose>
		</div>
		
		
		
		
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
		<%@ include file="/views/common/footer.jsp"%>
	</footer>


</body>
<script src="/resources/js/reviewboard.js"></script>
</html>