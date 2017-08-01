<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../template/top.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.good {
    background-color: cornflowerblue;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
.bad {
    background-color: #EE2828;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
.button5 {border-radius: 10%;}
</style>

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
		<br>
		
		<hr>
		<label>조리 방법</label><br>
		${Recipe.rcontent }
	</div>
	<br><br> 
	<div align="center">
		<button class="good button5" onclick="good('${Recipe.rnum }','${sessionScope.loginfo.id}')">10<br>
			<span class="glyphicon glyphicon-thumbs-up" style="font-size: x-large;"></span>
		</button>
		<button class="bad button5">20<br>
			<span class="glyphicon glyphicon-thumbs-down" style="font-size: x-large;"></span>
		</button>
	</div>
	
</body>
<script type="text/javascript">
var contextPath = "${pageContext.request.contextPath}";
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



var good = function(rnum,memid){
	var http;
	var url = "UpdateGood.recipe";
	url+="?rnum="+rnum;
	url+="&memid="+memid;
	
	if(window.XMLHttpRequest){
		http = new XMLHttpRequest();
	}else if(window.ActiveXObject){
		http = new ActiveXObject();
	}
	
	http.onreadystatechange = function(){
		if(this.readyState==4){
			if(this.status == 200){
			var insertJson = JSON.parse(this.responseText);
			if('${sessionScope.loginfo.id}' == ''){
				var comfirm = window.confirm("로그인시 추천 가능합니다.")
				if(confirm){
					location.href=contextPath+"/detailRecipe.recipe?rnum=${param.rnum}";
				}
			}else{				
				if(insertJson["check"]==0){
					InsertGood(rnum,memid);
				}else{
					alert("이미 추천하였습니다:)");
				}
			}
		}
	}
}
	http.open("GET", url, true);
	http.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
	http.send();
}
var InsertGood = function(rnum,memid){
	var http;
	var url = "UpdateGood.recipe";
	url+="?rnum="+rnum;
	url+="&memid="+memid;
	
	if(window.XMLHttpRequest){
		http = new XMLHttpRequest();
	}else if(window.ActiveXObject){
		http = new ActiveXObject();
	}
	http.onreadystatechange = function(){
		if(this.readyState==4){
			if(this.status == 200){
			var insertJson = JSON.parse(this.responseText);
			if(insertJson["insert"]>0){
				alert("해당 레시피를 추천하셨습니다");
				location.href=contextPath+"/detailRecipe.recipe?rnum=${param.rnum}";
			}
		}
		}
	}
	http.open("POST", url, true);
	http.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
	http.send();
}
</script>
</html>

<%@ include file="../template/bottom.jsp" %>