<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>

  <script src="/resources/js/member/member.js"></script>		
  <meta charset="UTF-8">
  
  <title>semi-Project</title>
  <link rel="stylesheet" href="/resources/css/setting.css">
  <link rel="stylesheet" href="/resources/css/plugin.css">
  <link rel="stylesheet" href="/resources/css/semi.css">
  <link rel="stylesheet" href="/resources/css/common.css">
  <link rel="stylesheet" href="/resources/css/style.css">
  <link rel="stylesheet" href="/resources/css/yh.css">
  <link rel="stylesheet" href="/resources/css/table.css">
  <link rel="stylesheet" th:href="@{./css/bootstrap.css}">
        <link rel="stylesheet" th:href="@{./css/custom.min.css}">
        <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">

  <!-- Web fonts -->
  <link href="https://fonts.googleapis.com/css?family=Cabin:400,700|Playfair+Display:900" rel="stylesheet">

  <!-- favicon.ico. Place these in the root directory. -->
  <link rel="shortcut icon" href="favicon.ico">
  <script src="/post_inc/jquerys/jquery-barcode.min.js"></script>
  <!-- 잡것 -->
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Cabin:400,700|Playfair+Display:900" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ephesis&display=swap" rel="stylesheet">
</head>

<body>
  <!-- [S]glamping-N1 -->
  <header class="glamping-N1" data-bid="jILPJ5JfH5">
<%@ include file="/views/common/header.jsp" %>
    </header>
    <div class="glamping-N3">
      <img class="footer-backimg img-pc" src="/resources/image/airplane2.jpg" alt="PC 푸터 비주얼">
    </div>
    <!-- [E]glamping-N1 -->
    <br><br><br>
    
    <section class="notice">
      <div class="page-title">
        <br><br><br>
        <div class="container">
                <h3 class="pgc" style="font-size: 100px;"><b>My Page</b></h3>
                <br><br>
                <h3 class="pgc">
                  Thank you always.</h3>
              </div>
            </div>
            <br><br><br>
            <div class="container">
              <h3 class="pgc" style="font-size: 50px;"><b>My Info</b></h3>
            </div>
        <br>
  <form id="infodetail">          
  <div id="board-list">
    <div class="container">
        <table class="board-table iipp5">
        	<div>
              <tr class="iipp6">
                <th width=40% class="text-center warning">이름</th>
                <td width=20% class="text-center www"><input class="www bs ct" name="name" type="text" value="${sessionScope.m_name}" disabled></td>
                <th width=40% class="text-center warning">닉네임</th>
                <td width=20% class="text-center www"><input class="www bs ct" name="nickName" type="text" value="${sessionScope.m_nickname}" disabled></td>
              </tr>
        	</div>


               <tr>
                <th width=40% class="text-center warning ff">전화번호</th>
                <td colspan="3" width=60% class="www wwww"><input name="phone" class="bs ww www wwww" type="text" value="${sessionScope.m_phone}" disabled></td>
                
               </tr>
               <tr>
                <th width=40% class="text-center warning ff">이메일</th>
                <td colspan="3" width=60% class="www wwww"><input name="email" class="bs ww www wwww" type="text" value="${sessionScope.m_email}" disabled></td>
                
               </tr>
               <tr>
                <th width=40% class="text-center warning ff">비밀번호</th>
                <td colspan="3" width=60% class="www wwww"><input name="pwd" class="bs ww www wwww" type="text" value="******************" disabled></td>
               </tr>

                <tr>
                <th width=40% class="text-center warning ff">마일리지</th>
                <td colspan="3" width=60% class="www wwww ctct"><input name="nickName" class="bs ww www wwww" type="text" value="${sessionScope.m_nickname}" disabled></td>
               </tr>
               
            </table>
    <br>
    <!--  
    //컨트롤러
    -->
    <div class="pt-1 wwwii dfjc">    
    <button class="custom-btn btn-6"  onclick="infoform()">수정페이지</button>
    <button class="custom-btn btn-6-1" onclick="memberDelete()">회원탈퇴</button>
    <button class="custom-btn btn-6" formaction="/views/myPage/myPage.jsp">취소</button>
    </div>
    </div>
    </div> 
</form>    
</section>
<br><br>
<div class="page-title">
  <div class="container">
      <h3 class="pgc" style="font-size: 50px;">
        Thank you for using [ Pess-Port ] travel agency.</h3>
  </div>
</div>
<br>
    <!-- [E]glamping-N9 -->
  <!-- [S]glamping-N3 -->
  <footer class="glamping-N3" data-bid="hNLPJ5jFl2">
<%@ include file="/views/common/footer.jsp" %>
  </footer>


  
</body>
</html>