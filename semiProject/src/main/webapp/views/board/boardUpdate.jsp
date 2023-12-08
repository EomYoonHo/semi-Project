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
		<div class="container">
			<h3 class="pgc" style="font-size: 100px;">
				<b>Community</b>
			</h3>
			<br>
			<h3 class="pgc">Feel free to write your opinions.</h3>
		</div>
		<br>
		<br>
		<br>
		<form action="/boardUpdate.do" method="post">
			<input type="hidden" name="b_idx" value="${board.b_idx}">
			<div id="board-list">
				<div class="container iipp3">
					<table class="board-table">

						<tr>
							<th width=20% class="text-center warning">번호</th>
							<td width=30% class="text-center www"><input
								class="ct bs www wwww" type="text" value="${b_row}" disabled></td>
							<th width=20% class="text-center warning">작성일</th>
							<td width=30% class="text-center www"><input
								class="ct bs www wwww" type="text" value="${board.b_inDate}"
								disabled></td>
						</tr>
						<tr>
							<th width=20% class="text-center warning">작성자</th>
							<td width=30% class="text-center www"><input
								class="ct bs www wwww" type="text" value="${board.m_nickname}"
								disabled></td>
							<th width=20% class="text-center warning">조회수</th>
							<td width=30% class="text-center www"><input
								class="ct bs www wwww" type="text" value="${board.b_views}"
								disabled></td>
						</tr>
						<tr>
							<th width=20% class="text-center warning">제목</th>
							<td colspan="3" width=30% class="text-center www"><input
								name="b_title" class="ct bs www wwww" type="text"
								value="${board.b_title}" style="text-align: left;"></td>
						</tr>
						<tr>
							<th width=20% class="text-center warning">내용</th>
							<td colspan="4" class="text-left www" valign="top" height="200"
								style="text-align: left;"><textarea id="summernote"
									name="b_content">${board.b_content}</textarea> <script>
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
				<button type="submit" class="custom-btn btn-6">
					<span>수정</span>
					<button type="reset" class="custom-btn btn-6"
						onclick="window.location.href = '/boardList.do?cpage=1'">
						<span>취소</span>
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
	<!-- [E]glamping-N3 -->


</body>