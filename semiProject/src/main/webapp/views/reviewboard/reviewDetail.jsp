<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en-us">


<script src="/resources/js/reviewboard.js"></script>
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
		<br>
		<br>
		<br>

		<form id="detail-form">

			<div class="container">
				<input type="hidden" name="idx" value="${reviewboard.idx}">
				<input type="hidden" name="title" value="${reviewboard.title}">
				<input type="hidden" name="content">
				<input type="hidden" name="star" value="${reviewboard.star}">
				<input type="hidden" name="indate" value="${reviewboard.indate}">
				<input type="hidden" name="views" value="${reviewboard.views}">
				<input type="hidden" name="nickName" value="${reviewboard.nickName}">

				<div class="container iipp3">
					<table class="board-table">

						<tr>
							<th width=20% class="text-center warning">번호</th>
							<td width=30% class="text-center">${reviewboard.idx}</td>
							<th width=20% class="text-center warning">작성일</th>
							<td width=30% class="text-center">${reviewboard.indate}</td>
						</tr>
						<tr>
							<th width=20% class="text-center warning">작성자</th>
							<td width=30% class="text-center">${reviewboard.nickName}</td>
							<th width=20% class="text-center warning">조회수</th>
							<td width=30% class="text-center">${reviewboard.views}</td>
						</tr>
						<tr>
							<th width=20% class="text-center warning">제목</th>
							<td width=30% class="text-center www" style="text-align: left;">${reviewboard.title}</td>
							<th width=20% class="text-center warning">별점</th>
							<td width=30% class="text-center">${reviewboard.star}</td>
						</tr>
						<tr>
						<tr>
							<th width=20% class="text-center warning">내용</th>
							<td colspan="4" class="text-left www" valign="top" height="280">
								<pre style="white-space: pre-wrap; border: none; background-color: white; text-align: left;">${reviewboard.content}</pre>
							</td>
						</tr>

					</table>
				</div>
			</div>
			<div class="pt-1 wwwii">
				<button class="custom-btn btn-6" onclick="reviewForm()">수정페이지</button>
				<button class="custom-btn btn-6-1" onclick="reviewDelete()">삭제</button>
				
				<button class="custom-btn btn-6" type="reset"
					onclick="window.location.href='/reviewBoardList.do?cpage=1'">취소
				</button>
			</div>
				
				
		</form>
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