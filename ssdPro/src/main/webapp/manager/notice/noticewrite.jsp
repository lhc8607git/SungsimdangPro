<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성심당</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2021. 12. 30. - 오전 10:06:49</title>
<link rel="icon" type="image/x-icon" href="../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 

<style>
  a{
     text-decoration: none;
     color:black;
   }
   table,  tr, td {
    border-radius: 3px;
   }
</style>

</head>
<body>

<h3>매장 추가</h3>


<form  method="post">
 <table width="600px" style="margin:50px auto" border="1">
   <tr>
     <td colspan="2" align="right">
       <a href="storelist.asp">공지사항 추가</a>
     </td>
   </tr>
    <tr>
     <td width="70" align="center">관리자</td>
     <td width="330">
       <input type="text" name="manager_code" size="12" >
     </td>
   </tr>
   <tr>
     <td width="70" align="center">제목</td>
     <td width="330">
       <input type="text" name="title" size="12" >
     </td>
   </tr>
   <tr>
     <td width="70" align="center">내용</td>
     <td width="330">
       <textarea rows="13" cols="50" name="content"></textarea>
     </td>
   </tr>
   <tr>
     <td width="70" align="center">게시글 고정여부</td>
     <td width="330">
       <span><input type="radio" name="is_fix" size="12" value=0 >고정X</span>
       <span><input type="radio" name="is_fix" size="12" value=1 >고정O</span>
     </td>
   </tr>
   <tr>
     <td width="70" align="center">이미지</td>
     <td width="330">
       <input type="text" name="img" size="12" >
     </td>
   </tr>
   <tr>
     <td colspan="2" align="center">
       <input type="submit" value="글쓰기">
       <input type="reset" value="다시작성">
       <input type="button" value="글목록" 
       onclick="location.href='noticelist.asp'">
     </td>
   </tr>
 </table>
</form>
<script>
</script>
</body>
</html>