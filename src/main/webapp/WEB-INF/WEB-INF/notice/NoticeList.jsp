<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../template/top.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function insert(pageNumber){
		location.href="insert.nt?pageNumber="+pageNumber;
	}
</script>
</head>
<body>
	<c:set value="${pageContext.request.localPort}" var="port" />
	<c:set value="${pageContext.request.contextPath}" var="path" />

	<c:set value="http://localhost:${port}${path}/resources/images/hot.gif" var="hot" />
	<div height="100" width=100%></div>
	<div align="center">
		<table border="1" width="60%">
			<tr>
				<td colspan="6" align="center">공지</td>
			</tr>
			<tr>
				<th>번호</th>
				<th width="50%">제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<c:forEach items="${nt_Lists}" var="notice" varStatus="status">
				<c:set var="wid" value="0" />
				<tr>
					<td>
						${(pageInfo.totalCount-(pageInfo.pageNumber-1)*pageInfo.pageSize)-status.index}
					</td>
					<td>
						<a href="detail.nt?num=${notice.num}&pageNumber=${pageInfo.pageNumber}">${notice.subject}</a>
						<c:if test="${notice.readcount > 10 }">
							<img src="${hot}" border="0" height="16">
						</c:if></td>
					<td>${notice.writer}</td>
					<td>${notice.regdate}</td>
					<td>${notice.readcount}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div>

		<form action="list.nt" method="get" align="center">
			<select name="whatColumn">
				<option value="all">전체 검색
				<option value="subject">제목
				<option value="writer">작성자
			</select> <input type="text" name="keyword" value="길동"> <input
				type="submit" value="검색"> 
		<c:if test="${sessionScope.loginfo.id eq 'admin' }">
			<input type="button" value="추가하기" onclick="insert(${pageInfo.pageNumber})">
		</c:if>
	
		</form>
		<center>
			<span>${pageInfo.pagingHtml}</span>
		</center>
	</div>

	<%@ include file="./../template/bottom.jsp"%>
</body>
</html>