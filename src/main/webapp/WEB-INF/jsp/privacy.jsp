<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp" />
<link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/flaticon.css" rel="stylesheet">
    <link href="css/plugin.css" rel="stylesheet">
    <link href="css/inner-style.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
   
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,900|Oswald:400,300,700' rel='stylesheet' type='text/css'>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
     <style>
	p{
	color:#050505;
	text-align:justify;
	}
	.careerfy-joblisting-classic-wrap{
	padding:30px;
	}
	
	</style>
    <style>
	/*------ Tables -----*/

.table, .text-wrap table {
	width: 100%;
	max-width: 100%;
	margin-bottom: 1rem;
}
.table th, .text-wrap table th, .text-wrap table td {
	padding: 0.75rem;
	vertical-align: top;
	border-top: 1px solid rgba(167, 180, 201,.3);
}
.table td {
	padding: 0.75rem;
	vertical-align: top;
	border-top: 0;
}
.border {
	padding: 0.75rem;
	vertical-align: top;
	border: 1px solid rgba(167, 180, 201,.3);
}
.table thead th, .text-wrap table thead th {
	vertical-align: bottom;
	border-bottom: 2px solid rgba(167, 180, 201,.3);
}
.table tbody+tbody, .text-wrap table tbody+tbody {
	border-top: 2px solid rgba(167, 180, 201,.3);
}
.table .table, .text-wrap table .table, .table .text-wrap table, .text-wrap .table table, .text-wrap table table {
	background-color: #f9faff;
}
.table-sm th, .table-sm td {
	padding: 0.3rem;
}
.table-bordered, .text-wrap table {
	border: 1px solid rgba(167, 180, 201,.3);
}
.table-bordered th, .text-wrap table th, .table-bordered td, .text-wrap table td {
	border: 1px solid rgba(167, 180, 201,.3);
}
.table-bordered thead th, .text-wrap table thead th, .table-bordered thead td, .text-wrap table thead td {
	border-bottom-width: 2px;
}
.table-borderless th, .table-borderless td, .table-borderless thead th, .table-borderless tbody+tbody {
	border: 0;
}
.table-striped tbody tr:nth-of-type(odd) {
	background-color: rgba(0, 0, 0, 0.02);
}
.table-hover tbody tr:hover {
	background-color: #f9faff;
}
.table-primary, .table-primary>th, .table-primary>td {
	background-color: #e6f2fe;
}
.table-hover .table-primary:hover {
	background-color: #b7cded;
}
.table-hover .table-primary:hover>td, .table-hover .table-primary:hover>th {
	background-color: #b7cded;
}
.table-secondary, .table-secondary>th, .table-secondary>td {
	background-color: #dddfe2;
}
.table-hover .table-secondary:hover {
	background-color: #cfd2d6;
}
.table-hover .table-secondary:hover>td, .table-hover .table-secondary:hover>th {
	background-color: #cfd2d6;
}
.table-success, .table-success>th, .table-success>td {
	background-color: #c9fde7;
}
.table-hover .table-success:hover {
	background-color: #c5e7a4;
}
.table-hover .table-success:hover>td, .table-hover .table-success:hover>th {
	background-color: #c5e7a4;
}
.table-info, .table-info>th, .table-info>td {
	background-color: #cbe7fb;
}
.table-hover .table-info:hover {
	background-color: #b3dcf9;
}
.table-hover .table-info:hover>td, .table-hover .table-info:hover>th {
	background-color: #b3dcf9;
}
.table-warning, .table-warning>th, .table-warning>td {
	background-color: #fbeebc;
}
.table-hover .table-warning:hover {
	background-color: #fae8a4;
}
.table-hover .table-warning:hover>td, .table-hover .table-warning:hover>th {
	background-color: #fae8a4;
}
.table-danger, .table-danger>th, .table-danger>td {
	background-color: #f1c1c0;
}
.table-hover .table-danger:hover {
	background-color: #ecacab;
}
.table-hover .table-danger:hover>td, .table-hover .table-danger:hover>th {
	background-color: #ecacab;
}
.table-light, .table-light>th, .table-light>td {
	background-color: #fdfdfe;
}
.table-hover .table-light:hover {
	background-color: #ececf6;
}
.table-hover .table-light:hover>td, .table-hover .table-light:hover>th {
	background-color: #ececf6;
}
.table-dark, .table-dark>th, .table-dark>td {
	background-color: #c6c8ca;
}
.table-hover .table-dark:hover {
	background-color: #b9bbbe;
}
.table-hover .table-dark:hover>td, .table-hover .table-dark:hover>th {
	background-color: #b9bbbe;
}
.table-active, .table-active>th, .table-active>td {
	background-color: rgba(0, 0, 0, 0.04);
}
.table-hover .table-active:hover {
	background-color: rgba(0, 0, 0, 0.04);
}
.table-hover .table-active:hover>td, .table-hover .table-active:hover>th {
	background-color: rgba(0, 0, 0, 0.04);
}
.table .thead-dark th, .text-wrap table .thead-dark th {
	color: #f9faff;
	background-color: #a7b4c9;
	border-color: #32383e;
}
.table .thead-light th, .text-wrap table .thead-light th {
	color: #3d4e67;
	background-color: rgba(167, 180, 201,.3);
	border-color: rgba(167, 180, 201,.3);
}
.table-dark {
	color: #f9faff;
	background-color: #a7b4c9;
}
.table-dark th, .table-dark td, .table-dark thead th {
	border-color: #32383e;
}
.table-dark.table-bordered, .text-wrap table.table-dark {
	border: 0;
}
.table-dark.table-striped tbody tr:nth-of-type(odd) {
	background-color: rgba(255, 255, 255, 0.05);
}
.table-dark.table-hover tbody tr:hover {
	background-color: rgba(255, 255, 255, 0.075);
}
@media (max-width: 575.98px) {
	.table-responsive-sm {
		display: block;
		width: 100%;
		overflow-x: auto;
		-webkit-overflow-scrolling: touch;
		-ms-overflow-style: -ms-autohiding-scrollbar;
	}
	.table-responsive-sm>.table-bordered, .text-wrap .table-responsive-sm>table {
		border: 0;
	}
}
@media (max-width: 767.98px) {
	.table-responsive-md {
		display: block;
		width: 100%;
		overflow-x: auto;
		-webkit-overflow-scrolling: touch;
		-ms-overflow-style: -ms-autohiding-scrollbar;
	}
	.table-responsive-md>.table-bordered, .text-wrap .table-responsive-md>table {
		border: 0;
	}
}
@media (max-width: 991.98px) {
	.table-responsive-lg {
		display: block;
		width: 100%;
		overflow-x: auto;
		-webkit-overflow-scrolling: touch;
		-ms-overflow-style: -ms-autohiding-scrollbar;
	}
	.table-responsive-lg>.table-bordered, .text-wrap .table-responsive-lg>table {
		border: 0;
	}
}
@media (max-width: 1279.98px) {
	.table-responsive-xl {
		display: block;
		width: 100%;
		overflow-x: auto;
		-webkit-overflow-scrolling: touch;
		-ms-overflow-style: -ms-autohiding-scrollbar;
	}
	.table-responsive-xl>.table-bordered, .text-wrap .table-responsive-xl>table {
		border: 0;
	}
}
.table-responsive {
	display: block;
	width: 100%;
	overflow-x: auto;
	-webkit-overflow-scrolling: touch;
	-ms-overflow-style: -ms-autohiding-scrollbar;
}
.table-responsive>.table-bordered, .text-wrap .table-responsive>table {
	border: 0;
}
.careerfy-joblisting-classic-wrap {
    background-color: #ffffff;
    border: 1px solid #ececec;
    padding: 8px 19px 13px 14px;
}
.navbar-nav li:hover > a, .navbar-nav li.active a {
    background: #c9d9ea;
    color: #fff;
    border-bottom: #25b5b8 solid 5px;
}
.navbar-nav .sub-menu li:hover > a, .navbar-nav .sub-menu li.active a {
    background: #fff;
    color: #000;
    border-bottom: #000 solid 1px;
}
.navbar-nav > li > a {
    padding: 10x 5px;
}
.navbar-nav > li > a {
    padding: 21px 24px;
    color: #000;
    text-decoration: none;
    display: block;
    text-transform: uppercase;
    -webkit-transition: color 0.2s linear, background 0.2s linear;
    -moz-transition: color 0.2s linear, background 0.2s linear;
    -o-transition: color 0.2s linear, background 0.2s linear;
    transition: color 0.2s linear, background 0.2s linear;
}
.table > thead:first-child > tr:first-child > th{
	color:#585555;}
	.form-control {
    display: block;
    width: 100%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}
.form-group {
    margin-bottom: 15px;
}
label {
    display: inline-block;
    max-width: 100%;
    margin-bottom: 5px;
    font-weight: 700;
}
.btn-default {
    color: #333;
    background-color: #fff;
    border-color: #ccc;
}
.btn {
    display: inline-block;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: 400;
    line-height: 1.42857143;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-image: none;
    border: 1px solid transparent;
    border-radius: 4px;
}
textarea, input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"], .uneditable-input {
    background-color: #f2f2f2;
    border: none;
    color: #666;
    display: inline-block;
    font-size: 13px;
    height: 30px;
    line-height: 20px;
    outline: none;
    padding: 22px 6px;
    vertical-align: middle;
    box-shadow: none;
}
	</style>
<!-- SubHeader -->
        <div class="careerfy-subheader">
            <span class="careerfy-banner-transparent"></span>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="careerfy-page-title">
                            <h1>PRIVACY POLICY</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- SubHeader -->

        <!-- Main Content -->
        <div class="careerfy-main-content">
            
            <!-- Main Section -->
            <div class="careerfy-main-section ">
                <div class="container">
                    <div class="row">

                        

                    </div>
                </div>
            </div>
            <!-- Main Section -->

            <!-- Main Section -->
            <div class="careerfy-main-section" style="margin-top:25px;">
                <div class="container">
                    <div class="row">
                        
                       
                        
                        
                        
                        
                        
                        
                        <div class="careerfy-column-12 careerfy-typo-wrap">
                            <div class="careerfy-typo-wrap">
                                <!-- FilterAble -->
                            
                                <!-- FilterAble -->
                                <!-- JobGrid -->
                                <div class="careerfy-job careerfy-joblisting-classic">
                                    <div class="careerfy-joblisting-classic-wrap"><p><b>                                               PRIVACY POLICY</b></p>
<p>This Privacy Policy governs the manner in which amaravatirealtors.com (Amaravati Realtors), uses, maintains and discloses information collected from users (each, a &#8220;User&#8221;) of the website (&#8220;Site&#8221;). This privacy policy applies to the Site and all products and services offered by amaravatirealtors.com (Amaravati Realtors)</p>
<p><b>Personal identification information</b></p>
<p>We may collect personal identification information from Users in a variety of ways in connection with activities, services, features or resources we make available on our Site. Users may visit our Site anonymously. We will collect personal identification information from Users only if they voluntarily submit such information to us. Users can always refuse to supply personally identification information, except that it may prevent them from engaging in certain Site related activities.</p>
<p><b>Non-personal identification information</b></p>
<p>We may collect non-personal identification information about Users whenever they interact with our Site. Non-personal identification information may include the browser name, the type of computer and technical information about Users means of connection to our Site, such as the operating system and the Internet service providers utilized and other similar information.</p>
<p><b>Web browser cookies</b></p>
<p>Our Site may use &#8220;cookies&#8221; to enhance User experience. User&#8217;s web browser places cookies on their hard drive for record-keeping purposes and sometimes to track information about them. User may choose to set their web browser to refuse cookies, or to alert you when cookies are being sent. If they do so, note that some parts of the Site may not function properly.</p>
<p><b>How we protect your information</b></p>
<p>We adopt appropriate data collection, storage and processing practices and security measures to protect against unauthorized access, alteration, disclosure or destruction of your personal information, username, password, transaction information and data stored on our Site.</p>
<p><b>Sharing your personal information</b></p>
<p>We do not sell, trade, or rent Users personal identification information to others. We may share generic aggregated demographic information not linked to any personal identification information regarding visitors and users with our business partners, trusted affiliates and advertisers for the purposes outlined above.</p>
<p><b>Changes to this privacy policy</b><br />
Avenue.in (Avenue Realty) has the discretion to update this privacy policy at any time. When we do, we will revise the updated date at the bottom of this page. We encourage Users to frequently check this page for any changes to stay informed about how we are helping to protect the personal information we collect. You acknowledge and agree that it is your responsibility to review this privacy policy periodically and become aware of modifications.</p>
<p><b>Your acceptance of these terms</b></p>
<p>By using this Site, you signify your acceptance of this policy. If you do not agree to this policy, please do not use our Site. Your continued use of the Site following the posting of changes to this policy will be deemed your acceptance of those changes.</p>
</div>
                                        
                                        
                                       
                                      
                                        
                                        
                                        
                                        
                                        
                                        
                                    </ul>
                                </div>
                                <!-- Pagination -->
                                
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- Main Section -->

        </div>
        <!-- Main Content -->
        
<jsp:include page="footer.jsp" />