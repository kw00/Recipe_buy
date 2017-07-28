<%@page import="member.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../template/top.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	boolean check = false;

	if(!(session.getAttribute("loginfo")==null)){
		Member member =(Member)session.getAttribute("loginfo");
		String id = member.getId();
		check = id.equals("admin");
	}
%>
<%-- <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 날짜값 수정중--%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function insert() {
		location.href = 'insert.fd';
	}
	function goUpdate(fnum) {
		location.href='update.fd?fnum='+fnum;
	}
</script>
<link href="../../bootstrap/css/font-awesome.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
<style>
.food_header{
	font-size: 20px;
}
</style>
</head>
<body>
<div class="container">
<br><br>
	<div class="food_header">
	<p>상품 목록</p>
	</div>
	<br><br>
<!-- <center> 
	<form action="list.fd" method="get">
		<select name="whatColumn">
			<option value="all">전체 검색
			<option value="fname">상품명
			<option value="fcontents">설명
		</select>
		<input type="text" name="keyword" value="오렌지">
		<input type="submit" value="검색">
	</form>
</center> -->
<c:if test="<%=check%>">
	<input type="button" value="추가하기" onclick="insert();">
</c:if>
	<table border="0" align="center" width="90%">
		<tr>
			<td align="center" style="font-weight: bold;">식재료 번호</td>
			<td align="center" style="font-weight: bold;">식재료 이름</td>
			<td align="center" style="font-weight: bold;">카테고리</td>
			<td align="center" style="font-weight: bold;">식재료 이미지</td>
			<td align="center" style="font-weight: bold;">식재료 수량</td>
			<td align="center" style="font-weight: bold;">식재료 가격</td>
			<td align="center" style="font-weight: bold;">제공 회사</td>
			<td align="center" style="font-weight: bold;">식재료 설명</td>
			<td align="center" style="font-weight: bold;">포인트</td>
			<td align="center" style="font-weight: bold;">입고일</td>
			<c:if test="<%=check %>">
			<td align="center" style="font-weight: bold;">삭제</td>
			<td align="center" style="font-weight: bold;">수정</td>
			</c:if>
		</tr>
		<c:forEach items="${flists }" var="food">
			<tr>
				<td align="center">${food.fnum }</td>
				<td align="center"><a href="detail.fd?fnum=${food.fnum }">${food.fname }</a></td>
				<td align="center">${food.fcategory }</td>
				<td align="center"><a href="detail.fd?fnum=${food.fnum }"><img height="100" width="100" src="./resources/images/${food.fimage }" /></a></td>
				<td align="center">${food.fqty }</td>
				<td align="center">${food.fprice }</td>
				<td align="center">${food.fcompany }</td>
				<td align="center">${food.fcontents }</td>
				<td align="center">${food.fpoint }</td>
<%-- 				<td><fmt:formatDate value="${food.finputdate }" pattern="yyyy-MM-dd"/></td> 날짜 수정중 시간 없애기 --%>
				<td align="center">${food.finputdate }</td>
			<c:if test="<%=check %>">
				<td align="center"><a href="delete.fd?fnum=<c:out value="${food.fnum}"/>">
						<input type="button" value="삭제">
				</a></td>
				<td align="center">	<input type="button" value="수정" 
						onclick="goUpdate( '${food.fnum}')"/></td>
			</c:if>
			</tr>
		</c:forEach>
	</table>
	<center>
		${pageInfo.pagingHtml}
	</center>
	</div>
	<br><br>
<%@ include file="./../template/bottom.jsp" %>
</body>
</html>