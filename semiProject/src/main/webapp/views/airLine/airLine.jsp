<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
        <link rel="stylesheet" href="/resources/css/table.css">
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Cabin:400,700|Playfair+Display:900" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Ephesis&display=swap" rel="stylesheet">


        <!-- Custom stlylesheet -->
        <!-- Google font -->
        <link type="text/css" rel="stylesheet" href="/resources/css/bootstrap.min.css" />
        <link href="https://fonts.googleapis.com/css?family=PT+Sans:400" rel="stylesheet">

        <!-- Bootstrap -->


        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="/resources/css/style1.css" />
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    </head>

    <body>
        <!-- [S]glamping-N1 -->
        <header class="glamping-N1" data-bid="jILPJ5JfH5">
<%@ include file="/views/common/header.jsp" %>
        </header>
        <!-- [E]glamping-N1 -->
        <!-- [S]glamping-N4 -->
        <main class="th-layout-main ">
            <div class="glamping-N3">
                <img class="footer-backimg img-pc" src="/resources/image/airplane2.jpg" alt="PC 푸터 비주얼">
            </div>
            <br> <br> <br> <br>
            <div class="page-title">
                <div class="container">
                    <h3 class="pgc" style="font-size: 100px;">
                        <b>Flight Reservation</b>
                    </h3>
                    <h3 class="pgc">Have a comfortable flight.</h3>
                </div>
            </div>

            <div id="booking" class="section">
                <div class="section-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="booking-cta">
                                    <img src="" alt="">
                                    <h1 style="color: white; font-size: 60px;">
                                        <b>PESS-PORT</b>
                                    </h1>
                                    <p class="fhg" style="color: white;">
                                        <br>저희 PESS-PORT 여행사는<br>전세계 어디든 여러분들과 함께합니다.<br>
                                        <br>항상 최고의 서비스로 보답하겠습니다.
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-7 col-md-offset-1">
                                <div class="booking-form">
                                    <form action="/ChooseAirline.do" method="POST">
                                        <div class="row">
                                            <div class="container dfjc">
                                                <h3 class="pgc" style="font-size: 100px; color: #ffffff;">
                                                    <b>Reservation</b>
                                                </h3>
                                            </div>
                                            <div class="col-md-6">

                                                <div class="form-group">
                                                    <span class="form-label fhg">출발지</span> <select
                                                        class="form-control fhg ccct" name="starting_point"
                                                        id="starting_point" required>
                                                        <option value="" value1="">출발지선택</option>
                                                        <option value="ICN" value1="인천">인천</option>
                                                        <option value="GMP" value1="김포">김포</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6">

                                                <div class="form-group">
                                                    <span class="form-label fhg">도착지</span> <select
                                                        class="form-control fhg ccct" name="destination"
                                                        id="destination" required>
                                                        <option value="" value1="" value2="">도착지선택</option>
                                                        <option value="CDG" value1="1260800" value2="파리">파리</option>
                                                        <option value="PRG" value1="1990800" value2="프라하">프라하</option>
                                                        <option value="OSL" value1="1901200" value2="오슬로">오슬로</option>
                                                        <option value="CTS" value1="906300" value2="삿포로">삿포로</option>
                                                        <option value="DYG " value1="288300" value2="장가계">장가계</option>
                                                        <option value="JFK" value1="2066300" value2="뉴욕">뉴욕</option>
                                                        <option value="CUN" value1="2129800" value2="칸쿤">칸쿤</option>
                                                        <option value="LPB" value1="3696100" value2="엘알토">엘알토</option>
                                                        <option value="VTE" value1="351900" value2="비엔티앙">비엔티앙</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <span class="form-label fhg">가는 날</span> <input
                                                        class="form-control ccct" type="date" id="godate" name="godate"
                                                        required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <span class="form-label fhg">오는 날</span> <input
                                                        class="form-control ccct" type="date" id="backdate"
                                                        name="backdate" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <span class="form-label fhg">인원수</span> <input
                                                        class="form-control ccct" type="number" name="people"
                                                        id="people" min="1" required> <span class="select-arrow"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <input id="allprice" type="number" name="allprice" style="display: none;">
                                        <input id="price_per" type="number" name="price_per" style="display: none;">
                                        <input id="korean_destination" type="text" name="korean_destination"
                                            style="display: none;">
                                        <input id="korean_start" type="text" name="korean_start" style="display: none;">
                                        <div class="form-btn dfjc">
                                            <button type="submit" id="goToTicket" style="display: none;">hidden</button>
                                        </div>
                                    </form>
                                    <div class="form-btn dfjc">
                                    <button class="custom-btn btn-6-2 fhg" onclick="gogo()">
                                        <b>예약</b>
                                    </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br> <br> <br>
            <div class="page-title">
                <div class="container">
                    <h3 class="pgc" style="font-size: 50px;">Thank you for using [
                        Pess-Port ] travel agency.</h3>
                </div>
            </div>

        </main>
        <!-- [S]glamping-N3 -->
        <footer class="glamping-N3" data-bid="hNLPJ5jFl2">
<%@ include file="/views/common/footer.jsp" %>
        </footer>
        <!-- [E]glamping-N3 -->
        <script>
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
            document.getElementById("godate").setAttribute("value", today);
            document.getElementById("godate").setAttribute("min", today);

            //// 최대 선택 일자 설정
            let maxday = new Date();
            maxday = new Date(maxday.setMonth(maxday.getMonth() + 2))
            day = maxday.getDate();
            month = maxday.getMonth() + 1;
            year = maxday.getFullYear();
            if (day < 10) day = '0' + day;
            if (month < 10) month = '0' + month;
            today = year + '-' + month + '-' + day;
            document.getElementById("godate").setAttribute("max", today);
            document.getElementById("backdate").setAttribute("max", today);

            /* 오는 날 선택 */
            function changeReturn() {
                // 가는 날 선택에 따라 오는 날 초기 날짜 변경
                let start = document.getElementById("godate").value;
                document.getElementById("backdate").setAttribute("value", start);
                document.getElementById("backdate").setAttribute("min", start);
            }
            document.getElementById("godate").onchange = () => {
                changeReturn();
            }
            changeReturn();
            function gogo() {
                let value0 = $("#destination").val();     // 셀렉트 박스 기본 값인 value 값을 가져옴
                let value1 = $("#destination > option:selected").attr("VALUE1");
                let value2 = $("#destination > option:selected").attr("VALUE2");
                  let korean_startval = $("#starting_point > option:selected").attr("VALUE1");
                let allprice = document.getElementById("allprice");
                let price_per = document.getElementById("price_per");
                 let korean_destination = document.getElementById("korean_destination");
                 let korean_start = document.getElementById("korean_start");
                let people = $("#people").val();
                price_per.value = value1;
                korean_destination.value = value2;
                korean_start.value = korean_startval;
                allprice.value = value1 * people;
                document.getElementById("goToTicket").click();
            }
        </script>
        
    </body>

    </html>