var ajax;

function Ajax(async) {
	this.XmlHttpReq = null;
	this.async = (typeof(async)=='undefined')?true:async;
	this.type = null;
	this.url = null;
	this.param = null;
	this.returnExec = null;
	this.iswait = false;

	this.encodeParam = function(value) {
		value = escape(value);
		value = value.replace(/\+/g, '%2B');
		return value;
	}

	this.getXmlHttpRequest = function() {
		if (window.XMLHttpRequest) {
			// Create XMLHttpRequest object in non-Microsoft browsers
			this.XmlHttpReq = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
			// Create XMLHttpRequest via MS ActiveX
			try {
				// Try to create XMLHttpRequest in later versions
				// of Internet Explorer
				this.XmlHttpReq = new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e1) {
				// Failed to create required ActiveXObject
				try {
					// Try version supported by older versions
					// of Internet Explorer
					this.XmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e2) {
					// Unable to create an XMLHttpRequest with ActiveX
				}
			}
		}
	}

	this.execute = function(type, url, param, returnExec) {
		var self = this;
		if (this.iswait){
			setTimeout(function() { self.execute(type, url, param, returnExec) }, 200);
			return;
		}

		url += ((url.indexOf('?') >= 0) ? '&' : '?') + "rnd="+Math.random();

		this.type = type;
		this.url = url;
		this.param = param;
		this.returnExec = returnExec;

		this.getXmlHttpRequest();
		this.iswait = true;

		try {
			return this._execute();
		}
		catch (e){}
	}

	this._execute = function() {
		var self = this;
		var result = null;

		if (this.type == "GET") {
			this.XmlHttpReq.open("GET", this.url, this.async);
		}
		else if (this.type == "POST") {
			this.XmlHttpReq.open("POST", this.url, this.async);
			this.XmlHttpReq.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
		}

		this.XmlHttpReq.onreadystatechange = function() {
			// readyState 가 4 고 status 가 200 일 경우 올바르게 가져옴
			if (self.XmlHttpReq.readyState == 4 && self.XmlHttpReq.status == 200) {
				result = self.XmlHttpReq.responseText;
				if (self.returnExec) eval(self.returnExec+"(result);");
				self.iswait = false;
			}
		}

		if(this.type == 'GET') this.XmlHttpReq.send(null);
		else if(this.type == 'POST') this.XmlHttpReq.send(this.param);
	}
}

function defineAjax() {
	if (!ajax) ajax = new Ajax();
}