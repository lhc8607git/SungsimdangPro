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
	font-size: 15px;
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
		$('form:first').attr('action','noticelist.asp');
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

<h3 style="text-align: center">공지사항 관리</h3>
<table style="width:1300px;margin:50px auto" border="1" >
	<tr>
	  <td align="right" colspan="11">
		   <a href="noticewrite.asp">공지사항 추가</a>
	  </td>
	</tr>
	<tr style="background:gray;color:white;font-weight:bold">
	  <td width="30" align="center">공지사항번호</td>
	  <td width="30" align="center">관리자</td>
	  <td width="180" align="center">제목</td>
	  <!-- <td width="60" align="center">내용</td> -->
	  <td width="30" align="center">조회수</td>
	  <td width="30" align="center">작성일</td>
	 <td width="35" align="center">게시글 고정여부0/1</td>
	 <!-- <td width="190" align="center">이미지 첨부</td> -->
	</tr>
	<tbody>
	<c:if test="${ empty list }">
	  <tr class="data">
	    <td align="center" colspan="5">
	     <h3>작성된 게시글이 없습니다.</h3>
	    </td>
	  </tr>
	</c:if>
	<c:if test="${ not empty list }">
	 <c:forEach items="${ list }" var="dto">
		 <tr class="data">
		   <td align="center">${ dto.notice_code }</td>
		   <td>${dto.manager_code}</td>
		   <td>		    
		     <a href="noticecontent.asp?notice_code=${ dto.notice_code }&page=${ param.page }&searchCondition=${ param.searchCondition }&searchWord=${ param.searchWord }">${ dto.title }</a>
		   </td>
		   <%-- <td>${dto.content}</td> --%>
		   <td>${dto.view_count}</td>
		   <td>${dto.create_date}</td>
		   <td>${dto.is_fix}</td>
		 </tr>
	 </c:forEach>	 
	 <tr>
	  <td align="center" colspan="5">
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
          <option value="name" ${ param.searchCondition eq "name" ? "selected" : "" }>제목</option>       
          <option value="manager_code"  ${ param.searchCondition eq "manager_code" ? "selected" : "" }>관리자</option>
          <option value="title+content">제목+내용</option>
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














