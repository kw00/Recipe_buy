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
.myimage-header {
	font-size: 30px;
}

.myimage-main {
	align: center;
}
</style>
</head>

</td>
</tr>



<br>
<br>
<body>
	<div class="container" align="center">
		<!-- <div class="myimage-header">
			<p align="center">My image</p>
		</div>
		<div class="myimage-main"> -->

		<form action="insertimage.me"
			enctype="multipart/form-data" method="post">
			<table class="table table-hover" align="center">
				<tr>
					<td rowspan=2>프로필 사진</td>
					<td><img src="resources/bootstrap/images/co.png" alt="avatar"
											align="center" width="120" class="img-responsive" alt=""/></td>
				</tr>
				<tr>
					<td align="left"><input type="file"
						class="text-center center-block well well-sm"></td>
				</tr>
				<tr>
					<td>별명</td>
					<td>
						<p>${sessionScope.loginfo.nickname}</p>
					</td>
				</tr>
			</table>

			<button type="submit" class="btn btn-warning">등록</button>
		</form>
	</div>

	</div>
</body>
</html>
