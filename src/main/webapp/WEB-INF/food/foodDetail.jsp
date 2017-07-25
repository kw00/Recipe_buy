<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../template/top.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="detail.fd?fnum=${food.fnum+1 }" method="post">
<table align="center">
	<tr>
		<td>
			<img width="250" height="250" src="./resources/images/${food.fimage }">
		</td>
		<td valign="top">
			재료명 : ${food.fname }<br><br>
			가격 : ${food.fprice }원<br><br>
			포인트 : ${food.fpoint }점<br><br>
			수량 : ${food.fqty}<br><br>
			납품 회사 : ${food.fcompany }<br><br>
			입고일 : ${food.finputdate }
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<textarea rows="10" cols="60" disabled="disabled" style="font-size: 16px; background-color: white;">${food.fcontents }</textarea>
		</td>
	</tr>
	<tr>
		<td align="left">
			<a href="#">
				<input type="button" value="장바구니">
			</a>
			<a href="#">
				<input type="button" value="구매하기">
			</a>
		</td>
		<td align="right">
			<a href="list.fd">
				<input type="button" value="목록보기">
			</a>
		</td>
	</tr>
</table>
<%@ include file="./../template/bottom.jsp" %>
</form>
</body>
</html>