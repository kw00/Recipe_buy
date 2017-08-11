<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../template/top.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
function openWin(rnum){  
    window.open("foodselected.recipe?rnum="+rnum, "재료 선택","width=680, height=800");
}
$(function(){
    //전역변수
    var obj = [];             
    //스마트에디터 프레임생성
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: obj,
        elPlaceHolder: "rcontent",
        sSkinURI: "resources/editor/SmartEditor2Skin.html",
        htParams : {
            // 툴바 사용 여부
            bUseToolbar : true,           
            // 입력창 크기 조절바 사용 여부
            bUseVerticalResizer : true,   
            // 모드 탭(Editor | HTML | TEXT) 사용 여부
            bUseModeChanger : true,
        }
    });
    //전송버튼
    $("#btnUpdate").click(function(){
        //id가 smarteditor인 textarea에 에디터에서 대입
        obj.getById["rcontent"].exec("UPDATE_CONTENTS_FIELD", []);
        //폼 submit
        $("#UpdateRecipe").submit();
    });
});
</script>
<body>	
	<br><br>
	<div align="center" class="container">
		<p>레시피 수정폼</p>
		<br>
		<form action="recipeupdate.recipe" enctype="multipart/form-data"  method="post" id="UpdateRecipe">
		
			<input type="hidden" value="${Recipe.rnum }" name="rnum">
			
			<table class="table" width="430" border="0" cellspacing="0" cellpadding="0" align="center">
				<tr>
					<td width="100" align="center">레시피 이름</td>
					<td width="330" align="left" colspan="2">
						<input tpye="text" value="${Recipe.rname }" name="rname" size="100">
					</td>
				</tr>
				
				<tr>
					<td width="100" align="center">카테고리</td>
					<td width="330" align="left" colspan="2">
						<select name="mcategory">
							<option value="">선택하세요</option>
							
							<c:forEach items="${category }" var="categories">
							
							<option value="${categories.mcategory }"
							<c:if test="${categories.mcategory eq Recipe.mcategory}">selected</c:if>>
							
							${categories.mcategory}</option>
								
							</c:forEach>
						</select>
					</td>
				</tr>
				
				
		
				<tr>
					<td width="100" align="center">재료선택</td>
					<td width="20%" align="left" colspan="2">					
						<button type="button" onclick="javascript:openWin('${Recipe.rnum}');">재료선택</button>
						<div id="result" align="left">
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
					</td>
				</tr>
				
				
				<tr>
					<td width="100" align="center">메인 이미지</td>
					<td align="left">
						<input type="hidden" value="${Recipe.rimage}" name="upload2">
						<input type="file"name="upload" value="">
					</td>
					<td width="20%" align="left">
						<img src="<%=request.getContextPath()%>/resources/${Recipe.rimage}" width="100" height="100">
					</td>
				</tr>
				
				<tr>
					<td width="100" align="center">조리방법</td>
					<td width="330" align="left" colspan="2">
						<textarea name="rcontent" id="rcontent" cols="100" rows="15">${Recipe.rcontent }</textarea>
					</td>
				</tr>
			
				<tr>
					<td width="100" align="center">가격</td>
					<td width="330" align="left" colspan="2">
						<input type="text" id="rprice"name="rprice" readonly="readonly" value="${Recipe.rprice}">
						<input type="hidden" id="rprice2" value="${Recipe.rprice }">
					</td>
				</tr>

				
				<tr>
					<td colspan=3 align="right" height="30">
						<input type="submit" id=btnUpdate class="btn btn-default" value="레시피 수정하기" >  
						<input type="reset"	class="btn btn-default" value="다시쓰기"> 
						<input type="button" class="btn btn-default" value="목록보기"	
								OnClick="window.location='recipeList.recipe'">
					</td>
				</tr>
			</table>	
		</form>
	</div>
	<br>
</body>
</html>

<%@ include file="../template/bottom.jsp" %>