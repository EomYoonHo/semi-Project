<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<script src="/resources/js/customer/customer.js"></script>

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
	<section class="notice">
		<div class="page-title">

			<div class="container">
				<h3 class="pgc" style="font-size: 100px;">
					<b>Customer Service Center</b>
				</h3>
				<br>
				<h3 class="pgc">Please tell us about your inconvenience.</h3>
			</div>
		</div>
		<br> <br> <br>
		<form id="customer-form">
			<div id="board-list">
				<div class="container iipp3">
					<table class="board-table">
						<input type="hidden" name="idx" value="${customerDTO.cs_idx}"></input>
						<input type="hidden" name="reply3" value="${customerDTO.cs_reply}"></input>
						<input type="hidden" name="replyCheck"
							value="${customerDTO.cs_reply_check}"></input>


						<!-- 
                   <td type = "hidden" name = "indate" value="${customer.cs_indate}">
                   <td type = "hidden" name = "name" value="${customer.cs_name}">
                   <td type = "hidden" name = "views" value="${customer.cs_views}">
                   <td type = "hidden" name = "title" value="${customer.cs_title}">
                   <td type = "hidden" name = "contents" value="${customer.cs_contents}">
                     -->

						<tr>
							<th width=20% class="text-center warning">번호</th>
							<td width=30% class="text-center www">${customerDTO.cs_idx}</td>
							<th width=20% class="text-center warning">작성일</th>
							<td width=30% class="text-center www">${customerDTO.cs_in_date}</td>
						</tr>
						<tr>
							<th width=20% class="text-center warning">작성자</th>
							<td width=30% class="text-center www">${customerDTO.m_name}</td>
							<th width=20% class="text-center warning">조회수</th>
							<td width=30% class="text-center www">${customerDTO.cs_views}</td>
						</tr>
						<tr>
							<th width=20% class="text-center warning">제목</th>
							<td colspan="3" width=30% class="text-center www"
								style="text-align: left;">${customerDTO.cs_title}</td>
						</tr>
						<tr>
						<tr>
							<th width=20% class="text-center warning">내용</th>
							<td colspan="4" class="text-left www" valign="top" height="200">
								<pre
									style="white-space: pre-wrap; border: none; background-color: white; text-align: left;">${customerDTO.cs_content}</pre>
							</td>
						</tr>

					</table>
				</div>
				<br> <br>

				<div class="container dfjc fhg">
					<c:choose>
						<c:when test="${sessionScope.m_type == 0}">
							<table class="board-table iipp3">
								<tr>
									<th width=20% class="text-center warning">답변</th>
									<td colspan="4" class="text-left www" valign="top" height="100">
										<input name="reply"
										style="white-space: pre-wrap; border: none; background-color: white; text-align: left;">${customerDTO.cs_reply}</input>

									</td>
								</tr>
							</table>
							<div class="pt-1 wwwii dfjc">
								<button class="custom-btn btn-6" onclick="customerUpdate()">
									<span>답변</span>
							</div>
						</c:when>

						<c:otherwise>
							<p>관리자 계정만 답변할수 있습니다</p>
						</c:otherwise>

					</c:choose>
				</div>
			</div>

			<div class="pt-1 wwwii">
				<button class="custom-btn btn-6-1" onclick="customerDelete()">
					<span>삭제</span></button>
				<button class="custom-btn btn-6" type="reset" 
						onclick="window.location.href = '/customerList.do?cpage=1'">
						<span>취소</span></button>
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