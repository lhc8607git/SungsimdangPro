function view_list_cart(guid){
	$(".ListCartLayer").load("/common/layer_list_cart.asp?guid="+guid);
	$('.ListCartLayer').addClass('on');
	$('.ListCartLayerMask').addClass('on');
	$('body').css({'height':'auto','overflow-y':'auto'});
}
function layer_close(){
	$('.ListCartLayer , .ListCartLayerMask').removeClass('on');
	$('.ListDirectLayer , .ListDirectLayerMask').removeClass('on');
}

function go_cart(guid){
	$('.ListDirectLayer').html('');
	$.post("/product/ajaxSubGoodsInfo.asp", { guid:guid},
	function(data){
		arrdata=data.split("|");
		result=arrdata[0];
		cate=arrdata[1];
		if (result=="T"){
		//	location.href='/product/content.asp?guid='+guid;
			view_list_cart(guid);
		}else if (result=="F"){
			view_list_cart(guid);
	//		set_cart(guid,cate);
		}
	});
}

// 추가한 스트립트 2019.08.16
	function opt_box_close(){
	$('.fixed_option_box').removeClass('close');
}

function conf_cart_fadein(){
	$('.con_cart').fadeIn(500);
}

function conf_cart_fadeout2(){
	$('.conf_cart').fadeOut(500);
}


function conf_cart_fadeout(){
	$('.conf_cart').animate({left:'-=31%',top:'-=45%'},500);
	setTimeout('conf_cart_fadeout2()',500);
}


function functionReset(){
	$('.conf_cart').css('left','50%')
	$('.conf_cart').css('bottom','50%')
	$('.conf_cart').css('top','unset')
	$('.conf_cart').css('display', 'block')

}

function getCartCnt(){
	$.ajax({
		type:"post",
		url:"/common/ajax/exec_getCartCnt.asp",
		success:function(data, state, xhr){
			$(".cartCnt").html(data);
		}
	});
}

function cart_pop_close(){
	document.getElementById("pop_div").style.display="none";
}
function move_cart(){
	location.href = "/m/product/cart.asp";
}


function set_cart(guid,cate){
	$.post("/product/ajax/ajaxsubCartOk.asp", { guid:guid,cate:cate,mode:"CART",nChkOpt_useFlag:"F"},
	function(data){
		//location.href='/product/cart.asp';
		//
		//20190725 joonyus 오류발생시 경고창 띄우기 추가
		var statusCode = data.split("|")[0]
		var statusTxt = data.split("|")[1]

		if (statusCode =="FAIL")
		{
			alert(statusTxt);
			return ;
		}else{
			alert("장바구니에 상품이 추가되었습니다.");
			//$("#pop_div").show();
			functionReset();
			setTimeout('conf_cart_fadein()',200);
			setTimeout('conf_cart_fadeout()',300);
			setTimeout('getCartCnt()',600);
		}
	});
}

function go_direct(guid){	// 20180208 kyh, 장바구니, 바로구매 분리
	$('.ListCartLayer').html('');
	$.post("/product/ajaxSubGoodsInfo.asp", { guid:guid},
	function(data){
		arrdata=data.split("|");
		result=arrdata[0];
		cate=arrdata[1];
		if (result=="T"){
		//	location.href='/product/content.asp?guid='+guid;
			view_list_direct(guid);
		}else if (result=="F"){
			view_list_direct(guid);
			//set_direct(guid,cate);
		}
	});
}

//20200917 ysg 팝업띄울때 스크롤 사라짐현상 주석처리
function view_list_direct(guid){	
	$(".ListDirectLayer").load("/common/layer_list_cart.asp?guid="+guid+"&layerType=T");
	$('.ListDirectLayer').addClass('on');
	$('.ListDirectLayerMask').addClass('on');
	$('body').height($(window).height());
	//$('body').css('overflow-y','hidden');
}
function set_direct(guid, cate){
	$.post("/product/ajax/ajaxsubCartOk.asp", { guid:guid,cate:cate,mode:"DIRECT",nChkOpt_useFlag:"F"},
	function(data){
		//location.href='/product/order.asp?chkType=DIRECT';
		//20190725 joonyus 오류발생시 경고창 띄우기 추가
		var statusCode = data.split("|")[0]
		var statusTxt = data.split("|")[1]

		if (statusCode =="FAIL")
		{
			alert(statusTxt);
			return ;
		}else{
			location.href='/product/order.asp?chkType=DIRECT';
		}
	});
}


function favorite(guid){
	$.ajax({
		type : "POST",
		dataType : "text",
		async	: false ,
		data : {mode:"favorite",chklist:guid} ,
		url  : "/product/ajaxGoodsFavorite.asp",
		success : function(data) {
			//190131|wjy 상태값과 스크립트(애드저스트)가 같이 넘어옴
			if (data.indexOf("%^&*") != -1) {
				var data_tmp = data.split('%^&*');
				var data = data_tmp[0];
				var script_tmp = data_tmp[1];
				if (script_tmp.length>1){
					$('body').append(script_tmp)
				}
			}

			try {
				if(data == "ok"){
					//$("#w_"+guid).removeClass("ftic-like");
					//$("#w_"+guid).addClass("ftic-like2");
					$("#w_"+guid).text("favorite");
					$("#w"+guid).addClass("on");
					return;
				}else if(data == "already"){
					//$("#w_"+guid).removeClass("ftic-like2");
					//$("#w_"+guid).addClass("ftic-like");
					$("#w_"+guid).text("favorite_border");
					$("#w"+guid).removeClass("on");
					return;
				}else if(data == "login"){
					location.href='/member/login.asp';
				}
			} catch(e) {
				//alert("error - " + e.description);
			}
		}
	});

}

function favorite_main(setid,guid){
	$.ajax({
		type : "POST",
		dataType : "text",
		async	: false ,
		data : {mode:"favorite",chklist:guid} ,
		url  : "/product/ajaxGoodsFavorite.asp",
		success : function(data) {
			//190131|wjy 상태값과 스크립트(애드저스트)가 같이 넘어옴
			if (data.indexOf("%^&*") != -1) {
				var data_tmp = data.split('%^&*');
				var data = data_tmp[0];
				var script_tmp = data_tmp[1];
				if (script_tmp.length>1){
					$('body').append(script_tmp)
				}
			}

			try {
				if(data == "ok"){
					alert("관심 상품이 추가되었습니다.");
					//$("#w_"+guid).removeClass("ftic-like");
					//$("#w_"+guid).addClass("ftic-like2");
					$("#"+setid).text("favorite");
					$("#"+setid).addClass("on");
					var nowCount = Number($("#"+setid).next().text());
					$("#"+setid).next().text(nowCount+1)
					return;
				}else if(data == "already"){
					//$("#w_"+guid).removeClass("ftic-like2");
					//$("#w_"+guid).addClass("ftic-like");
					$("#"+setid).text("favorite_border");
					$("#"+setid).removeClass("on");
					var nowCount = Number($("#"+setid).next().text());
					$("#"+setid).next().text(nowCount-1)
					return;
				}else if(data == "login"){
					location.href='/member/login.asp';
				}
			} catch(e) {
				//alert("error - " + e.description);
			}
		}
	});

}

function cart_pop_close(){
	document.getElementById("pop_div").style.display="none";
}

function view_cart(){
	location.href = "/product/cart.asp";
}

//인스타그램(언니뷰티) 좋아요 처리 ,jings3, 2018-05-04 //(S)   20190513 joonyus pc 용 로그인경로 변경

function ckInstaGoodsLike(me, serviceType){
	strUrl = "/m/common/exec_instaGoods_Like.asp";
	if (serviceType === "S"){	strUrl = "";	} //미정
	var $this = $(me);
	var $likeCnt = $("em", $this.closest("span.like"));
	var $thisInsta = $this.closest("div.unniB_story_wrap");
	var instaGoodsUid = "";
	if (serviceType == "sd")	// /addon/story/story_detail.asp 에서 쓰임
	{
		instaGoodsUid = $this.attr("attr_uid");
	}else{

		instaGoodsUid = $thisInsta.data("uid");
	}
	if ( instaGoodsUid === undefined || instaGoodsUid === "" ){	return;	}

	var request = $.ajax({
	  url: strUrl,
	  type: "POST",
	  data: { "goodsUid" : instaGoodsUid},
	  dataType: "html"
	});
	request.done(function(msg) {
		if ( msg === undefined || msg === "" ){	return false;	}
		var res = $.parseJSON(msg);
		switch ( res.returnCode ){
			case "200OKOK" :
				var likeCnt = ( isNaN(res.likeCnt) ? 0 : parseFloat(res.likeCnt) );
				switch ( res.msg ){
					case "like" :
						$likeCnt.text( likeCnt );
						$this.html("favorite")
						//alert("좋아요 처리되었습니다.");
						break;
					case "already" :
						$likeCnt.text( likeCnt );
						$this.html("favorite_border")
						//alert("좋아요를 철회하셧습니다.");
						break;
				}
				break;
			case "402FAIL" : 
				var redirect=location.href;
				location.href='/member/login.asp?redirect='+redirect;
				break;
			default :
				alert("처리중 에러 발생\n다시 시도해 주세요");
				return false;
				break;
		}

	});





	request.fail(function(jqXHR, textStatus) {
	  //alert( "Request failed: " + textStatus );
	});
}
//인스타그램 좋아요 처리 ,jings3, 2018-05-04 //(E)