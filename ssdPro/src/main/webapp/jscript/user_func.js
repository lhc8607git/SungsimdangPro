// 원본이미지 보기 ##################################################
function openOrgImageView(path) {
	if (path.stripspace() == "") return;
	openPopup("/common/pop_orgImageView.asp?path="+encodeURI(path), "OrgImageView", 100, 100, "status=yes, resizable=yes");
}

// 상품이미지 보기 ##################################################
function openZoomGoodsImg(guid, cate) {
	openPopup("/common/pop_zoom_goods.asp?guid="+guid+"&cate="+cate, "ZoomGoodsImg", 700, 546);
}

// 주민등록번호 유효성 체크 ##################################################
function checkResNo(resNo1, resNo2) {
	var i;

	if (resNo1.value.stripspace() == "" || resNo2.value.stripspace() == "") return false;

	var total = 0;
	var key = new Array(2,3,4,5,6,7,8,9,2,3,4,5);
	var resNo = resNo1.value + resNo2.value;

	if (resNo.length == 13) {
		for (i=0; i<12; i++) {
			total = total + (eval(resNo.charAt(i)) * key[i]);
		}
		result = (11 - (total % 11)) % 10;

		if (eval(resNo.charAt(12)) != result) {
			alert ("유효한 주민등록번호가 아닙니다.");
			resNo1.value = "";
			resNo2.value = "";
			resNo1.focus();
			return false;
		}
		else {
			return true;
		}
	}
	else if (resNo1.value.stripspace().length != 6) {
		alert("주민등록번호 앞자리는 6자리입니다. 다시 입력하세요.");
		resNo1.value = "";
		resNo1.focus();
		return false;
	}
	else if (resNo2.value.stripspace().length != 7) {
		alert("주민등록번호 뒷자리는 7자리입니다. 다시 입력하세요.");
		resNo2.value = "";
		resNo2.focus();
		return false;
	}
}

// 사업자번호 유효성 체크 ##################################################
function checkBizNo(bizno1, bizno2, bizno3) {
	var i, ChkRule = "137137135";
	var step1, step2, step3, step4, step5, step6, step7;

	var strBizNo = bizno1.value + bizno2.value + bizno3.value; // 사업자번호 10자리

	step1 = 0; // 초기화

	for (i=0; i<7; i++) {
		step1 = step1 + (strBizNo.substring(i, i+1) *ChkRule.substring(i, i+1));
	}

	step2 = step1 % 10;
	step3 = (strBizNo.substring(7, 8) * ChkRule.substring(7, 8))% 10;
	step4 = strBizNo.substring(8, 9) * ChkRule.substring(8, 9);
	step5 = Math.round(step4 / 10 - 0.5);
	step6 = step4 - (step5 * 10);
	step7 = (10 - ((step2 + step3 + step5 + step6) % 10)) % 10;

	if (strBizNo.substring(9, 10) != step7) {
		alert ("유효한 사업자번호가 아닙니다.");
		bizno1.value = "";
		bizno2.value = "";
		bizno3.value = "";
		bizno1.focus();
		return false;
	}
	else if (strBizNo.length!=10)
	{
		alert ("유효한 사업자번호가 아닙니다.");
		bizno1.value = "";
		bizno2.value = "";
		bizno3.value = "";
		bizno1.focus();
		return false;
	}
	else {
		return true;
	}
}

// 사업자번호 유효성 체크 ##################################################
function checkBizNo_New(bizno) {
	var i, ChkRule = "137137135";
	var step1, step2, step3, step4, step5, step6, step7;

	var strBizNo = bizno.value; // 사업자번호 10자리

	step1 = 0; // 초기화

	for (i=0; i<7; i++) {
		step1 = step1 + (strBizNo.substring(i, i+1) *ChkRule.substring(i, i+1));
	}

	step2 = step1 % 10;
	step3 = (strBizNo.substring(7, 8) * ChkRule.substring(7, 8))% 10;
	step4 = strBizNo.substring(8, 9) * ChkRule.substring(8, 9);
	step5 = Math.round(step4 / 10 - 0.5);
	step6 = step4 - (step5 * 10);
	step7 = (10 - ((step2 + step3 + step5 + step6) % 10)) % 10;

	if (strBizNo.substring(9, 10) != step7) {
		alert ("유효한 사업자번호가 아닙니다.");
		bizno.value = "";		
		bizno.focus();
		return false;
	}
	else if (strBizNo.length!=10)
	{
		alert ("유효한 사업자번호가 아닙니다.");
		bizno.value = "";		
		bizno.focus();
		return false;
	}
	else {
		return true;
	}
}

// 로그인 ##################################################
function gotoLogin() {
	if (document.URL.indexOf("login")>-1) return;
	location.href = "/member/login.asp?redirect="+escape(document.URL);
}

//jQuery ajax 공용처리 (jings3)
function jqueryAjaxRes(funcName, resKind, _url, reqData ){
		$.ajax({
			type: "post",
			url: _url,
			data:  reqData,
			success: function (res) { //성공메시지 처리
				eval("funcName(\""+ resKind +"\",\""+ res +"\")");
			},
			error: function (jqXhr, textStatus, errorThrown) {//error
			},
			complete: function () {// complite
			}
		});
}



//맘챌 사전가입 동의여부 체크박스 처리 , jings3
function primemCkBox(me, objkind){
	if ( objkind === "a" ){ //전체동의
		if ( $(me).prop("checked") ){
			$("input:checkbox[id^='join_detailChkBox']").prop("checked", true);
		}else{
			$("input:checkbox[id^='join_detailChkBox']").prop("checked", false);
		}
	}else{ //개별 약관 체크박스
		if ( $(me).prop("checked") ){
			var etcCheckedCnt = $("input:checkbox[id^='join_detailChkBox']:checked").length;
			if ( etcCheckedCnt === 2 ){ //개별 모두 체크상태
				$("input:checkbox[id='Join_allCheck']").prop("checked", true); //전체동의 자동체크
			}
		}else{ //개별약관 한개라도 체크 빠진 상태
			$("input:checkbox[id='Join_allCheck']").prop("checked", false); //전체동의 체크 자동 빠짐.
		}
	}
}