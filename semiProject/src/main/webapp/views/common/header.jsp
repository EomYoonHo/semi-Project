<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--헤더부분 -->
<div class="header-container container-lg">
	<div class="header-left">
		<h1 class="header-title">
			<a href="/views/common/home.jsp"> <img
				src="/resources/image/pessport.png" alt="로고">
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
						href="/views/common/map.jsp"> <span>지도로 이동</span>
					</a></li>
				</ul></li>
			<li class="header-gnbitem"><a class="header-gnblink" href="">
					<span>게시판</span>
			</a>
				<ul class="header-sublist">
					<li class="header-subitem"><a class="header-sublink"
						href="/boardList.do?cpage=1"> <span>커뮤니티</span>
					</a></li>
					<li class="header-subitem"><a class="header-sublink"
						href="/views/board/list2.jsp"> <span>게시글 작성</span>
					</a></li>
					<li class="header-subitem"><a class="header-sublink"
						href="/reviewBoardList.do?cpage=1"> <span>리뷰</span>
					</a></li>
					<li class="header-subitem"><a class="header-sublink"
						href="/views/reviewboard/reviewEnroll.jsp"> <span>리뷰 작성</span>
					</a></li>
				</ul></li>
			<li class="header-gnbitem"><a class="header-gnblink" href="">
					<span>여행패키지</span>
			</a>
				<ul class="header-sublist">
					<li class="header-subitem"><a class="header-sublink"
						href="/views/package/orderList.jsp"> <span>패키지 상품</span>
					</a></li>
				</ul></li>
			<li class="header-gnbitem"><a class="header-gnblink" href="">

					<span>항공권</span>
			</a>
				<ul class="header-sublist">
					<li class="header-subitem"><a class="header-sublink"
						href="/views/airLine/airLine.jsp"> <span>항공권 예매</span>
					</a></li>
				</ul></li>	
			<li class="header-gnbitem"><a class="header-gnblink" href="">
					<span>고객문의센터</span>
			</a>
				<ul class="header-sublist">
					<li class="header-subitem"><a class="header-sublink"
						onclick="window.location.href = '/customerList.do?cpage=1'" style="cursor: pointer;"><span>고객문의</span>
					</a></li>
					<li class="header-subitem"><a class="header-sublink"
						href="/views/customer/customerEnroll.jsp"> <span>문의하기</span>
					</a></li>
				</ul></li>

			<c:choose>
				<c:when test="${sessionScope.m_name != null}">
					<a class="header-gnblink log" href="/views/myPage/myPage.jsp"> <span>마이페이지</span></a>
					<a class="header-gnblink log1" href="/logout.do"> <span>로그아웃</span></a>
				</c:when>
				<c:otherwise>
					<a class="header-gnblink log" href="/form/loginform.do"> <span>로그인</span></a>
					<a class="header-gnblink log1" href="/form/registerform.do"> <span>회원가입</span></a>
				</c:otherwise>
			</c:choose>


	</div>
</div>