<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE HTML>
<html>
<head>
<link rel="Shortcut Icon" href="images/fav.png" type="image/x-icon" />

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<title>Amaravati Realtors</title>
<link rel="stylesheet" href="fonts/fonts/font-awesome.min.css">

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
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<script src="assets/js/vendors/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	var isClick = 'No';
	</script>
<body>
	<div id="loading"></div>
	<div class="page">
		<div class="page-main">
			<div class="app-header1 header py-1 d-flex">
				<div class="container-fluid">
					<div class="d-flex">
						<a class="header-brand" href="index.html"> <img src="images/logo.png" class="header-brand-img"
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
<%-- 							<%=session.getAttribute("newNotification")%> --%>
							<div class="dropdown d-none d-md-flex">
								<a class="nav-link icon" data-toggle="dropdown"> <i
									class="fa fa-bell-o floating"></i> <span
									class=" nav-unread badge badge-danger  badge-pill" id="newNotification">${newNotification} </span>
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
									</a> <a class="dropdown-item" href="signout"> <i
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
						<!-- <div class="profile_pic">
							<img src="" alt="..." class=" profile_img"> <a
								href="editprofile.html" class="profile-img"> <span
								class="fa fa-pencil" aria-hidden="true"></span>
							</a>
						</div> -->
						<div class="profile_info">
							<h2>${sessionUser} </h2>
							<a href="editprofile.html" class="profile-img"> 
							<span class="fa fa-pencil" aria-hidden="true"></span>
							<span>${userDesignationSession.designation} </span>
							</a>
						</div>
					</div>
					<ul class="list-unstyled components" id="accordion">
						<li class="border-0"><h3>Personal</h3>
						<li>
						<li><a href="#homeSubmenu"
							class="accordion-toggle wave-effect " data-toggle="collapse"
							aria-expanded="false"> <i
								class="fa fa-television mr-2 sidebarsuccess"></i>Dashboard
						</a> </li>
						
						<li><a href="addVillage" class=" wave-effect accordion-toggle "><i class="fa fa-diamond mr-2 sidebarpink"></i> Villages</a></li>
						<li><a href="site" class=" wave-effect accordion-toggle "><i class="fa fa-diamond mr-2 sidebarpink"></i> Plots</a></li>
						
						<div class="sidebar-footer hidden-small">
							<a href="emailservices.html"> <span class="fa fa-envelope" aria-hidden="true"></span>
							</a> <a href="profile.html"> <span class="fa fa-user" aria-hidden="true"></span>
							</a> <a href="editprofile.html"> <span class="fa fa-cog" aria-hidden="true"></span>
							</a> <a href="login.html"> <span class="fa fa-sign-in" aria-hidden="true"></span>
							</a> <a href="chat.html"> <span class="fa fa-comment" aria-hidden="true"></span>
							</a>
						</div>
				</nav>