<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<jsp:include page="header.jsp" />
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/flaticon.css" rel="stylesheet">
<link href="css/plugin.css" rel="stylesheet">
<link href="css/inner-style.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic-ext,vietnamese"
	rel="stylesheet">

<style>
@media ( min-width : 1200px) {
	.container {
		width: 100%;
	}
}

.header-section {
	width: 100%;
	height: 71px;
	position: relative;
	background-color: rgba(255, 255, 255, 0.95);
	border-bottom: rgba(221, 221, 221, 0.95) solid 5px;
	z-index: 1000;
}
</style>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script> 
      <script src="/js/plotController.js"></script>  -->
<!-- SubHeader -->
<div class="content">
	<div class="careerfy-subheader">
		<span class="careerfy-banner-transparent"></span>
		<div class="">
			<div class="row">
				<div class="col-md-12">
					<div class="careerfy-page-title">
						<h1>PLOTS</h1>
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

					<div class="col-md-12">
						<div class="bbgwhite">
							<p align="center">
								Total : 300 | <span class="resi">Residential : 150 </span>| <span
									class="comm">Commercial : 150</span>
							</p>

						</div>

					</div>

				</div>
			</div>
		</div>
		<!-- Main Section -->

		<!-- Main Section -->
		<div class="careerfy-main-section">
			<div class="container">
				<div class="row">

					<aside class="careerfy-column-3 careerfy-typo-wrap">
						<div class="careerfy-typo-wrap">
							<form class="careerfy-search-filter">
								<div class="careerfy-search-filter-wrap careerfy-without-toggle">
									<h2>
										<a href="#">Select Village</a>
									</h2>
									<div class="careerfy-search-box">
										<input placeholder="Search with Village Name" name="searchVillageNames" id="searchVillageNames"  onkeyup="myFunction()" value="" onBlur="if(this.value == '') { this.value ='Search'; }"
											onFocus="if(this.value =='Search') { this.value = ''; }" type="text" > 
										<input type="submit" value=""> 
										<i class="careerfy-icon careerfy-search"></i>
									</div>
									<ul class="careerfy-checkbox" id="villageList">
										<!-- <li ng-repeat="(k,v) in villages | customFilter:searchVillage">
                                                <input type="checkbox" id={{k}} name={{k}} />
                                                <label for={{k}}><span></span>{{v}}</label>
                                                <small>13</small>
                                            </li> -->

									</ul>

								</div>


								<div
									class="careerfy-search-filter-wrap careerfy-search-filter-toggle">
									<h2>
										<a href="#" class="careerfy-click-btn">Select Property
											Type</a>
									</h2>
									<div class="careerfy-checkbox-toggle">
										<ul class="careerfy-checkbox">
											<li><input type="checkbox" id="r11" name="rr" /> <label
												for="r11"><span></span>Commercial</label> <small>153</small>
											</li>
											<li><input type="checkbox" id="r12" name="rr" /> <label
												for="r12"><span></span>Residential</label> <small>147</small>
											</li>

										</ul>
									</div>
								</div>
								<div
									class="careerfy-search-filter-wrap careerfy-search-filter-toggle">
									<h2>
										<a href="#" class="careerfy-click-btn">Plot Facing</a>
									</h2>
									<div class="careerfy-checkbox-toggle">
										<ul class="careerfy-checkbox">
											<li><input type="checkbox" id="r17" name="rr" /> <label
												for="r17"><span></span>North</label> <small>10</small></li>
											<li><input type="checkbox" id="r18" name="rr" /> <label
												for="r18"><span></span>South</label> <small>2</small></li>
											<li><input type="checkbox" id="r19" name="rr" /> <label
												for="r19"><span></span>East</label> <small>6</small></li>
											<li><input type="checkbox" id="r20" name="rr" /> <label
												for="r20"><span></span>West</label> <small>4</small></li>

										</ul>
										<a href="#" class="careerfy-seemore">+see more</a>
									</div>
								</div>

								<div
									class="careerfy-search-filter-wrap careerfy-search-filter-toggle">
									<h2>
										<a href="#" class="careerfy-click-btn">Price / Sq.Yd</a>
									</h2>
									<div>





										<input name="" type="text" class="form-control" value="0">
										<p align="center">to</p>

										<input name="" type="text" class="form-control" value="25000"><br>


										<a href="#" class="careerfy-option-btn careerfy-red"
											style="margin-top: 10px;">Submit</a>


									</div>
								</div>
							</form>
						</div>
					</aside>







					<div class="careerfy-column-9 careerfy-typo-wrap">
						<div class="careerfy-typo-wrap">
							<!-- FilterAble -->
							<div class="careerfy-filterable">
								<h2>Showing 0-12 of 300 results</h2>
							</div>
							<!-- FilterAble -->
							<!-- JobGrid  <%=session.getAttribute("loggedstatus")%> -->

							<div class="careerfy-job careerfy-joblisting-classic">
								<input type="hidden" name="loginCheck">

								<ul class="careerfy-row" id="ulSiteList">
									<!--  <li class="careerfy-column-12" ng-repeat="eachsite in allSites">
                                            <div class="careerfy-joblisting-classic-wrap">
                                                <div class="careerfy-joblisting-text">
                                                    <div class="careerfy-list-option">
                                                        <h2><a href="#"> {{eachsite.sqYd}} Sq.Yd - <i class="fa fa-rupee"></i>{{eachsite.price}}</a> <span>Listing ID: {{eachsite.listingId}}</span></h2>
                                                        <ul>
                                                            <li><a href="#">@ Commercial</a></li>
                                                            <li><i class="careerfy-icon careerfy-maps-and-flags"></i> <strong>{{eachsite.colony}} Colony</strong></li>
                                                            <li><i class="careerfy-icon careerfy-filter-tool-black-shape"></i> {{eachsite.propertyType}}</li>
                                                             <p class="italic">03 Nov 2018</p>
                                                        </ul>
                                                    </div>
                                                    <div class="careerfy-job-userlist">
                                                  
                                                        <button id='{{eachsite.id}}' ng-click="iAmIntrested($event)" class="careerfy-option-btn">I am Interested</button>
                                                    </div>
                                                <div class="clearfix"></div>
                                                </div>
                                            </div>
                                        </li> -->
									<!--   
                                        <li class="careerfy-column-12">
                                            <div class="careerfy-joblisting-classic-wrap">
                                                <div class="careerfy-joblisting-text">
                                                    <div class="careerfy-list-option">
                                                        <h2><a href="#"> 660 Sq.Yd - <i class="fa fa-rupee"></i> 12,000</a> <span>Listing ID: 1710</span></h2>
                                                        <ul>
                                                            <li><a href="#">@ Residential</a></li>
                                                            <li><i class="careerfy-icon careerfy-maps-and-flags"></i> <strong>NOWLURU - 698 Colony</strong></li>
                                                            <li><i class="careerfy-icon careerfy-filter-tool-black-shape"></i> East Facing</li>
                                                            <p class="italic">03 Nov 2018</p>
                                                        </ul>
                                                    </div>
                                                    <div class="careerfy-job-userlist">
                                                        <a href="#" class="careerfy-option-btn careerfy-red">I am Interested</a>
                                                    </div>
                                                <div class="clearfix"></div>
                                                </div>
                                            </div>
                                        </li>
                                       <li class="careerfy-column-12">
                                            <div class="careerfy-joblisting-classic-wrap">
                                                <div class="careerfy-joblisting-text">
                                                    <div class="careerfy-list-option">
                                                        <h2><a href="#"> 360 Sq.Yd - <i class="fa fa-rupee"></i> 22,000</a> <span>Listing ID: 1520</span></h2>
                                                        <ul>
                                                            <li><a href="#">@ Commercial</a></li>
                                                            <li><i class="careerfy-icon careerfy-maps-and-flags"></i> <strong>THULLUR - 414 Colony</strong></li>
                                                            <li><i class="careerfy-icon careerfy-filter-tool-black-shape"></i> West Facing</li>
                                                             <p class="italic">03 Nov 2018</p>
                                                        </ul>
                                                    </div>
                                                    <div class="careerfy-job-userlist">
                                                   
                                                        <a href="#" class="careerfy-option-btn">I am Interested</a>
                                                    </div>
                                                <div class="clearfix"></div>
                                                </div>
                                            </div>
                                        </li>
                                        
                                        <li class="careerfy-column-12">
                                            <div class="careerfy-joblisting-classic-wrap">
                                                <div class="careerfy-joblisting-text">
                                                    <div class="careerfy-list-option">
                                                        <h2><a href="#"> 660 Sq.Yd - <i class="fa fa-rupee"></i> 12,000</a> <span>Listing ID: 1710</span></h2>
                                                        <ul>
                                                            <li><a href="#">@ Residential</a></li>
                                                            <li><i class="careerfy-icon careerfy-maps-and-flags"></i> <strong>NOWLURU - 698 Colony</strong></li>
                                                            <li><i class="careerfy-icon careerfy-filter-tool-black-shape"></i> East Facing</li>
                                                            <p class="italic">03 Nov 2018</p>
                                                        </ul>
                                                    </div>
                                                    <div class="careerfy-job-userlist">
                                                        <a href="#" class="careerfy-option-btn careerfy-red">I am Interested</a>
                                                    </div>
                                                <div class="clearfix"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="careerfy-column-12">
                                            <div class="careerfy-joblisting-classic-wrap">
                                                <div class="careerfy-joblisting-text">
                                                    <div class="careerfy-list-option">
                                                        <h2><a href="#"> 360 Sq.Yd - <i class="fa fa-rupee"></i> 22,000</a> <span>Listing ID: 1520</span></h2>
                                                        <ul>
                                                            <li><a href="#">@ Commercial</a></li>
                                                            <li><i class="careerfy-icon careerfy-maps-and-flags"></i> <strong>THULLUR - 414 Colony</strong></li>
                                                            <li><i class="careerfy-icon careerfy-filter-tool-black-shape"></i> West Facing</li>
                                                             <p class="italic">03 Nov 2018</p>
                                                        </ul>
                                                    </div>
                                                    <div class="careerfy-job-userlist">
                                                   
                                                        <a href="#" class="careerfy-option-btn">I am Interested</a>
                                                    </div>
                                                <div class="clearfix"></div>
                                                </div>
                                            </div>
                                        </li>
                                        
                                        <li class="careerfy-column-12">
                                            <div class="careerfy-joblisting-classic-wrap">
                                                <div class="careerfy-joblisting-text">
                                                    <div class="careerfy-list-option">
                                                        <h2><a href="#"> 660 Sq.Yd - <i class="fa fa-rupee"></i> 12,000</a> <span>Listing ID: 1710</span></h2>
                                                        <ul>
                                                            <li><a href="#">@ Residential</a></li>
                                                            <li><i class="careerfy-icon careerfy-maps-and-flags"></i> <strong>NOWLURU - 698 Colony</strong></li>
                                                            <li><i class="careerfy-icon careerfy-filter-tool-black-shape"></i> East Facing</li>
                                                            <p class="italic">03 Nov 2018</p>
                                                        </ul>
                                                    </div>
                                                    <div class="careerfy-job-userlist">
                                                        <a href="#" class="careerfy-option-btn careerfy-red">I am Interested</a>
                                                    </div>
                                                <div class="clearfix"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="careerfy-column-12">
                                            <div class="careerfy-joblisting-classic-wrap">
                                                <div class="careerfy-joblisting-text">
                                                    <div class="careerfy-list-option">
                                                        <h2><a href="#"> 360 Sq.Yd - <i class="fa fa-rupee"></i> 22,000</a> <span>Listing ID: 1520</span></h2>
                                                        <ul>
                                                            <li><a href="#">@ Commercial</a></li>
                                                            <li><i class="careerfy-icon careerfy-maps-and-flags"></i> <strong>THULLUR - 414 Colony</strong></li>
                                                            <li><i class="careerfy-icon careerfy-filter-tool-black-shape"></i> West Facing</li>
                                                             <p class="italic">03 Nov 2018</p>
                                                        </ul>
                                                    </div>
                                                    <div class="careerfy-job-userlist">
                                                   
                                                        <a href="#" class="careerfy-option-btn">I am Interested</a>
                                                    </div>
                                                <div class="clearfix"></div>
                                                </div>
                                            </div>
                                        </li>
                                        
                                        <li class="careerfy-column-12">
                                            <div class="careerfy-joblisting-classic-wrap">
                                                <div class="careerfy-joblisting-text">
                                                    <div class="careerfy-list-option">
                                                        <h2><a href="#"> 660 Sq.Yd - <i class="fa fa-rupee"></i> 12,000</a> <span>Listing ID: 1710</span></h2>
                                                        <ul>
                                                            <li><a href="#">@ Residential</a></li>
                                                            <li><i class="careerfy-icon careerfy-maps-and-flags"></i> <strong>NOWLURU - 698 Colony</strong></li>
                                                            <li><i class="careerfy-icon careerfy-filter-tool-black-shape"></i> East Facing</li>
                                                            <p class="italic">03 Nov 2018</p>
                                                        </ul>
                                                    </div>
                                                    <div class="careerfy-job-userlist">
                                                        <a href="#" class="careerfy-option-btn careerfy-red">I am Interested</a>
                                                    </div>
                                                <div class="clearfix"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="careerfy-column-12">
                                            <div class="careerfy-joblisting-classic-wrap">
                                                <div class="careerfy-joblisting-text">
                                                    <div class="careerfy-list-option">
                                                        <h2><a href="#"> 360 Sq.Yd - <i class="fa fa-rupee"></i> 22,000</a> <span>Listing ID: 1520</span></h2>
                                                        <ul>
                                                            <li><a href="#">@ Commercial</a></li>
                                                            <li><i class="careerfy-icon careerfy-maps-and-flags"></i> <strong>THULLUR - 414 Colony</strong></li>
                                                            <li><i class="careerfy-icon careerfy-filter-tool-black-shape"></i> West Facing</li>
                                                             <p class="italic">03 Nov 2018</p>
                                                        </ul>
                                                    </div>
                                                    <div class="careerfy-job-userlist">
                                                   
                                                        <a href="#" class="careerfy-option-btn">I am Interested</a>
                                                    </div>
                                                <div class="clearfix"></div>
                                                </div>
                                            </div>
                                        </li>
                                        
                                        <li class="careerfy-column-12">
                                            <div class="careerfy-joblisting-classic-wrap">
                                                <div class="careerfy-joblisting-text">
                                                    <div class="careerfy-list-option">
                                                        <h2><a href="#"> 660 Sq.Yd - <i class="fa fa-rupee"></i> 12,000</a> <span>Listing ID: 1710</span></h2>
                                                        <ul>
                                                            <li><a href="#">@ Residential</a></li>
                                                            <li><i class="careerfy-icon careerfy-maps-and-flags"></i> <strong>NOWLURU - 698 Colony</strong></li>
                                                            <li><i class="careerfy-icon careerfy-filter-tool-black-shape"></i> East Facing</li>
                                                            <p class="italic">03 Nov 2018</p>
                                                        </ul>
                                                    </div>
                                                    <div class="careerfy-job-userlist">
                                                        <a href="#" class="careerfy-option-btn careerfy-red">I am Interested</a>
                                                    </div>
                                                <div class="clearfix"></div>
                                                </div>
                                            </div>
                                        </li><li class="careerfy-column-12">
                                            <div class="careerfy-joblisting-classic-wrap">
                                                <div class="careerfy-joblisting-text">
                                                    <div class="careerfy-list-option">
                                                        <h2><a href="#"> 360 Sq.Yd - <i class="fa fa-rupee"></i> 22,000</a> <span>Listing ID: 1520</span></h2>
                                                        <ul>
                                                            <li><a href="#">@ Commercial</a></li>
                                                            <li><i class="careerfy-icon careerfy-maps-and-flags"></i> <strong>THULLUR - 414 Colony</strong></li>
                                                            <li><i class="careerfy-icon careerfy-filter-tool-black-shape"></i> West Facing</li>
                                                             <p class="italic">03 Nov 2018</p>
                                                        </ul>
                                                    </div>
                                                    <div class="careerfy-job-userlist">
                                                   
                                                        <a href="#" class="careerfy-option-btn">I am Interested</a>
                                                    </div>
                                                <div class="clearfix"></div>
                                                </div>
                                            </div>
                                        </li>
                                        
                                        <li class="careerfy-column-12">
                                            <div class="careerfy-joblisting-classic-wrap">
                                                <div class="careerfy-joblisting-text">
                                                    <div class="careerfy-list-option">
                                                        <h2><a href="#"> 660 Sq.Yd - <i class="fa fa-rupee"></i> 12,000</a> <span>Listing ID: 1710</span></h2>
                                                        <ul>
                                                            <li><a href="#">@ Residential</a></li>
                                                            <li><i class="careerfy-icon careerfy-maps-and-flags"></i> <strong>NOWLURU - 698 Colony</strong></li>
                                                            <li><i class="careerfy-icon careerfy-filter-tool-black-shape"></i> East Facing</li>
                                                            <p class="italic">03 Nov 2018</p>
                                                        </ul>
                                                    </div>
                                                    <div class="careerfy-job-userlist">
                                                        <a href="#" class="careerfy-option-btn careerfy-red">I am Interested</a>
                                                    </div>
                                                <div class="clearfix"></div>
                                                </div>
                                            </div>
                                        </li> -->
								</ul>
							</div>
							<!-- Pagination -->
							<div class="careerfy-pagination-blog">
								<ul class="page-numbers">
									<li><a class="prev page-numbers" href="#"><span><i
												class="careerfy-icon careerfy-arrows4"></i></span></a></li>
									<li><span class="page-numbers current">01</span></li>
									<li><a class="page-numbers" href="#">02</a></li>
									<li><a class="page-numbers" href="#">03</a></li>
									<li><a class="page-numbers" href="#">04</a></li>
									<li><a class="next page-numbers" href="#"><span><i
												class="careerfy-icon careerfy-arrows4"></i></span></a></li>
								</ul>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- Main Section -->

	</div>
</div>
<div class="clearfix"></div>
<!-- Main Content -->
<script src="script/jquery.js"></script>
<script src="script/bootstrap.js"></script>

<a href="#" class="back-to-top"></a>
<!--End-->

<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/jquery-easing-1.3.js"></script>

<!--Flexy Menu Script-->
<script type="text/javascript" src="js/flexy-menu.js"></script>

<!--LayerSlider Script-->
<script src="layerslider/jQuery/jquery-transit-modified.js"
	type="text/javascript"></script>
<script src="layerslider/js/layerslider.transitions.js"
	type="text/javascript"></script>
<script src="layerslider/js/layerslider.kreaturamedia.jquery.js"
	type="text/javascript"></script>

<script type="text/javascript">
var villageList = ${villagesListMap};
var AllSiteList = ${siteList};

function myFunction() {
    var input, filter, ul, li, a, i, txtValue;
    input = $("#searchVillageNames").val();
    filter = input;
    ul = $("#villageList");
    li = $('#villageList li').length;
    /* var t = "abc123";
    var x = t.match(/[a-z]+|\d+/ig); */
    
    $('#villageList li').each(function(){
    	
    a =	$(this.children[1].innerText).selector;
    
    if (a.indexOf(filter) > -1) {
    	
    	$(this).show();
    } else {
    	$(this).hide();
    } 
    	
    });
    /* for (i = 0; i < li.length; i++) {
        //a = li[i].text();
       var z =ul[0].children[i];
       console.log(ul[0].children[i]);
      a=  ul[0].children[i].textContent().match(/[a-z]+|\d+/ig)
        txtValue = a.textContent || a.innerText;
        if (a.indexOf(filter) > -1) {
        	ul.children[i].hide();
        } else {
        	ul.children[i].show();
        } 
    } */
}

   jQuery(document).ready(function() {
	  "use strict"; 
     
      // FLEXY MENU SETTING
	  $(".flexy-menu").flexymenu({
            align: "right",
            indicator: true
         });
		 
      // LAYERSLIDER SETTING
		$('#layerslider').layerSlider({
			skinsPath : 'layerslider/skins/',
			skin : 'fullwidthdark',
			thumbnailNavigation : 'disabled',
			showCircleTimer : false,
			showBarTimer : false,
    		touchNav : true,
			navStartStop : false,
			navButtons : false,
			animateFirstLayer : true,
			responsive : false,
			responsiveUnder : 984,
			sublayerContainer : 984
		});
		
		// GO TO TOP SETTING
		var offset = 220;
		var duration = 500;
		jQuery(window).scroll(function() {
			if (jQuery(this).scrollTop() > offset) {
				jQuery('.back-to-top').fadeIn(duration);
			} else {
				jQuery('.back-to-top').fadeOut(duration);
			}
		});
		
		jQuery('.back-to-top').click(function(event) {
			event.preventDefault();
			jQuery('html, body').animate({scrollTop: 0}, duration);
			return false;
		})
		
		
		$.each(villageList, function(i, item) {
			
			
			$("#villageList").append('<li><input type="checkbox" id="'+i+'" name="villageCheckBox[]" /><label for="'+i+'"><span></span>'+item+'</label><small>13</small></li>');
			
		});
		var cls="";
		$.each(AllSiteList, function(i, item) {
			
			
			if(item.propertyType == "Commercial"){
				
				cls ="careerfy-red";
			}else{cls="";}
			$("#ulSiteList").append('<li class="careerfy-column-12">'
                    	+'<div class="careerfy-joblisting-classic-wrap">'
                    	+'<div class="careerfy-joblisting-text">'
                        +'<div class="careerfy-list-option">'
                        +'<h2><a href="#">'+  item.sqYd +'Sq.Yd - <i class="fa fa-rupee"></i>'+  item.price +'</a>'
                        +' <span>Listing ID: "'+  item.listingId +'"</span></h2>'
                        +'<ul>'
                        +' <li><a href="#">@"'+item.propertyType+'"</a></li>'
                        +'<li><i class="careerfy-icon careerfy-maps-and-flags"></i> <strong>"'+  item.colony +'" Colony</strong></li>'
                        +'<li><i class="careerfy-icon careerfy-filter-tool-black-shape"></i>'+  item.siteFacing +'</li>'
                        +'<p class="italic">03 Nov 2018</p>'
                        +'</ul>'
                        +'</div>'
                        +'<div class="careerfy-job-userlist">'
                        
                        +'<button id="'+item.id+'" onclick="iAmIntrested('+item.id+')" class="careerfy-option-btn '+cls+'">I am Interested</button>'
                        +'</div>'
                        +'<div class="clearfix"></div>'
                        +'</div>'
                        +'</div>'
                        +'</li>');
			
		});
		//var values = new Array();
		$("input[name='villageCheckBox[]']").change(function () {
			var values = new Array();
			
			$('input[name="villageCheckBox[]"]:checked').each(function() {
				values.push($(this).attr('id'));
			});
			
			if(values > 0 ){
				
						$.ajax({
							type : "POST",
							url : "siteFilterByVillage",
							data : {villageArry:values},
							dataType : "json",
							success : function(response) {
							alert('');
								}
							
							
						});
						//$('input.checkall').not(this).prop('checked', false);
				}
			});
   });
   
   function iAmIntrested(id){
	  // var siteId = $(this).id;
	  
	   if(login){
		   $.ajax({
				type : "POST",
				url : "userIntrestedSite",
				data :"id="+id,
				dataType : "text",
				success : function(data) {
					alert("success");
				},
				
			});
			
		}else{
			window.location.href='/customerlogin';
		}
	  
	  
	 
   }
   
   var getTabName = window.location.pathname.split('/')[1];
   //$("#li").addClass('active');
   //$("#li u").css('display','block');
   //$("#li a[href='"+ getTabName +"']").addClass('active');
   $("a[href='"+ getTabName +"']").parents('li').addClass('active');
   
</script>

</body>
</html>

<%--             <jsp:include page="footer.jsp" /> --%>