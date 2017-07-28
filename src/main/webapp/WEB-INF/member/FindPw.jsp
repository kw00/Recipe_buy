<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./../template/top.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link href="assets/css/bootstrap.css" rel="stylesheet">

<style type="text/css">
body {
	padding-top: 40px;
	padding-bottom: 40px;
	background-image:url("img/background.jpg");
	background-size: 100%;
}

.form-signin {
	max-width: 33%;
	padding: 19px 29px 29px;
	margin: 0 auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .form-signin-heading, .form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin input[type="text"], .form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}
.form-signin-heading{
	font-size: 30px;
}
</style>

<body>
<br><br><br><br><br>
	<div class="container">
		<form class="form-signin" action="findpw.me" method="post">
			<div class="form-group">
				<div class="form-signin-heading">
				<p>Please Find Pw</p>
				</div>
				<br> <input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요."><br>
					<input type="text" class="form-control" name="name" placeholder="이름을 입력하세요."><br>
					<input type="tel" class="form-control" name="ssn" placeholder="-를 제외한 주민등록번호를 입력하세요.">
				<div class="checkbox">
					<label> <input type="checkbox" value="remember-me">Remember me</label>
				</div>
				<br>
			<button class="btn btn-sm btn-warning" type="submit" align="center">FindPw</button>
			<a href="#" onclick="history.go(-1)"><button class="btn btn-sm btn-danger" type="button">Cancel</button></a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
