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
<script src="/post_inc/jquerys/jquery-barcode.min.js"></script>
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
		<img class="footer-backimg img-pc"
			src="/resources/image/airplane2.jpg" alt="PC 푸터 비주얼">
	</div>
	<!-- [E]glamping-N1 -->
	<br>
	<br>
	<br>
	<section class="notice">
		<div class="page-title">
			<br>
			<div class="container">
				<h3 class="pgc" style="font-size: 100px;">
					<b>My Page</b>
				</h3>
				<br>
				<br>
				<h3 class="pgc">Thank you always.</h3>
			</div>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<div class="container">
				<h3 class="pgc" style="font-size: 50px;">
					<b>Wellcome to "Pess-Port"</b>
				</h3>
				<br>
				<h3 class="pgc">Check your information.</h3>
			</div>
		</div>

		<form id="myinfo">
		<div class="wcct">
				<div class="bbdd">
					<img class="whwh" src="/resources/image/my.png" alt=""><br>
					<br>
					<h3 style="font-size: 15px;">My Info</h3>
					<div class="pt-1 wwwii dfjc">
						<button type="button" class="custom-btn btn-6" onclick="myinfoForm()">
							<span>내정보</span></button>
					</div>
				</div>
		</form>
		<div class="bbdd">
			<img class="whwh mgl" src="/resources/image/cart.png" alt=""><br>
			<br>
			<h3 style="font-size: 15px;">Order List</h3>
			<div class="pt-1 wwwii dfjc">
				<button type="button" class="custom-btn btn-6"
					onclick="window.location.href = '/MyList.do?cpage=1'">
					<span>구매목록</span></button>
			</div>
		</div>
		<div class="bbdd">
			<img class="whwh" src="/resources/image/airplane4.png" alt=""><br>
			<br>
			<h3 style="font-size: 15px;">Flight Reservation</h3>
			<div class="pt-1 wwwii dfjc">
				<button type="button" class="custom-btn btn-6"
					onclick="window.location.href = '/MyList.do?cpage=1'">
					<span>항공예약목록</span></button>
			</div>
		</div>
		</div>

	</section>
	<br>
	<br>
	<div class="page-title">
		<div class="container">
			<h3 class="pgc" style="font-size: 50px;">Thank you for using [
				Pess-Port ] travel agency.</h3>
		</div>
	</div>
	<br>
	<!-- [E]glamping-N9 -->
	<!-- [S]glamping-N3 -->
	<footer class="glamping-N3" data-bid="hNLPJ5jFl2">
		<%@ include file="/views/common/footer.jsp"%>
	</footer>



</body>
</html>
