<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>

<html  xmlns:th="http://www.thymeleaf.org">
<head>
	  <title>RealEstate Advisors</title>
	  <meta charset="utf-8" />
	  <meta name="viewport" content="width=device-width, initial-scale=1" />
	  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
	  <script src="/js/siteController.js"></script>
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	  <script src="/js/jquery.dataTables.min.js"></script>
  <script src="angular-datatables.min.js"></script>
  <script src="bootstrap.min.js"></script>
  <link rel="stylesheet" href="datatables.bootstrap.css">
	  
</head>
<body>

<div class="container" ng-app="app" >

	<h3 style="color:blue">Add New Site</h3>
	
	<div ng-controller="saveSite">
		<form class="form-horizontal" name="siteForm" id="customerForm" ng-submit="siteForm()">
		<div class="form-group">
				<label class="control-label col-sm-2" for="vId">Village Name:</label>
				<div class="col-sm-5">
					<select class="form-control" id="villageId" ng-options="k as v for (k, v) in villageId" name="vId" ng-model="site.vId">
					<option value="">-- Select Village --</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="colony">Colony:</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="colony" id="colony" placeholder="Enter FirstName" ng-model="site.colony"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pinCode">Sq Yd:</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="sqYd" id="sqYd" placeholder="Enter Sq Yd" ng-model="site.sqYd"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="price">Price:</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="price" id="price" placeholder="Enter Price" ng-model="site.price"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="propertyType">Property Type:</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="propertyType" id="propertyType" placeholder="Enter Property Type" ng-model="site.propertyType"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="listingId">Listing Id:</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="listingId" id="listingId" placeholder="Enter Listing Id" ng-model="site.listingId"/>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Submit</button>
					 <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="siteForm.$pristine">Reset Form</button>
				</div>
			</div>
		</form>

		
		
		<div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">List of Sites </span></div>
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-hover" datatable="ng" dt-options="vm.dtOptions">
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
                    <tr ng-repeat="u in siteTable">
                        <td>{{u.listingId}}</td>
                        <td>{{u.colony}}</td>
                        <td>{{u.colony}}</td>
                        <td>{{u.sqYd}}</td>
                        <td>{{u.price}}</td>
                        <td>{{u.propertyType}}</td>
                        <td><button type="button" ng-click="editSite({{u.id}})" class="btn btn-success custom-width">Edit</button></td>
                        <td><button type="button" ng-click="removeSite({{u.id}})" class="btn btn-danger custom-width">Remove</button></td>
                    </tr>
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
</body>
</html>