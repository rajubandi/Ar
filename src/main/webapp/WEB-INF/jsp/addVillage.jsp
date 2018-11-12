<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>

<html  xmlns:th="http://www.thymeleaf.org">
<head>
	  <title>RealEstate Advisors</title>
	  <meta charset="utf-8" />
	  <meta name="viewport" content="width=device-width, initial-scale=1" />
	  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
	  <script src="/js/controller.js"></script>
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	  
</head>
<body>

<div class="container" ng-app="app">

	<h3 style="color:blue">Add Village</h3>
	
	<div ng-controller="saveVillage">
		<form class="form-horizontal" name="customerForm" ng-submit="submitForm()">
			<div class="form-group">
				<label class="control-label col-sm-2" for="vName">Village Name:</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="vName" id="vName" placeholder="Enter FirstName" ng-model="vName"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pinCode">Pin Code:</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="pinCode" id="pinCode" placeholder="Enter LastName" ng-model="pinCode"/>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Submit</button>
				</div>
			</div>
		</form>

	
	</div>
	
	<!-- <div class="col-sm-offset-2 col-sm-10" ng-controller="getcontroller">
		<button id="btn-id" type="button" class="btn btn-primary" ng-click="getfunction()">Get All Customers</button>
		<ul>
        	<li ng-repeat="cust in response">{{cust.firstname + " " + cust.lastname}}</li>
    	</ul>
	</div> -->
	
</div>
</body>
</html>