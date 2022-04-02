<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성심당</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script 
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
	<style>
 a{
    text-decoration: none;
    color:black;
  }
  table,  tr, td {
   border-radius: 3px;
  }
</style>

<title>Insert title here</title>
</head>
<body>	
	
<h3>상품 수정</h3>
	
	<form  method="post" action="productedit.asp?prd_code=${param.prd_code}">
 <table width="600px" style="margin:50px auto" border="1">
    <tr>
     <td colspan="2" align="right">
       <a href="productlist.asp">상품 목록</a>
     </td>
   </tr>
    <tr>
     <td width="70" align="center">상품코드</td>
     <td width="330">
       <input type="text" name="prd_code" size="10" >
     </td>
   </tr>
   <tr>
     <td width="70" align="center">카테고리중코드</td>
     <td width="330">
       <input type="text" name="cat_code" size="10" >
     </td>
   </tr>
   <tr>
     <td width="70" align="center">품절 여부(0/1)</td>
     <td width="330">
       <input type="text" name="stock" size="1">
     </td>
   </tr>
   <tr>
     <td width="70" align="center">상품명</td>
     <td width="330">
       <input type="text" name="prd_name" size="40" >
     </td>
   </tr>
   <tr>
     <td width="70" align="center">상품소개</td>
     <td width="330">
       <textarea rows="13" cols="50" name="prd_info"></textarea>
     </td>
   </tr>
   <tr>
     <td width="70" align="center">상세설명</td>
     <td width="330">
       <textarea rows="13" cols="50" name="detail_content"></textarea>
     </td>
   </tr>
   <tr>
     <td width="70" align="center">상세설명2_이미지</td>
     <td width="330">
       <input type="text" name="detail_content2" size="40" >
     </td>
   </tr>
   <tr>
     <td width="70" align="center">상세설명3_이미지</td>
     <td width="330">
       <input type="text" name="detail_content3" size="40" >
     </td>
   </tr>
   <tr>
     <td width="70" align="center">상세설명4_이미지</td>
     <td width="330">
       <input type="text" name="detail_content4" size="40" >
     </td>
   </tr>
   <tr>
     <td width="70" align="center">가격</td>
     <td width="330">
       <input type="text" name="prd_prc" size="10" >
     </td>
   </tr>
   <tr>
     <td width="70" align="center">적립금</td>
     <td width="330">
       <input type="text" name="prd_point" size="10" >
     </td>
   </tr>   
   <tr>
     <td width="70" align="center">평점</td>
     <td width="330">
       <input type="text" name="rating" size="10" >
     </td>
   </tr>   
   <tr>
     <td width="70" align="center">유통기한</td>
     <td width="330">
       <input type="text" name="exp_date" size="40" >
     </td>
   </tr>   
   <tr>
     <td width="70" align="center">보관방법</td>
     <td width="330">
       <input type="text" name="prd_str" size="40" >
     </td>
   </tr>
   <tr>
     <td width="70" align="center">배송비</td>
     <td width="330">
       <input type="text" name="shipping_price" size="10" >
     </td>
   </tr>
   <tr>
     <td width="70" align="center">사이즈</td>
     <td width="330">
       <input type="text" name="prd_size" size="40" >
     </td>
   </tr>
   <tr>
     <td width="70" align="center">사이드 상품여부</td>
     <td width="330">
       <input type="text" name="is_sideoption" size="1">
     </td>
   </tr>
   <tr>
     <td width="70" align="center">사이드 추가상품</td>
     <td width="330">
       <input type="text" name="side_optionname" size="40" >
     </td>
   </tr>  
   <tr>
     <td width="70" align="center">알레르기정보</td>
     <td width="330">
       <input type="text" name="allergy_info" size="40" >
     </td>
   </tr>  
   <tr>
     <td width="70" align="center">성분표시</td>
     <td width="330">
       <input type="text" name="ingredient_info" size="40" >
     </td>
   </tr>  
   <tr>
     <td width="70" align="center">할인율</td>
     <td width="330">
       <input type="text" name="discount_rate" size="10" >
     </td>
   </tr>   
   <tr>
     <td width="70" align="center">판매수량</td>
     <td width="330">
       <input type="text" name="sales" size="10" >
     </td>
   </tr>   
   <tr>
     <td width="70" align="center">기프티콘사용가능여부</td>
     <td width="330">
       <input type="text" name="is_giftcard" size="1">
     </td>
   </tr>
   <tr>
     <td colspan="2" align="center">
       <input type="submit" value="수정완료">
       <input type="reset" value="다시작성">
       <input type="button" value="글목록" 
       onclick="location.href='productlist.asp'">
     </td>
   </tr>
 </table>
 </form>
	

</body>
</html>