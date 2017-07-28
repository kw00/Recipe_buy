<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../template/top.jsp" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">


function openWin(){  
    window.open("foodlist.recipe", "재료 선택","width=800, height=700");
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
</script>
<body>
	RecieInsertForm.jsp<br>
	<div align="center">
		<h1>레시피 등록 폼</h1>
		<form action="insertrecipe.recipe" id="insertRecipe" enctype="multipart/form-data"  method="post" >
			
			<div align="left">
			<label>레시피 이름</label>
			<input type="text" name="rname" id="rname">
			<input type="hidden" name="rwriter" value="${sessionScope.loginfo.nickname}">
			</div>
			
			<div align="left">
			<label>카테고리</label>
			<select name="mcategory">
				<option value="">선택하세요</option>
				<c:forEach items="${category }" var="categories">
				<option value="${categories.mcategory }">${categories.mcategory}</option>
				</c:forEach>
			</select>
			</div>
			
			<div align="left">
			<button type="button" onclick="javascript:openWin();">재료선택</button>
			</div>
			<div id="result">
			
			</div>
			<div align="left">
			<label >메인 이미지</label>
			<input type="file" name="upload">
			</div>
			
			<div align="left">
			<label>조리방법</label>
			<textarea name="rcontent" id="rcontent" cols="100" rows="15"></textarea>
			</div>
			<div align="left">
			<label>가격</label>
			<input type="text" id="rprice"name="rprice" readonly="readonly">
			<input type="hidden" id="rprice2" value="0">
			</div>
						
			<div align="center">
			<button type="submit" id="btnInsert">레시피 등록하기</button>
			<button type="reset">다시쓰기</button>
			<a href="<%=request.getContextPath() %>">메인화면</a>
			</div>
		</form>
	</div>
</body>
</html>

<%@ include file="../template/bottom.jsp" %>