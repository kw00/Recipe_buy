<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../template/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function reply_re(num) {
		$("#reply_re"+num).toggle().html("<textarea rows='3' cols='80' name='content'></textarea><input  class='btn btn-default' type='submit' value='입력'>");
	}
</script>
</head>
<body>
		<div class="container" align="center">
			<h2>공지</h2>
			<br>
			<table class="table" width="430" cellspacing="0" cellpadding="0">
				<tr>
					<td width="100" align="center">글쓴이</td>
					<td width="330" align="left">${notice.writer}
						${notice.ref }
						${notice.restep }
						${notice.relevel }
					</td>
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
			<c:if test="${!(loginfo.id eq null) }">
			<form action="reply.nt" method="post">
				<table class="table" width="430" cellspacing="0" cellpadding="0">
					<tr>
						<td align="center" width="23%">
							댓글 작성
						</td>
						<td align="center" width="280">
							<input type="hidden" name="id" value="${loginfo.id }">
							<input type="hidden" name="num" value="${notice.num }">
							<input type="hidden" name="ref" value="${notice.ref }">
							<input type="hidden" name="re_step" value="${notice.restep }">
							<input type="hidden" name="re_level" value="${notice.relevel }">
							<textarea rows="3" cols="80" name="content"></textarea>
						</td>
						<td>
							<input class="btn btn-default" type="submit" value="댓글달기">
						</td>
					</tr>
				</table>
			</form>
			</c:if>
			<table width="80%" cellspacing="0" cellpadding="0" border="1">
				<c:forEach items="${replyLists}" var="reply">
					<tr>
						<th colspan="2">
							<c:forEach begin="0" end="${reply.relevel }">
								<img src="<%=request.getContextPath()%>/resources/images/level.gif">
							</c:forEach>
							${reply.id}
						</th>
					</tr>
					<tr>
						<td>
							<c:forEach begin="0" end="${reply.relevel }">
								<img src="<%=request.getContextPath()%>/resources/images/level.gif">
							</c:forEach>
							${reply.content }
							${reply.num }
							${reply.ref }
						${reply.restep }
						${reply.relevel }
						</td>
						<td width="80" align="right">
							<input type="button" class="btn btn-default" value="답글달기" onclick="reply_re(${reply.num})">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<form action="reply.nt" method="get">
								<input type="hidden" name="id" value="${loginfo.id }">
								<input type="hidden" name="ref" value="${reply.ref }">
								<input type="hidden" name="relevel" value="${reply.relevel }">
								<input type="hidden" name="restep" value="${reply.restep }">
								<span id="reply_re${reply.num }" style="display: none;"></span>
							</form>
						</td>
					</tr>
				</c:forEach>
			</table>
	</div>
	<br>
</body>
</html>

<%@include file="../template/bottom.jsp"%>