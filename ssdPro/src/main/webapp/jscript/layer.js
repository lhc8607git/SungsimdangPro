function layerFix(s1,fIdx){
	var lyr=$(".layerFix")
	var lbtn=$(".openLayerFix")
	var lcon=lyr.find(".layerConWrap")
	var lw=lcon.outerWidth()
	var lh=lcon.outerHeight()
	var cnt=1
	var open=function(chk,get){
		if(chk==true){
			var lyr=$(".layerFix[idxLyr="+get+"]")
		}else{
			var lyr=$(".layerFix")
		}
		var lcon=lyr.find(".layerConWrap")
		lyr.addClass("on").css("opacity",0);
		if(s1==2){ //ver.상하단고정, 가운데영역 스크롤, 쓰인페이지 - /addon/m_admin/goods/goods_reg , /m/goods/main , /product/sublist
			lyr.css("opacity",1)
			var st=lcon.find(".secTop")
			var sm=lcon.find(".secMid")
			var sb=lcon.find(".secBot")
			sm.outerHeight(lcon.outerHeight()-(st.outerHeight()+sb.outerHeight()))
			sm.css("margin-top",st.outerHeight())
		}else{
			var wdw=$(window).width()
			var wdh=$(window).height()
			var calc=function(cnt){
				cnt++
				if(cnt>5){
					lyr.css("opacity",1)
					var closev = ($(window).height()-lcon.outerHeight())/2
					var closeh = ($(window).width()-lcon.outerWidth())/2
					$(".layerConWrap .btnClLyr.fix").css({"right":closeh,"top":closev,"position":"fixed"})
					return false;
				}
				lcon.css({"margin-top":-(lcon.outerHeight()/2),"margin-left":-(lcon.outerWidth()/2)})
				calc(cnt);
			}
			if(lcon.outerWidth()>wdw || lcon.outerHeight()>wdh){
				if(lcon.outerWidth()>wdw){ //내용넓이가 화면보다 클경우
					lcon.css({"width":wdw-50,"margin-left":-((wdw-50)/2)})
					setTimeout(function(){
						calc(cnt)
					},100);
				}
				if(lcon.outerHeight()>wdh){ //내용높이가 화면보다 클경우
					lcon.css({"height":wdh-50,"margin-top":-((wdh-50)/2)})
					setTimeout(function(){
						calc(cnt)
					},100);
				}
			}else{
				setTimeout(function(){
					calc(cnt)
				},100);
			}
		}
		$(".gnb_menu,.swiper-pagination.high,.swiper-button-next.high,.swiper-button-prev.high").css("z-index",0)
		$("body").css({overflow:'hidden'}).bind('touchmove', function(e){e.preventDefault()})
		//$("#mobile_wrap").addClass("on") 모바일 본문스크롤제거용
	}
	if(s1==0){
		if(fIdx>0){
			var chk=true
			open(chk,fIdx);
		}else{
			open();
		}
	}
	lbtn.click(function(){
		if(this.hasAttribute("idxLyr")){
			var chk=true
			var idx=$(this).attr("idxLyr");
			open(chk,idx);
		}else{
			open();
		}
	})
}

function layerTab(img){ //연속적인 탭레이어,쓰인페이지 - wmallhomepage
	var llink=$(".layerLink")
	var lyr=$(".layerTab")
	llink.children("li").click(function(){
		lyr.addClass("on")
		var idx=$(this).index()
		var idxx=$(".layerTab li:eq("+idx+")")
		lyr.find("li").removeClass("on");
		idxx.addClass("on");
		if(img==1){ //이미지원본넓이따라
			var idxximg=idxx.find(".image img")
			idxx.width(idxximg.width())
		}
		var lh=idxx.outerHeight()
		var lw=idxx.outerWidth()
		idxx.css({"margin-top":-lh/2,"margin-left":-lw/2})
		var wdw=$(window).width()
		var wdh=$(window).height()
		if(lcon.outerWidth()>wdw || lcon.outerHeight()>wdh){
			if(lcon.outerWidth()>wdw){ //내용넓이가 화면보다 클경우
				lcon.css({"height":wdw-50,"margin-top":-((wdw-50)/2)})
			}
			if(lcon.outerHeight()>wdh){ //내용높이가 화면보다 클경우
				lcon.css({"height":wdh-50,"margin-top":-((wdh-50)/2)})
			}
		}else{
			lcon.css({"margin-top":-lh/2,"margin-left":-lw/2})
		}
		$(".gnb_menu,.swiper-pagination.high,.swiper-button-next.high,.swiper-button-prev.high").css("z-index",0)
	})
}

function btnClLyr(chk,get){
	if(chk==true){
		var lyr=$(".layerFix[idxLyr="+get+"] , .layerTab[idxLyr="+get+"]")
	}else{
		var lyr=$(".layerFix , .layerTab")
	}
	lyr.removeClass("on")
	$(".gnb_menu,.swiper-pagination.high,.swiper-button-next.high,.swiper-button-prev.high").css("z-index",1000)
	$("body").css({overflow:'auto'}).unbind('touchmove')
	$("#mobile_wrap").removeClass("on")
	//$("#mobile_wrap").removeClass("on") 모바일 본문스크롤생성용
}

function clLyr(fIdx){
	var close=function(chk,get){
		if(chk==true){
			var lyr=$(".layerFix[idxLyr="+get+"] , .layerTab[idxLyr="+get+"]")
		}else{
			var lyr=$(".layerFix , .layerTab")
		}
		lyr.removeClass("on")
		$(".gnb_menu,.swiper-pagination.high,.swiper-button-next.high,.swiper-button-prev.high").css("z-index",1000)
		$("body").css({overflow:'auto'}).unbind('touchmove')
		$("#mobile_wrap").removeClass("on")
		//$("#mobile_wrap").removeClass("on") 모바일 본문스크롤생성용
	}
	if(fIdx>0){
		var chk=true
		close(chk,fIdx);
	}else{
		close();
	}
}

$(window).load(function(){
	btnClLyr();
	$(".layerFix .clLyr , .layerFix .btnClLyr , .layerFix .layerBg , .layerTab .layerBg , .layerTab .btnClLyr").click(function(){
		if(this.hasAttribute("idxLyr")){
			var chk=true
			var idx=$(this).attr("idxLyr");
			btnClLyr(chk,idx);
		}else{
			btnClLyr();
		}
	})
})