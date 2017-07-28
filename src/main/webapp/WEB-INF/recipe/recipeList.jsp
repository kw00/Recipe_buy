<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../template/top.jsp" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function insert(){
		location.href="insertrecipe.recipe";
	}
</script>
<body>
	RecipeList.jsp<br><br>
	<h1 align="center">게시판 목록보기</h1>
	<div align="center">
		<form action="recipeList.recipe" method="get">
			<select name="whatColumn">
				<option value="rname">제목</option>
			</select>
			<input type="text" name="keyword">
			<input type="submit" value="검색">
		</form>
		전체 레시피 갯수 : ${totalcount}
		<div align="right">
			<button onclick="insert()">레시피 작성</button>
		</div>
		<hr>
		<c:forEach items="${list}" var="lists" varStatus="status">
			
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
		<div align="center">
		${pageInfo.pagingHtml}
		</div>
	</div>
</body>
</html>

<%@ include file="../template/bottom.jsp" %>