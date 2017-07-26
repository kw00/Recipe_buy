<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="./../template/top.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	MallList.jsp
	<br>
	<br>
	<h2 align="center">주문 내역</h2>
	<table border="1" align="center">
		<tr>
			<th><span>선택</span></th>
			<th><span>이미지</span></th>
			<th><span>식재료 번호</span></th>
			<th><span>식재료 이름</span></th>
			<th><span>포인트</span></th>
			<th><span>회사</span></th>
			<th><span>수량</span></th>
			
			<th><span>금액</span></th>
			<th><span>삭제</span></th>
		</tr>

		<c:forEach items="${sessionScope.shoplists }" var="food">
			<tr>
				<td align="center"><input type="checkbox"></td> 
				<td align="center"><img width="100" height="100" src="./resources/images/${food.fimage }"></td>
				<td align="center">${food.fnum }</td>
				<td align="center"><a href="detail.fd?fnum=${food.fnum }">${food.fname }</a></td>
				<td align="center">${food.fpoint }</td>
				<td align="center">${food.fcompany }</td>
				<td align="center">${food.fqty }</td>
				<td align="center">${food.fprice }</td>
				<td><a href="delete.mall?fnum=<c:out value="${food.fnum}" />">삭제</a></td>
			</tr>
		</c:forEach>
		<tr> 
			<td colspan="6" align="center"><a href="calculate.mall">결재하기</a>&nbsp;&nbsp;
				<a href="list.fd">추가 주문</a></td>
			<td colspan="3" align="center">총 금액 :
				${sessionScope.totalAmount}</td>
		</tr>
	</table>
	<%@ include file="./../template/bottom.jsp" %>
	
</body>
</html>


