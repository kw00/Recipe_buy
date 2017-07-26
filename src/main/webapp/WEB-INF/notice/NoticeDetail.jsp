<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../template/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<div class="container" align="center">
			<h2>공지</h2>
			<br>
			<table class="table" width="430" cellspacing="0" cellpadding="0">
				<tr>
					<td width="100" align="center">글쓴이</td>
					<td width="330" align="left">${notice.writer}</td>
				</tr>
				
				
				<tr>
					<td width="100" align="center">제 목</td>
					<td width="330" align="left">${notice.subject}</td>
				</tr>
				
				
				<tr>
					<td width="100" align="center">내 용</td>
					<td width="330" align="left">${notice.content}</td>
				</tr>
				
				<c:set value="${notice.writer}" var="writer"/>
				<c:set value="${loginfo.id}" var="id"/>
				<tr>
					<td colspan=2 align="right" height="30">
					<c:if test="${id!=null}">
						<c:if test="${fn:contains(writer, id) or fn:contains('admin', id)}">
							<input type="button" class="btn btn-default" value="수정하기"	
									OnClick="window.location='update.nt?num=${notice.num}'">
							<input type="button" class="btn btn-default" value="삭제하기"	
									OnClick="window.location='delete.nt?num=${notice.num}'">
						</c:if>
					</c:if>
						<input type="button" class="btn btn-default" value="목록보기"	
								OnClick="window.location='list.nt'">
					</td>
				</tr>
			</table>	
	</div>
	<br>
</body>
</html>

<%@include file="../template/bottom.jsp"%>