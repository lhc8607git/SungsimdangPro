
//'181010 add bhc start ----------------------------------------------------------------------------------
//'앱에서 접속하고 특정 사이트일때 callWebAction 호출
var snsType=0;
var callApp;
var convParamRedirect;
//'181010 add bhc end -----------------------------------------------------------------------------------

$(document).ready(function(){
	callApp = $('#callApp').length>0 ? $('#callApp').val() : 'F';

	$("#nvLoginBtn").click(function(){
		snsType=1;
		if ( callApp=='T' ){
			//190722|wjy SNS회원가입,로그인 시 웹 으로 띄우기 (현재 앱 네이티브 로그인 작업이 오래걸림으로 웹으로 로그인처리),	2019-10-17 kyh 솔루션 전체적용
			//fnWebAction_SNS(snsType);
			oauth("NV");
		} else {
			oauth("NV");
		}
	});
	$("#fbLoginBtn").click(function(){
		snsType=3;
		if ( callApp=='T' ){
			//190722|wjy SNS회원가입,로그인 시 웹 으로 띄우기 (현재 앱 네이티브 로그인 작업이 오래걸림으로 웹으로 로그인처리),	2019-10-17 kyh 솔루션 전체적용
			//fnWebAction_SNS(snsType);
			oauth("FB");
		} else {
			oauth("FB");
		}
	});
	$("#kkLoginBtn").click(function(){
		snsType=2;
		if ( callApp=='T' ){
			//190722|wjy SNS회원가입,로그인 시 웹 으로 띄우기 (현재 앱 네이티브 로그인 작업이 오래걸림으로 웹으로 로그인처리),	2019-10-17 kyh 솔루션 전체적용
			//fnWebAction_SNS(snsType);
			oauth("KK");
		} else {
			oauth("KK");
		}
	});
	$("#igLoginBtn").click(function(){
		oauth("IG");
	});
	$("#ggLoginBtn").click(function(){
		oauth("GG");
	});
});

function oauth(loginType){
	var $redirect = $("#redirect").val();
	var $url = "/OAuth/?loginType="+ loginType +"&redirect="+ $redirect;

//'180807 edit bhc : SSL 부분사용 추가 - 페이스북은 무조건 ssl 사용
	if ( loginType=='FB' ){
		$url2="https://" + window.location.host + $url;
	} else {
		$url2=window.location.protocol + "//" + window.location.host + $url;
	}
	if ( getLCS("dv_id") == null)
	{
		window.open($url2, "_self");
	}else
	{
		//2019-07-24 khs : 앱새창시 버그로 네이티브 SNS 로그인이 아닌경우 무조건 현재창 에서 처리,	2019-10-17 kyh 솔루션 전체적용
		location.href=$url2
		//openPopupLayer($url2, "p", "500", "500", "")				//20201218 ksb App에서 layerpopup 으로 연결시 X-Frame-Options 설정에 대한 err_blocked_by_response 오류 발생으로 주석처리
//		$(function(){
//			callWebAction("ACT1015", {"url":$url2}, null);
//		})
	}

	//window.open($url, "_self");

	//var ifrm=openPopupM($url,"oauth",0,0,"");
	//openPopupM($url,"oauth",0,0,"");
}

//'181010 add bhc start ----------------------------------------------------------------------------------
//'앱에서 접속하고 특정 사이트일때 callWebAction 호출
function fnWebAction_SNS(snsType){
//SNS 앱이 설치되어 있는 경우 SNS 앱을 호출하여 로그인
//ACT1020	snsType : SNS 종류 (1:네이버, 2:카카오톡, 3:facebook)	accessToken // 토큰정보	SNS 로그인 연동
	callWebAction("ACT1020", [{"snsType":snsType}], "fnRtn_SNS");

//	alertdefault('snsType='+snsType);
//$('#tmp').text(snsType);
//return false;
}

function fnRtn_SNS(obj){
	var $obj;
	var $userInfo;
	var userID='';
	var userName='';
	var userEmail='';

	if ( typeof obj == 'string' ){
//$('#tmp').text(obj);
		$obj = jQuery.parseJSON(obj);
	} else if ( typeof obj == 'object' ){
//$('#tmp').text(JSON.stringify(obj, null));
		$obj = obj;
	} else {
		alert('로그인 실패하였습니다.[1]');
		return false;
	}

	convParamRedirect = $('#convParamRedirect').length>0 ? $('#convParamRedirect').val() : '';

	//네이버
	if ( snsType==1 ){
		var userInfoResult = $obj.userInfo;
		var $userInfoResult;
		if ( typeof userInfoResult == 'string' ){
			$userInfoResult = jQuery.parseJSON(userInfoResult);
		} else {
			$userInfoResult = userInfoResult;
		}

		if ( $userInfoResult.resultcode != '00' ){
			alert('로그인 실패하였습니다.[2]');
			return false;
		}

		if ( typeof $userInfoResult.response == 'string' ){
			$userInfo = jQuery.parseJSON($userInfoResult.response);
		} else {
			$userInfo = $userInfoResult.response;
		}

		userID = $userInfo.id;
		userName = $userInfo.name;
//		userName = unescape( userName.replaceAll2("\\", "%") );
		userEmail = $userInfo.email;

	//카카오톡
	} else if ( snsType==2 ){
		if ( typeof $obj.userInfo == 'string' ){
			$userInfo = jQuery.parseJSON($obj.userInfo);
		} else {
			$userInfo = $obj.userInfo;
		}

		userID = $userInfo.id;
		userName = $userInfo.nickname;
		userEmail = $userInfo.email;

	//페이스북
	} else if ( snsType==3 ){
		if ( typeof $obj.userInfo == 'string' ){
			$userInfo = jQuery.parseJSON($obj.userInfo);
		} else {
			$userInfo = $obj.userInfo;
		}

		userID = $userInfo.id;

		if ( $userInfo.last_name == undefined ) {
			userName = "";
		} else {
			userName = $userInfo.last_name;
		}
		if ( $userInfo.first_name != undefined ) {
			userName = userName + $userInfo.first_name;
		}
		userEmail = $userInfo.email;
	}

//$('#tmp').text( 'redirect==='+ convParamRedirect +'###accessToken==='+ $obj.accessToken +'###userID==='+ userID +'###userName==='+ userName +'###userEmail==='+ userEmail );
//return false;

	if ( userID == undefined ){
		alert('로그인 실패하였습니다.[3]');
		return false;
	}
	if ( userName == undefined ) userName = "";
	if ( userEmail == undefined ) userEmail = "";

	var $form = $('<form></form>');

	$form.attr('action', '/OAuth/AppLoginOk.asp');
	$form.attr('method', 'post');
	$form.attr('id', 'snsLoginForm');
	if ( $('#snsLoginForm').length>0 ) $('#tmpForm').remove();
	$form.appendTo('body');

	$form.append('<input type="hidden" name="snsType" value="'+ snsType +'">')
		.append('<input type="hidden" name="redirect" value="'+ convParamRedirect +'">')
		.append('<input type="hidden" name="accessToken" value="'+ $obj.accessToken +'">')
		.append('<input type="hidden" name="userID" value="'+ userID +'">')
		.append('<input type="hidden" name="userName" value="'+ userName +'">')
		.append('<input type="hidden" name="userEmail" value="'+ userEmail +'">');

	$form.submit();
}
//'181010 add bhc end -----------------------------------------------------------------------------------