function initQuickView(){

	$('body').append('<div id="dialog-overlay"></div><div id="zoomPopup"><iframe id="zoom_ifrm" name="zoom_ifrm" src="" frameborder="0" width="0" height="0" scrolling="no"></iframe></div>')

	$(".goods-container").mouseover(function(){$(this).find('.quickview-layer').show();});
	$(".goods-container").mouseout(function(){$(this).find('.quickview-layer').hide();});
	if (document.compatMode.toLowerCase() == "backcompat") $(".quickview-layer").height($(".goods-container").height());

	resizeOverlay();

	$('#dialog-overlay').click(zoomInPopupClose)
}

function addWishList(guid, cate) {
	/*이벤트 버블링 중지*/
	var evt = window.event || arguments.callee.caller.arguments[0];
	evt.cancelBubble = true;

	var f = document.Frm;

	openPopup("/dummy.asp", "WishList", 100, 100, "left=500, top=50");

	if (f==null){
		f = document.createElement("form");
		f.method = "post";
		var modeObj = document.createElement("input")
		modeObj.name = "mode";
		modeObj.type = "hidden";
		f.appendChild(modeObj);
		var guidObj = document.createElement("input")
		guidObj.name = "guid";
		guidObj.type = "hidden";
		f.appendChild(guidObj);
		var cateObj = document.createElement("input")
		cateObj.name = "cate";
		cateObj.type = "hidden";
		f.appendChild(cateObj);

		document.body.appendChild(f);
	}

	f.mode.value = "ADD";
	f.guid.value = guid;
	f.cate.value = cate;
	f.target = "WishList";
	f.action = "/my/wishlistOk.asp";
	f.submit();
}

function zoomInPopup(guid){
	/*이벤트 버블링 중지*/
	var evt = window.event || arguments.callee.caller.arguments[0];
//	evt.stopPropagation();
//	evt.preventDefault();
	evt.cancelBubble = true;

	$('#zoom_ifrm' ).attr("src","/common/pop_zoom_goods_layer.asp?guid="+ guid);
	$('#dialog-overlay').show();
	$('#zoomPopup' ).fadeIn(500);
}

function zoomInPopupClose(){
	$('#dialog-overlay').hide();
	$('#zoomPopup' ).hide();
	$('#zoom_ifrm' ).attr("src","/dummy.asp");
}

function resizePopup(fname,width,height){
	var cWnd = frames[fname].document.body;
	var ifrmObj = document.getElementById(fname);

	resizeWidth = width
	if (resizeWidth==0){
		resizeWidth = cWnd.scrollWidth;
	}

	resizeHeight = height
	if (resizeHeight==0){
		resizeHeight = cWnd.scrollHeight;
	}

	ifrmObj.width = resizeWidth;
	ifrmObj.height = resizeHeight;

	move2centerLayer();
}

function resizeOverlay(){
	$('#dialog-overlay').height($('body')[0].scrollHeight);
	$('#dialog-overlay').width($('body')[0].scrollWidth);
}

function move2centerLayer(){
	var bodyObj = document.compatMode.toLowerCase() == "backcompat"?"body":document;
	$('#zoomPopup' ).css("left",($('body').width()- $('#zoom_ifrm' ).width() )/2 +"px");
	$('#zoomPopup' ).css("top",(($('body').height()- $('#zoom_ifrm' ).height() )/2 + $(bodyObj).scrollTop()) +"px");
}