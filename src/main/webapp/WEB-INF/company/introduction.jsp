<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../template/top.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="icon" href="favicon.png" type="image/png">
<!-- <link href="resources/bootstrap/css_company/bootstrap.css" rel="stylesheet" type="text/css"> -->
<link href="resources/bootstrap/css_company/style.css" rel="stylesheet" type="text/css">
<link href="resources/bootstrap/css_company/linecons.css" rel="stylesheet" type="text/css">
<link href="resources/bootstrap/css_company/font-awesome.css" rel="stylesheet" type="text/css">
<link href="resources/bootstrap/css_company/responsive.css" rel="stylesheet" type="text/css">
<link href="resources/bootstrap/css_company/animate.css" rel="stylesheet" type="text/css">

<link href="resources/bootstrap/css_company/animate.min.css" rel="stylesheet">

<link href='https://fonts.googleapis.com/css?family=Lato:400,900,700,700italic,400italic,300italic,300,100italic,100,900italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Dosis:400,500,700,800,600,300,200' rel='stylesheet' type='text/css'>

<script type="text/javascript" src="resources/bootstrap/js_company/jquery.1.8.3.min.js"></script>
<!-- <script type="text/javascript" src="resources/bootstrap/js_company/bootstrap.js"></script> -->
<script type="text/javascript" src="resources/bootstrap/js_company/jquery-scrolltofixed.js"></script>
<script type="text/javascript" src="resources/bootstrap/js_company/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="resources/bootstrap/js_company/jquery.isotope.js"></script>
<script type="text/javascript" src="resources/bootstrap/js_company/wow.js"></script>
<script type="text/javascript" src="resources/bootstrap/js_company/classie.js"></script>

<script type="text/javascript">
	$(document).ready(function(e) {
        $('.res-nav_click').click(function(){
		$('ul.toggle').slideToggle(600)	
			});	
			
	$(document).ready(function() {
$(window).bind('scroll', function() {
         if ($(window).scrollTop() > 0) {
             $('#header_outer').addClass('fixed');
         }
         else {
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


<style>
</style>

</head>

<body>
<!--Top_content-->
<section id="top_content" class="top_cont_outer">
  <div class="top_cont_inner">
    <div class="container">
      <div class="top_content">
        <div class="row">
          <div class="col-lg-5 col-sm-7">
            <div class="top_left_cont flipInY wow animated">
              <h3>so fresh &amp; simple!</h3>
              <h2>when you cook with recipe buy,<br>
                you're building a better food system </h2>
              <p> Accusantium quam, aliquam ultricies eget tempor id, aliquam eget nibh et. Maecen aliquam, risus at semper. Proin iaculis purus consequat sem cure digni ssim. Donec porttitora entum. </p>
              <a href="#service" class="learn_more2">Learn more</a> </div>
          </div>
          <div class="col-lg-7 col-sm-5"> </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!--Top_content--> 

<!--main-section-end--> 

<!--new_portfolio--> 


<!--
<section class="main-section paddind" id="Portfolio">
	<div class="container">
    	<h2>Portfolio</h2>
    	<h6>Fresh portfolio of designs that will keep you wanting more.</h6>
	</div>
    
    
</section>   

-->

<!-- <section class="main-section" id="client_outer">main-section client-part-start
  <h2>Happy Clients</h2>
  <div class="client_area ">
    <div class="client_section animated  fadeInUp wow">
      <div class="client_profile">
        <div class="client_profile_pic"><img src="resources/bootstrap/images_company/client-pic1.jpg" alt=""></div>
        <h3>Saul Goodman</h3>
        <span>Lawless Inc</span> </div>
      <div class="quote_section">
        <div class="quote_arrow"></div>
        <p><b><img src="resources/bootstrap/images_company/quote_sign_left.png" alt=""></b> Proin iaculis purus consequat sem cure  digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper. <small><img src="resources/bootstrap/images_company/quote_sign_right.png" alt=""></small> </p>
      </div>
      <div class="clear"></div>
    </div>
    <div class="client_section animated  fadeInDown wow">
      <div class="client_profile flt">
        <div class="client_profile_pic"><img src="resources/bootstrap/images_company/client-pic2.jpg" alt=""></div>
        <h3>Marie Schrader</h3>
        <span>DEA Foundation</span> </div>
      <div class="quote_section flt">
        <div class="quote_arrow2"></div>
        <p><b><img src="resources/bootstrap/images_company/quote_sign_left.png" alt=""></b> Proin iaculis purus consequat sem cure  digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper. <small><img src="resources/bootstrap/images_company/quote_sign_right.png" alt=""></small> </p>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</section>

<!--main-section client-part-end-->
<div class="c-logo-part"><!--c-logo-part-start-->
  <div class="container">
    <ul class="delay-06s animated bounce wow">
      <li><a href="javascript:void(0)"><img src="resources/bootstrap/images_company/c-liogo1.png" alt=""></a></li>
      <li><a href="javascript:void(0)"><img src="resources/bootstrap/images_company/c-liogo2.png" alt=""></a></li>
      <li><a href="javascript:void(0)"><img src="resources/bootstrap/images_company/c-liogo3.png" alt=""></a></li>
      <li><a href="javascript:void(0)"><img src="resources/bootstrap/images_company/c-liogo5.png" alt=""></a></li>
    </ul>
  </div>
</div>

<br><br><br><br>
<div class="container">
 <div class="top_left_cont flipInY wow animated">
              <h3>so fresh &amp; simple!</h3>
              <h2>On the Menu this season</h2>
              <p> chicken with greens, soft boiled eggs & dessert including bread with fruit</p>
              <a href="#service" class="learn_more2">Learn more</a> </div>
<table class="table">
<tr>
<td>
<script>
	var i = 0; // Start point
	var images = [];
	var time = 1000;

	// Image List
	images[0] = 'resources/bootstrap/images_company/image1.jpg';
	images[1] = 'resources/bootstrap/images_company/image2.jpg';
	images[2] = 'resources/bootstrap/images_company/image3.jpg';
	images[3] = 'resources/bootstrap/images_company/image4.jpg';

	// Change Image
	function changeImg(){
		document.slide.src = images[i];

		if(i < images.length - 1){
			i++;
		} else {
			i = 0;
		}

		setTimeout("changeImg()", time);
	}

	window.onload = changeImg;

</script>
<img name="slide" width="1200" height="600">
</td>
<td>
<img src="resources/bootstrap/images_company/1.webp">
<img src="resources/bootstrap/images_company/2.webp">
<img src="resources/bootstrap/images_company/3.webp">
<img src="resources/bootstrap/images_company/4.webp">
<img src="resources/bootstrap/images_company/5.webp">
<img src="resources/bootstrap/images_company/6.webp">
</td>
</tr>
</table>
</div>


<!--c-logo-part-end-->
<section class="main-section team" id="team"><!--main-section team-start-->
  <div class="container">
    <h2>Amazing Team</h2>
    <h6>Take a closer look into our amazing team. We won’t bite.</h6>
    <div class="team-leader-block clearfix">
      <div class="team-leader-box">
        <div class="team-leader wow fadeInDown delay-03s">
          <div class="team-leader-shadow"><a href="javascript:void(0)"></a></div>
          <img src="resources/bootstrap/images_company/team-leader-pic1.jpg" alt="">
          <ul>
            <li><a href="javascript:void(0)" class="fa-twitter"></a></li>
            <li><a href="javascript:void(0)" class="fa-facebook"></a></li>
            <li><a href="javascript:void(0)" class="fa-pinterest"></a></li>
            <li><a href="javascript:void(0)" class="fa-google-plus"></a></li>
          </ul>
        </div>
        <h3 class="wow fadeInDown delay-03s">이 정 호</h3>
        <span class="wow fadeInDown delay-03s">Chief Executive Officer</span>
        <p class="wow fadeInDown delay-03s">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin consequat sollicitudin cursus. Dolor sit amet, consectetur adipiscing elit proin consequat.</p>
      </div>
      <div class="team-leader-box">
        <div class="team-leader  wow fadeInDown delay-06s">
          <div class="team-leader-shadow"><a href="javascript:void(0)"></a></div>
          <img src="resources/bootstrap/images_company/team-leader-pic2.jpg" alt="">
          <ul>
            <li><a href="javascript:void(0)" class="fa-twitter"></a></li>
            <li><a href="javascript:void(0)" class="fa-facebook"></a></li>
            <li><a href="javascript:void(0)" class="fa-pinterest"></a></li>
            <li><a href="javascript:void(0)" class="fa-google-plus"></a></li>
          </ul>
        </div>
        <h3 class="wow fadeInDown delay-06s">전 민 석</h3>
        <span class="wow fadeInDown delay-06s">Product Manager</span>
        <p class="wow fadeInDown delay-06s">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin consequat sollicitudin cursus. Dolor sit amet, consectetur adipiscing elit proin consequat.</p>
      </div>
      <div class="team-leader-box">
        <div class="team-leader wow fadeInDown delay-09s">
          <div class="team-leader-shadow"><a href="javascript:void(0)"></a></div>
          <img src="resources/bootstrap/images_company/case.jpg" alt="">
          <ul>
            <li><a href="javascript:void(0)" class="fa-twitter"></a></li>
            <li><a href="javascript:void(0)" class="fa-facebook"></a></li>
            <li><a href="javascript:void(0)" class="fa-pinterest"></a></li>
            <li><a href="javascript:void(0)" class="fa-google-plus"></a></li>
          </ul>
        </div>
        <h3 class="wow fadeInDown delay-09s">박 경 우</h3>
        <span class="wow fadeInDown delay-09s">Creator</span>
        <p class="wow fadeInDown delay-09s">아이디어 및 전반적인 디자인과 UI 구성, 마이페이지 외 로그인 관련과 회원정보 찾기 및 수정과 회사 영역 디자인 및 개발</p>
      </div>
      <div class="team-leader-block clearfix">
      <div class="team-leader-box">
        <div class="team-leader wow fadeInDown delay-03s">
          <div class="team-leader-shadow"><a href="javascript:void(0)"></a></div>
          <img src="resources/bootstrap/images_company/team-leader-pic1.jpg" alt="">
          <ul>
            <li><a href="javascript:void(0)" class="fa-twitter"></a></li>
            <li><a href="javascript:void(0)" class="fa-facebook"></a></li>
            <li><a href="javascript:void(0)" class="fa-pinterest"></a></li>
            <li><a href="javascript:void(0)" class="fa-google-plus"></a></li>
          </ul>
        </div>
        <h3 class="wow fadeInDown delay-03s">김 남 혁</h3>
        <span class="wow fadeInDown delay-03s">Chief Executive Officer</span>
        <p class="wow fadeInDown delay-03s">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin consequat sollicitudin cursus. Dolor sit amet, consectetur adipiscing elit proin consequat.</p>
      </div>
      <div class="team-leader-box">
        <div class="team-leader  wow fadeInDown delay-06s">
          <div class="team-leader-shadow"><a href="javascript:void(0)"></a></div>
          <img src="resources/bootstrap/images_company/team-leader-pic2.jpg" alt="">
          <ul>
            <li><a href="javascript:void(0)" class="fa-twitter"></a></li>
            <li><a href="javascript:void(0)" class="fa-facebook"></a></li>
            <li><a href="javascript:void(0)" class="fa-pinterest"></a></li>
            <li><a href="javascript:void(0)" class="fa-google-plus"></a></li>
          </ul>
        </div>
        <h3 class="wow fadeInDown delay-06s">현 승 훈</h3>
        <span class="wow fadeInDown delay-06s">Product Manager</span>
        <p class="wow fadeInDown delay-06s">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin consequat sollicitudin cursus. Dolor sit amet, consectetur adipiscing elit proin consequat.</p>
      </div>
      <div class="team-leader-box">
        <div class="team-leader wow fadeInDown delay-09s">
          <div class="team-leader-shadow"><a href="javascript:void(0)"></a></div>
          <img src="resources/bootstrap/images_company/team-leader-pic3.jpg" alt="">
          <ul>
            <li><a href="javascript:void(0)" class="fa-twitter"></a></li>
            <li><a href="javascript:void(0)" class="fa-facebook"></a></li>
            <li><a href="javascript:void(0)" class="fa-pinterest"></a></li>
            <li><a href="javascript:void(0)" class="fa-google-plus"></a></li>
          </ul>
        </div>
        <h3 class="wow fadeInDown delay-09s">이 다 솔</h3>
        <span class="wow fadeInDown delay-09s">Accountant</span>
        <p class="wow fadeInDown delay-09s">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin consequat sollicitudin cursus. Dolor sit amet, consectetur adipiscing elit proin consequat.</p>
      </div>
    </div> 
    </div> 
  </div>
</section>



<!--main-section team-end-->
<section class="twitter-feed"><!--twitter-feed-->
  <div class="container  animated fadeInDown delay-07s wow">
    <div class="twitter_bird"><span><i class="fa-twitter"></i></span></div>
    <p> When you're the underdog, your only option is to make #waves if you want to succeed. How much <br>
      and how often should you be drinking coffee?</p>
    <span>About 28 mins ago</span> </div>
</section>

<script type="text/javascript">
    $(document).ready(function(e) {
        $('#header_outer').scrollToFixed();
        $('.res-nav_click').click(function(){
            $('.main-nav').slideToggle();
            return false    
            
        });
        
    });
</script> 
<script>
    wow = new WOW(
      {
        animateClass: 'animated',
        offset:       100
      }
    );
    wow.init();
    document.getElementById('').onclick = function() {
      var section = document.createElement('section');
      section.className = 'wow fadeInDown';
	  section.className = 'wow shake';
	  section.className = 'wow zoomIn';
	  section.className = 'wow lightSpeedIn';
      this.parentNode.insertBefore(section, this);
    };
  </script> 
<script type="text/javascript">
	$(window).load(function(){
		
		$('a').bind('click',function(event){
			var $anchor = $(this);
			
			$('html, body').stop().animate({
				scrollTop: $($anchor.attr('href')).offset().top - 91
			}, 1500,'easeInOutExpo');
			/*
			if you don't want to use the easing effects:
			$('html, body').stop().animate({
				scrollTop: $($anchor.attr('href')).offset().top
			}, 1000);
			*/
			event.preventDefault();
		});
	})
</script> 

<script type="text/javascript">

   
  jQuery(document).ready(function($){     
// Portfolio Isotope
	var container = $('#portfolio-wrap');	
	

	container.isotope({
		animationEngine : 'best-available',
	  	animationOptions: {
	     	duration: 200,
	     	queue: false
	   	},
		layoutMode: 'fitRows'
	});	

	$('#filters a').click(function(){
		$('#filters a').removeClass('active');
		$(this).addClass('active');
		var selector = $(this).attr('data-filter');
	  	container.isotope({ filter: selector });
        setProjects();		
	  	return false;
	});
		
		
		function splitColumns() { 
			var winWidth = $(window).width(), 
				columnNumb = 1;
			
			
			if (winWidth > 1024) {
				columnNumb = 4;
			} else if (winWidth > 900) {
				columnNumb = 2;
			} else if (winWidth > 479) {
				columnNumb = 2;
			} else if (winWidth < 479) {
				columnNumb = 1;
			}
			
			return columnNumb;
		}		
		
		function setColumns() { 
			var winWidth = $(window).width(), 
				columnNumb = splitColumns(), 
				postWidth = Math.floor(winWidth / columnNumb);
			
			container.find('.portfolio-item').each(function () { 
				$(this).css( { 
					width : postWidth + 'px' 
				});
			});
		}		
		
		function setProjects() { 
			setColumns();
			container.isotope('reLayout');
		}		
		
		container.imagesLoaded(function () { 
			setColumns();
		});
		
	
		$(window).bind('resize', function () { 
			setProjects();			
		});

});
$( window ).load(function() {
	jQuery('#all').click();
	return false;
});
</script>
<script src="contactform/contactform.js"></script>
</body>
</html>
<%@include file="../template/bottom.jsp"%>