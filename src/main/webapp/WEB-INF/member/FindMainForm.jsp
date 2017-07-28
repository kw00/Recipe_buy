<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./../template/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
<script>
function check(){
	if (!$("input[name=id]").val()) {
	       alert('아이디를 입력해주세요');
	       $("input[name=id]").focus();
	       return false;
	    }
	if (!$("input[name=password]").val()) {
	       alert('비밀번호를 입력해주세요');
	       $("input[name=password]").focus();
	       return false;
	    }
}
</script>
</head>

<body>
<br><br><br><br><br>
	<div class="container">
		<form class="form-signin" action="login.me" method="post">
			<div class="form-group">
			<div class="form-signin-heading">
				<p>Please Sign In</p>
				</div>
				<br> 
				<input type="text" class="form-control" name="id" placeholder="아이디"><br> 
				<input type="password" class="form-control" name="password" placeholder="비밀번호">
				<div class="checkbox">
				<label> <input type="checkbox" value="remember-me">Remember me</label>
				</div>
				<br>
				<div class="button">
					<button class="btn btn-sm btn-warning" type="submit" onClick="return check()">LogIn</button>
					<button class="btn btn-sm btn-warning" type="button" value="회원 가입"
						onclick="javascript:location.href='signupAssent.me'">SignIn</button>
					<button class="btn btn-sm btn-warning" type="button" value="아이디 찾기"
						onclick="javascript:location.href='findid.me'">FindId</button>
					<button class="btn btn-sm btn-warning" type="button" value="비번 찾기"
						onclick="javascript:location.href='findpw.me'">FindPw</button>
						<a href="#" onclick="history.go(-1)">
						<button class="btn btn-sm btn-danger" type="button">Cancel</button></a>
				</div>
				<br>
			</div>
		</form>
	</div>
</body>
</html>