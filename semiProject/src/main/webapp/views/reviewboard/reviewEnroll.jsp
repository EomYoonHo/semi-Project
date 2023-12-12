<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en-us">


<head>

<script src="/resources/js/reviewboard.js"></script>
<meta charset="UTF-8">

<title>semi-Project</title>
<link rel="stylesheet" href="/resources/css/board/setting.css">
<link rel="stylesheet" href="/resources/css/board/plugin.css">
<link rel="stylesheet" href="/resources/css/board/semi.css">
<link rel="stylesheet" href="/resources/css/board/common.css">
<link rel="stylesheet" href="/resources/css/board/style.css">
<link rel="stylesheet" href="/resources/css/board/yh.css">
<link rel="stylesheet" href="/resources/css/board/table.css">
<link rel="stylesheet" href="/resources/css/board/star.css">
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
		<br>
		<br>
		<br>
		<div class="container page-title pgc">
			<h3 style="font-size: 70px;">
				<b>Star rating</b>
			</h3>
		</div>
		<br>
		<br>
		<br>
		</div>
		<form class=" form-horizontal" method="post" action="/reviewEnroll.do"
			th:object="${postDto}">
			<div class="mb-3" name="myform" id="myform" method="post"
				style="text-align: center; margin: 0px;">
				<fieldset>
					<input type="radio" name="star" value="★★★★★" id="rate1"><label
						for="rate1">★</label> <input type="radio" name="star" value="★★★★"
						id="rate2"><label for="rate2">★</label> <input
						type="radio" name="star" value="★★★" id="rate3"><label
						for="rate3">★</label> <input type="radio" name="star" value="★★"
						id="rate4"><label for="rate4">★</label> <input
						type="radio" name="star" value="★" id="rate5"><label
						for="rate5">★</label>
				</fieldset>
				<br>
				<br>
				<br>
			</div>
			<main role="main" class="container wsm">
				<div class="container page-title pgc">
					<h3 style="font-size: 70px;">
						<b>Title</b>
					</h3>
				</div>
				<br>
				<br>
				<div class="pt-1">
					<input class="iipp" type="text" name="title"
						placeholder="제목을 입력하세요">
				</div>
				<br>
				<br>
				<div class="container page-title pgc">
					<h3 style="font-size: 70px;">
						<b>Content</b>
					</h3>
				</div>
				<br>
				<br>

				<div class="pt-1 bbb iipp2" style="background-color: white;">
					<textarea id="summernote" name="content"></textarea>
				</div>
				<script>
					$('#summernote').summernote({
						placeholder : '내용을 입력해주세요',
						tabsize : 2,
						height : 300
					});
				</script>
				<br>
				</div>
				<div class="pt-1">
					<button class="custom-btn btn-6" style="margin-left:0;">작성</button>
					<button class="custom-btn btn-6" type="button"
						onclick="window.location.href='/reviewBoardList.do?cpage=1'">취소</button>
				</div>
		</form>
		</main>
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

