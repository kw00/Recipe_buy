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
		location.href="insert.mainboard";
	}
</script>
<style>
.notice_header{
	font-size: 20px;
}
</style>
</head>
<body>
<br><br>
	<div class="container" align="center">
		<div class="notice_header">
		<p>자유 게시판</p>
		</div>
		<br><br>
		<form action="board.mainboard" method="get">
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
			<tr>
				<td colspan="9" align="right">
					<input type="button" value="글쓰기" class="btn btn-default" onclick="insert()">
				</td>
			</tr>
			<tr align="center">
				<td><b>숫자</b></td>
				<td><b>제목</b></td>
				<td><b>글쓴이</b></td>
				<td><b>이메일</b></td>
				<td><b>글쓴날</b></td>
				<td><b>조회수</b></td>
			</tr>
	
			<c:forEach items="${b_Lists}" var="board">
				<tr align="center">
					<td>${board.num}</td>
					<td><a href="detail.mainboard?num=${board.num}">${board.title}</a></td>
					<td>${board.writer}</td>
					<td>${board.email}</td>
					<td>
						<fmt:parseDate value="${board.inputdate}" var="dateFmt" pattern="yyyy-MM-dd HH:mm:ss"/>
						<fmt:formatDate value="${dateFmt}"  pattern="yyyy.MM.dd HH:mm"/>
					</td>
					<td>${board.views}</td>
				</tr>
			</c:forEach>
		</table>
		
		<div class="container">
			<ul class="pagination">
				${pageInfo.pagingHtml}
			</ul>
		</div>
	</div>	
</body>
</html>

<%@ include file="./../template/bottom.jsp"%>