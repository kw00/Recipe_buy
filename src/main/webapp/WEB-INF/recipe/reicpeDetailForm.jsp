<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../template/top.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){
	$("input[name=fname]").change(function(){
		var isChecked = $(this).is(":checked");
		var value= $(this).val();
		var valueArray = value.split('-');
		var result = $("#fprice").val();
		alert(result);
		if(isChecked){
			/* alert("체크했음"); */
			result = parseInt(result)+(parseInt(valueArray[1])*parseInt(valueArray[2]));
			$("#fprice").val(result);
		}else{
			/* alert("체크해제했져");
			alert("체크해제한 수량 : "+valueArray[1]);
			alert("체크해제한 단가 : "+valueArray[2]); */
			result = parseInt(result)-(parseInt(valueArray[1])*parseInt(valueArray[2]));
			/* alert("가격 : "+result); */
			$("#fprice").val(result);
		}
	});
});
function Update(rnum){
	/* alert(rnum); */
	location.href="recipeupdate.recipe?rnum="+rnum;
}
</script>
</head>
<body>
<c:set value="${sessionScope.loginfo.admin }" var="admin"/>
<c:set value="${sessionScope.loginfo.nickname }" var="nickname"/>
	<c:if test="${admin eq 0 or nickname eq Recipe.rwriter }">
			<div align="right">
			<button onclick="Update('${Recipe.rnum}')">수정</button><button>삭제</button>
			<hr>
			</div>
	</c:if>
	<div align="left">
		<img src="<%=request.getContextPath()%>/resources/${Recipe.rimage}" width="300" height="300">
	</div>
	<div align="center">
		<label>레시피명 : </label>${Recipe.rname}<br>
		<label>카테고리 : </label>${Recipe.mcategory }<br>
		<label>글쓴이 : </label>${Recipe.rwriter }<br>
		<label>재료 : </label>
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
			<input type="checkbox" value="${fname}-${fqty}-${fprice}" name="fname" checked="checked">${fname}
			<c:if test="${a.count%5==0 }">
			<br>
			</c:if>
		</c:forEach>
		<br>
		<label>가격 : </label>
		<input type="text" value="${Recipe.rprice }" readonly="readonly" size="3" name="rprice" id="fprice">
		<br>
		<button class="btn btn-danger" type="button">바로 주문하기</button>
		<button class="btn btn-success" type="button">장바구니 담기</button>
		<hr>
		<label>조리 방법</label><br>
		${Recipe.rcontent }
	</div>
</body>
</html>

<%@ include file="../template/bottom.jsp" %>