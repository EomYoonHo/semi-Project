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
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-1.12.4.min.js"
	integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
	crossorigin="anonymous"></script>
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
			<br>
			<br>
			<div class="container">
				<h3 class="pgc" style="font-size: 100px;">
					<b>Purchase completed</b>
				</h3>
				<br>
				<br>
				<h3 class="pgc">Thank you for purchasing our product.</h3>
			</div>
		</div>
		<br>
		<br>
		<br>
		<div class="iipp4">
			<br>
			<br>
			<div class="container">
				<h3 class="pgc" style="font-size: 70px;">
					<b>Receipt</b>
				</h3>
			</div>

			<br>
			<br>
			<br>

			<div id="board-list">
				<div class="container">
					<table class="board-table">

						<tr>
							<th width=20% class="text-center warning"
								style="text-align: center;">주문번호</th>
							<td colspan="3" width=30% class="text-center www">${orderDTO.o_idx}
								<b>번</b>
							</td>
						</tr>
						<tr>
							<th width=20% class="text-center warning"
								style="text-align: center;">구매자 이름</th>
							<td colspan="3" width=30% class="text-center www">${orderDTO.o_buyer_name}</td>
						</tr>
						<tr>
							<th width=20% class="text-center warning"
								style="text-align: center;">상품이름</th>
							<td colspan="3" width=30% class="text-center www">${orderDTO.o_name}</td>
						</tr>
						<tr>
							<th width=20% class="text-center warning"
								style="text-align: center;">상품가격</th>
							<td colspan="3" width=30% class="text-center www">${packageDTO.p_price}<b>원</b></td>
						</tr>
						<tr>
							<th width=20% class="text-center warning"
								style="text-align: center;">예약인원</th>
							<td colspan="3" width=30% class="text-center www">${orderDTO.o_people}<b>명</b></td>
						</tr>
						<tr>
							<th width=20% class="text-center warning"
								style="text-align: center;">사용한 포인트</th>
							<td colspan="3" width=30% class="text-center www">${selectPM.pm_amount}<b>point</b></td>
						</tr>
						<tr>
							<th width=20% class="text-center warning"
								style="text-align: center;">추가된 포인트</th>
							<td colspan="3" width=30% class="text-center www">+
								${orderDTO.o_point}<b>point</b>
							</td>
						</tr>
						<tr class="iipp6">
							<th width=20% class="text-center warning"
								style="text-align: center;">결제 금액</th>
							<td colspan="3" width=30% class="text-center www">${orderDTO.o_paid_amount}<b>원</b></td>
						</tr>
					</table>
					<div class="dfjc">
						<img src="/resources/image/bcd.jpg" alt="" style="width: 200px;">
					</div>
					<div class="container">
						<h3 class="pgc" style="font-size: 25px;">Thank you.</h3>
					</div>
				</div>
			</div>
		</div>

		<div class="pt-1 wwwii dfjc">
			<button class="custom-btn btn-6" type="reset"
				onclick="window.location.href = '/views/package/orderList.jsp'">
				<span>돌아가기</span>
		</div>


	</section>
	<div class="page-title">
		<div class="container">
			<h3 class="pgc" style="font-size: 50px;">Thank you for
				purchasing our product.</h3>
		</div>
	</div>
	<!-- [E]glamping-N9 -->
	<!-- [S]glamping-N3 -->
	<footer class="glamping-N3" data-bid="hNLPJ5jFl2">
		<%@ include file="/views/common/footer.jsp"%>
	</footer>


</body>