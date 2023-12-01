function login(){
   const form = document.getElementById("loginbox");
   form.action = "/login.do";
   form.method = "POST";
   form.submit();
   
}

function register(){
   const form = document.getElementById("registerbox");
   form.action = "/register.do";
   form.method = "POST";
   form.submit();
}

function memberDelete(){
	const form = document.getElementById("profile-detail");
	form.action = "/MemberDeleteController";
	form.method = "post";
	form.submit();
}