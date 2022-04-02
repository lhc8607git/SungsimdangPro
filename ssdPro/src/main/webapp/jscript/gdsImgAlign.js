//서브리스트상품크기정렬 (미니샵메인,검색 + 메인카테고리,검색 + 베스트,뉴 + 이벤트몰)
//상품리스트는 아작스로 불러오는 경우 많아, document.ready로 선언 하지 않음. 함수 사용시 스크립트 추가할 것.
function mnsprodimgAlign(){
	$(".gallery_list .cutImgBox img, .mnsprod_img img, .best4_area .cont .img_box img").each(function(){
		var _thisImgheight = $(this).prop('naturalHeight');
		var _thisImgwight = $(this).prop('naturalWidth');

		if( _thisImgheight > _thisImgwight ){
			$(this).addClass("_htfull");
		}else if( _thisImgheight <= _thisImgwight ){
			$(this).addClass("_wtfull");
		}

	});
}