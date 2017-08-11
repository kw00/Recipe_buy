<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../template/top.jsp" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script>


function openWin(){  
    window.open("foodlist.recipe", "재료 선택","width=680, height=800");
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
    $("#btnInsert").click(function(){
        //id가 smarteditor인 textarea에 에디터에서 대입
        obj.getById["rcontent"].exec("UPDATE_CONTENTS_FIELD", []);
        //폼 submit
        $("#insertRecipe").submit();
    });
});

function checkRecipe(){
	var rname = $("input[id=rname]").val();
	if(rname == ""){
		alert("레시피 이름을 써주세요");
		$("input[id=rname]").focus();
		return false;
	}
	if($("select[name=mcategory]").val()==""){
		alert("카테고리를 선택해주세요");
		return false;
	}
	if($("input[name=upload]").val()==""){
		alert("메인 사진을 올려주세요");
		return false;
	}
}
</script>
</head>
<body>
	<br><br>
	<div align="center" class="container">
		<p>레시피 등록 폼</p>
		<br>
		<form action="insertrecipe.recipe" id="insertRecipe" enctype="multipart/form-data"  method="post" onsubmit="return checkRecipe()">
			<table class="table" width="430" border="0" cellspacing="0" cellpadding="0" align="center">
			
				<tr>
					<td width="100" align="center">레시피 이름</td>
					<td width="330" align="left">
						<input type="text" name="rname" id="rname" size="100">
						<input type="hidden" name="rwriter" value="${sessionScope.loginfo.nickname}">
					</td>
				</tr>
				
				
				<tr>
					<td width="100" align="center">카테고리</td>
					<td width="330" align="left">
						<select name="mcategory">
							<option value="">선택하세요</option>
							<c:forEach items="${category }" var="categories">
							<option value="${categories.mcategory }">${categories.mcategory}</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				
				
		
				<tr>
					<td width="100" align="center">재료선택</td>
					<td width="330" align="left">					
						<button type="button" onclick="javascript:openWin();">재료선택</button>
						<div id="result"></div>
					</td>
				</tr>
				
				
				<tr>
					<td width="100" align="center">메인 이미지</td>
					<td width="330" align="left">
						<input type="file" name="upload">
					</td>
				</tr>
				
				
				<tr>
					<td width="100" align="center">조리방법</td>
					<td width="330" align="left">
						<textarea name="rcontent" id="rcontent" cols="100" rows="15"></textarea>
					</td>
				</tr>
			
			
				<tr>
					<td width="100" align="center">가격</td>
					<td width="330" align="left">
						<input type="text" id="rprice"name="rprice" readonly="readonly">
						<input type="hidden" id="rprice2" value="0">
					</td>
				</tr>
				
				
				<tr>
					<td colspan=2 align="right" height="30">
						<input type="submit" id=btnInsert class="btn btn-default" value="레시피 등록하기" >  
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