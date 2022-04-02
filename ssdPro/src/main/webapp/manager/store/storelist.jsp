<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성심당</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="../images/SiSt.ico">
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
</style>

<script>
 $(function (){	 
	$('#searchBtn').click(function (){
		$('form:first').attr('action','storelist.asp');
		$('form:first').attr('method','get');
		$('form:first').submit();
	});
 });
</script> 
</head>
<body>
<%
    
    request.setCharacterEncoding("UTF-8");
   
%>

<h3 style="text-align: center">매장 관리</h3>
<table style="width:1800px;margin:50px auto" border="1" >
	<tr>
	  <td align="right" colspan="11">
		   <a href="storewrite.asp">매장 추가</a>
	  </td>
	</tr>
	<tr style="background:gray;color:white;font-weight:bold">
	  <td width="50" align="center">매장번호</td>
	  <td width="50" align="center">관리자</td>
	  <td width="60" align="center">국내0/해외1여부</td>
	  <td width="60" align="center">지역</td>
	  <td width="70" align="center">매장명</td>
	  <td width="70" align="center">브랜드</td>
	  <td width="50" align="center">전화번호</td>
	  <td width="190" align="center">주소</td>
	  <td width="100" align="center">운영시간</td>
	  <td width="50" align="center">위도</td>
	  <td width="50" align="center">경도</td>
	</tr>
	<tbody>
	<!-- request.setAtttribute("list", ??); -->
	<c:if test="${ empty list }">
	  <tr class="data">
	    <td align="center" colspan="11">
	     <h3>작성된 게시글이 없습니다.</h3>
	    </td>
	  </tr>
	</c:if>
	<c:if test="${ not empty list }">
	 <c:forEach items="${ list }" var="dto">
		 <tr class="data">
		   <td align="center">${ dto.store_code }</td>
		   <td>${dto.manager_code}</td>
		   <td>${dto.is_global}</td>
		   <td>${dto.region}</td>
		    <td>		    
		     <a href="storecontent.asp?store_code=${ dto.store_code }&page=${ param.page }&searchCondition=${ param.searchCondition }&searchWord=${ param.searchWord }">${ dto.name }</a>
		   </td>
		   <td>${dto.brand}</td>
		   <td>${dto.tel}</td>
		   <td>${dto.address}</td>
		   <td>${dto.operating_time}</td>
		   <td>${dto.lat}</td>
		   <td>${dto.lng}</td>
		 </tr>
	 </c:forEach>	 
	 <tr>
	  <td align="center" colspan="6">
	   <!-- request.setAttribute("pageBlock", "[1] 2 3 4 5 6 7 8 9 10 > ");-->
	    ${ pageBlock }
	  </td>
	 </tr>
	</c:if>
	 
	</tbody>
<form>
	<tr>
      <td colspan="11" align="center" style="padding:3px;">
        <select id="searchCondition" name="searchCondition" 
        style="font-size: 15px;">
          <option value="name" ${ param.searchCondition eq "name" ? "selected" : "" }>매장명</option>       
          <option value="manager_code"  ${ param.searchCondition eq "manager_code" ? "selected" : "" }>관리자</option>
          <option value="address">주소</option>
        </select>
        <input type="text" name="searchWord"   value='${ param.searchWord }'>
        <input type="button" style="height:22px;width:50px"
        value="검색" id="searchBtn">
      </td>
    </tr>	
 </form>
</table>

<script>
</script>
</body>
</html>














