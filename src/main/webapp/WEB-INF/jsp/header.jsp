<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE HTML>
<html>
<head>
<link rel="Shortcut Icon" href="images/fav.png" type="image/x-icon" />
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<title>Amaravati Realtors</title>

<!--Main Element CSS-->
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/hexagon.css" rel="stylesheet" type="text/css">
<link href="css/flexy-menu.css" rel="stylesheet" type="text/css">
<link href="css/responsive1.css" rel="stylesheet" type="text/css">
<link href="layerslider/css/layerslider.css" rel="stylesheet"
	type="text/css">
<link
	href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,900|Oswald:400,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<!-- <script src='/js/jquery.min.js'></script> -->
<!--      <script src="/js/bootstrap-dropdownhover.min.js"></script>  -->
<style>
/* .input-group-addon {
    padding: 3px 12px;
    font-size: 14px;
    font-weight: 400;
    line-height: 1;
    color: #555;
    text-align: center;
    background-color: #eee;
    border: 1px solid #ccd0d2;
    border-radius: 4px;
}
.input-group-addon, .input-group-btn {
    width: 1%;
    white-space: nowrap;
    vertical-align: middle;
}
@media (min-width: 768px) {
.form-inline .input-group {
    display: inline-table;
    vertical-align: middle;
}
}
@media (min-width: 768px) {
.form-inline .control-label, .form-inline .form-group {
    margin-bottom: 0;
    vertical-align: middle;
}}
@media (min-width: 768px){
.form-inline .form-control-static, .form-inline .form-group {
    display: inline-block;
}}
.input-group {
    display: table;
    border-collapse: separate;
}

.input-group, .input-group-btn, .input-group-btn>.btn {
    position: relative;
} */
ul.dropdown-lr {
	width: 190px;
}

/* mobile fix */
@media ( max-width : 768px) {
	.dropdown-lr h3 {
		color: #eee;
	}
	.dropdown-lr label {
		color: #eee;
	}
}

label {
	color: #fff;
}

.form-control {
	display: block;
	padding: 4px 1px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}

.form-group {
	margin-bottom: 8px;
}
</style>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script> 
</head>

<body>

	<!--Header Start-->
	<header class="header-section">
		<div class="wrapper header">

			<div class="logo">
				<a href="#"><img src="images/logo.png" alt="logo" /></a>
			</div>

			<!--Navigation Menu Start-->
			<ul class="flexy-menu thick">
				<li><a href="index">Home</a></li>
				<li><a href="plots">Plots</a></li>
				<li><a href="#">Layouts</a></li>
				<li><a href="#">Price Trends</a></li>
				<li><a href="#">Contact</a></li>
				<li><a href="#">More</a>
				<div class="arrow-down"></div>
					<ul>
						<li><a href="#">FAQ's</a></li>
						<li><a href="#">Terms & Conditions</a></li>
						<li><a href="#">Privacy Policy</a></li>
					</ul></li>
				<%-- 			     <li class="dropdown acc" ng-init="checkLogin='${loggedstatus}';userName='${customerName}'"> --%>
				<!-- 			          <a href="#" class="dropdown-toggle"  data-toggle="dropdown" data-hover="dropdown">Hello! <span >{{checkLogin!=' ' ? userName : 'Sign-in'}}</span></a> -->
				<!-- 			          <ul style="width:100% !important;" class="dropdown-menu myacd"> -->
				<!-- 			          <li id="cmlist"></li> -->
				<%-- 				     <li ng-if="checkLogin!=''"><a href="${baseurl}/customerprofile">My Profile</a></li> --%>
				<%-- 				     <li ng-if="checkLogin!=''"><a href="${baseurl}/signout">Sign out</a></li> --%>
				<!-- 				     <li ng-if="checkLogin==''"><a href="customerlogin">Sign in</a></li> -->
				<li><a href="#">Hello! <span id="loggedCustomerName"></span></a>
					<c:choose>
						<c:when test="${not empty loggedstatus}">
							<script type="text/javascript"> $("#loggedCustomerName").text("${customerName}");var login=true;</script>
							<ul>
								<li><a href="${baseurl}/editProfile">My Profile</a></li>
								<li><a href="${baseurl}/signout">Sign out</a></li>
							</ul>
						</c:when>
						<c:otherwise>
							<script> $("#loggedCustomerName").text("Sign-in"); var login=false;</script>
							<ul>
								<li><a href="customerlogin">Sign in</a></li>
							</ul>
						</c:otherwise>
					</c:choose></li>
			</ul>
			<!--  <li class="dropdown">
          <a href="" class="dropdown-toggle" data-toggle="dropdown">Register <span class="caret"></span></a><div class="arrow-down"></div>
          <ul class="dropdown-menu dropdown-lr animated flipInX" role="menu">
            <div class="col-md-12">
              <div class="text-center">
               </div>
              <form id="ajax-register-form" action="" method="post" role="form" autocomplete="off" style="padding:10px;">
                <div class="form-group">
                  <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
                </div>
                <div class="form-group">
                  <input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="Email Address" value="">
                </div>
                <div class="form-group">
                  <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
                </div>
                <div class="form-group">
                  <input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirm Password">
                </div>
                <div class="form-group">
                  <div class="row">
                    <div class="col-xs-6 col-xs-offset-3">
                      <input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-info" value="Register Now">
                    </div>
                  </div>
                </div>
                <input type="hidden" class="hide" name="token" id="token" value="">
              </form>
            </div>
          </ul>
        </li>
        <li class="dropdown">
          <a href="" class="dropdown-toggle" data-toggle="dropdown">Log In <span class="caret"></span></a><div class="arrow-down"></div>
          <ul class="dropdown-menu dropdown-lr animated slideInRight" role="menu">
            <div class="col-lg-12">
              <div class="text-center">
                </div>
              <form id="ajax-login-form" method="get" role="form" autocomplete="off" style="padding:10px;">
                <div class="form-group">
                  <label for="username">Username</label> -->
			<!-- <div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user"></i></span>
                  <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="" autocomplete="off">
                </div>

                <div class="form-group">
                  <label for="password">Password</label>
                  <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password" autocomplete="off">
                </div>

                <div class="form-group">
                  <div class="row">
                    <div class="col-xs-7">
                      <input type="checkbox" tabindex="3" name="remember" id="remember">
                      <label for="remember"> Remember Me</label>
                    </div>
                    <div class="col-xs-5 pull-right">
                      <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-success" value="Log In">
                    </div><br>
                  </div>
                </div>

                <div class="form-group">
                  <div class="row">
                    <div class="col-lg-12">
                      <div class="text-center">
                        <a href="" tabindex="5" class="forgot-password">Forgot Password?</a>
                      </div>
                    </div>
                  </div>
                </div>
                <input type="hidden" class="hide" name="token" id="token" value="a465a2791ae0bae853cf4bf485dbe1b6">
              </form>
            </div>
          </ul>
        </li> -->
			<!--Navigation Menu End-->

		</div>
	</header>
	<!--Header End-->