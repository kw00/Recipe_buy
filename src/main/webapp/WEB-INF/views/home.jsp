<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="./../template/top.jsp"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Cooks a Hotels and Restaurants Category Flat Bootstrap
	Responsive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Cooks Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- Custom Theme files -->



<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Custom Theme files -->
<link href="resources/bootstrap/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />

<link href="resources/bootstrap/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
	
<!-- js -->
<script src="resources/bootstrap/js/jquery-1.11.1.min.js"></script>

<!-- animation-effect -->
<link href="resources/bootstrap/css/animate.min.css" rel="stylesheet">
<script src="resources/bootstrap/js/wow.min.js"></script>
<script>
	new WOW().init();
</script>

<!-- font -->
<link href='//fonts.googleapis.com/css?family=Alex+Brush'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Cabin:400,400italic,500,500italic,600,600italic,700,700italic'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css" type="text/css"
	media="screen" title="no title" />


<style>
.col-item {
	border: 1px solid #E1E1E1;
	border-radius: 5px;
	background: #FFF;
}

.col-item .photo img {
	margin: 0 auto;
	width: 100%;
}

.col-item .info {
	padding: 10px;
	border-radius: 0 0 5px 5px;
	margin-top: 1px;
}

.col-item:hover .info {
	background-color: #F5F5DC;
}

.col-item .price {
	/*width: 50%;*/
	float: left;
	margin-top: 5px;
}

.col-item .price h5 {
	line-height: 20px;
	margin: 0;
}

.price-text-color {
	color: #219FD1;
}

.col-item .info .rating {
	color: #777;
}

.col-item .rating {
	/*width: 50%;*/
	float: left;
	font-size: 17px;
	text-align: right;
	line-height: 52px;
	margin-bottom: 10px;
	height: 52px;
}

.col-item .separator {
	border-top: 1px solid #E1E1E1;
}

.clear-left {
	clear: left;
}

.col-item .separator p {
	line-height: 20px;
	margin-bottom: 0;
	margin-top: 10px;
	text-align: center;
}

.col-item .separator p i {
	margin-right: 5px;
}

.col-item .btn-add {
	width: 50%;
	float: left;
}

.col-item .btn-add {
	border-right: 1px solid #E1E1E1;
}

.col-item .btn-details {
	width: 50%;
	float: left;
	padding-left: 10px;
}

.controls {
	margin-top: 20px;
}

[data-slide="prev"] {
	margin-right: 10px;
}

.procedure-title {
	font-size: 60px;
}

.col-md-9 {
	font-size: 20px;
}
</style>
</head>

<body>

	<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="newsletter-info">
				<h3 class="wow fadeInUp" data-wow-duration="1000ms"
					data-wow-delay="300ms">Search for the desired recipe</h3>
				<p class="wow fadeInUp" data-wow-duration="1000ms"
					data-wow-delay="300ms">But who has any right to find fault with
					a man who chooses to enjoy a pleasure that has no annoying
					consequences</p>
				<form class="wow fadeInLeftBig" data-wow-duration="1000ms"
					data-wow-delay="300ms" action="list.me">
					<input type="mail" value="Search for the desired recipe"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Enter Your Recipe';}"
						required=""> 
					<input type="submit" value="Search">
				</form>
			</div>
		</div>
	</div>
	<!-- //newsletter -->
	<!-- banner -->
	<div class="banner">
		<div class="container">
			<div class="banner-info">
				<h1 class="animated fadeInLeftBig" data-wow-duration="1000ms"
					data-wow-delay="300ms">
					Create your own recipes and share them <br> with people <span>Excepteur
						sint occaecat cupidatat non proident</span>
				</h1>
				<div class="banner-info1 animated wow fadeInDown"
					data-wow-duration="1000ms" data-wow-delay="300ms">
					<ul id="flexiselDemo1">
						<li>
							<div class="banner-info1-grid">
								<img src="resources/bootstrap/images/1.png" alt=" "
									class="img-responsive" />
								<h3>denouncing pleasure</h3>
								<p>Duis aute irure dolor in reprehenderit in voluptate velit
									esse cillum dolore eu fugiat nulla pariatur.</p>
							</div>
						</li>
						<li>
							<div class="banner-info1-grid">
								<img src="resources/bootstrap/images/2.png" alt=" "
									class="img-responsive" />
								<h3>denouncing pleasure</h3>
								<p>Duis aute irure dolor in reprehenderit in voluptate velit
									esse cillum dolore eu fugiat nulla pariatur.</p>
							</div>
						</li>
						<li>
							<div class="banner-info1-grid">
								<img src="resources/bootstrap/images/3.png" alt=" "
									class="img-responsive" />
								<h3>denouncing pleasure</h3>
								<p>Duis aute irure dolor in reprehenderit in voluptate velit
									esse cillum dolore eu fugiat nulla pariatur.</p>
							</div>
						</li>
					</ul>
					<script type="text/javascript">
						$(window).load(function() {
							$("#flexiselDemo1").flexisel({
								visibleItems : 3,
								animationSpeed : 1000,
								autoPlay : true,
								autoPlaySpeed : 3000,
								pauseOnHover : true,
								enableResponsiveBreakpoints : true,
								responsiveBreakpoints : {
									portrait : {
										changePoint : 480,
										visibleItems : 1
									},
									landscape : {
										changePoint : 640,
										visibleItems : 2
									},
									tablet : {
										changePoint : 768,
										visibleItems : 2
									}
								}
							});

						});
					</script>
					<script type="text/javascript"
						src="resources/bootstrap/js/jquery.flexisel.js"></script>
					<div class="more wow fadeInUp" data-wow-duration="1000ms"
						data-wow-delay="300ms">
						<a href="single.html" class="hvr-curl-bottom-right">Get
							Cooking</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //banner -->
	<br><br>

	<!-- products -->
	<div class="products">
		<div class="container">
			<div class="row">
				<div class="row">
					<div class="col-md-9">
						<p>BEST SELLERS</p>
					</div>
					<div class="col-md-3">
						<!-- Controls -->
						<div class="controls pull-right hidden-xs" align="right">
							<a class="left fa fa-chevron-left btn btn-default"
								href="#carousel-example" data-slide="prev"></a> <a
								class="right fa fa-chevron-right btn btn-default"
								href="#carousel-example" data-slide="next"></a>
						</div>
					</div>
				</div>
				<div id="carousel-example" class="carousel slide hidden-xs"
					data-ride="carousel">
					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<div class="item active">
							<div class="row">
								<div class="col-sm-3">
									<div class="col-item">
										<div class="photo">
											<img src="http://placehold.it/350x260" class="img-responsive"
												alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>Sample Product</h5>
													<h5 class="price-text-color">$199.99</h5>
												</div>
												<div class="rating hidden-sm col-md-6">
													<i class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="fa fa-star"></i>
												</div>
											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="col-item">
										<div class="photo">
											<img src="http://placehold.it/350x260" class="img-responsive"
												alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>Product Example</h5>
													<h5 class="price-text-color">$249.99</h5>
												</div>
												<div class="rating hidden-sm col-md-6"></div>
											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="col-item">
										<div class="photo">
											<img src="http://placehold.it/350x260" class="img-responsive"
												alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>Next Sample Product</h5>
													<h5 class="price-text-color">$149.99</h5>
												</div>
												<div class="rating hidden-sm col-md-6">
													<i class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="fa fa-star"></i>
												</div>
											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="col-item">
										<div class="photo">
											<img src="http://placehold.it/350x260" class="img-responsive"
												alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>Sample Product</h5>
													<h5 class="price-text-color">$199.99</h5>
												</div>
												<div class="rating hidden-sm col-md-6">
													<i class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="fa fa-star"></i>
												</div>
											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="row">
								<div class="col-sm-3">
									<div class="col-item">
										<div class="photo">
											<img src="http://placehold.it/350x260" class="img-responsive"
												alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>Product with Variants</h5>
													<h5 class="price-text-color">$199.99</h5>
												</div>
												<div class="rating hidden-sm col-md-6">
													<i class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="fa fa-star"></i>
												</div>
											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="col-item">
										<div class="photo">
											<img src="http://placehold.it/350x260" class="img-responsive"
												alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>Grouped Product</h5>
													<h5 class="price-text-color">$249.99</h5>
												</div>
												<div class="rating hidden-sm col-md-6"></div>
											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="col-item">
										<div class="photo">
											<img src="http://placehold.it/350x260" class="img-responsive"
												alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>Product with Variants</h5>
													<h5 class="price-text-color">$149.99</h5>
												</div>
												<div class="rating hidden-sm col-md-6">
													<i class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="fa fa-star"></i>
												</div>
											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="col-item">
										<div class="photo">
											<img src="http://placehold.it/350x260" class="img-responsive"
												alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>Product with Variants</h5>
													<h5 class="price-text-color">$199.99</h5>
												</div>
												<div class="rating hidden-sm col-md-6">
													<i class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="fa fa-star"></i>
												</div>
											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="row">
					<div class="col-md-9">
						<p>NEW</p>
					</div>
					<div class="col-md-3">
						<!-- Controls -->
						<div class="controls pull-right hidden-xs" align="right">
							<a class="left fa fa-chevron-left btn btn-default"
								href="#carousel-example-generic" data-slide="prev"></a> <a
								class="right fa fa-chevron-right btn btn-default"
								href="#carousel-example-generic" data-slide="next"></a>
						</div>
					</div>
				</div>

				<div id="carousel-example-generic" class="carousel slide hidden-xs"
					data-ride="carousel">
					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<div class="item active">
							<div class="row">
								<div class="col-sm-3">
									<div class="col-item">
										<div class="photo">
											<img src="http://placehold.it/350x260" class="img-responsive"
												alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>Sample Product</h5>
													<h5 class="price-text-color">$199.99</h5>
												</div>
												<div class="rating hidden-sm col-md-6">
													<i class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="fa fa-star"></i>
												</div>
											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="col-item">
										<div class="photo">
											<img src="http://placehold.it/350x260" class="img-responsive"
												alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>Product Example</h5>
													<h5 class="price-text-color">$249.99</h5>
												</div>
												<div class="rating hidden-sm col-md-6"></div>
											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="col-item">
										<div class="photo">
											<img src="http://placehold.it/350x260" class="img-responsive"
												alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>Next Sample Product</h5>
													<h5 class="price-text-color">$149.99</h5>
												</div>
												<div class="rating hidden-sm col-md-6">
													<i class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="fa fa-star"></i>
												</div>
											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="col-item">
										<div class="photo">
											<img src="http://placehold.it/350x260" class="img-responsive"
												alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>Sample Product</h5>
													<h5 class="price-text-color">$199.99</h5>
												</div>
												<div class="rating hidden-sm col-md-6">
													<i class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="fa fa-star"></i>
												</div>
											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="row">
								<div class="col-sm-3">
									<div class="col-item">
										<div class="photo">
											<img src="http://placehold.it/350x260" class="img-responsive"
												alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>Product with Variants</h5>
													<h5 class="price-text-color">$199.99</h5>
												</div>
												<div class="rating hidden-sm col-md-6">
													<i class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="fa fa-star"></i>
												</div>
											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="col-item">
										<div class="photo">
											<img src="http://placehold.it/350x260" class="img-responsive"
												alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>Grouped Product</h5>
													<h5 class="price-text-color">$249.99</h5>
												</div>
												<div class="rating hidden-sm col-md-6"></div>
											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="col-item">
										<div class="photo">
											<img src="http://placehold.it/350x260" class="img-responsive"
												alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>Product with Variants</h5>
													<h5 class="price-text-color">$149.99</h5>
												</div>
												<div class="rating hidden-sm col-md-6">
													<i class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="fa fa-star"></i>
												</div>
											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="col-item">
										<div class="photo">
											<img src="http://placehold.it/350x260" class="img-responsive"
												alt="a" />
										</div>
										<div class="info">
											<div class="row">
												<div class="price col-md-6">
													<h5>Product with Variants</h5>
													<h5 class="price-text-color">$199.99</h5>
												</div>
												<div class="rating hidden-sm col-md-6">
													<i class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="price-text-color fa fa-star"></i><i
														class="price-text-color fa fa-star"> </i><i
														class="fa fa-star"></i>
												</div>
											</div>
											<div class="separator clear-left">
												<p class="btn-add">
													<i class="fa fa-shopping-cart"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">Add
														to cart</a>
												</p>
												<p class="btn-details">
													<i class="fa fa-list"></i><a
														href="http://www.jquery2dotnet.com" class="hidden-sm">More
														details</a>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- //products -->

					<!-- procedure -->
					<br> <br> <br>
					<div class="procedure">
						<table>
							<h2 class="procedure-title" align="center">Dinner, the
								Recipe buy</h2>
							<br>
							<br>
							<tr>
								<td><img src="resources/bootstrap/images/service1.png">
								</td>

								<td rowspan="2"><img
									src="resources/bootstrap/images/service_logic.png"></td>

								<td rowspan="2"><img
									src="resources/bootstrap/images/service2.png"></td>
							</tr>

							<tr>
								<td><img src="resources/bootstrap/images/service3.png">
								</td>
							</tr>
						</table>
					</div>
					<!-- //procedure -->
					<br> <br> <br>
					<!-- banner-bottom -->
					<div class="banner-bottom">
						<div class="container">
							<div class="banner-bottom-grids">
								<div class="col-md-5 banner-bottom-grid wow fadeInRightBig"
									data-wow-duration="1000ms" data-wow-delay="300ms">
									<h2>vel illum qui dolorem eum</h2>
									<p>"Sed ut perspiciatis unde omnis iste natus error sit
										voluptatem accusantium doloremque laudantium, totam rem
										aperiam, eaque ipsa quae ab illo inventore veritatis et quasi
										architecto beatae vitae dicta sunt explicabo.</p>
									<div class="more">
										<a href="single.html" class="hvr-curl-bottom-right">Get
											Cooking</a>
									</div>
								</div>
								<div class="col-md-7 banner-bottom-grid wow flipInY"
									data-wow-duration="1000ms" data-wow-delay="300ms">
									<div class="banner-bottom-grid1">
										<img src="resources/bootstrap/images/1.jpg" alt=" "
											class="img-responsive" />
										<div class="banner-bottom-grid-pos">
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"
													style="width: 30%;">
													<span class="sr-only">30% Complete</span>
												</div>
											</div>
											<div class="progress progress1">
												<div class="progress-bar" role="progressbar"
													aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
													style="width: 20%;">
													<span class="sr-only">20% Complete</span>
												</div>
											</div>
											<div class="progress progress2">
												<div class="progress-bar" role="progressbar"
													aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"
													style="width: 30%;">
													<span class="sr-only">30% Complete</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="banner-bottom-grids">
								<div class="col-md-6 banner-bottom-grid-1 wow flipInY"
									data-wow-duration="1000ms" data-wow-delay="300ms">
									<div class="banner-bottom-grid-11">
										<img src="resources/bootstrap/images/2.jpg" alt=" "
											class="img-responsive" width="400px" />
										<div class="banner-bottom-grid-11-pos">
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit, sed do eiusmod tempor incididunt ut labore et dolore
												magna aliqua.Quis autem vel eum iure reprehenderit qui in ea
												voluptate velit esse quam nihil molestiae consequatur.</p>
											<div class="more m1">
												<a href="single.html" class="hvr-curl-bottom-right">Read
													More</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 banner-bottom-grid-1 wow fadeInLeftBig"
									data-wow-duration="1500ms" data-wow-delay="100ms">
									<h1>
										We always ship <br> only fresh products
									</h1>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<!-- //banner-bottom -->


					<br> <br> <br> <br>
				</div>
			</div>
		</div>


		<!-- footer -->
		<div class="footer">
			<div class="container">
				<div class="footer-grids">
					<div class="col-md-3 footer-grid wow fadeInUp"
						data-wow-duration="1000ms" data-wow-delay="300ms">
						<h3>cumque nihil impedit</h3>
						<div class="footer-grd-left">
							<img src="resources/bootstrap/images/6.jpg"
								class="img-responsive" alt=" " />
						</div>
						<div class="footer-grd-left">
							<p>Nam libero tempore, cum soluta nobis est eligendi optio
								cumque nihil impedit quo minus id quod maxime placeat facere
								possimus, omnis voluptas assumenda est, omnis dolor repellendus</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-3 footer-grid wow fadeInUp"
						data-wow-duration="1000ms" data-wow-delay="300ms">
						<h3>voluptas assumenda</h3>
						<ul>
							<li><a href="#">doloribus asperiores</a></li>
							<li><a href="#">Itaque earum rerum</a></li>
							<li><a href="#">deserunt mollitia</a></li>
							<li><a href="#">facilis est et expedita</a></li>
							<li><a href="#">occaecati cupiditate</a></li>
							<li><a href="#">deserunt mollitia laborum</a></li>
						</ul>
					</div>
					<div class="col-md-3 footer-grid wow fadeInUp"
						data-wow-duration="1000ms" data-wow-delay="300ms">
						<h3>deserunt mollitia</h3>
						<ul>
							<li><a href="#">doloribus asperiores</a></li>
							<li><a href="#">Itaque earum rerum</a></li>
							<li><a href="#">deserunt mollitia</a></li>
							<li><a href="#">facilis est et expedita</a></li>
							<li><a href="#">occaecati cupiditate</a></li>
							<li><a href="#">deserunt mollitia laborum</a></li>
						</ul>
					</div>
					<div class="col-md-3 footer-grid wow fadeInUp"
						data-wow-duration="1000ms" data-wow-delay="300ms">
						<h3>Flickr Posts</h3>
						<div class="footer-grd">
							<a href="#"><img src="resources/bootstrap/images/7.jpg"
								class="img-responsive" alt=" " /></a>
						</div>
						<div class="footer-grd">
							<a href="#"><img src="resources/bootstrap/images/8.jpg"
								class="img-responsive" alt=" " /></a>
						</div>
						<div class="footer-grd">
							<a href="#"><img src="resources/bootstrap/images/7.jpg"
								class="img-responsive" alt=" " /></a>
						</div>
						<div class="clearfix"></div>
						<div class="footer-grd">
							<a href="#"><img src="resources/bootstrap/images/8.jpg"
								class="img-responsive" alt=" " /></a>
						</div>
						<div class="footer-grd">
							<a href="#"><img src="resources/bootstrap/images/7.jpg"
								class="img-responsive" alt=" " /></a>
						</div>
						<div class="footer-grd">
							<a href="#"><img src="resources/bootstrap/images/8.jpg"
								class="img-responsive" alt=" " /></a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>




			<!-- //footer -->
			<!-- for bootstrap working -->
			<script src="resources/bootstrap/js/bootstrap.js"></script>
			<!-- //for bootstrap working -->
</body>
</html>
<%@include file="../template/bottom.jsp"%>