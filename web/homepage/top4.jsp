
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
				                                <input type="password" required="" placeholder="password" value="" name="password">
				                            </div>
                                                             <div class="text-left"><button class="thm-btn" type="submit">Login</button>&nbsp;&nbsp;
                                                                <a class="thm-btn" href="../register.jsp">Register</a>
                                                                
                                                                </div>
				                       <a href="../forgate_psw.jsp">Forget Password</a>
                                                       
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
