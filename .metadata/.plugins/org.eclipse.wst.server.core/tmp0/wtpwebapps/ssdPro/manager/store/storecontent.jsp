<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성심당</title>
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
			<td width="70" align="center">매장번호</td>
			<td width="330">${ dto.store_code }</td>
		</tr>
		<tr>
			<td width="70" align="center">관리자</td>
			<td width="330">${ dto.manager_code}</td>
		</tr>
		<tr>
			<td width="70" align="center">국내0/해외1여부</td>
			<td width="330">${ dto.is_global }</td>
		</tr>
		<tr>
			<td width="70" align="center">지역</td>
			<td width="330">${ dto.region }</td>
		</tr>
		<tr>
			<td width="70" align="center">매장명</td>
			<td width="330">${ dto.name }</td>
		</tr>
		<tr>
			<td width="70" align="center">브랜드</td>
			<td width="330">${ dto.brand }</td>
		</tr>
		<tr>
			<td width="70" align="center">전화번호</td>
			<td width="330">${ dto.tel }</td>
		</tr>
		<tr>
			<td width="70" align="center">주소</td>
			<td width="330">${ dto.address }</td>
		</tr>
		<tr>
			<td width="70" align="center">운영시간</td>
			<td width="330">${ dto.operating_time }</td>
		</tr>
		<tr>
			<td width="70" align="center">위도</td>
			<td width="330">${ dto.lat }</td>
		</tr>
		<tr>
			<td width="70" align="center">경도</td>
			<td width="330">${ dto.lng }</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			    <input type="button" value="글수정"
            onclick="location.href='storeedit.asp?store_code=${ dto.store_code }&manager_code=${dto.manager_code }&is_global=${dto.is_global }&region=${dto.region }&name=${dto.name }&brand=${dto.brand }&tel=${dto.tel }&address=${dto.address }&operating_time=${dto.operating_time }&lat=${dto.lat }&lng=${dto.lng }'">

 				<input type="button" value="글삭제"
				onclick="location.href='storedelete.asp?store_code=${ dto.store_code }'">

			<input type="button" value="글목록"
				onclick="location.href='storelist.asp?page=${ param.page}'">
			</td>
		</tr>
	
	</table>

<script>
</script>
</body>
</html>














