<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../template/top.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 수정 화면</title>
</head>
<body>
<br><br>
<div class="container" align="center" style="width:50%">
	<form action="update.fd" method="post">
	<p>식재료 수정 화면</p>
	<br>
		<input type="hidden" name="fnum" value="${food.fnum}" />
	
	<table class="table">
		<tr>
			<td align="center">
				<label for="fname">식재료 이름</label>
			</td>
			<td align="center">
				<input type="text" name="fname" value="${food.fname}">
				<form:errors cssClass="err" path="fname"></form:errors>
			</td>
		</tr>
		<tr>
			<td align="center">
				<label for="fcategory">식재료 종류</label> 
			</td>
			<td align="center">
				<input type="text" name="fcategory" value="${food.fcategory}">
				<form:errors cssClass="err" path="fcategory"></form:errors>
			</td>
		</tr>
		<tr>
			<td align="center">
				<label for="fimage">사진</label>
			</td>
			<td align="center">
				<input type="text" name="fimage" value="${food.fimage}">
				<form:errors cssClass="err" path="fimage"></form:errors>
			</td>
		</tr>
		<tr>
			<td align="center">
				<label for="fqty">수량</label>
			</td>
			<td align="center">
				<input type="text" name="fqty" value="${food.fqty}">
				<form:errors cssClass="err" path="fqty"></form:errors>
			</td>
		</tr>
		<tr>
			<td align="center">
				<label for="price">가격</label>
			</td>
			<td align="center">
				<input type="text" name="fprice" value="${food.fprice}">
				<form:errors cssClass="err" path="fprice"></form:errors>
			</td>
		</tr>
		<tr>
			<td align="center">
				<label for="fcontents">상세내용</label>
			</td>
			<td align="center">
				<input type="text" name="fcontents" value="${food.fcontents}">
				<form:errors cssClass="err" path="fcontents"></form:errors>
			</td>
		</tr>
		<tr>
			<td align="center">
				<label for="fcompany">생산지</label>
			</td>
			<td align="center">
				<input type="text" name="fcompany" value="${food.fcompany}">
				<form:errors cssClass="err" path="fcompany"></form:errors>
			</td>
		</tr>
		<tr>
			<td align="center">
				<label for="fpoint">포인트</label>
			</td>
			<td align="center">
				<input type="text" name="fpoint" value="${food.fpoint}">
				<form:errors cssClass="err" path="fpoint"></form:errors>
			</td>
		</tr>
		<tr>
			<td align="center">
				<label for="finputdate">날짜</label>
			</td>
			<td align="center">
				<input type="text" name="finputdate" value="${food.finputdate}">
				<form:errors cssClass="err" path="finputdate"></form:errors>
			</td>
		</tr>
		<tr>	
			<td align="center" colspan="2">
				<input type="submit" class="btn btn" value="수정하기">
				<a href="list.fd">
					<input type="button" class="btn btn" value="목록보기">
				</a>
			</td>
		</tr>
	</table>
	</form>
</div>
<%@ include file="./../template/bottom.jsp" %>
</body>
</html>