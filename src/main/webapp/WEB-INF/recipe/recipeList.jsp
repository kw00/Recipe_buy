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
<style type="text/css">
.somediv{
display: inline-block;
width: 300px;
clear: left;
margin: 50px;
}

#div2{
	height: 40px;
    color:white;
    background-color: gray;
}
</style>
<body>
	<br><br> 
	<p align="center">레시피</p>
	<br><br>
	<div align="center">
		<form action="recipeList.recipe" method="get">
			<div class="col-sm-4"></div>
			<div class="col-sm-8">
				<div class="form-group col-sm-1" style="padding-left: 0px; padding-right: 0px;">
					<select class="form-control" name="whatColumn">
						<option value="rname">제목
					</select>
				</div>
				<div class="form-group col-sm-4" style="padding-left: 0px; padding-right: 0px;">
					<input type="text" class="form-control col-sm-5" name="keyword">
				</div>
				<div class="form-group col-sm-1" style="padding: 0px;">
					<input type="submit" class="btn btn-info" value="검색" style="width: 120px;">
				</div>
			</div>
			</form>
		<div align="right" style="padding-right: 21%;">
			<button class="btn btn" onclick="insert()">레시피 작성</button>
		</div>
		<hr>
		<c:forEach items="${list}" var="lists" varStatus="status">
			
			
			<div class="somediv">
			<a href="detailRecipe.recipe?rnum=${lists.rnum}">
			<img src="<%=request.getContextPath()%>/resources/${lists.rimage}" 
			width="300" height="300">

			</a>
			<div id="div2">
				${lists.rwriter}<br>
				${lists.rname}
			</div>
			</div>
			<c:if test="${status.count%3=='0' }">
			<br>
			</c:if>
		</c:forEach>
		<hr>
		<div class="container">
			<ul class="pagination">
				${pageInfo.pagingHtml}
			</ul>
		</div>
	</div>
</body>
</html>

<%@ include file="../template/bottom.jsp" %>