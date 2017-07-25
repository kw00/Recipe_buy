<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../template/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
function insert(){
		location.href="insert.nt";
	}
</script>
</head>
<body>
	<div align="center" class="container">
		<h2>공지 게시판</h2>
		<br>
		<form action="list.nt" method="get">
			<div class="col-sm-2"></div>
			<div class="form-group col-sm-2" style="padding-left: 0px; padding-right: 0px;">
				<select class="form-control" name="whatColumn">
					<option value="all">전체 검색
					<option value="title">제목
					<option value="writer">글쓴이
				</select>
			</div>
			<div class="form-group col-sm-5" style="padding-left: 0px; padding-right: 0px;">
				<input type="text" class="form-control col-sm-5" name="keyword">
			</div>
			<div class="form-group col-sm-1">
				<input type="submit" class="btn btn-default" value="검색">
			</div>
		</form>
		
		<table class="table">
		<c:if test="${sessionScope.loginfo.id eq 'admin'}">
			<tr>
				<td colspan="9" align="right">
					<input type="button" value="글쓰기" class="btn btn-default" onclick="insert()">
				</td>
			</tr>
		</c:if>
			<tr align="center">
				<td><b>숫자</b></td>
				<td><b>제목</b></td>
				<td><b>글쓴이</b></td>
				<td><b>글쓴날</b></td>
				<td><b>조회수</b></td>
			</tr>
	
			<c:forEach items="${nt_Lists}" var="notice">
				<tr align="center">
					<td>${notice.num}</td>
					<td><a href="detail.nt?num=${notice.num}">${notice.subject}</a></td>
					<td>${notice.writer}</td>
					<td>
						<fmt:parseDate value="${notice.regdate}" var="dateFmt" pattern="yyyy-MM-dd HH:mm:ss"/>
						<fmt:formatDate value="${dateFmt}"  pattern="yyyy.MM.dd HH:mm"/>
					</td>
					<td>${notice.readcount}</td>
				</tr>
			</c:forEach>
		</table>
		<div>
			${pageInfo.pagingHtml}
		</div>
	</div>
</body>
</html>

<%@ include file="./../template/bottom.jsp"%>