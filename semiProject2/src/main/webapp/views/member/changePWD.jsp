<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!doctype html>
		<html lang="ko">

		<head>
			<meta charset="utf-8">
			<title>semi-Project</title>
			<link rel="stylesheet" href="/resources/css/yonnho.css">
			<!-- Meta -->
			<meta charset="utf-8">
			<meta http-equiv="x-ua-compatible" content="ie=edge">
			<meta name="viewport" content="width=device-width,initial-scale=1">
			<title>Viking Tours</title>
			<meta name="description" content="">
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
				crossorigin="anonymous">
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
				crossorigin="anonymous"></script>
			<link rel="shortcut icon" href="favicon.ico">
		</head>

		<body>
			<div class="jb-box">
				<video muted autoplay loop>
					<source src="/resources/video/ocean.mp4" type="video/mp4">
				</video>
				<div class="login-box">
					<h2>새 비밀번호</h2>
					<form id="passwordChangeBox">
						<input type="hidden" name="email" value="${email}">
						<div class="user-box">
							<input type="password" id=password name="password" onkeyup="validatePassword()" required>
							<label>NEW PASSWORD</label>
							<span id="passwordMsg"></span>
						</div>
						<div class="user-box">
							<input type="password" id="passwordCheck" name="passwordCheck" onkeyup="validatePassword()"
								required>
							<label>PASSWORDCHECK</label>
							<span id="passwordCheckMsg"></span>
						</div>
						<c:choose>
							<c:when test="${email !=null}">
								<div class="ddff">
									<a href="#" onclick="passwordChange()">
										<span></span>
										<span></span>
										<span></span>
										<span></span> 변경
									</a>
								</div>
							</c:when>
							<c:otherwise>
								<p>받아온 이메일이 없습니다.</p><br>
								<p>변경 할 수 없습니다.</p>
							</c:otherwise>
						</c:choose>
					</form>
				</div>
			</div>
		</body>
		<script type="text/javascript">
			function passwordChange() {
				const form = document.getElementById("passwordChangeBox");
				form.action = "/PasswordChange.do";
				form.method = "POST";
				form.submit();
			}

			function validatePassword() {
				const passwordRegex = /^(?=.*[a-zA-Z])(?=.*[@$!%*?&\#])[A-Za-z\d@$!%*?&\#]{6,20}$/;
				let password = document.getElementById("password").value;
				const passwordMsg = document.getElementById("passwordMsg");
				if (password == "") {
					passwordMsg.innerHTML = "비밀번호를 입력해주세요";
					passwordMsg.style.color = "red";
				} else if (passwordRegex.test(password)) {
					passwordMsg.innerHTML = "사용가능한 비밀번호입니다";
					passwordMsg.style.color = "green";
				} else {
					passwordMsg.innerHTML = "패스워드 정책에 맞지 않습니다";
					passwordMsg.style.color = "red";
				}

				let passwordCheck = document.getElementById("passwordCheck").value;
				const passwordCheckMsg = document.getElementById("passwordCheckMsg");
				if (password == passwordCheck) {
					passwordCheckMsg.innerHTML = "비밀번호가 동일 합니다";
					passwordCheckMsg.style.color = "green";
				} else {
					passwordCheckMsg.innerHTML = "비밀번호를 확인하세요";
					passwordCheckMsg.style.color = "red"
				}
			}
		</script>

		</html>