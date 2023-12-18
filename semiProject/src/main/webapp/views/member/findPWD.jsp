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
			<script src="https://code.jquery.com/jquery-3.7.1.js"
				integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
			<link rel="shortcut icon" href="favicon.ico">
		</head>

		<body>
			<div class="jb-box">
				<video muted autoplay loop>
					<source src="/resources/video/ocean.mp4" type="video/mp4">
				</video>
				 <div class="jb-text login-signup">
         <a href="/views/common/home.jsp" class="link link--text"
            style="color: white;">홈 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
  <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5ZM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5 5 5Z"/>
</svg>
         </a>
      </div>
				<div class="login-box">
					<h2>비밀번호찾기</h2>
					<h2 style="font-size: 20px;">Email 인증</h2>
					<br>
					<button class="get__number" id="CertificationNumber"
						onclick="javascript:sendMail(); takeTarget()">인증번호</button>
					<form id="CertificationBox">
						<div class="user-box" style="width: 80%">
							<input type="email" id="email" name="email" style="width: 70%;"
								placeholder="EMAIL 을 입력해주세요." required>
							<label>EMAIL</label>
						</div>
						<div class="user-box">
							<input type="text" id="certificationKey" name="certificationKey" maxlength="10"
								style="width: 40%;" required>
							<label>CERTIFICATION NUMBER</label>
							<span class="target__time" style="color: white; margin-left: 40%;">
								<span id="remaining__min"><b>3</b></span>
								<b> : </b>
								<span id="remaining__sec"><b>00</b></span>
							</span>
							<div class="ddff">
								<a href="#" onclick="EmailCertification()">
									<span></span>
									<span></span>
									<span></span>
									<span></span> 확인
								</a>
							</div>
						</div>
						<input type="text" id="certificationDoor" name="certificationDoor" maxlength="10"
							style="display: none;">
					</form>
				</div>
			</div>
		</body>

		</html>
		<script>
			const remainingMin = document.getElementById("remaining__min");
			const remainingSec = document.getElementById("remaining__sec");
			const completeBtn = document.getElementById("complete");

			function sendMail() {
				let emailval = document.getElementById("email").value;
				if (!emailval == "") {
					$.ajax({
						type: "POST",
						url: "/SendEmail.do",
						data: {
							email: emailval
						},
						success: function (data) {
							console.log("성공");
							let certificationDoor = document.getElementById("certificationDoor");
							certificationDoor.value = data;
						},
						error: function () {
							console.log("실패");
						}
					});
				} else {
					console.log("이메일이 없어서 코드를 전송 할 수 없습니다")
				}
				alert("본인인증 코드가 전송되었습니다")
				document.getElementById("CertificationNumber").onclick = null;
			}
			function EmailCertification() {
				const form = document.getElementById("CertificationBox");
				form.action = "/EmailCertification.do";
				form.method = "POST";
				form.submit();
			}
			let time = 180;
			const takeTarget = () => {
				setInterval(function () {
					if (time > 0) { // >= 0 으로하면 -1까지 출력된다.
						time = time - 1; // 여기서 빼줘야 3분에서 3분 또 출력되지 않고, 바로 2분 59초로 넘어간다.
						let min = Math.floor(time / 60);
						let sec = String(time % 60).padStart(2, "0");
						remainingMin.innerText = min;
						remainingSec.innerText = sec;
						// time = time - 1
					} else {
						completeBtn.disabled = true;
					}
				}, 1000);
			};
		</script>