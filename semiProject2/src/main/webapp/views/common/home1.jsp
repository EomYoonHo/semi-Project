<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en-us">
   <style>
    .img {
        animation: motion 5s /* 속도 */
        infinite alternate; /* 무한 반복 */
        
}
.as {
    position: absolute;
    width: 15%;
    height: 13%;
    left: 39%;
    top: 10%;
}
  @keyframes motion {
   0% {margin-top: 0px;} /* 처음 위치 */
   100% {margin-top: 750px;} /* 마지막 위치 */
  }
  .wwwhh {
    width: 100%;
    height: 100%;
  }
   </style>

    <head>

        <!-- Meta -->
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1">

        <title>Viking Tours</title>
        <meta name="description" content="">

        <!-- The compiled CSS file -->
        <link rel="stylesheet" href="/resources/css/production.css">
        <link rel="stylesheet" href="/resources/css/yh.css">
        <link rel="stylesheet" href="/resources/css/table.css">
        
        <link rel="stylesheet" th:href="@{./css/bootstrap.css}">
        <link rel="stylesheet" th:href="@{./css/custom.min.css}">

        <!-- 부트스트랩 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.min.js"></script>
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script>

        <!-- Web fonts -->
        <link href="https://fonts.googleapis.com/css?family=Cabin:400,700|Playfair+Display:900" rel="stylesheet">

        <!-- favicon.ico. Place these in the root directory. -->
        <link rel="shortcut icon" href="favicon.ico">



        

   

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./css-table-12/css/bootstrap.min.css">
    
    <!-- Style -->
    <!-- <link rel="stylesheet" href="./css-table-12/css/style.css"> -->
       

    </head>
    

       
        <div class="home-box">
            <img class="wwwhh" src="/resources/image/ufo.jpg" alt="">
            <img class="as img" src="/resources/image/ff22.png" alt="">
        </div>

       
        <!-- Body -->
        
    

    </body>
</html>