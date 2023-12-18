<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">

<title>semi-Project</title>
<link rel="stylesheet" href="/resources/css/setting.css">
<link rel="stylesheet" href="/resources/css/plugin.css">
<link rel="stylesheet" href="/resources/css/semi.css">
<link rel="stylesheet" href="/resources/css/common.css">
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="/resources/css/yh.css">
<link rel="stylesheet" href="/resources/css/table.css">
<link rel="stylesheet" href="/resources/css/order.css">
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
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-1.12.4.min.js"
   integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
   crossorigin="anonymous"></script>

<!-- 포트원 sdk -->
<script type="text/javascript"
   src="https://cdn.iamport.kr/v1/iamport.js"></script>
</head>

<body>
   <!-- [S]glamping-N1 -->
   <header class="glamping-N1" data-bid="jILPJ5JfH5">
      <%@ include file="/views/common/header.jsp"%>
   </header>
   <!-- [E]glamping-N1 -->
   <div class="glamping-N3">
      <img class="footer-backimg img-pc"
         src="/resources/image/airplane2.jpg" alt="PC 푸터 비주얼">
   </div>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>

   <div class="container wsmm">
      <!-- 중반부 전체를 감싸는 div 태그-->
      <div class="page-title">
         <div class="container">
            <h3 class="pgc" style="font-size: 100px;">
               <b>Tour Package</b>
            </h3>
            <br>
            <h3 class="pgc">Enjoy the perfect trip.</h3>
         </div>
      </div>
      <!--중반부 를 두개의 div태그로 나누어 오른쪾 절반의 구역으로 나눠줌-->

      <div class="product-list">
         <div class="slider dfjc">
            <div class="slide img">
               <img src="${pack.p_file_path1}" alt="이미지 1">
            </div>
            <div class="slide img">
               <img src="${pack.p_file_path2}" alt="이미지 1">
            </div>
            <div class="slide img">
               <img src="${pack.p_file_path3}" alt="이미지 1">
            </div>
         </div>
      </div>
      <br> <br>
      <div id="fifth">
         <p class="packagename ct">여행 패키지</p>
         <p class="packagename2 ct">Travel Package</p>

      </div>
      <p class="detail ct" style="font-size: 25px">${pack.p_name}</p>
      <p class="packagename ct" style="font-size: 15px">${pack.p_content}</p>
      <div class="iipp2">
         <div class="productdetail dfjc">
            <span>기간</span> <select class="www pgc pptt" name="period"
               id="period" onclick="choosePeriod()">
               <option value="">기간을 선택해주세요.</option>
               <option value="2023-11-23~2023-12-23">2023-11-23 ~
                  2023-12-23</option>
               <option value="2023-11-25~2023-12-25">2023-11-25 ~
                  2023-12-25</option>
               <option value="2023-11-27~2023-12-27">2023-11-27 ~
                  2023-12-27</option>
               <option value="2023-11-29~2023-12-29">2023-11-29 ~
                  2023-12-29</option>
            </select>
         </div>
         <div class="productdetail dfjc">
            <span>1인가격</span> <span>${pack.p_price}</span>
         </div>
         <div class="productdetail dfjc">
            <span>인원수</span> <input class="minsu2 pts" type="number"
               onclick="multiplication()" onkeyup="multiplication()" id="mulkey"
               style="background-color: white; width: 5%;" min="1">
         </div>
         <div>
            <div class="productdetail dfjc">
               <span>금액</span> <span id="totalPrice"></span>
            </div>
         </div>
         <div class="productdetail dfjc">
            <span>포인트 사용</span> <input class="minsu2" type="number"
               id="pointUse" value="${PointBalance.p_balance}"
               style="background-color: white;" disabled>
            <button class="custom-btn btn-6" onclick="pointUse()"
               style="margin: 0; height: 25px; width: 70px; line-height: 0; border-radius: 5px;">전부
               사용</button>
         </div>
         <div class="iipp6">
            <div class="productdetail dfjc">
               <span>결제금액</span> <span id="payPrice"></span>
            </div>
         </div>


      </div>
   </div>
   <br>

   <div class="pt-1 dfjc">
      <button class="custom-btn btn-6" onclick="requestPay()">
         <span>구매</span>
      </button>
   </div>

   <br>
   <br>
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


</body>
<script>
  let currentSlide = 0;
  const slides = document.querySelectorAll('.slide');
  const slideCount = slides.length;

  function showSlide(n) {
      slides.forEach(slide => slide.style.display = 'none');
      slides[n].style.display = 'block';
  }

  function nextSlide() {
      currentSlide = (currentSlide + 1) % slideCount;
      showSlide(currentSlide);
  }

  function prevSlide() {
      currentSlide = (currentSlide - 1 + slideCount) % slideCount;
      showSlide(currentSlide);
  }

  document.addEventListener('DOMContentLoaded', () => {
      showSlide(currentSlide);
      setInterval(nextSlide, 3000); // 3초마다 자동 슬라이드
  });
</script>
<script type="text/javascript">
   var IMP = window.IMP;
   IMP.init('imp88413461');

   var today = new Date();
   var hours = today.getHours();
   var minutes = today.getMinutes();
   var seconds = today.getSeconds();
   var milliseconds = today.getMilliseconds();
   var makeMerchantUid = hours + minutes + seconds + milliseconds;
   let amount;
   let mulkey = 0;
   let period;
   let point = 0;
   
   function choosePeriod(){
      period = document.getElementById("period").value ;
   }
   
   function multiplication(){
      mulkey=document.getElementById("mulkey").value;
      let totalPrice =document.getElementById("totalPrice");
      totalPrice.innerHTML = mulkey * "${pack.p_price}"+"원";
      let payPrice =document.getElementById("payPrice");
      payPrice.innerHTML =mulkey * "${pack.p_price}"+"원";
      amount =mulkey * "${pack.p_price}";
      }
   
   function pointUse(){
      point = document.getElementById("pointUse").value;
      let payPrice =document.getElementById("payPrice");
      payPrice.innerHTML = ((mulkey * "${pack.p_price}")- point) +"원";
      amount=((mulkey * "${pack.p_price}")- point);
   }

   
   function requestPay() {
      IMP.request_pay(
           {
               pg: 'kakaopay.TC0ONETIME',//pg사
               pay_method: 'kakaopay',//결제수단
               merchant_uid: "IMP" + makeMerchantUid,//가맹점 주문번호
               name: "${pack.p_name}",//결제대상 제품명
               amount : amount, //결제금액
               //custom_data /object//사용자 정의 데이타
               buyer_email: "${member.m_email}",//주문자이메일
               buyer_name: "${member.m_name}",//주문자명
               buyer_tel: "${member.m_phone}",//주문자 연락처
               buyer_addr: '서울특별시 강남구 삼성동',//주문자 주소
               buyer_postcode: '123-456',//주문자 우편
           },function (rsp){
               if(rsp.success){
                  console.log(rsp);                                   
                   console.log("성공");
                   
                   new Promise((succ, fail) => {

                       $.ajax({
                           type : "POST",
                           url : "/payment.do",
                           data : {
                                   imp_uid : rsp.imp_uid,//포트원 고유 결제 번호
                                 people : mulkey,
                                   paid_amount : rsp.paid_amount,//결제금액/number
                                   plus_point : Math.ceil(rsp.paid_amount/100),
                                   p_idx : ${pack.p_idx},
                                   name : rsp.name, // 상품명
                                   m_no : ${member.m_no},
                                   buyer_tel : rsp.buyer_tel,//주문자 연락처
                                   buyer_name : rsp.buyer_name,//주문자명
                                   buyer_email : rsp.buyer_email,//주문자 email
                                   period : period
                              
                       },
                       success : function(result){
                          succ(result);
                           console.log(rsp.imp_uid);
                       },
                       fail :  function(result){
                          fail(error);
                          console.log("실패띠");
                       }
                   });

                   }).then((arg) => {

                       $.ajax({
                           type : 'POST',
                           url : '/pointMinus.do',
                           data : { 
                                   point : point,
                                   p_no : ${PointBalance.p_no},
                                   m_no : ${member.m_no}
                                 },
                           success: function () {
                              location.href= "/orderResult.do?imp_uid="+ rsp.imp_uid;
                           },
                           error : function(){
                           }
                       });
                   });
                   
               }else{
                   console.log(rsp);
                   console.log("실패");      
                   alert("결제에 실패했습니다. 에러 내용 : " + rsp.error_msg);
               }
           }
       );
   }
</script>
</html>