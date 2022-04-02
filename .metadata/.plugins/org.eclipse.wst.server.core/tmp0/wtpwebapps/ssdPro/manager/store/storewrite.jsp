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
       <a href="storelist.asp">매장 목록</a>
     </td>
   </tr>
    <tr>
     <td width="70" align="center">관리자</td>
     <td width="330">
       <input type="text" name="manager_code" size="12" >
     </td>
   </tr>
   <tr>
     <td width="70" align="center">국내0/해외1여부</td>
     <td width="330">
       <span><input type="radio" name="is_global" size="12" value=0 >국내</span>
       <span><input type="radio" name="is_global" size="12" value=1 >해외</span>
     </td>
   </tr>
   <tr>
     <td width="70" align="center">지역</td>
     <td width="330">
       <input type="text" name="region" size="50">
     </td>
   </tr>
   <tr>
     <td width="70" align="center">매장명</td>
     <td width="330">
       <textarea rows="13" cols="50" name="name"></textarea>
     </td>
   </tr>
   <tr>
     <td width="70" align="center">브랜드</td>
     <td width="330">
       <textarea rows="13" cols="50" name="brand"></textarea>
     </td>
   </tr>
   <tr>
     <td width="70" align="center">전화번호</td>
     <td width="330">
       <textarea rows="13" cols="50" name="tel"></textarea>
     </td>
   </tr>
   <tr>
     <td width="70" align="center">주소</td>
     <td width="330">
       <textarea rows="13" cols="50" name="address"></textarea>
     </td>
   </tr>
   <tr>
     <td width="70" align="center">운영시간</td>
     <td width="330">
       <textarea rows="13" cols="50" name="operating_time"></textarea>
     </td>
   </tr>
   <tr>
     <td width="70" align="center">위도</td>
     <td width="330">
       <textarea rows="13" cols="50" name="lat"></textarea>
     </td>
   </tr>
   <tr>
     <td width="70" align="center">경도</td>
     <td width="330">
       <textarea rows="13" cols="50" name="lng"></textarea>
     </td>
   </tr>
   <tr>
     <td colspan="2" align="center">
       <input type="submit" value="글쓰기">
       <input type="reset" value="다시작성">
       <input type="button" value="글목록" 
       onclick="location.href='storelist.asp'">
     </td>
   </tr>
 </table>
</form>
<script>
</script>
</body>
</html>