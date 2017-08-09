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

<!--twitter-feed-end-->
<footer class="footer_section" id="contact">
  <div class="container">
    <section class="main-section contact" id="contact">
    <div class="contact-bottom wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="300ms">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.9434115888825!2d126.945195!3d37.556397!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c989a38890123%3A0x8a8d7c332f9d03aa!2z7KSR7JWZ7KCV67O07LKY66as7ZWZ7JuQL-ykkeyVmeygleuztOq4sOyIoOyduOyerOqwnOuwnOybkA!5e0!3m2!1sko!2skr!4v1501741674102" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
      <div class="contact_section">
        <h2>Contact Us</h2>
        <div class="row">
          <div class="col-lg-4">
            <div class="contact_block">
              <div class="contact_block_icon rollIn animated wow"><span><i class="fa-home"></i></span></div>
              <span> 서울특별시 마포구 대흥동<br>
              12-20 73-42 73-43 73-45<br>
              5층일부 6층 </span> </div>
          </div>
          <div class="col-lg-4">
            <div class="contact_block">
              <div class="contact_block_icon icon2 rollIn animated wow"><span><i class="fa-phone"></i></span></div>
              <span> 010-1234-5678 </span> </div>
          </div>
          <div class="col-lg-4">
            <div class="contact_block">
              <div class="contact_block_icon icon3 rollIn animated wow"><span><i class="fa-pencil"></i></span></div>
              <span> <a href="mailto:hello@butterfly.com"> asdf@naver.com</a> </span> </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-6 wow fadeInLeft">
          <div class="contact-info-box address clearfix">
            <h3>Don’t be shy. Say hello!</h3>
            <p>Accusantium quam, aliquam ultricies eget tempor id, aliquam eget nibh et. Maecen aliquam, risus at semper. Accusantium quam, aliquam ultricies eget tempor id, aliquam eget nibh et. Maecen aliquam, risus at semper.</p>
            <p>Accusantium quam, aliquam ultricies eget tempor id, aliquam eget nibh et. Maecen aliquampor id.</p>
          </div>
          <ul class="social-link">
            <li class="twitter animated bounceIn wow delay-02s"><a href="javascript:void(0)"><i class="fa-twitter"></i></a></li>
            <li class="facebook animated bounceIn wow delay-03s"><a href="javascript:void(0)"><i class="fa-facebook"></i></a></li>
            <li class="pinterest animated bounceIn wow delay-04s"><a href="javascript:void(0)"><i class="fa-pinterest"></i></a></li>
            <li class="gplus animated bounceIn wow delay-05s"><a href="javascript:void(0)"><i class="fa-google-plus"></i></a></li>
            <li class="dribbble animated bounceIn wow delay-06s"><a href="javascript:void(0)"><i class="fa-dribbble"></i></a></li>
          </ul>
        </div>
        <div class="col-lg-6 wow fadeInUp delay-06s">
          <div class="form">
                <div id="sendmessage">Your message has been sent. Thank you!</div>
                <div id="errormessage"></div>
                <form action="" method="post" role="form" class="contactForm">
                    <div class="form-group">
                        <input type="text" name="name" class="form-control input-text" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                        <div class="validation"></div>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control input-text" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                        <div class="validation"></div>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control input-text" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                        <div class="validation"></div>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                        <div class="validation"></div>
                    </div>
                  
                  <button type="submit" class="btn input-btn">SEND MESSAGE</button>
                </form>
          </div>
        </div>
      </div>
    </section>
  </div>
</footer>

</body>
</html>
<%@include file="../template/bottom.jsp"%>