<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../template/top.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<title>게시판</title>
<style type="text/css">
.err {
	color: red;
	font-size: 9pt;
}
</style>
</head>
<body>
	<div align="center">
		<form:form commandName="b_reply" method="post" name="writeform"
			action="reply.bd">
			<input type="hidden" name="ref" value="${ref}">
			<input type="hidden" name="restep" value="${restep}">
			<input type="hidden" name="relevel" value="${relevel}">
			<table width="430" border="1" cellspacing="0" cellpadding="0">
				<tr>
					<td width="100" align="center">이 름</td>
					<td width="330" align="left"><input type="text" size="30"
						maxlength="10" name="writer" value="홍길동"> <form:errors
							cssClass="err" path="writer" /></td>
				</tr>

				<tr>
					<td width="100" align="center">제 목</td>
					<td width="330" align="left"><input type="text" size="50"
						maxlength="50" name="subject" value="어떤글"> <form:errors
							cssClass="err" path="subject" /></td>
				</tr>

				<tr>
					<td width="100" align="center">내 용</td>
					<td width="330" align="left"><textarea name="content" id="abc"
							rows="13" cols="50">호호호</textarea></td>
				</tr>
				<tr>
					<td width="100" align="center">비밀번호</td>
					<td width="330" align="left"><input type="password" size="10"
						maxlength="12" name="passwd" value="1234"> <form:errors
							cssClass="err" path="passwd" /></td>
				</tr>
				<tr>
					<td colspan=2 align="center" height="30"><input type="submit"
						value="글쓰기"> <input type="reset" value="다시작성"> <input
						type="button" value="목록보기"
						onclick="location.href='list.nt?pageNumber=${pageNumber}'">
					</td>
				</tr>
			</table>
		</form:form>
	</div>
	<%@ include file="./../template/bottom.jsp"%>
</body>
</html>