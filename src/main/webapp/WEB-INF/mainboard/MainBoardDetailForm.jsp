<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../template/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function deletecheck(){
		var confirm = window.confirm("삭제 하시겠습니까?");
		if(confirm){
			window.location='delete.mainboard?num=${board.num}';
		}
	}
</script>
</head>
<body>
	<br><br>
		<div class="container" align="center">
			<p>게시글 상세보기</p>
			<br>
			<table class="table" width="430" cellspacing="0" cellpadding="0">
				<tr>
					<td width="80" align="center">글쓴이</td>
					<td width="330" align="left">${board.writer}</td>
				</tr>
				
				
				<tr>
					<td width="80" align="center">Email</td>
					<td width="330" align="left">${board.email}</td>
				</tr>
				
				
				<tr>
					<td width="80" align="center">제 목</td>
					<td width="330" align="left">${board.title}</td>
				</tr>
				
				
				<tr>
					<td width="330" align="center" colspan="2">내 용</td>
				</tr>
				
					<hr>
				<tr>
					<td width="330" align="center" colspan="2">${board.content}</td>
				</tr>
				
				<c:set value="${board.writer}" var="writer"/>
				<c:set value="${loginfo.id}" var="id"/>
				<tr>
					<td colspan=2 align="right" height="30">
					<c:if test="${id!=null}">
						<c:if test="${fn:contains(writer, id)}">
							<input type="button" class="btn btn-default" value="수정하기"	
									OnClick="window.location='update.mainboard?num=${board.num}'">
							<input type="button" class="btn btn-default" value="삭제하기"	
									OnClick="deletecheck();">
						</c:if>
					</c:if>
						<input type="button" class="btn btn-default" value="목록보기"	
								OnClick="window.location='board.mainboard?pageNumber=${param.pageNumber}'">
					</td>
				</tr>
			</table>
			
			<c:import url="../mainboard/Comments.jsp">
				<c:param name="board_num">${board.num}</c:param>
			</c:import>	
	</div>
	<br>
</body>
</html>

<%@include file="../template/bottom.jsp"%>