<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="adminHeader.jsp" />
<!-- <!DOCTYPE HTML>

<html xmlns:th="http://www.thymeleaf.org">
<head>
<title>RealEstate Advisors</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script src="/js/siteController.js"></script>
<script src="/js/site.js"></script>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="/js/jquery.dataTables.min.js"></script>
<script src="angular-datatables.min.js"></script>
<script src="bootstrap.min.js"></script>
<link rel="stylesheet" href="datatables.bootstrap.css">

</head>
<body> -->
<script src="/js/site.js"></script>
	<div class="content-area ">
		<div class="page-header">
<!-- 			<h4 class="page-title">Add Site</h4> -->
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
				<li class="breadcrumb-item active" aria-current="page">Add Site</li>
			</ol>
		</div>
		<div class="row">
			<!-- end col -->
			<div class="col-xl-12">
			<div class="card m-b-20">
				<div class="card-header">

					<h3 class="card-title">Add Site</h3>
						<div class="card-options">
						<a href="#" class="card-options-collapse"
							data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
						<a href="#" class="card-options-remove" data-toggle="card-remove"><i
							class="fe fe-x"></i></a>
						</div>
				</div>
					<div class="card-body mb-0">
						<form:form class="form-horizontal" name="siteForm"  modelAttribute="addSite" action="saveSite">
							<div class="form-group">
								<label class="control-label col-sm-2" for="vId">Village Name</label>
								<div class="col-sm-5">
									<form:select class="form-control" path="villageId" name="vId" >
										<form:option value="">-- Select Village --</form:option>
										<form:options items="${villagesList}"/>
										
									</form:select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="colony">Colony</label>
								<div class="col-sm-5">
									<form:input type="text" class="form-control"  path="colony" placeholder="Enter FirstName" />
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="pinCode">Sq Yd</label>
								<div class="col-sm-5">
									<form:input type="text" class="form-control"  path="sqYd" placeholder="Enter Sq Yd" />
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="price">Price</label>
								<div class="col-sm-5">
									<form:input type="text" class="form-control"  path="price" placeholder="Enter Price"  />
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="propertyType">Property Type</label>
								<div class="col-sm-5">
									<form:input type="text" class="form-control" path="propertyType" placeholder="Enter Property Type"  />
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="listingId">Listing Id</label>
								<div class="col-sm-5">
									<form:input  type="text" class="form-control"  path="listingId" placeholder="Enter Listing Id"  />
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="siteDimensions">Site Dimensions</label>
								<div class="col-sm-5">
									<form:input type="text" class="form-control"  path="siteDimensions" placeholder="Width X Length"  />
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="roadDimensions">Road Dimensions</label>
								<div class="col-sm-5">
									<form:select class="form-control"  path="roadDimensions" placeholder="Road Dimensions"  >
									<form:option value="">-- Road Dimensions --</form:option>
									<form:option value="single">Single</form:option>
									<form:option value="doubleBothRoadDimensions">Double (Both road Dimensions)</form:option>
									</form:select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="roadDimensions">Road facing</label>
								<div class="col-sm-5">
									<form:select class="form-control"  path="roadDimensions" placeholder="Road Dimensions"  >
									<option value="">-- Road facing --</option>
									<option value="singleRoad">Single Road</option>
									<option value="doubleRoad">Double Road (Corner Bit)</option>
									</form:select>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
									<button type="button" class="btn btn-warning waves-effect waves-light" >Reset Form</button>
								</div>
							</div>
						</form:form>
			</div>
			</div>
			</div>
			</div>
			

						<div class="row">
							<div class="col-md-12 col-lg-12">
								<div class="card">
									<div class="card-header">
										<h3 class="card-title">Site List</h3>
										<div class="card-options">
											<a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
											<a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
										</div>
									</div>
									<div class="table-responsive" id="tableDiv">
										<table class="table card-table table-vcenter text-nowrap table-primary" id="dataTableId" >
											<thead  class="bg-primary text-white">
												<tr >
													<th class="text-white">Listing ID</th>
													<th class="text-white">Village</th>
													<th class="text-white">Colony</th>
													<th class="text-white">Sq Yd</th>
													<th class="text-white">Property Type</th>
													<th class="text-white">Options</th>
												</tr>
											</thead>
											<tbody>
												
											</tbody>
										</table>
									</div>
									<!-- table-responsive -->
								</div>
							</div>
						</div>
					

					<!-- 	<div class="col-sm-offset-2 col-sm-10" ng-controller="getcontroller">
		<button id="btn-id" type="button" class="btn btn-primary" ng-click="getfunction()">Get All Customers</button>
		<ul>
        	<li ng-repeat="cust in response">{{cust.firstname + " " + cust.lastname}}</li>
    	</ul>
	</div> -->

				</div>
			</div>
		</div>
		
		<jsp:include page="adminfooter.jsp" />
<script type="text/javascript">

 var listOfSites = ${siteList};
if (listOfSites != "") {
	displayTable(listOfSites);
} 

</script>
		