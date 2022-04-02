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
			<td width="70" align="center">공지사항 번호</td>
			<td width="330">${ dto.notice_code }</td>
		</tr>
		<tr>
			<td width="70" align="center">관리자</td>
			<td width="330">${ dto.manager_code}</td>
		</tr>
		<tr>
			<td width="70" align="center">조회수</td>
			<td width="330">${ dto.view_count}</td>
		</tr>
		<tr>
			<td width="70" align="center">제목</td>
			<td width="330">${ dto.title }</td>
		</tr>
		<tr>
			<td width="70" align="center">내용</td>
			<td width="330">${ dto.content }</td>
		</tr>
		<tr>
			<td width="70" align="center">게시글 고정 여부</td>
			<td width="330">${ dto.is_fix }</td>
		</tr>
		<tr>
			<td width="70" align="center">이미지</td>
			<td width="330">${ dto.img }</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			    <input type="button" value="글수정"
            onclick="location.href='noticeedit.asp?notice_code=${ dto.notice_code }&manager_code=${dto.manager_code }&view_count=${dto.view_count}&title=${dto.title }&content=${dto.content }&is_fix=${dto.is_fix }&img=${dto.img }'">

 				<input type="button" value="글삭제"
				onclick="location.href='noticedelete.asp?notice_code=${ dto.notice_code }'">

			<input type="button" value="글목록"
				onclick="location.href='noticelist.asp?page=${ param.page}'">
			</td>
		</tr>
	
	</table>

<script>
</script>
</body>
</html>














