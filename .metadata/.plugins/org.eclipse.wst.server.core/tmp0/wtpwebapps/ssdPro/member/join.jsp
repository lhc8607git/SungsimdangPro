<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<title>성심당</title>

<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Imagetoolbar" content="no" />
<meta name="keywords" content="모바일성심당" />
<meta name="description" content="모바일성심당, M성심당, 성심당몰" />
<meta name="classification" content="성심당, 성심당쇼핑몰, 성심당몰, 모바일성심당" />

<meta property="og:type" content="website">
<meta property="og:title" content="">
<meta property="og:description" content="">
<meta property="og:image" content="https://www.sungsimdangmall.co.kr/data/sungsimdang/imgSNS.gif?v=2022-01-07 오후 10:49:28">
<meta property="og:url" content="https://www.sungsimdangmall.co.kr">
<link rel="SHORTCUT ICON" href="https://www.sungsimdangmall.co.kr/data/sungsimdang/favicon.ico?1641595768" />
<link rel="stylesheet" type="text/css" href="/css/base.css" />

<!-- <link rel="stylesheet" href="//fonts.googleapis.com/icon?family=Material+Icons"> -->
<link rel="stylesheet" href="/css/googleapisicon.css?family=Material+Icons">

<link rel="stylesheet" href="/css/jquery-ui-select.css" />
<link rel="stylesheet" type="text/css" href="/css/idangerous.swiper.css" />
<link rel="stylesheet" type="text/css" href="/css/slick.css" />

<!-- <link rel="stylesheet" type="text/css" href="/css/commonTotal.css.asp" /> -->
<!-- <link rel="stylesheet" type="text/css" href="/data/sungsimdang/css/common.css.asp" /> -->


<style>
/*모바일 스크롤숨김*/
/*크롬용
::-webkit-scrollbar {
    display:none;
}*/
/*익스플로러용
body{
-ms-overflow-style:none;
}*/
/*모바일 스크롤숨김*/

.mainVisWrap .mainBennerZone .swiper-pagination .swiper-active-switch {background-color:#4F2C1D !important;}

/***LEF 메뉴 스타일*********************************************************************************/
.lmenu {font-size:9pt; text-align:center;display:none;}
.lmenu_title {text-align:center; padding:36px 0px 16px 0px;background: ;}
.lmenu_title .title{font: inherit;font-size:px; font-family:'Malgun Gothic' ng; font-weight:;color:;word-spacing:-2pt;letter-spacing:-2px;}
.lmenu_title .subTitle{font: inherit;font-size:px; font-family:'Malgun Gothic' ng; font-weight:;color:;word-spacing:-2pt}

.lmenu_menu {width:100%;margin-top:0;padding-top:0px;display:inline-block;}
.lmenu_menu .menu {margin:0;padding:0;border:none; overflow:hidden;}
.lmenu_menu .menu li{text-align:left;background-color: ;border:none;}
.lmenu_menu .menu li:first-child{padding-top:20px;}
.lmenu_menu .menu li:last-child {padding-bottom:80px;}
.lmenu_menu .menu li a{width:100%;text-decoration:none;display:inline-block;}
.lmenu_menu .menu .txt{font: inherit;font-size:px;font-family:'Malgun Gothic' ng; font-weight:;color:;padding:10px 0px 10px 34px;display:block;}

.lmenu_menu .menu .submenu{text-align:left;background-color: ;border:none;}
.lmenu_menu .menu .top{border:none;}
.lmenu_menu .menu .submenu .txt{font: inherit;font-size:px;font-family:''Malgun Gothic' Gothic' ng; font-weight:;color:;padding:5px 0px 5px 8px;background:url(/data/rental/icon/icon_01.gif) no-repeat;background-position: left center ;display:block;cursor:pointer; margin-left:40px;}
.lmenu_menu .menu .submenu .txt_margin_top{margin-top:10px;}
.lmenu_menu .menu .submenu .txt_margin_bottom{margin-bottom:10px;}
.menuon{display:inline-block;}

/************************* 시작 ******************************/

/* 사은품 부분 */
.orderGifts .orderGiftsTab { border-bottom:3px solid #87553D;}
.orderGifts .orderGiftsTab a.on span {background-color:#87553D;}
.orderGiftslistBox .notiTit {color:#87553D;}
.orderGiftslistBox .orderGiftslist li label.on span.img img{border:1px solid #87553D;}
.orderGiftslistBox .orderGiftslist li label.on span.img .Gifts {background-color:#87553D;}

/* 서브컨텐츠 폭 */
.sub_contents {width:1200px;}
.sub_contents>.inner {width:1200px;}
.left_section .tit {background-color:#4F2C1D;}
.left_section .left_menu >ul > li > a {background-color:#E5E4E4;}
.left_section .left_menu >ul > li > a.on {color:#4F2C1D;}
.left_section .left_menu >ul > li .lnb_two_depth li a.on {color:#4F2C1D;}
ul.lgt_menu_bn {background-color:#E5E4E4;}
.right_section .top_info {background-color:#4F2C1D;}

/* 레이어 */
.layerFix .secBot .btnCp {background-color:#4F2C1D;}

/* 레이어별도 */
.layerFix.L-filter .secMid ul li .con label.on{border-color:#4F2C1D;}
.layerFix.choiceJoin .btn_gray_board {background-color:#4F2C1D;}
.layerTab.review .layerCon {border:10px solid #4F2C1D;}

/* 신form 12.5 */
.inputWrap input[type=radio]:checked + label div{color:#4F2C1D;}
.inputWrap label.on .iconfont{color:#4F2C1D;}

/* form 내부태그 - 셀렉트박스 */
.select_option.focus {border:1px solid #4F2C1D;}
.select_option .option_list.on {border:1px solid #4F2C1D;}
.select_option.focus .option_list {border:1px solid #4F2C1D;}

/* form 내부태그 - 날짜선택 */
.ui-datepicker .ui-datepicker-header {background-color:#87553D;}
.ui-datepicker .ui-datepicker-calendar td.ui-datepicker-today a {border:1px solid #87553D; color:#87553D !important; }

/* 버튼,아이콘 */
.btn_yellow01 {background-color:#4F2C1D;}
.btn_yellow02 {background-color:#4F2C1D;}
.btn_yellow03 {border:1px solid #4F2C1D;}
.btn_yellow03 span {border:1px solid #4F2C1D; background-color:#4F2C1D;}
.btn_yellow04 {background-color:#87553D;}
.btn_yellow05 {background-color:#87553D;}
.btn_yellow08 {border:1px solid #4F2C1D;}
.btn_yellow08 span {border:1px solid #87553D; background-color:#87553D;}
.btn_yellow09 {background-color:#87553D; }
.btn_yellow10 {background-color:#87553D;}
.btn_orange01 {background-color:#4F2C1D;}
.btn_orange02 {background-color:#4F2C1D;}
.btn_orange03 {background-color:#4F2C1D;}
.btn_plus {background-color:#4F2C1D;}
.btn_plus .sfl {background-color:#4F2C1D;}
.btn_plus:focus {border-color:#4F2C1D;}
.btn_plus:focus:before,
.btn_plus:focus:after {background-color:#4F2C1D;}

/* 탭 */
.tab01 a.on {border-bottom:4px solid #4F2C1D;}
.tab02 a.on {background-color:#87553D;}

/* 스텝 */
.step_box ul li.on span {background-color:#87553D;}

/* 타이틀 */
.head_title {background-color:#87553D; }
.prompt {color:color:#454545;font-size:14px;font-weight:bold;;}

/* 게시판 - 보기 */
.board_view th {background-color:#E5E4E4;}

/* 게시판 - 쓰기 */
.board_write th {background-color:#E5E4E4;}

/* 게시판 - 페이징 */
.paging a:hover {background-color:#4F2C1D; }

/* 상품리스트 - 갤러리 */
.member_wrap.width {width:1200px;}
.gallery_list ul {width:1220px;}
.gallery_list ul li .con:hover {border:1px solid #4F2C1D;}
.gallery_list ul li .txt .price_wrap .dis {color:#4F2C1D;}

/* 리스트 장바구니 좋아요 버튼 */
.gallery_list ul li .HoverIconBox > a.HoverIconBtn.like {background-color:#87553D;}

/* 리스트 카트 레이어 스타일 */
.ListCartLayer h1 {background-color:#4F2C1D;}
.ListCartLayer .CartLayerbottom .totalprice dl dd {color:#87553D;}

/* 리스트 직접구매 레이어 스타일 */
.ListDirectLayer h1 {background-color:#4F2C1D;}
.ListDirectLayer .CartLayerbottom .totalprice dl dd {color:#87553D;}

/* 팝업 */
.pop_cont .color {color:#4F2C1D;}

/* 비밀번호변경 신규 */
.pw_wrap .title .iconfont {background-color:#4F2C1D;}
.pw_wrap .title span.subpw_change {color:#87553D;}

/* 회원 */
.member_wrap .title .iconfont {background-color:#4F2C1D;}
.member_wrap .title span.subpw_change {color:#87553D;}
.member_wrap p.change_noti span.noticolor {color:#87553D;}
.member_wrap .cklabel.on .iconfont {color:#4F2C1D;}
.terms_p_wrap input[type="checkbox"]:checked + .ftic-success:before {color:#87553D;}
.join_all_ck_box input[type="checkbox"]:checked + .ftic-success:before {color:#87553D;}

/* 마이페이지 */
.mypage_noti li a {color:#4F2C1D;}

/* Q & A*/
.qna_list li .q .ico_q {background-color:#87553D;}
.qna_list li .a .ico_a {color:#87553D;}

/* 서브 검색*/
.ordernum_txt em {color:#4F2C1D;}
.search_wrap .cstab ul {border-bottom:2px solid #4F2C1D;}
.search_wrap .cstab ul li a:hover, .cstab ul li a.on {background-color:#87553D;border-top:1px solid #87553D;border-right:1px solid #87553D;}
.listTitleDOM li.on a {color: #4F2C1D;}


/* 마이페이지 */
table.al_information th {background-color:#E5E4E4;}
table.al_product th {background-color:#E5E4E4;}
table.left_right_table th {background-color:#E5E4E4;}
table.al_Payment_Information th {background-color:#E5E4E4;}
table.al_Payment_Information .al_color_text{color:#4F2C1D;}
.mypage_wrap a.btn1 {background-color:#4F2C1D;}
.mypage_wrap a.btn3 {background-color:#87553D;}
.mypage_wrap a.btn5 {background-color:#4F2C1D;}
.p_text {background-color:#E5E4E4;}
.lnb_info dl dd em.color_orange {color:#4F2C1D;}
.lnb_info dl dd em.color_blue {color:color:#454545;font-size:14px;font-weight:bold;;}
.mytop_txt_wrap .mytop_txt_list p a {color:#4F2C1D;}
.oea_txt_box .oea_right strong {color:#4F2C1D;}
.btn_board_yellow {background-color:#87553D;}
.btn_board_orange {background-color:#4F2C1D;}
.color_yellow {color:#87553D;}
.board_write2 th {background-color:#E5E4E4;}

/*나의 성심당쇼핑몰 서브 메인*/
.top_info_inner li {border-left:1px solid #4F2C1D;}
.main_cont_top li .txt {color:#4F2C1D;}

/*나를 추천한 회원 목록*/
.recom-day .recom-day-tit {background-color:#E5E4E4;}
.cont_title04 span.left_txt span.color {color:#4F2C1D;}

/*나의 상품평 부분*/
.evaluation_bigstar .evaluation_bigstar_1 strong {color:#87553D;}

/*포인트 캐쉬 부분*/
.p_c_top .p_c_top_top .right .ico_point {background-color:#87553D;}

/* 단계별 이유식 */
.b_write tr th {background-color:#E5E4E4;}

/*남자여자 구분 체크박스 꾸미기*/
.MFchk_box_wrap input[type=radio]:checked + label div{color:#4F2C1D;}
.MFchk_box_wrap input[type=checkbox]:checked + label div{color:#4F2C1D;}

/*상품 리스트 타임세일 부분 */
.ico_point {background-color:#4F2C1D;}

/* 제품정보 */
/*.productInfo .img_box .simg .item .ck_border {border:3px solid #4F2C1D;}*/
.img_box .swiper-button-next i {font-size:60px; color:#4F2C1D;}
.img_box .swiper-button-prev i {font-size:60px; color:#4F2C1D;}
.timesaleTitle {background-color:#4F2C1D;}
.timesaleTitle .timesale {background-color-image:url('https://www.sungsimdangmall.co.kr/data/sungsimdang/ico_dataTime.png');}
.productInfo .infoWrap .infoBox .score em {color:#87553D;}
.btn_area a.btnbuy {background-color:#4F2C1D;}
.btn_area a .iconfont.on {color:#4F2C1D;}
.star_score .ftic-staroff {color:#87553D;}
.star_score .ftic-staron {color:#87553D;}
.star_score em {color:#87553D;}

/* 상세페이지 더보기버튼 */
.contentFolding {border:1px solid #4F2C1D; background-color:#87553D;}

/* 상세정보 best10 */
.cateBestList li .prc {color:color:#454545;font-size:14px;font-weight:bold;;}

/* 장바구니,주문 */
.cart_total li.sum {background-color:#E5E4E4;}
.cart_total li.sum .top dl dd em {color:#4F2C1D;}

/* 팝업쿠폰 */
.coupon_info .bottom .price {color:color:#454545;font-size:14px;font-weight:bold;;}
.coupon_info .bottom .couponSelect:focus {border:1px solid #4F2C1D;}
.coupon_total li.sum {background-color:#E5E4E4;}
.coupon_total li.sum .price em {color:#4F2C1D;}

/* 이용약관,개인정보취급방침 */
.guide_title {background-color:#87553D;}
.sitebg1 {background-color:#4F2C1D !important;}
.sitebg2 {background-color:#87553D !important;}
.sitebg3 {background-color:#E5E4E4 !important;}
.siteClr1 {background-color:#4F2C1D !important;}
.siteClr2 {background-color:#87553D !important;}
.siteClr3 {background-color:#E5E4E4 !important;}
.sitecolor1 {color:#4F2C1D !important;}
.sitecolor2 {color:#87553D !important;}
.sitecolor3 {color:#E5E4E4 !important;}

/* jquery ui select */
.ui-state-hover,
.ui-widget-content .ui-state-hover,
.ui-widget-header .ui-state-hover,
.ui-state-focus,
.ui-widget-content .ui-state-focus,
.ui-widget-header .ui-state-focus,
.ui-button:hover,
.ui-button:focus {border:1px solid #4F2C1D;}
.ui-widget.ui-widget-content {border:1px solid #4F2C1D;}
.ui-state-active,
.ui-widget-content .ui-state-active,
.ui-widget-header .ui-state-active,
a.ui-button:active,
.ui-button.ui-state-active:hover {background-color:#4F2C1D; border:1px solid #4F2C1D;}

/*게시판 테이블 스타일 */
.gs_paging a.on,
.gs_paging a.active,
.gs_paging a.on,
.gs_paging a.active,
.gs_paging a:hover {background-color:#87553D;}
.sitebg2_ajax {background-color:#87553D;}

/* smartSearch 2016-11-15 */
.ssSection .ssCont .sBox a.on {background-color:#4F2C1D; border:1px solid #4F2C1D;}
.ssSection .ssCont .sBox a.ac {border:1px solid #4F2C1D; color:#4F2C1D;}

/* 출석체크 */
.check th {background-color:#87553D;}
.check_date td.today {border:1px solid #4F2C1D;}
.check .noticheck_box ul li {background-image:url('/data/sungsimdang/com.png');}

/*회원가입 선택*/
.member_wrap .JoinDistinction label.radiolabel.on .iconfont{color:#4F2C1D;}
.choiceMemb .regist_Step_01_tab a.on{color:#4F2C1D;border-bottom:2px solid #4F2C1D;}

/*회원정보수정*/
.editMember .wrap label input[type=radio]:checked + div,
.editMember .wrap label input[type=checkbox]:checked + div {color:#4F2C1D;}
.editMember .wrap.chkbox label input[type=radio]:checked + div,
.editMember .wrap.chkbox label input[type=checkbox]:checked + div {color:#4F2C1D;}

/*세트상품 시작*/
.set_Visual .pagination .swiper-pagination-switch.swiper-active-switch {background-color:#4F2C1D;}
.set_Visual .videoBtn {background-color:#4F2C1D;}
.Set_itemsSelect .left ul li .img.on {border:4px solid #4F2C1D;}
.Set_itemsSelect .right .priceBox dl.totalprice {background-color:#87553D;}
.Set_itemsSelect .right .priceBoxBtn a {background-color:#4F2C1D;}
.Setproslide .pagination .swiper-pagination-switch.swiper-active-switch {background-color:#4F2C1D;}

/*TV쇼핑 시작*/
.TVshopping .TVTit {background-color:#87553D;}
.TVshopping .commentList li .DayBox .delbtn {color:#4F2C1D;}
.TVshopping .TVright .TVrightlist li .con .BtnBox > a.TVlistbtnsiteBg {background-color:#4F2C1D;}

/*이달의쿠폰*/
.couponnumTit {background-color:#87553D;}

/* 라이브팅 세트*/
.face_info .product .setpd li .select {background-color:#E5E4E4;}
.face_info .product .setpd li .select.on {background-color:#4F2C1D;}
.priceBox dl.totalprice {background-color:#87553D;}
.priceBoxBtn a {background-color:#4F2C1D;}

/* 라이브팅 단품 */
.priceBox dl.totalprice {background-color:#87553D;}
.priceBoxBtn a {background-color:#4F2C1D;}

/*관리자확인중 오버 스타일*/
.Question_Btn {background-color:#4F2C1D;}
.Question_Btn .Question_Over {border:1px solid #4F2C1D;}

/* 회원가입 스텝 */
.joinstep ul li.on {color:#4F2C1D;}

/* 브랜드 페이지 */
.brandLinkWrap .brandLink li a.ALL {background-color:#4F2C1D;}
.brandLinkWrap .brandLink li a:hover {background-color:#4F2C1D;}
.brandLinkWrap .brandLink li a.on {background-color:#4F2C1D;}
.BrandPageList .TotalHowmany span.text {color:#4F2C1D;}

/* sub commen 1.30+ */
.sub_h2tit_line {background-color:#4F2C1D;}
.cmt_write .nt {background-image:url('/https://www.sungsimdangmall.co.kr/data/sungsimdang/ico_cmt_nt.png');}
.cmd_cont li .date .color {color:#4F2C1D;}
.cmd_cont li .ctrl .ctrl_textarea .ans {color:#4F2C1D;}

/*사용후기*/
.starbox .ftic-staron {color:#4F2C1D;}
#pop_div {border:5px solid #87553D;}
#pop_ul .noti {color:#4F2C1D;}

/*등록스타일*/
.registryStyle .cklabel.on .iconfont {color:#4F2C1D;}

/*리뷰페이지 /goods/review.asp */
.pdReviewList li .reviewImg {height:calc(1200px / 4 - 9.5px);}

/* 예치금 /eMoney.asp */
.checked_wrap .tit .color{color:#4F2C1D;}
.checked_wrap .selectService li {border:1px solid #4F2C1D;}
.checked_wrap .selectService li .pointWrap {background-color:#E5E4E4;}
.checked_wrap .selectService li .pointWrap span{color:#4F2C1D;}
.checked_wrap .selectService label:after {background-color:#87553D;}
.checked_wrap .selectService label.on:after {background-color:#4F2C1D;}
.checked_wrap .payType label {background-color:#87553D;}
.checked_wrap .payType label.on {background-color:#4F2C1D;}
.checked_wrap .payType label+.inputCon dt {background-color:#87553D;}
.checked_wrap .payType label+.inputCon dd {background-color:#E5E4E4;}

/* 매장안내 */
.search_market_table .info_btn_area div i {background-color:#87553D;}

/* best and new 100 */
.best_wrap .category_area>ul>li.on {background-color:#4F2C1D; border-color:#4F2C1D;}
.best_wrap .best5_area>ul .cont .img_ico {background-color:#4F2C1D;}
.best_wrap .best4_area>ul .cont .img_ico {background-color:#4F2C1D;}

/*상품오버시 나오는 버튼박스*/
.pdBtnBoxWrap li .pdBtnBox .btn:hover span{background-color:#4F2C1D;}

/*pagination*/
.paging a.on,
.paging a.active,
.paging a:hover{background-color:#4F2C1D;}

.slStyle1 .swiper-pagination-bullet-active{background:#87553D !important}
.pdStyle1 .txtWrap .dis{color:#4F2C1D}

.btn_board_yellow {background-color:#4F2C1D!important;}
.btn_board_blue {background-color:#87553D!important;}
.btn_board_gray {background-color:#E5E4E4!important;}
.btn_board_orange {background-color:#4F2C1D!important;}

/*상품 위 플레이 버튼 삭제*/
.isPlay {display:none;}

/* 체험단 */
.reg_experience_member .experience_member_table .cklabel.on .iconfont {color:#4F2C1D!important;}

/* 상품상세 정보고시 테이블 */
.content_category {width:1200px; margin:0 auto;}

/* 청춘플러스 네비게이션 */
.sub_cont2 .Location ul li a.on {background-color:#4F2C1D;}
.sub_cont2 .Location ul li:first-child a {border-left:1px solid #4F2C1D;}
.sub_cont2 .Location ul li {border-right:1px solid #4F2C1D;}
.btnSt_02 {background-color:#4F2C1D;}
.sub_cont2 .info_area .btn_wrap .Like.on {background-color:#4F2C1D;}



</style>


<link rel="stylesheet" type="text/css" href="/css/commonTotal.css" />
<link rel="stylesheet" type="text/css" href="/data/sungsimdang/css/common.css" />



<!-- <link rel="stylesheet" type="text/css" href="/ind-script/optimizer.php?filename=35f83e36b11e6de5f5ab794df85d8f8c60c032a3_1481095567&amp;type=css&"> -->





<script type="text/javascript">
//<![CDATA[

//' ######################################################################
//Server Const Start
//' ######################################################################
//업로드 관련
var UPLOAD_MAX_SIZE_GOODS = 10240000;

//상품등록 항목 최대개수
var MAX_AMT_IMGETC = 10;		//다른이미지
var MAX_AMT_RELATE = 99;		//관련추천상품 (최대 99개까지, 0으로 설정할 경우 무제한)
var MAX_AMT_OPTION = 10;

var PRICE_ROUND_UNIT = 0;		//가격 계산시 절사단위 = -1 : 10원 단위, -2 : 100원 단위, -3 : 1000원 단위

var DELIMITER = '|:|';		//기본 구분자
var DELIMITER1 = '|*|';		//추가 구분자1
var DELIMITER_OPTION = '§';		//옵션정보 구분자 (',', '/' 제외)
var DELIMITER_VOCAB = '§';		//어휘 구분자

//적용단위
var CM_APPUNIT_WON = 'WON';
var CM_APPUNIT_PCT = 'PCT';

var CM_LCS_DEVICE_ID = 'dv_id';		//로컬 스토리지 디바이스 아이디

var CM_LCS_SEARCH_WORD = "sword";		//로컬 스토리지 검색어
//' ######################################################################
//Server Const End
//' ######################################################################



//' ######################################################################
//Config Variable Start
//' ######################################################################
var cfgIsSSL='T';			//SSL 사용 여부
var cfgisSweetTracker='F';			//SweetTracker 사용 여부
//' ######################################################################
//Config Variable End
//' ######################################################################



//' ######################################################################
//Global Variable Start
//' ######################################################################
//Global Variable
var gloUserAgent = navigator.userAgent;
var gloUserAgentLCase = gloUserAgent.toLowerCase();
var gloChkApp = '';		//어플 접속 확인
var gloDeviceID = '';		//디바이스아이디
var gloToday = new Date();

var gloDoubleSubmitFlag	= false;		//이중 전송 방지
var gloRefreshFlag = true;		//새로고침 무한 루프 방지

//모바일 페이지를 PC 에서도 확인한다고하여 기본값을 보이게 처리
var gloView_M_Category = true;		//false;		//모바일 카테고리 보이기 설정
var gloView_PC_Category = true;		//false;		//PC 카테고리 보이기 설정

var gloChk_Mobile = false;		//모바일 접속 여부
if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|ipad|iris|kindle|Android|Silk|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(navigator.userAgent)
    || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(navigator.userAgent.substr(0,4))) {
    gloChk_Mobile = true;
}

//if ( gloChk_Mobile ) {
//	gloView_M_Category = true;
//} else {
//	gloView_PC_Category = true;
//}
//' ######################################################################
//Global Variable End
//' ######################################################################

//]]>
</script>





<script type="text/javascript" src="/jscript/jquery-1.12.4.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>  -->

<script type="text/javascript" src="/jscript/imagesloaded.pkgd.min.js"></script>
<script type="text/javascript" src="/jscript/masonry.pkgd.min.js"></script>
<!-- <script type="text/javascript" src="/jscript/jquery.imgloader.js"></script> -->
<script type="text/javascript" src="/jscript/jquery-ui.js"></script>
<script type="text/javascript" src="/jscript/jquery-ui-select.js"></script>
<script type="text/javascript" src="/jscript/common.js?v=220107224928"></script>
<script type="text/javascript" src="/jscript/embed.js"></script>
<script type="text/javascript" src="/jscript/ajax.js"></script>

<!-- <script type="text/javascript" src="/jscript/json.js"></script> -->
<script type="text/javascript" src="/jscript/rollover.js"></script>
<script type="text/javascript" src="/jscript/user_func.js"></script>
<script type="text/javascript" src="/jscript/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="/jscript/slick.min.js"></script>
<script type="text/javascript" src="/jscript/idangerous.swiper.min.js"></script>
<script type="text/javascript" src="/jscript/layer.js"></script>


<!--190218|wjy 관리자 팝업관리 기능 추가 - 구분에 '특정페이지' 추가해서 url 입력하게하고 해당 경로에서만 팝업이 뜨게 개발, 인크루드로 다시 작업-->
<!-- <script type="text/javascript" src="/main/popup_url.js.asp?now_url=/member/join.asp"></script> -->
<script type="text/javascript" src="/jscript/cookie.js"></script>


<script type="text/javascript">
	
</script>

<script type="text/javascript">
<!--
// 상태바
window.status = "성심당쇼핑몰과 함께 즐거운 시간 되세요~ ^^";

addEvent(window, "load", function() { var objRollover = new rollover(); objRollover.init(); });

//'170818 add bhc
// 사이즈 수정 #############################################
//tn = target name
//wh = width, height
//sv = size value
function fnEdit_Size(tn, wh, sv) {
	var to = $('[name='+ tn +']')	//target object
	;

//	n = number, v = value
	if ( to.length > 0 ){
		$.each(to, function(n, v) {
			to.eq(n).css(wh,sv);
		});
	}
}





$(document).ready(function(){

//'170818 add bhc start ----------------------------------------------------------------------------------
fnEdit_Size('ssdate', 'width', 90);
fnEdit_Size('sedate', 'width', 90);
//'170818 add bhc end -----------------------------------------------------------------------------------

});

//-->
</script>

<!--[if lte ie 9]>

<style type="text/css">
	.leftFloating {display:none;}
</style>

<![endif]-->


<!--[if it IE 9]
<script src="@Url.Content('/jscript/html5shiv.js')"></script>
[endif]-->

<!--  // 광고/스크립트 영역 불러오기  -->

<!--  // 광고/스크립트 영역 불러오기  -->
<script>
var cfgkakaotalkCode="";
var siteURL="https://www.sungsimdangmall.co.kr";
var smsBodyDelim="";
var pathSite="/data/sungsimdang";
var cfgCategoryType="0";
var pathLeftmenu = "/data/sungsimdang/leftmenu";
</script>
<!-- <script type="text/javascript" src="/jscript/join/selectBox.js" defer></script> -->


</head>

<body bgcolor="#FFFFFF">



<script type="text/javascript" src="/OAuth/oauth2.js"></script>

<!-- <iframe name="hiddenZone" src="/dummy.asp" width="0" height="0" style="display:none"></iframe> -->

<div align="center" class="wrap_body">


<script src="/placeholders.min.js"></script>




<style>
.displayCount{display:none;}
.smsDisplayCount{display:none;}

/* 스타일추가 */
.join_allChkBox{padding-left:20px;}
.join_allChkBox p{margin-bottom:10px;}
.joinPop_textWrap{padding:0; background-color:#f7f7f7; margin-top:10px;}
.joinPop_textWrap .joinPop_infoCont{width:100%; box-sizing:border-box;}
.joinPop_textWrap .joinPop_infoCont li{margin-bottom:0; padding:15px 20px; border-top:2px solid #fff;}
.join_Essential{color:#f00; margin-left:6px;}
.joinPop_textWrap .joinPop_infoCont li .viewDetail{font-size:14px; line-height:normal; float:right; background-color:#fff; color:#333; border:1px solid #888; padding:0 6px; cursor:pointer;}

.joinPop_textWrap .joinPop_infoCont li > div.itaBox{width:auto; height:auto; padding:0; margin-bottom:0; display:none;}
.joinPop_textWrap .joinPop_infoCont li > div.itaBox.on{display:block;}
.joinPop_textWrap .joinPop_infoCont li > div.itaBox .itaBoxWrap{display:block; position:fixed; top:50%; left:50%; transform:translate(-50%, -50%); z-index:1000; line-height:normal; padding:40px; background-color:#fff; border:1px solid #000;}
.joinPop_textWrap .joinPop_infoCont li > div.itaBox .itaBoxWrap .itaBoxHead{padding-bottom: 24px; border-bottom: 1px solid #000; font-size:25px;}
.joinPop_textWrap .joinPop_infoCont li > div.itaBox .itaBoxWrap .itaBoxHead > span{cursor:pointer; float:right; background-image:url('/data/sungsimdang/btn_option_delete02.gif'); width:23px; height:23px; background-size:cover;}
.joinPop_textWrap .joinPop_infoCont li > div.itaBox .itaBoxWrap .guide_wrap{height:500px; background-color:#fff !important;}
.joinPop_textWrap .joinPop_infoCont li > div.itaBox .itaBoxWrap p.check_notice{font-size:13px; margin-top:15px;}
.joinPop_textWrap .joinPop_infoCont li > div.itaBox .itaDim{position:fixed; top:0; bottom:0; left:0; right:0; z-index:999; background-color:rgba(0,0,0,0.6); display:block;}
.joinPop_textWrap .joinPop_infoCont li > div.itaBox2 .itaBoxWrap .itaBoxHead {font-size:24px;}
.joinPop_textWrap .joinPop_infoCont li > div.itaBox2 .itaBoxWrap .itaBoxBody {height: 500px;overflow:auto;}
</style>

<link rel="stylesheet" type="text/css" href="/css/common.css" /><!-- 레이아웃&공통 -->
<script type="text/javascript" src="/jscript/design.js"></script>
<script type="text/javascript" src="/jscript/SHA512.js"></script>
<script type="text/javascript" src="/jscript/2.0/member.js"></script>



<div style='width:100%;text-align:center;'>
<div>
<a name='TSA_56'></a>
<!--// 탬플릿 // 탑탑베너 -->
<style type="text/css">
    .top_banner_wrap {width: 100%;}
    .top_banner_wrap img{width: 100%;}
</style>
<!--// 탬플릿 // 탑탑베너 -->
<div class="top_banner_wrap">
    <a href="/default.asp"><img src="/data/sungsimdang/banner/topbanner-main-fainal.jpg" alt=""></a>
</div></div>
<div>
<a name='TSA_57'></a>
<style type="text/css">

	.utilWrap {width: 100%;}
	.utilWrap .utilBox {width: 100%;height: 40px; line-height: 40px; max-width: 1280px; margin:0 auto;}
	.utilWrap .utilBox .util {float: right;}
	.utilWrap .utilBox .util ul {display:flex;}
	.utilWrap .utilBox .util ul li {}
	.utilWrap .utilBox .util ul li a{padding:0 10px; font-weight: 500; font-size: 13px; color: #a7a9ac; position: relative; transition: 0.2s ease;}
	.utilWrap .utilBox .util ul li a:hover{color: #87553d;}
	.utilWrap .utilBox .util ul li a:after {content: ""; display: block; position: absolute; width: 1px; height: 10px; left: 0; top: 5px; background-color: #a7a9ac;}
	.utilWrap .utilBox .util ul li:nth-child(1) a:after {display:none;}
</style>

<div id="layer_pop_cls">

</div>
<div class="utilWrap">
	<div class="utilBox">
	<!-- 	<a href="#" id="favorite" class="addSite"><span class="iconfont ftic-Favorites"></span> 즐겨찾기</a> -->
		<div class="util tmb_logout ">
			<ul>
				<li><a href="javascript:;" class="join_pop_cls">회원가입</a></li>
				<li><a href="/member/login.asp">로그인</a></li>
				<li><a href="/my/order_total.asp?mode=deliver">주문배송조회</a></li>
				<li><a href="/cscenter/">고객센터</a></li>
			</ul>		
			<!-- 
			<span href="/cscenter/main.asp" class="inList"> -->
			</span>
		</div>

		<div class="util tmb_login tmb_login hide">
			<ul>
				<li><a href="/my" class="hi">반갑습니다. 님</a></li>
				<li><a href="/member/logout.asp">로그아웃</a></li>
				<li><a href="/my/order_total.asp?mode=deliver">주문배송조회</a></li>
				<li><a href="/cscenter/">고객센터</a></li>
			</ul>
		</div>
	</div>
</div>


<script type="text/javascript">
// $.ajax({
// 	type:"post",
// 	url:"/common/ajax/exec_getCartCnt.asp",
// 	success:function(data, state, xhr){
// 		$(".cartCnt").each(function(){$(this).html(data);});
// 	}
// })
$(document).ready(function() {
	$(".join_pop_cls").click(function(){
		$.ajax({
			type:"post",
			url:"/common/ajax/exec_NewMainTopMenu.asp",
			success:function(data){
				$("#layer_pop_cls").html(data);
			}
		});
	});
});
</script><script>$('.tmb_login.hide, .tmb_logout.hide').remove();</script></div>
<div>
<a name='TSA_58'></a>
<!-- 탬플릿 : 성심당 탑메뉴 -->
<style type="text/css">
    .topWrap{position:relative; z-index:11;border-bottom:1px solid rgba(0,0,0,0.1); border-top: 1px solid rgba(0,0,0,0.1); height: 45px;}
    .topBox{width: 100%; max-width:1280px; margin:0 auto;position:relative;text-align:center;}

    .topBox .topLogo {float:left;position: absolute;left: 0;top: 0;max-width:500px;width: 16%;white-space: nowrap;text-overflow:ellipsis;overflow:hidden;}
    .topBox .topLogo {text-align:left; font-size:34px; font-weight: bold;}
    .topBox .topLogo img {width:100%;max-width:200px;}

/*-------------검색 서치 / 장바구니*/
    .topBox .topslc{float:right; line-height: 42px;}
    .topBox .topslc ul li{float:left; margin:0 8px;}
    .topBox .topslc ul li.searchForm{position:relative;}
    .topBox .topslc ul li.searchForm .searchIcon{position:absolute; top:0px; right:10px;}
    .topBox .topslc ul li.searchForm .searchIcon img{width: 20px;}
    .topBox .topslc ul li.searchForm .searchInput{width:30px; height:30px; border:none; border-bottom:1px solid #fff; outline:none; transition:0.3s ease all; color:#fff;}
    .topBox .topslc ul li.searchForm .searchInput.on{width:200px;background-color: #f1f1f2;border-radius: 20px; color:#000; padding: 0px 15px;}
    .topBox .topslc ul li a.cartIcon{position:relative;}
    .topBox .topslc ul li a.cartIcon .cartCnt{position:absolute; width:20px; height:20px; display:block; line-height:18px; color:#fff; background-color:#8c5b44; border-radius:50%; top:-8px; right:-8px; padding-top:2px; box-sizing:border-box;}
    .topBox .topslc ul li a.cartIcon img{width: 27px;}
/*-------------검색 서치 / 장바구니*/

/*-------------햄버거 및 서브메뉴박스*/
    .gnbWrap.pc {display: none !important;}
    .topWrap .topLnbWrap{float: left;}
    .topWrap .topLnbWrap .topLnbBox {width:100%; max-width: 1100px; margin:0 auto; position: relative;}
    .topWrap .topLnbWrap .topLnbBox .hambergerBox{width: 40px; height:45px;position: relative; float:left; cursor: pointer;}
    .topWrap .topLnbWrap .topLnbBox .hambergerBox span {width: 20px; height: 3px; background-color: #8c5b44;  position: absolute; transform: translate(-50%, -50%); transition:0.2s ease;}
    .topWrap .topLnbWrap .topLnbBox .hambergerBox span:nth-child(1){top: 38%; left: 50%;}
    .topWrap .topLnbWrap .topLnbBox .hambergerBox span:nth-child(2){top: 51%; left: 50%; opacity: 1;}
    .topWrap .topLnbWrap .topLnbBox .hambergerBox span:nth-child(3){top: 63%; left: 50%;}
    .topWrap.on .topLnbWrap .topLnbBox .hambergerBox span:nth-child(1) {transform: rotate(-35deg) translate(-60%); top: 33%} 
    .topWrap.on .topLnbWrap .topLnbBox .hambergerBox span:nth-child(2) {opacity:0;}
    .topWrap.on .topLnbWrap .topLnbBox .hambergerBox span:nth-child(3) {transform: rotate(35deg) translate(-60%);}

    .topWrap .topLnbWrap .topLnbBox > ul{float:left; line-height:45px; height: 100%; display: flex; justify-content: flex-start;}
    .topWrap .topLnbWrap .topLnbBox > ul > li{float: left; width: 130px;height: 100%;}
    .topWrap .topLnbWrap .topLnbBox > ul > li a{display: block; font-size: 15px; color: #808285; position: relative; font-weight: 500; transition: 0.2s ease;}
    .topWrap .topLnbWrap .topLnbBox > ul > li a:hover{color:#87553d; }
    .topWrap .topLnbWrap .topLnbBox > ul > li a:after{content: ""; position: absolute; display: none; background-color: #585858; width: 1px; height: 12px; left: 0px; top: 17px; opacity: 0.3;}
    .topWrap .topLnbWrap .topLnbBox > ul > li:first-child a:after{display: none;}
    .topWrap .topLnbWrap .topLnbBox > ul > li:first-child a{text-align:left; color:#87553d;  }


    .topWrap .topLnbWrap .topLnbBox > ul > li.simDeliver{position: relative;}
    .topWrap .topLnbWrap .topLnbBox > ul > li.simDeliver .simDeliverMenu{position:absolute;background-color: #fcfcfc; width: 100%; border: 1px solid rgba(0,0,0,0.1);display: none; z-index: 11;}

    .topWrap .topLnbWrap .topLnbBox > ul > li.simDeliver .simDeliverMenu ul li{width: 100%; border-bottom: 1px solid rgba(0,0,0,0.1); text-align: center;}
    .topWrap .topLnbWrap .topLnbBox > ul > li.simDeliver .simDeliverMenu ul li a{font-size: 15px; }

    .topWrap .submenuWrap{width: 100%; position: absolute; top: 100%; left: 0; z-index: -1; visibility: hidden;  background-color: #fcfcfc; transform-origin: top; transform: scaleY(0);  transition: 0.25s ease; border-top:1px solid rgba(0,0,0,0.1);  border-bottom:1px solid rgba(0,0,0,0.1);}
    .topWrap.on .submenuWrap{z-index: 11; visibility:visible; transform: scaleY(1); }
    .topWrap .submenuWrap .inDepthWrap {display:flex; max-width: 1280px; margin: 0 auto; padding: 30px 0px;}
    .topWrap .submenuWrap .depth1_box {flex-basis: 30px; flex-grow: 1; text-align: left; border-right:1px solid rgba(0,0,0,0.03);}
    .topWrap .submenuWrap .depth1_box:first-child {border-left:1px solid rgba(0,0,0,0.03);}
    .topWrap .submenuWrap .depth1_box .depth1 > a{flex-basis: 30px; color:#808285;  flex-grow: 1; padding: 20px;display: block; font-size: 15px; font-weight: 500; transition: 0.2s ease;}
    .topWrap .submenuWrap .depth1_box .depth1 > a:hover{color:#8c5b44; }
    .topWrap .submenuWrap .depth1_box > ul {height: 300px; border-top: none; }
    
    .topWrap .submenuWrap .depth1_box > ul > li > a {color:#999999;padding:7px 20px; font-size: 13px; display: block; transition: 0.2s ease;}
    .topWrap .submenuWrap .depth1_box > ul > li > a:hover {color:#87553d; }
/*-------------햄버거 및 서브메뉴박스*/

</style>
<!--// 탬플릿 : 성심당 탑메뉴  -->

<div class="topWrap">
    <div class="topBox clfix">
<!--         <div class="topLogo"><img src='https://www.sungsimdangmall.co.kr/data/sungsimdang/banner/search_1.png' border=0></div>
        <div class="posTopLnb">
            <div class="topLnb clfix">
                <a href='/'><img src='https://www.sungsimdangmall.co.kr/data/sungsimdang/logo.png' border='0'></a>
            </div>
        </div> -->
         <div class="topLnbWrap">
            <div class="topLnbBox clfix">

                <ul class="clfix">
                    <li class="cateMoreBtn">
                        <a href="#">
                        <div class="hambergerBox">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                        전체 카테고리</a> 
                    </li>
                    <li><a href="/default.asp">HOME</a> </li>
                    <li><a href="/product/best100.asp?menuType=best">베스트</a> </li>
                    <li><a href="/product/best100.asp?menuType=new">신상품</a> </li>
                    <li class="simDeliver"><a href="#">배송선택</a>
                        <div class="simDeliverMenu">
                            <ul>
                                <li><a href="/product/deliveryList.asp?deliveryType=delivery">택배</a></li>
                                <li><a href="/product/deliveryList.asp?deliveryType=localDelivery">대전배송</a></li>
                                <li><a href="/product/deliveryList.asp?deliveryType=ktx">KTX배송</a></li>
                                <li><a href="/product/deliveryList.asp?deliveryType=visit">방문수령</a></li>
                            </ul>
                        </div>
                    </li>
                   <li><a href="/product/giftGoodsList.asp">기프티콘주문</a> </li>
                </ul>
                
            </div>
        </div>
        <div class="topslc clfix">
            <ul class="clfix">
                <li class="searchForm">
                    <div class="search clfix">
                        <form id='tsFrm' name="tsFrm" method="get" action="/product/search.asp">
                            <div class="searchComplete">
                                <input type="text" id="dummyTxt" style="display: none;"/>
                                <input type="text" autocomplete="targetName" name="sword" id="topSearchWord" onkeyup="return searckResurt(event)" class="searchInput on"/>
                            </div>
                            <span class="searchIcon" onClick="topSearchChk(document.tsFrm);"><img src='https://www.sungsimdangmall.co.kr/data/sungsimdang/banner/search_1.png' border=0></span>
                        </form>
                    </div>
                </li>
                <li>
                    <a href="/my/wishlist.asp" class="likeIcon hide"><img src="/images/skin/topseach_iconset_like.png" alt="좋아요"></a>
                </li>
                <li>
                    <a href="/product/cart.asp" class="cartIcon"><img src='https://www.sungsimdangmall.co.kr/data/sungsimdang/banner/cart_2.png' border=0><span class="cartCnt"></span></a>
                </li>
            </ul>
        </div>
    </div>
     <div class="submenuWrap" id="submenu1_in"> </div>
</div>
       


<script type="text/javascript">
    
 //내용 없으면 li 삭제
delImg('.topLnbWrap .topLnbBox ul li a','li');
delImg('.topLnbWrap .submenuWrap .depth1_box a','.depth1_box');  

// function menuonoff(name){
//     $("#submenu"+name).stop(true,true).slideToggle("fast");
//     $(".allMenu span").toggleClass("on");
// }

 function searckResurt(e){
    if(e.keyCode == 13){
        var $dummyVal = $('#dummyTxt').val();
        $('#topSearchWord').val($dummyVal);
        $('#dummyTxt').hide();
        topSearchChk(document.tsFrm);
    }else if(e.keyCode == 8){
        var $dummyVal = $('#topSearchWord').val();
        $('#dummyTxt').val($dummyVal);
    }else if(e.keyCode == 38 || e.keyCode == 40){
        var $searchData = $('.searchComplete .ui-state-active').text();
        if(!$searchData){
            $searchData = $('#topSearchWord').val();
        }
        $('#dummyTxt').val($searchData);
        return false;
    }else{
        var $dummyVal = $('#topSearchWord').val();
        $('#dummyTxt').val($dummyVal);
        //console.log($dummyVal);
    }
}

function topSearchChk(f) {
    var f=$('#tsFrm');
    //자동검색어 추출
    var val = $("#topSearchWord").val();
    var url = $("#topSearchWord").attr("data-url");
    var chk = $("#topSearchWord").attr("data-chk");

    //자동검색어에 url 있으면 이동 처리
    if (chk == "T" && url != "")
    {
        location.href = url;
        return false;
    }

    if ($("#topSearchWord").val()=="") {
        alert("검색어를 입력해 주세요.");
        $("#topSearchWord").focus();
        return false;
    }

    f.submit();
}

//장바구니 수량
//     $.ajax({
//         type:"post",
//         url:"/common/ajax/exec_getCartCnt.asp",
//         success:function(data, state, xhr){
//             $(".cartCnt").each(function(){
//                 $(this).html(data);
//             });
//         }
//     })

     $('.topWrap .cateMoreBtn a').click(function(e){
            $('.topWrap').toggleClass('on')
            e.preventDefault();
        });

//     $("#submenu1_in").ready(
//         $.ajax({
//             async: true ,
//             url:"/common/ajax/exec_fullCategory.asp",
//             success:function(xhr){
                
//                 $("#submenu1_in").html(xhr);
//             }
//         })
//     );

$(".topWrap .topLnbBox .simDeliver > a").click(function(e){
    $(".topWrap .topLnbBox .simDeliver .simDeliverMenu").slideToggle(200);
    e.preventDefault();
});

</script>
</div>
</div>

<table id="basisBody" width="1200" border="0" cellspacing="0" cellpadding="0"><tr></tr></table>
<script type="text/javascript">
defineAjax();
</script>



<!-- BODY : 시작 -->

	<div class="sub_contents sbc_width best_wrap">
		<div class="left_none">
<SCRIPT LANGUAGE="JavaScript">
<!--
$(document).ready(function(){

	 $("input:text[numberOnly]").on("keyup", function() {
		$(this).val( $(this).val().replace(/[^0-9]/gi,"") );
	 });

	/* 기본정보 */
	//$(":input[name=chkID]").blur(idCheck);
	
	/* 현준: 한글자마다 아이디 중복체크 */
	$('input[name="chkID2"]').keyup(idCheck2);
	
	/* 현준: 주석처리하면 셀렉트박스가 안됨.  */
	$(":input[name=rec_member]").keyup(recCheck);
	
	$("#emailSel li").click(function(){
		$("#emailDomain").val($(this).data("value"));
	});
	$("#o_ChEmailSel li").click(function(){
		$("#o_ChEmailDomain").val($(this).data("value"));
	});
	$("#emailSel2 li").click(function(){
		$("#emailDomain2").val($(this).data("value"));
	});
	$("#yearSel li").click(function(){
		$("#birthYear").val($(this).data("value"));
	});
	$("#monthSel li").click(function(){
		$("#birthMonth").val($(this).data("value"));
	});
	$("#daySel li").click(function(){
		$("#birthDay").val($(this).data("value"));
	});
//	$("#telSel li").click(function(){
//		$("#tel1").val($(this).data("value"));
//	});
//	$("#mobileSel li").click(function(){
//		$("#mobile1").val($(this).data("value"));
//	});

	/* 기본체크 */
	$(".ckbox").each(function(index){
		if($(this).prop("checked"))
		{
			if($(this).hasClass("termsAll")) /* 전체선택체크 */
			{
				$(".cklabel").not(".ck_mail").removeClass("on");
				$(".ckbox").not(".ck_mail").prop("checked",false);
				$(".cklabel").not(".ck_mail").addClass("on");
				$(".ckbox").not(".ck_mail").prop("checked",true);
			}
			else
			{
				$(".cklabel").eq(index).addClass("on");
			}
		}
		else
		{
			$(".cklabel").eq(index).removeClass("on");
		}


		$(this).change(function(){
			if($(this).prop("checked"))
			{
				if($(this).hasClass("termsAll")) /* 전체선택체크 */
				{
					$(".cklabel").not(".ck_mail").addClass("on");
					$(".ckbox").not(".ck_mail").prop("checked",true);
				}
				else
				{
					$(".cklabel").eq(index).addClass("on");
				}
			}
			else
			{
				if($(this).hasClass("termsAll")) /* 전체선택체크 */
				{
					$(".cklabel").not(".ck_mail").removeClass("on");
					$(".ckbox").not(".ck_mail").prop("checked",false);
				}
				else
				{
					$(".cklabel").eq(index).removeClass("on");
				}
			}
		});

	});


	setQuick();
	resetSelectEvent(); // 신규셀렉트 생성시 한번리셋
});

function reset_domain(){
	$("#emailDomain").val('');
}


//-->
</SCRIPT>
<script>
//아이디 계정 부분을 선택했을때도 아이디중복체크
$(document).ready(function(){
	$("#emailSel").on("click", "li", function(){
			var f = document.Frm;
			if ( $(this).data("value").trim() == '' ){ $("#idresult").html("");return; }

		   var userWriteId = $('input:text[name="chkID2"]').val();
		   if ( userWriteId.trim() != "" ){
			   $('input:text[name="chkID2"]').trigger("keyup");
		   }
	})
});
//비밀번호와 확인용비밀번호 일치여부체크
function passwordCheck(obj){
	var f = document.Frm;
	if (checkEmpty(f.pass)) {
		$("#rePassResult").html("<span style='color:red;'>*비밀번호를 입력해 주세요.</span>");
		$(obj).val("");
		f.pass.focus();
		return ;
	}
	if (!checkPass(f.pass.value, 6, 15) || !checkEngNum(f.pass.value)){
		$("#rePassResult2").html("<span style='color:red;'>*영문 숫자(또는 영문 숫자 특수문자)를 조합해 6자 이상 15자 이하로 작성해주세요.</span>");
		$(obj).val("");
		f.pass.focus();
		return ;
	}else{
		$("#rePassResult2").html("6~15자 영문과 숫자(또는 영문 숫자 특수문자) 조합 <span id='rePassResult2'> </span>");
	}

	if (f.id.value == f.pass.value){
		$("#rePassResult").html("<span style='color:red;'>*비밀번호는 아이디와 동일하게 할 수 없습니다.</span>");
		f.pass.value = "";
		$(obj).val("");
		f.pass.focus();
		return ;
	}

	if (checkEmpty(f.rePass)) {
		$("#rePassResult").html("<span style='color:red;'>*비밀번호와 일치하지 않습니다.</span>");
		return ;
	}

	if (f.pass.value != f.rePass.value){
		$("#rePassResult").html("<span style='color:red;'>*비밀번호와 일치하지 않습니다.</span>");
		return ;
	}
	$("#rePassResult").html("<span style='color:blue;'>*일치하는 비밀번호입니다.</span>");

}


function submitChk(checkColunmList, checkColunmListName) {
	var f = document.Frm;
	var objItem;

	if (checkEmpty(f.chkID2)) {
		alert("아이디를 입력해 주세요.");
		f.chkID2.focus();
		return;
	}

	if (!checkID(f.chkID2.value, 4, 20)){
		alert("아이디는 영문 혹은 숫자 4자~20자리로 해주세요.");
		f.chkID2.focus();
		return;
	}

	if (f.id.value != f.chkID2.value){
		alert("아이디는 사용중입니다. 다시 입력해주세요.");
		f.chkID2.focus();
		return;
	}
	if (checkEmpty(f.pass)) {
		alert("비밀번호를 입력해 주세요.");
		f.pass.focus();
		return;
	}
	if (!checkPass(f.pass.value, 6, 15) || !checkEngNum(f.pass.value)){
		alert("비밀번호는 영문, 숫자(또는 영문, 숫자, 특수문자) 혼합 6자~15자로 해주세요.");
		f.pass.focus();
		return;
	}
	if (f.id.value == f.pass.value){
		alert("비밀번호는 아이디와 동일하게 할 수 없습니다.");
		f.pass.focus();
		return;
	}
	if (checkEmpty(f.rePass)) {
		alert("비밀번호 확인을 입력해 주세요.");
		f.rePass.focus();
		return;
	}
	if (f.pass.value != f.rePass.value){
		alert("비밀번호를 다시 확인해 주세요.");
		f.rePass.focus();
		return;
	}
	if (checkEmpty(f.name)) {
		alert("이름을 입력해 주세요.");
		f.name.focus();
		return;
	}
// 회원가입 설정 - 시작
// 입력해야 되는 페이지 체크.
	var colunmList = checkColunmList.split(',');
	var colunmListName = checkColunmListName.split(',');
	
	for (var i = 0; i < colunmList.length; i++){
		if (colunmList[i] == 'email'){	// 이메일 체크
			if (checkEmpty(f.emailID)) {
				alert("이메일 주소를 입력해 주세요.");
				f.chkEmailID.focus();
				return ;
			}
			var email = f.emailID.value + (checkEmpty(f.emailDomain)?"":"@" + f.emailDomain.value);
			
			// To do: 주석풀고 해결하기
// 			if (!checkEmail(email)) {
// 				alert("형식에 맞지 않는 이메일 주소입니다.\n\n이메일 주소를 정확하게 입력해 주세요.");
// 				f.chkEmailID.focus();
// 				return ;
// 			}
        }else if (colunmList[i] == 'mobile'){	// 휴대폰 체크
//			if (checkEmpty(f.mobile1)){
//				alert("휴대폰번호를 입력해 주세요.");
//				f.mobile2.focus();
//				return ;
//			}else if (checkEmpty(f.mobile2)){
//				alert("휴대폰번호를 입력해 주세요.");
//				f.mobile2.focus();
//				return ;
//			}else if (checkEmpty(f.mobile2)){
//				alert("휴대폰번호를 입력해 주세요.");
//				f.mobile3.focus();
//				return ;
//			}
			// kyh
			if (checkEmpty(f.mobile)){
				alert("휴대폰번호를 입력해 주세요.");
				f.mobile.focus();
				return ;
			}
		}else if (colunmList[i] == 'tel'){	// 전화번호 체크
//			if (checkEmpty(f.tel1)){
//				alert("전화번호를 입력해 주세요.");
//				f.tel2.focus();
//				return ;
//			}else if (checkEmpty(f.tel2)){
//				alert("전화번호를 입력해 주세요.");
//				f.tel2.focus();
//				return ;
//			}else if (checkEmpty(f.tel3)){
//				alert("전화번호를 입력해 주세요.");
//				f.tel3.focus();
//				return ;
//			}
			if (checkEmpty(f.tel)){
				alert("전화번호를 입력해 주세요.");
				f.tel.focus();
				return ;
			}
        }else if (colunmList[i] == 'smsCertification'){	// 휴대폰 인증
			if ($('#certification_mobile').val() != '1'){
				alert('휴대폰 인증을 받아주세요.');
				return;
			}
		}else if (colunmList[i] == 'emailCertification'){	// 이메일 인증
			if ($('#certification_email').val() != '1'){
				alert('이메일 인증을 받아주세요.');
				return;
			}
		}else if (colunmList[i] == 'birthDate'){	// 생일 인증
			if (checkEmpty(f.birthYear) || checkEmpty(f.birthMonth) || checkEmpty(f.birthDay)) {
// 				alert("생년월일을 입력해 주세요.");
				alert("이메일의 도메인을 선택해주세요.");
// 				f.birthYear.focus();
				f.chkEmailID.focus();
				return ;
			}
		}
		else if (colunmList[i] == 'sex'){	// 성별 인증
//'180228 edit bhc : isRealName (본인인증 사용여부) 조건 추가
			if ( $("#isRealName").val() == "F" )
			{
				if (getRadioVal(f.gender)==""){
					alert("성별을 입력해 주세요")
					f.gender[0].focus();
					return ;
				}
			}
		}
		else if (colunmList[i] == 'addr'){	// 주소
			if (checkEmpty(f.post) || checkEmpty(f.addr)) {
				alert("주소를 입력해 주세요.");
				f.post.focus();
				return ;
			}
			if (checkEmpty(f.addrDetail)) {
				alert("주소를 입력해 주세요.");
				f.addrDetail.focus();
				return ;
			}
		}else if (colunmList[i] == 'rec_member'){	// 추천인
			if(f.rec_chk.value == "Y" && f.rec_member.value == ''){
				f.rec_chk.value = "N";
			}
			if(f.rec_chk.value == "N" && f.rec_member.value != ''){
				alert("해당 추천인이 없습니다.");
				f.rec_member.focus();
				return;
			}
			if(f.rec_chk.value != "Y" ){
				alert("추천인을 입력해주세요.");
				f.rec_member.focus();
				return;
			}
		}else if (colunmList[i] == 'o_BizNo'){	// 사업자 번호
			if (checkEmpty(f.o_BizNo1)) {
				alert("사업자 번호를 입력해주세요.");
				f.o_BizNo1.focus();
				return;
			}else if (checkEmpty(f.o_BizNo2)) {
				alert("사업자 번호를 입력해주세요.");
				f.o_BizNo2.focus();
				return;
			}if (checkEmpty(f.o_BizNo3)) {
				alert("사업자 번호를 입력해주세요.");
				f.o_BizNo3.focus();
				return;
			}
		}else if (colunmList[i] == 'o_ChEmail'){	// 담당자 이메일 체크
			if (checkEmpty(f.o_ChEmailID)) {
				alert("이메일 주소를 입력해 주세요.");
				f.o_ChEmailID.focus();
				return ;
			}
			var email = f.o_ChEmailID.value + (checkEmpty(f.o_ChEmailDomain)?"":"@" + f.o_ChEmailDomain.value);
			if (!checkEmail(email)) {
				alert("형식에 맞지 않는 이메일 주소입니다.\n\n이메일 주소를 정확하게 입력해 주세요.");
				f.o_ChEmailID.focus();
				return ;
			}
        }else if (colunmList[i] == 'o_Addr'){	// 회사 주소 체크
			if (checkEmpty(f.officepost) || checkEmpty(f.officeaddr)) {
				alert("회사 주소를 입력해 주세요.");
				f.officepost.focus();
				return;
			}
			if (checkEmpty(f.officeaddrDetail)) {
				alert("회사 주소를 입력해 주세요.");
				f.officeaddrDetail.focus();
				return;
			}
        }else if (colunmList[i] != ''){	// 새로추가한 필드들 체크.
			var inputType = $("input[name='"+colunmList[i]+"']").attr('type');
			if (inputType == 'text'){
				if ($("input[name='"+colunmList[i]+"']").val() == ''){
					alert(colunmListName[i]+"(을)를 입력해주세요.");
					$("input[name='"+colunmList[i]+"']").focus();
					return;
				}
			}else if (inputType == 'radio'){
				var checkCnt = $("input[name='"+colunmList[i]+"']:checked").size();
				if (checkCnt <= 0){
					alert(colunmListName[i]+"(을)를 선택해주세요.");
					$("input[name='"+colunmList[i]+"']").focus();
					return;
				}
			}else if (inputType == 'checkbox'){
				var objCb = $("input[name='"+colunmList[i]+"']");
				var cbLen = $("input[name='"+colunmList[i]+"']").size();
				var cbChkCnt = 0;
				for (var x=0; x<cbLen; x++) {
					if (objCb[x].checked) {
						++cbChkCnt;
					}
				}
				if (cbChkCnt == 0){
					alert(colunmListName[i]+"(을)를 선택해주세요.");
					$("input[name='"+colunmList[i]+"']").focus();
					return;
				}
			}else if (inputType == 'file'){
				if ($("input[name='"+colunmList[i]+"']").val() == ''){
					alert(colunmListName[i]+"(을)를 넣어주세요.");
					$("input[name='"+colunmList[i]+"']").focus();
					return;
				}
			}else if (inputType == 'hidden'){	// select를 pc에서는 hidden 값으로 체크해야함
				if ($("input[name='"+colunmList[i]+"']").val() == ''){
					alert(colunmListName[i]+"(을)를 선택해주세요.");
					$("input[name='"+colunmList[i]+"']").focus();
					return;
				}
			}else {	// select
				if ($("select[name='"+colunmList[i]+"']").val() == ''){
					alert(colunmListName[i]+"(을)를 선택해주세요.");
					$("input[name='"+colunmList[i]+"']").focus();
					return;
				}
			}
        }
    }

	// 여기까지 일단 테스트해야함.

	var Li_result=$("input:checkbox[name='agreeLicensing']").is(":checked");
	var pri_result=$("input:checkbox[name='agree_po']").is(":checked");
	var agree_age=$("input:checkbox[name='agree_age']").is(":checked");
	if (Li_result==false) {
		alert("약관에 동의해 주세요.");
		return ;
	}
	if (pri_result==false) {
		alert("개인정보 수집 및 이용에 동의해 주세요.");
		return ;
	}
	if (agree_age==false) {
		alert("만 14세 미만인 경우 회원가입이 불가합니다.");
		return ;
	}
	//방식변경//jings3, 2019-06-25 //(Begin)
		//var pass = f.pass.value;
		//f.pwd.value = SHA512(pass.trim());
	//방식변경//jings3, 2019-06-25 //(End)
	
// 	if ($(".active_cont").children().text() == null) {
// 		alert("생년월일이 null 입니다.");
// 	}

	if (confirm("회원가입을 하시겠습니까?")) {
		f.target = "_self";
		f.action = "joinOK.asp";
		f.submit();
	}
}
</script>


<div class="joinstep">
	<ul style="border:none;">
		<!--
		<li>
			<div class="step">
				<div class="icon"><span class="iconfont ftic-success"></span></div>
				<div class="text">
					<span>STEP 01</span> <br>
					<strong>약관동의/본인인증</strong>
				</div>
			</div>
			<div class="next"><span class="iconfont ftic-next"></span></div>
		</li>
		-->
		<li class="on">
			<div class="step">
				<div class="icon"><span class="iconfont ftic-write"></span></div>
				<div class="text">
					<span>STEP 01</span> <br>
					<strong>회원정보입력</strong>
				</div>
			</div>
			<div class="next"><span class="iconfont ftic-next"></span></div>
		</li>
		<li>
			<div class="step">
				<div class="icon"><span class="iconfont ftic-id"></span></div>
				<div class="text">
					<span>STEP 02</span> <br>
					<strong>가입완료</strong>
				</div>
			</div>
		</li>
	</ul>
</div>

<!-- 회원가입 -->
<div class="member_wrap">

<h1 class="title"><i class="iconfont ftic-join"></i> 회원가입</h1>


	<p class="warnt">* 필수입력</p>

	<form name="Frm" method="GET" enctype="multipart/form-data" autocomplete="off">
		<input type="hidden" id="dental_login_chk" name="dental_login_chk">
		<input type="hidden" id="id" name="id"  value="">
		
		<input type="hidden" id="emailID" name="emailID">
		<input type="hidden" id="emailDomain" name="emailDomain">
		<input type="hidden" id="emailDomain2" name="emailDomain2">


		<input type="hidden" id="birthYear" name="birthYear" value="">
		<input type="hidden" id="birthMonth" name="birthMonth" value="">
		<input type="hidden" id="birthDay" name="birthDay" value="">


		<!-- <input type="hidden" id="tel1" name="tel1"> -->
		<!-- <input type="hidden" id="mobile1" name="mobile1"> -->
		<input type="hidden" id="rec_chk" name="rec_chk"  value="N">
		<input type="hidden" id="certification" value="0"/>
		<input type="hidden" id="sns_id" name="sns_id" value="">
		<input type="hidden" id="officeType" name="officeType" value="" /> <!-- 기업회원 체크 -->
		<input type="hidden" id="certification_email" name="certifications" value=""/>
		<input type="hidden" id="certification_mobile" name="certifications" value="0"/>
		<input type="hidden" id="agreeMarketingchk" name="agreeMarketingchk" value=""/>
		<input type="hidden" id="o_ChEmailDomain" name="o_ChEmailDomain">

		<input type="hidden" id="emailGo" value="0" />
		<input type="hidden" id="mobileGo" value="0" />


		<input type="hidden" name="isRealName" id="isRealName" value="F">	
		<input type="hidden" id="DI" name="DI" value="">	
		<input type="hidden" id="redirect" name="redirect" value="/my/main.asp">	
				<ul class="join_list">
					<!-- <h1>기본정보입력</h1> -->

					<li>
						<input id="chkID2" name="chkID2" class="text" maxlength="25" type="text" placeholder="아이디 입력 *" style="ime-mode:disabled; width:100%;" value=""  onblur="idCheck2();"  autocomplete="off"/>
						<div id="span_chkID" style="width:100%;"></div>
						<div id="checkId"></div>
					</li>
					

<!-- 현준 -->					
<script>
function idCheck2() {
	var userid = $("#chkID2").serialize();

	$.ajax({
		async : true, // 동기처리
		type : 'GET',
		data : userid,
		url : "/idcheck.do",
		dataType : "json",
		contentType : "application/json; charset=UTF-8",
		cache : false,
		success : function(data) {
			if (data == 0) {
				$("#checkId").prop("style", "color:blue").html("사용 가능한 ID 입니다.");
				$("#id").val($("#chkID2").val());
			} else {
				$("#checkId").prop("style", "color:red").html("사용 불가능한 아이디 입니다.");
				$("#id").val(" ");
			}
		},
		error : function(error) {
			console.log("error : " + error);
		}
	});
}
</script>										
					

					<li>
						<input name="pass" id="pass" class="text" type="password" maxlength="15" placeholder="비밀번호(영문,숫자,특수문자 6~15자) *" value="" style="width:100%;" />
						<p class="notif" id="rePassResult2">6~15자 영문과 숫자, 특수문자조합 (특수문자중에서 ( )는 제외)</p>
					</li>

					<li>
						<input name="rePass" id="rePass" class="text" type="password" maxlength="15" placeholder="비밀번호 재입력 *" onkeyup="passwordCheck(this)" style="width:100%;" value="" />
						<div id="rePassResult" style="width:100%;"></div>
					</li>

					<li>
						<input id="name" name="name" class="text" type="text" placeholder="이름 입력 *" value=""  style="width:100%;" />
					</li>

					<li class="mgt20">
						<input type="text" id="chkEmailID" name="chkEmailID" class="text" placeholder="이메일 입력 *" maxlength="50" style="width:371px;" autocomplete="off" onkeyup="document.Frm.emailID.value=this.value;" onblur="document.Frm.emailID.value=this.value; emailCheck();" />
						<!-- 셀렉트 -->
						<div class="select_option" style="width:204px;">
							<!-- 체크된 내용 -->
							<div class="active_cont">
								<span class="txt" >직접입력</span>
							</div>
							<!-- 체크된 내용 끝 -->
							<!-- 셀렉트 리스트 -->
							<ul class="option_list" id="emailSel">
								<li data-value=""><span class="txt" onclick="reset_domain();">직접입력</span></li>
								<li data-value="naver.com">	<span class="txt">naver.com</span></li>
								<li data-value="daum.net">	<span class="txt">daum.net</span></li>
								<li data-value="hanmail.net">	<span class="txt">hanmail.net</span></li>
								<li data-value="gmail.com">	<span class="txt">gmail.com</span></li>
								<li data-value="nate.com">	<span class="txt">nate.com</span></li>
								<li data-value="hotmail.com">	<span class="txt">hotmail.com</span></li>
								<li data-value="dreamwiz.com">	<span class="txt">dreamwiz.com</span></li>
								<li data-value="empal.com">	<span class="txt">empal.com</span></li>
								<li data-value="freechal.com">	<span class="txt">freechal.com</span></li>
								<li data-value="hanafos.com">	<span class="txt">hanafos.com</span></li>
								<li data-value="korea.com">	<span class="txt">korea.com</span></li>
								<li data-value="lycos.co.kr">	<span class="txt">lycos.co.kr</span></li>
								<li data-value="netian.com">	<span class="txt">netian.com</span></li>
								<li data-value="paran.com">	<span class="txt">paran.com</span></li>
								<li data-value="unitel.co.kr">	<span class="txt">unitel.co.kr</span></li>
								<li data-value="yahoo.co.kr">	<span class="txt">yahoo.co.kr</span></li>
							</ul>
							<!-- 셀렉트 리스트 끝 -->
						</div>
					</li>

					<li>
						<!-- 셀렉트 -->
						<!-- <div class="select_option" style="width:222px;"> -->
							<!-- 체크된 내용 -->
							<!-- <div class="active_cont"> -->
								<!-- <span class="txt">전화번호 입력</span> -->
							<!-- </div> -->
							<!-- 체크된 내용 끝 -->
							<!-- 셀렉트 리스트 -->
							<!-- <ul class="option_list" id="telSel"> -->
								
							<!-- </ul> -->
							<!-- 셀렉트 리스트 끝 -->
						<!-- </div> -->
						<!-- 셀렉트 끝 -->
						<!-- <input type="text" id="tel2" name="tel2" class="text" style="width:174px;" numberOnly="true" maxlength="4"/>
						<input type="text" id="tel3" name="tel3" class="text" style="width:174px;" numberOnly="true" maxlength="4" /> -->
						<input type="text" id="tel" name="tel" class="text" style="width:100%;" numberOnly="true" maxlength="20" value="" placeholder=" 전화번호 입력 (숫자만 입력하세요)"/>
					</li>

					<li>
						<!-- 셀렉트 -->
						<!-- <div class="select_option" style="width:222px;"> -->
							<!-- 체크된 내용 -->
							<!-- <div class="active_cont">
								<span class="txt phone_cls" >휴대전화 입력</span>
							</div> -->
							<!-- 체크된 내용 끝 -->
							<!-- 셀렉트 리스트 -->
							<!-- <ul class="option_list" id="mobileSel"> -->
								
							<!-- </ul> -->
							<!-- 셀렉트 리스트 끝 -->
						<!-- </div> -->
						<!-- 셀렉트 끝 -->
						<!-- <input type="text" id="mobile2" name="mobile2" class="text" style="width:174px;" numberOnly="true" maxlength="4" value=""/>
						<input type="text" id="mobile3" name="mobile3" class="text" style="width:174px;" numberOnly="true" maxlength="4" value="" /> -->
						<input type="text" id="mobile" name="mobile" class="text" style="width:100%;" numberOnly="true" maxlength="11" value="" placeholder=" 휴대전화 입력 (숫자만 입력하세요)"/>
					</li>

					<li class="mgt20">
						<span class="btn_gray_board" onclick="openNewAddr('');" >우편번호찾기</span>
						<input type="hidden" id="post" name="post">
						<input type="text" id="addr" name="addr" class="text" style="width:388px;" />
					</li>

					<li><input type="text" id="addrDetail" name="addrDetail" class="text" placeholder="상세주소 입력" style="width:100%;" /></li>

					<li>
						<!-- 셀렉트 -->
						<div class="select_option" style="width:222px;">
							<!-- 체크된 내용 -->
							<div class="active_cont">
								<span class="txt">생년월일 *</span>
							</div>
							<!-- 체크된 내용 끝 -->
							<!-- 셀렉트 리스트 -->
							<ul class="option_list" id="yearSel">
								 <li data-value="2022">
								 	<span class="txt">2022년</span>
								 </li>
								 <li data-value="2021">
								 	<span class="txt">2021년</span>
								 </li>
								 <li data-value="2020">
								 	<span class="txt">2020년</span>
								 </li>
								 <li data-value="2019">
								 	<span class="txt">2019년</span>
								 </li>
								 <li data-value="2018">
								 	<span class="txt">2018년</span>
								 </li>
								 <li data-value="2017">
								 	<span class="txt">2017년</span>
								 </li>
								 <li data-value="2016">
								 	<span class="txt">2016년</span>
								 </li>
								 <li data-value="2015">
								 	<span class="txt">2015년</span>
								 </li>
								 <li data-value="2014">
								 	<span class="txt">2014년</span>
								 </li>
								 <li data-value="2013">
								 	<span class="txt">2013년</span>
								 </li>
								 <li data-value="2012">
								 	<span class="txt">2012년</span>
								 </li>
								 <li data-value="2011">
								 	<span class="txt">2011년</span>
								 </li>
								 <li data-value="2010">
								 	<span class="txt">2010년</span>
								 </li>
								 <li data-value="2009">
								 	<span class="txt">2009년</span>
								 </li>
								 <li data-value="2008">
								 	<span class="txt">2008년</span>
								 </li>
								 <li data-value="2007">
								 	<span class="txt">2007년</span>
								 </li>
								 <li data-value="2006">
								 	<span class="txt">2006년</span>
								 </li>
								 <li data-value="2005">
								 	<span class="txt">2005년</span>
								 </li>
								 <li data-value="2004">
								 	<span class="txt">2004년</span>
								 </li>
								 <li data-value="2003">
								 	<span class="txt">2003년</span>
								 </li>
								 <li data-value="2002">
								 	<span class="txt">2002년</span>
								 </li>
								 <li data-value="2001">
								 	<span class="txt">2001년</span>
								 </li>
								 <li data-value="2000">
								 	<span class="txt">2000년</span>
								 </li>
								 <li data-value="1999">
								 	<span class="txt">1999년</span>
								 </li>
								 <li data-value="1998">
								 	<span class="txt">1998년</span>
								 </li>
								 <li data-value="1997">
								 	<span class="txt">1997년</span>
								 </li>
								 <li data-value="1996">
								 	<span class="txt">1996년</span>
								 </li>
								 <li data-value="1995">
								 	<span class="txt">1995년</span>
								 </li>
								 <li data-value="1994">
								 	<span class="txt">1994년</span>
								 </li>
								 <li data-value="1993">
								 	<span class="txt">1993년</span>
								 </li>
								 <li data-value="1992">
								 	<span class="txt">1992년</span>
								 </li>
								 <li data-value="1991">
								 	<span class="txt">1991년</span>
								 </li>
								 <li data-value="1990">
								 	<span class="txt">1990년</span>
								 </li>
								 <li data-value="1989">
								 	<span class="txt">1989년</span>
								 </li>
								 <li data-value="1988">
								 	<span class="txt">1988년</span>
								 </li>
								 <li data-value="1987">
								 	<span class="txt">1987년</span>
								 </li>
								 <li data-value="1986">
								 	<span class="txt">1986년</span>
								 </li>
								 <li data-value="1985">
								 	<span class="txt">1985년</span>
								 </li>
								 <li data-value="1984">
								 	<span class="txt">1984년</span>
								 </li>
								 <li data-value="1983">
								 	<span class="txt">1983년</span>
								 </li>
								 <li data-value="1982">
								 	<span class="txt">1982년</span>
								 </li>
								 <li data-value="1981">
								 	<span class="txt">1981년</span>
								 </li>
								 <li data-value="1980">
								 	<span class="txt">1980년</span>
								 </li>
								 <li data-value="1979">
								 	<span class="txt">1979년</span>
								 </li>
								 <li data-value="1978">
								 	<span class="txt">1978년</span>
								 </li>
								 <li data-value="1977">
								 	<span class="txt">1977년</span>
								 </li>
								 <li data-value="1976">
								 	<span class="txt">1976년</span>
								 </li>
								 <li data-value="1975">
								 	<span class="txt">1975년</span>
								 </li>
								 <li data-value="1974">
								 	<span class="txt">1974년</span>
								 </li>
								 <li data-value="1973">
								 	<span class="txt">1973년</span>
								 </li>
								 <li data-value="1972">
								 	<span class="txt">1972년</span>
								 </li>
								 <li data-value="1971">
								 	<span class="txt">1971년</span>
								 </li>
								 <li data-value="1970">
								 	<span class="txt">1970년</span>
								 </li>
								 <li data-value="1969">
								 	<span class="txt">1969년</span>
								 </li>
								 <li data-value="1968">
								 	<span class="txt">1968년</span>
								 </li>
								 <li data-value="1967">
								 	<span class="txt">1967년</span>
								 </li>
								 <li data-value="1966">
								 	<span class="txt">1966년</span>
								 </li>
								 <li data-value="1965">
								 	<span class="txt">1965년</span>
								 </li>
								 <li data-value="1964">
								 	<span class="txt">1964년</span>
								 </li>
								 <li data-value="1963">
								 	<span class="txt">1963년</span>
								 </li>
								 <li data-value="1962">
								 	<span class="txt">1962년</span>
								 </li>
								 <li data-value="1961">
								 	<span class="txt">1961년</span>
								 </li>
								 <li data-value="1960">
								 	<span class="txt">1960년</span>
								 </li>
								 <li data-value="1959">
								 	<span class="txt">1959년</span>
								 </li>
								 <li data-value="1958">
								 	<span class="txt">1958년</span>
								 </li>
								 <li data-value="1957">
								 	<span class="txt">1957년</span>
								 </li>
								 <li data-value="1956">
								 	<span class="txt">1956년</span>
								 </li>
								 <li data-value="1955">
								 	<span class="txt">1955년</span>
								 </li>
								 <li data-value="1954">
								 	<span class="txt">1954년</span>
								 </li>
								 <li data-value="1953">
								 	<span class="txt">1953년</span>
								 </li>
								 <li data-value="1952">
								 	<span class="txt">1952년</span>
								 </li>
								 <li data-value="1951">
								 	<span class="txt">1951년</span>
								 </li>
								 <li data-value="1950">
								 	<span class="txt">1950년</span>
								 </li>
								 <li data-value="1949">
								 	<span class="txt">1949년</span>
								 </li>
								 <li data-value="1948">
								 	<span class="txt">1948년</span>
								 </li>
								 <li data-value="1947">
								 	<span class="txt">1947년</span>
								 </li>
								 <li data-value="1946">
								 	<span class="txt">1946년</span>
								 </li>
								 <li data-value="1945">
								 	<span class="txt">1945년</span>
								 </li>
								 <li data-value="1944">
								 	<span class="txt">1944년</span>
								 </li>
								 <li data-value="1943">
								 	<span class="txt">1943년</span>
								 </li>
								 <li data-value="1942">
								 	<span class="txt">1942년</span>
								 </li>
								 <li data-value="1941">
								 	<span class="txt">1941년</span>
								 </li>
								 <li data-value="1940">
								 	<span class="txt">1940년</span>
								 </li>
								 <li data-value="1939">
								 	<span class="txt">1939년</span>
								 </li>
								 <li data-value="1938">
								 	<span class="txt">1938년</span>
								 </li>
								 <li data-value="1937">
								 	<span class="txt">1937년</span>
								 </li>
								 <li data-value="1936">
								 	<span class="txt">1936년</span>
								 </li>
								 <li data-value="1935">
								 	<span class="txt">1935년</span>
								 </li>
								 <li data-value="1934">
								 	<span class="txt">1934년</span>
								 </li>
								 <li data-value="1933">
								 	<span class="txt">1933년</span>
								 </li>
								 <li data-value="1932">
								 	<span class="txt">1932년</span>
								 </li>
								 <li data-value="1931">
								 	<span class="txt">1931년</span>
								 </li>
								 <li data-value="1930">
								 	<span class="txt">1930년</span>
								 </li>
								 <li data-value="1929">
								 	<span class="txt">1929년</span>
								 </li>
								 <li data-value="1928">
								 	<span class="txt">1928년</span>
								 </li>
								 <li data-value="1927">
								 	<span class="txt">1927년</span>
								 </li>
								 <li data-value="1926">
								 	<span class="txt">1926년</span>
								 </li>
								 <li data-value="1925">
								 	<span class="txt">1925년</span>
								 </li>
								 <li data-value="1924">
								 	<span class="txt">1924년</span>
								 </li>
								 <li data-value="1923">
								 	<span class="txt">1923년</span>
								 </li>
								 <li data-value="1922">
								 	<span class="txt">1922년</span>
								 </li>

							</ul>
							<!-- 셀렉트 리스트 끝 -->
						</div>
						<!-- 셀렉트 끝 -->

						<!-- 셀렉트 -->
						<div class="select_option" style="width:174px;">
							<!-- 체크된 내용 -->
							<div class="active_cont">
								<span class="txt">월</span>
							</div>
							<!-- 체크된 내용 끝 -->
							<!-- 셀렉트 리스트 -->
							<ul class="option_list" id="monthSel">
							 <li data-value="01">
 	<span class="txt">1월</span>
 </li>
 <li data-value="02">
 	<span class="txt">2월</span>
 </li>
 <li data-value="03">
 	<span class="txt">3월</span>
 </li>
 <li data-value="04">
 	<span class="txt">4월</span>
 </li>
 <li data-value="05">
 	<span class="txt">5월</span>
 </li>
 <li data-value="06">
 	<span class="txt">6월</span>
 </li>
 <li data-value="07">
 	<span class="txt">7월</span>
 </li>
 <li data-value="08">
 	<span class="txt">8월</span>
 </li>
 <li data-value="09">
 	<span class="txt">9월</span>
 </li>
 <li data-value="10">
 	<span class="txt">10월</span>
 </li>
 <li data-value="11">
 	<span class="txt">11월</span>
 </li>
 <li data-value="12">
 	<span class="txt">12월</span>
 </li>

							</ul>
							<!-- 셀렉트 리스트 끝 -->
						</div>
						<!-- 셀렉트 끝 -->

						<!-- 셀렉트 -->
						<div class="select_option" style="width:174px;">
							<!-- 체크된 내용 -->
							<div class="active_cont">
								<span class="txt">일</span>
							</div>
							<!-- 체크된 내용 끝 -->
							<!-- 셀렉트 리스트 -->
							<ul class="option_list" id="daySel">
							 <li data-value="01">
 	<span class="txt">1일</span>
 </li>
 <li data-value="02">
 	<span class="txt">2일</span>
 </li>
 <li data-value="03">
 	<span class="txt">3일</span>
 </li>
 <li data-value="04">
 	<span class="txt">4일</span>
 </li>
 <li data-value="05">
 	<span class="txt">5일</span>
 </li>
 <li data-value="06">
 	<span class="txt">6일</span>
 </li>
 <li data-value="07">
 	<span class="txt">7일</span>
 </li>
 <li data-value="08">
 	<span class="txt">8일</span>
 </li>
 <li data-value="09">
 	<span class="txt">9일</span>
 </li>
 <li data-value="10">
 	<span class="txt">10일</span>
 </li>
 <li data-value="11">
 	<span class="txt">11일</span>
 </li>
 <li data-value="12">
 	<span class="txt">12일</span>
 </li>
 <li data-value="13">
 	<span class="txt">13일</span>
 </li>
 <li data-value="14">
 	<span class="txt">14일</span>
 </li>
 <li data-value="15">
 	<span class="txt">15일</span>
 </li>
 <li data-value="16">
 	<span class="txt">16일</span>
 </li>
 <li data-value="17">
 	<span class="txt">17일</span>
 </li>
 <li data-value="18">
 	<span class="txt">18일</span>
 </li>
 <li data-value="19">
 	<span class="txt">19일</span>
 </li>
 <li data-value="20">
 	<span class="txt">20일</span>
 </li>
 <li data-value="21">
 	<span class="txt">21일</span>
 </li>
 <li data-value="22">
 	<span class="txt">22일</span>
 </li>
 <li data-value="23">
 	<span class="txt">23일</span>
 </li>
 <li data-value="24">
 	<span class="txt">24일</span>
 </li>
 <li data-value="25">
 	<span class="txt">25일</span>
 </li>
 <li data-value="26">
 	<span class="txt">26일</span>
 </li>
 <li data-value="27">
 	<span class="txt">27일</span>
 </li>
 <li data-value="28">
 	<span class="txt">28일</span>
 </li>
 <li data-value="29">
 	<span class="txt">29일</span>
 </li>
 <li data-value="30">
 	<span class="txt">30일</span>
 </li>
 <li data-value="31">
 	<span class="txt">31일</span>
 </li>

							</ul>
							<!-- 셀렉트 리스트 끝 -->
						</div>
						<!-- 셀렉트 끝 -->
					</li>

<!-- 현준 -->					
<script>
// 셀렉트박스 선택기능
$(".active_cont:first").click(function() {
	$(".select_option").removeClass("focus");
	$(this).parent().addClass("focus");
});
$(".active_cont:eq(1)").click(function() {
	$(".select_option").removeClass("focus");
	$(this).parent().addClass("focus");
});
$(".active_cont:eq(2)").click(function() {
	$(".select_option").removeClass("focus");
	$(this).parent().addClass("focus");
});
$(".active_cont:last").click(function() {
	$(".select_option").removeClass("focus");
	$(this).parent().addClass("focus");
});

// 셀렉트항목 선택기능
$(".txt").parent("li").click(function() {
	$(".select_option").removeClass("focus");
	var select = $(this).children().html();
	$(this).parent().prev().children().html(select);

	// 이메일도메인과 생년월일 form 태그로 넘겨주기
	$("#emailDomain").val($(".active_cont:eq(0)").children().html());
	$("#birthYear").val($(".active_cont:eq(1)").children().html());
	$("#birthMonth").val($(".active_cont:eq(2)").children().html());
	$("#birthDay").val($(".active_cont:eq(3)").children().html());
});

// $("html").click(function() {
// 	if (!e.target.hasClass("focus")) {
// 		console.log("t");
// 	}
// });
</script>							

					<li>
						<!-- <div>성별</div> -->
						<div class="MFchk_box_wrap">
							<input type="radio" name="gender" id="ex_chk" class="MFchk" value="M">
							<label class="MFchk_box" for="ex_chk"><div class="iconfont ftic-success"></div><p class="notif">남자</p></label>
							<input type="radio" name="gender" id="ex_chk2" class="MFchk" value="F">
							<label class="MFchk_box" for="ex_chk2"><div class="iconfont ftic-success"></div><p class="notif">여자</p></label>
						</div>
					</li>


							<input type="hidden" name="rec_member" id="rec_member" value="">


					
					<label for="isSms" class="cklabel ck_mail mgt5">
						<div class="iconfont ftic-success"></div>
						<input type="checkbox" id="isSms" name="isSms" value="T" class="ckbox ck_mail"/>
						SMS 수신에 동의 합니다.
					</label>


					<label for="isMailing" class="cklabel ck_mail mgt5">
						<div class="iconfont ftic-success"></div>
						<input type="checkbox" id="isMailing" name="isMailing" value="T" class="ckbox ck_mail" />
						이메일 수신에 동의합니다.
					</label>			
					
					<!-- 현준 -->		
					<script>
// 						$(".ck_mail").click(function() {
// 							var bool = true;
// 								$("#isSms").prop("checked", true);
							
// 							if (bool) {
// 								$("#isSms").prop("checked", true);
// 								bool = false;
// 							} else {
// 								$("#isSms").prop("checked", false);
// 								bool = true;
// 							}
							
// 							alert("t");
// 						});
					</script>

<!-- 이용약관 구조 추가 2019-09-09 kyh, 필수선택만 솔루션에 가져옴 -->


			<div class="joinPop_textInfo">
				<div class="join_allChkBox">
					<p>※ 동의 시 이용약관, 개인정보 수집 및 이용에 동의 됨을 알려드립니다.</p>
					<input type="checkbox" name="agree_all" value="T" id="Join_allCheck" onchange="primemCkBox(this, 'a')"> <label for="Join_allCheck">내용 확인 및 전체 동의</label>
				</div>

				<div class="joinPop_textWrap">

					<ul class="joinPop_infoCont">

						<li class="on" id="tab-1">
							<!-- <iframe src="/html/info_dumy.asp" frameborder="0" style="width:100%; height:177px; border:1px solid #EEE; background-color:#f9f9f9; overflow:hidden;"></iframe> -->
							<div class="itaBox itaBox2">
								<div class="itaBoxWrap">
									<div class="itaBoxHead">이용약관 <span onclick="closeIta(this);"></span></div>
									<div class="itaBoxBody">
<!DOCTYPE html>
<html>
<head>
<style>
.mgt0 {margin-top:0 !important;}
.guide_wrap {margin:20px 0; padding:40px 7%; border:1px solid #e7e7e7; background:#fff; font-size:14px;}
.guide_wrap p {margin:20px 0 0 0; font-size:14px; line-height:18px;}
.guide_wrap ol {margin-top:30px; font-size:18px; line-height:24px;}
.guide_wrap ol li {margin-top:10px; font-weight:bold;}
.guide_wrap h2 {margin-top:50px; font-size:18px; line-height:24px;}
</style>
</head>
<body>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">1</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>목 적<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">본 약관은 로쏘<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>주<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span>가 운영하는 성심당몰<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>이하 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&ldquo;</span>회사<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rdquo;</span>라 한다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.)</span>이 인터넷상에서 제공하는 모든 서비스<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>이하 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">"</span>서비스<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">"</span>라 하며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>접속 가능한 유무선 단말기의 종류와는 상관없이 이용 가능한 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&ldquo;</span>회사<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rdquo;</span>가 제공하는 모든 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&ldquo;</span>서비스<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rdquo;</span>를 의미합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">. )</span>를 이용함에 있어 회원과 회사간의 권리<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>의무 및 책임사항 및 절차를 규정함을 목적으로 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">2</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>약관의 효력 및 변경<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>본 약관은 서비스에 가입된 고객을 포함하여 서비스를 이용하고자 본 약관에 동의한 모든 회원에 대하여 그 효력을 발생합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>본 약관의 내용은 서비스 화면에 게시하거나 기타의 방법으로 회원에게 공지하고<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>이에 동의한 회원이 서비스에 가입함으로써 효력이 발생합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">③ </span>회사는 본 약관의 내용을 이용자가 알 수 있도록 사이트의 초기 서비스 화면에 게시합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">④ </span>본 약관은 회사가 필요하다고 인정되는 경우 변경할 수 있으며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>약관이 변경된 경우 지체 없이 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">2</span>항과 같은 방법으로 공지합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">. </span>다만<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>이용자의 권리 또는 의무에 관한 중요한 규정의 변경은 최소 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">7</span>일전에 공지하고<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>이용자에게 불리한 변경은 최소 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">30</span>일전에 공지합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">⑤ </span>회원은 변경된 약관 사항에 동의하지 않으면 서비스 이용을 중단하고 이용 계약을 해지할 수 있고<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>변경된 약관의 효력 발생일로부터 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">30</span>일 이내 해지요청을 하지 않은 회원은 변경된 약관에 동의한 것으로 간주합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">3</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>약관 외 준칙<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>본 약관에 명시되지 않은 사항은 전기통신기본법<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>전기통신사업법<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>공정거래법 등 관계법령 및 회사가 제공하는 서비스에 관한 별도의 약관<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>이용규정 또는 세부 이용 지침 등의 규정에 따릅니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>회사와 회원간의 상업적인 계약과 관련하여 본 약관에서 정하지 않은 사항과 본 약관의 해석에 관하여는 정부가 제정한 전자거래소비자보호지침 및 관계법령 또는 상관례에 따릅니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">4</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>용어의 정의<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">본 약관에서 사용하는 용어의 정의는 다음과 같습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>사이트 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">: </span>회사가 재화<span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">ㆍ</span>용역<span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">ㆍ</span>정보를 이용자에게 제공하기 위하여 컴퓨터 등 정보통신 설비를 이용하여 재화<span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">ㆍ</span>용역을 거래할 수 있도록 설정한 가상의 영업장 또는 회사가 운영하는 웹사이트를 말하며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>통합된 하나의 아이디 및 비밀번호를 이용하여 서비스를 제공받을 수 있는 아래의 사이트를 의미합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">※ </span>사이트 현황 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(2015</span>년 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">12</span>월 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">1</span>일<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">성심당몰 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">: </span><a href="http://www.sungsimdang.co.kr/"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">https://www.sungsimdangmall.co.kr/</span></a></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>성심당 온라인 회원 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">: </span>회사가 운영하는 사이트에 접속하여 본 약관에 동의하고 아이디를 부여 받은 자를 의미합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">③ </span>아이디 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">: </span>회원 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 영문자와 숫자의 조합을 말합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">④ </span>비밀번호 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">: </span>회원의 정보 보호를 위해 회원 자신이 설정한 문자와 숫자의 조합을 말합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">⑤ </span>제휴사이트 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">: </span>각 사이트가 업무제휴를 통해 공동 마케팅<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>공동사업 등을 추진하기 위하여 하이퍼링크 방식 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>하이퍼 링크의 대상에는 문자<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>정지 및 동화상 등이 포함됨<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>등으로 연결한 업무제휴 사업체의 웹사이트를 의미합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">⑥ </span>서비스의 중지 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">: </span>회사가 정한 일정한 요건에 따라 일정 기간 동안 서비스의 제공을 중지하는 것을 말합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">⑦ </span>몰 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">: </span>회사가 재화 또는 용역을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>아울러 몰을 운영하는 사업자의 의미로도 사용합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">⑧ </span>본 약관에서 사용하는 용어의 정의는 본 조에서 정한 것을 제외하고는 거래 관행 및 관계 법령을 따릅니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">5</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>이용계약의 성립<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>회원가입을 한 경우에는 회사의 서비스 이용 신청 시 본 약관을 읽고 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">"</span>동의함<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">" </span>버튼을 클릭하면 본 약관에 동의하는 것으로 간주됩니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>이용계약은 서비스 이용자가 본 약관에 동의 후 이용 신청에 대하여 회사가 승낙함으로써 성립합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.<br /><br /></span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">6</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>이용 신청<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">이용 신청은 서비스의 이용자 등록 화면에서 사이트가 정한 소정 양식을 기록하여 이용신청을 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.<br /><br /></span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">7</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>이용신청의 승낙<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">회사는 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">6</span>조에서 정한 사항을 정확히 기재하여 이용 신청한 고객에 대하여 서비스 이용 신청을 승낙합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><br /><strong>제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">8</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>이용신청에 대한 승낙의 제한<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></strong></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>회사는 다음 각 호에 해당하는 신청에 대하여는 승낙을 하지 않을 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">가<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>기술상 서비스 제공이 불가능한 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">나<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>회사가 정한 이용 신청 요건에 만족되지 않았을 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>본인의 실명으로 신청하지 않은 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">라<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>다른 사람의 명의를 사용하여 신청한 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">마<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>이용 신청 시 필요 사항을 허위로 기재하여 신청한 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">바<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>기타 회사가 정한 이용 신청 요건이 미비 된 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>이용 신청의 승낙을 유보하거나 승낙하지 아니하는 경우 회사는 이를 이용자에게 알려야 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">. </span>다만<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>회사의 귀책 사유 없이 이용 신청자에게 통지할 수 없는 경우는 예외로 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">③ </span>제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">22</span>조의 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">6</span>항의 사유로 인해 회원 탈퇴조치를 당한 사람이 이용신청을 하는 경우 회사는 이를 승낙하지 않을 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.<br /><br /></span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">9</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>계약사항의 변경<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">회원은 이용 신청 시 기재한 사항이 변경되었을 경우<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>즉시 전자우편 또는 회사가 정한 별도의 정해진 양식 및 이용방법으로 변경사항을 알리고 수정해야 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">. </span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">즉시 변경사항을 알리고 수정하지 않음으로 인한 불이익에 대해 회사는 책임을 부담하지 않습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">10</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>서비스의 이용 개시<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>회사는 회원의 이용 신청을 승낙한 때부터 서비스를 개시합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">. </span>단<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>일부 서비스의 경우에는 지정된 일자부터 서비스를 개시합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>회사의 업무상 또는 기술상의 장애로 인하여 서비스를 개시하지 못하는 경우에는 사이트에 공지하거나 회원에게 이를 통지합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.<br /><br /></span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">11</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>서비스의 이용시간<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>서비스의 이용은 연중무휴 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">1</span>일 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">24</span>시간을 원칙으로 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">. </span>다만<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>회사의 업무상<span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">ㆍ</span>기술상의 이유로 서비스가 일시 중지될 수 있고<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>또한 운영 상의 목적으로 회사가 정한 기간에는 서비스가 일시 중지될 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">. </span>이러한 경우 회사는 사전 또는 사후에 이를 공지합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>회사는 서비스를 일정범위로 분할하여 각 범위 별로 이용 가능한 시간을 별도로 정할 수 있으며 이 경우 그 내용을 공지합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">12</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>서비스의 변경 및 중지<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>회사는 변경될 서비스의 내용 및 제공일자를 회원에게 통지하고 서비스를 변경하여 제공할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>회사는 다음 각 호에 해당하는 경우 서비스의 전부 또는 일부를 제한하거나 중지할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">가<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>서비스용 설비의 보수 등 공사로 인한 부득이한 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">나<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>회원이 회사의 영업활동을 방해하는 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>정전<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>제반 설비의 장애 또는 이용량의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">라<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>서비스 제공업자와의 계약 종료 등과 같은 회사의 제반 사정으로 서비스를 유지할 수 없는 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">마<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>기타 천재지변<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>국가비상사태 등 불가항력적 사유가 있는 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">③ </span>본 조 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">2</span>항의 사유로 서비스의 제공이 일시적으로 중단된 경우에는 회사가 제 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">14</span>조에서 정한 방법으로 이용자에게 통지합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">. </span>단<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>회사가 통제할 수 없는 사유<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>운영자의 고의<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>과실이 없는 디스크 장애<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>시스템 다운 등<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span>로 통지가 불가능한 경우에는 그러하지 아니합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">13</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>정보의 제공<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>회사는 회원이 서비스 이용 중 필요가 있다고 인정되는 다양한 정보를 공지사항이나 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">E-mail </span>등의 방법으로 회원에게 제공할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>회사는 회원에게 보다 나은 서비스 혜택 제공을 위해 다양한 전달 방법<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(E-mail, SMS </span>등<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span>을 통해 서비스 관련 정보를 제공할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">. </span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">단<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>회사는 회원이 서비스 혜택 정보 제공을 원치 않는다는 의사를 밝히는 경우 정보 제공 대상에서 해당회원을 제외하여야 하며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>대상에서 제외되어 서비스 정보를 제공받지 못해 불이익이 발생하더라도 이에 대해서는 회사가 책임지지 않습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">14</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>회원에 대한 통지<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>회원에 대한 통지를 하는 경우<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>회사는 회원이 등록한 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">e-mail </span>주소 또는 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">SMS </span>등으로 할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>회사는 불특정 다수 회원에 대한 통지의 경우 서비스 게시판 등에 게시함으로써 개별 통지에 갈음할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">15</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>정보의 제공<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>광고의 게재 및 광고주와의 거래<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>회사가 회원에게 서비스를 제공할 수 있는 서비스 투자기반의 일부로 광고게재를 진행할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">. </span>서비스를 이용하고자 하는 자는 서비스 이용 시 노출되는 광고게재에 대해 동의하는 것으로 간주됩니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>회사는 본 서비스상에 게재되어 있거나 본 서비스를 통한 광고주의 판촉 활동에 회원이 참여하거나 교신 또는 거래의 결과로서 발생하는 모든 손실 또는 손해에 대해 책임을 지지 않습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">16</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>회사가 제공한 정보에 대한 회원의 의무와 책임<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>회사가 작성한 저작물에 대한 저작권은 회사에 귀속합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>회원은 서비스를 이용하여 얻은 정보를 영리 목적으로 가공<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>판매<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>이용하거나 제 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">3</span>자에게 이용하게 할 수 없습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">17</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>게시물 또는 내용물의 삭제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>회사는 회원이 게시하거나 전달하는 서비스 내의 모든 내용물<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>회원간 전달 포함<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span>이 다음 각 호의 경우에 해당한다고 판단되는 경우 사전통지 없이 삭제할 수 있으며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>이에 대해 회사는 어떠한 책임도 지지 않습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">가<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>회사<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>다른 회원 또는 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">3</span>자의 명예를 손상시키는 비방 또는 중상모략일 수 있는 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">나<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>공공질서 및 미풍양속에 위반될 수 있는 내용의 정보<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>문장<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>도형</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>범죄적 행위에 결부될 수 있다고 인정되는 내용인 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">라<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>회사의 저작권<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">3</span>자의 저작권 등 기타 권리를 침해할 수 있는 내용인 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">마<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">2</span>항 소정의 세부이용지침을 통하여 회사에서 규정한 게시기간을 초과한 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">바<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>회사에서 제공하는 서비스와 무관할 수 있는 내용인 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">사<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>승인되지 않은 광고<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>판촉물을 게재하는 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">아<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>기타 관계 법령 및 회사의 지침 등에 위반될 수 있다고 판단되는 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>회사는 게시물에 관련된 세부 이용지침을 별도로 정하여 시행할 수 있으며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>회원은 그 지침에 따라 각 종 게시물<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>회원간 전달 포함<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span>을 등록하거나 삭제하여야 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">18</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>게시물의 저작권<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>회사는 회원이 서비스 내에 게시한 게시물<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>회원간 전달 포함<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span>을 서비스 내에 게시할 수 있는 권리를 갖습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>회사는 회원이 게시물을 특정한 내용으로 게시하였다는 사실을 증명하기 위한 목적으로 게시물을 사용할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">③ </span>회원이 타인의 저작권<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>프로그램저작권 등을 침해하였음을 이유로 회사가 타인으로부터 손해배상청구 등을 받은 경우 회원은 회사의 면책을 위하여 노력하여야 하며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>회사가 면책되지 못한 경우 회원은 회사의 손해를 배상하여야 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">④ </span>회사는 회원이 본 약관을 해지하거나 본 약관이 적법한 사유로 해지 된 경우 해당 회원이 게시하였던 게시물을 삭제할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">19</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>경품<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>회사는 회원을 위한 경품<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>포인트 등의 적립<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>기타 이와 유사한 행사를 단기간 또는 지속적으로 시행할 수 있으며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>행사 진행의 방법에 따라 선정되는 회원<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>수혜자 또는 당첨자<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span>에게 회사가 정한 현금<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>상품<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>포인트 등<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>이하 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">'</span>경품 등<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">')</span>을 제공할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>본 조 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">1</span>항에 의한 경품 등을 지급할 경우<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>발생하는 제세공과금과 입금수수료 등 제반 비용은 당첨된 회원이 부담해야 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">. </span>단<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>회사가 별도로 이에 대한 세칙 등을 고지한 경우에는 해당 조건을 따릅니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">③ </span>행사 방법에 따라 수혜자 또는 당첨자로 선정된 회원에 대한 실질적인 지급방식은 회사에서 정하는 방법에 의하여 지급하며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>회사는 당해 회원의 승낙을 받고 회사의 상황에 따라 회사가 정한 경품 등의 내용 및 방법 등을 변경하여 제공할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">④ </span>수혜자 또는 당첨자로 선정된 회원이 선정 확정 후 회사가 정하는 일정 기간이 지나도록 경품 등을 수령하지 않거나 배송 후 주소 불명 등으로 반송된 경우에는 경품 등의 수령을 포기한 것으로 인정하여 지급 등을 취소할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">⑤ </span>회사는 수혜자 또는 당첨자로 선정된 회원의 개인정보가 허위로 밝혀지거나 해당 회원이 관련 세칙을 준수하지 않았을 경우에는 경품 등의 지급을 취소할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">⑥ </span>회사에서 경품 등을 지급할 경우에는 우체국 이용을 원칙으로 하고<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>회사의 상황에 따라 회사가 정한 경품 배송 업체 등을 변경하여 제공할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">20</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>경품 등의 양도<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">회원은 회사의 사전 동의 없이 경품 등<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>포인트 또는 사이버 머니 포함<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span>을 타인에게 양도할 수 없으며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>이를 담보로 제공할 수 없습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">21</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>회사의 의무<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>회사는 특별한 사정이 없는 한 회원이 서비스 이용을 신청한 날에 서비스를 이용할 수 있도록 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>회사는 본 약관에서 정한 바에 따라 계속적이고 안정적인 서비스의 제공을 위하여 지속적으로 노력하며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>설비에 장애가 생기거나 멸실 된 때에는 지체 없이 이를 수리 복구하여야 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">. </span>다만<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>천재지변<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>비상사태 또는 그 밖에 부득이한 경우에는 그 서비스를 일시 중단하거나 중지 할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">③ </span>회사는 서비스와 관련한 회원의 불만사항이 접수되는 경우 이를 신속하게 처리하여야 하며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>신속한 처리가 곤란한 경우 그 사유와 처리 일정을 홈페이지 화면에 게재하거나 전자우편 등을 통해 회원에게 통지합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">④ </span>회사는 회원의 개인정보 보호와 관련하여 당사의 개인정보취급방침의 내용을 준수합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">⑤ </span>회사는 이용약관의 체결<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>계약사항의 변경 및 해지 등 이용고객과의 계약 관련 절차 및 내용 등에 있어 이용고객에게 편의를 제공하도록 노력합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">22</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>회원의 의무<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>회원은 본 약관에서 규정하는 사항과 이용안내 또는 공지사항 등을 통하여 회사가 공지하는 사항을 준수하여야 하며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>기타 회사의 업무에 방해되는 행위를 하여서는 안됩니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>회원의 아이디와 비밀번호에 관한 모든 관리책임은 회원에게 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">. </span>회원에게 부여된 아이디와 비밀번호의 관리 소홀<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>부정 사용에 의하여 발생하는 모든 결과에 대한 책임은 회원에게 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">③ </span>회원은 자신의 아이디나 비밀번호가 부정하게 사용되었다는 사실을 발견한 경우에는 즉시 회사에 신고하여야 하며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>신고를 하지 않아 발생하는 모든 결과에 대한 책임은 회원에게 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">④ </span>회원은 회사의 사전승낙 없이는 서비스를 이용하여 영업활동을 할 수 없으며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>그 영업활동의 결과와 회원이 약관에 위반한 영업활동을 하여 발생한 결과에 대하여 회사는 책임을 지지 않습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">. </span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">회원은 이와 같은 영업활동으로 회사가 손해를 입은 경우 회원은 회사에 대하여 손해배상의무를 집니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">⑤ </span>회원은 회사의 명시적인 동의가 없는 한 서비스의 이용권한<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>기타 이용 계약상 지위를 타인에게 양도<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>증여할 수 없으며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>이를 담보로 제공할 수 없습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">⑥ </span>회원은 서비스 이용과 관련하여 다음 각 호에 해당되는 행위를 하여서는 안되며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>회사는 다음 각 호의 행위를 행한 회원에 대하여 사전 통지 없이 이용계약을 해지할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">가<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>다른 회원의 아이디와 비밀번호<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>주민등록번호 등을 도용하거나 도용하려는 행위</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">나<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>본 서비스를 통하여 얻은 정보를 회사의 사전승낙 없이 정당한 이용 이외의 목적으로 복제하거나 이를 출판 및 방송 등에 사용하려 하거나 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">3</span>자에게 제공하려는 행위</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>타인의 특허<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>상표<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>영업비밀<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>저작권 기타 지적재산권을 침해하거나 침해하려는 내용을 게시<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>전자메일 또는 기타의 방법으로 타인에게 유포하거나 유포하려는 행위</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">라<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>공공질서 및 미풍양속에 위반되는 저속<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>음란한 내용의 정보<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>문장<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>도형 등을 전송<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>게시<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>전자메일 또는 기타의 방법으로 타인에게 유포하거나 유포하려는 행위</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">마<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>모욕적이거나 위협적이어서 타인의 프라이버시를 침해할 수 있는 내용을 전송<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>게시<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>전자메일 또는 기타의 방법으로 타인에게 유포하거나 유포하려는 행위</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">바<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>범죄와 결부되거나 될 수 있다고 판단되는 행위</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">사<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>회사의 승인을 받지 않고 다른 사용자의 개인정보를 수집 또는 저장하거나 하려는 행위</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">아<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>기타 관계법령에 위배되거나 위배될 수 있는 행위</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">23</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>개인정보의 보호<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">개인정보취급과 관련된 사항은 당사의 개인정보취급방침을 따릅니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">24</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>구매신청<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">"</span>몰<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">"</span>이용자는 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">"</span>몰<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">"</span>상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, "</span>몰<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">"</span>은 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">. </span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">단<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>회원인 경우 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">2</span>호 내지 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">4</span>호의 적용을 제외할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>재화 등의 검색 및 선택</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>성명<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>주소<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>전화번호<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>전자우편주소<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>또는 이동전화번호<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>등의 입력</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">③ </span>계약내용<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>청약철회권이 제한되는 서비스<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>배송료 등의 비용부담과 관련한 내용에 대한 확인</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">④ </span>본 약관에 동의하고 위 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">3</span>호의 사항을 확인하거나 거부하는 표시</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">⑤ </span>재화 등의 구매신청 및 이에 관한 확인 또는 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">"</span>몰<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">"</span>의 확인에 대한 동의</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">⑥ </span>결제방법의 선택</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">25</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>구매계약의 성립<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&ldquo;</span>몰<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rdquo;</span>은 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">26</span>조와 같은 구매신청에 대하여 다음 각호에 해당하면 승낙하지 않을 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">가<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>신청 내용에 허위<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>기재누락<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>오기가 있는 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">나<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>기타 구매신청에 승낙하는 것이 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&ldquo;</span>몰<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rdquo; </span>기술상 현저히 지장이 있다고 판단하는 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>구매 신청에 대한 계약의 성립은 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&ldquo;</span>몰<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rdquo;</span>의 승낙이 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">29</span>조의 수신확인통지 형태로 이용자에게 도달한 시점으로 봅니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">26</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>지급방법<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&ldquo;</span>몰<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rdquo;</span>에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각호의 방법 중 가용한 방법으로 할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>선불카드<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>직불카드<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>신용카드 등의 각종 카드 결제</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>온라인무통장입금</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">27</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>수신확인통지<span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">ㆍ</span>구매신청 변경 및 취소<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&ldquo;</span>몰<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rdquo;</span>은 이용자의 구매신청이 있는 경우 이용자에게 전자우편 또는 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">SMS </span>등 가능한 수단의 수신확인통지를 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&ldquo;</span>몰<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rdquo;</span>은 배송 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">. </span>다만 이미 대금을 지불한 경우에는 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">32</span>조의 청약철회 등에 관한 규정에 따릅니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">28</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>배송<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&ldquo;</span>몰<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rdquo;</span>은 이용자가 구매한 재화에 대해 배송수단<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>수단별 배송비용 부담자<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>수단별 배송 기간 등을 명시합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">만약<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해에 대하여 배상합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">단<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, &lsquo;</span>몰<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rsquo;</span>이 고의 또는 과실이 없는 경우에는 그러하지 아니합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">29</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>환급<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>반품 및 교환<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&ldquo;</span>몰<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rdquo;</span>은 이용자가 구매 신청한 재화 등이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">3</span>일 이내에 환급하거나 환급에 필요한 조치를 취합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>다음 각호의 경우에 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&lsquo;</span>몰<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rsquo;</span>은 배송된 재화일지라도 재화를 반품 받은 날의 다음 영업일 이내에 이용자의 요구에 따라 즉시 환급<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>반품 및 교환 조치를 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">. </span>다만 그 요구 기한은 배송된 날로부터 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">20</span>일 이내로 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">가<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>배송된 재화가 주문 내용과 상이하거나 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&lsquo;</span>몰<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rsquo;</span>이 제공한 정보와 상이한 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">나<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>배송된 재화가 파손<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>손상되었거나 오염되었을 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>재화가 광고에 표시된 배송기간보다 늦게 배송된 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">30</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>청약철회 등<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&ldquo;</span>몰<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rdquo;</span>과 재화 등의 구매에 관한 계약을 체결한 이용자는 수신확인의 통지를 받은 날부터 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">7</span>일 이내에는 청약의 철회를 할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>이용자는 재화 등을 배송 받은 경우 다음 각호의 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">1</span>에 해당하는 경우에는 반품 및 교환을 할 수 없습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">가<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>다만<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">나<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>시간의 경과에 의하여 재판매가 곤란할 정도로 재화 등의 가치가 현저히 감소한 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">라<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">③ </span>제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">2</span>항 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&lsquo;</span>나<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rsquo;</span>호 내지 제 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&lsquo;</span>라<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rsquo;</span>호의 경우에는 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&ldquo;</span>몰<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rdquo;</span>이 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의 조치를 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">④ </span>이용자는 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">1</span>항 및 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">2</span>항의 규정에 불구하고 재화 등의 내용이 표시 <span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">ㆍ</span>광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화 등을 공급받은 날부터 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">3</span>개월 이내<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>그 사실을 안 날 또는 알 수 있었던 날부터 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">30</span>일 이내에 청약철회 등을 할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">31</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>계약해지 및 이용제한<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>회원이 이용 계약을 해지하고자 하는 경우에는 회원 본인이 사이트상에서 또는 회사가 정한 별도의 이용방법으로 회사에 해지 신청하여야 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>온라인 회원이 회원 가입 후 탈퇴 시 온라인 회원의 자격이 모두 상실 됩니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">③ </span>회사는 회원이 다음 각 호에 해당하는 행위를 하였을 경우 사전 통지 없이 이용계약을 해지하거나 또는 기간을 정하여 서비스 이용을 중지할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">가<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>타인의 개인정보<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>아이디 및 비밀번호를 도용하려 하거나 도용한 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">나<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>가입한 이름이 실명이 아닌 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>타인의 명예를 손상시키거나 불이익을 주는 행위를 하려 하거나 한 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">라<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>회사<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>다른 회원 또는 제 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">3</span>자의 지적재산권을 침해하려 하거나 침해한 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">마<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>공공질서 및 미풍양속에 저해되는 내용을 고의로 유포시키려 하거나 유포시킨 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">바<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>회원이 국익 또는 사회적 공익을 저해할 목적으로 서비스 이용을 계획 또는 실행하는 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">사<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>서비스 운영을 고의로 방해하려 하거나 방해한 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">아<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>서비스의 안정적 운영을 방해할 목적으로 다량의 정보 또는 광고성 정보를 전송하려 하거나 전송한 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">자<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>정보통신설비의 오작동이나 정보의 파괴를 유발시키는 컴퓨터 바이러스 프로그램 등을 유포하려 하거나 유포한 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">차<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>정보통신윤리위원회 등 외부기관의 해지요구가 있거나 불법선거운동과 관련하여 선거관리위원회로부터 해지가 가능하다는 유권해석을 받은 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">카<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>회사의 서비스를 이용하여 얻은 정보를 회사의 사전 승낙 없이 복제 또는 유통시키거나 상업적으로 이용하려 하거나 이용한 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">타<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>회원이 자신의 홈페이지와 게시판에 음란물을 게재<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">/</span>음란 사이트 링크하려 하거나 한 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">파<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">) </span>본 약관을 포함하여 기타 회사가 정한 이용 조건을 위반하려 하거나 위반한 경우</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">32</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>손해 배상<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>회사 또는 회원이 본 약관의 규정을 위반함으로 인하여 상대방에게 손해가 발생하게 되는 경우<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>이 약관을 위반한 회사 또는 회원은 상대방에게 발생하는 모든 손해를 배상하여야 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>회사 또는 회원이 서비스를 이용함에 있어 행한 불법행위나 본 약관 위반행위로 인하여 상대방이 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">3</span>자로부터 손해배상 청구 또는 소송을 비롯한 각종 이의제기를 받는 경우 당해 회사 또는 회원은 자신의 책임과 비용으로 상대방을 면책 시켜야 하며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>면책되지 못한 경우 그로 인하여 발생한 모든 손해를 배상하여야 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">33</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>면책조항<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>회사는 회원의 귀책사유로 인한 서비스의 이용장애에 대하여 책임을 지지 않습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">③ </span>회사는 회원이 서비스를 이용하여 기대하는 수익을 상실한 것이나 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">④ </span>회원이 서비스에 게재한 정보<span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">ㆍ</span>자료<span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">ㆍ</span>사실의 신뢰도 및 정확성 등 내용에 대하여는 회원이 책임을 부담하며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>회사는 동 내용의 부정확 또는 허위로 인해 회원 또는 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">3</span>자에게 발생한 손해에 대하여는 아무런 책임을 지지 않습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">⑤ </span>회사는 서비스 이용과 관련하여 가입자에게 발생한 손해 가운데 가입자의 고의<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>과실에 의한 손해에 대하여 책임을 지지 않습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">⑥ </span>회사는 회원 상호간 및 회원과 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">3</span>자 상호간에 서비스를 매개로 발생한 분쟁에 대해 개입할 의무가 없으며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>이로 인한 손해를 배상할 책임도 없습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">⑦ </span>회사는 무료로 제공하는 서비스 이용과 관련해서는 어떠한 손해도 책임을 지지 않습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><strong><span style="font-size: 12pt;">제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">34</span>조 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>관할법원<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></strong></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>서비스 이용과 관련하여 회사와 회원 사이에 분쟁이 발생한 경우<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>회사와 회원은 분쟁의 해결을 위해 성실히 협의합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>본 조 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">1</span>항의 협의에서도 분쟁이 해결되지 않을 경우 양 당사자는 민사소송법상의 관할법원에 소를 제기할 수 있으며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">, </span>소송이 제기될 경우 대전<span style="mso-fareast-font-family: 함초롬바탕; font-weight: bold;">지방법원을 전속 관할법원으로</span> 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;[</span>부칙<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">] 2015. 12. 14 </span>개정</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">본 약관은 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">2015</span>년 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">12</span>월 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">14</span>일부터 시행합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"> <!-- [if !supportEmptyParas]-->&nbsp;<!--[endif]--> </span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;[</span>부칙<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">] 2020. 10. 1 </span>개정</span></p>
<p class="0" style="margin-bottom: 4.0pt; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;">본 약관은 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">2020</span>년 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">10</span>월 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">1</span>일부터 시행합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.<br /><br /></span></span></p>
</body>
</html></div>
								</div>
								<div class="itaDim"></div>
							</div>


							<script type="text/javascript">addEvent(window, 'load', function() { resizeImageAll('tbContent'); });</script>
							<input type="checkbox" name="agreeLicensing" value="T" id="join_detailChkBox1" onchange="primemCkBox(this, 'y')"> <label for="join_detailChkBox1">서비스 이용약관 동의<span class="join_Essential">(필수)</span></label>
							<span onclick="openIta(this);" class="viewDetail">내용보기</span>
						</li>

						<li id="tab-2">
							<!-- <iframe src="/html/info_dumy02.asp" frameborder="0" style="width:100%; height:177px; border:1px solid #EEE; background-color:#f9f9f9; overflow:hidden;"></iframe> -->

							<div class="itaBox itaBox2">
								<div class="itaBoxWrap">
									<div class="itaBoxHead">개인정보 수집 및 이용안내 <span onclick="closeIta(this);"></span></div>
									<div class="itaBoxBody"><!DOCTYPE html>
<html>
<head>
<style>
.mgt0 {margin-top:0 !important;}
.guide_wrap {margin:20px 0; padding:40px 7%; border:1px solid #e7e7e7; background:#fff; font-size:14px;}
.guide_wrap p {margin:20px 0 0 0; font-size:14px; line-height:18px;}
.guide_wrap ol {margin-top:30px; font-size:18px; line-height:24px;}
.guide_wrap ol li {margin-top:10px; font-weight:bold;}
.guide_wrap h2 {margin-top:50px; font-size:18px; line-height:24px;}
</style>
</head>
<body>
<p class="0" style="text-align: right; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-size: 12pt;"> <br /><!-- [if !supportEmptyParas]--></span></p>
<p class="0"><span style="font-size: 12pt;">성심당몰은<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>이하<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;&lsquo;</span>당사<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rsquo;)&nbsp;</span>회원의 개인정보를 매우 중요시 하며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>정보통신망 이용촉진 및 정보보호 등에 관한 법률 및 개인정보보호법을 준수하고 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.&nbsp;</span>당사는 개인정보취급방침을 통하여 회원이 제공한 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보를 위해 어떠한 조치가 취해지고 있는지 알려드립니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">1.&nbsp;</span>개인정보의 수집 및 이용 목적</span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>당사는 회원에게 다양한 서비스를 제공하기 위해 아래와 같은 개인정보를 수집하고 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.&nbsp;</span>단<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>회원의 기본적 인권 침해의 우려가 있는 민감한 개인정보<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>인종 및 민족<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>사상 및 신조<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>출신지 및 본적지<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>정치적 성향 및 범죄기록<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>건강상태 및 성생활 등<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span>와 주민등록번호는 법령상 근거 없이 불필요하게 수집하지 않습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>개인정보 수집 및 활용 동의<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>필수사항<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></p>
<p class="0">&nbsp;</p>
<table style="border-collapse: collapse; mso-table-overlap: never; border: solid #000000 0.28pt;">
<tbody>
<tr>
<td style="width: 140.78pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; background: #4f81bd; border: solid #000000 0.28pt;" valign="top">
<p class="0" style="text-align: center; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-weight: bold; color: #ffffff; font-size: 12pt;">목적</span></p>
</td>
<td style="width: 140.78pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; background: #4f81bd; border: solid #000000 0.28pt;" valign="top">
<p class="0" style="text-align: center; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-weight: bold; color: #ffffff; font-size: 12pt;">항목</span></p>
</td>
<td style="width: 140.76pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; background: #4f81bd; border: solid #000000 0.28pt;" valign="top">
<p class="0" style="text-align: center; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-weight: bold; color: #ffffff; font-size: 12pt;">보유기간</span></p>
</td>
</tr>
<tr>
<td style="width: 140.78pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; border: solid #000000 0.28pt;" valign="top">
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">-&nbsp;</span>멤버십 필수 서비스 제공<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">,&nbsp;</span>계약의 성립<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">/</span>유지<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">/</span>종료를 위한 본인 식별 및 실명확인<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">,&nbsp;</span>회원에 대한 고지 사항 전달<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">&nbsp;,&nbsp;</span>카드발급<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">,&nbsp;</span>포인트 적립 및 사용<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">,&nbsp;</span>포인트 정산<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">,&nbsp;</span>고객센터 운영<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">,&nbsp;</span>불량회원 부정이용 방지 및 비인가 사용방지<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">,&nbsp;</span>혜택 및 서비스 개발을 위한 통계분석 및 연구조사</span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">-&nbsp;</span>만<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">&nbsp;14</span>세 미만 회원가입 처리를 위한 법정 대리인 동의 여부 확인 및 추후 법정 대리인 본인확인</span></p>
</td>
<td style="width: 140.78pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; border: solid #000000 0.28pt;" valign="top">
<p class="0"><span style="font-size: 12pt;">성명<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">,&nbsp;</span>아이디<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">,&nbsp;</span>비밀번호<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">,&nbsp;</span>생년월일<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">,&nbsp;</span>성별<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">,&nbsp;</span>이메일<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">,&nbsp;</span>주소<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">,&nbsp;</span>휴대전화 번호<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">,</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">DM&nbsp;</span>수신여부<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">,&nbsp;</span>본인확인기관을 통해 받는 결과값<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">(CI)</span></span></p>
</td>
<td style="width: 140.76pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; border: solid #000000 0.28pt;" valign="top">
<p class="0"><span style="font-size: 12pt;">회원 탈퇴 후<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">&nbsp;30</span>일까지</span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">③ </span>개인정보 수집 및 활용 동의<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>선택사항<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></p>
<p class="0">&nbsp;</p>
<table style="border-collapse: collapse; mso-table-overlap: never; border: solid #000000 0.28pt;">
<tbody>
<tr>
<td style="width: 140.78pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; background: #4f81bd; border: solid #000000 0.28pt;" valign="top">
<p class="0" style="text-align: center; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-weight: bold; color: #ffffff; font-size: 12pt;">목적</span></p>
</td>
<td style="width: 140.78pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; background: #4f81bd; border: solid #000000 0.28pt;" valign="top">
<p class="0" style="text-align: center; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-weight: bold; color: #ffffff; font-size: 12pt;">항목</span></p>
</td>
<td style="width: 140.76pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; background: #4f81bd; border: solid #000000 0.28pt;" valign="top">
<p class="0" style="text-align: center; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-weight: bold; color: #ffffff; font-size: 12pt;">보유기간</span></p>
</td>
</tr>
<tr>
<td style="width: 140.78pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; border: solid #000000 0.28pt;" valign="top">
<p class="0"><span style="font-size: 12pt;">사은<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">/</span>판촉행사 등 각종 이벤트<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">,&nbsp;</span>행사 관련 정보안내 및 제반 마케팅 활동<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">,&nbsp;</span>당사의 상품<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">/</span>서비스 안내 및 권유</span></p>
</td>
<td style="width: 140.78pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; border: solid #000000 0.28pt;" valign="top">
<p class="0"><span style="font-size: 12pt;">상기 목적에 따라 수집하는 개인정보 항목</span></p>
</td>
<td style="width: 140.76pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; border: solid #000000 0.28pt;" valign="top">
<p class="0"><span style="font-size: 12pt;">회원 탈퇴 후<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">&nbsp;30</span>일까지</span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">④ </span>서비스 이용 또는 사업처리 과정에서 생성 수집되는 각종정보</span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">-&nbsp;</span>서비스이용기록<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>접속로그<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>쿠키<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>결제기록<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>이용정지기록 등</span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">2.&nbsp;</span>개인정보 수집 방법 및 수집에 대한 동의</span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>개인정보 수집에 대한 동의 절차</span></p>
<p class="0"><span style="font-size: 12pt;">회원께서 개인정보취급방침과 서비스이용약관 등에 대해 <span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">『</span>동의합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">』</span>버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 봅니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>동의거부 권리와 불이익</span></p>
<p class="0"><span style="font-size: 12pt;">회원은 서비스 제공 및 이용의 목적으로 개인정보를 제공하는 것에 동의하지 않을 수 있으며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,</span></span></p>
<p class="0"><span style="font-size: 12pt;">미동의로 인한 불이익<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>경품<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>가격할인 등의 혜택 제외<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span>은 당사가 책임지지 않습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">3.&nbsp;</span>개인정보 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">3</span>자 제공에 대한 동의</span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>당사는 회원의 개인정보를<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;&lsquo;</span>개인정보 수집<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>이용목적 및 수집하는 개인정보 항목<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rsquo;</span>에서 고지한 범위 내에서 이용하며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>동 범위를 초과하여 이용하거나 타인 또는 타기업<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>기관에 제공하지 않습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.&nbsp;</span>단 회원이 사전에 동의하거나<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>서비스 제공에 따른 요금정산을 위하여 필요한 경우<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>통계작성 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 알아볼 수 없는 형태로 가공하여 제공하는 경우<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>법률에 특별한 규정이 있는 경우<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>관계법률에서 정한 절차와 방법에 따라 수사기관이 개인정보 제공을 요구하는 경우는 별도로 제외됩니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">4.&nbsp;</span>개인정보처리의 위탁</span></p>
<p class="0"><span style="font-size: 12pt;">당사는 개인정보의 처리와 관련하여 아래와 같이 업무를 위탁하고 있으며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>관계 법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0">&nbsp;</p>
<table style="border-collapse: collapse; mso-table-overlap: never; border: solid #000000 0.28pt;">
<tbody>
<tr>
<td style="width: 140.78pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; background: #4f81bd; border: solid #000000 0.28pt;" valign="center">
<p class="0" style="text-align: center; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-weight: bold; color: #ffffff; font-size: 12pt;">수탁업체</span></p>
</td>
<td style="width: 140.78pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; background: #4f81bd; border: solid #000000 0.28pt;" valign="center">
<p class="0" style="text-align: center; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-weight: bold; color: #ffffff; font-size: 12pt;">위탁범위</span></p>
</td>
<td style="width: 140.76pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; background: #4f81bd; border: solid #000000 0.28pt;" valign="center">
<p class="0" style="text-align: center; mso-pagination: none; text-autospace: none; mso-padding-alt: 0.0pt 0.0pt 0.0pt 0.0pt;"><span style="font-weight: bold; color: #ffffff; font-size: 12pt;">보유 및 이용기간</span></p>
</td>
</tr>
<tr>
<td style="width: 140.78pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; border: solid #000000 0.28pt;" valign="center">
<p class="0"><span style="font-size: 12pt;">코레일네트웍스<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">(</span>주<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">)/(</span>주<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">)</span>롯데로지스틱스</span></p>
</td>
<td style="width: 140.78pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; border: solid #000000 0.28pt;" valign="center">
<p class="0"><span style="font-size: 12pt;">성심당 쇼핑몰 내 물품배송</span></p>
</td>
<td style="width: 140.76pt; height: 11.28pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; border: solid #000000 0.28pt;" rowspan="4" valign="center">
<p class="0"><span style="font-size: 12pt;">회원탈퇴 및 위탁계약 종료 또는</span></p>
<p class="0"><span style="font-size: 12pt;">위탁 목적 달성 시까지</span></p>
</td>
</tr>
<tr>
<td style="width: 140.78pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; border: solid #000000 0.28pt;" valign="center">
<p class="0"><span style="font-size: 12pt;"><span style="letter-spacing: 0pt;">㈜</span>엔씨지글로벌</span></p>
</td>
<td style="width: 140.78pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; border: solid #000000 0.28pt;" valign="center">
<p class="0"><span style="font-size: 12pt;">시스템 운영 위탁</span></p>
</td>
</tr>
<tr>
<td style="width: 140.78pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; border: solid #000000 0.28pt;" valign="center">
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">NICE</span>신용평가정보<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">(</span>주<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">)/</span>나이스페이먼츠<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">(</span>주<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">)</span></span></p>
</td>
<td style="width: 140.78pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; border: solid #000000 0.28pt;" valign="center">
<p class="0"><span style="font-size: 12pt;">쇼핑몰 내 결재서비스</span></p>
</td>
</tr>
<tr>
<td style="width: 140.78pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; border: solid #000000 0.28pt;" valign="center">
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">NICE</span>평가정보<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">(</span>주<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">)</span></span></p>
</td>
<td style="width: 140.78pt; height: 2.82pt; padding: 1.41pt 5.10pt 1.41pt 5.10pt; border: solid #000000 0.28pt;" valign="center">
<p class="0"><span style="font-size: 12pt;">본인 인증확인 서비스</span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">5.&nbsp;</span>개인정보 관리 책임자</span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>회원의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 당사는 개인정보관리책임자를 두고 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.&nbsp;</span>개인정보와 관련한 문의사항이 있으시면 아래의 개인정보관리책임자에게 연락 주시기 바랍니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.&nbsp;</span>회원의 문의사항에 신속하고 성실하게 답변해 드리겠습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0"><span style="font-weight: bold; font-size: 12pt;">개인정보관리책임자</span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; font-weight: bold;">성 명</span><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt; font-weight: bold;">&nbsp;:&nbsp;</span><span style="mso-fareast-font-family: 함초롬바탕; font-weight: bold;">윤현돈</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; font-weight: bold;">소속부서</span><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt; font-weight: bold;">&nbsp;:&nbsp;</span><span style="mso-fareast-font-family: 함초롬바탕; font-weight: bold;">경영지원부 전산팀</span><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt; font-weight: bold;">&nbsp;</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; font-weight: bold;">직 위</span><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt; font-weight: bold;">&nbsp;: </span><span style="mso-fareast-font-family: 함초롬바탕; font-weight: bold;">계장</span><span style="mso-fareast-font-family: 함초롬바탕; font-weight: bold;">전자우편 </span><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt; font-weight: bold;">:&nbsp;yoonhd81@sungsimdang.co.kr</span></span></p>
<p class="0"><span style="font-size: 12pt;">전화번호 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">: 1588-8069</span></span></p>
<p class="0"><span style="font-weight: bold; font-size: 12pt;">개인정보관리실무자</span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; font-weight: bold;">성 명</span><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt; font-weight: bold;">&nbsp;: </span><span style="mso-fareast-font-family: 함초롬바탕; font-weight: bold;">이경희</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; font-weight: bold;">소속부서</span><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt; font-weight: bold;">&nbsp;:&nbsp;</span><span style="mso-fareast-font-family: 함초롬바탕; font-weight: bold;">경영지원부 고객지원팀</span><span style="mso-fareast-font-family: 함초롬바탕; font-weight: bold;">직 위 </span><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt; font-weight: bold;">: </span><span style="mso-fareast-font-family: 함초롬바탕; font-weight: bold;">계장</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; font-weight: bold;">전자우편</span><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt; font-weight: bold;">&nbsp;:&nbsp;head@sungsimdang.co.kr</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; font-weight: bold;">전화번호</span><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt; font-weight: bold;">&nbsp;: 1588-8069</span></span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">6.&nbsp;</span>정보 자동 수집 장치의 설치<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">/</span>운영 및 거부에 관한 사항</span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>당사는 개인화되고 맞춤화된 서비스를 제공하기 위해서 이용자의 정보를 수시로 불러오는<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;&lsquo;</span>쿠키<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(cookie)&rsquo;</span>를 사용합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.&nbsp;</span>쿠키는 웹사이트를 운영하는데 이용되는 서버가 이용자의 브라우저에게 보내는 아주 작은 텍스트 파일로 이용자 컴퓨터의 하드디스크에 저장되며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>쿠키는 개인을 식별하는 정보를 자동적<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">/</span>능동적으로 수집하지 않으며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>이용자는 언제든지 이러한 쿠키의 저장을 거부하거나 삭제할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>당사는 다음과 같은 목적을 위해 쿠키를 사용합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">1)&nbsp;</span>이용자의 접속 빈도나 방문 시간 등을 분석하고 이용자의 취향과 관심분야를 파악하여 타겟<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(target)&nbsp;</span>마케팅 및 서비스 개편 등의 척도로 활용합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">2)&nbsp;</span>당사가 진행하는 각종 이벤트에서 귀하의 참여 정보 및 방문 회수를 파악하여 차별적인 응모 기회를 부여하고 개인의 관심 분야에 따라 차별화된 정보를 제공하기 위한 자료로 이용됩니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">③ </span>귀하는 쿠키 설치에 대한 선택권을 가지고 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.&nbsp;</span>따라서<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>귀하는 웹 브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>쿠키가 저장될 때마다 확인을 거치거나<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>아니면 모든 쿠키의 저장을 거부할 수도 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.&nbsp;</span>귀하께서 쿠키 설치를 거부하셨을 경우 홈페이지 일부 서비스 제공에 어려움이 있을 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">④ </span>쿠키 설정을 거부하는 방법으로는</span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">1)&nbsp;</span>쿠키 설치 허용 여부를 지정하는 방법<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;(Internet Explorer</span>를 사용하고 있는 경우<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">i. [</span>도구<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">]&nbsp;</span>메뉴에서<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;[</span>인터넷 옵션<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">]</span>을 선택합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">ii. [</span>개인정보 탭<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">]</span>을 클릭합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">iii. [</span>개인정보보호 수준<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">]</span>을 설정하시면 됩니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">2)&nbsp;</span>받은 쿠키를 보는 방법<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;(Internet Explorer</span>를 사용하고 있는 경우<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">i. [</span>도구<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">]</span>메뉴에서<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;[</span>인터넷 옵션<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">]</span>을 선택합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">ii. [</span>일<span style="color: #000000;">반 탭<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>기본 탭<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)]</span>에서<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;[</span>설정<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">]</span>을 클릭한 다음<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;[</span>파일 보기<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">]</span>를 선택합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt; color: #000000;">&nbsp;</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">7.&nbsp;</span>개인정보의 열람<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>정정 방법</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;">회원은 언제든지 등록되어 있는 회원의 개인정보를 열람하거나 정정하실 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.&nbsp;</span>회원의 개인정보에 대한 열람 또는 정정을 하고자 할 경우에는 홈페이지 내<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;[</span>개인정보관리<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">]&nbsp;</span>또는<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;[</span>개인정보변경<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">]</span>을 클릭하여 본인 확인 절차를 거치신 후 직접 열람 또는 정정하거나<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>위 개인정보 관련 민원 처리 부서로 연락하시면 지체 없이 조치하겠습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt; color: #000000;">&nbsp;</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;">회원이 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.&nbsp;</span>또한 잘못된 개인정보를 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">3</span>자에게 이미 제공한 경우에는 정정 처리결과를 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">3</span>자에게 지체 없이 통지하여 정정이 이루어지도록 조치하겠습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt; color: #000000;">&nbsp;</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;">다만<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>다음의 경우에는 개인정보의 열람 및 정정을 제한할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">-&nbsp;</span>본인 또는 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">3</span>자의 생명<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>신체<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>재산 또는 권익을 현저하게 해할 우려가 있는 경우</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">-&nbsp;</span>당해 서비스제공자의 업무에 현저한 지장을 미칠 우려가 있는 경우</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">-&nbsp;</span>법령에 위반하는 경우 등</span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt; color: #000000;">&nbsp;</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">8.&nbsp;</span>동의 철회<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>회원 탈퇴<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)&nbsp;</span>방법</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;">회원은 회원가입 시 개인정보의 수집<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">-</span>이용 및 제공에 대해 동의하신 내용을 언제든지 철회하실 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.&nbsp;</span>동의철회<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>회원탈퇴<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span>는 홈페이지 내<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;[</span>회원탈퇴<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">]</span>를 클릭하여 본인 확인 절차를 거치신 후 직접 동의철회<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(</span>회원탈퇴<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span>를 하시거나<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>위 개인정보 관련 민원 처리 부서로 연락하시면 지체 없이 회원의 개인정보를 파기하는 등 필요한 조치를 하겠습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt; color: #000000;">&nbsp;</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">9.&nbsp;</span>개인정보의 보유기간 및 이용기간</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(1)&nbsp;</span>당사는 개인정보의 수집목적 또는 제공받은 목적이 달성된 때에는 회원의 개인정보를 지체 없이 파기합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.&nbsp;</span>다만<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>다음 각 호의 경우 일정기간 동안 예외적으로 수집한 회원정보의 전부 또는 일부를 보관할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>회원가입정보의 경우</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">-&nbsp;</span>수집한 회원 정보를 회원 탈퇴 후<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;30</span>일간 보유</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(30</span>일의 유예기간은<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;30</span>일 내 변심으로 인한 재가입 시 이전 아이디의 사용 및 회원님의 활동 데이터를 복구하기 위함이며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>무분별한 회원탈퇴 및 재가입으로 인한 피해를 줄이기 위함입니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.)</span></span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>대금지급정보의 경우<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;:&nbsp;</span>대금의 완제일 또는 채권소멸시효기간이 만료된 때</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">③ </span>배송정보의 경우<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;:&nbsp;</span>물품 또는 서비스가 인도되거나 제공된 때</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">④ </span>설문조사<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>이벤트 등의 목적을 위하여 수집한 경우<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">:&nbsp;</span>당해 설문조사<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>이벤트 등이 종료한 때</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">⑤ </span>탈퇴한 회원이 자신의 게재물에 대한 삭제를 요청 시 즉각 삭제 처리합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;(2)&nbsp;</span>위 예외 경우에도 불구하고 상법 및<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;&lsquo;</span>전자상거래 등에서 소비자보호에 관한 법률<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&rsquo;&nbsp;</span>등 관련 법령의 규정에 의하여 다음과 같이 일정기간 보유해야 할 필요가 있을 경우에는 관련 법령이 정한 기간 또는 다음 각 호의 기간 동안 회원정보를 보유할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;">상법 등 법령의 규정에 의하여 보존할 필요성이 있는 경우</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>계약 또는 청약철회 등에 관한 기록<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;: 5</span>년</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>대금결제 및 재화 등의 공급에 관한 기록<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;: 5</span>년<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;(</span>전자상거래 등에서의 소비자 보호에 관한 법률의거<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">)</span></span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">③ </span>소비자의 불만 또는 분쟁처리에 관한 기록<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;: 3</span>년</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">-&nbsp;</span>기타 정당한 절차에 따라 보유기간을 미리 회원에게 고지하거나 명시한 경우<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;:&nbsp;</span>고지한 보유 기간까지</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(3)&nbsp;</span>개인정보를 파기하는 때에는 다음과 같은 방법에 의합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">-&nbsp;</span>종이에 출력된 개인정보<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;:&nbsp;</span>분쇄기로 분쇄하거나 소각</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">-&nbsp;</span>전자적 파일형태로 저장된 개인정보<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;:&nbsp;</span>기록을 재생할 수 없는 기술적 방법을 사용하여 삭제</span></p>
<p class="0">&nbsp;</p>
<p class="0"><span style="font-size: 12pt; color: #000000;"> <!-- [if !supportEmptyParas]-->&nbsp;<!--[endif]--> </span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">10.&nbsp;</span>만<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;14</span>세 미만 아동의 개인정보보호</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>당사는 만<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">14</span>세 미만 아동의 가입 시 개인정보를 수집하거나 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">3</span>자에게 제공하고자 하는 경우 법정대리인의 동의를 받습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>만<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">14</span>세 미만 아동의 법정대리인은 아동의 개인정보의 열람<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>정정<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>동의 철회를 요청할 수 있으며<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>이러한 요청이 있을 경우 당사는 지체 없이 필요한 조치를 취합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">③ </span>만<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">14</span>세 미만 아동의 정보를 제<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">3</span>자에게 제공하고자 하는 경우에는 법정대리인의 동의를 받습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt; color: #000000;">&nbsp;</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">11.&nbsp;</span>이용자 및 법정 대리인 권리와 그 행사방법</span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>회원 및 법정 대리인은 언제든지 등록되어 있는 자신 또는 만<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;14</span>세 미만의 아동의 개인정보를 조회 하거나 수정 가능하며 회원 탈퇴를 통해 제공한 개인정보이용에 관한 동의를 철회할 수 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt; color: #000000;"><span style="letter-spacing: 0pt;">② </span>회원이 개인정보의 오류에 대한 정정은 당사가 운영하는 홈페이지 또는 고객센터로 연락하여 수정하시면 됩니다<span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt;">.</span></span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">12.&nbsp;</span>개인정보보호를 위한 기술적<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>관리적 대책</span></p>
<p class="0"><span style="font-size: 12pt;">당사는 개인정보를 취급함에 있어 개인정보가 분실<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>누출<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>변조 또는 훼손되지 않도록 다음과 같은 관리적 대책을 강구하고 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">① </span>개인정보취급자 인원의 최소화는 물론 각 직원 별 회원정보 접근 권한을 달리하고<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>수시보안교육을 통해 본 방침의 준수를 강조하고 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">② </span>당사는 이용자 개인의 실수나 기본적인 인터넷의 위험성 때문에 일어나는 일들에 대해 책임을 지지 않습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.&nbsp;</span>회원 개개인이 본인의 개인정보를 보호하기 위해서 자신의 아이디와 비밀번호를 적절하게 관리하고 그에 대한 책임을 져야 합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">③ </span>그 외 내부 관리자의 실수나 기술관리 상의 사고로 인해 개인정보의 상실<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>유출<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>변조<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>훼손이 유발될 경우 당사는 즉각 고객께 사실을 알리고 적절한 대책과 보상을 강구할 것입니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">④ </span>당사는 보안사고 및 고객님의 개인정보를 안전하게 보호하기 위해 내부망 내에 침입방지시스템 및 침입차단시스템을 갖추고 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">⑤ </span>당사는<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;128Bit SSL&nbsp;</span>암호화 알고리즘을 이용하여 네트워크 상의 개인정보를 안전하게 전송할 수 있는 방식을 채택하고 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">⑥ </span>당사는 백신프로그램을 이용하여 컴퓨터 바이러스에 의한 피해를 방지하기 위한 조치를 취하고 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.&nbsp;</span>백신프로그램은 주기적으로 업데이트되며 갑작스런 바이러스가 출현할 경우 백신이 나오는 즉시 이를 제공함으로써 개인정보가 침해되는 것을 방지하고 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span style="mso-fareast-font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">⑦ </span>전산실은 통제구역으로 지정하여 출입을 엄격히 통제하고 있습니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">13.&nbsp;</span>개인정보침해 관련 상담 및 신고</span></p>
<p class="0"><span style="font-size: 12pt;">개인정보침해에 대한 신고<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&middot;</span>상담이 필요하신 경우에는 개인정보관리책임자에 전화 또는 서면<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>이메일 주소로 연락하시거나<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">,&nbsp;</span>한국인터넷진흥원<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(KISA)</span>내 개인정보침해신고센터로 문의하시기 바랍니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">[</span>개인정보침해신고센터<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">]</span></span></p>
<p class="0"><span style="font-size: 12pt;">전화 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">: 118 </span></span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">URL : www.118.or.kr</span><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">[</span>대검찰청 사이버수사과<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">]</span></span></p>
<p class="0"><span style="font-size: 12pt;">전화 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">: 1301</span></span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">URL : www.spo.go.kr</span><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">[</span>경찰청 사이버안전국<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">]</span></span></p>
<p class="0"><span style="font-size: 12pt;">전화 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">: 182&nbsp;</span></span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">URL : cyberbureau.police.go.kr</span></p>
<p class="0"><span style="font-size: 12pt;"> <!-- [if !supportEmptyParas]-->&nbsp;<!--[endif]--> </span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">[</span>개인정보 분쟁조정위원회<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">]</span></span></p>
<p class="0"><span style="font-size: 12pt;">전화 <span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">: 02-2100-2499</span></span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">URL : www.kopico.go.kr</span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">14.&nbsp;</span>정책 변경에 따른 공지의무</span></p>
<p class="0"><span style="font-size: 12pt;">본 개인정보취급방침은<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;2015</span>년<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;12</span>월<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;1</span>일에 제정되었으며 법령정책 또는 보안기술의 변경에 따라 내용의 추가삭제 및 수정이 있을 시에는 변경되는 개인정보취급방침을 시행하기 전에 성심당이 운영하는 인터넷사이트의 첫 페이지를 통해 변경이유 및 내용 등을 공지합니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.&nbsp;</span>본 개인정보취급방침의 내용은 수시로 변경될 수 있으므로 사이트를 방문하실 때마다 이를 확인하시기 바랍니다<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">.</span></span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0"><span style="font-size: 12pt;"><span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">-&nbsp;</span>공고일자<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;: 2020</span>년<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;9</span>월<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;24</span>일<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;/&nbsp;</span>시행일자<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;: 2020</span>년<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;10</span>월<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">&nbsp;1</span>일</span></p>
<p class="0"><span lang="EN-US" style="font-family: 함초롬바탕; letter-spacing: 0pt; font-size: 12pt;">&nbsp;</span></p>
<p class="0"><span style="font-size: 12pt;">개인정보처리방침<span lang="EN-US" style="font-family: 함초롬바탕; mso-font-width: 100%; letter-spacing: 0.0pt; mso-text-raise: 0.0pt;">(v1.0) 2015/12/14 </span>제정</span></p>
</body>
</html></div>
									<p class="check_notice">※ 귀하는 ㈜성심당쇼핑몰에서 수집하는 개인정보 수집 및 이용에 거부할 권리가 있습니다. 다만, 필수항목 동의를 거부할 경우에는 성심당쇼핑몰 회원 서비스 가입 및 이용을 할 수 없습니다.</p>
								</div>
								<div class="itaDim"></div>
							</div>


							<input type="checkbox" name="agree_po" value="T" id="join_detailChkBox2" onchange="primemCkBox(this, 'y')"> <label for="join_detailChkBox2">개인정보 수집 및 이용 동의<span class="join_Essential">(필수)</span></label>
							<span onclick="openIta(this);" class="viewDetail">내용보기</span>
						</li>

						<li id="tab-3">
							<input type="checkbox" name="agree_age" value="T" id="join_detailChkBox3" onchange="primemCkBox(this, 'y')"> <label for="join_detailChkBox3">만 14세 이상입니다.<span class="join_Essential">(필수)</span></label>
						</li>
						
					</ul>
				</div> <!-- joinPop_textWrap 끝 -->
			</div> <!-- joinPop_textInfo 끝 -->




<!-- /////////////	이용약관 구조 추가 끝 -->

<script type="text/javascript">
	// 회원가입 팝업창 약관변경
	$(".joinPop_infoTitle li").click(function(){
		var tab_id = $(this).attr("data-tab");

		$(".joinPop_infoTitle li").removeClass("on");
		$(".joinPop_infoCont li").removeClass("on");
		$(".join_detailChkBox > div").removeClass("on");

		$(this).addClass("on");
		$("#"+tab_id).addClass("on");
	});

	function openIta(target){
		var target = $(target).parent().find(".itaBox");

		target.addClass("on");
	}

	function closeIta(target){
		$(target).closest(".itaBox").removeClass("on");
	}

</script>

				</li>
			</ul> <!-- 페이지 전환 div -->


	</form>
	<!-- 약관 끝 -->

	<div class="etc_type">
		<ul class="etc_btn">
			<li class="align_left"><a href="javascript:submitChk(',email,birthDate', ',이메일,생일');" class="btn_yellow02"> 회원가입</a></li>
			<li class="align_right"><a href="javascript:history.back();" class="btn_gray02">취소</a></li>
		</ul>
	</div>

</div>
<!-- 회원가입 끝 -->
<br />
<br />
<br />
<br />
<br />
<br />
<br />


<div id="popAddr"></div>


<!-- quick -->
<!--include virtual="/_include/quick.asp"-->
<!-- quick -->

<!-- copyright -->

		</div>
	</div>
	</div>
<!-- BODY : 끝 -->


<!-- FOOTER : 시작 -->

<div style='width:100%'>
<div style='width:100%;float:left'>
<a name='CSA_41'></a>
<!-- 탬플릿 : 성심당 푸터영역 -->
<style type="text/css">
.footer {text-align:left; background-color: #563320;}
.footer .links { line-height:60px; overflow:hidden; border-bottom: 1px solid rgba(255,255,255,0.3);}
.footer .links a {margin:0 15px; color:#fff; font-size:15px; position: relative;}
.footer .links a:first-child {margin-left:0;}
.footer .links a:after {content: ""; display:block; position: absolute; width:1px; height: 10px; top: 6px;
left: -15px; background-color: #fff; opacity: 0.5;}
.footer .links .snsIcons a {margin: 0;}
.footer .links .snsIcons a:after{display: none;}
.footer .links a:first-child:after{display: none;}
.footer .adrCopyright { padding:25px 0px 45px 0px; overflow:hidden; box-sizing:border-box;}
.footer .contAuto {position:relative;width:1280px; margin:0 auto;}
.footer .contAuto .footlogo{position:absolute;top:50%;right:0; transform:  translate(0px, -50%);}
.footer .contAuto .footCopyright{line-height:24px;color: #d7cdc6; font-size: 15px;}
.footer .contAuto .footCopyright span{margin-left: 10px;}
.footer .contAuto .snsIcons {float: right;}
.footer .contAuto .snsIcons img{margin-right: 10px; width: 35px;}
</style>
<!-- 탬플릿 : 성심당 푸터영역 -->

<div class="footer">
    <div class="links">
        <div class="contAuto">
            <a href="http://www.sungsimdang.co.kr/">회사소개</a>
            <a href="/cscenter/search_market.asp">매장안내</a>
            <a href="/other/licensing.asp">이용약관</a>
            <a href="/cscenter/">고객센터</a>
            <a href="/other/privacy.asp">개인정보처리방침</a>
            <div class="snsIcons">
            <a href='https://www.instagram.com/sungsimdang_official/' target=''><img src='https://www.sungsimdangmall.co.kr/data/sungsimdang/banner/IMGBIN_instagram-facebook-png_vfDUv1a6_1.png' border=0></a>
            <a href='https://facebook.com/sungsimdang4114' target=''><img src='https://www.sungsimdangmall.co.kr/data/sungsimdang/banner/IMGBIN_facebook-png_BjuQQ9YG_1.png' border=0></a>
            </div>
        </div>
        
    </div>

    <form name="frm1">
    <input name="wrkr_no" type="hidden" value="305-81-48738"/>

    <div class="adrCopyright">
        <div class="contAuto">
            <div class="footCopyright">
                대표: 임영진 <span>법인명: 로쏘 주식회사</span> <span>전화: 1588-8069</span><span>E-mail: yoonhd81@sungsimdang.co.kr</span><br>
                주소: 대전 중구 대종로480번길 15(은행동)<span>개인정보관리책임자: 윤현돈 (yoonhd81@sungsimdang.co.kr)</span><br>
                사업자등록번호: 305-81-48738<span>통신판매신고: 제2015-대전중구-0015호</span> <br>
                <!-- 팩스: 042-256-4482 -->
    <!-- <span style="" class="footCopyrightbtn" onclick="onopen();" valign="absmiddle">사업자정보확인</span> -->
                <!-- Copyright ⓒ 2016 성심당쇼핑몰 All rights reserved -->
            </div>
            <div class="footlogo"><img src='https://www.sungsimdangmall.co.kr/data/sungsimdang/banner/ft_logo(white).png' border=0></div>
        </div>
    </div>
    

    </form>
</div>
</div>
</div>


<!-- FOOTER : 끝 -->

</div>

<div style="display:none">

</div>

<!-- 카테고리 -->
<script type="text/javascript" src="/jscript/categoryMenu.js"></script>





<!--  // 광고/스크립트 영역 불러오기 20180116  joonyus -->

<!--   광고/스크립트 영역 불러오기 20180116  joonyus  //-->


</body>
</html>

<!--모바일버전 시작 -->


<script type="text/javascript">
<!--
function sendit()
{
	location.href="/m/main/main.asp"
}
//-->
</script>

<!--모바일버전 끝 -->
<!-- copyright -->
<script>
	var timer;
	/* 휴대폰 인증 카운트 인증번호 전송 클릭 */
	function certificationCount(sendType){
		var minute = 3;
		var second = 0;
		if (sendType == "sms"){
			$('.smsSubmit').hide();
			$('.smsDisplayCount').show();
//			$('input[name="mobile1"]').attr("readonly","readonly");
//			$('input[name="mobile2"]').attr("readonly","readonly");
//			$('input[name="mobile3"]').attr("readonly","readonly");
			$('input[name="mobile"]').attr("readonly","readonly");
			//$('input[name="smsConfirm"]').attr("readonly",false);
			$(".smsCountTimeMinute").html(minute);
			$(".smsCountTimeSecond").html(second);
		}else if (sendType == "email"){
			$('.emailSubmit').hide();
			$('.displayCount').show();
			$('input[name="chkEmailID"]').attr("readonly","readonly");
			$('input[name="emailDomain"]').attr("readonly","readonly");
			//$('input[name="emailconfirm"]').attr("readonly",false);
			$(".countTimeMinute").html(minute);
			$(".countTimeSecond").html(second);
		}

		timer = setInterval(function () {
			if (sendType == 'email'){
				$(".countTimeMinute").html(minute);
				$(".countTimeSecond").html(second);
			}else{
				$(".smsCountTimeMinute").html(minute);
				$(".smsCountTimeSecond").html(second);
			}

			if(second == 0 && minute == 0){	// 시간 끝나면 세션 종료
				var sessionEnd = '';	// 세션 끝
				clearInterval(timer); /* 타이머 종료 */

				if (sendType == 'email'){
					$('input[name="chkEmailID"]').attr("readonly",false);
					$('input[name="emailDomain"]').attr("readonly",false);
					$('input[name="emailconfirm"]').val('');
					$('input[name="emailconfirm"]').attr("readonly",false);

					$('.displayCount').hide();	// 시간 hide
					$('.emailSubmit').show();
					$('#emailGo').val('0');
				}else{
//					$('input[name="mobile1"]').attr("readonly",false);
//					$('input[name="mobile2"]').attr("readonly",false);
//					$('input[name="mobile3"]').attr("readonly",false);
					$('input[name="mobile"]').attr("readonly",false);

					$('input[name="smsConfirm"]').val('');
					$('input[name="smsConfirm"]').attr("readonly",false);

					$('.smsDisplayCount').hide();	// 시간 hide
					$('.smsSubmit').show();
					$('#mobileGo').val('0');
				}
			}else{
				second--;

				// 분처리
				if(second < 0){
					minute--;
					second = 59;
				}
			}
		}, 1000); /* millisecond 단위의 인터벌 */
	};

	function cntCheck(sendType){
		var varNum = 0;
		if (sendType == 'email'){
			varNum = Number($('#emailconfirm').val().length);
		}else{
			varNum = Number($('#smsConfirm').val().length);
		}
		if (Number(varNum) == 6){
			smsSendCheck(sendType);
		}
	}

	/* 인증번호 확인버튼 */
	function smsSendCheck(sendType){
		var sValue = '';

		$.ajax({
			type:'post',
			url:'/common/ajax/exec_getIDSessionConfirm.asp',
			success:function(data){
				sValue = data;

				var tValue = '';
				if (sendType == 'email'){
					tValue = $('#emailconfirm').val();	// 텍스트 값
				}else{
					tValue = $('#smsConfirm').val();	// 텍스트 값
				}

				if (tValue == ""){
					alert('인증번호를 입력해주세요.');
					return false;
				}else if (sValue == tValue)
				{
					if (sendType == 'email'){
						clearInterval(timer);		// 타이머 종료
						$('.displayCount').html("인증완료");
						$('#certification_email').val(1); // 인증확인
						$('#emailconfirm').attr("readonly","readonly");
						$('#emailGo').val('0');
					}else{
						clearInterval(timer);		// 타이머 종료
						$('.smsDisplayCount').html("인증완료");
						$('#certification_mobile').val(1); // 인증확인
						$('#smsConfirm').attr("readonly","readonly");
						$('#mobileGo').val('0');
					}
				}else{
					alert('잘못된 인증번호 입니다.');
					if (sendType == 'email'){
						$('#emailconfirm').val('');
					}else{
						$('#smsConfirm').val('');
					}
					return false;
				}
			}
		});
	}

    /* 한글입력 방지 */
	$( function(){
		$('#chkID2').on("blur keyup", function() {
			//2019-10-25 khs : 영문,숫자,언더바만 허용
			//$(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '' ) );
			$(this).val( $(this).val().replace( /[^a-zA-Z0-9_]+/gi, '' ) );
		});
	})

	function settingSms(){
		alert('sms환경설정을 확인해주세요.');
		return false;
	}
</script>

<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>

<script>
	// 다음지도 api
	function openNewAddr(mode){				//ord, rcv.
		var f = document.Frm;
		set_zipcode(mode);
	}
	function set_zipcode(mode){			//ord, rcv
		/////R(도로명), J(지번)
		////K(한글주소), E(영문주소)
		var width = 500; //팝업의 너비
		var height = 600; //팝업의 높이
		new daum.Postcode({
			oncomplete: function(data) {
				var e_address1=data.roadAddressEnglish;	///////영문도로명주소
				var e_address2=data.jibunAddressEnglish;	/////// 영문지번주소
				var address1=data.roadAddress;	////////한글도로명주소
				var address2=data.jibunAddress;	////////// 한글지번주소
				var code=data.zonecode;  //////////우편번호

				var SelectedType=data.userSelectedType;
				var LanguageType=data.userLanguageType;

				if (SelectedType=='J')	{/////////////지번
						$("#"+mode+"addr").val(address2);
						$("#"+mode+"addrDetail").val('');
						$("#"+mode+"addrDetail").focus();
				}
				if (SelectedType=='R')	{/////////////도로명
					$("#"+mode+"addr").val(address1);
					$("#"+mode+"addrDetail").val('');
				}

				$("#"+mode+"post").val(code);
			}
		}).open({
			left: (window.screen.width / 2) - (width / 2),
		    top: (window.screen.height / 2) - (height / 2)
		});
	}
</script>


<script>
$(document).ready(function(){
	readyFunction();	// 파일 업로드, 수정, 삭제, 확대 셋팅.
	
});

function readyFunction(){
	$(document).on('change', '.preview-image .upload-hidden', function(){
		$(this).parent().addClass('on');

		if ($(this).attr('name') == 'imgEtc'){	// 다른이미지의 경우에만 이미지 추가.
			var previewCnt = Number($('#previewImgAdd>li').length);
			var maxPreviewCnt = Number('10');
			var imgOn = $('#previewImgAdd .filebox').eq(previewCnt-1).hasClass('on');
			if (previewCnt < maxPreviewCnt && imgOn){
				addPreviewImg();
			}
		}

		var parent = $(this).parent();
		parent.children('.upload-display').remove();

		if(window.FileReader){ //image 파일만
			if (!$(this)[0].files[0].type.match(/image\//)) return;

			var reader = new FileReader();
			reader.onload = function(e){
				var src = e.target.result;
				parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
			}
				reader.readAsDataURL($(this)[0].files[0]);
		}
		else {
			$(this)[0].select();
			$(this)[0].blur();
			var imgSrc = document.selection.createRange().text;
			parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

			var img = $(this).siblings('.upload-display').find('img');
			img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";
		}
	});
}


</script>

