<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp" />
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url var="loginAction" value="/loginAction"></spring:url>

<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<!--   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script> -->
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" /> -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!--     <script src="/js/jquery.min.js"></script> -->

<!--     <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600' rel='stylesheet' type='text/css'> -->

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries. Placeholdr.js enables the placeholder attribute -->
<!--[if lt IE 9]>
        <script type="text/javascript" src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.1.0/respond.min.js"></script>
        <script type="text/javascript" src="assets/plugins/charts-flot/excanvas.min.js"></script>
    <![endif]-->

<!-- The following CSS are included as plugins and can be removed if unused-->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script> -->

<!-- 	  <script src="/js/customerLoginController.js"></script> -->
<script src="/js/customerLogin.js"></script> 

<style type="text/css">
.modalcss {
	display: block !important;
	opacity: 1;
}

.alert-success, .alert-warning, .alert-danger {
	color: white !important;
}

.alert-success {
	background-color: #4CAF50 !important;
}

.alert-warning {
	background-color: #ff6600 !important;
}

.alert-danger {
	background-color: #d43f3a !important;
}

.your-class::-webkit-input-placeholder {
	color: #e73d4a !important;
}

.your-class::-moz-placeholder {
	color: #e73d4a !important;
}

.default-class::-webkit-input-placeholder {
	color: #e73d4a !important;
}

.default-class::-moz-placeholder {
	color: #e73d4a !important;
}

.panel-primary .panel-body {
	border-top: 2px solid #e43b25;
}

.modal .modal-header .modal-title .modal-footer .modal-body {
	max-width: 500px;
}

.modal-header {
	background-color: #166eaf;
}

.modal-title {
	color: #FFFFFF;
	font-size: 14px;
}

.anchor {
	float: right;
}

.tag {
	color: #FF0000;
}

.main-row {
	margin: 0 auto;
	background: #fff;
	max-width: 400px;
	padding: 3em 2em 2em;
	text-align: center;
	border: 1px solid #118abc;
}

.main {
	padding: 3em 0 0;
	text-align: center;
}

.form-control {
	margin-bottom: 10px;
}
</style>

<!-- <script type="text/javascript">
	var isClick = 'No';
		 window.setTimeout(function() {
		    $(".msgcss").fadeTo(500, 0).slideUp(500, function(){
		        $(this).remove(); 
		    });
		}, 5000);
		
		 $(document).ready(function(){
			
			
		});  
		
</script> -->



<%--     <%@include file="abheeheader.jsp" %> --%>

<div>
	<div style="margin-bottom: 45px;" class="main">
		<div class="main-row">
			<!-- login form -->
			<div class="login-form login-form-left">
				<div class="row">
					<div class="head">
						<%--  <c:if test="${not empty msg}">
								<div class="msgcss1 row">
									<div align="center" class="form-group">
										<div style="width:80%" class="alert alert-${cssMsg} fadeIn animated">${msg}</div>
									</div>
								</div>
							</c:if> --%>
						<h4>Login</h4>
					</div>
					<div class="clearfix"></div>
					<c:if test="${param.error ne null}">

						<div class="msgcss1 row">
							<div align="center" class="form-group">
								<div style="width: 80%"
									class=" msgcss alert alert-danger fadeIn animated">Invalid
									username and password.</div>
							</div>
						</div>
						<%-- <div class="alert-danger">Invalid username and password.</div>
			
				<div class="col-sm-12" style="margin-bottom: -1.3em;">
					<div class="form-group">
						<div class="msgcss fadeIn animated alert" style="text-align: center;">${msg}</div>
					</div>
				</div> --%>
					</c:if>
					<form action="customerlogin" method="post">
						<div class="login-top">
<!-- 						<input type="hidden" name="userType" id="userType"  value="customerUser" />  -->
						<input type="text" name="username" id="cmusername" class="form-control validate numericOnly2" onfocus="this.placeholder=''"
								onblur="this.placeholder='Mobile Number'" maxlength="10" placeholder="Mobile Number" />
						 <input type="password" name="password" id="cmpassword" onfocus="this.placeholder=''" class="form-control  numericOnly" maxlength="4"
								onblur="this.placeholder='Password'" placeholder="Password" />

						</div>
						<div class="login-bottom">
							<div class="col-sm-6">
								<h6>
									<a href="#" data-toggle="modal" data-target="#passwordModel"
										style="color: orange;" class="tag">Forgot Password</a>
								</h6>
							</div>
							<div class="col-sm-6">

								<!--  <input   class="btn btn-danger" type="reset" value="Reset"> 
							<input  class="btn btn-primary" type="submit" value="Login"> -->
								<button type="submit" id="csubmit" class="btn btn-primary"
									value="Login">Login</button>
								<button class="btn btn-danger" type="reset" value="Reset">Reset</button>
							</div>
							<div class="clearfix"></div>
						</div>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					</form>
					<div class="login-bottom">
						<h6 style="margin-top: 10px;">Click Here To 
						<a href="#" data-toggle="modal" onclick="openRegistrationModel();" style="color: red; text-decoration: underline;" class="tag">Register</a>
						</h6>
					</div>

				</div>
			</div>
		</div>
		<!-- //login form -->


	</div>


	<div class="modal fade" id="register_info" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Customer Registration</h4>
				</div>
				<div class="modal-body">
					<div class="card m-b-20">
						<div class="card-header">
<!-- 							<h3 class="card-title">Registration</h3> -->
							<div class="card-options">
								<a href="#" class="card-options-collapse"
									data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
								<a href="#" class="card-options-remove"
									data-toggle="card-remove"><i class="fe fe-x"></i></a>
							</div>
						</div>
						<div class="card-body mb-0">
							<form class="form-horizontal" name="register_form" id="register_form" >
								<div class="form-group ">
									<div class="row">
										<div class="col-md-4">
											<label class="form-label" id="firstName">First Name</label>
										</div>
										<div class="col-md-4">
											<input type="text" class="form-control validate1" id="firstName" placeholder="First Name"/>
										</div>
									</div>
								</div>
								<div class="form-group ">
									<div class="row">
										<div class="col-md-4">
											<label class="form-label" id="lastName">Last Name</label>
										</div>
										<div class="col-md-4">
											<input type="text" class="form-control validate1" id="lastName" placeholder="Last Name"/>
										</div>
									</div>
								</div>
								<div class="form-group ">
									<div class="row">
										<div class="col-md-4">
											<label class="form-label" id="email">Email</label>
										</div>
										<div class="col-md-4">
											<input type="email" class="form-control validate1" id="email" placeholder="Email"/>
										</div>
									</div>
								</div>
								<div class="form-group ">
									<div class="row">
										<div class="col-md-4">
											<label class="form-label" id="cpassword">Password</label>
										</div>
										<div class="col-md-4">
											<input type="password" class="form-control validate1" id="cpassword" placeholder="Password"/>
										</div>
									</div>
								</div>
								<div class="form-group ">
									<div class="row">
										<div class="col-md-4">
											<label class="form-label" id="crePassword">Re Password</label>
										</div>
										<div class="col-md-4">
											<input type="password" class="form-control validate1" id="crePassword" placeholder="Retype Password"/>
										</div>
									</div>
								</div>
								<div class="form-group ">
									<div class="row">
										<div class="col-md-4">
											<label class="form-label" id="userName">User Name</label>
										</div>
										<div class="col-md-4">
											<input type="text" class="form-control validate1" id="userName" placeholder="User Name"/>
										</div>
									</div>
								</div>
								<div class="form-group ">
									<div class="row">
										<div class="col-md-4">
											<label class="form-label" id="mobileNumber">Phone Number</label>
										</div>
										<div class="col-md-4">
											<input type="Number" class="form-control validate1" id="mobileNumber" placeholder="Phone number"/>
										</div>
									</div>
								</div>

								<!-- <div class="form-group ">
									<div class="row">
										<div class="col-md-3">
											<label class="form-label">Select Test Area</label>
										</div>
										<div class="col-md-9">
											<select class="form-control">
												<option selected="">Select Test Center</option>
												<option>Hyderabad</option>
												<option>Vizag</option>
												<option>Guntur</option>
												<option>Vijayawada</option>
												<option>Rajahmundry</option>
											</select>
										</div>
									</div>
								</div> -->
								<!-- <div class="form-group row justify-content-end">
									<div class="col-md-9 float-right">
										<label class="custom-control custom-checkbox"> <input
											type="checkbox" class="custom-control-input"> <span
											class="custom-control-label text-dark">I agree</span>
										</label>
									</div>
								</div> -->
								<!-- <div class="form-group mb-0 row justify-content-end">
									<div class="col-md-9 float-right">
										<button type="submit" class="btn btn-primary waves-effect waves-light">Sign
											in</button>
									</div>
								</div> -->
							</form>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" id="submitModel" class="btn btn-primary  waves-effect waves-light" data-dismiss="modal">Submit</button>
					<input type="reset" value="Reset" class="btn-danger btn cancel1" />
				</div>
			</div>

		</div>
	</div>

	 <div class="modal fade" id="OTPModel" data-backdrop="static" data-keyboard="false" role="dialog">
    <div class="modal-dialog">
    
     
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">OTP Verification</h4>
        </div>
        <div class="modal-body">
          <form  action="#"  id="registration1"  method="post" class="login-form">

						<div id="firstForm1">

							
							<div class="form-group">
								<div class="col-md-3">
									<label for="user_name">OTP :</label>
								</div>
								<div class="col-md-9">
									<input	type="password" name="cotp" id="cotp" onkeydown="removeBorder(this.id)" maxlength="4" class="form-control numericOnly" placeholder="OTP"/>
								</div><div class="clearfix"></div> 
								<span class="hasError" id="emailError" style="font-size: 13px;"></span>
							</div>
							
						</div>
					</form>	
        </div>
        <div class="col-sm-6">
			<a onclick="resendOTP()" class="btn btn-warning">Resend OTP</a>
		</div>
        <div class="modal-footer">
          <button type="button" id="submit2" onclick="otpModelsubmit()" class="btn btn-primary" >Submit</button>
         
        </div>
      </div>
      
    </div>
  </div>  


	<%-- <div class="modal fade modalcss" id="passwordModel" data-backdrop="static" data-keyboard="false" role="dialog" >
    <div class="modal-dialog">
    
     
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Password Assistance</h4>
        </div>
    
    
        
	<div class="modal-body">
          <form  action="#"  id="resendotp"  method="post" class="login-form">

						<div id="firstForm2">

							<div class="form-group">
								<div class="col-md-5">
									<label for="mobile number">Registered Mobile Number :</label>
								</div>
								<div class="col-md-7">
									<input	type="text" name="resetmobile" id="resetmobile" onkeydown="removeBorder(this.id)" maxlength="10" class="form-control validate2 numericOnly" placeholder="Registered Mobile Number"/>
								</div><div class="clearfix"></div> 
								<span class="hasError" id="cmobileError" style="font-size: 13px;"></span>
							</div>				
						</div>
					</form>	
        </div>
        <div class="modal-footer">
          <button type="button" id="resetpassword" onclick="resetpassword()" class="btn btn-primary" >Submit</button>
         
        </div>
      </div>
      
    </div>
  </div>  --%>
</div>
<!-- <script src='/js/jquery.min.js'></script> -->
<!-- jQuery -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<!-- <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.min.js"></script> -->
<!-- BS JavaScript -->
<!-- <script type="text/javascript" src="js/bootstrap.js"></script> -->
<!-- Have fun using Bootstrap JS -->
<script type='text/javascript' src='js/customValidation.js'></script>
<!-- <script src="js/bootstrap.min.js"></script> -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>


<%-- <%@include file="abheefooter.jsp" %> --%>
<jsp:include page="footer.jsp" />
<script>

</script>

