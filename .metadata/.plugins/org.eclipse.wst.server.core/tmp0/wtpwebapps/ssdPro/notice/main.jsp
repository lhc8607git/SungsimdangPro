<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="SHORTCUT ICON" href="https://www.sungsimdangmall.co.kr/data/sungsimdang/favicon.ico?1641493639">
<title>성심당</title>
<style>
li, ul, ol {
    list-style: none;
}
a {
    color: #2e2e2e;
    text-decoration: none;
}

</style>




</head>
<body>
<!-- 
<a href="notice.asp">공지사항</a>
<a href="noticeaAsk.asp">1:1문의하기</a>
<a href="noticeFaq.asp">FAQ 바로가기</a>
<a href="noticeCacao.asp">카카오톡문의</a> 
<a href="cscenter.asp">고객센터</a> 

-->


<div>
<a name="M_1181"></a>
<!--템플릿 : 성심당 배송별상품 -->
<style type="text/css">
    .notice.collectionWrap {padding:30px 0px; background-color: #f5f3ee;}
    .notice.collectionWrap .collection {width: 100%; max-width: 1280px; margin:0 auto; display: flex;}
    .notice.collectionWrap .collection .noticeLeftWrap{ display: flex; width: 400px; text-align: left; justify-content: space-between;} 
    .notice.collectionWrap .collection .noticeTitle{color: #683b28; font-size: 24px; font-weight: bold;} 
    .notice.collectionWrap .collection .noticeTitle .noticeMoreBtn a{color: #c3ac9f; font-size:14px; float: right; transition: 0.2s ease;} 
    .notice.collectionWrap .collection .noticeTitle .noticeMoreBtn a:hover{color: #4f2c1e;} 
    .notice.collectionWrap .collection .noticeLeftWrap .noticeCall{color: #87553D; font-size: 36px; font-weight: bold;} 
    .notice.collectionWrap .collection .noticeLeftWrap span{color:#c4b09f;display: block; font-size: 15px;} 
    .notice.collectionWrap .collection .noticeLeftWrap .noticeEscro{color: #c4b09f;display: block; padding-top: 10px; border-top: 1px solid #ccbbaf; font-size: 15px;}
    .notice.collectionWrap .collection .noticeLeftWrap .noticeEscro a{color: #c4b09f;}
    .notice.collectionWrap .collection .noticeDay{padding-bottom: 10px;}
    .notice.collectionWrap .collection .noticeLeftWrap .noticeRightTxt ul{display: flex; flex-direction: column;}
    .notice.collectionWrap .collection .noticeLeftWrap .noticeRightTxt ul li{margin-bottom: 10px; border-radius: 5px; width: 180px;}
    .notice.collectionWrap .collection .noticeLeftWrap .noticeRightTxt ul li a{display: block;padding:12px; border-radius:5px; font-size: 16px; position: relative;}
 
    .notice.collectionWrap .collection .noticeRightTxt {padding-top: 48px;}
    .notice.collectionWrap .collection .noticeRightTxt .noticeAsk a{color: #fff; background-color: #87553D;}
    .notice.collectionWrap .collection .noticeRightTxt .noticeFaq a{color: #87553D; border: 2px solid #87553D;}
    .notice.collectionWrap .collection .noticeRightTxt .noticeCacao a{text-align: center; background-color: #fee600; color: #000;}
    .notice.collectionWrap .collection .noticeRightWrap {width: 850px; text-align: left;}
    .notice.collectionWrap .collection .noticeTitle {padding-left: 4%; margin-bottom: 10px;}
    .notice.collectionWrap .collection .noticeRightWrap ul {display: flex; flex-wrap: wrap;}
    .notice.collectionWrap .collection .noticeRightWrap ul li { margin-left: 4%; height: 40px;border-bottom: 1px solid #ccbbaf;
    width: 46%;}
    .notice.collectionWrap .collection .noticeRightWrap ul li a {padding: 12px 0px; color: #c2ac9d;  display: block; transition: 0.2s ease; font-size: 15px;float: left;}
    .notice.collectionWrap .collection .noticeRightWrap ul li a:hover {color:#4f2c1e;}
     .notice.collectionWrap .collection .noticeRightWrap ul li span{float: right; padding: 12px 0px; color: #c2ac9d;display: block; font-size: 15px;}


    .notice.collectionWrap .collection .noticeRightTxt ul li a:after {content: ""; display: block; position: absolute;  width: 2px; height: 12px; top:23px; right:12px; transform: rotate(45deg);}
    .notice.collectionWrap .collection .noticeRightTxt ul li a:before {content: ""; display: block; position: absolute;  width: 2px; height: 12px; top: 15px; right:12px;  transform: rotate(-45deg);}

    .notice.collectionWrap .collection .noticeRightTxt .noticeAsk a:after {background-color: #fff;}
    .notice.collectionWrap .collection .noticeRightTxt .noticeAsk a:before {background-color: #fff;}
    .notice.collectionWrap .collection .noticeRightTxt .noticeFaq a:after {background-color: #000;}
    .notice.collectionWrap .collection .noticeRightTxt .noticeFaq a:before {background-color: #000;}
</style>
<!--//템플릿 : 성심당 배송별상품  -->

<div class="notice collectionWrap">
   <div class="collection">

       <div class="noticeLeftWrap"> 
            <div class="noticeLeftTxt">
                <div class="noticeTitle" style="padding-left: 0px;">고객센터</div>
                <span class="noticeCall">1588-8069</span>
                <span>AM 8:00 - PM 18:00</span><!-- 
                <span class="noticeDay"></span> -->
                <div class="noticeEscro hide">
                    KCP구매안전(에스크로) 서비스
                    <span style="border-bottom: 1px solid #ccbbaf; padding-bottom: 3px;"><a href="#">서비스 가입사실 확인</a></span>
                </div>
            </div>
            <div class="noticeRightTxt">
                <ul>
                    <li class="noticeAsk"><a href="noticeaAsk.asp">1:1문의하기</a></li>
                    <li class="noticeFaq"><a href="noticeFaq.asp">FAQ 바로가기</a></li>
                    <li class="noticeCacao"><a href="noticeCacao.asp">카카오톡문의</a></li>
                </ul>
            </div>
       </div>
       <div class="noticeRightWrap"> 
            <div class="noticeLeft">
                <div class="noticeTitle">공지사항 <span class="noticeMoreBtn"><a href="notice.asp">더보기 +</a></span></div>
                <ul>
                    <li><a href="/board/list.asp?board=notice&amp;uid=970">※ 안내 ※  제품 가격인상.</a> <span>2021-12-31</span></li>
                    <li><a href="/board/list.asp?board=notice&amp;uid=969">크리스마스케익 예약(방문 및 배..</a> <span>2021-12-22</span></li>
                    <li><a href="/board/list.asp?board=notice&amp;uid=968">1:1 게시판 운영안내(크리스마스..</a> <span>2021-12-14</span></li>
                    <li><a href="/board/list.asp?board=notice&amp;uid=967">KTX특송 일부지역(마산역 및 호..</a> <span>2021-11-29</span></li>
                    <li><a href="/board/list.asp?board=notice&amp;uid=966">KTX특송 일부 영업소 임시 휴무..</a> <span>2021-08-02</span></li>
                    <li><a href="/board/list.asp?board=notice&amp;uid=965">코로나 확산에 따른 택배 제한 안..</a> <span>2021-07-28</span></li>
                    <li><a href="/board/list.asp?board=notice&amp;uid=964">주문 및 배송비 안내드립니다.</a> <span>2021-04-28</span></li>
                    <li><a href="/board/list.asp?board=notice&amp;uid=963">상품리뷰 적립금 지급안내</a> <span>2021-02-19</span></li>
                </ul>
            </div>
       </div>
       
   </div>
</div>

<script>

    //내용 없으면 li 삭제
    delImg('.deli.collectionWrap .dlProductWrap ul li','');


</script></div>
<div>
<a name="M_1182"></a>
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
            <a href="cscenter.asp">고객센터</a> 
            <a href="/other/privacy.asp">개인정보처리방침</a>
            <div class="snsIcons">
            <a href="https://www.instagram.com/sungsimdang_official/" target=""><img src="https://www.sungsimdangmall.co.kr/data/sungsimdang/banner/IMGBIN_instagram-facebook-png_vfDUv1a6.png" border="0"></a>
            <a href="https://facebook.com/sungsimdang4114" target=""><img src="https://www.sungsimdangmall.co.kr/data/sungsimdang/banner/IMGBIN_facebook-png_BjuQQ9YG.png" border="0"></a>
            </div>
        </div>
        
    </div>

    <form name="frm1">
    <input name="wrkr_no" type="hidden" value="305-81-48738">

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
            <div class="footlogo"><a href="http://www.sungsimdangmall.co.kr/Default.asp" target=""><img src="https://www.sungsimdangmall.co.kr/data/sungsimdang/banner/ft_logo_2.png" border="0"></a></div>
        </div>
    </div>
    

    </form>
</div>
</div>




</body>
</html>