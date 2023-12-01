<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>REGISTER</title>
<link rel="stylesheet" href="../../resources/css/yonnho.css">
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>REGISTER</title>
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
</head>
<body>
   <div class="jb-box">
      <video muted autoplay loop>
         <source src="/resources/video/plane.mp4" type="video/mp4">
      </video>
      <div class="jb-text login-signup">
         <a href="/form/mapform.do" class="link link--text" style="color: white;">지도
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
               fill="currentColor" class="bi bi-globe-americas"
               viewBox="0 0 16 16">
                   <path d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0ZM2.04 4.326c.325 1.329 2.532 2.54 3.717 3.19.48.263.793.434.743.484-.08.08-.162.158-.242.234-.416.396-.787.749-.758 1.266.035.634.618.824 1.214 1.017.577.188 1.168.38 1.286.983.082.417-.075.988-.22 1.52-.215.782-.406 1.48.22 1.48 1.5-.5 3.798-3.186 4-5 .138-1.243-2-2-3.5-2.5-.478-.16-.755.081-.99.284-.172.15-.322.279-.51.216-.445-.148-2.5-2-1.5-2.5.78-.39.952-.171 1.227.182.078.099.163.208.273.318.609.304.662-.132.723-.633.039-.322.081-.671.277-.867.434-.434 1.265-.791 2.028-1.12.712-.306 1.365-.587 1.579-.88A7 7 0 1 1 2.04 4.327Z" />
              </svg>
           </a>
      </div>
      <div class="login-box">
         <h2>회원가입</h2>
         <form  method="POST"  id="registerbox">
            <div class="user-box">
               <input type="email"  id="email"  name="email" onkeyup="duplicateEmail()" required > <label>E-MAIL</label>
               <span id="emailCheck"></span>
            </div>
            <div class="user-box">
               <input type="password"  id=password name="password" onkeyup="validatePassword()" required><label>PASSWORD</label> 
               <span id="passwordMsg" ></span>
            </div>
            <div class="user-box">
               <input type="password"  id="passwordCheck" name="passwordCheck" onkeyup="validatePassword()" required><label>PASSWORD-CHECK</label>
               <span id="passwordCheckMsg"></span>
            </div>
            <div class="user-box">
               <input type="text"  id="name" name="name" onkeyup="validateName()" required > <label>NAME</label>
               <span id="nameMsg" ></span>
            </div>
            <div class="user-box">
               <input type="text"  id="phone" name="phone" required > <label>PHONE</label>
               <span id="nameMsg" ></span>
            </div>
            <div class="user-box">
               <input type="text"  id="nickname" name="nickname" required><label>NICK-NAME</label>
               <span id="nicknameMsg" ></span>
            </div>
               <a href="#"  onclick="register()">
                  <span></span>
                  <span></span>
                  <span></span>
                  <span></span>
                  Register
                   </a>
         </form>
      </div>
   </div>
</body>
</html>