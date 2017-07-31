<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FindId</title>

<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
	width: 360px;
	padding: 3% 0 0;
	margin: auto;
}

.form {
	position: relative;
	z-index: 1;
	background: #FFFFFF;
	max-width: 360px;
	margin: 0 auto 100px;
	padding: 45px;
	text-align: center;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0
		rgba(0, 0, 0, 0.24);
}

.form input {
	font-family: "Roboto", sans-serif;
	outline: 0;
	background: #f2f2f2;
	width: 100%;
	border: 0;
	margin: 0 0 15px;
	padding: 15px;
	box-sizing: border-box;
	font-size: 14px;
}

.form button {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #FF4848;
	width: 100%;
	border: 0;
	padding: 15px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
}

.form button:hover, .form button:active, .form button:focus {
	background: #FFBB00;
}

.form .message {
	margin: 15px 0 0;
	color: #b3b3b3;
	font-size: 12px;
}

.form .message a {
	color: #FF4848;
	text-decoration: none;
	font-weight: bold;
}

.form .register-form {
	display: none;
}

.container {
	position: relative;
	z-index: 1;
	max-width: 300px;
	margin: 0 auto;
}

.container:before, .container:after {
	content: "";
	display: block;
	clear: both;
}

.container .info {
	margin: 50px auto;
	text-align: center;
}

.container .info h1 {
	margin: 0 0 15px;
	padding: 0;
	font-size: 36px;
	font-weight: 300;
	color: #1a1a1a;
}

.container .info span {
	color: #4d4d4d;
	font-size: 12px;
}

.container .info span a {
	color: #000000;
	text-decoration: none;
}

.container .info span .fa {
	color: #EF3B3A;
}

body {
	background: #76b852; /* fallback for old browsers */
	background: -webkit-linear-gradient(right, #76b852, #8DC26F);
	background: -moz-linear-gradient(right, #76b852, #8DC26F);
	background: -o-linear-gradient(right, #76b852, #8DC26F);
	background: url("resources/bootstrap/images/background.jpg");
	background-size: 100% 112%;
	font-family: "Roboto", sans-serif;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

.modal-logo {
	align: center;
	color: black;
}

.modal-title{
	font-weight: bold;
}
</style>

<script>
function check(){
	if (!$("input[name=id]").val()) {
	       alert('아이디를 입력해주세요');
	       $("input[name=id]").focus();
	       return false;
	    }
	if (!$("input[name=name]").val()) {
	       alert('이름을 입력해주세요');
	       $("input[name=name]").focus();
	       return false;
	    }
	if (!$("input[name=ssn]").val()) {
	       alert('주민등록번호를 입력해주세요');
	       $("input[name=ssn]").focus();
	       return false;
	    }
}
</script>

<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="login-page">
		<div class="form">
			<form class="register-form">
				<input type="text" placeholder="name" /> <input type="password"
					placeholder="password" /> <input type="text"
					placeholder="email address" />
				<button>create</button>
				<p class="message">
					Already registered? <a href="#">Sign In</a>
				</p>
			</form>
			<form class="login-form" action="findpw.me" method="post">
				<div class="form-group">
					<div class="modal-logo">
						<img src="resources/bootstrap/images/logo.png" width="70px">
					</div>
					<div class="modal-title">
						<p>Please Find PW</p>
					</div>
				</div>
				<br> <input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요."><br>
					<input type="text" class="form-control" name="name" placeholder="이름을 입력하세요."><br>
					<input type="text" class="form-control" name="ssn" placeholder="-를 제외한 주민등록번호를 입력하세요.">

				<button class="btn btn-sm btn-warning" type="submit"
					onClick="return check()">FindPw</button>
				<p class="message">
					Not registered? <a href="#" onclick="history.go(-1)">Return to
						homepage</a>
				</p>
			</form>
		</div>
	</div>
</body>
</html>
