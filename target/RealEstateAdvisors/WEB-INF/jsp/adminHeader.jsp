<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<title>Amaravati Realtors</title>
<link rel="stylesheet" href="assets/fonts/fonts/font-awesome.min.css">

<!-- Font Family-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">

<!-- Sidemenu Css -->
<link href="assets/plugins/fullside-menu/css/style.css" rel="stylesheet" />
<link href="assets/plugins/fullside-menu/waves.min.css" rel="stylesheet" />

<!-- Bootstrap Css -->
<link href="assets/plugins/bootstrap-4.1.3/css/bootstrap.min.css"
	rel="stylesheet" />

<!-- Dashboard Css -->
<link href="assets/css/dashboard.css" rel="stylesheet" />

<!-- JQVMap -->
<link href="assets/plugins/jqvmap/jqvmap.min.css" rel="stylesheet" />

<!-- Morris.js Charts Plugin -->
<link href="assets/plugins/morris/morris.css" rel="stylesheet" />

<!-- Custom scroll bar css-->
<link href="assets/plugins/scroll-bar/jquery.mCustomScrollbar.css"
	rel="stylesheet" />

<!---Font icons-->
<link href="assets/plugins/iconfonts/plugin.css" rel="stylesheet" />
</head>
<body>
	<div id="loading"></div>
	<div class="page">
		<div class="page-main">
			<div class="app-header1 header py-1 d-flex">
				<div class="container-fluid">
					<div class="d-flex">
						<a class="header-brand" href="index.html"> <img
							src="assets/images/brand/logo.png" class="header-brand-img"
							alt="Uplor  logo">
						</a>
						<div class="menu-toggle-button">
							<a class="nav-link wave-effect" href="#" id="sidebarCollapse">
								<span class="fa fa-bars"></span>
							</a>
						</div>
						<div>
							<div class="searching">
								<a href="javascript:void(0)" class="search-open searching1">
									<i class="fa fa-search"></i>
								</a>
								<div class="search-inline">
									<form>
										<input type="text" class="form-control"
											placeholder="Searching...">
										<button type="submit">
											<i class="fa fa-search"></i>
										</button>
										<a href="javascript:void(0)" class="search-close"> <i
											class="fa fa-times"></i>
										</a>
									</form>
								</div>
							</div>
						</div>
						<div class="d-flex order-lg-2 ml-auto">
							<div class="dropdown d-none d-md-flex">
								<a class="nav-link icon full-screen-link"> <i
									class="fe fe-maximize floating" id="fullscreen-button"></i>
								</a>
							</div>
							<div class="dropdown d-none d-md-flex country-selector">
								<a href="#" class="d-flex nav-link leading-none"
									data-toggle="dropdown"> <img src="" alt="img"
									class="avatar avatar-xs mr-1 align-self-center">
									<div>
										<strong class="text-white">English</strong>
									</div>
								</a>
								<div
									class="language-width dropdown-menu dropdown-menu-right dropdown-menu-arrow">
									<a href="#" class="dropdown-item d-flex pb-3"> <img
										src="assets/images/french_flag.jpg" alt="flag-img"
										class="avatar  mr-3 align-self-center">
										<div>
											<strong>French</strong>
										</div>
									</a> <a href="#" class="dropdown-item d-flex pb-3"> <img
										src="assets/images/germany_flag.jpg" alt="flag-img"
										class="avatar  mr-3 align-self-center">
										<div>
											<strong>Germany</strong>
										</div>
									</a> <a href="#" class="dropdown-item d-flex pb-3"> <img
										src="assets/images/italy_flag.jpg" alt="flag-img"
										class="avatar  mr-3 align-self-center">
										<div>
											<strong>Italy</strong>
										</div>
									</a> <a href="#" class="dropdown-item d-flex pb-3"> <img src=""
										alt="flag-img" class="avatar  mr-3 align-self-center">
										<div>
											<strong>Russia</strong>
										</div>
									</a> <a href="#" class="dropdown-item d-flex pb-3"> <img src=""
										alt="flag-img" class="avatar  mr-3 align-self-center">
										<div>
											<strong>Spain</strong>
										</div>
									</a>
								</div>
							</div>
							<div class="dropdown d-none d-md-flex">
								<a class="nav-link icon" data-toggle="dropdown"> <i
									class="fa fa-bell-o floating"></i> <span
									class=" nav-unread badge badge-danger  badge-pill">4</span>
								</a>
								<div
									class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
									<a href="#" class="dropdown-item text-center">You have 4
										notification</a>
									<div class="dropdown-divider"></div>
									<a href="#" class="dropdown-item d-flex pb-3">
										<div class="notifyimg">
											<i class="fa fa-envelope-o"></i>
										</div>
										<div>
											<strong>2 new Messages</strong>
											<div class="small text-muted">17:50 Pm</div>
										</div>
									</a> <a href="#" class="dropdown-item d-flex pb-3">
										<div class="notifyimg">
											<i class="fa fa-calendar"></i>
										</div>
										<div>
											<strong> 1 Event Soon</strong>
											<div class="small text-muted">19-10-2018</div>
										</div>
									</a> <a href="#" class="dropdown-item d-flex pb-3">
										<div class="notifyimg">
											<i class="fa fa-comment-o"></i>
										</div>
										<div>
											<strong> 3 new Comments</strong>
											<div class="small text-muted">05:34 Am</div>
										</div>
									</a> <a href="#" class="dropdown-item d-flex pb-3">
										<div class="notifyimg">
											<i class="fa fa-exclamation-triangle"></i>
										</div>
										<div>
											<strong> Application Error</strong>
											<div class="small text-muted">13:45 Pm</div>
										</div>
									</a>
									<div class="dropdown-divider"></div>
									<a href="#" class="dropdown-item text-center">See all
										Notification</a>
								</div>
							</div>
							<div class="dropdown d-none d-md-flex">
								<a class="nav-link icon" data-toggle="dropdown"> <i
									class="fa fa-envelope-o floating"></i> <span
									class=" nav-unread badge badge-warning  badge-pill">3</span>
								</a>
								<div
									class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
									<a href="#" class="dropdown-item d-flex pb-3"> <img src=""
										alt="avatar-img" class="avatar brround mr-3 align-self-center">
										<div>
											<strong>Blake</strong> I've finished it! See you so.......
											<div class="small text-muted">30 mins ago</div>
										</div>
									</a> <a href="#" class="dropdown-item d-flex pb-3"> <img src=""
										alt="avatar-img" class="avatar brround mr-3 align-self-center">
										<div>
											<strong>Caroline</strong> Just see the my Admin....
											<div class="small text-muted">12 mins ago</div>
										</div>
									</a> <a href="#" class="dropdown-item d-flex pb-3"> <img src=""
										alt="avatar-img" class="avatar brround mr-3 align-self-center">
										<div>
											<strong>Jonathan</strong> Hi! I'am singer......
											<div class="small text-muted">1 hour ago</div>
										</div>
									</a> <a href="#" class="dropdown-item d-flex pb-3"> <img src=""
										alt="avatar-img" class="avatar brround mr-3 align-self-center">
										<div>
											<strong>Emily</strong> Just a reminder that you have.....
											<div class="small text-muted">45 mins ago</div>
										</div>
									</a>
									<div class="dropdown-divider"></div>
									<a href="#" class="dropdown-item text-center">View all
										Messages</a>
								</div>
							</div>
							<div class="dropdown d-none d-md-flex">
								<a class="nav-link icon" data-toggle="dropdown"> <i
									class="fe fe-grid floating"></i>
								</a>
								<div
									class="dropdown-menu dropdown-menu-right dropdown-menu-arrow  app-selector">
									<ul class="drop-icon-wrap">
										<li><a href="#" class="drop-icon-item"> <i
												class="si si-envelope text-dark"></i> <span class="block">
													E-mail</span>
										</a></li>
										<li><a href="#" class="drop-icon-item"> <i
												class="si si-map text-dark"></i> <span class="block">map</span>
										</a></li>

										<li><a href="#" class="drop-icon-item"> <i
												class="si si-bubbles text-dark"></i> <span class="block">Messages</span>
										</a></li>
										<li><a href="#" class="drop-icon-item"> <i
												class="si si-user-follow text-dark"></i> <span class="block">Followers</span>
										</a></li>
										<li><a href="#" class="drop-icon-item"> <i
												class="si si-picture text-dark"></i> <span class="block">Photos</span>
										</a></li>
										<li><a href="#" class="drop-icon-item"> <i
												class="si si-settings text-dark"></i> <span class="block">Settings</span>
										</a></li>
									</ul>
									<div class="dropdown-divider"></div>
									<a href="#" class="dropdown-item text-center">View all</a>
								</div>
							</div>
							<div class="dropdown ">
								<a href="#" class="nav-link pr-0 leading-none user-img"
									data-toggle="dropdown"> <img src="" alt="profile-img"
									class="avatar avatar-md brround">
								</a>
								<div
									class="dropdown-menu dropdown-menu-right dropdown-menu-arrow ">
									<a class="dropdown-item" href="profile.html"> <i
										class="dropdown-icon si si-user"></i> My Profile
									</a> <a class="dropdown-item" href="emailservices.html"> <i
										class="dropdown-icon si si-envelope"></i> Inbox
									</a> <a class="dropdown-item" href="editprofile.html"> <i
										class="dropdown-icon  si si-settings"></i> Account Settings
									</a> <a class="dropdown-item" href="login.html"> <i
										class="dropdown-icon si si-power"></i> Log out
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="wrapper">
				<!-- Sidebar Holder -->
				<nav id="sidebar" class="nav-sidebar">
					<div class="profile clearfix">
						<div class="profile_pic">
							<img src="" alt="..." class=" profile_img"> <a
								href="editprofile.html" class="profile-img"> <span
								class="fa fa-pencil" aria-hidden="true"></span>
							</a>
						</div>
						<div class="profile_info">
							<h2>Rubin Carmody</h2>
							<span>Web Designer</span>
						</div>
					</div>
					<ul class="list-unstyled components" id="accordion">
						<li class="border-0"><h3>Personal</h3>
						<li>
						<li><a href="#homeSubmenu"
							class="accordion-toggle wave-effect " data-toggle="collapse"
							aria-expanded="false"> <i
								class="fa fa-television mr-2 sidebarsuccess"></i>Dashboard
						</a> <!-- <ul class="collapse list-unstyled" id="homeSubmenu" data-parent="#accordion">
									<li><a href="index.html">Dashboard 1</a></li>
									<li><a href="index2.html">Dashboard 2</a></li>
									<li><a href="index3.html">Dashboard 3</a></li>
									<li><a href="index4.html">Dashboard 4</a></li>
									<li><a href="index5.html">Dashboard 5</a></li>
								</ul> --></li>
						<!-- <li>
								<a href="#Submenu1" class="accordion-toggle wave-effect" data-toggle="collapse" aria-expanded="false">
									<i class="fa fa-rocket mr-2 sidebarprimary"></i> Apps
								</a>
								<ul class="collapse list-unstyled" id="Submenu1" data-parent="#accordion">
									<li>
										<a href="calendar.html">Default calendar</a>
									</li>
									<li>
										<a href="calendar2.html">Full calendar</a>
									</li>
									<li>
										<a href="users-list.html">User List</a>
									</li>
									<li>
										<a href="search.html">Search page</a>
									</li>
									<li>
										<a href="crypto-currencies.html">Crypto-currencies</a>
									</li>
								</ul>
							</li> -->
						<li><a href="addVillage"
							class=" wave-effect accordion-toggle "><i
								class="fa fa-diamond mr-2 sidebarpink"></i> Villages</a></li>
						<li><a href="site" class=" wave-effect accordion-toggle "><i
								class="fa fa-diamond mr-2 sidebarpink"></i> Plots</a></li>
						<!-- <li>
								<a href="widgets.html" class=" wave-effect accordion-toggle "><i class="fa fa-diamond mr-2 sidebarpink"></i> Widgets</a>
							</li>
							<li>
								<a href="#Submenu2" class="accordion-toggle wave-effect" data-toggle="collapse" aria-expanded="false">
									<i class="fa fa-cubes mr-2 sidebaryellow"></i> User Interface
								</a>
								<ul class="collapse list-unstyled" id="Submenu2" data-parent="#accordion">
									<li>
										<a href="cards.html">Cards design</a>
									</li>
									<li>
										<a href="chat.html">Default Chat</a>
									</li>
									<li>
										<a href="notify.html">Notifications</a>
									</li>
									<li>
										<a href="email.html">Email</a>
									</li>
									<li>
										<a href="emailservices.html">Email Inbox</a>
									</li>
									<li>
										<a href="sweetalert.html">Sweet alerts</a>
									</li>
									<li>
										<a href="rangeslider.html">Range slider</a>
									</li>
									<li>
										<a href="scroll.html">Content Scroll bar</a>
									</li>
									<li>
										<a href="counters.html">Counters</a>
									</li>
									<li>
										<a href="loaders.html">Loaders</a>
									</li>
									<li>
										<a href="time-line.html">Time Line</a>
									</li>
									<li>
										<a href="rating.html">Rating </a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#Submenu3" class="accordion-toggle wave-effect" data-toggle="collapse" aria-expanded="false"><i class="fa fa-area-chart mr-2 sidebarinfo"></i> Charts</a>
								<ul class="collapse list-unstyled" id="Submenu3" data-parent="#accordion" >
									<li>
										<a href="chart-chartist.html">Chartjs Charts </a>
									</li>
									<li>
										<a href="chart-dygraph.html">Dygraph Charts</a>
									</li>

									<li>
										<a href="chart-echart.html">Echart Charts</a>
									</li>
									<li>
										<a href="chart-flot.html">Flot Charts</a>
									</li>
									<li>
										<a href="chart-high.html">High Charts</a>
									</li>
									<li>
										<a href="chart-nvd3.html">Nvd3 Charts</a>
									</li>
									<li>
										<a href="sparklinechart.html">Sparkline Charts</a>
									</li>
									<li>
										<a href="chart-morris.html">Morris Charts</a>
									</li>
									<li class="secondlevel" >
										<a href="#Submenu4" class="accordion-toggle wave-effect" data-toggle="collapse" aria-expanded="false">C3 charts</a>
										<ul class="collapse list-unstyled" id="Submenu4" >
											<li>
												<a href="charts.html">C3 Bar Charts</a>
											</li>
											<li>
												<a href="chart-line.html">C3 Line Charts</a>
											</li>
											<li>
												<a href="chart-donut.html">C3 Donut Charts</a>
											</li>
											<li>
												<a href="chart-pie.html">C3 Pie charts</a>
											</li>
										</ul>
									</li>
								</ul>
							</li>
							<li>
								<a href="#Submenu5" class="accordion-toggle wave-effect" data-toggle="collapse" aria-expanded="false">
									<i class="fa fa-pencil-square-o mr-2 sidebarred"></i>Elements
								</a>
								<ul class="collapse list-unstyled" id="Submenu5" data-parent="#accordion">
									<li>
										<a href="alerts.html">Alerts</a>
									</li>
									<li>
										<a href="buttons.html">Buttons</a>
									</li>
									<li>
										<a href="colors.html">Colors</a>
									</li>
									<li>
										<a href="avatars.html">Avatar-Square</a>
									</li>
									<li>
										<a href="avatar-round.html">Avatar-Rounded</a>
									</li>
									<li>
										<a href="avatar-radius.html">Avatar-Radius</a>
									</li>
									<li>
										<a href="dropdown.html">Drop downs</a>
									</li>
									<li>
										<a href="thumbnails.html">Thumbnails</a>
									</li>
									<li>
										<a href="mediaobject.html">Media Object</a>
									</li>
									<li>
										<a href="list.html">List</a>
									</li>
									<li>
										<a href="tags.html">Tags</a>
									</li>
									<li>
										<a href="pagination.html">Pagination</a>
									</li>
									<li>
										<a href="navigation.html">Navigation</a>
									</li>
									<li>
										<a href="typography.html">Typography</a>
									</li>
									<li>
										<a href="breadcrumbs.html">Breadcrumbs</a>
									</li>
									<li>
										<a href="badge.html">Badges</a>
									</li>
									<li>
										<a href="jumbotron.html">Jumbotron</a>
									</li>
									<li>
										<a href="panels.html">Panels</a>
									</li>
									<li>
										<a href="modal.html">Modal</a>
									</li>
									<li>
										<a href="tooltipandpopover.html">Tooltip and popover</a>
									</li>
									<li>
										<a href="progress.html">Progress</a>
									</li>

									<li>
										<a href="carousel.html">Carousels</a>
									</li>
									<li>
										<a href="accordion.html">Accordions</a>
									</li>
									<li>
										<a href="tabs.html">Tabs</a>
									</li>
									<li>
										<a href="headers.html">Headers</a>
									</li>
									<li>
										<a href="footers.html">Footers</a>
									</li>
								</ul>
							</li> -->
						<li><a href="#Submenu6" class="accordion-toggle wave-effect"
							data-toggle="collapse" aria-expanded="false"> <i
								class="fa fa-file-text mr-2 sidebarblue"></i> Forms
						</a>
							<ul class="collapse list-unstyled" id="Submenu6"
								data-parent="#accordion">
								<li><a href="form-elements.html">Form Elements</a></li>
								<li><a href="form-wizard.html">Form-wizard Elements</a></li>
								<li><a href="wysiwyag.html">Text Editor</a></li>
							</ul></li>
						<!-- <li class="">
								<a href="#Submenu7" class="accordion-toggle wave-effect" data-toggle="collapse" aria-expanded="false">
									<i class="fa fa-table mr-2 sidebarpurple"></i> Tables
								</a>
								<ul class="collapse list-unstyled" id="Submenu7" data-parent="#accordion">
									<li>
										<a href="tables.html">Default table</a>
									</li>
									<li>
										<a href="datatable.html">Data Table</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="maps.html" class=" wave-effect accordion-toggle "><i class="fa fa-map  mr-2 sidebarlightgreen"></i> Maps</a>
							</li>
							<li >
								<a href="#Submenu8" class="accordion-toggle wave-effect" data-toggle="collapse" aria-expanded="false">
									<i class="fa fa-sun-o mr-2 sidebarpink"></i> Icons
								</a>
								<ul class="collapse list-unstyled" id="Submenu8" data-parent="#accordion">
									<li>
										<a href="icons.html">Font Awesome</a>
									</li>
									<li>
										<a href="icons2.html">Material Design Icons</a>
									</li>
									<li>
										<a href="icons3.html">Simple Line Iocns</a>
									</li>
									<li>
										<a href="icons4.html">Feather Icons</a>
									</li>
									<li>
										<a href="icons5.html">Ionic Icons</a>
									</li>
									<li>
										<a href="icons6.html">Flag Icons</a>
									</li>
									<li>
										<a href="icons7.html">pe7 Icons</a>
									</li>
									<li>
										<a href="icons8.html">Themify Icons</a>
									</li>
									<li>
										<a href="icons9.html">Typicons Icons</a>
									</li>
									<li>
										<a href="icons10.html">Weather Icons</a>
									</li>
								</ul>
							</li>
							<li><h3>More Pages</h3><li>
							<li>
								<a href="#Submenu9" class="accordion-toggle wave-effect" data-toggle="collapse" aria-expanded="false">
									<i class="fa fa-futbol-o mr-2 sidebarred"></i> Pages
								</a>
								<ul class="collapse list-unstyled" id="Submenu9" data-parent="#accordion">
									<li>
										<a href="profile.html">Profile</a>
									</li>
									<li>
										<a href="editprofile.html">Edit Profile</a>
									</li>

									<li>
										<a href="gallery.html" class=" wave-effect">Gallery</a>
									</li>
									<li>
										<a href="about.html">About Company</a>
									</li>
									<li>
										<a href="company-history.html">Company History</a>
									</li>
									<li>
										<a href="services.html">Services</a>
									</li>
									<li>
										<a href="faq.html">FAQS</a>
									</li>
									<li>
										<a href="terms.html">Terms and Conditions</a>
									</li>
									<li>
										<a href="empty.html">Empty Page</a>
									</li>
									<li>
										<a href="construction.html">Under Construction</a>
									</li>
									<li>
										<a href="blog.html">Blog</a>
									</li>
									<li>
										<a href="invoice.html">Invoice</a>
									</li>
									<li>
										<a href="pricing.html">Pricing Tables</a>
									</li>
								</ul>
							</li>
							<li >
								<a href="#Submenu10" class="accordion-toggle wave-effect" data-toggle="collapse" aria-expanded="false">
									<i class="fa fa-shopping-cart mr-2 sidebarsuccess"></i> E-commerce
								</a>
								<ul class="collapse list-unstyled" id="Submenu10" data-parent="#accordion">
									<li>
										<a href="shop.html">Products</a>
									</li>
									<li>
										<a href="shop-des.html">Product Details</a>
									</li>
									<li>
										<a href="cart.html">Shopping Cart</a>
									</li>
								</ul>
							</li> -->
						<!-- <li>
								<a href="#Submenu11" class="accordion-toggle wave-effect" data-toggle="collapse" aria-expanded="false">
									<i class="fa fa-briefcase mr-2 sidebaryellow"></i> Custom  Pages
								</a>
								<ul class="collapse list-unstyled" id="Submenu11" data-parent="#accordion">
									<li>
										<a href="login.html">Login</a>
									</li>
									<li>
										<a href="register.html">Register</a>
									</li>
									<li>
										<a href="forgot-password.html">Forgot password</a>
									</li>
									<li>
										<a href="lockscreen.html">Lock screen</a>
									</li>
								</ul>
							</li>
							<li >
								<a href="#Submenu12" class="accordion-toggle wave-effect" data-toggle="collapse" aria-expanded="false">
									<i class="fa fa-exclamation-circle mr-2 sidebarprimary"></i> Error pages
								</a>
								<ul class="collapse list-unstyled" id="Submenu12" data-parent="#accordion">
									<li>
										<a href="400.html">400 Error</a>
									</li>
									<li>
										<a href="401.html">401 Error</a>
									</li>
									<li>
										<a href="403.html">403 Error</a>
									</li>
									<li>
										<a href="404.html">404 Error</a>
									</li>
									<li>
										<a href="500.html">500 Error</a>
									</li>
									<li>
										<a href="503.html">503 Error</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#Submenu13" class="accordion-toggle wave-effect" data-toggle="collapse" aria-expanded="false">
									<i class="fa fa-compass mr-2 sidebarpink"></i> Multilevel
								</a>
								<ul class="collapse list-unstyled" id="Submenu13" data-parent="#accordion">
									<li>
										<a href="#">Level1</a>
									</li>
									<li>
										<a href="#">Level2</a>
									</li>
									<li>
										<a href="#">Level3</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#" class=" wave-effect accordion-toggle"><i class="fa fa-ticket mr-2 sidebarlightgreen"></i>  Support</a>
							</li>
						</ul> -->
						<div class="sidebar-footer hidden-small">
							<a href="emailservices.html"> <span class="fa fa-envelope"
								aria-hidden="true"></span>
							</a> <a href="profile.html"> <span class="fa fa-user"
								aria-hidden="true"></span>
							</a> <a href="editprofile.html"> <span class="fa fa-cog"
								aria-hidden="true"></span>
							</a> <a href="login.html"> <span class="fa fa-sign-in"
								aria-hidden="true"></span>
							</a> <a href="chat.html"> <span class="fa fa-comment"
								aria-hidden="true"></span>
							</a>
						</div>
				</nav>