<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../template/top.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	
		<!-- 자유게시판 -->
		<br>
		<h2>자유게시판</h2>
		<hr>
		<c:choose>
			<c:when test="${empty b_Lists}">
				검색 조건에 맞는 게시물이 없습니다.
				<br>
				<br>
			</c:when>
			
			<c:otherwise>
				<table class="table">
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
					<tr>
						<td colspan="9" align="right">
							<button type="button" class="btn btn-default" onclick="javascript:location.href='board.mainboard?whatColumn=title&keyword=${b_pageInfo.keyword}'">자유게시판 더보기</button>
						</td>
					</tr>
				</table>
			</c:otherwise>
		</c:choose>
		
		<!-- 공지사항 -->
		<br>
		<h2>자유게시판</h2>
		<hr>
		<c:choose>
			<c:when test="${empty n_Lists}">
				검색 조건에 맞는 게시물이 없습니다.
				<br>
				<br>
			</c:when>
			<c:otherwise>
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
			
					<c:forEach items="${n_Lists}" var="notice">
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
					<tr>
						<td colspan="9" align="right">
							<button type="button" class="btn btn-default" onclick="javascript:location.href='list.nt?whatColumn=subject&keyword=${n_pageInfo.keyword}'">공지 더보기</button>
						</td>
					</tr>
				</table>
				
			</c:otherwise>
		</c:choose>
		
	
		<br>
		<h2>식재료</h2>
		<hr>
		<c:choose>
			<c:when test="${empty f_Lists}">
				검색 조건에 맞는 게시물이 없습니다.
				<br>
				<br>
			</c:when>
			<c:otherwise>
				<table border="0" align="center" width="90%">
					<tr>
						<td align="center" style="font-weight: bold;">식재료 번호</td>
						<td align="center" style="font-weight: bold;">식재료 이름</td>
						<td align="center" style="font-weight: bold;">카테고리</td>
						<td align="center" style="font-weight: bold;">식재료 이미지</td>
						<td align="center" style="font-weight: bold;">식재료 수량</td>
						<td align="center" style="font-weight: bold;">식재료 가격</td>
						<td align="center" style="font-weight: bold;">제공 회사</td>
						<td align="center" style="font-weight: bold;">식재료 설명</td>
						<td align="center" style="font-weight: bold;">포인트</td>
						<td align="center" style="font-weight: bold;">입고일</td>
					</tr>
					<c:forEach items="${f_Lists }" var="food">
						<tr>
							<td align="center">${food.fnum }</td>
							<td align="center"><a href="detail.fd?fnum=${food.fnum }">${food.fname }</a></td>
							<td align="center">${food.fcategory }</td>
							<td align="center"><a href="detail.fd?fnum=${food.fnum }"><img height="100" width="100" src="./resources/images/${food.fimage }" /></a></td>
							<td align="center">${food.fqty }</td>
							<td align="center">${food.fprice }</td>
							<td align="center">${food.fcompany }</td>
							<td align="center">${food.fcontents }</td>
							<td align="center">${food.fpoint }</td>
							<td align="center">${food.finputdate }</td>
						</tr>
					</c:forEach>
					
					<tr>
						<td colspan="9" align="right">
							<button type="button" class="btn btn-default" onclick="javascript:location.href='list.fd?whatColumn=fname&keyword=${f_pageInfo.keyword}'">식재료 더보기</button>
						</td>
					</tr>
				</table>
			</c:otherwise>
		</c:choose>

	
		<br>
		<h2>레시피</h2>
		<hr>
		<c:choose>
			<c:when test="${empty r_Lists}">
				검색 조건에 맞는 게시물이 없습니다.
				<br>
				<br>
			</c:when>
			<c:otherwise>
				<c:forEach items="${r_Lists}" var="lists" varStatus="status">
					
					<a href="detailRecipe.recipe?rnum=${lists.rnum}">
					<img src="<%=request.getContextPath()%>/resources/${lists.rimage}" 
					width="300" height="300">
					<font>
					${lists.rwriter }
					${lists.rname}
					${lists.rprice}
					</font>
					</a>
					<c:if test="${status.count%3=='0' }">
					<br><br>
					</c:if>
				</c:forEach>
				<hr>
			
				<button type="button" class="btn btn-default" onclick="javascript:location.href='recipeList.recipe?whatColumn=rname&keyword=${r_pageInfo.keyword}'">레시피 더보기</button>
					
			</c:otherwise>
		</c:choose>
		
	</div>		
</body>
</html>
<%@include file="./../template/bottom.jsp" %>