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
</style>
<%
	String contextPath = request.getContextPath();
	String pattern = "###,###";
	DecimalFormat df = new DecimalFormat(pattern);
%>

<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

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
<style>
.mainlogo {
	font-size: 10px;
}
</style>
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
								</ul>
							</li>
							<c:choose>
								<c:when test="${sessionScope.loginfo==null}">
								<li><a href="find.me">Login</a></li>
								<li><a href="find.me">Findinfo</a></li>
								</c:when>
								<c:otherwise>
								<li><a href="#">${sessionScope.loginfo.id} 님</a></li>
								<c:if test="${sessionScope.loginfo.admin == 0}">
									<li><a href="list.me">관리자메뉴</a></li>
								</c:if>
								<li><a href="logout.me">Logout</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
					</nav>
					<div class="social-icons">
						<ul>
							<li><a class="icon-link round twitter"
								href="https://twitter.com/?lang=ko"></a></li>
							<li><a class="icon-link round p"
								href="https://www.pinterest.co.kr"></a></li>
							<li><a class="icon-link round facebook"
								href="https://www.facebook.com/"></a></li>
							<li><a class="icon-link round dribble" href="#"></a></li>
						</ul>
					</div>
				</div>
				<!-- /.navbar-collapse -->
			</nav>
			<!-- header -->
		</div>
	</div>

</body>
</html>
