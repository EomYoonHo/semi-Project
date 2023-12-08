<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">

<title>semi-Project</title>
<link rel="stylesheet" href="/resources/css/board/setting.css">
<link rel="stylesheet" href="/resources/css/boards/plugin.css">
<link rel="stylesheet" href="/resources/css/board/semi.css">
<link rel="stylesheet" href="/resources/css/board/common.css">
<link rel="stylesheet" href="/resources/css/board/style.css">
<link rel="stylesheet" href="/resources/css/board/yh.css">
<link rel="stylesheet" href="/resources/css/board/table.css">
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
		<img class="footer-backimg img-pc" src="/resources/image/airplane2.jpg"
			alt="PC 푸터 비주얼">
	</div>
	<!-- [E]glamping-N1 -->
	<br>
	<br>
	<br>
	<section class="notice">
		<div class="page-title">
			<br> <br> <br>
			<div class="container">
				<h3 class="pgc" style="font-size: 100px;">
					<b>My Page</b>
				</h3>
				<br> <br>
				<h3 class="pgc">Thank you always.</h3>
			</div>
			<br> <br> <br> <br> <br> <br>
			<div class="container">
				<h3 class="pgc" style="font-size: 50px;">
					<b>Purchase History</b>
				</h3>
				<br>
				<h3 class="pgc">Thank you for your purchase.</h3>
			</div>
		</div>
		</div>
		<form action="">
			<div id="board-list">
				<div class="container">


					<table class="board-table iipp3">
						<thead>
							<tr>
								<th width=30% scope="col" class="th-title">패키지</th>
								<th width=20% scope="col" class="th-title">가격</th>
								<th width=20% scope="col" class="th-title">기간</th>
								<th width=20% scope="col" class="th-title">예약자</th>
								<th width=20% scope="col" class="th-title">구매날짜</th>
							</tr>
						</thead>


						<c:choose>
							<c:when test="${empty list}">
								<tr>
									<td colspan="5" class="text-center">등록된 글이 없어요!!!!!!!!!</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="item" items="${list}">
									<tr>
										<td width=30%><a href="">${item.o_name}</a></td>
										<td width=20%>${item.o_paid_amount}</td>
										<td width=20%>${item.o_period}</td>
										<td width=20%>${item.o_buyer_name}</td>
										<td width=20%>${item.o_paid_at}</td>
									</tr>

									<c:set var="row" value="${row-1}" />
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</table>





				</div>
			</div>
			<br>
			<div class="pt-1 wwwii dfjc">
					<button class="custom-btn btn-6" type="reset" onclick="window.location.href = '/views/myPage/myPage.jsp'">
						<span>돌아가기</span></button>
			</div>
		</form>
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