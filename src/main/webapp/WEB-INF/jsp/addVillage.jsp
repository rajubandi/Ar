<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="adminHeader.jsp" />
<!-- <!DOCTYPE HTML>

<html  xmlns:th="http://www.thymeleaf.org">
<head>
	  <title>RealEstate Advisors</title>
	  <meta charset="utf-8" />
	  <meta name="viewport" content="width=device-width, initial-scale=1" />
	  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
	  <script src="/js/controller.js"></script>
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	  
</head>
<body> -->
<script src="js/addVillage.js"></script>

<!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script> -->
<!-- 	  <script src="/js/controller.js"></script> -->
<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" /> -->
<div class="content-area  ">
	<div class="page-header">
<!-- 		<h4 class="page-title">Add Village</h4> -->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
			<li class="breadcrumb-item active" aria-current="page">Add
				Village</li>
		</ol>
	</div>
	<div class="row" id="moveTo">
		<!-- end col -->
		<div class="col-xl-12">
			<div class="card m-b-20">
				<div class="card-header">
					<h3 class="card-title">Add Village</h3>
					<!-- <div class="card-options">
						<a href="#" class="card-options-collapse"
							data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
						<a href="#" class="card-options-remove" data-toggle="card-remove"><i
							class="fe fe-x"></i></a>
					</div> -->
				</div>
				<div class="card-body mb-0" >
					<form:form action="saveVillage" class="form-horizontal"
						name="customerForm" modelAttribute="village">
						<div class="form-group ">
							<div class="row" >
								<div class="col-md-2">
									<label class="form-label" for="vName">Village Name:</label>
								</div>
								<div class="col-md-4">
									<form:input type="hidden" path="id"/>
									<form:input type="text" class="form-control validate" name="vName" path="vName" placeholder="Enter Name" />
								</div>
							</div>
						</div>
						<div class="form-group ">
							<div class="row">
								<div class="col-md-2">
									<label class="form-label" for="pinCode">Pin Code:</label>
								</div>
								<div class="col-md-4">
									<form:input type="text" class="form-control validate" name="pinCode" path="pinCode" placeholder="Enter LastName" />
								</div>
							</div>
						</div>

						<!-- <div class="form-group row justify-content-end">
												<div class="col-md-8 float-right">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input">
														<span class="custom-control-label text-dark">I agree</span>
													</label>
												</div>
											</div> -->
						<div class="form-group mb-0 row justify-content-end">
							<div class="col-md-8 float-right">
								<button type="submit" id="submit1" class="btn btn-primary waves-effect waves-light">Add</button>
								<button type="button" class="btn btn-warning waves-effect waves-light cancel" >Reset</button>
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
										<h3 class="card-title">Village List</h3>
										<!-- <div class="card-options">
											<a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
											<a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
										</div> -->
									</div>
									<div class="table-responsive">
										<table id="tableId" class="table card-table table-vcenter text-nowrap table-primary" >
											<thead  class="bg-primary text-white">
												<tr >
													<th class="text-white">Village Name</th>
													<th class="text-white">Pincode</th>
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
	<!-- <div ng-controller="saveVillage">
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

	
	</div> -->

	<!-- <div class="col-sm-offset-2 col-sm-10" ng-controller="getcontroller">
		<button id="btn-id" type="button" class="btn btn-primary" ng-click="getfunction()">Get All Customers</button>
		<ul>
        	<li ng-repeat="cust in response">{{cust.firstname + " " + cust.lastname}}</li>
    	</ul>
	</div> -->

</div>
<c:if test="${not empty msg}">


</c:if>
<div class="clearfix"></div>
<jsp:include page="adminfooter.jsp" />
<script src="js/customValidation.js"></script>
<script type="text/javascript">



 var listOfVillages = ${villagesList};
if (listOfVillages != "") {
	displayTable(listOfVillages);
} 
</script>