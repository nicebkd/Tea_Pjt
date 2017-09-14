<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-1 logo">
				<a href="${path }/"><img style="width: 80%; height: 80px; margin-top: 10px;" alt="logo" src="<c:url value="/resources/images/logo.png" />" alt="..."></a>
			</div>
			<nav class="col-sm-7 menu">
				<ul>
					<li>Brand</li>
					<li>Menu</li>
					<li>Store</li>
					<li>Benefit</li>
					<li>Event&News</li>
				</ul>
			</nav>
			<nav class="col-sm-4 menu2">
				<ul>
					<li><a href="${path}/board/list.do">고객센터</a></li>
					<li><a href="#">공지사항</a></li>
					<c:choose>
						<c:when test="${sessionScope.user ==null}">
							<li><a href="${path}/member/login.do" title="로그인"><span
								class="glyphicon glyphicon-log-in"></span></a></li>
							<li><a href="${path}/member/signup.do" title="회원가입"><span
								class="glyphicon glyphicon-user"></span></a></li>
						</c:when>
						<c:otherwise>
							<li><a href="${path }/userInfo.do" style="color: black;">${user.user_id}(${user.user_name})님 환영합니다!</a></li>
							<li><a href="${path }/member/logout.do" style="color: black;">로그아웃</a></li>
							<li><a href="${path }/admin/adminPage.do">관리자 메뉴</a></li>							
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>
		</div>
		<div class="row submenu" style="background: black;">
			<div class="col-sm-1">
			</div>		
			<div class="col-sm-7 ">
			<ul>
				<li><a href="${path }/menu/introduceGongcha.do">브랜드소개</a></li>
				<li><a href="${path }/shop/product/list.do">상품</a></li>
				<li><a href="${path }/map/location.do">매장찾기</a></li>
				<li><a href="#">제휴혜택</a></li>
				<li><a href="${path }/menu/attendanceGo.do">출석</a></li>
			</ul>
			<ul>
				<li><a href="#">&nbsp;</a></li>
				<li><a href="${path}/shop/cart/list.do">장바구니</a></li>
				<li><a href="#">&nbsp;</a></li>
				<li><a href="#">&nbsp;</a></li>
				<li><a href="${path }/member/couponGo.do">내 쿠폰함</a></li>
			</ul>

			<ul>
				<li><a href="#">&nbsp;</a></li>
				<li><a href="${path }/shop/order/order_history.do">주문 내역</a></li>
				<li><a href="#">&nbsp;</a></li>
				<li><a href="#">&nbsp;</a></li>
				<li><a href="#">&nbsp;</a></li>
			</ul>

			<ul>
				<li><a href="#">&nbsp;</a></li>
				<li><a href="#">&nbsp;</a></li>
				<li><a href="#">&nbsp;</a></li>
				<li><a href="#">&nbsp;</a></li>
				<li><a href="#">&nbsp;</a></li>
			</ul>
			</div>
			<div class="col-sm-4">
			</div>	
		</div>
	</div>
	
	