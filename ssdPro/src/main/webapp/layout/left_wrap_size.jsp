<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div align="left" class="LeftWrapSize"
	style="float: left; width: 16%; padding-bottom: 30px; margin-top: 67.9px;">
	<div class="lmenu menuon" style="width: 100%;">
		<!-- LEFT 메뉴 : 시작 -->

		<!-- 고객센터 타이틀 :시작 -->
		<div class="lmenu_title">
			<div>
				<img src="/images/ico_member.png" alt="">
			</div>
			<div class="title">마이페이지</div>
			<div class="subTitle">MYPAGE</div>
		</div>
		<!-- 고객센터 타이틀 :끝 -->

		<!-- 내쇼핑정보 :시작 -->
		<div align="left" class="myInfo">
			<div class="tit">
				<b>${sessionScope.user.name }</b>의 쇼핑정보
			</div>
			<!-- 쇼핑정보 :시작 -->
			<dl>
				<dt class="gray_11">회원등급</dt>
				<dd align="right">
					<span class="gray_11"><b>${requestScope.grade }</b></span>
				</dd>
			</dl>
			<!-- 총구매액 :주문리스트로 이동 -->
			<dl>
				<dt class="gray_11">총주문금액</dt>
				<dd align="right" class="gray_11">
					<a href="/my/order_total.asp?mode=normal"><span
						class="orange_11"><b>${requestScope.totalPay }</b></span></a> 원
				</dd>
			</dl>
			<!-- 적립금 :적립금리스트로 이동 -->
			<dl>
				<dt class="gray_11">적립금</dt>
				<dd align="right" class="gray_11">
					<a href="/my/my_point.asp"><span class="blue_11"><b>1,000</b></span></a>
					원
				</dd>
			</dl>
			<!-- 할인쿠폰수 :할인쿠폰리스트로 이동 -->
			<dl>
				<dt class="gray_11">할인쿠폰</dt>
				<dd align="right" class="gray_11">
					<a href="/my/my_coupon.asp"><span class="blue_11"><b>0</b></span></a>
					매
				</dd>
			</dl>
			<!-- 구매예정제품수 :상품보관함으로 이동 -->
			<dl>
				<dt class="gray_11">
					<span style="letter-spacing: -0.1em;">상품보관함</span>
				</dt>
				<dd align="right" class="gray_11">
					<a href="/my/my_wishlist.asp"><span class="blue_11"><b>1</b></span></a>
					개
				</dd>
			</dl>
			<!-- 쇼핑정보 :끝 -->
		</div>
		<!-- 내쇼핑정보 :끝 -->

		<!-- LEFT 메뉴 :시작 -->

		<div class="lmenu_menu">
			<ul>
				<li><a href="/my/main.asp">나의 쇼핑정보</a>
					<ul>
						<li class="submenu top"><a
							href="/my/order_total.asp?mode=normal" target="_self">주문/배송내역</a></li>
						<li class="submenu"><a href="/my/order_total.asp?mode=cancel"
							target="_self">취소/반품/환불내역</a></li>
						<li class="submenu"><a href="/my/order_total.asp?mode=change"
							target="_self">교환/AS내역</a></li>
						<li class="submenu"><a href="/my/my_point.asp" target="_self">적립금</a></li>
						<li class="submenu"><a href="/my/my_coupon.asp"
							target="_self">할인쿠폰</a></li>
						<li class="submenu"><a href="/my/my_wishlist.asp"
							target="_self">좋아요</a></li>
					</ul></li>

				<li><a href="javascript:;">나의 문의글</a>
					<ul>
						<li class="submenu"><a href="/my/my_evaluation.asp"
							target="_self">나의 상품평</a></li>
						<li class="submenu"><a href="/my/qna.asp" target="_self">상품
								Q&A</a></li></li>
			</ul>
			</li>

			<li><a href="/my/todayhistory.asp" target="_self">최근 본 상품</a></li>
			<!-- <li><a href="/my/rec_member.asp" target="_self">나를 추천한 회원 목록</a></li> -->

			<li><a href="/my/info_edit.asp">개인정보</a>
				<ul>
					<li class="submenu top"><a href="/my/info_edit.asp"
						target="_self">회원정보 수정</a></li>
					<li class="submenu"><a href="/my/order_my_address.asp"
						target="_self">나의 배송지</a></li>
					<li class="submenu"><a href="/my/secession.asp" target="_self">회원탈퇴</a></li>
				</ul></li>
			</ul>
		</div>
		<!-- LEFT 메뉴 :끝 -->
		<!-- LEFT 메뉴 : 끝 -->
	</div>

	<!-- LEFT 배너 : 시작 -->
	<div align="left"
		style="width: 191px; overflow: hidden; text-align: center; margin-top: 10px;">

	</div>
	<!-- LEFT 배너 : 끝 -->
</div>
