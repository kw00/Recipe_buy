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
.myimage-header{
	font-size: 40px;
}
.myimage-main{
	align: center;
}
</style>
</head>

<body>
	<div class="col-sm-2"></div>
	<div class="col-sm-7">
		<br> <br>
		<div class="myimage-header">
			<p align="center">My image</p>
		</div>
		<br>
		<div class="row">
			<div class="col-sm-4">
				<div class="myimage-main">
					<img src="http://lorempixel.com/200/200/people/9/"
						class="avatar img-circle img-thumbnail" alt="avatar" align="center"> <br>
					<br>
					<p align="center">${sessionScope.loginfo.id}
					</h6>
					<br> <br> <input type="file"
						class="text-center center-block well well-sm" align="center">
				</div>
			</div>
		</div>
	</div>
</body>
</html>
