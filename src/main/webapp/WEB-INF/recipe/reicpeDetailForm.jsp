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

	<br><br>
	<div align="center" class="container">
		<h1><b>레시피 정보</b></h1>
		<br>
			<table class="table" width="430" border="0" cellspacing="0" cellpadding="0" align="center">
				<tr>
					<td width="10%" align="center">작성자</td>
					<td width="330" align="left" colspan="2">
						${Recipe.rwriter }
					</td>
				</tr>
				
				
				<tr>
					<td width="10%" align="center">레시피 이름</td>
					<td width="330" align="left" colspan="2">
						${Recipe.rname}
					</td>
				</tr>
				<tr>
					<td width="10%" align="center">카테고리</td>
					<td width="330" align="left" colspan="2">
						${Recipe.mcategory }
					</td>
				</tr>
				
		
				<tr>
					<td width="10%" align="center">재료</td>
					<td width="20%" align="left" colspan="2">					
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
					</td>
				</tr>
				
				
				<tr>
					<td width="10%" align="center">가격</td>
					<td width="330" align="left" colspan="2">
						<input type="text" value="${Recipe.rprice }" readonly="readonly" size="3" name="rprice" id="fprice">
					</td>
				</tr>
				
				
				<tr>
					<td width="10%" align="center" colspan="3">조리방법</td>
				</tr>
				<tr>
					<td width="330" align="center" colspan="3">
						${Recipe.rcontent }
						<br><br><br>
						<button class="good button5" onclick="good('${Recipe.rnum }','${sessionScope.loginfo.id}')">10<br>
							<span class="glyphicon glyphicon-thumbs-up" style="font-size: x-large;"></span>
						</button>
						<button class="bad button5" onclick="bad('${Recipe.rnum }','${sessionScope.loginfo.id}')">20<br>
							<span class="glyphicon glyphicon-thumbs-down" style="font-size: x-large;"></span>
						</button>
					</td>
				</tr>
				
				
				<tr>
					<td colspan=3 align="center" height="30">
						<button class="btn btn-danger" type="button">바로 주문하기</button>
						<button class="btn btn-success" type="button">장바구니 담기</button>
					</td>
				</tr>
			
			
				<tr>
					<td colspan=3 align="right" height="30">
						<c:if test="${admin eq 0 or nickname eq Recipe.rwriter }">
								<button class="btn btn-default" onclick="Update('${Recipe.rnum}')">수정</button>
								<button class="btn btn-danger">삭제</button>
						</c:if>
						<input type="button" class="btn btn-default" value="목록보기"	
								OnClick="window.location='recipeList.recipe'">
					</td>
				</tr>
			</table>	
	</div>
	<br>
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
					alert("이미 추천또는 비추천하셨습니다");
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
				alert("이미 추천 또는 비추천 하셨습니다");
				location.href=contextPath+"/detailRecipe.recipe?rnum=${param.rnum}";
			}
		}
		}
	}
	http.open("POST", url, true);
	http.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
	http.send();
}
var bad = function(rnum,memid){
	var http;
	var url = "UpdateBad.recipe";
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
					InsertBad(rnum,memid);
				}else{
					alert("이미 추천 또는 비추천 하셨습니다");
				}
			}
		}
	}
}
	http.open("GET", url, true);
	http.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
	http.send();
}
var InsertBad = function(rnum,memid){
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
				alert("해당 레시피를 비추천하셨습니다");
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