<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="./../template/top.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
	<div class="container" align="center"  style="width:60%;">
		<br><br>
		<p>주문 내역</p>
		<br>
		<table class="table" align="center">
			<tr align="center">
				<td>선택</td>
				<td>이미지</td>
				<td>식재료 번호</td>
				<td>식재료 이름</td>
				<td>포인트</td>
				<td>회사</td>
				<td>수량</td>
				<td>금액</td>
				<td>삭제</td>
			</tr>
	
			<c:forEach items="${sessionScope.shoplists }" var="food">
				<tr align="center">
					<td><input type="checkbox"></td> 
					<td><img width="100" height="100" src="./resources/images/${food.fimage }"></td>
					<td>${food.fnum }</td>
					<td><a href="detail.fd?fnum=${food.fnum }">${food.fname }</a></td>
					<td>${food.fpoint }</td>
					<td>${food.fcompany }</td>
					<td>${food.fqty }</td>
					<td>${food.fprice }</td>
					<td>
						<a href="delete.mall?fnum=<c:out value="${food.fnum}" />">삭제</a>
					</td>
				</tr>
			</c:forEach>
				<tr>
					<td colspan="9" align="center">
						총 금액 : ${sessionScope.totalAmount}
					</td>
				</tr>	
				
				<tr> 
					<td colspan="9" align="center">
						<a href="calculate.mall"><button class="btn btn">결재하기</button></a>&nbsp;&nbsp;
						<a href="list.fd"><button class="btn btn">추가 주문</button></a>
					</td>
				</tr>
		</table>
	</div>
</body>
</html>
<%@ include file="./../template/bottom.jsp" %>

