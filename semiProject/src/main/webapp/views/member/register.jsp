<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>REGISTER</title>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="/resources/css/yonnho.css">
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
<script type="text/javascript" src="/resources/js/member.js"></script>
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
         <h2>회원가입</h2>
         <form method="POST" id="registerbox">
            <div class="user-box">
               <input type="email" id="email" name="email"
                  onkeyup="duplicateEmail()" required> <label>E-MAIL</label>
               <span id="emailCheck"></span>
            </div>
            <div class="user-box">
               <input type="password" id=password name="password"
                  onkeyup="validatePassword()" required><label>PASSWORD</label>
               <span id="passwordMsg"></span>
            </div>
            <div class="user-box">
               <input type="password" id="passwordCheck" name="passwordCheck"
                  onkeyup="validatePassword()" required><label>PASSWORD-CHECK</label>
               <span id="passwordCheckMsg"></span>
            </div>
            <div class="user-box">
               <input type="text" id="name" name="name" onkeyup="validateName()"
                  required> <label>NAME</label> <span id="nameMsg"></span>
            </div>
            <div class="user-box">
               <input type="text" id="phone" name="phone" required> <label>PHONE</label>
            </div>
            <div class="user-box">
               <input type="text" id="nickname" name="nickname" required><label>NICK-NAME</label>
               <span id="nicknameMsg"></span>
            </div>
            <div class="ddff">
            <a href="#" onclick="register()"> <span></span> <span></span> <span></span>
               <span></span> Register
            </a>
            </div>
         </form>
      </div>
   </div>
</body>
</html>
<script>
   function duplicateEmail() {
      const email = document.getElementById("email").value;
      const emailCheck = document.getElementById("emailCheck");
      const emailRegex = /^([\w\.\_\-])*[a-zA-Z0-9]+([\w\.\_\-])*([a-zA-Z0-9])+([\w\.\_\-])+@([a-zA-Z0-9]+\.)+[a-zA-Z0-9]{2,8}$/;
      $.ajax({
         type : "POST",
         url : "/duplicateEmail.do",
         data : {
            email : email
         },
         success : function(res) {
            console.log(res);

            if (res == "true") {
               emailCheck.innerHTML = "중복된 이메일입니다."
               emailCheck.style.color = "red"
            } else {
               if (email == "") {
                  emailCheck.innerHTML = "이메일을 입력하세요"
                  emailCheck.style.color = "red"
               } else if (emailRegex.test(email)) {
                  emailCheck.innerHTML = "사용 가능한 이메일"
                  emailCheck.style.color = "green"
               } else {
                  emailCheck.innerHTML = "이메일규정을 지켜주세요";
                  emailCheck.style.color = "red";
               }
            }
         },
         error : function(response) {

         }
      })

   }

   function validateName() {
      const nameRegex = /^[가-힣]{2,}$/;
      let name = document.getElementById("name").value;
      const nameMsg = document.getElementById("nameMsg");

      if (name == "") {
         nameMsg.style.color = "red";
         nameMsg.innerHTML = "이름을 입력하세요";

      } else if (nameRegex.test(name)) {
         nameMsg.style.color = "green";
         nameMsg.innerHTML = "사용가능한 이름입니다";
      } else {
         nameMsg.style.color = "red";
         nameMsg.innerHTML = "이름은 한글로 입력해주세요";
      }
   }
   function validatePassword() {
      const passwordRegex = /^(?=.*[a-zA-Z])(?=.*[@$!%*?&\#])[A-Za-z\d@$!%*?&\#]{6,20}$/;
      let password = document.getElementById("password").value;
      const passwordMsg = document.getElementById("passwordMsg");

      if (password == "") {
         passwordMsg.innerHTML = "비밀번호를 입력하세요";
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
         passwordCheckMsg.innerHTML = "패스워드가 동일합니다";
         passwordCheckMsg.style.color = "green";
      } else {
         passwordCheckMsg.innerHTML = "패스워드가 서로 다릅니다";
         passwordCheckMsg.style.color = "red"
      }
   }
</script>