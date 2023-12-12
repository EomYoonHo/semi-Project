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

var images = ['/resources/image/비행기예약1.jpg', '/resources/image/비행기예약2.jpg', '/resources/image/비행기예약3.jpg',
'/resources/image/비행기예약4.jpg', '/resources/image/비행기예약5.jpg', '/resources/image/비행기예약6.jpg', 
'/resources/image/비행기예약7.jpg', '/resources/image/비행기예약8.jpg', '/resources/image/비행기예약9.jpg', '/resources/image/비행기예약10.jpg', ];
var index = 0;
window.onload = function() {
	document.getElementById('booking').style.backgroundImage = 'url(' + images[index] + ')';
	index = (index + 1) % images.length;

  }
  
  setInterval(function () {
	document.getElementById('booking').style.backgroundImage = 'url(' + images[index] + ')';
	index = (index + 1) % images.length;
  }, 3000);

