$(window).scroll(function(){
	if ($(this).scrollTop() > 300){
		$('.btn_gotop').show();
	} else{
		$('.btn_gotop').hide();
	}
});
$('.btn_gotop').click(function(){
	$('html, body').animate({scrollTop:0},500);
	return false;
});

$(window).scroll(function(){
	if ($(this).scrollTop() > 300){
		$('.btn_gotop2').show();
	} else{
		$('.btn_gotop2').hide();
	}
});


const toggles = document.querySelectorAll(".faq-toggle");

toggles.forEach((toggle) => {
  toggle.addEventListener("click", () => {
    toggle.parentNode.classList.toggle("active");
  });
});

var images = ['./img/비행기예약1.jpg', './img/비행기예약2.jpg', './img/비행기예약3.jpg',
'./img/비행기예약4.jpg', './img/비행기예약5.jpg', './img/비행기예약6.jpg', 
'./img/비행기예약7.jpg', './img/비행기예약8.jpg', './img/비행기예약9.jpg', './img/비행기예약10.jpg', ];
var index = 0;
window.onload = function() {
	document.getElementById('booking').style.backgroundImage = 'url(' + images[index] + ')';
	index = (index + 1) % images.length;
  }
  
  setInterval(function () {
	document.getElementById('booking').style.backgroundImage = 'url(' + images[index] + ')';
	index = (index + 1) % images.length;
  }, 3000);



/* 가는 날 선택 */
//// 최소 선택 일자 설정
let today = new Date();
let day = today.getDate();
let month = today.getMonth() + 1; // 1월이 0부터 시작하여 1을 더해준다.
let year = today.getFullYear();
if (day < 10) day = '0' + day;
if (month < 10) month = '0' + month;
today = year + '-' + month + '-' + day;

// 최소 선택 일자는 오늘이다.
document.getElementById("start-date").setAttribute("value", today);
document.getElementById("start-date").setAttribute("min", today);

//// 최대 선택 일자 설정
let maxday = new Date();
maxday = new Date(maxday.setMonth(maxday.getMonth() + 2))
day = maxday.getDate();
month = maxday.getMonth() + 1;
year = maxday.getFullYear();
if (day < 10) day = '0' + day;
if (month < 10) month = '0' + month;
today = year + '-' + month + '-' + day;
document.getElementById("start-date").setAttribute("max", today);
document.getElementById("return-date").setAttribute("max", today);

/* 오는 날 선택 */
function changeReturn() {
  // 가는 날 선택에 따라 오는 날 초기 날짜 변경
  let start = document.getElementById("start-date").value;
  document.getElementById("return-date").setAttribute("value", start);
  document.getElementById("return-date").setAttribute("min", start);
}
document.getElementById("start-date").onchange = () => {
  changeReturn();
}
changeReturn();


