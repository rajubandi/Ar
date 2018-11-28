<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="adminHeader.jsp" />
<!DOCTYPE HTML>

<html xmlns:th="http://www.thymeleaf.org">
<head>
<title>RealEstate Advisors</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script src="/js/siteController.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="/js/jquery.dataTables.min.js"></script>
<script src="angular-datatables.min.js"></script>
<script src="bootstrap.min.js"></script>
<link rel="stylesheet" href="datatables.bootstrap.css">

</head>
<body>
	<div class="content-area ">
		<div class="page-header">
			<h4 class="page-title">Add Village</h4>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
				<li class="breadcrumb-item active" aria-current="page">Add Village</li>
			</ol>
		</div>
		<div class="row">
			<!-- end col -->
			<div class="col-xl-12">
				<div class="container">

					<h3 style="color: blue">Add New Site</h3>

					<div >
						<form:form class="form-horizontal" name="siteForm"  modelAttribute="customerForm" action="addSite">
							<div class="form-group">
								<label class="control-label col-sm-2" for="vId">Village Name:</label>
								<div class="col-sm-5">
									<form:select class="form-control" path="villageId" name="vId" >
										<form:option value="">-- Select Village --</form:option>
										<form:options>${villagesList}</form:options>
									</form:select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="colony">Colony:</label>
								<div class="col-sm-5">
									<form:input type="text" class="form-control" name="colony" path="colony" placeholder="Enter FirstName" />
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="pinCode">Sq	Yd:</label>
								<div class="col-sm-5">
									<form:input type="text" class="form-control" name="sqYd" path="sqYd" placeholder="Enter Sq Yd" />
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="price">Price:</label>
								<div class="col-sm-5">
									<form:input type="text" class="form-control" name="price" path="price" placeholder="Enter Price"  />
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="propertyType">Property Type:</label>
								<div class="col-sm-5">
									<form:input type="text" class="form-control" name="propertyType" path="propertyType" placeholder="Enter Property Type"  />
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-2" for="listingId">Listing Id:</label>
								<div class="col-sm-5">
									<form:input type="text" class="form-control" name="listingId" path="listingId" placeholder="Enter Listing Id"  />
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-default">Submit</button>
									<button type="button" class="btn btn-warning btn-sm" >Reset Form</button>
								</div>
							</div>
						</form:form>



						<div class="panel panel-default">
							<!-- Default panel contents -->
							<div class="panel-heading">
								<span class="lead">List of Sites </span>
							</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-hover">
										<thead>
											<tr>
												<th>Listing ID</th>
												<th>Village</th>
												<th>Colony</th>
												<th>Sq Yd</th>
												<th>Price</th>
												<th>Property Type</th>
												<th width="100"></th>
												<th width="100"></th>
											</tr>
										</thead>
										<tbody>
											
										</tbody>
									</table>
								</div>
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
		<>
		<jsp:include page="adminfooter.jsp" />