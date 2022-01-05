<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Home Page</title>
	
	<!-- responsive meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- master stylesheet -->
	<link rel="stylesheet" href="css/style.css">
	<!-- responsive stylesheet -->
	<link rel="stylesheet" href="css/bootstrap-margin-padding.css">
	<link rel="stylesheet" href="css/responsive.css">
	<link rel="stylesheet" href="vendor/slider/css/nivo-slider.css" type="text/css">
	<link rel="stylesheet" href="vendor/slider/css/preview.css" type="text/css" media="screen">


</head>
<body class="page-wrapper">


	<section class="top-bar">
		<div class="container">

			<div class="left-text pull-left">
				<p><span>Support Us :</span> parthiv46patel@gmail.com</p>
			</div> <!-- /.left-text -->

			<div class="social-icons pull-right">
				<ul>
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
					<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
					<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
				</ul>
			</div> <!-- /.social-icons -->
		</div>
	</section> <!-- /.top-bar -->

	<header class="header">
		<div class="container">
		<div class="header-right-info pull-right clearfix">
				<div class="single-header-info">
					<div class="icon-box">
						<div class="inner-box">
							<i class="flaticon-interface-2"></i>
						</div>
					</div>
					<div class="content">
						<p>parthiv46patel@gmail.com</p>
					</div>
				</div>
				<div class="single-header-info">
					<div class="icon-box">
						<div class="inner-box">
							<i class="flaticon-telephone"></i>
						</div>
					</div>
					<div class="content">
						<p><b>9978438501</b></p>
                                        </div>
				</div>
				<div class="single-header-info">
	                <!-- Modal: donate now Starts -->
	                <a class="thm-btn" data-toggle="modal" href="#modal-donate-now">Login/Register</a>
	                <div class="modal fade" id="modal-donate-now" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	                  <div class="modal-dialog style-one" role="document">
	                    <div class="modal-content">
	                      <div class="modal-header">
	                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	                        <h4 class="modal-title" id="myModalLabel">Login</h4>
	                      </div>
	                      <div class="modal-body">
		                    <div class="donation-form-outer">
                                        <form action="../login_process.jsp" method="post">
				                	 <!--Form Portlet-->
				                    <div class="form-portlet">
				                    	<div class="clearfix">
				                            <div class="form-group">
				                            	<div class="field-label">Email <span class="required">*</span></div>
				                                <input type="email" required="" placeholder="Email" value="" name="email">
				                            </div>
				                            
				                            <div class="form-group">
				                            	<div class="field-label">Password <span class="required">*</span></div>
				                                <input type="password" required="" placeholder="password" value="" name="password" maxlength="8">
				                            </div>
                                                             <div class="text-left"><button class="thm-btn" type="submit">Login</button>&nbsp;&nbsp;
                                                                <a class="thm-btn" href="../register.jsp">Register</a>
                                                                
                                                                </div>
				                       <a href="../forgate_psw.jsp">Forgot Password</a>
                                                       
                                                        </div>
				                    </div>
				                    
				                   
				                    
				                    
				                    
				                </form>
                                       
				            </div>
	                      </div>
	                    </div>
	                  </div>
	                </div>
	                <!-- Modal: donate now Ends -->
				</div>
			</div>
		</div>
	</header> <!-- /.header -->


	<nav class="mainmenu-area stricky">
		<div class="container">
			<div class="navigation">
				<div class="nav-header">
					<ul>
						<li class="dropdown">
							<a href="#">Home</a>
							<ul class="submenu">
                                                            <li><a href="../homepage/index4.jsp">Main Page</a></li>
							</ul>
						</li>
						<li></li>						
						<li class="dropdown">
							<a href="#">Services</a>
							<ul class="submenu">
								<li><a href="service-list.jsp">Service List</a></li>
							</ul>
						</li>						
						
						
						<li class="dropdown">
							<a href="#">Pages</a>
							<ul class="submenu">
								<li><a href="about.jsp">About</a></li>
								<li><a href="contact.jsp">Contact</a></li>
                                                	</ul>
						</li>
						<li><a href="contact.jsp">Contact</a></li>
					</ul>
				</div>
				<div class="nav-footer">
					<button><i class="fa fa-bars"></i></button>
				</div>
			</div>
		</div>
	</nav> <!-- /.mainmenu-area -->


	<div class="slider1-area overlay-default index1">
        <div class="bend niceties preview-1">
            <div id="ensign-nivoslider-3" class="slides nivoSlider">   
                <img src="img/slides/law1.jpg" alt="slider" title="#slider-direction-1">
                <img src="img/slides/law2.jpg" alt="slider" title="#slider-direction-2">
            </div>
            <!-- <div class="nivo-controlNav nivo-thumbs-enabled"></div>  -->
            <div id="slider-direction-1" class="t-cn slider-direction">
                <div class="slider-content s-tb slide-1">
                    <div class="title-container s-tb-c">
                        <h1 class="title1">Fast Document Process <br>Of<br> Digital India</h1>
                        
                        
                    </div>
                </div>
            </div>
            <div id="slider-direction-2" class="t-cn slider-direction">
                <div class="slider-content s-tb slide-2">
                     <div class="title-container s-tb-c">
                        <h1 class="title1">Fast Document Process <br>Of<br> Digital India</h1>
                       
                        
                    </div>
                </div>
            </div>
        </div> 
    </div>


	<section class="home-serivce sec-padding pb-40">
		<div class="container">
			<div class="sec-title colored text-center">
				<h2>Our services</h2>
				<span class="decor"><span class="inner"></span></span>
			</div>
			<div class="row single-service-style">
				<div class="col-md-4 col-sm-6">
					<div class="single-service-home">
						<div class="content">
							<img src="img/busines/1.png" alt="">
							<h3>Find Notary</h3>
							<p>Easy to find notary in specific area</p>
							
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="single-service-home">
						<div class="content">
							<img src="img/busines/2.png" alt="">
							<h3>Legal Documents</h3>
							<p> Useful and more secure documents </p>
							
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="single-service-home">
						<div class="content">
							<img src="img/busines/3.png" alt="">
                                                        <h3>Appointment</h3>
							<p>Easy to take appointment</p>
                                		</div>
					</div>
				</div>
				
			</div>
		</div>
	</section>


	
	<br><br>
        
<%@ page import="java.sql.*" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/testmain_project?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>

<% 

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
String query = "SELECT * FROM tbl_register WHERE type='advocate' ";
//out.print(query1);
int count=0;
rs=statement.executeQuery(query);
while(rs.next())
    {
       count++;
      }
//out.print(count);

String query1 = "SELECT * FROM tbl_register WHERE type='client' ";
//out.print(query1);
int count1=0;
rs=statement.executeQuery(query1);
while(rs.next())
    {
       count1++;
      }
//out.print(count1);


String query2 = "SELECT * FROM tbl_register";
//out.print(query1);
int count2=0;
rs=statement.executeQuery(query2);
while(rs.next())
    {
       count2++;
      }
//out.print(count1);

%>

	<section class="fact-counter-wrapper sec-padding parallax-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12 md-text-center">
					<h2>Notary Service<br>to helpless people with trust and <br>we are happy</h2>
			
				</div>
				<div class="col-lg-6 col-md-12 md-text-center">
					<div class="single-fact">
						<div class="icon-box">
							<i class="fa fa-users"></i>
						</div>
						<span class="timer" data-from="0" data-to="<%out.print(count);%>" data-speed="2000" data-refresh-interval="50"><%out.print(count);%></span>
						<p>Advocate</p>
					</div>
					<div class="single-fact">
						<div class="icon-box">
                                                       <i class="fa fa-user"></i>
						</div>
						<span class="timer" data-from="0" data-to="<%out.print(count1);%>" data-speed="2000" data-refresh-interval="50"><%out.print(count1);%></span>
						<p>Client</p>
					</div>
					<div class="single-fact">
						<div class="icon-box">
							<i class="fa fa-user-plus"></i>
						</div>
						<span class="timer" data-from="10" data-to="<%out.print(count2);%>" data-speed="2000" data-refresh-interval="50"><%out.print(count2);%></span>
						<p>Total Users</p>
					</div>
				</div>
			</div>
		</div>
	</section>

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
<%
    String fa=request.getParameter("status");
    String abc="fail";
    if(fa==null)
    {
        
    }
    else if((fa.equals(abc)))
    {
        out.println("<script type=\"text/javascript\">");
   out.println("alert('please enter correct email or password');");
  // out.println("location='homepage/index4.jsp';");
   out.println("</script>");

    }
        
%>
<%
    String fa1=request.getParameter("logout");
    String abc1="1";
    if(fa1==null)
    {
        
    }
    else if((fa1.equals(abc1)))
    {
        out.println("<script type=\"text/javascript\">");
   out.println("alert('Logout Successfully');");
  // out.println("location='homepage/index4.jsp';");
   out.println("</script>");

    }
        
%>

<%
    String fa2=request.getParameter("error");
    String abc2="1";
    if(fa2==null)
    {
        
    }
    else if((fa2.equals(abc2)))
    {
        out.println("<script type=\"text/javascript\">");
   out.println("alert('Something went wrong!!');");
  // out.println("location='homepage/index4.jsp';");
   out.println("</script>");

    }
        
%>
