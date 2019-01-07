<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="adminHeader.jsp" />


<!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script> -->
<!-- 	  <script src="/js/controller.js"></script> -->
<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" /> -->
<div class="content-area  ">
	<div class="page-header">
<!-- 		<h4 class="page-title">Add Village</h4> -->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
			<li class="breadcrumb-item active" aria-current="page">Price Trend</li>
		</ol>
	</div>
	<div class="row">
		<!-- end col -->
		<div class="col-xl-12">
			<div class="card m-b-20">
				<div class="card-header">
					<h3 class="card-title">New Price Trend</h3>
					
				</div>
				<div class="card-body mb-0">
					<form:form action="savePriceTrend" class="form-horizontal" name="priceTrenForm" modelAttribute="priceTrend">
					    <div class="form-group">
							<div class="row">
								<label class="control-label col-sm-3" for="villageId">Village Name</label>
								<div class="col-sm-5">
									<form:select class="form-control validate" path="villageId" name="villageId" onfocus="removeBorder(this.id)" >
										<form:option value="">-- Select Village --</form:option>
										<form:options items="${villagesList}"/>
										
									</form:select>
								 </div>
							 
							</div>
						</div>
						<div class="form-group ">
							<div class="row">
								<div class="col-md-2">
									<label class="form-label" for="minAmount">Min Price</label>
								</div>
								<div class="col-md-4">
									<form:input type="text" class="form-control validate" name="minAmount" path="minAmount" placeholder="Min Amount" />
								</div>
							</div>
						</div>
						<div class="form-group ">
							<div class="row">
								<div class="col-md-2">
									<label class="form-label" for="maxAmount">Max Price</label>
								</div>
								<div class="col-md-4">
									<form:input type="text" class="form-control validate" name="maxAmount" path="maxAmount" placeholder="Max Amount" />
								</div>
							</div>
						</div>
						<div class="form-group">
						<div class="row">
								<label class="control-label col-sm-3" for="propertyType">Property Type</label>
								<div class="col-sm-5">
									<form:select class="form-control validate"  path="propertyType"  onfocus="removeBorder(this.id)">
									<form:option value="">-- Property Type --</form:option>
									<form:option value="Commercial">Commercial</form:option>
									<form:option value="Residential">Residential</form:option>
									</form:select>
								</div>
							</div></div>
						
						<div class="form-group ">
							<div class="row">
								<div class="col-md-2">
									<label class="form-label" for="priceTrendTime">Date</label>
								</div>
								<div class="col-md-4">
									<form:input type="text" class="form-control validate" name="priceTrendTime" path="priceTrendTime" placeholder="Date" />
								</div>
							</div>
						</div>
						
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
										<h3 class="card-title">Price Trend List</h3>
										
									</div>
									<div class="table-responsive">
										<table id="tableId" class="table card-table table-vcenter text-nowrap table-primary" >
											<thead  class="bg-primary text-white">
												<tr >
													<th class="text-white">Village Name</th>
													<th class="text-white">Proto Type</th>
													<th class="text-white">Min Amount</th>
													<th class="text-white">Max Amount</th>
													<th class="text-white">Date</th>
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
	

	

</div>
<div class="clearfix"></div>
<jsp:include page="adminfooter.jsp" />
<script src="/js/customValidation.js"></script>
<script src="assets/plugins/calendar/jquery.datetimepicker.min.js"></script>
<script src="/js/adminPriceTrend.js"></script>
<script type="text/javascript">



 var listOfVillages = "";
if (listOfVillages != "") {
	displayTable(listOfVillages);
} 
</script>