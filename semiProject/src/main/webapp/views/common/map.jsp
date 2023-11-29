<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    
  <meta charset="utf-8">
    <title>CSS</title>
    <link rel="stylesheet" href="/resources/css/board/production.css">
    <link rel="stylesheet" href="/resources/css/board/yonnho.css">
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <meta name="description" content="">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <link rel="shortcut icon" href="favicon.ico">
  </head>
  <body>
    <div class="jb-box">
      
      <video muted autoplay loop>
        <source src="/resources/video/map.mp4" type="video/mp4">
        
      </video>
      
      <div class="page-title m7">
        <div class="container">
            <h3 style="font-size: 100px;">Map</h3>
        </div>
    </div>
      

    <div class="m1 a">
      <a href="/mapControll.do?c_idx=3&&l_idx=1">
        <img class="mm1" src="/resources/image/북미.png" alt="">
      </a>
        <div class="page-title">
          <div class="container">
            <h3 class="gj1">North America</h3>
          </div>
      </div>
      </div>


      <div class="m2 a">
        <a href="/mapControll.do?c_idx=4&&l_idx=1">
        <img class="mm2" src="/resources/image/남미.png" alt="">
      </a>
        <div class="page-title">
          <div class="container">
              <h3 class="gj2">South America</h3>
          </div>
      </div>
      </div>

      <div class="m3 a">
        <a href="/mapControll.do?c_idx=1&&l_idx=1">
        <img class="mm3" src="/resources/image/유럽.png" alt="">
      </a>
        <div class="page-title">
          <div class="container">
              <h3 class="gj3">Europe</h3>
          </div>
      </div>
      </div>

      <div class="m4 a">
        <a href="/mapControll.do?c_idx=6&&l_idx=1">
        <img class="mm4" src="/resources/image/아프리카.png" alt="">
      </a>
        <div class="page-title">
          <div class="container">
              <h3 class="gj4">Africa</h3>
          </div>
      </div>
      </div>

      <div class="m5 a">
        <a href="/mapControll.do?c_idx=2&&l_idx=1">
        <img class="mm5" src="/resources/image/아시아.png" alt="">
      </a>
        <div class="page-title">
          <div class="container">
              <h3 class="gj5">Asia</h3>
          </div>
      </div>
      </div>

      <div class="m6 a">
        <a href="/mapControll.do?c_idx=5&&l_idx=1">
        <img class="mm6" src="/resources/image/오세아니아.png" alt="">
      </a>
        <div class="page-title">
          <div class="container">
              <h3 class="gj7">Southeast Asia</h3>
              <h3 class="gj6">Oceania</h3>
          </div>
      </div>
      </div>
    
    </div>
  </body>
</html>