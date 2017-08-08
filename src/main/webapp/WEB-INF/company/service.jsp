<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../template/top.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="resources/bootstrap/css_company/style.css" rel="stylesheet"
	type="text/css">
<link href="resources/bootstrap/css_company/linecons.css"
	rel="stylesheet" type="text/css">
<link href="resources/bootstrap/css_company/font-awesome.css"
	rel="stylesheet" type="text/css">
<link href="resources/bootstrap/css_company/responsive.css"
	rel="stylesheet" type="text/css">
<link href="resources/bootstrap/css_company/animate.css"
	rel="stylesheet" type="text/css">

<link href="resources/bootstrap/css_company/animate.min.css"
	rel="stylesheet">

<link
	href='https://fonts.googleapis.com/css?family=Lato:400,900,700,700italic,400italic,300italic,300,100italic,100,900italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Dosis:400,500,700,800,600,300,200'
	rel='stylesheet' type='text/css'>

<script type="text/javascript"
	src="resources/bootstrap/js_company/jquery.1.8.3.min.js"></script>
<!-- <script type="text/javascript" src="resources/bootstrap/js_company/bootstrap.js"></script> -->
<script type="text/javascript"
	src="resources/bootstrap/js_company/jquery-scrolltofixed.js"></script>
<script type="text/javascript"
	src="resources/bootstrap/js_company/jquery.easing.1.3.js"></script>
<script type="text/javascript"
	src="resources/bootstrap/js_company/jquery.isotope.js"></script>
<script type="text/javascript"
	src="resources/bootstrap/js_company/wow.js"></script>
<script type="text/javascript"
	src="resources/bootstrap/js_company/classie.js"></script>

<script type="text/javascript">
	$(document).ready(function(e) {
		$('.res-nav_click').click(function() {
			$('ul.toggle').slideToggle(600)
		});

		$(document).ready(function() {
			$(window).bind('scroll', function() {
				if ($(window).scrollTop() > 0) {
					$('#header_outer').addClass('fixed');
				} else {
					$('#header_outer').removeClass('fixed');
				}
			});

		});

	});
	function resizeText() {
		var preferredWidth = 767;
		var displayWidth = window.innerWidth;
		var percentage = displayWidth / preferredWidth;
		var fontsizetitle = 25;
		var newFontSizeTitle = Math.floor(fontsizetitle * percentage);
		$(".divclass").css("font-size", newFontSizeTitle)
	}
</script>
</head>
<body>

	<section id="work_outer"><!--main-section-start-->
	<div class="top_cont_latest">
		<div class="container">
			<h2>Latest Work</h2>
			<div class="work_section">
				<div class="row">
					<div class="col-lg-6 col-sm-6 wow fadeInLeft delay-05s">
						<div class="service-list">
							<div class="service-list-col1">
								<i class="icon-doc"></i>
							</div>
							<div class="service-list-col2">
								<h3>Process Walkthrough</h3>
								<p>Proin iaculis purus digni consequat sem digni ssim. Donec
									entum digni ssim.</p>
							</div>
						</div>
						<div class="service-list">
							<div class="service-list-col1">
								<i class="icon-comment"></i>
							</div>
							<div class="service-list-col2">
								<h3>24/7 support</h3>
								<p>Proin iaculis purus consequat sem digni ssim. Digni ssim
									porttitora .</p>
							</div>
						</div>
						<div class="service-list">
							<div class="service-list-col1">
								<i class="icon-database"></i>
							</div>
							<div class="service-list-col2">
								<h3>Hosting & Storage</h3>
								<p>Proin iaculis purus consequat digni sem digni ssim. Purus
									donec porttitora entum.</p>
							</div>
						</div>
						<div class="service-list">
							<div class="service-list-col1">
								<i class="icon-cog"></i>
							</div>
							<div class="service-list-col2">
								<h3>Customization options</h3>
								<p>Proin iaculis purus consequat sem digni ssim. Sem
									porttitora entum.</p>
							</div>
						</div>
						<div class="work_bottom">
							<span>Ready to take the plunge?</span> <a href="#contact"
								class="contact_btn">Contact Us</a>
						</div>
					</div>
					<figure
						class="col-lg-6 col-sm-6  text-right wow fadeInUp delay-02s">
					</figure>
				</div>
			</div>
		</div>
		<!--<div class="work_pic"><img src="img/dashboard_pic.png" alt=""></div>-->
	</div>
	<br>
	</section>


	<div class="c-logo-part">
		<!--c-logo-part-start-->
		<div class="container">
			<ul class="delay-06s animated bounce wow">
				<li><a href="javascript:void(0)"><img
						src="resources/bootstrap/images_company/c-liogo1.png" alt=""></a></li>
				<li><a href="javascript:void(0)"><img
						src="resources/bootstrap/images_company/c-liogo2.png" alt=""></a></li>
				<li><a href="javascript:void(0)"><img
						src="resources/bootstrap/images_company/c-liogo3.png" alt=""></a></li>
				<li><a href="javascript:void(0)"><img
						src="resources/bootstrap/images_company/c-liogo5.png" alt=""></a></li>
			</ul>
		</div>
	</div>


	<!--Service-->
	<section id="service">
	<div class="container">
		<h2>Services</h2>
		<div class="service_area">
			<div class="row">
				<div class="col-lg-4">
					<div class="service_block">
						<div class="service_icon delay-03s animated wow  zoomIn">
							<span><i class="fa-flash"></i></span>
						</div>
						<h3 class="animated fadeInUp wow">신속한 배송</h3>
						<p class="animated fadeInDown wow">Proin iaculis purus
							consequat sem cure digni. Donec porttitora entum suscipit aenean
							rhoncus posuere odio in tincidunt.</p>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="service_block">
						<div class="service_icon icon2  delay-03s animated wow zoomIn">
							<span><i class="fa-comments"></i></span>
						</div>
						<h3 class="animated fadeInUp wow">친절한 서비스</h3>
						<p class="animated fadeInDown wow">Proin iaculis purus
							consequat sem cure digni. Donec porttitora entum suscipit aenean
							rhoncus posuere odio in tincidunt.</p>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="service_block">
						<div class="service_icon icon3  delay-03s animated wow zoomIn">
							<span><i class="fa-shield"></i></span>
						</div>
						<h3 class="animated fadeInUp wow">신선한 상품</h3>
						<p class="animated fadeInDown wow">Proin iaculis purus
							consequat sem cure digni. Donec porttitora entum suscipit aenean
							rhoncus posuere odio in tincidunt.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!--Service-->

	<div class="procedure" align="center">
		<table>
			<h2 class="procedure-title">Dinner, the Recipe buy</h2>
			<br>
			<br>
			<tr>
				<td><img src="resources/bootstrap/images/service1.png"></td>

				<td rowspan="2"><img
					src="resources/bootstrap/images/service_logic.png"></td>

				<td rowspan="2"><img
					src="resources/bootstrap/images/service2.png"></td>
			</tr>

			<tr>
				<td><img src="resources/bootstrap/images/service3.png"></td>
			</tr>
		</table>
		<br> <br> <br> <br>
		<div class="service_block">
			<h3 class="animated fadeInUp wow">1. 음식을 보다 지속 가능하게 하고 조리법을 더
				맛있게 만들 수 있도록 합니다.</h3>
			<p class="animated fadeInDown wow">To make food more sustainable
				and recipes more delicious</p>
			<h3 class="animated fadeInUp wow">2. 중간 과정을 생략함으로써 신선한 재료를
				제공합니다.</h3>
			<p class="animated fadeInDown wow">By cutting out the middle man
				and delivering ingredients at their freshest</p>
			<h3 class="animated fadeInUp wow">3. 분할 된 재료와 단계별 조리법을 제공합니다.</h3>
			<p class="animated fadeInDown wow">With perfectly portioned
				ingredients and step-by-step recipes</p>
		</div>
		<br> <br> <br> <br> <br> <br> <br>
	</div>

	<!--main-section team-end-->
	<section class="twitter-feed"><!--twitter-feed-->
	<div class="container  animated fadeInDown delay-07s wow">
		<div class="twitter_bird">
			<span><i class="fa-twitter"></i></span>
		</div>
		<p>
			When you're the underdog, your only option is to make #waves if you
			want to succeed. How much <br> and how often should you be
			drinking coffee?
		</p>
		<span>About 28 mins ago</span>
	</div>
	</section>

</body>
</html>
<%@include file="../template/bottom.jsp"%>