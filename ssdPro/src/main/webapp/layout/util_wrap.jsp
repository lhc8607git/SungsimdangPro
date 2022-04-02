<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="utilWrap">
	<div class="utilBox">
		<c:if test="${empty sessionScope.user }">
			<div class="util tmb_logout">
				<ul>
					<li><a href="member/regist_agree.asp" class="join_pop_cls">회원가입</a></li>
					<li><a href="/member/login.asp">로그인</a></li>
					<li><a href="/my/order_total.asp?mode=deliver">주문배송조회</a></li>
					<li><a href="/cscenter/">고객센터</a></li>
					<li><a href="/manager/manager_main.asp">관리자페이지</a></li>
				</ul>		
			</div>
		</c:if>

		<c:if test="${not empty sessionScope.user }">
			<div class="util tmb_login tmb_login">
				<ul>
					<li><a href="/my" class="hi">반갑습니다. ${sessionScope.user.name }님</a></li>
					<li><a href="/logout.asp">로그아웃</a></li>
					<li><a href="/my/order_total.asp?mode=deliver">주문배송조회</a></li>
					<li><a href="/cscenter/">고객센터</a></li>
					<li><a href="/manager/manager_main.asp">관리자페이지</a></li>
				</ul>
			</div>
		</c:if>
	</div>
</div>
