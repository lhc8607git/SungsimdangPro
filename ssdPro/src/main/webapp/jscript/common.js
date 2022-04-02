if (navigator.userAgent.toLowerCase().indexOf("msie") != -1) {
	try { document.execCommand('BackgroundImageCache', false, true); } catch(e) {}
}

// Trim 함수 ##################################################
// Ex) str = "    테 스트   ".trim(); => str = "테 스트";
String.prototype.trim = function() {
	return this.replace(/(^[ \t\n\r]*)|([ \t\n\r]*$)/g,'');
}

// 문자열 공백제거 함수 ##################################################
// Ex) str = "    테 스   트   ".stripspace(); => str = "테스트";
String.prototype.stripspace = function() {
	return this.replace(/ /g, '');
}

// 전체 문자열 바꾸기 함수 ##################################################
// Ex) str = "a테스트bcd테스트efg".replaceAll("테스트", ""); => str = "abcdefg";
String.prototype.replaceAll = function(a, b) {
	var s = this;
	if (navigator.userAgent.toLowerCase().indexOf("msie") != -1)
		return s.replace(new RegExp(a, 'gi'), b);
	else
		return s.split(a).join(b);
}

// left 함수 ##################################################
var fnLeft = function(s,c){
  return s.substr(0,c);
}

// right 함수 ##################################################
var fnRight = function(s,c){
  return s.substr(-c);
}

// mid 함수 ##################################################
var fnMid = function(s,c,l){
  return s.substring(c,l);
}//mid("abcd",1,2)

// 0으로 자릿수 채우기 ##################################################
var prependZero = function(num, len){
	while(num.toString().length < len) {
		num = "0" + num;
	}
	return num;
}

// 인코딩 문자열 디코딩 ##################################################
function fnDecode(s1) {
	s1 = s1.replaceAll("&amp;", "&")
		.replaceAll("&lt;", "<")
		.replaceAll("&gt;", ">")
		.replaceAll("&quot;", "\"")
		.replaceAll("&#x27;", "\'")
		.replaceAll("&#x2F;", "\/");

	return s1;
}

// HTML 코드 JavaScript 문자열로 치환 ##################################################
function fnHTMLtoJS(s1) {
	s1 = s1
//		.toLowerCase()
		.replaceAll("<br>", "\n");

	return s1;
}

// JavaScript 문자열 HTML 코드로 치환 ##################################################
function fnJStoHTML(s1) {
	s1 = s1
//		.toLowerCase()
		.replaceAll("\\n", "<br>");
	return s1;
}

// 이벤트 추가 ##################################################
function addEvent(obj, type, listener) {
	if (window.addEventListener) obj.addEventListener(type, listener, false);
	else obj.attachEvent('on'+type, listener);
}

// 이벤트 추가 ##################################################
function removeEvent(obj, type, listener) {
	if (window.removeEventListener) obj.removeEventListener(type, listener, false);
	else obj.detachEvent('on'+type, listener);
}

// 팝업 ##################################################
function openPopup(theURL, winName, width, height, remFeatures) {
	var features = "";
	if (typeof winName == "undefined") winName = "";
	if (typeof width != "undefined") features += ((features) ? "," : "")+"width="+width;
	if (typeof height != "undefined") features += ((features) ? "," : "")+"height="+height;
	if (typeof remFeatures != "undefined") features += ((features) ? "," : "")+remFeatures;
	if (features.indexOf("status") < 0) features += ",status=yes";

	var popup = window.open(theURL, winName, features);
	popup.focus();

	return popup;
}

// 팝업 - 팝업창 화면중앙 오픈 ##################################################
function openPopupCenter(theURL, winName, width, height, remFeatures) {
	var left = (screen.width/2) - (width/2);
	var top = (screen.availHeight/2) - (height/2);
	var features = "left="+left+",top="+top+",width="+width+",height="+height;
	if (typeof winName == "undefined") winName = "";
	if (typeof remFeatures != "undefined") features += ","+remFeatures;
	if (features.indexOf("status") < 0) features += ",status=yes";

	var popup = window.open(theURL, winName, features);
	popup.focus();

	return popup;
}

// 팝업 - 팝업창 사이즈 조정 ##################################################
function resizePopupWindow(width, height) {

	var userAgent = navigator.userAgent.toLowerCase();
	var isMSIE = detectIE(); //(userAgent.indexOf('msie') != -1);  update 2016-06-28 jungeol kim
	var agentVer = 0;
	if (isMSIE) {
		var pos_msie = userAgent.indexOf('msie ');
		agentVer = parseInt(userAgent.substring(pos_msie+5, userAgent.indexOf(".", pos_msie)), 10);
	}
	var isMoz = (userAgent.indexOf('gecko') != -1);
	var isChrome = (userAgent.indexOf('chrome') != -1);

	var resizeWidth = width + 10;
	var resizeHeight = height + ((isMSIE) ? 71 : (isMoz ? (isChrome ? 55 : 81) : 49));

	window.resizeTo(resizeWidth, resizeHeight);

	if (!isChrome) {
		var lastHeight = resizeHeight - (parseInt(document.body.clientHeight, 10) - height);
		if (resizeHeight != lastHeight) { window.resizeTo(resizeWidth, lastHeight); }
	}
}

//IE 판단 add 2016-06-28 jungeol kim
function detectIE() {
  var ua = window.navigator.userAgent;

  // Test values; Uncomment to check result …

  // IE 10
  // ua = 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)';

  // IE 11
  // ua = 'Mozilla/5.0 (Windows NT 6.3; Trident/7.0; rv:11.0) like Gecko';

  // Edge 12 (Spartan)
  // ua = 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36 Edge/12.0';

  // Edge 13
  // ua = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586';

  var msie = ua.indexOf('MSIE ');
  if (msie > 0) {
	// IE 10 or older => return version number
	return parseInt(ua.substring(msie + 5, ua.indexOf('.', msie)), 10);
  }

  var trident = ua.indexOf('Trident/');
  if (trident > 0) {
	// IE 11 => return version number
	var rv = ua.indexOf('rv:');
	return parseInt(ua.substring(rv + 3, ua.indexOf('.', rv)), 10);
  }

  var edge = ua.indexOf('Edge/');
  if (edge > 0) {
	// Edge (IE 12+) => return version number
	return parseInt(ua.substring(edge + 5, ua.indexOf('.', edge)), 10);
  }

  // other browser
  return false;
}

// 팝업 - 팝업창 위치 조정 ##################################################
function movePopupWindow(left, top) {
	window.moveTo(left, top);
}

// 모달 ##################################################
function MM_openModal(theURL, obj, features) {
	window.showModalDialog(theURL, obj, features);
}

// 키 관련 함수 ##################################################
function blockKey(e) {
	var e = window.event || e;
	if (window.event) {
		e.returnValue = false;
	}
	else {
		if (e.which != 8) e.preventDefault(); // 8 : Back Space
	}
}

function blockEnter(e) {
	var e = window.event || e;
	if (window.event) {
		if (e.keyCode == 13) e.returnValue = false;
	}
	else {
		if (e.which == 13) e.preventDefault();
	}
}

function blockNotNumber(e, isDot) {
	if ( !isDot ){  isDot = false;	} //점(.)을 허용할수 있는 파라메터, jings3, 2018-05-11
	var returnVal;
	var e = window.event || e;
	if (window.event) {
		//if (e.keyCode < 48 || e.keyCode > 57) e.returnValue = false;
		returnVal = ( isDot ? ( e.keyCode < 48 || e.keyCode > 57 ) && ( e.keyCode !== 46 ) : (e.keyCode < 48 || e.keyCode > 57) ) // 46 : 쩜(.)
		if ( returnVal ){	e.returnValue = false;	}
	}
	else {
		//if (e.which != 8 && (e.which < 48 || e.which > 57)) e.preventDefault(); // 8 : Back Space
		returnVal = ( isDot ? e.which != 8 && (e.which < 48 || e.which > 57) && e.which !== 46 : e.which != 8 && (e.which < 48 || e.which > 57) );
		if ( returnVal ){	e.preventDefault();	}
	}
}

function onEnter(e, exec) {
	var e = window.event || e;
	var keyCode = (window.event) ? e.keyCode : e.which;
	if (keyCode == 13) eval(exec);
}

// 즐겨찾기 추가 ##################################################
// 예) <a href="javascript:;" onClick="addFavorites('홈페이지', 'http://www.homepage.com');">즐겨찾기 등록</a>
function addFavorites(title, url) {
   // Internet Explorer
   if(navigator.userAgent.toLowerCase().indexOf("msie") != -1)
   {
       window.external.AddFavorite(url, title);
   }
   // Google Chrome
   else if(window.chrome){
      alert("현재 브라우저에서는 Ctrl+D키를 누르시면 즐겨찾기에 추가하실 수 있습니다.");
   }
   // Firefox
   else if (window.sidebar) // firefox
   {
       window.sidebar.addPanel(title, url, "");
   }
   // Opera
   else if(window.opera && window.print)
   { // opera
      var elem = document.createElement('a');
      elem.setAttribute('href',url);
      elem.setAttribute('title',title);
      elem.setAttribute('rel','sidebar');
      elem.click();
   }
   else if (!!navigator.userAgent.match(/Trident\/7\./))
   {
	    alert("현재 브라우저에서는 Ctrl+D키를 누르시면 즐겨찾기에 추가하실 수 있습니다.");
   }
}

// 시작페이지 설정 ##################################################
// 예) <a href="javascript:;" onClick="setStartPage(this, 'http://www.homepage.com');">시작페이지로</a>
function setStartPage(obj, url) {
	if (document.all && window.external) { // IE
		obj.style.behavior = "url(#default#homepage)";
		obj.setHomePage(url);
	}
	else { // Firefox, Opera, Safari ...
		alert("현재 브라우져에서는 이용할 수 없습니다.");
		return;
    }
}

// 페이지 이동 ##################################################
function gotoUrl(url) {
	if (url.stripspace() != "") {
		location.href = url;
	}
}

// 페이지 최상단으로 ##################################################
function goTop() {
	window.scrollTo(0, 0);
}

// 이미지 미리보기 ##################################################
function previewImage(obj, imgId) {
	var objImg = document.getElementById(imgId);

	if (obj.value.stripspace() == "") return;

	var ext = getFileExt(obj.value).toUpperCase();

	if (ext == 'JPG' || ext == 'GIF' || ext == 'BMP' || ext == 'PNG') objImg.src = obj.value;
}

// 이미지 사이즈 줄이기 ##################################################
function resizeImage(objImg, limitId) {
	if (typeof (objImg) != "object") objImg = document.getElementById(objImg);
	var objParent = objImg.parentNode;
	var imgWidth = parseInt(objImg.width, 10);
	var fixWidth = imgWidth;

	if (typeof limitId == 'undefined') return;

	while (objParent) {
		if (objParent && objParent.id == limitId) {
			fixWidth = objParent.clientWidth;
			break;
		}
		objParent = objParent.offsetParent;
	}

	if (imgWidth > fixWidth) {
		objImg.width = fixWidth;
	}
}

function resizeImageAll(limitId) {
	var objLimit = document.getElementById(limitId);
	if (objLimit) {
		var fixWidth = objLimit.clientWidth;
		var arrImgs = objLimit.getElementsByTagName("IMG");
		for (var i=0, len=arrImgs.length; i<len; i++) {
			if (parseInt(arrImgs[i].width, 10) > fixWidth) {
				arrImgs[i].width = fixWidth;
			}
		}
	}
}

// IFRAME RESIZE 함수 ##################################################
function resizeFrame(iframeWindow, minWidth, minHeight, fixWidth, fixHeight) {
	if (!iframeWindow.name) return false;

	var iframeElement = document.getElementById(iframeWindow.name);
	var resizeWidth = 0;
	var resizeHeight = 0;

	minWidth = (minWidth ? parseInt(minWidth, 10) : 0);
	minHeight = (minHeight ? parseInt(minHeight, 10) : 0);
	fixWidth = (fixWidth ? parseInt(fixWidth, 10) : 0);
	fixHeight = (fixHeight ? parseInt(fixHeight, 10) : 0);

	if (document.all) { // ie
		if (iframeWindow.document.compatMode && iframeWindow.document.compatMode != 'BackCompat') {
			resizeWidth = iframeWindow.document.documentElement.scrollWidth;
			resizeHeight = iframeWindow.document.documentElement.scrollHeight;
		}
		else {
			resizeWidth = iframeWindow.document.body.scrollWidth;
			resizeHeight = iframeWindow.document.body.scrollHeight;
		}
	}
	else {
		resizeWidth = iframeWindow.document.body.scrollWidth;
		resizeHeight = iframeWindow.document.body.scrollHeight;
	}

	if (minWidth > 0 && resizeWidth < minWidth) resizeWidth = minWidth;			// 최소 폭
	if (minHeight > 0 && resizeHeight < minHeight) resizeHeight = minHeight;		// 최소 높이

	if (fixWidth > 0) resizeWidth = fixWidth;		// 고정 폭
	if (fixHeight > 0) resizeHeight = fixHeight;	// 고정 높이

	if (fixWidth > -1) iframeElement.style.width = resizeWidth + 'px';
	if (fixHeight > -1) iframeElement.style.height = resizeHeight + 'px';
}

// 현재 이벤트객체 Index 가져오기 ##################################################
function getDisObjIdx(obj) {
	var i = 0;
	var result = 0;

	var arrTag = document.getElementsByTagName(obj.tagName);

	if (obj.sourceIndex) {
		while (arrTag[i].sourceIndex < obj.sourceIndex) {
			if (arrTag[i].id == obj.id) ++result;
			++i;
		}
	}
	else if (obj.compareDocumentPosition) {
		while ((arrTag[i].compareDocumentPosition(obj) & 6) - 3 > 0) {
			if (arrTag[i].id == obj.id) ++result;
			++i;
		}
	}

	return result;
}

// 체크박스 전체선택 ##################################################
function checkCbAll(cbList, isChecked) {
	if (cbList) {
		if (typeof(cbList.length) == "undefined") {
			if (!cbList.disabled) cbList.checked = isChecked;
		}
		else {
			for (var i=0; i<cbList.length; i++) {
				if (cbList[i].type.toUpperCase() == 'CHECKBOX') {
					if (cbList[i].value.stripspace() != "" && !cbList[i].disabled) {
						cbList[i].checked = isChecked;
					}
				}
			}
		}
	}
}

// 텍스트 길이 확인 (일반) ##################################################
function checkTextLen(obj, mLen) {
	if (obj.value.length > mLen){
		alert("1~"+mLen+"자까지 입력이 가능합니다.");
		obj.value = obj.value.substring(0, mLen);
		obj.focus();
		return false;
	}

	return true;
}

// 텍스트 길이 확인 (Byte) ##################################################
function checkTextLenByte(obj, mLen) {
	var i, len;
	var byteLen = 0;
	var value = obj.value;

	for (i=0, len=value.length; i<len; i++) {
		++byteLen;

		if ((value.charCodeAt(i) < 0) || (value.charCodeAt(i) > 127)) ++byteLen;

		if (byteLen > mLen) {
			alert("1~"+(mLen / 2)+"자의 한글, 또는 2~"+mLen+"자의 영문, 숫자, 문장기호로 입력이 가능합니다.");
			obj.value = value.substring(0, i);
			obj.focus();
			return false;
		}
	}

	return true;
}

// 객체 Offset 가져오기 ##################################################
function getOffset(obj) {
	var offset = { left : 0, top : 0 };
	var parent = obj.offsetParent;

	offset.left = parseInt(obj.offsetLeft, 10);
	offset.top = parseInt(obj.offsetTop, 10);

	while (parent) {
		if (navigator.userAgent.toLowerCase().indexOf("msie") != -1) {
			offset.left += parseInt(parent.offsetLeft, 10)+(isNaN(parseInt(parent.currentStyle.borderLeftWidth, 10))?0:parseInt(parent.currentStyle.borderLeftWidth, 10));
			offset.top += parseInt(parent.offsetTop, 10)+(isNaN(parseInt(parent.currentStyle.borderTopWidth, 10))?0:parseInt(parent.currentStyle.borderTopWidth, 10));
		}
		else {
			offset.left += parseInt(parent.offsetLeft, 10);
			offset.top += parseInt(parent.offsetTop, 10);
		}
		parent = parent.offsetParent;
	}

	return offset;
}

// 텍스트 Byte 길이 가져오기 ##################################################
function getTextByte(value) {
	var i, len;
	var byteLen = 0;

	for (i=0, len=value.length; i<len; i++) {
		if (escape(value.charAt(i)).length >= 4) {
			byteLen += 2;
		}
		else if (escape(value.charAt(i)) != "%0D") {
			++byteLen;
		}
	}

	return byteLen;
}

// 입력 문자길이 확인후 다음항목으로 포커스 옮기기 ##################################################
function goNextFocus(obj, len, next_item) {
	if (obj.value.stripspace().length == len){
		next_item.focus();
	}
}

// 영문 문자열 확인 ##################################################
function strEngCheck(value){
	var i;

	for(i=0;i<value.length-1;i++){
		// 한글 체크 (한글 ASCII코드 : 12593부터)
		if (value.charCodeAt(i) > 12592) return false;
		// 공백 체크
		if (value.charAt(i) == " ") return false;
	}
	return true;
}

// 파일명 확인 ##################################################
function checkFileName(obj) {
	var result = false;

	if (obj.value.stripspace() != "") {
		var fidx = obj.value.lastIndexOf("\\")+1;
		var filename = obj.value.substr(fidx, obj.value.length);
		result = strEngCheck(filename);
	}

	if (!result) {
		alert("파일명을 반드시 영문 또는 숫자로 해주세요.");
		obj.focus();
		return false;
	}
	return true;
}

// 파일 확장자 ##################################################
function getFileExt(value) {
	if (value != "") {
		var fidx = value.lastIndexOf("\\")+1;
		var filename = value.substr(fidx, value.length);
		var eidx = filename.lastIndexOf(".")+1;

		return filename.substr(eidx, filename.length);
	}
}

// 파일확장자 확인 ##################################################
function checkFileExt(obj, exts, errMsg) {

	var arrExt = exts.toLowerCase().split(",");
	var result = false;

	if (obj.value.stripspace() != "") {
		var ext = getFileExt(obj.value).toLowerCase();

		for (var i=0; i<arrExt.length; i++) {
			if (arrExt[i].trim() == ext) result = true;
		}
	}

	if (!result) {
		alert(errMsg);
		obj.focus();
		return false;
	}
	return true;
}

//20190919 joonyus
function checkFileExtNew(obj, exts, errMsg) {

	var arrExt = exts.toLowerCase().split(",");
	var result = false;

	if (obj.stripspace() != "") {
		var ext = getFileExt(obj).toLowerCase();

		for (var i=0; i<arrExt.length; i++) {
			if (arrExt[i].trim() == ext) result = true;
		}
	}

	if (!result) {
		alert(errMsg);

		return false;
	}
	return true;
}

// 영문/숫자  만허용
function checkOnlyEng(str) {
	var RegExpE =  /^[A-Za-z0-9+]*$/;
	return (RegExpE.test(str)) ? true : false;
}

// 영문/숫자 혼용 확인 ##################################################
function checkEngNum(str) {
	var RegExpE = /[a-zA-Z]/i;
	var RegExpN = /[0-9]/;

	return (RegExpE.test(str) && RegExpN.test(str)) ? true : false;
}

// 특수문자 확인 ##################################################
function checkSpecialChar(value) {
	var specialChar = "`~!@#$%^&*_+=|\\[]{}:;,<.>/?'\"";
	for (var i=0, len=specialChar.length; i<len; i++) {
		if (value.indexOf(specialChar.substr(i, 1)) != -1) return true;
	}
	return false;
}

// 아이디 확인 ##################################################
function checkID(value, min, max) {
	var RegExp = /^[a-zA-Z0-9_]*$/i;
	var returnVal = RegExp.test(value) ? true : false;
	if (typeof(min) != "undefined" && value.length < min) returnVal = false;
	if (typeof(max) != "undefined" && value.length > max) returnVal = false;
	return returnVal;
}

// 비밀번호 확인 ##################################################
function checkPass(value, min, max) {
	var RegExp = /^[a-zA-Z0-9\`\~\!\@\#\$\%\^\&\*\_\+\=\|\\\[\]\{\}\:\;\,\<\.\>\/\?\'\"]*$/i;
	var returnVal = RegExp.test(value) ? true : false;
	if (typeof(min) != "undefined" && value.length < min) returnVal = false;
	if (typeof(max) != "undefined" && value.length > max) returnVal = false;
	return returnVal;
}

// 숫자 확인 ##################################################
function checkNum(value, isDec) {
	var RegExp;

	if (!isDec) isDec = false;
	RegExp = (isDec) ? /^-?[\d\.]*$/ : /^-?[\d]*$/;

	return RegExp.test(value)? true : false;
}

// 이메일 확인 ##################################################
function checkEmail(email) {
	//if (email.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1) {
	// 20180704 kyh
	if (email.search(/^[A-Za-z0-9_-]+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1) {
		return true;
	}
	else {
		return false;
	}
}

// URL 확인 ##################################################
function checkUrl(url) {
	var exp = new RegExp("^(http|https)\:\/\/");
	if (exp.test(url.toLowerCase())) {
		return true;
	}
	else {
		return false;
	}
}

// 공백 확인 ##################################################
function checkEmpty(obj) {
	if (obj.value.stripspace() == "") {
		return true;
	}
	else {
		return false;
	}
}

// Radio(CheckBox) 설정값 가져오기 ##################################################
function getRadioVal(obj) {
	var i, value = "";

	if (obj) {
		if (typeof(obj.length) == "undefined") {
			if (obj.checked) {
				value = obj.value;
			}
		}
		else {
			for (i=0; i<obj.length; i++) {
				if (obj[i].checked) {
					value = obj[i].value;
					break;
				}
			}
		}
	}
	return value;
}

// Radio 설정하기 ##################################################
function setRadioVal(obj, value) {
	var i;

	if (obj) {
		if (typeof(obj.length) == "undefined") {
			if (obj.value == value) {
				obj.checked = true;
			}
		}
		else {
			for(i=0; i<obj.length; i++) {
				if (obj[i].value == value) {
					obj[i].checked = true;
					break;
				}
			}
		}
	}
}

// Radio Disabled 설정하기 ##################################################
function setRadioDisabled(obj, value, disabled) {
	var i;

	if (obj) {
		if (typeof(obj.length) == "undefined") {
			if (obj.value == value) {
				obj.disabled = disabled;
			}
		}
		else {
			for(i=0; i<obj.length; i++) {
				if (obj[i].value == value) {
					obj[i].disabled = disabled;
					break;
				}
			}
		}
	}
}

// Form Disabled 전체 설정하기 ##################################################
function setRadioDisabledAll(obj, disabled) {
	var i;

	if (obj) {
		if (typeof(obj.length) == "undefined") {
			obj.disabled = disabled;
		}
		else {
			for(i=0; i<obj.length; i++) {
				obj[i].disabled = disabled;
			}
		}
	}
}

// Select 설정값 가져오기 ##################################################
function getSelectVal(obj) {
	var value = "";
	var idx = obj.selectedIndex;

	if (idx >= 0){
		value = obj.options[idx].value;
	}

	return value;
}

// Select Option 추가 ##################################################
function selectAddList(obj, text, value) {
	var newOpt = document.createElement("OPTION");
	newOpt.text = text;
	newOpt.value = value;
	obj.options.add(newOpt);
}

// Select Option 전체삭제 ##################################################
function selectRemoveAll(obj) {
	for (var i=obj.length-1; i>=0; i--) {
		selectRemoveList(obj, i);
	}
}

// Select Option 삭제 ##################################################
function selectRemoveList(obj, i) {
	obj.remove(i);
}

// Hidden 추가 ##################################################
function addHidden(f, name, value) {
	var input = document.createElement('INPUT');
	input.type = 'HIDDEN';
	input.name = name;
	input.value = value;
	f.appendChild(input);
}

// 숫자 문자열에서 문자열 제거 ##################################################
function stripCharFromNum(value, isDec) {
	var i;
	var minus = "-";
	var nums = "1234567890"+((isDec) ? "." : "");
	var result = "";

	for(i=0; i<value.length; i++) {
		numChk = value.charAt(i);
		if (i == 0 && numChk == minus) {
			result += minus;
		}
		else {
			for(j=0; j<nums.length; j++) {
				if(numChk == nums.charAt(j)) {
					result += nums.charAt(j);
					break;
				}
			}
		}
	}
	return result;
}

// 콤마(,) 제거 ##################################################
function stripComma(str) {
    var re = /,/g;
    return str.replace(re, "");
}

// 숫자 3자리수마다 콤마(,) 찍기 ##################################################
function formatComma(num, pos) {
	if (!pos) pos = 0;  //소숫점 이하 자리수
	var re = /(-?\d+)(\d{3}[,.])/;
	//예외처리 추가, jings3, 2018-06-14
	num = ( num === undefined ? 0 : isNaN(num) ? 0 : num );

	var strNum = stripComma(num.toString());
	var arrNum = strNum.split(".");

	arrNum[0] += ".";

    while (re.test(arrNum[0])) {
        arrNum[0] = arrNum[0].replace(re, "$1,$2");
    }

	if (arrNum.length > 1) {
		if (arrNum[1].length > pos) {
			arrNum[1] = arrNum[1].substr(0, pos);
		}
		return arrNum.join("");
	}
	else {
		return arrNum[0].split(".")[0];
	}
}

// 내림 ##################################################
// num: 대상 숫자, pos: 대상 자리수
function setFloor(num, pos) {
	if(!pos) pos = 0;
	return Math.floor(num * Math.pow(10, pos)) / Math.pow(10, pos);
}

// 반올림 ##################################################
// num: 대상 숫자, pos: 대상 자리수
function setRound(num, pos) {
	if(!pos) pos = 0;
	return Math.round(num * Math.pow(10, pos)) / Math.pow(10, pos);
}

// 올림 ##################################################
// num: 대상 숫자, pos: 대상 자리수
function setCeil(num, pos) {
	if(!pos) pos = 0;
	return Math.ceil(num * Math.pow(10, pos)) / Math.pow(10, pos);
}

// 강제 소수점 이하 0채우기 ##################################################
// num: 대상 숫자, pos: 출력을 원하는 소수점자리수
function setRoundZero(num, pos) {
	var strNum = stripComma(num.toString());
	var arrNum = strNum.split(".");

	if (arrNum.length <= 1) {
		num = arrNum[0]+".";
		for (var i=0; i<pos; i++) {
			num += "0";
		}
	}
	else {
		num = setRound(num, pos);
	}
	return num;
}

// 소수점 이하 자리수 확인 ##################################################
// num: 대상 숫자, pos: 희망 소수점 이하자리수
function checkRound(num, len) {
	var strNum = stripComma(num.toString());
	var arrNum = strNum.split(".");

	if (arrNum.length > 1 && arrNum[1].length > len) return false;
	else return true;
}

// 숫자 문자열에서 "0" 시작문자 제거 ##################################################
function removePreZero(str) {
	var i, result;

	if (str == "0") return str;

	for (i = 0; i<str.length; i++) {
		if (str.substr(i,1) != "0") break;
	}

	result = str.substr(i, str.length-i);
	return result;
}

// 통화형태로 변환 ##################################################
function toCurrency(obj) {
	if (obj.disabled) return false;

	var num = obj.value.stripspace();
	if (num == "") return false;

	if (!checkNum(stripComma(num))) {
		//alert ("숫자만 입력해주세요.");
		num = stripCharFromNum(num, false);
		obj.blur(); obj.focus();
	}
	num = stripCharFromNum(stripComma(num), false);
	num = removePreZero(num);
	obj.value = formatComma(num);
}

// 숫자입력 확인 ##################################################
function numberOnly(obj, isDec) {
	if (!isDec) isDec = false;
	if (obj.disabled) return false;

	var num = obj.value.stripspace();
	if (num == "") return false;

	if (!checkNum(num, isDec)) {
		//alert ("숫자만 입력해주세요.");
		num = stripCharFromNum(num, isDec);
		obj.blur(); obj.focus();
	}
	num = stripCharFromNum(stripComma(num), isDec);

	var arrNum = num.split(".");
	if (arrNum.length > 1) {
		obj.value = arrNum[0]+"."+arrNum[1];
	}
	else {
		obj.value = arrNum[0];
	}
}

// 숫자 증감 처리 ##################################################
function controlNum(obj, mode, isminus) {
	var num = obj.value;
	if (!isminus) isminus = 0;

	num = (num.stripspace() == "") ? 0 : num;
	num = (isNaN(num)) ? 0 : parseInt(num, 10);

	if (mode == '+') ++num;
	else --num;

	if (isminus != 1 && num < 0) num = 0;

	obj.value = num;
}


// 윈도우 팝업 - 개인정보취급방침 ############################
function openWin() {
 window.open("/other/pop_business.asp", "new", "width=400,height=280,scrollbars=yes");
}


// 레이어 탭메뉴를 위한 스크립트 heechan 2012-12-08
function DisplayMenu(counter, layerEA, layerName)
{
	for (i=1; i<=layerEA; i++)
	if (counter == i) {
//	thisMenu = eval(layerName + counter + ".style");
	thisMenu = document.getElementById(layerName + counter);
	thisMenu.style.display = "";
	}
	else {
//	otherMenu = eval(layerName + i + ".style");
	otherMenu = document.getElementById(layerName + i);
	otherMenu.style.display = "none";
	}
}

//******  숫자만  ************
function Numbers( el ) {
	el.value = el.value.replace( /\D/g, '' );
}


function chkNull(obj) {
	if (obj == "" || typeof(obj) == "undefined") {
		return true;
	}
	else {
		return false;
	}
}

/**
  * textarea 글자수 , 바이트수 체크하기.
  * @param oid : 글자를 받을 Textarea ID
  * @param tid : 바이트 체크된 값 리턴될 엘리먼트 ID
  * @param size : maxSize
*/

function pubByteCheckTextarea(oid,tid,size){
	$(oid).on("keyup",function(){
		var byteTxt = "";
		var byte = function(str){
			var byteNum=0;

			for(i=0;i<str.length;i++){
				byteNum+=(str.charCodeAt(i)>127)?2:1;
				if(byteNum<size){
					byteTxt+=str.charAt(i);
				};
			};

			return Math.round( byteNum );
		};

		if(byte($(this).val())>size){
			$(this).val(byteTxt);
		}else{
			$(tid).html( byte($(this).val()) );
		}
	});
};


//에디터 생성  20161005 joonyus
var editor_id;
function get_editor(set_id,set_lang){
	tinymce.init({
        selector: "#"+set_id,
        theme: "modern",
        language: set_lang,
        menubar:false,
		statusbar: false,
		keep_styles: true,
		forced_root_block : false,
		force_br_newlines : true,
		force_p_newlines : false,
		autoresize_max_height: 400,
        plugins: "autolink autosave code link media image table textcolor autoresize preview",
		toolbar: "fontselect fontsizeselect  styleselect forecolor bold italic alignleft aligncenter alignright alignjustify bullist numlist outdent indent table link custom_image copy strikethrough preview code ",
		//toolbar1: "undo redo | fontselect fontsizeselect  styleselect | forecolor bold italic | alignleft aligncenter alignright alignjustify  ",
		//toolbar2: "bullist numlist outdent indent | table link custom_image copy strikethrough preview code",
		toolbar_items_size: 'small',
		setup: function(editor) {
		editor.addButton('custom_image', {
		title: 'Image',
		icon: 'image',
		onclick: function() {
			editor_id=tinymce.activeEditor.settings.selector;
			window.open("/common/editor/tinymce/photo_upload.asp?id="+editor_id.replace("#",""),"tinymcePop","width=400,height=350");
			}
		});
		}
	});
}


function get_editor_full(set_id,set_lang){
	tinymce.init({
        selector: "#"+set_id,
        theme: "modern",
        language: set_lang,
        menubar:false,
		statusbar: false,
		keep_styles: true,
		forced_root_block : false,
		force_br_newlines : true,
		force_p_newlines : false,
		autoresize_max_height: 400,
        plugins: "autolink autosave code link media image table textcolor autoresize preview fullpage",
		toolbar: "fontselect fontsizeselect  styleselect forecolor bold italic alignleft aligncenter alignright alignjustify bullist numlist outdent indent table link custom_image copy strikethrough preview code ",
//		toolbar1: "undo redo | fontselect fontsizeselect  styleselect | forecolor bold italic | alignleft aligncenter alignright alignjustify  ",
//		toolbar2: "bullist numlist outdent indent | table link custom_image copy strikethrough preview code",
		toolbar_items_size: 'small',
		setup: function(editor) {
		editor.addButton('custom_image', {
		title: 'Image',
		icon: 'image',
		onclick: function() {
			editor_id=tinymce.activeEditor.settings.selector;
			window.open("/common/editor/tinymce/photo_upload.asp?id="+editor_id.replace("#",""),"tinymcePop","width=400,height=350");
			}
		});
		}
	});
}

function get_editor_script(set_id,set_lang){
	tinymce.init({
        selector: "#"+set_id,
        theme: "modern",
        language: set_lang,
        menubar:false,
		statusbar: false,
		keep_styles: true,
		forced_root_block : false,
		force_br_newlines : true,
		force_p_newlines : false,
		autoresize_max_height: 400,
		allow_script_urls : true,
        plugins: "autolink autosave code link media image table textcolor autoresize preview fullpage",
		toolbar: "fontselect fontsizeselect  styleselect forecolor bold italic alignleft aligncenter alignright alignjustify bullist numlist outdent indent table link custom_image copy strikethrough preview code ",
//		toolbar1: "undo redo | fontselect fontsizeselect  styleselect | forecolor bold italic | alignleft aligncenter alignright alignjustify  ",
//		toolbar2: "bullist numlist outdent indent | table link custom_image copy strikethrough preview code",
		toolbar_items_size: 'small',
		setup: function(editor) {
		editor.addButton('custom_image', {
		title: 'Image',
		icon: 'image',
		onclick: function() {
			editor_id=tinymce.activeEditor.settings.selector;
			window.open("/common/editor/tinymce/photo_upload.asp?id="+editor_id.replace("#",""),"tinymcePop","width=400,height=350");
			}
		});
		}
	});
}


//레이어팝업
function slb_div(){
	var div_data = "";
	div_data += "<div id='SLB_film' style='z-index: 99997; position:absolute; display:none; width:100%; height:100%; background-color:#000000; filter:Alpha(opacity=80); opacity:0.8; -moz-opacity:0.8;'></div>";
	div_data += "<div id='SLB_content' onclick='fn_Lightbox();' align='center' style='z-index: 99999; position:absolute;'></div>";
	div_data += "<div id='SLB_loading' onclick='fn_Lightbox();'>";
	div_data += "	<img src='/Images/Common/progress.gif' border='0' width='60' height='60' alt='Loading...' />";
	div_data += "</div>";
	$("#slb").html(div_data);
}

//관리자 배너이미지 숫자
function admBnrIdx(){
	$(".forIndex .AdmBnrImg").each(function(){
		$(this).find(".AdmBnrImgIdx").text($(this).attr("sort"))
	})
}



//오늘 날짜 (yyyy-mm-dd)
function fnGet_Date(num){
	var obj_date = new Date()
		, year
		, month
		, day
		, str_date
	;

	obj_date.setDate(obj_date.getDate() + num);

	year = obj_date.getFullYear().toString();

	month = obj_date.getMonth() + 1;
	month = month < 10 ? '0'+ month.toString() : month.toString();

	day = obj_date.getDate();
	day = day < 10 ? '0'+ day.toString() : day.toString();

	str_date = year +'-'+ month +'-'+ day;

	return str_date;
}

// 레이어 팝업 ##################################################
function openPopupLayer(theURL, winName, width, height, remFeatures) {
	var features = "";
	if (typeof winName == "undefined") winName = "";
	if (typeof width != "undefined") features += ((features) ? "," : "")+"width="+width;
	if (typeof height != "undefined") features += ((features) ? "," : "")+"height="+height;
	if (typeof remFeatures != "undefined") features += ((features) ? "," : "")+remFeatures;
	if (features.indexOf("status") < 0) features += ",status=yes";

	var popdiv = document.createElement("div");
	var popup = document.createElement("iframe");
	var popCloseObj = document.createElement("div");
	popdiv.appendChild(popCloseObj);
	popdiv.appendChild(popup);
	document.body.appendChild(popdiv);

	popdiv.id=winName;
	popdiv.className=winName;
	popdiv.style.height=height +"px";
	popdiv.style.width=width +"px";

	popdiv.style.position="fixed";
	popdiv.style.top="50%";
	popdiv.style.left="50%";
	popdiv.style.zIndex="100000";
	popdiv.style.transition="top 0.5s";

	popCloseObj.id="btnClLyr"
	popCloseObj.style.position="absolute";
	popCloseObj.style.width="100%";
	popCloseObj.style.top="-50%";
	popCloseObj.style.left="-50%";
	popCloseObj.style.margin="-20px 0 0 20px";
	popCloseObj.style.textAlign="right";
	popCloseObj.style.zIndex="1";
	//popCloseObj.innerHTML="<input type='button' value='X' onclick='parent.closePopupLayer();'>"
	popCloseObj.innerHTML="<a href='javascript:parent.closePopupLayer();' class='btnLayerClose'><i class='material-icons'>clear</i></a>"

	popup.name = winName;
	popup.id = winName;
	popup.src = theURL;
	popup.width="100%";
	popup.height="100%";
	popup.style.position="absolute"
	popup.style.top="-50%";
	popup.style.left="-50%";
	if(winName == 'pwnd_detail'){
		popup.style.padding="0";
	}else{
		popup.style.padding="20px";
	}
	popup.style.margin="-20px 0 0 -20px";
	popup.style.backgroundColor="#ffffff";
	popup.style.border="1px solid #c9c9c9";
	popup.style.borderRadius="3px";
	popup.frameBorder="0";

	window.popupObj = popdiv
	popup.focus();
	document.body.style.overflow="hidden";



	// 20190225 mempil 레이어팝업 열때 Dimmed 클래스 추가
	var div = parent.document.createElement("div");
	div.className = "dimmed";
	// body에 심기
	parent.document.getElementsByTagName("body")[0].appendChild(div);

	return popup;
}

/* 함수(isFuncClosePopupLayer)의 존재 여부를 체크//(S)*/
	if (typeof closePopupLayer !="function"){
		closePopupLayer = function (){
			var popdiv = window.popupObj;

			//180622|wjy 익스플로러에서 동작이 안되서 변경..
			//popdiv.remove();
			popdiv.parentNode.removeChild(popdiv);
			document.body.style.overflow="initial";

			// 20190225 mempil 레이어팝업 닫을때 dimmed 클래스 있으면 삭제
			if($('.dimmed').length){
				$('.dimmed').remove();
			}
		}
	}
/* 함수(isFuncClosePopupLayer)의 존재 여부를 체크//(E)*/


function move2Center(obj){
	var left = (window.innerWidth/2) - ($(obj).width()/2+20)//+$(document).scrollLeft();
	var top = (window.innerHeight/2) - ($(obj).height()/2+20)//+$(document).scrollTop();
	$(obj).css("left",left);
	$(obj).css("top",top);
}

function checkNumeric(value){
	value = stripComma(value.toString());
	if (value == parseInt(value,10)){
		return parseInt(value,10);
	}
	if (value == parseFloat(value)){
		return parseFloat(value);
	}
	if (isNaN(parseFloat(value))){
		return 0;
	}
}

function isValidDomain(el) { //도메인 체크
	var pattern = /^.+(\.[a-zA-Z]{2,3})$/;
	return (pattern.test(el.value.trim())) ? true : false;
}



var doubleSubmitFlag	= false;		//이중 전송 방지
//form double submit block
function doubleSubmitCheck(){
	if(doubleSubmitFlag){
		return doubleSubmitFlag;
	}else{
		doubleSubmitFlag = true;
		return false;
	}
}

//폼필드 input 갯수를 가져와 배열처리할지 아닐지를 결정, jings3, 2018-04-17
function getFormInputValue(objTag){
	var return_val = "";
	if ( objTag === undefined ){
		return return_val;
	}else{
		return_val = ( objTag.length === undefined ? objTag.value : objTag[0].value );
	}
	return return_val;
}






//' ######################################################################
//'Function name	: fnGet_ResizeImg
//'Create Date		: 2018-05-23
//'Creator			: bhc
//'Edit Date			:
//'Editor				:
//'Parameter		:
//'	obj1				= 파일 객체
//'	callback			= 콜백 함수
//'Return			: object
//'Description		: 이미지 사이즈를 설정된 값에 따라 비율을 유지하며 줄임
//' ######################################################################
function fnGet_ResizeImg(obj1, callback){
	var resize_fileInfo = obj1[0].files[0]
		, resize_fileType = resize_fileInfo.type
		, resize_tmpImg
		, resize_tmpImgUrl = window.URL || window.webkitURL
		, resize_imgW, resize_imgH
		, resize_fileW = 0, resize_fileH = 0
		, resize_newFileW = 0, resize_newFileH = 0
		, resize_restFileW = 0, resize_restFileH = 0
		, resize_ratioW, resize_ratioH;

	if (!resize_fileType.match(/image\//)) return false;

	resize_imgW = obj1.resize_imgW;
	resize_imgH = obj1.resize_imgH;

	resize_tmpImg = new Image();
	resize_tmpImg.src = resize_tmpImgUrl.createObjectURL(resize_fileInfo);

	resize_tmpImg.onload = function () {
		resize_fileW = this.width;
		resize_fileH = this.height;

		if ( resize_fileW > resize_fileH ){
			if ( resize_fileW > resize_imgW ){
				resize_newFileW = resize_imgW;
				resize_restFileW = resize_fileW - resize_imgW;
				resize_ratioW = setRound( (resize_restFileW / resize_fileW) , 3 );

				resize_newFileH = setRound( resize_fileH - (resize_fileH * resize_ratioW) , 0 );
			}
		}
		else if ( resize_fileW < resize_fileH ){
			if ( resize_fileH > resize_imgH ){
				resize_newFileH = resize_imgH;
				resize_restFileH = resize_fileH - resize_imgH;
				resize_ratioH = setRound( (resize_restFileH / resize_fileH) , 3 );

				resize_newFileW = setRound( resize_fileW - (resize_fileW * resize_ratioH) , 0 );
//				resize_restFileW = resize_fileW - resize_newFileW;
//				resize_ratioW = setRound( (resize_restFileW / resize_fileW) , 3 );
			}
		}
		else {	//fileW == fileH
			if ( resize_fileW > resize_imgW ){
				resize_newFileW = resize_imgW;
				resize_restFileW = resize_fileW - resize_imgW;
				resize_ratioW = setRound( (resize_restFileW / resize_fileW) , 3 );

				resize_newFileH = setRound( resize_fileH - (resize_fileH * resize_ratioW) , 0 );
			}
		}

		obj1.newFileW = resize_newFileW;
		obj1.newFileH = resize_newFileH;
		callback(obj1);
	}
}

//fnGet_ResizeImg 의 콜백함수 : 이미지 정보 입력
function fnRtn_ResizeImg(obj1){
	$("[name=attachImgW]").val(obj1.newFileW);
	$("[name=attachImgH]").val(obj1.newFileH);
}

//js dateFormat , jings3, 2018-07-12 //(S)
	function dateFormat(timestr, strFormat){
		var date = new Date();

		if(timestr.length == 14) { // 날짜 String 최소길이 체크
			var year  = timestr.substr(0,4);
			var month = timestr.substr(4,2) - 1; // 1월=0,12월=11 이므로 1 감해준다
			var day   = timestr.substr(6,2);
			var hour  = timestr.substr(8,2);
			var min   = timestr.substr(10,2);
			var sec   = timestr.substr(12,2);
			date = new Date(year, month, day, hour, min, sec);
		}

		var c_year  = date.getFullYear();
		var c_month = date.getMonth() + 1; // 1월=0,12월=11이므로 1 add
		var c_day   = date.getDate();
		var c_hour  = date.getHours();
		var c_min   = date.getMinutes();
		var c_sec   = date.getSeconds();

		if (('' + c_month).length == 1) { c_month = '0' + c_month; } // '' 를 add 함으로써 int => String 화
		if (('' + c_day).length   == 1) { c_day   = '0' + c_day;   }
		if (('' + c_hour).length  == 1) { c_hour  = '0' + c_hour;  }
		if (('' + c_min).length   == 1) { c_min   = '0' + c_min;   }
		if (('' + c_sec).length   == 1) { c_sec   = '0' + c_sec;   }

		var c_date =	strFormat.replace( /yyyy/gi, c_year );
		c_date =	c_date.replace( /mm/gi, c_month );
		c_date =	c_date.replace( /dd/gi, c_day );
		c_date =	c_date.replace( /hh/gi, c_hour );
		c_date =	c_date.replace( /nn/gi, c_min );
		c_date =	c_date.replace( /ss/gi, c_sec );
		return c_date;
}
//js dateformat , jings3, 2018-07-12 //(E)


//2018-05-24 khs : 레이어 얼럿
function layer_alert(alert_string){
	var delayTm = 1000;
	if (arguments.length==2){
		delayTm = arguments[1];
	}
	// 레이어 얼럿 엘레멘트 없으면 생성
	if ($('body #alert_pop',document).length==0){
		$('body',document).append('<div id="alert_pop" style="display: none;"><div class="inner"><p id="pop_content_alert"></p></div></div>')
	}

	//css 적용
	$("#alert_pop",document).css({"position":"fixed", "width":"100%", "z-index":"999999999",  "bottom":"50%"})
	$("#alert_pop .inner",document).css({"width":"90%", "margin":"0 auto", "color":"#fff", "background-color":"rgba(58, 57, 57, 0.8)","border-radius":"8px", "box-sizing":"border-box", "padding":"10px"})
	$("#alert_pop .inner p",document).css({"font-size":"14px", "line-height":"1.5em"})

	//미디어 쿼리 css 적용
	if (!window.matchMedia('(max-width: 568px)').matches){
		$("#alert_pop",document).css({"left":"0", "right":"0", "width":"100%", "margin":"auto", "max-width": "568px"})
	}

	$("#pop_content_alert",document).html(alert_string);
	if ($('#alert_pop',document).attr("style").indexOf("display: none")>-1){
		$('#alert_pop',document).fadeIn().delay(delayTm).fadeOut();
	}
}

//2018-07-19 khs : console 없는경우 대체
function logger(str){
	// Log to native console if possible, alert otherwise
	var cs = window.console || {log:function(s){layer_alert(s)}} ;
	cs.log(str);
	return
}

///20181024 joonyus 전화번호 정규식 01011112222->010-1111-2222  type : 0 넣을시 011123-1234 -> 011-0123-1234
function phoneFomatter(num,type){
    var formatNum = '';
    if(num.length==11){
        if(type==0){
            formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-****-$3');
        }else{
            formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
        }
    }else if(num.length==8){
        formatNum = num.replace(/(\d{4})(\d{4})/, '$1-$2');
    }else{
        if(num.indexOf('02')==0){
            if(type==0){
                formatNum = num.replace(/(\d{2})(\d{4})(\d{4})/, '$1-****-$3');
            }else{
                formatNum = num.replace(/(\d{2})(\d{4})(\d{4})/, '$1-$2-$3');
            }
        }else{
            if(type==0){
                formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-***-$3');
            }else{
                formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');
            }
        }
    }
    return formatNum;
}


/*
' ######################################################################
'	Function name	: setCurrency
'	Parameter		:
'				value						= 화폐값
'	Return				: String
'	Description		: 기본 화폐 표시 설정
' ######################################################################
*/
function setCurrency(value){
	var simbol = "원"

	//2019-01-29 khs : 공백값 및 회원전용문구에 대한부분 수정
	if (value!="" && value.toString().indexOf("품절")<0 && value.toString().indexOf("회원전용")<0){
		value = value.toString().replace(/[^0-9]/g, "")
	}else{	//품절인경우
		return value
	}

	return setCurrencyStyle(value, simbol)
}
/*
' ######################################################################
'	Function name	: setCurrencyStyle
'	Parameter		:
'				value						= 화폐값
'				curSimbol				= 화폐단위
'	Return				: String
'	Description		: 화폐 표시 설정
' ######################################################################
*/
function setCurrencyStyle(value, curSimbol){
	var arrCur = ["&#8361;","&#165;", "Vpay"]

	if (arrCur.indexOf(curSimbol)>-1){
		value = curSimbol +" "+ formatComma(value)
	}else{
		value = formatComma(value) +" "+ curSimbol
	}

	return value
}

// 디바이스 정보 로컬스토리지 저장
function setLCS(key, value){
	localStorage.setItem(key, value)
}
// 디바이스 정보 로컬스토리지 확인
function getLCS(key){
	return localStorage.getItem(key)
}
// 디바이스 정보 로컬스토리지 삭제
function removeLCS(key){
	localStorage.removeItem(key)
}



function fnSet_TitleMSG(){
	// 타이틀 바에 나타날 메시지
	var message = new Array(
		"mallUp"
		, "기업형 1등 쇼핑몰 솔루션"
		, "중국 쇼핑몰 제작"
		, "단연 mallUp입니다."
		, "뷰티스킨 출시"
		, "7가지 마케팅을 한번에 관리"
		, "몰인몰 솔루션은"
		, "mallUp 이 최초이자 최고입니다."
		, "쇼핑몰 제작은 역시"
	);
	// 반복 횟수
	var reps = 1;
	var speed = 300; // Set the overall typing speed (larger number = slower action).
	var hold = 5 // set the length of time to display the whole phrase before retyping (larger number = longer)
	// DO NOT EDIT BELOW THIS LINE.
	var p = message.length;
	var q = 0;
	var r = 0;
	var C = 0;
	var mC = 0;
	var s = 0;
	var sT = null;
	if (reps < 1) {
		reps = 1;
	}

	setMessage = function(){
		typing = message[mC];
		q = typing.length;
		r = q + hold;
		typeMessage();
	}

	, typeMessage = function(){
		if (s > r) {
			s = 0;
		}
		if (s > q) {
			document.title = "" + typing + "";
		} else {
			if (s>0){
				document.title = "" + typing.substr(0, s) + "";
			}
		}
		if (C < (r * reps)) {
			sT = setTimeout("typeMessage()", speed);
			C++;
			s++;
		} else {
			C = 0;
			s = 0;
			mC++;
			if (mC > p - 1) {
				mC = 0;
			}
			sT = null;
			setMessage();
		}
	}

	setMessage();
}


// 회원전용 상품의 경우 구매아이콘 박스를 숨김처리함
$(function(){
	$('._isOnlyMember').each(function(){
		$(this).closest('.liWrap').find('.pdBtnBox').addClass('hide');
	});
})

// 파라미터 체크
function paramChk(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

// 이미지가 없으면 구조를 삭제
function delImg(img,dom){
	$(img).each(function(){
		var $chkImg = ($(this).html()).trim();
		if($chkImg == '&nbsp;' || $chkImg == ''){
			if(dom==''){
				$(this).remove();
			}else{
				$(this).closest(dom).remove();
			}
		}
	});
}