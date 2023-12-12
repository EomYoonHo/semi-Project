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
  <link href="https://fonts.googleapis.com/css?family=Cabin:400,700|Playfair+Display:900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Cabin:400,700|Playfair+Display:900" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ephesis&display=swap" rel="stylesheet">
<script src="/resources/js/api.js"></script>
</head>

<body>
  <!-- [S]glamping-N1 -->
  <header class="glamping-N1" data-bid="jILPJ5JfH5">
<%@ include file="/views/common/header.jsp" %>
    </header>
    <!-- [E]glamping-N1 -->
    <main class="th-layout-main">
    <!-- [S]glamping-N5 -->
    <br><br>
    <form action="" method="">
      <div class="glamping-N5" data-bid="KmLpj5JFIP">
        <div class="contents-inner">
          <div class="contents-container container-md">
            <div class="cardset-wrap">
              <div class="cardset cardset-xl cardset-deco cardset-hor row-rever hover01">
                <figure class="cardset-figure">
                  <img class="cardset-img" src="${map.l_file_path}" alt="카드이미지">
                </figure>
                <div class="cardset-body">
                  <li class="header-gnbitem">
                      <a class="header-gnblink pggc ccll1" href="/mapControll.do?c_idx=${map.c_idx}&l_idx=1">
                        <span><b>First</b></span>
                      </a>
                      <a class="header-gnblink pggc ccll2" href="/mapControll.do?c_idx=${map.c_idx}&l_idx=2">
                          <span><b>Second</b></span>
                      </a>
                      <a class="header-gnblink pggc ccll3" href="/mapControll.do?c_idx=${map.c_idx}&l_idx=3">
                          <span><b>Third</b></span>
                      </a>
                      <a class="header-gnblink pggc ccll4" href="/mapControll.do?c_idx=${map.c_idx}&l_idx=4">
                          <span><b>Fourth</b></span>
                      </a>
                    </li><br><br>
                  <h2 class="cardset-tit ct"><p style="font-size: 40px;">${map.l_content1}</p></h2>
                  <p class="cardset-desc">
                    ${map.l_content2}
                    </p>
                    <!-- 지도 -->
                <div id="googleMap" style="width: 100%; height: 400px;"></div>

            <script>
               function myMap() {

                  var mapOptions = {
                     center : new google.maps.LatLng(${map.l_gps}),
                     zoom : 15
                  };

                  var map = new google.maps.Map(document.getElementById("googleMap"), mapOptions);
                  
                  var marker = new google.maps.Marker({
                     position: new google.maps.LatLng(${map.l_gps}),
                     map: map
                  });
               }
            </script>
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA4LoIjkvF7-JSdIatqJUxFwEqohzJqYU4&callback=myMap"></script>
                    <br><br><br>
                    <a href="/views/common/map.jsp" class="btnset btnset-round btnset-line btnset-black dfjc">다른 여행지 보러가기</a>
                    <br><br><br><br><br><br><br>
                    <br><br><br><br><br><br><br>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </form>
  </main>
  <br><br><br>
  <div class="container">
    <h3 class="pgc" style="font-size: 50px;"><b>The Pess-Port 
        Travel Destination Recommendation</b></h3>
        <br>
        <h3 class="pgc" style="font-size: 30px;">Have a nice trip !</h3>
  </div>
  <br><br><br>

  <!-- [S]glamping-N3 -->
  <footer class="glamping-N3" data-bid="hNLPJ5jFl2">
<%@ include file="/views/common/footer.jsp" %>
  </footer>

</body>