<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="clearfix"></div>
<!--Footer Start-->
<footer>
	<div class="footer-container">
		<div class="wrapper">

			<!--Footer About Us-->
			<section class="footer-aboutus">
				<figure>
					<img src="images/footer-logo.png" alt="logo" />
				</figure>
				<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed
					diam nonumy eirmod invidunt ut labore et dolore magna aliquyam
					erat, sed diam voluptua. At vero eos et accusam et justo duo
					dolores et ea rebum. Stet clita kasd gubergren, no sea takimata
					sanctus est Lorem ipsum dolor sit amet.</p>
			</section>
			<!--Footer About Us End-->

			<!--Footer Gallery-->
			<section class="footer-gallery">
				<h2 class="footer-title">gallery</h2>
				<ul>
					<li><a href="#">
							<div class="thumbnail-hover"></div> <img
							src="images/upload/footer-gallery-thumbnail1.jpg" alt="" />
					</a></li>
					<li><a href="#">
							<div class="thumbnail-hover"></div> <img
							src="images/upload/footer-gallery-thumbnail1.jpg" alt="" />
					</a></li>
					<li><a href="#">
							<div class="thumbnail-hover"></div> <img
							src="images/upload/footer-gallery-thumbnail1.jpg" alt="" />
					</a></li>
					<li><a href="#">
							<div class="thumbnail-hover"></div> <img
							src="images/upload/footer-gallery-thumbnail1.jpg" alt="" />
					</a></li>
					<li><a href="#">
							<div class="thumbnail-hover"></div> <img
							src="images/upload/footer-gallery-thumbnail1.jpg" alt="" />
					</a></li>
					<li><a href="#">
							<div class="thumbnail-hover"></div> <img
							src="images/upload/footer-gallery-thumbnail1.jpg" alt="" />
					</a></li>
					<li><a href="#">
							<div class="thumbnail-hover"></div> <img
							src="images/upload/footer-gallery-thumbnail1.jpg" alt="" />
					</a></li>
					<li><a href="#">
							<div class="thumbnail-hover"></div> <img
							src="images/upload/footer-gallery-thumbnail1.jpg" alt="" />
					</a></li>
				</ul>
			</section>
			<!--Footer Gallery End-->

			<!--Footer Contact-->
			<section class="footer-contact">
				<h2 class="footer-title">get in touch</h2>
				<p>At vero eos et accusam et justo duo dolores et ea rebum. Stet
					clita kasd gubergren.</p>
				<ul class="footer-address">
					<li>#### ##### ################</li>
					<li>info@amaravatirealtors.in</li>
					<li>+91-999 999 9999</li>
				</ul>

				<!--Footer Social-->
				<ul class="footer-social">
					<li><a href="#"><img
							src="images/social-icon/social-icon1.png" alt="social media" /></a></li>
					<li class="social-color2"><a href="#"><img
							src="images/social-icon/social-icon2.png" alt="social media" /></a></li>
					<li class="social-color3"><a href="#"><img
							src="images/social-icon/social-icon3.png" alt="social media" /></a></li>
				</ul>
				<!--Footer Social End-->

			</section>
			<!--Footer Contact End-->

		</div>
	</div>

	<!--Footer Bottom-->
	<section class="footer-bottom">
		<div class="wrapper">
			<div class="copyright">Copyright © All Rights Reserved.</div>
			<nav>
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">Plots</a></li>
					<li><a href="#l">Layouts</a></li>
					<li><a href="#">Price Trends</a></li>
				</ul>
			</nav>
		</div>
	</section>
	<!--Footer Bottom End-->

</footer>
<!--Footer End-->

</div>

<!--Go To Top-->
<a href="#" class="back-to-top"></a>
<!--End-->

<!-- <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script> -->
<!-- <script type="text/javascript" src="js/jquery-easing-1.3.js"></script> -->

<!-- Flexy Menu Script -->
<script type="text/javascript" src="js/flexy-menu.js"></script>

<!-- LayerSlider Script -->
<script src="layerslider/jQuery/jquery-transit-modified.js"
	type="text/javascript"></script>
<script src="layerslider/js/layerslider.transitions.js"
	type="text/javascript"></script>
<script src="layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>
<!-- <script src="js/dataTables.min.js"></script> -->
<script src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
   jQuery(document).ready(function() {
	  "use strict"; 
     
      // FLEXY MENU SETTING
	  $(".flexy-menu").flexymenu({
            align: "right",
            indicator: true
         });
		 
      // LAYERSLIDER SETTING
		$('#layerslider').layerSlider({
			skinsPath : 'layerslider/skins/',
			skin : 'fullwidthdark',
			thumbnailNavigation : 'disabled',
			showCircleTimer : false,
			showBarTimer : false,
    		touchNav : true,
			navStartStop : false,
			navButtons : false,
			animateFirstLayer : true,
			responsive : false,
			responsiveUnder : 984,
			sublayerContainer : 984
		});
		
		// GO TO TOP SETTING
		var offset = 220;
		var duration = 500;
		jQuery(window).scroll(function() {
			if (jQuery(this).scrollTop() > offset) {
				jQuery('.back-to-top').fadeIn(duration);
			} else {
				jQuery('.back-to-top').fadeOut(duration);
			}
		});
		
		jQuery('.back-to-top').click(function(event) {
			event.preventDefault();
			jQuery('html, body').animate({scrollTop: 0}, duration);
			return false;
		})
   });
   
   var getTabName = window.location.pathname.split('/')[1];
  
   $("a[href='"+ getTabName +"']").parents('li').addClass('active');
</script>

</body>
</html>
