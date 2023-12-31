<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en-us">


<head>
<script src="/resources/js/reviewboard.js"></script>
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
				<input type="hidden" name="star" value="${reviewboard.star}">


				<div class="container iipp3">
					<table class="board-table">

						<tr>
							<th width=20% class="text-center warning">번호</th>
							<td width=30% class="text-center"><input class="minsu"
								type="text" name="idx" value="${reviewboard.idx}" disabled></td>
							<th width=20% class="text-center warning">작성일</th>
							<td width=30% class="text-center"><input class="minsu"
								type="text" name="indate" value="${reviewboard.indate}" disabled></td>
						</tr>
						<tr>
							<th width=20% class="text-center warning">작성자</th>
							<td width=30% class="text-center"><input class="minsu"
								type="text" name="nickName" value="${reviewboard.nickName}"
								disabled></td>
							<th width=20% class="text-center warning">조회수</th>
							<td width=30% class="text-center"><input class="minsu"
								type="text" name="views" value="${reviewboard.views}" disabled></td>
						</tr>
						<tr>
							<th width=20% class="text-center warning">제목</th>
							<td width=30% class="text-center www"><input class="minsu"
								type="text" name="title" value="${reviewboard.title}"></td>
							<th width=20% class="text-center warning">별점</th>
							<td width=30% class="text-center"><input class="minsu"
								type="text" name="star" value="${reviewboard.star}" disabled></td>
						</tr>
						<tr>
							<th width=20% class="text-center warning">내용</th>
							<td colspan="4" class="text-left www" valign="top" height="200"
								style="text-align: left;"><textarea id="summernote"
									name="content">${reviewboard.content}</textarea> <script>
										$('#summernote').summernote({
											tabsize : 2,
											height : 180
										});
									</script></td>
						</tr>

					</table>
				</div>
			</div>
			<div class="pt-1 wwwii">
				<button class="custom-btn btn-6" onclick="reviewUpdate()">수정완료</button>
				<button type="button" class="custom-btn btn-6"
					onclick="window.location.href='/reviewBoardList.do?cpage=1'">취소</button>
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