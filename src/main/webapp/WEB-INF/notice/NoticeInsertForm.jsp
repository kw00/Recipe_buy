<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../template/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
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
</script>
</head>
<body>
	<div class="container" align="center">
	  <h2><b>공지</b></h2>
	  	<form:form method="post" id="insertNoticeForm" action="insert.nt"> 
			<table class="table" width="430" border="0" cellspacing="0" cellpadding="0" align="center">
				
				<tr>
					<td width="100" align="center">글쓴이</td>
					<td width="330" align="left">
					<input type="hidden" size="30" maxlength="10" name="writer" 
							value="${loginfo.id}[${loginfo.name}]">${loginfo.id}[${loginfo.name}]
					<input type="hidden" name="passwd" value="${loginfo.password }">
					</td>
				</tr>
				
				
				<tr>
					<td width="100" align="center">제 목</td>
					<td width="330" align="left">					
						<input type="text" size="50" maxlength="50" name="subject">
					</td>
				</tr>
				
				
				<tr>
					<td width="100" align="center">내 용</td>
					<td width="330" align="left">
						<textarea name="content" id="content" rows="10" cols="100" style="width:880px; height:412px;"></textarea>
					</td>
				</tr>
				
				
				<tr>
					<td colspan=2 align="right" height="30">
						<input type="button" id=insertNotice class="btn btn-default" value="글쓰기" >  
						<input type="reset"	class="btn btn-default" value="다시작성"> 
						<input type="button" class="btn btn-default" value="목록보기"	
								OnClick="window.location='list.nt'">
								<!-- OnClick="location.href='list.jsp'" 도 가능-->
					</td>
				</tr>
			</table>	
		</form:form>
	</div>
	<br>
	
</body>
</html>

<%@ include file="./../template/bottom.jsp"%>