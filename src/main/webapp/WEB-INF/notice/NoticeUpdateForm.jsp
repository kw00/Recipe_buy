<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../template/top.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<title>업데이트</title>
<script type="text/javascript">
	$(function(){
		$("input[name='subject']").val($("input[name='subject']").val()+"(수정)");		
	})
</script>
</head>
<body>
	<div align="center">
		<form method="post" action="update.nt">
			<input type="hidden" name="num" value="${notice.num}">
			<table width="430" border="1" cellspacing="0" cellpadding="0">
				<tr>
					<td width="100" align="center">이 름</td>
					<td width="330" align="left"><input type="text" size="30"
						maxlength="10" name="writer" value="${notice.writer}"
						style="background-color: white;" disabled="disabled"> <input
						type="hidden" name="writer" value="${notice.writer}"></td>
				</tr>

				<tr>
					<td width="100" align="center">제 목</td>
					<td width="330" align="left"><input type="text" size="50"
						maxlength="50" name="subject" value="${notice.subject}"></td>
				</tr>

				<tr>
					<td width="100" align="center">내 용</td>
					<td width="330" align="left"><textarea name="content" id="abc"
							rows="13" cols="50">${notice.content}</textarea></td>
				</tr>
				<tr>
					<td width="100" align="center">비밀번호</td>
					<td width="330" align="left"><input type="password" size="10"
						maxlength="12" name="passwd" value="${notice.passwd}"></td>
				</tr>
				<tr>
					<td colspan=2 align="center" height="30"><input type="submit"
						value="수정"> <input type="reset" value="다시작성"> <input
						type="button" value="목록보기"
						onclick="location.href='list.nt?pageNubmer=${pageNumber}'">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<%@ include file="./../template/bottom.jsp"%>
</body>
</html>