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
<!-- <link type="text/css" rel="stylesheet" href="css/simplePagination.css"/> -->
<script src="js/jquery.easyPaginate.js"></script>
<style>
/* @media ( min-width : 1200px) {
	.container {
		width: 100%;
	}
} */


.header-section {
	width: 100%;
	height: 71px;
	position: relative;
	background-color: rgba(255, 255, 255, 0.95);
	border-bottom: rgba(221, 221, 221, 0.95) solid 5px;
	z-index: 1000;
}
.yellow {
border-left: 5px solid #ffd500;	
}
.btnyellow {
background:#ffd500 !important;	
}
.btnprimary {
background:#76cbf5;	
}
.yellow1 {
color: #ffd500 !important;	
font-weight:500;
}
.blue1 {
color: #76cbf5 !important;	
font-weight:500;
}
.blue {
border-left: 5px solid #76cbf5;	
}
/* .careerfy-option-btn {
    float: right;
    padding: 8px 17px 8px 17px;
    font-size: 12px;
    color: #333333;
    background-color: #f9f91b;
    text-transform: uppercase;
    line-height: 1;
}
.careerfy-option-btn.careerfy-red {
    background-color: #76cbf5;
} */
.easyPaginateNav a
{
    margin: 0px 22px 10px 0px;
    line-height: 1;
    font-weight: bold;
    background-color: gray;
    color: #ffffff;
    width: 25px;
    height: 20px;
    font-size: 14px;
    color: #ffffff;
    border-radius: 100%;
    text-align: center;
    padding: 12px;
    -webkit-transition: all 0.4s ease-in-out;
    -moz-transition: all 0.4s ease-in-out;
    -ms-transition: all 0.4s ease-in-out;
    -o-transition: all 0.4s ease-in-out;
    transition: all 0.4s ease-in-out;
}
.easyPaginateNav .current
{
    background-color: #13b5ea !important;
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
							<p align="center" >
								<span id="totalSites"> </span> | <span class="resi" id="countOfResidential"> </span> | 
								<span class="comm" id="countOfCommercial"></span>
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
										<a href="#" class="careerfy-click-btn">Select Property Type</a>
									</h2>
									<div class="careerfy-checkbox-toggle">
										<ul class="careerfy-checkbox" id="prototypeUl">
											<li><input type="checkbox" id="Commercial" name="protoTypeCheckBox[]" /> <label
												for="Commercial"><span></span>Commercial</label> <small id="commercialFilterId"></small>
											</li>
											<li><input type="checkbox" id="Residential" name="protoTypeCheckBox[]" /> <label
												for="Residential"><span></span>Residential</label> <small id="residentialFilterId"></small>
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
											<li><input type="checkbox" id="North" name="facing[]" /> 
											<label for="North"><span></span>North</label> <small>10</small></li>
											<li><input type="checkbox" id="South" name="facing[]" /> 
											<label for="South"><span></span>South</label> <small>2</small></li>
											<li><input type="checkbox" id="East" name="facing[]" /> 
											<label for="East"><span></span>East</label> <small>6</small></li>
											<li><input type="checkbox" id="West" name="facing[]" /> 
											<label for="West"><span></span>West</label> <small>4</small></li>

										</ul>
										<a href="#" class="careerfy-seemore">+see more</a>
									</div>
								</div>
								<div
									class="careerfy-search-filter-wrap careerfy-search-filter-toggle">
									<h2>
										<a href="#" class="careerfy-click-btn">Road Dimensions</a>
									</h2>
									<div class="careerfy-checkbox-toggle">
										<ul class="careerfy-checkbox">
											<li><input type="checkbox" id="roadDimensionsSingle" value="1" name="roadDimensions[]" /> 
											<label for="roadDimensionsSingle"><span></span>Single</label> <small id="roadDimention_1"></small></li>
											<li><input type="checkbox" id="roadDimensionsDouble" value="2" name="roadDimensions[]" /> 
											<label for="roadDimensionsDouble"><span></span>Double (Both road dimensions)</label> <small id="roadDimention_2"></small></li>

										</ul>
<!-- 										<a href="#" class="careerfy-seemore">+see more</a> -->
									</div>
								</div>
								<div
									class="careerfy-search-filter-wrap careerfy-search-filter-toggle">
									<h2>
										<a href="#" class="careerfy-click-btn">Road facing</a>
									</h2>
									<div class="careerfy-checkbox-toggle">
										<ul class="careerfy-checkbox">
											<li><input type="checkbox" id="roadFacingSingle" value="1" name="roadFacing[]" /> 
											<label for="roadFacingSingle"><span></span>Single Road</label> <small id="roadFacing_1"></small></li>
											<li><input type="checkbox" id="roadFacingDouble" value="2" name="roadFacing[]" /> 
											<label for="roadFacingDouble"><span></span>Double Road (Corner Bit)</label> <small id="roadFacing_2"></small></li>

										</ul>
<!-- 										<a href="#" class="careerfy-seemore">+see more</a> -->
									</div>
								</div>

								<div
									class="careerfy-search-filter-wrap careerfy-search-filter-toggle">Single
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
								<h2 id="paginationCount"></h2>
							</div>
							<!-- FilterAble -->
							<!-- JobGrid  <%=session.getAttribute("loggedstatus")%> -->

							<div class="careerfy-job careerfy-joblisting-classic">
								<input type="hidden" name="loginCheck">

								<ul class="careerfy-row" id="ulSiteList">
									
								</ul>
								<ul class="careerfy-row" id="paginationSite">  </ul>
							</div>
							<!-- Pagination -->
						<!-- 	<div class="careerfy-pagination-blog">
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
							</div> -->
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
<script src="script/bootstrap.js"></script>

<a href="#" class="back-to-top"></a>
<!--End-->

<!-- <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script> -->
<script type="text/javascript" src="js/jquery-easing-1.3.js"></script>
<!-- <!--Easy Pagination--> -->
<!-- <script src="http://code.jquery.com/jquery-latest.min.js"></script> -->

<!-- <script src="jquery.easyPaginate.js" type="text/javascript"></script> -->
<!-- <script src="js/pagination.min.js"></script>
<script src="js/jquery.simplePagination.js"></script> -->
<script src="js/jquery.twbsPagination.min.js"></script>

<!--Flexy Menu Script-->
<script type="text/javascript" src="js/flexy-menu.js"></script>

<!--LayerSlider Script-->
<script src="layerslider/jQuery/jquery-transit-modified.js" type="text/javascript"></script>
<script src="layerslider/js/layerslider.transitions.js" type="text/javascript"></script>
<script src="layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>

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
			
			
			$("#villageList").append('<li><input type="checkbox" id="'+item[0]+'" name="villageCheckBox[]" /><label for="'+item[0]+'"><span></span>'+item[1]+'</label><small>'+item[2]+'</small></li>');
			
		});
		var cls="";
		var buttoncls = "";
		var yellow1 = "" ;
		$.each(AllSiteList, function(i, item) {
			totalSites = AllSiteList.length;
			
			if(item[0].propertyType == "Commercial"){
				countOfCommercial++;
				cls ="yellow";
				yellow1= "yellow1"
				buttoncls = "btnyellow";
				
			}else{
				cls="blue";
				yellow1 = "blue1"
				buttoncls = "btnprimary";
				countOfResidential++;
				}
			
			if(item[0].siteFacing == "North"){FilterCountOfNorth++;}
			if(item[0].siteFacing == "South"){FilterCountOfSouth++;}
			if(item[0].siteFacing == "East"){FilterCountOfEast++;}
			if(item[0].siteFacing == "West"){FilterCountOfWest++;}
			if(item[0].roadDimensions == "1"){roadDimentionCountOfOne++;}else{roadDimentionCountOfTwo++;}
			if(item[0].roadFacing == "1"){roadFacingCountOfOne++; }else{roadFacingCountOfTwo++; }
			$("#ulSiteList").append('<li class="careerfy-column-12 liTag" id="page'+ (i+1) +'">'
                    	+'<div class="careerfy-joblisting-classic-wrap '+cls+' ">'
                    	+'<div class="careerfy-joblisting-text">'
                        +'<div class="careerfy-list-option">'
                        +'<h2><a href="#">'+  item[0].sqYd +'Sq.Yd - <i class="fa fa-rupee"></i>'+  item[0].price +'</a>'
                        +' <span>Listing ID: "'+  item[0].listingId +'"</span></h2>'
                        +'<ul>'
                        +' <li><a href="#" class="'+yellow1+'">@"'+item[0].propertyType+'"</a></li>'
                        +'<li><i class="careerfy-icon careerfy-maps-and-flags"></i> <strong>"'+  item[0].colony +'" Colony</strong></li>'
                        +'<li><i class="careerfy-icon careerfy-filter-tool-black-shape"></i>'+  item[0].siteFacing +'</li>'

                        +'<p class="italic">03 Nov 2018</p>'
                        +'</ul>'
                        +'</div>'
                        +'<div class="careerfy-job-userlist">'
                        
                        +'<button id="'+item[0].id+'" onclick="iAmIntrested('+item[0].id+')" class="careerfy-option-btn '+buttoncls+'">I am Interested</button>'

                        +'</div>'
                        +'<div class="clearfix"></div>'
                        +'</div>'
                        +'</div>'
                        +'</li>');
			
		});
		
		$("#countOfCommercial").text("Commercial : "+""+countOfCommercial);
		$("#countOfResidential").text("Residential : "+""+countOfResidential);
		$("#totalSites").text("Total : "+""+totalSites);
		$("#paginationCount").text("Showing "+totalSites+" of " +totalSites+" results");
		$("#commercialFilterId").text(countOfCommercial);
		$("#residentialFilterId").text(countOfResidential);
		$("#roadFacing_1").text(roadFacingCountOfOne);
		$("#roadFacing_2").text(roadFacingCountOfTwo);
		$("#roadDimention_1").text(roadDimentionCountOfOne);
		$("#roadDimention_2").text(roadDimentionCountOfTwo);
		
		
				var values = null;
				var protoType = null;
				var facing = null;
				var roadDimensions=null;
				var roadFacing=null;
				$("input[name='villageCheckBox[]']").change(function () {
									values=[];
									$('input[name="villageCheckBox[]"]').each(function() {
										if(this.checked){
										values.push($(this).attr('id'));
										}
									});
									
									if(values != null|| protoType != null || facing != null || roadFacing != null || roadDimensions !=null ){
										siteFiterByVillage(values,protoType,facing,roadFacing,roadDimensions);
										}else{
											
											window.location.href='?';
										}
									
					});
				
				
				$("input[name='protoTypeCheckBox[]']").change(function () {
					protoType=[];
					$('input[name="protoTypeCheckBox[]"]').each(function() {
						if(this.checked){
							protoType.push($(this).attr('id'));
						}
					});
					
					if(values != null || protoType != null || facing != null || roadFacing != null || roadDimensions !=null ){
						siteFiterByVillage(values,protoType,facing,roadFacing,roadDimensions);
						}else{
							
							window.location.href='?';
						}
				});
				$("input[name='facing[]']").change(function () {
					facing =[];
					$('input[name="facing[]"]').each(function() {
						if(this.checked){
							facing.push($(this).attr('id'));
						}
					});
					
					if(values != null || protoType != null || facing != null || roadFacing != null || roadDimensions !=null ){
						siteFiterByVillage(values,protoType,facing,roadFacing,roadDimensions);
						}else{
							
							window.location.href='?';
						}
				});
				
				$("input[name='roadDimensions[]']").change(function () {
					roadDimensions =[];
					$('input[name="roadDimensions[]"]').each(function() {
						if(this.checked){
							roadDimensions.push($(this).val());
						}
					});
					
					if(values != null || protoType != null || facing != null || roadFacing != null || roadDimensions !=null){
						siteFiterByVillage(values,protoType,facing,roadFacing,roadDimensions);
						}else{
							
							window.location.href='?';
						}
				});
				
				$("input[name='roadFacing[]']").change(function () {
					roadFacing =[];
					$('input[name="roadFacing[]"]').each(function() {
						if(this.checked){
							roadFacing.push($(this).val());
						}
					});
					
					if(values != null || protoType != null || facing != null  || roadFacing != null || roadDimensions !=null ){
						siteFiterByVillage(values,protoType,facing,roadFacing,roadDimensions);
						}else{
							
							window.location.href='?';
						}
				});
				
			/* 	$('#paginationSite').twbsPagination({
					totalPages: totalSites,
					// the current page that show on start
					startPage: 1,
					
					
					
					// maximum visible pages
					visiblePages: 5,
					
					initiateStartPageClick: true,
					
					// template for pagination links
					href: false,
					
					// variable name in href template for page number
					hrefVariable: '{{number}}',
					
					// Text labels
					first: 'First',
					prev: 'Previous',
					next: 'Next',
					last: 'Last',
					
					// carousel-style pagination
					loop: false,
					
					// callback function
					onPageClick: function (event, page) {
						$('.page-active').removeClass('page-active');
					  $('#page'+page).addClass('page-active');
					},
					
					// pagination Classes
					paginationClass: 'pagination',
					nextClass: 'next',
					prevClass: 'prev',
					lastClass: 'last',
					firstClass: 'first',
					pageClass: 'page',
					activeClass: 'active',
					disabledClass: 'disabled'
					
					});	 */
				 $('#ulSiteList').easyPaginate({
				        paginateElement: 'li.liTag',
				        elementsPerPage: 10,
				        effect: 'climb'
				    });
	
   });
   /* $('#ulSiteList').pagination({
	   
	   items: 100,
       itemsOnPage: 10,
       cssStyle: 'light-theme'
	   /*  paginateElement: 'li',
	    elementsPerPage: 1,
	    effect: 'climb' 
	    });	*/
	    
	   
	    var totalSites=0;
	    		

	 
   var countOfCommercial=0;
   var countOfResidential=0;
  
   var roadFacingCountOfOne=0;
   var roadFacingCountOfTwo = 0;
   var roadDimentionCountOfOne = 0;
   var roadDimentionCountOfTwo = 0;
   var FilterCountOfNorth = 0;
   var FilterCountOfWest = 0;
   var FilterCountOfEast = 0;
   var FilterCountOfSouth = 0;
   function siteFiterByVillage(values,protoType,facing,roadFacing,roadDimensions){
	   
	   
	   $.ajax({
			type : "POST",
			async: false,
			url : "siteFilterByVillage",
			data : {villageArry:values,protoTypeArry:protoType,facingArry:facing,roadFacingArry:roadFacing,roadDimensionsArry:roadDimensions},
			dataType : "json",
			success : function(response) {
				$("#ulSiteList").html('');
				 countOfCommercial=0;
				 countOfResidential=0;
				   totalSites=0;
				   roadFacingCountOfOne=0;
				   roadFacingCountOfTwo = 0;
				   roadDimentionCountOfOne = 0;
				   roadDimentionCountOfTwo = 0;
				   FilterCountOfNorth = 0;
				   FilterCountOfWest = 0;
				   FilterCountOfEast = 0;
				   FilterCountOfSouth = 0;
				$.each(response, function(i, item) {
					
					
					if(item[0].propertyType == "Commercial"){
						countOfCommercial++;
						cls =" yellow";
						yellow1 = "yellow1"
						buttoncls="btnyellow";
					}else{
						cls="blue";
						yellow1 = "blue1"
						buttoncls="btnprimary";
						countOfResidential++;
					}
					if(item[0].siteFacing == "North"){FilterCountOfNorth++;}
					if(item[0].siteFacing == "South"){FilterCountOfSouth++;}
					if(item[0].siteFacing == "East"){FilterCountOfEast++;}
					if(item[0].siteFacing == "West"){FilterCountOfWest++;}
					if(item[0].roadDimensions == "1"){roadDimentionCountOfOne++;}else{roadDimentionCountOfTwo++;}
					if(item[0].roadFacing == "1"){roadFacingCountOfOne++; }else{roadFacingCountOfTwo++; }
					$("#ulSiteList").append('<li class="careerfy-column-12">'
		                    	+'<div class="careerfy-joblisting-classic-wrap '+cls+'">'
		                    	+'<div class="careerfy-joblisting-text">'
		                        +'<div class="careerfy-list-option">'
		                        +'<h2><a href="#">'+  item[0].sqYd +'Sq.Yd - <i class="fa fa-rupee"></i>'+  item[0].price +'</a>'
		                        +' <span>Listing ID: "'+  item[0].listingId +'"</span></h2>'
		                        +'<ul>'
		                        +' <li><a href="#" class="'+yellow1+'">@"'+item[0].propertyType+'"</a></li>'
		                        +'<li><i class="careerfy-icon careerfy-maps-and-flags"></i> <strong>"'+  item[0].colony +'" Colony</strong></li>'
		                        +'<li><i class="careerfy-icon careerfy-filter-tool-black-shape"></i>'+  item[0].siteFacing +'</li>'
		                        +'<p class="italic">03 Nov 2018</p>'
		                        +'</ul>'
		                        +'</div>'
		                        +'<div class="careerfy-job-userlist">'
		                        
		                        +'<button id="'+item[0].id+'" onclick="iAmIntrested('+item[0].id+')" class="careerfy-option-btn '+buttoncls+'">I am Interested</button>'
		                        +'</div>'
		                        +'<div class="clearfix"></div>'
		                        +'</div>'
		                        +'</div>'
		                        +'</li>');
					
				});
				totalSites = response.length;
				$("#countOfCommercial").text("Commercial : "+ countOfCommercial);
				$("#countOfResidential").text("Residential : "+countOfResidential);
				$("#totalSites").text("Total : "+totalSites);
				$("#paginationCount").text("Showing "+totalSites+" of " +totalSites+" results");
				$("#commercialFilterId").text(countOfCommercial);
				$("#residentialFilterId").text(countOfResidential);
				$("#roadFacing_1").text(roadFacingCountOfOne);
				$("#roadFacing_2").text(roadFacingCountOfTwo);
				$("#roadDimention_1").text(roadDimentionCountOfOne);
				$("#roadDimention_2").text(roadDimentionCountOfTwo);
				}
			
			
		});
	   
	   
   }
   function iAmIntrested(id){
	   var siteId = id;
	  
	   if(login){
		   $.ajax({
				type : "POST",
				url : "userIntrestedSite",
				data :"id="+siteId,
				dataType : "json",
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
   
   
var isClick = 'Yes'
</script>

</body>
</html>

<%--             <jsp:include page="footer.jsp" /> --%>