
		
			function getCookie(name) {
				var strArg = new String(name + "=");
				var nArgLen, nCookieLen, nEnd;
				var i = 0, j;

				nArgLen = strArg.length;
				nCookieLen = document.cookie.length;

				if (nCookieLen > 0) {
					while (i < nCookieLen) {
						j = i + nArgLen;
						if (document.cookie.substring(i, j) == strArg) {
							nEnd = document.cookie.indexOf (";", j);
							if (nEnd == -1) nEnd = document.cookie.length;
							return unescape(document.cookie.substring(j, nEnd));
						}

						i = document.cookie.indexOf(" ", i) + 1;
						if (i == 0) break;
					}
				}
				return("");
			}

			function closePopupLayer(popupName) {
				if (document.getElementById(popupName)) {
					document.getElementById(popupName).style.display = 'none';
				}
			}

			document.write("<div id='popup_sungsimdang90' style='position:absolute; left:350px; top:210px; z-index:999; display:none;'>");
document.write("<iframe id='layer_popup_sungsimdang90' name='layer_popup_sungsimdang90' src='/ifrm_popupLayer.jsp' style='width:500px; height:520px;'  frameborder='0' scrolling='no' allowTransparency='true'></iframe>");
document.write("</div>");
if (getCookie('popup_sungsimdang90') != 'done') {
if (document.getElementById('popup_sungsimdang90')) {
document.getElementById('popup_sungsimdang90').style.display = 'inline';
}
}

		
	