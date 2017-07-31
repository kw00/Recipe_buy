<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./../template/top.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<br>
	<div align="center">
	<h2>Member Controller</h2>
	<br>
		<form action="list.me" method="get" style="width: 50%">
			<div class="col-sm-2"></div>
			<div class="form-group col-sm-2" style="padding-left: 0px; padding-right: 0px;">
				<select class="form-control" name="whatColumn">
					<option value="all">전체 검색
					<option value="id">아이디
					<option value="name">이름
				</select>
			</div>
			<div class="form-group col-sm-5" style="padding-left: 0px; padding-right: 0px;">
				<input type="text" class="form-control col-sm-5" name="keyword">
			</div>
			<div class="form-group col-sm-1">
				<input type="submit" class="btn btn-default" value="검색">
			</div>
		</form>
		<table class="table table-condensed" style="width:80%;">
			<thead>
				<tr align="center">
					<td><b>num</b></td>
					<td width="10%"><b>name</b></td>
					<td><b>id</b></td>
					<td><b>nickname</b></td>
					<td><b>email</b></td>
					<td><b>phone</b></td>
					<td width="30%"><b>address</b></td>
					<td><b>zipcode</b></td> 
					<td><b>gender</b></td> 
					<td><b>joindate</b></td>
					<td width="10%"><b>admin</b></td>
					<td><b>회원수정</b></td>
					<td><b>회원삭제</b></td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${Member}" var="member">
					<tr align="center">
						<td>${member.num}</td>
						<td>${member.name}</td>
						<td>${member.id}</td>
						<td>${member.nickname}</td>
						<td>${member.email}</td>
						<td>${member.phone}</td>
						<td>${member.address}</td>
						<td>${member.zipcode}</td>
						<td>${member.gender}</td>
						<td>${member.joindate}</td>
						<td>
							<c:if test="${member.admin == '0'}">관리자</c:if> 
							<c:if test="${member.admin == '1'}">일반회원</c:if> 
						</td>
						<td><button type="button" class="btn btn-default" onclick="javascript:location.href='update.me?id=${member.id}'">회원수정</button></td>
						<td><button type="button" class="btn btn-default" onclick="javascript:location.href='delete.me?id=${member.id}'">회원삭제</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<div class="container">
			<ul class="pagination">
				${pageInfo.pagingHtml}
			</ul>
		</div>
	</div>
</body>
</html>
<%@include file="./../template/bottom.jsp" %>