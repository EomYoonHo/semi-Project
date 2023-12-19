<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
<link rel="shortcut icon" href="favicon.ico">
<script type="text/javascript"src="/resources/js/member.js"></script>
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
			<h2>로그인</h2>
			  <form method="post"  id="loginbox" >
				<div class="user-box">
					<input type="text" name="email" required=""> <label>EMAIL</label>
				</div>
				<div class="user-box">
					<input type="password" name="pwd" required=""> <label>PASSWORD</label>
					<div class="ddff">
            <a href="#"  onclick="login()">
               <span></span>
               <span></span>
               <span></span>
               <span></span>
               Login
                </a>
					</div>
				</div>
				<div>
					<a href="/views/member/findPWD.jsp">비밀번호찾기</a> 
					<a href="/views/member/register.jsp">회원가입</a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>