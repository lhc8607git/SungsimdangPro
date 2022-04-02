function loadSwf(sUrl, sWidth, sHeight, sId, sAlign, sBgcolor, sWmode) {
	if (typeof(sWidth) == "undefined") sWidth = "";
	if (typeof(sHeight) == "undefined") sHeight = "";
	if (typeof(sId) == "undefined") sId = "ShockwaveFlash";
	if (typeof(sAlign) == "undefined") sAlign = "";
	if (typeof(sBgcolor) == "undefined") sBgcolor = "";
	if (typeof(sWmode) == "undefined") sWmode = "transparent"; // transparent

	var html = ''
		+ '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/get/flashplayer/current/swflash.cab" id="'+sId+'"'+(sWidth!=""?' width="'+sWidth+'"':'')+(sHeight!=""?' height="'+sHeight+'"':'')+' align="'+sAlign+'">\n'
		+ '<param name="allowScriptAccess" value="always"/>'
		+ '<param name="movie" value="'+sUrl+'"/>\n'
		+ '<param name="quality" value="high"/>\n'
		+ '<param name="wmode" value="'+sWmode+'"/>\n'
		+ '<embed id="'+sId+'" name="'+sId+'" src="'+sUrl+'" quality="high"'+(sWidth!=""?' width="'+sWidth+'"':'')+(sHeight!=""?' height="'+sHeight+'"':'')+' align="'+sAlign+'" wmode="'+sWmode+'" allowScriptAccess="always" swLiveConnect="true" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />\n'
		+ '</object>\n';

	document.write(html);
}

function loadMov(sUrl, sWidth, sHeight, sId, sAutoStart, sAutoSize) {
	if (typeof(sWidth) == "undefined") sWidth = "";
	if (typeof(sHeight) == "undefined") sHeight = "";
	if (typeof(sId) == "undefined") sId = "MediaPlayer";
	if (typeof(sAutoStart) == "undefined") sAutoStart = 0;
	if (typeof(sAutoSize) == "undefined") sAutoSize = 1;

	var html = ''
		+ '<object classid=CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95 codebase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=6,0,5,0803 type=application/x-oleobject'+(sWidth!=""?' width="'+sWidth+'"':'')+(sHeight!=""?' height="'+sHeight+'"':'')+' standby=Loading Windows Media Player components... id="'+sId+'">'
		+ '<param name=FileName value="'+sUrl+'">'
		+ '<param name=transparentAtStart value=true>'
		+ '<param name=transparentAtStop value=false>'
		+ '<param name=AnimationAtStart value=false>'
		+ '<param name=AutoStart value='+sAutoStart+'>'
		+ '<param name=AutoRewind value=true>'
		+ '<param name=SendMouseClickEvents value=0>'
		+ '<param name=DisplaySize value=0>'
		+ '<param name=AutoSize value='+sAutoSize+'>'
		+ '<param name=ShowDisplay value=0>'
		+ '<param name=ShowStatusBar value=0>'
		+ '<param name=ShowControls value=1>'
		+ '<param name=ShowTracker value=1>'
		+ '<param name=Enabled value=1>'
		+ '<param name=EnableContextMenu value=0>'
		+ '<param name=EnablePositionControls value=0>'
		+ '<param name=AllowChangeDisplaySize value=1>'
		+ '<param name=EnableFullScreenControls value=0>'
		+ '<param name=ShowPositionControls value=0>'
		+ '<param name=SendKeyboardEvents value=1>'
		+ '<param name=Mute value=0>'
		+ '<param name=Rate value=1>'
		+ '<param name=ClickToPlay value=0>'
		+ '<param name=CursorType value=1>'
		+ '</object>';

	document.write(html);
}
