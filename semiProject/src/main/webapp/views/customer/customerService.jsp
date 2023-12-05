<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<script src="/resources/js/customer/customer.js"></script>

<meta charset="UTF-8">

<title>semi-Project</title>
<link rel="stylesheet" href="/resources/css/board/setting.css">
<link rel="stylesheet" href="/resources/css/board/plugin.css">
<link rel="stylesheet" href="/resources/css/board/semi.css">
<link rel="stylesheet" href="/resources/css/board/common.css">
<link rel="stylesheet" href="/resources/css/board/style.css">
<link rel="stylesheet" href="/resources/css/board/yh.css">
<link rel="stylesheet" href="/resources/css/board/table.css">
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
<script src="/post_inc/jquerys/jquery-barcode.min.js"></script>
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
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
   integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
   crossorigin="anonymous" />
</head>

<body>
   <!-- [S]glamping-N1 -->
   <header class="glamping-N1" data-bid="jILPJ5JfH5">
      <div class="header-container container-lg">
         <div class="header-left">
            <h1 class="header-title">
               <a href="home.html"> <img src="/resources/img/pessport.png" alt="로고">
               </a>
            </h1>
         </div>
         <div class="header-center">
            <ul class="header-gnblist">
               <li class="header-gnbitem"><a class="header-gnblink" href="">
                     <span>여행지추천</span>
               </a>
                  <ul class="header-sublist">
                     <li class="header-subitem"><a class="header-sublink"
                        href="map.html"> <span>지도로 이동</span>
                     </a></li>
                  </ul></li>
               <li class="header-gnbitem"><a class="header-gnblink" href="">
                     <span>게시판</span>
               </a>
                  <ul class="header-sublist">
                     <li class="header-subitem"><a class="header-sublink"
                        href="list.html"> <span>커뮤니티</span>
                     </a></li>
                     <li class="header-subitem"><a class="header-sublink"
                        href="list2.html"> <span>커뮤니티 작성</span>
                     </a></li>
                     <li class="header-subitem"><a class="header-sublink"
                        href="review.html"> <span>리뷰</span>
                     </a></li>
                     <li class="header-subitem"><a class="header-sublink"
                        href="review2.html"> <span>리뷰 작성</span>
                     </a></li>
                  </ul></li>
               <li class="header-gnbitem"><a class="header-gnblink" href="">
                     <span>여행패키지</span>
               </a>
                  <ul class="header-sublist">
                     <li class="header-subitem"><a class="header-sublink"
                        href="orderList.html"> <span>패키지 상품</span>
                     </a></li>
                  </ul></li>
               <li class="header-gnbitem"><a class="header-gnblink" href="">
                     <span>고객문의센터</span>
               </a>
                  <ul class="header-sublist">
                     <li class="header-subitem"><a class="header-sublink"
                        onclick="window.location.href = '/customerList.do?cpage=1'"> <span>고객문의</span>
                     </a></li>
                     <li class="header-subitem"><a class="header-sublink"
                        href="/views/customer/customerEnroll.jsp"> <span>문의하기</span>
                     </a></li>
                  </ul></li>
               <li class="header-gnbitem"><a class="header-gnblink" href="">
                     <span>마이페이지</span>
               </a>
                  <ul class="header-sublist">
                     <li class="header-subitem"><a class="header-sublink"
                        href="myPage.html"> <span>마이페이지</span>
                     </a></li>
                     <li class="header-subitem"><a class="header-sublink"
                        href="infoDetail.html"> <span>내정보</span>
                     </a></li>
                     <li class="header-subitem"><a class="header-sublink"
                        href="myList.html"> <span>구매목록</span>
                     </a></li>
                  </ul></li>
               <a class="header-gnblink log" href="login.html"> <span>로그인</span>
               </a>
               <a class="header-gnblink log1" href="register.html"> <span>회원가입</span>
               </a>
         </div>
      </div>
   </header>
   <div class="glamping-N3">
      <img class="footer-backimg img-pc" src="/resources/img/airplane2.jpg"
         alt="PC 푸터 비주얼">
   </div>
   <!-- [E]glamping-N1 -->
   <br>
   <br>
   <br>
   <div class="page-title">
      <br>
      <br>
      <br>
      <div class="container">
         <h3 class="pgc" style="font-size: 100px;">
            <b>Customet Service Center</b>
         </h3>
         <br>
         <h3 class="pgc">Please tell us about your inconvenience.</h3>
      </div>
   </div>
   <!-- [E]glamping-N9 -->

   <div class="glamping-N5" data-bid="KmLpj5JFIP">
      <div class="contents-inner">
         <div class="contents-container container-md">
            <div class="cardset-wrap">
               <div class="cardset cardset-xl cardset-deco cardset-hor row-rever">
                  <figure class="cardset-figure" style="width: 70%;">
                     <!-- 고객문의테이블 -->
                     <section class="notice">

                        <h1 class="ct" style="font-size: 30px;">고객문의</h1>
                        <br>
                        <br>
                        <form action="" id = "customer-detail">
                           <div id="board-list">
                              <div class="container">
                                 <table class="board-table iipp3">
                                    <thead>
                                       <tr>
                                          <th width=10% scope="col" class="th-title">번호</th>
                                          <th width=40% scope="col" class="th-title">제목</th>
                                          <th width=20% scope="col" class="th-title">작성자</th>
                                          <th width=20% scope="col" class="th-title">답변여부</th>
                                       </tr>
                                    </thead>
                                    <c:choose>
                                       <c:when test="${empty list}">
                                          <tr>
                                             <td colspan="4" class="text-center">등록된 글이
                                                없어요!!!!!!!!!</td>
                                          </tr>
                                       </c:when>
                                       <c:otherwise>
                                          <c:forEach var="item" items="${list}">
                                             <td type= "hidden" name = "idx" value= "${item.cs_idx}">
                                             <tr>
                                                <td>${row}</td>
                                                <td onclick="customerDetailPage(${item.cs_idx}, ${row} )">${item.cs_title}</td>
                                                <td>${item.m_name}</td>
                                                <td>${item.cs_reply_check}</td>
                                             </tr>
                                             <c:set var="row" value="${row-1}" />
                                          </c:forEach>
                                       </c:otherwise>
                                    </c:choose>

                                 </table>
                              </div>
                           </div>
                           <br>
                           <div class="pt-1 wwwii dfjc"><a href="/views/customer/customerEnroll.jsp">
                              <button type="button" class="custom-btn btn-6">
                                 <span>문의하기</span>
                              </button>
                              </a>
                           </div>
                        </form>
                     </section>
                  </figure>
                  <div class="cardset-body" style="width: 30%;">
                     <!-- 간편문의사항 -->
                     <br>
                     <br>
                     <br>
                     <h1 class="ct">자주 묻는 질문</h1>
                     <br>
                     <div class="faq-container">
                        <div class="faq">
                           <h3 class="faq-title">신혼여행상품 예약은 언제쯤부터 해야하나요?</h3>

                           <p class="faq-text">보통 4,5월과 9,10월이 결혼시즌이나 최근에는 연중 골고루 날을
                              잡는 것 같습니다. 허니문 예약시점은 결혼식 2-3개월 이전부터 준비하시기를 추천해드립니다. 때론 조기예약등의
                              이벤트 혜택을 받으실 수 있거든요. 소위 길일 이라고 하는 특정날짜의 경우는 3개월 이전부터 마감되는 경우도
                              있으니 미리 준비하시는 것이 좋겠습니다.</p>

                           <button class="faq-toggle">
                              <i class="fas fa-chevron-down"></i> <i class="fas fa-times"></i>
                           </button>
                        </div>
                        <div class="faq">
                           <h3 class="faq-title">항공권 예약 문의는 어느 곳에서 해야 하나요?</h3>

                           <p class="faq-text">항공권은 1544-5252 연결 후, 2번 또는 1544-5353으로
                              연결 요청드립니다. 1544-5252 연결 후, 1번은 패키지 관련 상담입니다.</p>

                           <button class="faq-toggle">
                              <i class="fas fa-chevron-down"></i> <i class="fas fa-times"></i>
                           </button>
                        </div>
                        <div class="faq">
                           <h3 class="faq-title">패키지여행으로 예약하고 현지에서 일행끼리 관광이 되나요?</h3>

                           <p class="faq-text">패키지여행은 기본적으로 그룹으로 움직이는 여행패턴으로 보시면 됩니다.
                              일행이 모두 함께 같은 일정으로 움직이시기 때문에, 원래 해당일정 자체가 자유일정이 하루 또는 반나절
                              포함되어있는 경우가 아니라면, 일행끼리의 개별행동은 원칙적으로 불가하십니다. 그럴 경우는 패키지상품보다는 에어텔
                              등의 개별여행패턴으로 예약하시는것을 권장 합니다.</p>

                           <button class="faq-toggle">
                              <i class="fas fa-chevron-down"></i> <i class="fas fa-times"></i>
                           </button>
                        </div>
                        <div class="faq">
                           <h3 class="faq-title">지금 해외 패키지 상품 예약이 가능한가요?</h3>

                           <p class="faq-text">현재 코로나로 인하여 각 국가별 입국 가능 조건이 상이하며, 사전 고지
                              없이 변경될 수 있습니다. 자세한 사항은 ‘국가별 입국 규정 안내’를 참고 부탁드립니다.</p>

                           <button class="faq-toggle">
                              <i class="fas fa-chevron-down"></i> <i class="fas fa-times"></i>
                           </button>
                        </div>
                        <div class="faq">
                           <h3 class="faq-title">해외여행자 보험이란?</h3>

                           <p class="faq-text">여행도중에 우연히 발생하게 되는 각종 사고 및 질병, 조난 시
                              구조비용, 휴대품의 도난 손해 등의 보상을 목적으로 하는 보험. 해외여행자보험의 실손의료비는 여러 보험사에 중복
                              계약을 했더라도 중복보상이 안되고 비례보상으로 처리된다. (단 , 사망보험금은 중복보상 가능) ( 휴대품 손해,
                              배상책임도 비례보상으로 처리) 국내에서 상해 및 질병으로 치료 받는경우 발생한 실손의료비에 대해 100% 보상을
                              받을수 없다. 자기부담금이 설정되어 있어 그만큼의 비용을 제외하고 보상을 받을수 있다.</p>

                           <button class="faq-toggle">
                              <i class="fas fa-chevron-down"></i> <i class="fas fa-times"></i>
                           </button>
                        </div>
                        <div class="faq">
                           <h3 class="faq-title">자유여행을 가려하는데요. 조언 좀 해주세요.</h3>

                           <p class="faq-text">여행을 떠나기전에 해당국의 지도를 펴놓고 관광지와 여행기간과 경비를
                              고려해서 대략적인 코스를 정해보세요. 항공권은 항공사로 직접하시는 것보다 여행사에서 판매하는 할인항공권이나
                              그룹항공권을 알아보시면 보다 저렴하게 가시는 방법이 있습니다. 현지에서의 생활은 나라마다 조금씩 차이는 있지만
                              저렴하게 하시려면 슈퍼나 패스트 푸드점을 이용하시고, 꼭 호텔이 아니더라도 민박, 유스호스텔등 을 이용하시면
                              됩니다. 자세한 사항은 일단 시중에 많이 나와있는 책자나 인터넷을 통한 경험담을 통해 자료를 구하시고, 물론
                              여행코스는 현지에 가서 생활하다보면 바뀌게 되는 경우가 많습니다. 숙박은 현지에서 구하는 것이 더 저렴할 수 도
                              있고, 호텔을 이용하는 경우는 저렴한 할인 호텔가격으로 판매하는 여행사를 통하는것이 더 좋은 방법일 수 도
                              있습니다.</p>

                           <button class="faq-toggle">
                              <i class="fas fa-chevron-down"></i> <i class="fas fa-times"></i>
                           </button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

   <div class="page-title">
      <div class="container">
         <h3 class="pgc" style="font-size: 50px;">Thank you for using [
            Pess-Port ] travel agency.</h3>
      </div>
   </div>
   <!-- [S]glamping-N3 -->
   <footer class="glamping-N3" data-bid="hNLPJ5jFl2">
      <div class="footer-container">
         <!-- <audio src="./music/home.mp3" controls="controls" autoplay="autoplay" style="display: none;"></audio> -->
         <img class="footer-backimg img-pc" src="/resources/img/apl.jpg"
            alt="PC 푸터 비주얼">
         <div class="footer-body container-md">
            <h2 class="footer-logo">
               <a href="javascript:void(0)"> <img src="/resources/img/pessport.png"
                  alt="로고">
               </a>
            </h2>

            <ul class="footer-snslist">
               <li class="footer-snsitem"><a class="footer-snslink"
                  href="javascript:void(0)"> <img
                     src="/resources/icon/ico_instagram_white.svg" alt="인스타그램">
               </a></li>
               <li class="footer-snsitem"><a class="footer-snslink"
                  href="javascript:void(0)"> <img
                     src="/resources/icon/ico_youtube_white.svg" alt="유튜브">
               </a></li>
               <li class="footer-snsitem"><a class="footer-snslink"
                  href="javascript:void(0)"> <img
                     src="/resources/icon/ico_facebook_white.svg" alt="페이스북">
               </a></li>
            </ul>
            <ul class="footer-menugroup">
               <li class="footer-menulink"><a href="javascript:void(0)">
                     <span>이용약관</span>
               </a></li>
               <li class="footer-menulink"><a href="javascript:void(0)">
                     <span>개인정보처리방침</span>
               </a></li>
               <li class="footer-menulink"><a href="home1.html"> <span>이스터에그</span>
               </a></li>
            </ul>
            <div class="footer-txtgroup">
               <div class="footer-txt">
                  <p>경기도 안양시 만안구 안양로 303 안양메쎄타워 8층</p>
                  <p>
                     <span>T. 010-1234-5678</span> <span>E. pessport@naver.com</span>
                  </p>
               </div>
               <div class="footer-txt">
                  <p>2023 BY SEMI-PROJECT "PESS-PORT"</p>
               </div>
            </div>
         </div>
      </div>
   </footer>
   <!-- [E]glamping-N3 -->
   <script src="/resources/js/setting.js"></script>
   <script src="/resources/js/plugin.js"></script>
   <script src="/resources/js/template.js"></script>
   <script src="/resources/js/common.js"></script>
   <script src="/resources/js/script.js"></script>


</body>