<%@page import="member.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../template/top.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.addsearch_header {
	font-size: 20px;
}
</style>
</head>
<body>
		<div class="addsearch_head" align="center">
<!-- 			<div class="addsearch_header" align="center">
				<p>식재료 검색</p>
			</div> -->

			<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="newsletter-info">
				<h3 class="wow fadeInUp" data-wow-duration="1000ms"
					data-wow-delay="300ms">Search for the desired recipe</h3>
				<p class="wow fadeInUp" data-wow-duration="1000ms"
					data-wow-delay="300ms">But who has any right to find fault with
					a man who chooses to enjoy a pleasure that has no annoying
					consequences</p>
				<form class="wow fadeInLeftBig" data-wow-duration="1000ms"
					data-wow-delay="300ms" action="searchfood.fr">
					<input type="hidden" name="whatColumn" value="fname">
					<input type="mail" value="Search for the desired recipe"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Enter Your Recipe';}"
						required="" name="keyword">
					<input type="submit" value="Search">
				</form>
			</div>
		</div>
	</div>
		</div>
	<c:if test="${param.keyword != null}">
<div class="container">
<br><br>
	<div class="food_listheader" align="center">
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
					<td align="center">${food.finputdate }</td>
				</tr>
		</c:forEach>
	</table>
		<div class="container" align="center">
			<ul class="pagination">
				${pageInfo.pagingHtml}
			</ul>
		</div>
	</div>
	<br>
</c:if>
<%@ include file="./../template/bottom.jsp"%>