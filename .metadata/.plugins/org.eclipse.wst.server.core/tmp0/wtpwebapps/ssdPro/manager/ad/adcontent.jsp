<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성심당</title>e>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2021. 12. 30. - 오후 2:44:53</title>
<link rel="icon" type="image/x-icon" href="../images/SiSt.ico">

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

<table width="600" style="margin: 50px auto" border="1">
		<tr>
			<td colspan="2" align="right">글보기</td>
		</tr>
		<tr>
			<td width="70" align="center">광고번호</td>
			<td width="330">${ dto.ad_code }</td>
		</tr>
		<tr>
			<td width="70" align="center">관리자</td>
			<td width="330">${ dto.manager_code}</td>
		</tr>
		<tr>
			<td width="70" align="center">글제목</td>
			<td width="330">${ dto.title }</td>
		</tr>
		<tr>
			<td width="70" align="center">글내용</td>
			<td width="330">
				<div style="width: 100%; height: 200px; overflo: scroll;">${ dto.content }
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			    <input type="button" value="글수정"
            onclick="location.href='adedit.asp?ad_code=${ dto.ad_code }&manager_code=${dto.manager_code }&title=${dto.title }&content=${dto.content }'">

 				<input type="button" value="글삭제"
				onclick="location.href='addelete.asp?ad_code=${ dto.ad_code }'">

			<input type="button" value="글목록"
				onclick="location.href='adlist.asp?page=${ param.page}'">
			</td>
		</tr>
	
	</table>

<script>
</script>
</body>
</html>














