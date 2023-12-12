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
<link
	href="https://fonts.googleapis.com/css?family=Cabin:400,700|Playfair+Display:900"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Ephesis&display=swap"
	rel="stylesheet">
<script src="/resources/js/board.js"></script>
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
					<b>Community</b>
				</h3>
				<br>
				<h3 class="pgc">Feel free to write your opinions.</h3>
			</div>
		</div>
		<br> <br>
		<!-- board seach area -->
		<div id="board-search">
			<div class="container iipp6">
				<div class="search-window">
					<form action="/boardList.do" method="get">
						<div class="search-wrap">
							<input type="hidden" name="cpage" value="1"> <label
								for="search" class="blind">공지사항 내용 검색</label> <input id="search"
								type="search" name="searchText" placeholder="제목을 입력해주세요."
								value="">
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
							<th scope="col" class="th-date">작성자</th>
							<th scope="col" class="th-date">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty list}">
								<tr>
									<td colspan="4" class="text-center">등록된 글이 없어요!!!!!!!!!</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="item" items="${list}">
									<tr>
										<td>${row}</td>
										<td onclick="detailPage(${item.b_idx}, ${row} )">${item.b_title}</td>
										<td>${item.m_nickname}</td>
										<td>${item.b_views}</td>
									</tr>
									<c:set var="row" value="${row-1}" />
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
		</div>
		<a href="/views/board/list2.jsp">
			<div class="pt-1">
				<button class="custom-btn btn-6"
					onclick="window.location.href = '/views/board/list2.jsp">
					<span>글작성</span>
			</div>
		</a>
		<div class="pagination wcct">

			<c:choose>
				<c:when test="${pi.currentPage == 1}">
					<a href="#">&laquo;</a>
				</c:when>
				<c:otherwise>
					<a
						href="/boardList.do?cpage=${pi.currentPage-1}&searchText=${searchText}">&laquo;</a>
				</c:otherwise>
			</c:choose>


			<c:forEach var="page" begin="${pi.startPage}" end="${pi.endPage}">
				<a href="/boardList.do?cpage=${page}&searchText=${searchText}">${page}</a>
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
</html>