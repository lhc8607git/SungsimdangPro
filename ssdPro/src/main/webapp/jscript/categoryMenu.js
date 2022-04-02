
(function ($) {
var view = {
	getData: function (setting) {
		if ( setting.ajaxInfo.enable ){
			$.ajax({
				async: setting.ajaxInfo.async,
				cache: setting.ajaxInfo.cache,
				contentType: setting.ajaxInfo.contentType,
				type: setting.ajaxInfo.type,
				dataType: setting.ajaxInfo.dataType,
				data: setting.ajaxInfo.data,
				url: setting.ajaxInfo.url,
				success: function (res) {
					if ( res.Check_String == 'SUCCESS' ){
						view.cloneData(setting, res);
					}
				}
			});
		}
	}
	, cloneData: function (setting, param) {
		var obj = setting.objInfo.domTree +'[data-'+ setting.objInfo.dataMethod +'='+ setting.objInfo.dataName +']'
		var _obj = $(obj);
		var jsonParam = {
			oParent: _obj.parent(),
			obj: _obj,
			param: param
		}

		$.each(setting.callback, function(ei1, ev1) {
			ev1(jsonParam);
		});
	}
};

$.fn.category = {
	init: function (setting) {
		view.getData(setting);
	}
};
})(jQuery);



//모바일 좌측슬라이드메뉴
var Setting_mLeftSlideCate = {
	ajaxInfo: {
		enable: true,
		async: true,
		cache: false,
		contentType: "application/x-www-form-urlencoded",
		type: "post",
		dataType: "json",
		data: {mode: "mLeftSlideCate"},
		url: "/common/ajax/json_categoryMenu.asp"
	},
	objInfo: {
		"domTree": "li",
		"dataMethod": "menu",
		"dataName": "mLeftSlideCate"
	},
	callback: {
		mLeftSlideCate12:	fnSet_mLeftSlideCate12,
		mLeftSlideCate23:	fnSet_mLeftSlideCate23
	}
}



//모바일 언니뷰티 스토어 서브탭 카테고리메뉴

var Setting_mStoreTopCate = {
	ajaxInfo: {
		enable: true,
		async: true,
		cache: false,
		contentType: "application/x-www-form-urlencoded",
		type: "post",
		dataType: "json",
		data: {mode: "mLeftSlideCate"},
		url: "/common/ajax/json_categoryMenu.asp"
	},
	objInfo: {
		"domTree": "li",
		"dataMethod": "menu",
		"dataName": "mStoreTopCate"
	},
	callback: {
		mLeftSlideCate12:	fnSet_mLeftSlideCate12,
		mLeftSlideCate23:	fnSet_mLeftSlideCate23
	}
}



//PC 좌측슬라이드메뉴

var Setting_pcLeftSlideCate = {
	ajaxInfo: {
		enable: false,
		async: true,
		cache: false,
		contentType: "application/x-www-form-urlencoded",
		type: "post",
		dataType: "json",
		data: {mode: "pcLeftSlideCate"},
		url: "/common/ajax/json_categoryMenu.asp"
	},
	objInfo: {
		"domTree": "li",
		"dataMethod": "menu",
		"dataName": "pcLeftSlideCate"
	},
	callback: {
		pcLeftSlideCate3:	fnSet_pcLeftSlideCate3
	}
}



$(document).ready(function(){

if ( gloView_M_Category ){
	//모바일 좌측슬라이드메뉴
	$.fn.category.init(Setting_mLeftSlideCate);
}

if ( gloView_PC_Category ){
	//PC 좌측슬라이드메뉴
	$.fn.category.init(Setting_pcLeftSlideCate);
}

});		//$(document).ready(function(){



//모바일 좌측슬라이드메뉴, 환경설정에 의해서 1,2차 카테고리 사용
function fnSet_mLeftSlideCate12(args){
	var _oParent = args.oParent;
	var _obj = args.obj;
	var items = args.param.items;
	var cfgMobileCategory = Number( args.param.cfgMobileCategory );
	var cfgSolutionType = args.param.cfgSolutionType;
	var pathLeftmenu = args.param.pathLeftmenu;
	let _standardItem, _clone, _param,
		_standardItem2, _oParent2, _obj2, _clone2,
		obj2Name='[data-menu=mLeftSlideCate_depth2]',
		clone2Name='[data-menu=mLeftSlideCate_li]';

	if ( cfgMobileCategory==1 ) return false;

	_standardItem = _obj.eq(0);

	$.each(items, function(ei1, ev1) {
		_param = new Object();
		_param.mode = 'mContent';
		_param.CateCode1 = ev1.CateCode1;
		_param.CateName1 = ev1.CateName1;
		_param.CateCode2 = null;
		_param.CateName2 = null;

		_clone = _obj.eq(0).clone();
		_clone.find('[data-depth1Link]').attr('onclick', 'fnSubmit_Menu('+ JSON.stringify(_param) +')');
		_clone.find('[data-depth1Title]').text(ev1.CateName1);
		ev1.CateIcon1!='' && _clone.find('[data-depth1Img]').attr('src', pathLeftmenu +'/'+ ev1.CateIcon1);

		if ( cfgSolutionType!='W' ){		//와봐요일때 첫번째(1차,2차 개념이 아님) 카테고리만 사용
			_oParent2 = _clone.find(obj2Name);
			_obj2 = _clone.find(clone2Name);
			_standardItem2 = _obj2.eq(0);

			$.each(ev1, function(en2, ev2) {
				if ( en2=='Depth2' ){
					$.each(ev2, function(ei3, ev3) {
						_param.CateCode2 = ev3.CateCode2;
						_param.CateName2 = ev3.CateName2;

						_clone2 = _obj2.eq(0).clone();
						_clone2.find('[data-depth2Link]').attr('onclick', 'fnSubmit_Menu('+ JSON.stringify(_param) +')');
						_clone2.find('[data-depth2Title]').text(ev3.CateName2);
						ev3.CateIcon2!='' && _clone2.find('[data-depth2Img]').attr('src', pathLeftmenu +'/'+ ev3.CateIcon2);
						_standardItem2.after(_clone2);
						_standardItem2 = _clone2;
//						_obj2.eq(0).after(_clone2);
//						_oParent2.append(_clone2);
					});
				}
			});
			_obj2.remove();
		}
		_standardItem.after(_clone);
		_standardItem = _clone;
//		_obj.eq(0).after(_clone);
//		_oParent.append(_clone);
	});
	_obj.remove();
}



//모바일 좌측슬라이드메뉴, 환경설정에 의해서 2,3차 카테고리 사용
function fnSet_mLeftSlideCate23(args){
	var _oParent = args.oParent;
	var _obj = args.obj;
	var items = args.param.items;
	var cfgMobileCategory = Number( args.param.cfgMobileCategory );
	var cfgSolutionType = args.param.cfgSolutionType;
	var pathLeftmenu = args.param.pathLeftmenu;
	let _standardItem, _clone, _param,
		_standardItem2, _oParent2, _obj2, _clone2,
		obj2Name='[data-menu=mLeftSlideCate_depth2]',
		clone2Name='[data-menu=mLeftSlideCate_li]';

	if ( cfgMobileCategory==0 ) return false;

	_standardItem = _obj.eq(0);

	$.each(items, function(ei1, ev1) {
		$.each(ev1, function(en2, ev2) {
			if ( en2=='Depth2' ){
				$.each(ev2, function(ei3, ev3) {
					_param = new Object();
					_param.mode = 'mContent';
					_param.CateCode1 = ev3.CateCode2;
					_param.CateName1 = ev3.CateName2;
					_param.CateCode2 = null;
					_param.CateName2 = null;

					_clone = _obj.eq(0).clone();
					_clone.find('[data-depth1Link]').attr('onclick', 'fnSubmit_Menu('+ JSON.stringify(_param) +')');
					_clone.find('[data-depth1Title]').text(ev3.CateName2.replace("&amp;amp;","&"));
					ev3.CateIcon2!='' && _clone.find('[data-depth1Img]').attr('src', pathLeftmenu +'/'+ ev3.CateIcon2);

					if ( cfgSolutionType!='W' ){		//와봐요일때 첫번째(1차,2차 개념이 아님) 카테고리만 사용
						_oParent2 = _clone.find(obj2Name);
						_obj2 = _clone.find(clone2Name);
						_standardItem2 = _obj2.eq(0);

						$.each(ev3, function(en4, ev4) {
							if ( en4=='Depth3' ){
								$.each(ev4, function(ei5, ev5) {
									_param.CateCode2 = ev5.CateCode3;
									_param.CateName2 = ev5.CateName3;

									_clone2 = _obj2.eq(0).clone();
									_clone2.find('[data-depth2Link]').attr('onclick', 'fnSubmit_Menu('+ JSON.stringify(_param) +')');
									_clone2.find('[data-depth2Title]').text(ev5.CateName3.replace("&amp;amp;","&"));
									ev5.CateIcon3!='' && _clone2.find('[data-depth2Img]').attr('src', pathLeftmenu +'/'+ ev5.CateIcon3);
									_standardItem2.after(_clone2);
									_standardItem2 = _clone2;
//									_obj2.eq(0).after(_clone2);
//									_oParent2.append(_clone2);
								});
							}
						});
						_obj2.remove();
					}		//if ( cfgSolutionType!='W' ){
					_standardItem.after(_clone);
					_standardItem = _clone;
//					_obj.eq(0).after(_clone);
//					_oParent.append(_clone);
				});
			}
		});		//$.each(ev1, function(en2, ev2) {
	});
	_obj.remove();
}



//PC 좌측슬라이드메뉴 3차카테고리까지 사용
//		<div class="submenu1_in" id="submenu1_in">
//			<ul class="icon_tit_list" name="depth_main">
//				<li data-menu="pcLeftSlideCate" data-cate="3" class="depth1_box">
//					<a data-depth1Link data-depth1Title>1차카테고리<i class="material-icons">arrow_right</i></a>
//					<ul class="depth2" style="display: none;">
//					   <li data-menu="pcLeftSlideCate_depth2" data-cate="4" class="depth2_box">
//							<a data-depth2Link data-depth2Title>2차카테고리<i class="material-icons">arrow_right</i></a>
//							<ul class="depth3" style="display: none;">
//								<li data-menu="pcLeftSlideCate_depth3" data-cate="5"><a data-depth3Link data-depth3Title>3차카테고리</a></li>
//							</ul>
//						</li>
//					</ul>
//				</li>
//			</ul>
//		</div>
function fnSet_pcLeftSlideCate3(args){
	var _oParent = args.oParent;
	var _obj = args.obj;
	var items = args.param.items;
	var cfgMobileCategory = Number( args.param.cfgMobileCategory );
	var cfgSolutionType = args.param.cfgSolutionType;
	var pathLeftmenu = args.param.pathLeftmenu;
	let _standardItem, _clone, _param,
		_standardItem2, _obj2, _clone2,
		obj2Name='[data-menu='+ args.dataName +'_depth2]',
		_standardItem3, _obj3, _clone3,
		obj3Name='[data-menu='+ args.dataName +'_depth3]';

	//1depth Start
	_standardItem = _obj.eq(0);

	$.each(items, function(ei1, ev1) {
		_param = new Object();
		_param.mode = 'pcContent';
		_param.CateCode1 = ev1.CateCode1;
		_param.CateName1 = ev1.CateName1;
		_param.CateCode2 = null;
		_param.CateName2 = null;
		_param.CateCode3 = null;
		_param.CateName3 = null;
		_param.CateCode = ev1.CateCode1;

		_clone = _obj.eq(0).clone();
		_clone.find('[data-depth1Link]').attr('onclick', 'fnSubmit_Menu('+ JSON.stringify(_param) +')');
		_clone.find('[data-depth1Title]').text(ev1.CateName1.replace("&amp;amp;","&"));
		ev1.CateIcon1!='' && _clone.find('[data-depth1Img]').attr('src', pathLeftmenu +'/'+ ev1.CateIcon1);

		//2depth Start
		_obj2 = _clone.find(obj2Name);
		_standardItem2 = _obj2.eq(0);

		$.each(ev1, function(en2, ev2) {
			if ( en2=='Depth2' ){
				$.each(ev2, function(ei3, ev3) {
					_param.CateCode2 = ev3.CateCode2;
					_param.CateName2 = ev3.CateName2;
					_param.CateCode = ev3.CateCode2;

					_clone2 = _obj2.eq(0).clone();
					_clone2.find('[data-depth2Link]').attr('onclick', 'fnSubmit_Menu('+ JSON.stringify(_param) +')');
					_clone2.find('[data-depth2Title]').text(ev3.CateName2.replace("&amp;amp;","&"));
					ev3.CateIcon2!='' && _clone2.find('[data-depth2Img]').attr('src', pathLeftmenu +'/'+ ev3.CateIcon2);

					//3depth Start
					_obj3 = _clone2.find(obj3Name);
					_standardItem3 = _obj3.eq(0);

					$.each(ev3, function(en4, ev4) {
						if ( en4=='Depth3' ){
							$.each(ev4, function(ei5, ev5) {
								_param.CateCode3 = ev5.CateCode3;
								_param.CateName3 = ev5.CateName3;
								_param.CateCode = ev5.CateCode3;

								_clone3 = _obj3.eq(0).clone();
								_clone3.find('[data-depth3Link]').attr('onclick', 'fnSubmit_Menu('+ JSON.stringify(_param) +')');
								_clone3.find('[data-depth3Title]').text(ev5.CateName3.replace("&amp;amp;","&"));
								ev5.CateIcon3!='' && _clone3.find('[data-depth3Img]').attr('src', pathLeftmenu +'/'+ ev5.CateIcon3);
								_standardItem3.after(_clone3);
								_standardItem3 = _clone3;
							});
						}
					});
					_obj3.remove();
					//3depth End

					_standardItem2.after(_clone2);
					_standardItem2 = _clone2;
				});
			}
		});
		_obj2.remove();
		//2depth End

		_standardItem.after(_clone);
		_standardItem = _clone;
	});
	_obj.remove();
	//1depth End
}



function fnSubmit_Menu(param){
	var url = param.mode == 'pcContent' ? '/product/sublist.asp' : '/m/goods/main.asp';
	let $form = $('<form></form>');
	let CateCode;

	if ( param.CateCode == undefined ){
		CateCode = param.CateCode1;
	} else {
		CateCode = param.CateCode;
	}

	$form.attr('action', url +'?cate='+ CateCode);
	$form.attr('method', 'post');

	$form.appendTo('body');
//	$form.append('<input type="hidden" name="cate" value="'+ param.CateCode1 +'">')
//		.append('<input type="hidden" name="cateName" value="'+ param.CateName1 +'">');

	$form.submit();
}
