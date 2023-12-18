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
	const form = document.getElementById("infodetail");
	form.action = "/MemberDeleteController";
	form.method = "post";
	form.submit();
}

function memberUpdate(){
	const form = document.getElementById("infoupdate");
	form.action = "/UpdateController"
	form.method = "post";
	form.submit();
}

function myinfoForm(){
	console.log("aaaa")
	const form = document.getElementById("myinfo");
	form.action = "/Myinfo.do";
	form.method = "post";
	form.submit();

}

function infoform(){
	const form = document.getElementById("infodetail");
	form.action = "/MyformController";
	form.method = "post";
	form.submit();
	}
	