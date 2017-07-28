<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
<%@ include file="./../template/top.jsp"%>
<!DOCTYPE html>
<%@ include file="./../template/top.jsp" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<title>게시판</title>
<style type="text/css">
.err{
	color: red;
	font-size: 9pt;
}
</style>
<script type="text/javascript">
$(function(){
    //전역변수
    var obj = [];             
    //스마트에디터 프레임생성
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: obj,
        elPlaceHolder: "content",
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
    $("input[name='subject']").val("[공지]").focus();
    //전송버튼
    $("#insertNotice").click(function(){
        //id가 smarteditor인 textarea에 에디터에서 대입
        obj.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
        //폼 submit
        $("#insertNoticeForm").submit();
    });
});
	$(function() {
		$("input[name='subject']").focus().val("[공지]");
	})
</script>
</head>
<body>
	<div class="container" align="center">
	  <h2><b>공지</b></h2>
	  	<form method="post" id="insertNoticeForm" action="insert.nt"> 
			<table class="table" width="430" border="0" cellspacing="0" cellpadding="0" align="center">
				
<body> 
	<div align="center"> 
		<form:form commandName="nt_insert" method="post" name="writeform" action="insert.nt"> 
			<table width="430" border="1" cellspacing="0" cellpadding="0">
				<tr>
					<td width="100" align="center">글쓴이</td>
					<td width="100" align="center">이 름</td>
					<td width="330" align="left">
					<input type="hidden" size="30" maxlength="10" name="writer" 
							value="${loginfo.id}[${loginfo.name}]">${loginfo.id}[${loginfo.name}]</td>
						<input type="text" size="30" maxlength="10"	name="writer" value="관리자" style="background-color: white;" disabled="disabled" >
						<input type="hidden" size="30" maxlength="10"	name="writer" value="관리자" >
						<form:errors cssClass="err" path="writer"/>
					</td>
				</tr>
				
				
				<tr>
					<td width="100" align="center">제 목</td>
					<td width="330" align="left">					
						<input type="text" size="50" maxlength="50" name="subject">
						<form:errors cssClass="err" path="subject"/>
 					</td>
 				</tr>
 				
				
 				<tr>
 					<td width="100" align="center">내 용</td>
 					<td width="330" align="left">
						<textarea name="content" id="content" rows="10" cols="100" style="width:880px; height:412px;"></textarea>
						<textarea name="content" id="abc" rows="13" cols="50">호호호</textarea>
					</td>
				</tr>
				<tr>
					<td width="100" align="center">비밀번호</td>
					<td width="330" align="left">
						<input type="password" size="10" maxlength="12"	name="passwd" value="1234">
						<form:errors cssClass="err" path="passwd"/>
 					</td>
 				</tr>
				
				
				<tr>
					<td colspan=2 align="right" height="30">
						<input type="button" id=insertNotice class="btn btn-default" value="글쓰기" >  
						<input type="reset"	class="btn btn-default" value="다시작성"> 
						<input type="button" class="btn btn-default" value="목록보기"	
								OnClick="window.location='list.nt'">
								<!-- OnClick="location.href='list.jsp'" 도 가능-->
					<td colspan=2 align="center" height="30">
						<input	type="submit" value="글쓰기">  
						<input type="reset"	value="다시작성"> 
						<input type="button" value="목록보기" onclick="location.href='list.nt?pageNumber=${pageNumber}'">
 					</td>
 				</tr>
 			</table>	
		</form>
	</div>
	<br>
	
		</form:form>
	</div>	
<%@ include file="./../template/bottom.jsp" %>
</body>
</html>

