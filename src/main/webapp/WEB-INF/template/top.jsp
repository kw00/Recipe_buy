<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<html>
<head>
<title>Cooks a Hotels and Restaurants Category Flat Bootstrap
	Responsive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Cooks Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
a {
	text-decoration: none;
}

.navbar-brand {
	font-size: 20px;
}

#login-modal .modal-dialog {
	width: 350px;
}

#login-modal input[type=text], input[type=password] {
	margin-top: 10px;
}

.modal-logo {
	align: "center";
}

.mainlogo {
	font-size: 10px;
}

.form-control {
	border-radius: 0px;
}

.cl-effect-13 {
	font-size: 13px;
}

.modal_security {
	font-size: 13px;
}

#html_test {
	color: red;
	font-weight: bold;
}

.selected {
	color: blue;
}
/* go */
body {
	background: #F1F3FA;
}

/* Profile container */
.profile {
	margin: 20px 0;
}

/* Profile sidebar */
.profile-sidebar {
	padding: 20px 0 10px 0;
	background: #fff;
	padding-right: 25px;
}

.profile-userpic img {
	float: none;
	margin: 0 auto;
	width: 50%;
	height: 50%;
	-webkit-border-radius: 50% !important;
	-moz-border-radius: 50% !important;
	border-radius: 50% !important;
}

.profile-usertitle {
	text-align: center;
	margin-top: 20px;
}

.profile-usertitle-name {
	color: #5a7391;
	font-size: 16px;
	font-weight: 600;
	margin-bottom: 7px;
}

.profile-usertitle-job {
	text-transform: uppercase;
	color: #5b9bd1;
	font-size: 12px;
	font-weight: 600;
	margin-bottom: 15px;
}

.profile-userbuttons {
	text-align: center;
	margin-top: 10px;
}

.profile-userbuttons .btn {
	text-transform: uppercase;
	font-size: 11px;
	font-weight: 600;
	padding: 6px 15px;
	margin-right: 5px;
}

.profile-userbuttons .btn:last-child {
	margin-right: 0px;
}

.profile-usermenu {
	margin-top: 30px;
}

.profile-usermenu ul li {
	border-bottom: 1px solid #f0f4f7;
}

.profile-usermenu ul li:last-child {
	border-bottom: none;
}

.profile-usermenu ul li a {
	color: #93a3b5;
	font-size: 14px;
	font-weight: 400;
}

.profile-usermenu ul li a i {
	margin-right: 8px;
	font-size: 14px;
}

.profile-usermenu ul li a:hover {
	background-color: #fafcfd;
	color: #5b9bd1;
}

.profile-usermenu ul li.active {
	border-bottom: none;
}

.profile-usermenu ul li.active a {
	color: #5b9bd1;
	background-color: #f6f9fb;
	border-left: 2px solid #5b9bd1;
	margin-left: -2px;
}

/* Profile Content */
.profile-content {
	padding: 20px;
	background: #fff;
	min-height: 460px;
}
</style>
<%
	String contextPath = request.getContextPath();
	String pattern = "###,###";
	DecimalFormat df = new DecimalFormat(pattern);
%>

<script type="application/x-javascript">
<<<<<<< HEAD
 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
=======
	
	
	
	
	
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 











>>>>>>> bb21f3c59894cd10c712c234beee9385de9964db
</script>
<!-- Custom Theme files -->
<link href="resources/bootstrap/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="resources/bootstrap/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- js -->
<script src="resources/bootstrap/js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- animation-effect -->
<script src="resources/bootstrap/js/wow.min.js"></script>
<script>
	new WOW().init();
</script>
<link href="resources/bootstrap/css/animate.min.css" rel="stylesheet">
<!-- //animation-effect -->
<link href='https://fonts.googleapis.com/css?family=Alex+Brush'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Cabin:400,400italic,500,500italic,600,600italic,700,700italic'
	rel='stylesheet' type='text/css'>

<link href="resources/bootstrap/css/responsive.css" rel="stylesheet">
<script type="text/javascript">
	$(document).ready(function() {
		$("#html_test").click(function() {
			if ($(this).html() == "OFF") {
				$("#html_test").css("color", "blue");
				$("#html_test").html("ON");
				setTimeout("ip_On()", 500);
			} else {
				$("#html_test").css("color", "red");
				$("#html_test").html("OFF");
				setTimeout("ip_Off()", 500);
			}
		});
	});

	function ip_On() {
		alert("IP 보안이 설정되었습니다.");
	}

	function ip_Off() {
		alert("IP 보안설정이 해제되었습니다.");
	}

	/* $(document).ready(function () {

	 var modalWidth = $('#logon-modal').width();
	 $('#logon-modal').css("left", "50%");
	 $('#logon-modal').css("width", modalWidth);
	 $('#logon-modal').css("margin", (modalWidth/2)*-1);

	 }); */

	$("#logon-modal").modal('show').css({
		'margin-top' : function() { //vertical centering
			$('#logon-modal').css("width", modalWidth);
			return -($(this).height() / 2);
		},
		'margin-left' : function() { //Horizontal centering
			return -($(this).width() / 2);
		}
	});

	function login_check() {
		if ($("#html_test").html() == "OFF") {
			alert("IP 보안을 설정하세요.");
			return false;
		}
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
	<!-- header -->
	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<div class="mainlogo">
						<a class="navbar-brand" href="${pageContext.request.contextPath}">RecipeBuy</a>
					</div>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil"
					id="bs-example-navbar-collapse-1">
					<nav class="cl-effect-13" id="cl-effect-13">
						<ul class="nav navbar-nav">

							<!-- dropdown -->
							<li role="presentation" class="dropdown"><a
								class="dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">
									Recipe <span class="caret"></span>
							</a>
								<ul class="dropdown-menu">
									<li><a href="#">Best</a></li>
									<li><a href="recipeList.recipe?mcategory=밥류">Rice</a></li>
									<li><a href="recipeList.recipe?mcategory=국류">Soup</a></li>
									<li><a href="recipeList.recipe?mcategory=면류">Cotton</a></li>
									<li><a href="recipeList.recipe?mcategory=기타">Etc</a></li>
								</ul></li>

							<!-- dropdown -->
							<li role="presentation" class="dropdown"><a
								class="dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">
									ingredient <span class="caret"></span>
							</a>
								<ul class="dropdown-menu">
									<li><a href="list.fd">All</a></li>
									<li><a href="list.fd?whatColumn=fcategory&keyword=채소">Vegetables</a></li>
									<li><a href="list.fd?whatColumn=fcategory&keyword=육류">Meat</a></li>
									<li><a href="list.fd?whatColumn=fcategory&keyword=어류">Sea
											food</a></li>
									<li><a href="list.fd?whatColumn=fcategory&keyword=가공">Processed
											food</a></li>
									<li><a href="list.fd?whatColumn=fcategory&keyword=양념">Seasoning</a></li>
								</ul></li>

							<!-- dropdown -->
							<li role="presentation" class="dropdown"><a
								class="dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">
									Board <span class="caret"></span>
							</a>
								<ul class="dropdown-menu">
									<li><a href="list.nt">Notice</a></li>
									<li><a href="board.mainboard">Free</a></li>
									<li><a href="#">Question</a></li>
									<li><a href="#">Demand</a></li>
									<li><a href="#">Gallery</a></li>
								</ul></li>

							<!-- dropdown -->
							<li role="presentation" class="dropdown"><a
								class="dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">
									Company <span class="caret"></span>
							</a>
								<ul class="dropdown-menu">
									<li><a href="intro.cp">Introduction</a></li>
									<li><a href="service.cp">Service</a></li>
									<li><a href="gallery.cp">Gallery</a></li>
									<li><a href="contact.cp">Contact</a></li>
								</ul></li>

							<!-- <li><a href="contact.cp">Contact</a></li> -->
							<c:choose>
								<c:when test="${sessionScope.loginfo==null}">
									<li><a data-toggle="modal" href="#login-modal">Login</a></li>
								</c:when>
								<c:otherwise>
									<!-- dropdown -->
									<li><a data-toggle="modal" href="#logon-modal">${sessionScope.loginfo.id}
											님</a></li>
									<!-- <li><a href="fridge.fr">My fridge</a></li> -->
									<%-- <li role="presentation" class="dropdown"><a
										class="dropdown-toggle" data-toggle="dropdown" href="#"
										role="button" aria-haspopup="true" aria-expanded="false">
											${sessionScope.loginfo.id} 님 <span class="caret"></span>
									</a>
										<ul class="dropdown-menu">
											<c:if test="${sessionScope.loginfo.admin == 0 }">
												<li><a href="list.me">Administration</a></li>
											</c:if>
											<li><a href="mypage.me">My page</a></li>
											<li><a href="meminfo.me?num=${sessionScope.loginfo.num}">My page</a></li>
										</ul></li> --%>
									<li><a href="logout.me">Logout</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
					</nav>
					<div class="social-icons">
						<ul>
							<li><a class="icon-link round twitter"
								href="https://www.facebook.com/"></a></li>
							<li><a class="icon-link round p"
								href="https://www.pinterest.co.kr"></a></li>
							<li><a class="icon-link round facebook"
								href="https://twitter.com/?lang=ko"></a></li>
							<li><a class="icon-link round dribble"
								href="https://dribbble.com/"></a></li>
						</ul>
					</div>
				</div>
				<!-- /.navbar-collapse -->
			</nav>
		</div>
	</div>

	<!-- header -->
	<div class="modal fade" id="login-modal" role="dialog" height="400px">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" align="center">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<br>
					<div class="modal-logo">
						<img src="resources/bootstrap/images/logo.png" width="70px">
					</div>
					<div class="modal-title">
						<p>Please Sign In</p>
					</div>
					<br>
					<div class="modal_security" align=right>
						<p>
							IP보안 <span id="html_test">OFF</span>
						</p>
					</div>
				</div>
				<div class="modal-body">
					<form class="form-signin" action="login.me" method="post">
						<div class="form-group">
							<input type="text" class="form-control" name="id"
								placeholder="아이디" /><br> <input type="password"
								class="form-control" name="password" placeholder="비밀번호">
							<br>
						</div>
						<div class="form-group">
							<div class="checkbox">
								<label> <input type="checkbox" value="remember-me">Remember
									me
								</label>
							</div>
						</div>
						<div class="modal-footer">

							<div>
								<a class="btn btn-link"
									onclick="javascript:location.href='findid.me'">Forgot Your
									ID?</a> <a class="btn btn-link"
									onclick="javascript:location.href='findpw.me'"> Forgot Your
									Password? </a>
							</div>
							<br>
							<div>
								<button type="submit" class="btn btn-danger btn-lg btn-block"
									onClick="return login_check()">Login</button>
							</div>
							<br>
							<div class="form-group" align="center">
								Don't have an account? <a class="btn btn-link"
									onclick="javascript:location.href='signupAssent.me'">Sign
									up</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>






	<div class="modal fade" id="logon-modal" role="dialog">
		<div class="modal-dialog modal-sm" align="center">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" align="center">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<div class="container">
						<div class="row profile">
							<div class="col-md-3">
								<div class="profile-sidebar">
									<!-- SIDEBAR USERPIC -->
									<div class="profile-userpic">
										<img src="resources/bootstrap/images/co.png" alt="avatar"
											align="center" width="50" class="img-responsive" alt="" />
									</div>
									<!-- END SIDEBAR USERPIC -->
									<!-- SIDEBAR USER TITLE -->
									<div class="profile-usertitle">
										<div class="profile-usertitle-name">
											<a href="mypage.me"><strong>${sessionScope.loginfo.id}
													님</a>
										</div>
										<div class="profile-usertitle-job">${sessionScope.loginfo.nickname}</div>
									</div>
									<!-- END SIDEBAR USER TITLE -->
									<!-- SIDEBAR BUTTONS -->

									<!-- END SIDEBAR BUTTONS -->
									<!-- SIDEBAR MENU -->
									<div class="profile-usermenu">
										<ul class="nav">
											<c:if test="${sessionScope.loginfo.admin == 0 }">
												<li><a href="list.me"><i
														class="glyphicon glyphicon-home"></i>Administration</a></li>
											</c:if>
											<li><a href="mypage.me"> <i
													class="glyphicon glyphicon-user"></i> My page
											</a></li>
											<li><a href="#" target="_blank"> <i
													class="glyphicon glyphicon-ok"></i> Tasks
											</a></li>
											<li><a href="#"> <i class="glyphicon glyphicon-flag"></i>
													Help
											</a></li>
										</ul>
									</div>

									<!-- END MENU -->
									<div class="profile-userbuttons">
										<a href="update_info.me?num=${sessionScope.loginfo.num}"><button
												type="button" class="btn btn-warning btn-sm">수정</button></a>
										<button type="button" class="btn btn-danger"
											data-dismiss="modal">닫기</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<%-- <center>
						<strong>Design by <a href="http://j.mp/metronictheme"
							target="_blank">Recipe Buy</a></strong>
					</center> --%>
				</div>
			</div>
		</div>
	</div>



</body>
</html>
