<%
String yes=(String)session.getAttribute("theName3");
String heading = null;
if (yes == null)
{
    
     response.sendRedirect("/final_project/homepage/index4.jsp?error=1");
//out.print("error");
}


%>

<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<head>
<title>Advocate</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="css/morris.css" type="text/css"/>
<!-- calendar -->
<link rel="stylesheet" href="css/monthly.css">
<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
<script src="js/raphael-min.js"></script>
<script src="js/morris.js"></script>
</head>
<body>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="index1.jsp" class="logo">
        ADVOCATE <i class="fa fa-user" style="color:white"></i>
    </a> 
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                 &nbsp;
                <span class="username"> <%= session.getAttribute( "theName1" ) %></span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                <li><a href="../session_destroy.jsp"><i class="fa fa-sign-out"></i> Log Out</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->
       
    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="index1.jsp">
                        <i class="fa fa-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="../notary/profile_detail1.jsp">
                        <i class="fa fa-user"></i>
                        <span>Profile Detail </span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="../notary/show_status.jsp">
                        <i class="fa fa-book"></i>
                        <span>Show Status</span>
                    </a>
                   
                </li>
                
                
                <li class="sub-menu">
                    <a href="notary_document1.jsp">
                        <i class="fa fa-book"></i>
                        <span>Upload Documents</span>
                    </a>
                   
                </li>
                <li class="sub-menu">
                    <a href="../notary/main_changepsw.jsp">
                        <i class="fa fa-key"></i>
                        <span>Change Password</span>
                    </a>
                   </li>
                <li class="sub-menu">
                    <a href="../notary/appointment_request.jsp">
                        <i class="fa fa-calendar"></i>
                        <span>Appoinment Request</span>
                    </a>
                </li>
               
                 <li class="sub-menu">
                    <a href="index1.jsp">
                        <i class="fa fa-book"></i>
                        <span>view category</span>
                    </a>
                    <ul class="sub">
                        <li><a href="../notary/view_request.jsp">Rent Agreement Detail</a></li>
                          <li><a href="../notary/view_nameaffidavite.jsp">Name Change Affidavite Detail</a></li>
                          <li><a href="../notary/view_vehicle.jsp">vehicle sales Detail</a></li>
                          <li><a href="../notary/view_truecopy.jsp">Truecopy Detail</a></li>
                       </ul>
                    
                    
                </li>
                
                
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
<!--main content start-->

 <section id="main-content">
	<section class="wrapper">