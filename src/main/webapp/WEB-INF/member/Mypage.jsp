<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./../template/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.mypage-header {
	font-size: 30px;
}

#mypage-main1{
	font-size: 30px;
}

#mypage-main2{
	font-size: 30px;
}

</style>
</head>

<body>
	<br>
	<div class="container">
		<div class="mypage-header">
			<p>My page</p>
		</div>
		<br>
		<br>
		<div class="col-sm-6">
			<div class="thumbnail">
				<table class="table table-hover">
				<br>
					<tr>
						<th colspan=2 name="mypage-main1"><p>RecipeBuy 프로필</p></th>
					</tr>
					<tr>
					<td rowspan=3><img src="http://lorempixel.com/200/200/people/9/"
						class="avatar img-circle img-thumbnail" alt="avatar" align="center" width="125"></td>
						<%-- <td>${sessionScope.loginfo.image}</td> --%>
						<%-- <td><img src="${sessionScope.loginfo.image}"></td> --%>
						<td>아이디: ${sessionScope.loginfo.id}</td>
						</tr>
						<tr>
						<td>이름: ${sessionScope.loginfo.name}</td>
						</tr>
						<tr>
						<td>별명: ${sessionScope.loginfo.nickname}</td>
						</tr>
					<tr align=center>
						<td colspan=2><a href="myimage.me">
								<p class="btn btn-sm btn-warning">수정</p>
						</a></td>
					</tr>
				</table>

			</div>
		</div>
		<div class="col-sm-6">
			<div class="thumbnail">
				<table class="table table-hover">
				<br>
					<tr>
						<th name="mypage-main2"><p>연락처</p></th>
					</tr>
					<tr>
						<td>이메일</td>
						<td>${sessionScope.loginfo.email}</td>
					</tr>
					<tr>
						<td>휴대번호</td>
						<td>${sessionScope.loginfo.phone}</td>
					</tr>
					<tr>
						<td>주소</td>
						<td>${sessionScope.loginfo.address}</td>
					</tr>

					<tr align=center>
						<td colspan=2><a href="meminfo.me?num=${sessionScope.loginfo.num}">
								<p class="btn btn-sm btn-warning">수정</p>
						</a></td>
					</tr>
				</table>
			</div>
		</div>

	</div>
</body>
</html>
