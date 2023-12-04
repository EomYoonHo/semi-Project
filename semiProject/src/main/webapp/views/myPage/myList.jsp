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
		<div class="header-container container-lg">
			<div class="header-left">
				<h1 class="header-title">
					<a href="home.html"> <img src="./img/pessport.png" alt="로고">
					</a>
				</h1>
			</div>
			<div class="header-center">
				<ul class="header-gnblist">
					<li class="header-gnbitem"><a class="header-gnblink"
						href="map.html"> <span>여행지추천</span>
					</a>
						<ul class="header-sublist">
							<li class="header-subitem"><a class="header-sublink"
								href="map.html"> <span>지도로 이동</span>
							</a></li>
						</ul></li>
					<li class="header-gnbitem"><a class="header-gnblink"
						href="list.html"> <span>자유게시판</span>
					</a>
						<ul class="header-sublist">
							<li class="header-subitem"><a class="header-sublink"
								href="list.html"> <span>게시판</span>
							</a></li>
							<li class="header-subitem"><a class="header-sublink"
								href="list2.html"> <span>게시글 작성</span>
							</a></li>
						</ul></li>
					<li class="header-gnbitem"><a class="header-gnblink"
						href="review.html"> <span>리뷰게시판</span>
					</a>
						<ul class="header-sublist">
							<li class="header-subitem"><a class="header-sublink"
								href="review.html"> <span>게시판</span>
							</a></li>
							<li class="header-subitem"><a class="header-sublink"
								href="review2.html"> <span>게시글 작성</span>
							</a></li>
						</ul></li>
					<li class="header-gnbitem"><a class="header-gnblink"
						href="orderList.html"> <span>여행패키지</span>
					</a>
						<ul class="header-sublist">
							<li class="header-subitem"><a class="header-sublink"
								href="orderList.html"> <span>패키지 상품</span>
							</a></li>
						</ul></li>
					<li class="header-gnbitem"><a class="header-gnblink"
						href="myPage.html"> <span>마이페이지</span>
					</a>
						<ul class="header-sublist">
							<li class="header-subitem"><a class="header-sublink"
								href="infoDetail.html"> <span>내정보</span>
							</a></li>
							<li class="header-subitem"><a class="header-sublink"
								href="myList.html"> <span>구매목록</span>
							</a></li>
						</ul></li>
					<a class="header-gnblink log" href="login.html"> <span>로그인</span>
					</a>
					<a class="header-gnblink log1" href="register.html"> <span>회원가입</span>
					</a>
			</div>
		</div>
	</header>
	<div class="glamping-N3">
		<img class="footer-backimg img-pc" src="./img/airplane2.jpg"
			alt="PC 푸터 비주얼">
	</div>
	<!-- [E]glamping-N1 -->
	<br>
	<br>
	<br>
	<section class="notice">
		<div class="page-title">
			<br>
			<br>
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
				<button class="custom-btn btn-6" formaction="infoUpdate.html">
					<span>수정완료</span>
					<button class="custom-btn btn-6" formaction="myPage.html">
						<span>돌아가기</span>
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
		<div class="footer-container">
			<!-- <audio src="./music/home.mp3" controls="controls" autoplay="autoplay" style="display: none;"></audio> -->
			<img class="footer-backimg img-pc" src="./img/apl.jpg"
				alt="PC 푸터 비주얼">
			<div class="footer-body container-md">
				<h2 class="footer-logo">
					<a href="javascript:void(0)"> <img src="./img/pessport.png"
						alt="로고">
					</a>
				</h2>

				<ul class="footer-snslist">
					<li class="footer-snsitem"><a class="footer-snslink"
						href="javascript:void(0)"> <img
							src="./icon/ico_instagram_white.svg" alt="인스타그램">
					</a></li>
					<li class="footer-snsitem"><a class="footer-snslink"
						href="javascript:void(0)"> <img
							src="./icon/ico_youtube_white.svg" alt="유튜브">
					</a></li>
					<li class="footer-snsitem"><a class="footer-snslink"
						href="javascript:void(0)"> <img
							src="./icon/ico_facebook_white.svg" alt="페이스북">
					</a></li>
				</ul>
				<ul class="footer-menugroup">
					<li class="footer-menulink"><a href="javascript:void(0)">
							<span>이용약관</span>
					</a></li>
					<li class="footer-menulink"><a href="javascript:void(0)">
							<span>개인정보처리방침</span>
					</a></li>
					<li class="footer-menulink"><a href="home1.html"> <span>이스터에그</span>
					</a></li>
				</ul>
				<div class="footer-txtgroup">
					<div class="footer-txt">
						<p>경기도 안양시 만안구 안양로 303 안양메쎄타워 8층</p>
						<p>
							<span>T. 010-1234-5678</span> <span>E. pessport@naver.com</span>
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
	<script src="./js/setting.js"></script>
	<script src="./js/plugin.js"></script>
	<script src="./js/template.js"></script>
	<script src="./js/common.js"></script>
	<script src="./js/script.js"></script>


</body>