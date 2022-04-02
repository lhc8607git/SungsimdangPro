<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<title>성심당</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<base target="_blank" />
<link rel="stylesheet" type="text/css" href="/css/common.css" />
<link rel="stylesheet" type="text/css" href="/css/swiper.min.css" />
<link rel="stylesheet" type="text/css" href="/css/idangerous.swiper.css" />
<style type="text/css">
html, body { overflow:hidden; }
</style>

<!-- 슬라이드 팝업 css -->
  <style type="text/css">
    li{list-style:none}
    ul{padding:0}
    .slpop {float:left; width:378px;background:#ffffff8c;}
    .slpopWrap {clear:both; position:relative; overflow:hidden;}
    .slpop_con {width:378px;height:378px;}
    .slpop_con ul {overflow:hidden;margin-top:0;}
    .slpop_con ul li {width:378px;height:378px;}
    .slpop_con ul li img{width:100%;height:100%;}
    .slpop_paging {}
    .slpop_paging ul {display:block;overflow:hidden;margin:10px 0;}
    .slpop_paging ul li {width:112px;height:96px;float:left; font-size:18px; color:#808080; line-height:83.3px; text-align:center;cursor:pointer;margin-left:10px; margin-top:10px;}
    .slpop_paging ul li:first-child{margin-right:0;}
    .slpop_paging ul li .liwrap{height:100%;box-sizing:border-box;background:#f6f6f6;}
    .slpop_paging ul li .liwrap img{width:100%;}
    .slpop_paging ul li.on .liwrap{color:#666;background:#e9e9e9;}
    .slpopWrap .prev {position:absolute; top:50%; left:16px; width:18px; height:31px; margin-top:-15.5px; cursor:pointer; z-index:100;}
    .slpopWrap .next {position:absolute; top:50%; right:16px; width:18px; height:31px; margin-top:-15.5px; cursor:pointer; z-index:100;}
    .bottom_box{position:absolute;top:0;right:-4px;z-index:99;}
    .bottom_box .chekbx, .bottom_box .text{display:none;}

	/* 메인 팝업 체크박스 위치 조절 */
table input#ispop{vertical-align:inherit;}

</style>

<script type="text/javascript" src="/jscript/common.js"></script>
<script type="text/javascript" src="/jscript/embed.js"></script>
<script type="text/javascript" src="/jscript/cookie.js"></script>
<script type="text/javascript" src="/jscript/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="/jscript/idangerous.swiper.min.js"></script>
<script type="text/javascript">
<!--
function closePopup() {
	if (document.getElementById("ispop").checked) {
		setCookie( "popup_sungsimdang90", "done", 1);
	}
	parent.closePopupLayer("popup_sungsimdang90");
}
//-->
</script>
</head>

<body bgcolor="#FFFFFF" style="margin:0px; overflow:hidden;">
<table border='0' cellpadding='0' cellspacing='0' width='500'>
	<tr height='500'>
		<td align='center' valign='top'>
			<img src='/data/sungsimdang/popup/22_가격인상안내-팝업_1.jpg' border='0'>
		</td>
	</tr>
	<tr height='20'>
		<td align='right'>
			<input type='checkbox' id='ispop' onClick='closePopup()' style='width:16px; height:16px;'>
			<span style='color:#999999; margin-right:20px'>오늘 이창 띄우지 않음</span>
			<img src='/data/sungsimdang/button/btn_close_popup.gif' align='absmiddle' onClick='closePopup()' style='cursor:pointer; margin-right:5px;'>
		</td>
	</tr>
</table>
</body>

<script type="text/javascript">
<!--
function adjustParentIFrame() {
	if (parent.resizeFrame) { parent.resizeFrame(window); }
	else { setTimeout("adjustParentIFrame()", 250); }
}
adjustParentIFrame();
//-->
</script>
<script type="text/javascript">
  var vSwiper = $('.slpop_con').swiper({
	loop: true,
	autoplay: 2000,
	pagination : '.slpop .swpPaging',
	paginationClickable :true,
	onSlideChangeStart: function(swiper){
	  $(".slpop_paging li").removeClass("on");
	  $(".slpop_paging li").eq(swiper.activeLoopIndex).addClass("on");
	},
	onFirstInit: function(swiper){
	  $(".slpop_paging li").eq(0).addClass("on");
	  //bind paging click
	  $(".slpop_paging li").each(function(index){
		$(this).hover(function(){
		  $(".slpop .swpPaging span").eq(index).click();
		});
	  });
	  //prev next
	  $(".slpopWrap .prev").click(function(){
		swiper.swipePrev();
	  });
	  $(".slpopWrap .next").click(function(){
		swiper.swipeNext();
	  });
	}
  });

</script>
</html>