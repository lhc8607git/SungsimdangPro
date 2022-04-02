<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성심당</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<style>
a {
	text-decoration: none;
	color: black;
}

table {
	border-spacing: 1px;
	border-collapse: separate;
}

table, tr, td {
	border-radius: 3px;
	padding: 3px;
}
</style>

</head>
<body>

<h3>상품 내용</h3>

<table width="600" style="margin: 50px auto" border="1">
		<tr>
			<td colspan="2" align="right">글보기</td>
		</tr>
		<tr>
			<td width="70" align="center">상품코드</td>
			<td width="330">${ dto.prd_code }</td>
		</tr>
		<tr>
			<td width="70" align="center">카테고리중코드</td>
			<td width="330">${ dto.cat_code}</td>
		</tr>
		<tr>
			<td width="70" align="center">품절 여부(0/1)</td>
			<td width="330">${ dto.stock }</td>
		</tr>
		<tr>
			<td width="70" align="center">상품명</td>
			<td width="330">${ dto.prd_name }</td>
		</tr>
		<tr>
			<td width="70" align="center">상품소개</td>
			<td width="330">${ dto.prd_info }</td>
		</tr>
		<tr>
			<td width="70" align="center">상세설명</td>
			<td width="330">${ dto.detail_content }</td>
		</tr>
		<tr>
			<td width="70" align="center">상세설명2_이미지</td>
			<td width="330">${ dto.detail_content2 }</td>
		</tr>
		<tr>
			<td width="70" align="center">상세설명3_이미지</td>
			<td width="330">${ dto.detail_content3 }</td>
		</tr>
		<tr>
			<td width="70" align="center">상세설명4_이미지</td>
			<td width="330">${ dto.detail_content4 }</td>
		</tr>
		<tr>
			<td width="70" align="center">가격</td>
			<td width="330">${ dto.prd_prc }</td>
		</tr>
		<tr>
			<td width="70" align="center">적립금</td>
			<td width="330">${ dto.prd_point }</td>
		</tr>
		<tr>
			<td width="70" align="center">평점</td>
			<td width="330">${ dto.rating }</td>
		</tr>		
		<tr>
			<td width="70" align="center">유통기한</td>
			<td width="330">${ dto.exp_date }</td>
		</tr>
		<tr>
			<td width="70" align="center">보관방법</td>
			<td width="330">${ dto.prd_str }</td>
		</tr>
		<tr>
			<td width="70" align="center">배송비</td>
			<td width="330">${ dto.shipping_price }</td>
		</tr>
		<tr>
			<td width="70" align="center">사이즈</td>
			<td width="330">${ dto.prd_size }</td>
		</tr>
		<tr>
			<td width="70" align="center">사이드 상품여부</td>
			<td width="330">${ dto.is_sideoption }</td>
		</tr>
		<tr>
			<td width="70" align="center">사이드 추가상품</td>
			<td width="330">${ dto.side_optionname }</td>
		</tr>
		<tr>
			<td width="70" align="center">알레르기정보</td>
			<td width="330">${ dto.allergy_info }</td>
		</tr>
		<tr>
			<td width="70" align="center">성분표시</td>
			<td width="330">${ dto.ingredient_info }</td>
		</tr>
		<tr>
			<td width="70" align="center">할인율</td>
			<td width="330">${ dto.discount_rate }</td>
		</tr>
		<tr>
			<td width="70" align="center">판매수량</td>
			<td width="330">${ dto.sales }</td>
		</tr>
		<tr>
			<td width="70" align="center">기프티콘사용가능여부</td>
			<td width="330">${ dto.is_giftcard }</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			    <input type="button" value="글수정"
            onclick="location.href='productedit.asp?prd_code=${ dto.prd_code }&cat_code=${dto.cat_code }&stock=${dto.stock }&prd_name=${dto.prd_name }&prd_info=${dto.prd_info }&detail_content=${dto.detail_content }&detail_content2=${dto.detail_content2 }&detail_content3=${dto.detail_content3 }&detail_content4=${dto.detail_content4 }&prd_prc=${dto.prd_prc }&prd_point=${dto.prd_point}&rating=${dto.rating }&exp_date=${dto.exp_date }&prd_str=${dto.prd_str }&shipping_price=${dto.shipping_price }&prd_size=${dto.prd_size }&is_sideoption=${dto.is_sideoption }&side_optionname=${dto.side_optionname }&allergy_info=${dto.allergy_info }&ingredient_info=${dto.ingredient_info }&discount_rate=${dto.discount_rate }&sales=${dto.sales }&is_sideoption=${dto.is_sideoption }'">

 				<input type="button" value="글삭제"
				onclick="location.href='productdelete.asp?prd_code=${ dto.prd_code }'">

			<input type="button" value="글목록"
				onclick="location.href='productlist.asp?page=${ param.page}'">
			</td>
		</tr>
	
	</table>

<script>
</script>
</body>
</html>