<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="_csrf" content="${_csrf.token}">
    <meta name="_csrf_header" content="${_csrf.headerName}">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link
	href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico" type="image/x-icon">



<script type="text/javascript">
	function viewStore(id) {
		var form = document.createElement('form');
		form.method = 'POST';
		form.action = '/customer/viewStore.do';

		var idInput = document.createElement('input');
		idInput.type = 'hidden';
		idInput.name = 'storeid';
		idInput.value = id;
		form.appendChild(idInput);

		document.body.appendChild(form);
		form.submit();
	}
	let slideIndex = 1;

    
</script>
<title>조기요</title>
</head>

<body>

	<div class="header" style="z-index: 1000;">
		<ul class="menu">
			<li><a href="${pageContext.request.contextPath}/"
				style="display: inline-block; /* block 대신 inline-block으로 변경 */ padding: 0;">
					<img alt="main"
					src="${pageContext.request.contextPath}/resources/img/yogiyo.png"
					style="width: 97.66px; height: 68.56px; vertical-align: bottom;">
			</a></li>
			<sec:authorize access="hasAnyRole('ROLE_1','ROLE_2')">
			<li><a href="#">스토어</a>
				<ul class="submenu">
					<li><a
						href="${pageContext.request.contextPath}/store/AddStore.do">스토어
							추가하기</a></li>
					<li><a
						href="${pageContext.request.contextPath}/store/ListStore.do">내
							가게리스트</a></li>
				</ul></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
				<li><a href="#">마이페이지</a>
					<ul class="submenu">
					<li><a
						href="${pageContext.request.contextPath}/customer/pastOrder.do">과거
							주문내역</a></li>
					<li><a
						href="${pageContext.request.contextPath}/customer/basket.do">장바구니</a></li>
					<li><a
						href="${pageContext.request.contextPath}/customer/coupon.do">내쿠폰</a></li>
					<li><a
						href="${pageContext.request.contextPath}/customer/mypage.do">내정보 보기</a></li>
					<li><a href="${pageContext.request.contextPath}/customer/listDelivery.do">배달현황 보기</a></li>
					</ul>
				</li>
				</sec:authorize>
			<sec:authorize access="hasRole('ROLE_1')">
				<li><a href="#">관리</a>
					<ul class="submenu">
						<li><a
							href="${pageContext.request.contextPath}/admin/viewSales.do">매출현황
								보기</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/notice.do">공지사항
								추가</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/listAcc.do">사용자
								관리</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/ownerList.do">점주 회원가입 목록</a></li>
					</ul></li>
			</sec:authorize>
			<li><a href="${pageContext.request.contextPath}/customer/notice.do">공지사항 보기</a></li>
		</ul>
		<div class="login">
			<sec:authorize access="isAuthenticated()">
				<form method="post" action="/login/logout.do">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" /> <input type="submit" value="로그아웃"
						class="login-btn">
				</form>
			</sec:authorize>
			<sec:authorize access="isAnonymous()">
				<button class="login-btn"
					onclick="window.location.href='${pageContext.request.contextPath}/login/login.do'">로그인</button>
			</sec:authorize>
		</div>
	</div>
	
<div class= "cha-container">
<div class= "hero-container" style="z-index: 1;">
<div class= "slideshow-container">
<div class= "slides fade" >
	<img src="${pageContext.request.contextPath}/resources/img/광고1.jpg" style=" width:100%; height:280px;">
</div>
<div class= "slides fade" >
	<img src="${pageContext.request.contextPath}/resources/img/광고2.jpg" style=" width:100%; height:280px;">
</div>
<div class= "slides fade" >
	<img src="${pageContext.request.contextPath}/resources/img/광고3.jpg" style=" width:100%; height:280px;">
</div>
</div>
</div>
</div>

    <div class="fixedBtn_wrap topBtn">
        <a href="${pageContext.request.contextPath}/customer/storeList.do" class="btn_fixedTicketing">주문하기</a>
        <a href="#" id="btn_gotoTop"><img src="https://img.cgv.co.kr/R2014/images/common/btn/gotoTop.png" alt="최상단으로 이동" /></a>
    </div>
	
	
	
	  <div class="fixedBtn_wrap topBtn">
      <a href="${pageContext.request.contextPath}/customer/storeList.do" class="btn_fixedTicketing">주문하기</a>
      <a href="#" id="btn_gotoTop"><img src="https://img.cgv.co.kr/R2014/images/common/btn/gotoTop.png" alt="최상단으로 이동" /></a>
    </div>
   
	<script>
		<%--
	function clearSearch() {
		document.getElementById('search-input').value = '';
	}
	document.addEventListener("DOMContentLoaded", function() {
		const menuItems = document.querySelectorAll(".menu > li");

			menuItems.forEach(function(menuItem) {
				menuItem.addEventListener("mouseover", function() {
					const submenu = this.querySelector(".submenu");
					if (submenu) {
						submenu.style.display = "block";
					}
				});

				menuItem.addEventListener("mouseleave", function() {
					const submenu = this.querySelector(".submenu");
					if (submenu) {
						submenu.style.display = "none";
					}
				});
			});
		});
		--%>
		
	</script>