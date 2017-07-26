<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../template/top.jsp" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<form action="">
			<table width="500" border="1" cellspacing="0" cellpadding="0" align="center">
				<tr height="30">
					<td align="center" width="125">글번호</td>
					<td align="center" width="125">${notice.num}</td>
					<td align="center" width="125">조회수</td>
					<td align="center" width="125">${notice.readcount}</td>
				</tr>
			
				<tr height="30">
					<td align="center" width="125">작성자</td>
					<td align="center" width="125">${notice.writer}</td>
					<td align="center" width="125">작성일</td>
					<td align="center" width="125">${notice.regdate}</td>
				</tr>
				
				<tr height="30">
					<td align="center" width="125">글제목</td>
					<td align="center" width="375" colspan="3">${notice.subject}</td>
				</tr>
				
				<tr height="30">
					<td align="center" width="125">글내용</td>
					<td align="left" width="375" colspan="3">${notice.content}</td>
				</tr>
				
				<tr height="30">
					<td colspan="4" align="right">
						<input type="button" value="글수정" onclick="document.location.href='update.nt?num=${notice.num}&pageNumber=${pageNumber}'">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="button" value="삭제" onclick="document.location.href='delete.nt?num=${notice.num}&pageNumber=${pageNumber}'">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="button" value="댓글달기" onclick="document.location.href='reply.nt?num=${notice.num}&ref=${notice.ref}&restep=${notice.restep}&relevel=${notice.relevel}'">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="button" value="글목록" onclick="document.location.href='list.nt?pageNumber=${pageNumber}'">
					</td>
				</tr>
			</table>
		</form>
	</div>
<%@ include file="./../template/bottom.jsp" %>
</body>
</html>