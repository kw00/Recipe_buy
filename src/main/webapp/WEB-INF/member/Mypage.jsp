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

#mypage-main1 {
	font-size: 30px;
}

#mypage-main2 {
	font-size: 30px;
}

.panel-title {
	font-size: 15px;
}

.panel-body {
	font-size: 13px;
}

/* .nav nav-pills{
	background: orange;
} */
</style>
</head>

<body>
	<br>
	<br>
	<div class="container">
		<ul class="nav nav-tabs">
			<li class="active"><a href="mypage.me">My page</a></li>
			<li><a href="security.me">Security</a></li>
		</ul>
		<br>
		<div class="container">
			<div class="mypage-header">
				<p>My page</p>
			</div>
			<br> <br>

			<div class="col-sm-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<p class="panel-title">RecipeBuy 프로필</p>
					</div>
					<div class="panel-body">
						<div class="col-sm-6">
							<br>
							<div class="panel-img">
								<img src="resources/bootstrap/images/co.png" alt="avatar"
									align="center" width="120" class="img-responsive" alt="" />
							</div>
						</div>
						<div class="col-sm-6">
							<br> <br> 아이디: ${sessionScope.loginfo.id} <br><br> 이름:
							${sessionScope.loginfo.name} <br><br> 별명:
							${sessionScope.loginfo.nickname}
						</div>
					
					</div><br>
					<!-- <div class="panel-button" align="center">
							<a href="update_profile.me">
								<p class="btn btn-sm btn-primary">수정</p>
							</a>
						</div> -->
						<br>
						<br>
				</div>

				<!-- <div class="panel-footer">Panel Footer</div> -->
			</div>

			<div class="col-sm-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<p class="panel-title">연락처</p>
					</div>
					<div class="panel-body">
						<div class="col-sm-12">
							<br> <br>
							<div class="panel-desc1">이메일: ${sessionScope.loginfo.email}
							</div>
							<br>
							<div class="panel-desc1">휴대번호:
								${sessionScope.loginfo.phone}</div>
							<br>
							<div class="panel-desc1">주소:
								${sessionScope.loginfo.address}</div>
							<br> <br>
							<div class="panel-button" align="center"><br>
								<a href="update_info.me?num=${sessionScope.loginfo.num}">
									<p class="btn btn-sm btn-primary">수정</p>
								</a><br>
							</div>
						</div>
					</div>
					<!-- <div class="panel-footer">Panel Footer</div> -->
				</div>
				<br><br>
			</div>
		</div>
	</div>
</body>
</html>
