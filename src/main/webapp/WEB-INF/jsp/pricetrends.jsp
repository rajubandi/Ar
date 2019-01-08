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
	</style>
 <!-- SubHeader -->
        <div class="careerfy-subheader">
            <span class="careerfy-banner-transparent"></span>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="careerfy-page-title">
                            <h1>PRICE TRENDS</h1>
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

                        <!--<div class="col-md-12">
                          <div class="bbgwhite">
                          <p align="center" Home | <span class="resi">Price Trends </span></p>
                          
                        </div>

                        </div>-->

                    </div>
                </div>
            </div>
            <!-- Main Section -->

            <!-- Main Section -->
            <div class="careerfy-main-section" style="margin-top:25px;">
                <div class="container">
                    <div class="row">
                        
                        <aside class="careerfy-column-3 careerfy-typo-wrap">
                           
                           <div class="careerfy-search-filter-wrap careerfy-search-filter-toggle">
                                        <h2><a href="#" class="careerfy-click-btn">Select Property Type</a></h2>
                                        <div class="careerfy-checkbox-toggle">
                                            <ul class="careerfy-checkbox">
                                                <li class="link1">
                                                    <input type="checkbox" id="r11" name="rr" />
                                                    <label for="r11"><span></span>Commercial</label>
                                                    <small>153</small>
                                                </li>
                                                <li class="link2">
                                                    <input type="checkbox" id="r12" name="rr" />
                                                    <label for="r12"><span></span>Residential</label>
                                                    <small>147</small>
                                                </li>
                                               
                                            </ul>
                                        </div>
                                    </div> <div class="careerfy-typo-wrap">
                                <form class="careerfy-search-filter">
                                    <div class="careerfy-search-filter-wrap careerfy-without-toggle">
                                        <h2><a href="#">Select Village</a></h2>
                                        <div class="careerfy-search-box">
                                            <input value="" name="searchVillageNames" id="searchVillageNames"  onkeyup="myFunction()" onBlur="if(this.value == '') { this.value ='Search'; }" onFocus="if(this.value =='Search') { this.value = ''; }" type="text">
                                            <input type="submit" value="">
                                            <i class="careerfy-icon careerfy-search"></i>
                                        </div>
                                        <ul class="careerfy-checkbox" id="villageList">
                                            <!-- <li>
                                                <input type="checkbox" id="r1" name="rr" />
                                                <label for="r1"><span></span>Abbarajupalem</label>
                                                <small>13</small>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="r2" name="rr" />
                                                <label for="r2"><span></span>Ananthavaram</label>
                                                <small>13</small>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="r3" name="rr" />
                                                <label for="r3"><span></span>Borupalem</label>
                                                <small>13</small>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="r4" name="rr" />
                                                <label for="r4"><span></span>Dondapadu</label>
                                                <small>13</small>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="r5" name="rr" />
                                                <label for="r4"><span></span>Inavolu</label>
                                                <small>13</small>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="r5" name="rr" />
                                                <label for="r4"><span></span>Kondamarajupalem</label>
                                                <small>13</small>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="r5" name="rr" />
                                                <label for="r4"><span></span>Penumaka</label>
                                                <small>13</small>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="r5" name="rr" />
                                                <label for="r4"><span></span>Nowluru</label>
                                                <small>13</small>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="r3" name="rr" />
                                                <label for="r3"><span></span>Borupalem</label>
                                                <small>13</small>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="r4" name="rr" />
                                                <label for="r4"><span></span>Dondapadu</label>
                                                <small>13</small>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="r5" name="rr" />
                                                <label for="r4"><span></span>Inavolu</label>
                                                <small>13</small>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="r5" name="rr" />
                                                <label for="r4"><span></span>Kondamarajupalem</label>
                                                <small>13</small>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="r5" name="rr" />
                                                <label for="r4"><span></span>Penumaka</label>
                                                <small>13</small>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="r5" name="rr" />
                                                <label for="r4"><span></span>Nowluru</label>
                                                <small>13</small>
                                            </li> -->
                                        </ul>
                                      
                                    </div>
                                    
                                    
                                    
                                    <div class="careerfy-search-filter-wrap careerfy-search-filter-toggle">
                                        <h2><a href="#" class="careerfy-click-btn">Date</a></h2>
                                        <div class="careerfy-checkbox-toggle">
                                            <ul class="careerfy-checkbox">
                                                <li>
                                                    <input type="checkbox" id="r17" name="rr" />
                                                    <label for="r17"><span></span>December 2018</label>
                                                    <small>10</small>
                                                </li>
                                                <li>
                                                    <input type="checkbox" id="r18" name="rr" />
                                                    <label for="r18"><span></span>NOvember 2018</label>
                                                    <small>2</small>
                                                </li>
                                                <li>
                                                    <input type="checkbox" id="r19" name="rr" />
                                                    <label for="r19"><span></span> October 2018</label>
                                                    <small>6</small>
                                                </li>
                                                <li>
                                                    <input type="checkbox" id="r20" name="rr" />
                                                    <label for="r20"><span></span>September 2018</label>
                                                    <small>4</small>
                                                </li>
                                                
                                            </ul>
                                            <a href="#" class="careerfy-seemore">+see more</a>
                                        </div>
                                    </div>
                                    
                                    
                                </form>
                            </div>
                        </aside>
                        
                        
                        
                        
                        
                        
                        
                        <div class="careerfy-column-9 careerfy-typo-wrap">
                            <div class="careerfy-typo-wrap">
                            
                                <!-- FilterAble -->
                              
                                <!-- FilterAble -->
                                <!-- JobGrid -->
                                
                                <div class="careerfy-job careerfy-joblisting-classic">
                                    <ul class="careerfy-row">
                                        <li class="careerfy-column-12">
                                            <div class="careerfy-joblisting-classic-wrap">
                                            <div class="card div1">
									<div class="card-header " >
										<h5 class="card-title">Commercial</h5>
										<div class="card-options">
											<a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
											<a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
										</div>
									</div>
                                    
									<div class="table-responsive">
										<table class="table card-table table-vcenter text-nowrap" id="tableIdCommercial">
											<thead class="bg-info text-white">
												<tr>
													
													<th class="text-white">Min Price</th>
													<th class="text-white">Max Price</th>
													
												</tr>
											</thead>
											<tbody>
												<!-- <tr>
													<td><i class="fa fa-rupee"></i> 22,0000</td>
													<td><i class="fa fa-rupee"></i> 35,000</td>
													
												</tr>
												<tr>
													<td><i class="fa fa-rupee"></i> 22,0000</td>
													<td><i class="fa fa-rupee"></i> 35,000</td>
													
												</tr>
                                                <tr>
													<td><i class="fa fa-rupee"></i> 22,0000</td>
													<td><i class="fa fa-rupee"></i> 35,000</td>
													
												</tr>
                                                <tr>
													<td><i class="fa fa-rupee"></i> 22,0000</td>
													<td><i class="fa fa-rupee"></i> 35,000</td>
													
												</tr>
                                                <tr>
													<td><i class="fa fa-rupee"></i> 22,0000</td>
													<td><i class="fa fa-rupee"></i> 35,000</td>
													
												</tr>
                                                	<tr>
													<td><i class="fa fa-rupee"></i> 12,0000</td>
													<td><i class="fa fa-rupee"></i> 25,000</td>
													
												</tr>
												<tr>
													<td><i class="fa fa-rupee"></i> 15,0000</td>
													<td><i class="fa fa-rupee"></i> 35,000</td>
													
												</tr>
                                                <tr>
													<td><i class="fa fa-rupee"></i> 22,0000</td>
													<td><i class="fa fa-rupee"></i> 35,000</td>
													
												</tr>
                                                <tr>
													<td><i class="fa fa-rupee"></i> 32,0000</td>
													<td><i class="fa fa-rupee"></i> 35,000</td>
													
												</tr>
                                                <tr>
													<td><i class="fa fa-rupee"></i> 12,0000</td>
													<td><i class="fa fa-rupee"></i> 35,000</td>
													
												</tr> -->
											</tbody>
										</table>
									</div>
									<!-- table-responsive -->
								</div>
                                             <div class="card div2">
									<div class="card-header " >
										<h5 class="card-title">Residential</h5>
										<div class="card-options">
											<a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
											<a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
										</div>
									</div>
                                    
									<div class="table-responsive">
										<table class="table card-table table-vcenter text-nowrap" id="tableIdResidential">
											<thead class="bg-info text-white">
												<tr>
													<th class="text-white">Min Price</th>
													<th class="text-white">Max Price</th>
													
												</tr>
											</thead>
											<tbody>
												<!-- <tr>
													<td><i class="fa fa-rupee"></i> 12,0000</td>
													<td><i class="fa fa-rupee"></i> 25,000</td>
													
												</tr>
												<tr>
													<td><i class="fa fa-rupee"></i> 15,0000</td>
													<td><i class="fa fa-rupee"></i> 35,000</td>
													
												</tr>
                                                <tr>
													<td><i class="fa fa-rupee"></i> 22,0000</td>
													<td><i class="fa fa-rupee"></i> 35,000</td>
													
												</tr>
                                                <tr>
													<td><i class="fa fa-rupee"></i> 32,0000</td>
													<td><i class="fa fa-rupee"></i> 35,000</td>
													
												</tr>
                                                <tr>
													<td><i class="fa fa-rupee"></i> 12,0000</td>
													<td><i class="fa fa-rupee"></i> 35,000</td>
													
												</tr>
                                                	<tr>
													<td><i class="fa fa-rupee"></i> 12,0000</td>
													<td><i class="fa fa-rupee"></i> 25,000</td>
													
												</tr>
												<tr>
													<td><i class="fa fa-rupee"></i> 15,0000</td>
													<td><i class="fa fa-rupee"></i> 35,000</td>
													
												</tr>
                                                <tr>
													<td><i class="fa fa-rupee"></i> 22,0000</td>
													<td><i class="fa fa-rupee"></i> 35,000</td>
													
												</tr>
                                                <tr>
													<td><i class="fa fa-rupee"></i> 32,0000</td>
													<td><i class="fa fa-rupee"></i> 35,000</td>
													
												</tr>
                                                <tr>
													<td><i class="fa fa-rupee"></i> 12,0000</td>
													<td><i class="fa fa-rupee"></i> 35,000</td>
													
												</tr> -->
											</tbody>
										</table>
									</div>
									<!-- table-responsive -->
								</div>   
                                            </div>
                                        </li>
                                        
                                        
                                    
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
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
        <script src="/js/priceTrend.js"></script>
<script>
var villageList = ${villagesListMap};
var priceTrendsList = ${priceTrendsList};

if (priceTrendsList != "") {
	displayTable(priceTrendsList);
} 

$(function () {

    $(" .div2").hide();
    
    $(".link1, .link2").bind("click", function () {

      $(".div1, .div2").hide();        
        
      if ($(this).attr("class") == "link1")
      {
        $(".div1").show();
      }
      else 
      { 
        $(".div2").show();
      }
    });
    
    $.each(villageList, function(i, item) {
		
		
		$("#villageList").append('<li><input type="checkbox" id="'+item[0]+'" name="villageCheckBox[]" /><label for="'+item[0]+'"><span></span>'+item[1]+'</label><small>'+item[2]+'</small></li>');
		
	});

});


	</script>
	
<jsp:include page="footer.jsp" />