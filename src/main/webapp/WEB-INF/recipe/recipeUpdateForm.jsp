<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../template/top.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function openWin(rnum){  
    window.open("foodlist.recipe?rnum="+rnum, "재료 선택","width=800, height=700");
}
</script>
<body>
	<div>
		recipeUpdateForm.jsp<br>
		<div>
			<form action="recipeupdate.recipe" enctype="multipart/form-data"  method="post">
				<div align="left">
					<img src="<%=request.getContextPath()%>/resources/${Recipe.rimage}" width="300" height="300">
					<input type="hidden" value="${Recipe.rimage}" name="upload2">
					<input type="file"name="upload1">
				</div>
				<div align="center">
					<label>카테고리</label>
					<select name="mcategory">
						<option value="">선택하세요</option>
						<c:forEach items="${category }" var="categories">
						<option value="${categories.mcategory }"
						<c:if test="${categories.mcategory eq Recipe.mcategory}">
						selected
						</c:if>
						>${categories.mcategory}</option>
					</c:forEach>
				</select>
				</div>
				<div align="center">
					<button type="button" onclick="javascript:openWin('${Recipe.rnum}');">재료선택</button>
				</div>
				<div id="result" align="center">
					<c:forEach items="${fn:split(Recipe.ringredients,',') }" var="i" varStatus="a">
						<c:forTokens items="${i}" delims="-" var="ingred" varStatus="status">
							<c:if test="${status.count==1 }">
							<c:set value="${ingred}" var="fname"/>
							</c:if>
							<c:if test="${status.count==2 }">
								<c:set value="${ingred}" var="fqty"/>
							</c:if>
							<c:if test="${status.count==3 }">
								<c:set value="${ingred}" var="fprice"/>
							</c:if>
						</c:forTokens>			
					<input type='checkbox' id="${fname}" name="ringredients" value="
					${fname}-${fqty}-${fprice}"checked disabled='disabled'>
					<font id="${fname}" color="blue">${fname}</font><font id="${fname}" color='red'>${fqty}</font>
					<input type='hidden' id="${fname}" name='ringredients' value="${fname}-${fqty}-${fprice}"
					checked readonly="readonly">
						<c:if test="${a.count%5==0 }">
						<br>
						</c:if>
					</c:forEach>
				</div>
			</form>
		</div>
	</div>
</body>
</html>