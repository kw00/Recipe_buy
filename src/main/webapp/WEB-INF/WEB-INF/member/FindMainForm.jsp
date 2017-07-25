<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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

</style>
</head>

<body>

	<div class="container">

		<form class="form-signin" action="login.me" method="post">
			<div class="form-group">
				<h2 class="form-signin-heading">Please Sign In</h2>
				<br> 
				<input type="text" class="form-control" name="id" placeholder="아이디"><br> 
				<input type="password" class="form-control" name="password" placeholder="비밀번호">
				<div class="checkbox">
				<label> <input type="checkbox" value="remember-me">Remember me</label>
				</div>
				<div class="button">
					<button class="btn btn-sm btn-primary" type="submit">LogIn</button>
					<button class="btn btn-sm btn-primary" type="button" value="회원 가입"
						onclick="javascript:location.href='signup.me'">SignIn</button>
					<button class="btn btn-sm btn-primary" type="button" value="아이디 찾기"
						onclick="javascript:location.href='findid.me'">FindId</button>
					<button class="btn btn-sm btn-primary" type="button" value="비번 찾기"
						onclick="javascript:location.href='findpw.me'">FindPw</button><br><br>
						<a href="#" onclick="history.go(-1)"><button class="btn btn-sm btn-primary" type="button">Cancel</button></a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>