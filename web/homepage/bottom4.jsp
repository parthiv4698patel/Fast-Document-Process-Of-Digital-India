
<%@ page import = "java.io.*,java.util.*" %>
	<%
         Integer hitsCount = (Integer)application.getAttribute("hitCounter");
         if( hitsCount ==null || hitsCount == 0 ) {
            /* First visit */
                        hitsCount = 1;
         } else {
            /* return visit */
           
            hitsCount += 1;
         }
         application.setAttribute("hitCounter", hitsCount);
      %>
      
	<br><br>

	<section class="footer-bottom">
		<div class="container text-center">
                    <p>Theme Created By Fast Document Process Of Digital India &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total number of visits: <%= hitsCount%></p>
		</div>
	</section>

	<!--Scroll to top-->
	<div class="scroll-to-top"><span class="fa fa-arrow-up"></span></div>


	<!-- main jQuery -->
	<script src="js/jquery-2.1.4.js"></script>
	<!-- bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- bx slider -->
	<script src="js/jquery.bxslider.min.html"></script>
	<!-- owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- validate -->
	<script src="js/jquery-parallax.js"></script>
	<!-- validate -->
	<script src="js/validate.js"></script>
	<!-- mixit up -->
	<script src="js/jquery.mixitup.min.js"></script>
	<!-- fancybox -->
	<script src="js/jquery.fancybox.pack.js"></script>
	<!-- easing -->
	<script src="js/jquery.easing.min.js"></script>
	<!-- circle progress -->
	<script src="js/circle-progress.js"></script>
	<!-- appear js -->
	<script src="js/jquery.appear.js"></script>
	<!-- count to -->
	<script src="js/jquery.countTo.js"></script>

	<!-- isotope script -->
	<script src="js/isotope.pkgd.min.js"></script>
	<!-- jQuery ui js -->
	<script src="js/jquery-ui-1.11.4/jquery-ui.js"></script>
	
	
	<!-- Nivo slider js -->     
    <script src="vendor/slider/js/jquery.nivo.slider.js" type="text/javascript"></script>
    <script src="vendor/slider/home.js" type="text/javascript"></script>

	


	<!-- thm custom script -->
	<script src="js/custom.js"></script>


</body>

</html>
