<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./../template/top.jsp"%>
<!DOCTYPE html>

<link
	href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css"
	rel="stylesheet">
<script
	src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

.mypage-header{
	font-size: 25px;
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
<script>
	$(function() {
		$('#toggle-event1').change(function() {
			if ($(this).prop('checked')) {
				setTimeout("login_On1()", 500);
			} else {
				setTimeout("login_Off1()", 500);
			}
		})
	})

	function login_On1() {
		alert("타지역 로그인 차단이 설정되었습니다.");
	}

	function login_Off1() {
		alert("타지역 로그인 차단이 해제되었습니다.");
	}

	$(function() {
		$('#toggle-event2').change(function() {
			if ($(this).prop('checked')) {
				setTimeout("login_On2()", 500);
			} else {
				setTimeout("login_Off2()", 500);
			}
		})
	})

	function login_On2() {
		alert("해와 로그인 차단이 설정되었습니다.");
	}

	function login_Off2() {
		alert("해외 로그인 차단이 해제되었습니다.");
	}
	
	
	$(function() {
		$('#toggle-event3').change(function() {
			if ($(this).prop('checked')) {
				setTimeout("login_On2()", 500);
			} else {
				setTimeout("login_Off2()", 500);
			}
		})
	})

	function login_On2() {
		alert("로그인 알림이 설정되었습니다.");
	}

	function login_Off2() {
		alert("로그인 알림이 해제되었습니다.");
	}
</script>
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
				<p>Security</p>
			</div>
			<br> <br>
			<div class="col-sm-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<p class="panel-title">비밀번호</p>
					</div>
					<div class="panel-body">
					<div class="col-sm-6">
						비밀번호:&nbsp;&nbsp;&nbsp;&nbsp; <a href="update_pwd.me?num=${sessionScope.loginfo.num}">변경하기</a>
					</div>
					</div>
					<!-- <div class="panel-footer">Panel Footer</div> -->
					<br><br><br>
				</div>
			</div>

			<div class="col-sm-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<p class="panel-title">로그인 차단 설정</p>
					</div>
					<div class="panel-body">
					<div class="col-sm-6">
						타지역 로그인 차단 </div>
						<div class="col-sm-6"> <input id="toggle-event1"
							type="checkbox" data-toggle="toggle" data-onstyle="primary"></div>
					</div>
					
					<div class="panel-body">
					<div class="col-sm-6">
						해외 로그인 차단 </div> 
						<div class="col-sm-6"><input id="toggle-event1"
							type="checkbox" data-toggle="toggle" data-onstyle="primary"></div>
					</div>
					
					<!-- <div class="panel-footer">Panel Footer</div> -->
				</div>
			</div>
			
			<div class="col-sm-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<p class="panel-title">로그인 전용 아이디</p>
					</div>
					<div class="panel-body"><br>

							외부에 노출되지 않은 네이버 로그인만을 위한 아이디를 설정하여 보다 안전하게 계정을 보호하세요. 
					</div><br>
					
					<!-- <div class="panel-footer">Panel Footer</div> -->
				</div>
			</div>
			
			
			<div class="col-sm-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<p class="panel-title">새로운 기기 로그인 알림</p>
					</div>
					<div class="panel-body">
					<div class="col-sm-6">
						로그인 알림 받기 </div>
						<div class="col-sm-6"> <input id="toggle-event3"
							type="checkbox" data-toggle="toggle" data-onstyle="primary"></div>
							<br><br><br>
							이전에 사용한 적 없는 PC나 모바일기기(브라우저)에서 로그인 하는 기록을 회원정보에 등록된 메일로 알려드립니다.
					</div>
					
					<!-- <div class="panel-footer">Panel Footer</div> -->
				</div>
			</div>

		</div>
	</div>
</body>
</html>
