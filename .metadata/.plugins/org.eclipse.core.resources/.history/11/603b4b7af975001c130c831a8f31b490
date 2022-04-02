<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성심당</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 

<style>
a {
	text-decoration: none;
	color: black;
}

table, tr, td {
    border:solid 1px gray;
	border-radius: 3px;
	padding: 5px;
	font-size: 12px;
}
/*  
   tr.data:nth-last-child(odd) {
    background: gray;
	}
	
	tr.data:nth-last-child(even) {
	    background: #EFEFEF;
	}
	 */
tr.data:hover {
	background: #EFEFEF;
}
select , input{
  vertical-align:middle;
}

.ellipsis {
  text-overflow: ellipsis;
  overflow:hidden; width=50px;
}
tbody tr  td:nth-of-type(2) {
	text-align: left;
}

a {
	text-decoration: none;
	color: black;
}

a:hover {
	color: red;
}

</style>

<script>
 $(function (){	 
	$('#searchBtn').click(function (){
		$('form:first').attr('action','productlist.asp');
		$('form:first').attr('method','get');
		$('form:first').submit();
	});
 });
 
 
 
 // 글자 줄이기
 $( document ).ready( function() {
		
	  $('.box').each(function(){
	    // Cutstring
	    var textCut = $(this).text().substring( 0, 30 );
	    $(this).html( '<span class="substring">' + textCut + '...</span>' );
	  });
	  
	});
</script> 
</head>
<body>
<%
    int i=1;  // 삭제 구현
    request.setCharacterEncoding("UTF-8");
   
%>

<h3 style="text-align: center">상품 관리</h3>
<table style="width:1800px;margin:50px auto" border="1" >
	<tr>
	  <td align="right" colspan="24">
		   <a href="productwrite.asp">상품 추가</a>
	  </td>
	</tr>
	<tr style="background:gray;color:white;font-weight:bold">
	  <td width="50" align="center">상품코드</td>
	  <td width="50" align="center">카테고리중코드</td>
	  <td width="50" align="center">품절 여부</td>
	  <td width="60" align="center">상품명</td>
	  <td width="70" align="center">상품소개</td>
	  <td width="70" align="center">상세설명</td>
	  <td width="50" align="center">상세설명2_이미지</td>
	  <td width="190" align="center">상세설명3_이미지</td>
	  <td width="100" align="center">상세설명4_이미지</td>
	  <td width="50" align="center">가격</td>
	  <td width="50" align="center">적립금</td>
	  <td width="50" align="center">평점</td>
	  <td width="50" align="center">유통기한</td>
	  <td width="50" align="center">보관방법</td>
	  <td width="50" align="center">배송비</td>
	  <td width="50" align="center">사이즈</td>
	  <td width="50" align="center">사이드 상품여부</td>
	  <td width="50" align="center">사이드 추가상품</td>
	  <td width="50" align="center">알레르기정보</td>
	  <td width="50" align="center">성분표시</td>
	  <td width="50" align="center">할인율</td>	  	  	  
	  <td width="50" align="center">판매수량</td>
	  <td width="50" align="center">기프티콘사용가능여부</td>
	  <td width="50" align="center">삭제</td>
	</tr>
	<tbody>
	<!-- request.setAtttribute("list", ??); -->
	<c:if test="${ empty list }">
	  <tr class="data">
	    <td align="center" colspan="22">
	     <h3>작성된 게시글이 없습니다.</h3>
	    </td>
	  </tr>
	</c:if>
	<c:if test="${ not empty list }">
	 <c:forEach items="${ list }" var="dto">
	      
		 <tr class="data">
		   <td align="center">${ dto.prd_code }</td>
		   <td>${dto.cat_code}</td>
		   <td>${dto.stock}</td>
		   <td>${dto.prd_name}</td>
		   
		   <!-- 
		    <td>
		     <a href="productcontent.asp?prd_code=${ dto.prd_code }&page=${ param.page }&searchCondition=${ param.searchCondition }&searchWord=${ param.searchWord }">${ dto.prd_name }</a>
		   </td>
		   
		    -->
		   <td class="box">${dto.prd_info}</td>
		   <td>${dto.detail_content}</td>
		   <td>${dto.detail_content2}</td>
		   <td>${dto.detail_content3}</td>
		   <td>${dto.detail_content4}</td>
		   <td>${dto.prd_prc}</td>
		   <td>${dto.prd_point}</td>
		   <td>${dto.rating}</td>
		   <td>${dto.exp_date}</td>
		   <td>${dto.prd_str}</td>
		   <td>${dto.shipping_price}</td>
		   <td>${dto.prd_size}</td>
		   <td>${dto.is_sideoption}</td>
		   <td>${dto.side_optionname}</td>
		   <td class="box">${dto.allergy_info}</td>
		   <td class="box">${dto.ingredient_info}</td>
		   <td>${dto.discount_rate}</td>
		   <td>${dto.sales}</td>		   		   
		   <td>${dto.is_giftcard}</td>
		   <td>삭제</td>
		   <% i++; %>
		 </tr>
	 </c:forEach>	 
	 <tr>
        <td colspan="5" align="center">
           <div class="pagination"> 
             <c:if test="${ pageBlock.prev }"> 
               <a href="${  pageContext}productlist.asp?currentPage=${ pageBlock.start -1 }">&laquo;</a> 
            </c:if>
            <c:forEach begin="${ pageBlock.start }" end="${ pageBlock.end }" step="1" var="i">
              <c:if test="${ i == currentPage }">
                <a href="#" class="active">${i}</a>
              </c:if>
              <c:if test="${ i != currentPage }">
                 <a href="${  pageContext}productlist.asp?currentPage=${ i }">${ i }</a> 
              </c:if>
            </c:forEach>
            <c:if test="${ pageBlock.next }"> 
               <a href="${  pageContext}productlist.asp?currentPage=${ pageBlock.end +1 }">&raquo;</a> 
            </c:if>        
           </div>     
        </td>
      </tr>    
	 <tr>
	 
	 </tr>
	</c:if>
	 
	</tbody>
<form>
	
 </form>
</table>

<script>
  
  $(".pagination a").each(function(i, element) {	  
	  $(this).removeClass("active");	  
  	  if ( $(element).text().trim() == ${ empty param.currentPage ? '1' : param.currentPage } ){
  		  $(this).addClass("active")   		  
  	  }   
  })
  
  
</script>
</body>
</html>














