<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
</head>
<body>
<%
    
    request.setCharacterEncoding("UTF-8");
   
%>

<h3 style="text-align: center">광고 관리</h3>
<table style="width:700px;margin:50px auto" border="1" >
	<tr>
	  <td align="right" colspan="6">
		   <a href="adwrite.asp">광고작성</a>
	  </td>
	</tr>
	<tr style="background:gray;color:white;font-weight:bold">
	  <td width="50" align="center">광고코드</td>
	  <td width="280" align="center">제목</td>
	  <td width="100" align="center">등록일</td>
	  <td width="120" align="center">내용</td>
	  <td width="50" align="center">작성자</td>
	</tr>
	<tbody>

	<c:if test="${ empty list }">
	  <tr class="data">
	    <td align="center" colspan="6">
	     <h3>작성된 게시글이 없습니다.</h3>
	    </td>
	  </tr>
	</c:if>
	
	<c:if test="${ not empty list }">
	 <c:forEach items="${ list }" var="dto">
		 <tr class="data">
		   <td align="center">${ dto.ad_code }</td>
		   <td>
		   
		   <a href="adcontent.asp?ad_code=${ dto.ad_code }&page=${ param.page }&searchCondition=${ param.searchCondition }&searchWord=${ param.searchWord }">${ dto.title }</a>
		   
		    </td>
		   <td>${ dto.create_date }</td>
		   <td>${dto.content}</td>
		   <td>${dto.manager_code}</td>

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
</table>

<script>
</script>
</body>
</html>














