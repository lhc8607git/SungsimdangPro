$(document).ready(function(){

});

/* 게시물 펼침 스크립트 */
function boardContOpen(){

	$(".board_list").find(".tit").unbind("click");
	$(".board_list").each(function(a){
		$(".board_list").eq(a).find(".tit").each(function(b){
			$(".board_list").eq(a).find(".tit").eq(b).click(function(){
				$(".board_list").eq(a).find(".cont").eq(b).toggle();
			});
		});
	});
}

/* quick */
function setQuick()
{
	if($(".quick_sub").length > 1)
	{
		var quickTop = $(".quick_sub").offset().top;
		if($(window).scrollTop() >= quickTop-67)
		{
			$(".quick_sub").addClass("fixed");
		}
		$(window).scroll(function(){
			if($(window).scrollTop() >= quickTop-67)
			{
				$(".quick_sub").addClass("fixed");
			}
			else
			{
				$(".quick_sub").removeClass("fixed");
			}
		});
	}
}




/* resizeTab */
function resizeTab(className)
{
	$("."+className).each(function(index){
		var wids = parseInt($("."+className).eq(index).width()/$("."+className).eq(index).find("a").length);
		var number = $("."+className).eq(index).width() - wids * $("."+className).eq(index).find("a").length; //나머지 여백
		$("."+className).eq(index).find("a").width(wids);
		$("."+className).eq(index).find("a").eq(0).width(number + wids);
	});

}

/* 평가 별 */
function resetStarColor()
{
	$(".star_area").each(function(a){
		$(".star_area").eq(a).find("img").each(function(b){
			$(this).click(function(){
				$(".star_area").eq(a).find("img").attr("src",$(".star_area").eq(a).find("img").attr("src").replace("ico_starcolor","ico_starnone"));
				for(i=0; i<b+1; i++)
				{
					$(".star_area").eq(a).find("img").eq(i).attr("src",$(".star_area").eq(a).find("img").eq(i).attr("src").replace("ico_starnone","ico_starcolor"));
				}
			});
		});
	});
}

//레이어팝업
function showPop(showID,closeID)
{
	if($(showID).length > 0)
	{
		$(showID).find(".layer_pop").css("margin-top",$(window).scrollTop()+20);
		$(showID).find(".layer_pop").css("margin-left",-$(showID).find(".layer_pop").width()/2);
		$(showID).find(".layer_pop").fadeIn("fast");
		$(showID).find(".mask").show();
	}
	if($(closeID).length > 0)
	{
		$(closeID).find(".layer_pop").css("margin-top",$(window).scrollTop()+20);
		$(closeID).find(".layer_pop").css("margin-left",-$(closeID).find(".layer_pop").width()/2);
		$(closeID).find(".layer_pop").fadeOut("fast");
		$(closeID).find(".mask").hide();
	}
}

//레이어팝업 - 상품평작성 부분수정
function showPop1(showID,closeID)
{
	if($(showID).length > 0)
	{
		$(showID).find(".layer_pop").css("top","auto");
		$(showID).find(".layer_pop").css("bottom","0");
		$(showID).find(".layer_pop").css("margin-top",$(window).scrollTop()-600);
		$(showID).find(".layer_pop").css("margin-left",-$(showID).find(".layer_pop").width()/2);
		$(showID).find(".layer_pop").fadeIn("fast");
		$(showID).find(".mask").show();
	}
	if($(closeID).length > 0)
	{
		$(showID).find(".layer_pop").css("top","auto");
		$(showID).find(".layer_pop").css("bottom","0");
		$(closeID).find(".layer_pop").css("margin-top",$(window).scrollTop()-600);
		$(closeID).find(".layer_pop").css("margin-left",-$(closeID).find(".layer_pop").width()/2);
		$(closeID).find(".layer_pop").fadeOut("fast");
		$(closeID).find(".mask").hide();
	}
}

function closePop()
{
	$(".layer_pop").fadeOut("fast");
	$(".mask").hide();
}

//마이페이지 질문과답변
function qa_show(e)
{
	$(e).parents("tr").next(".board_qa_box").slideToggle();
}


/* 셀렉트박스 디자인 리셋 */
function resetSelectEvent(){
	$(".select_option").unbind("click");

	$(".select_option").click(function(){
		$(".select_option").not($(this)).removeClass("focus");
		$(this).toggleClass("focus");
		return false;
	});
	$(document).click(function(){
		$(".focus").removeClass("focus");
	});
	$(".select_option").each(function(a){
		$(".select_option").eq(a).find(".option_list li").click(function(){
			$(".select_option").eq(a).find(".active_cont").html($(this).html());
		});
	});
}