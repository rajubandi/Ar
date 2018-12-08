<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<div class="clearfix"></div>
<ol class="breadcrumb">
	<li><a href="#">Home</a></li>
	<li>Your Details</li>
</ol>
<div class="clearfix"></div>
<div class="container" style="height:auto;">
	<!-- <div class="row">
			<div class="col-md-12" style="background-color:  white !important; padding-top: 15PX;">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4>Employee List</h4>
						<div class="options">
							<a href="javascript:;" class="panel-collapse"><i class="fa fa-chevron-down"></i></a>
						</div>
					</div>
					<div class="panel-body collapse in">
					<input type="checkbox" class="form-check-input" onclick="inactiveData();" id="inActive"> <label class="form-check-label">Show Inactive List</label>
						<div class="table-responsive" id="tableId">
							<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered datatables" id="example">
								<thead><tr><th>Employee ID</th><th>User Name</th><th>firstname</th><th>Last Name</th> <th>Department</th><th>Designation</th><th></th></tr></thead>
								<tbody></tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div> -->
	<!-- 		<a class="btn btn-info btn-lg"  onclick="PopupFillingStation();">Add Gas</a><br><br> -->
	<div class="row" id="moveTo">
		<div class="col-md-12 col-sm-12">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4>Your Details</h4>
				</div>

				<form:form modelAttribute="editProfile" action="editProfile" class="form-horizontal " method="Post">
					<form:hidden path="id" />
					<div class="col-lg-8">
									<div class="card-header">
										<h3 class="card-title">Edit Profile</h3>
										<div class="card-options">
											<a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
											<a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
										</div>
									</div>
									<div class="card-body">
										<div class="row">
											<div class="col-md-5">
												<div class="form-group">
													<label class="form-label">Company</label>
													<input type="text" class="form-control"  placeholder="Company" >
												</div>
											</div>
											<div class="col-sm-6 col-md-3">
												<div class="form-group">
													<label class="form-label">Username</label>
													<input type="text" class="form-control" placeholder="Username" >
												</div>
											</div>
											<div class="col-sm-6 col-md-4">
												<div class="form-group">
													<label class="form-label">Email address</label>
													<input type="email" class="form-control" placeholder="Email">
												</div>
											</div>
											<div class="col-sm-6 col-md-6">
												<div class="form-group">
													<label class="form-label">First Name</label>
													<input type="text" class="form-control" placeholder="Company">
												</div>
											</div>
											<div class="col-sm-6 col-md-6">
												<div class="form-group">
													<label class="form-label">Last Name</label>
													<input type="text" class="form-control" placeholder="Last Name">
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<label class="form-label">Address</label>
													<input type="text" class="form-control" placeholder="Home Address" >
												</div>
											</div>
											<div class="col-sm-6 col-md-4">
												<div class="form-group">
													<label class="form-label">City</label>
													<input type="text" class="form-control" placeholder="City" >
												</div>
											</div>
											<div class="col-sm-6 col-md-3">
												<div class="form-group">
													<label class="form-label">Postal Code</label>
													<input type="number" class="form-control" placeholder="ZIP Code">
												</div>
											</div>
											<div class="col-md-5">
												<div class="form-group">
													<label class="form-label">Country</label>
													<select class="form-control custom-select">
														<option value="0">--Select--</option>
														<option value="1">Germany</option>
														<option value="2">Canada</option>
														<option value="3">Usa</option>
														<option value="4">Aus</option>
													</select>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group mb-0">
													<label class="form-label">About Me</label>
													<textarea rows="5" class="form-control" placeholder="Enter About your description"></textarea>
												</div>
											</div>
										</div>
									</div>
									<div class="card-footer text-right">
										<button type="submit" class="btn btn-primary">Update Profile</button>
									</div>
							</div>
					<div class="col-md-6">
						<br>
						<div class="form-group">
							<label class="col-md-3 control-label no-padding-right">First Name</label>
							<div class="col-md-6">
								<form:input path="firstName" class="form-control validate onlyCharacters" placeholder="Enter First Name" />
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<br>
						<div class="form-group">
							<label class="col-md-3 control-label no-padding-right">Last Name</label>
							<div class="col-md-6">
								<form:input path="lastName" class="form-control validate onlyCharacters" placeholder="Enter Last Name" />
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="form-group">
							<label class="col-md-3 control-label no-padding-right">Mobile</label>
							<div class="col-md-6">
								<form:input path="mobileNumber" class="form-control validate numericOnly" placeholder="Enter Mobile Number" />
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="col-md-3 control-label no-padding-right">Email</label>
							<div class="col-md-6">
								<form:input path="email" class="form-control" placeholder="Enter Email" />
							</div>
						</div>
					</div>
					<%-- <div class="col-md-6">
								<div class="form-group">
									<label class="col-md-3 control-label no-padding-right">Designation</label>
									<div class="col-md-6">
										<form:select path="designation" class="form-control " >
											<form:option value="">-- Select Designation --</form:option>
											<form:options items="${roles}"/>
										</form:select>
									</div>
								</div></div>
								<div class="col-md-6">
								<div class="form-group">
									<label class="col-md-3 control-label no-padding-right">Department</label>
									<div class="col-md-6">
										<form:select path ="department" class="form-control validate" selected="selected" onfocus="removeBorder(this.id)">
											<form:option value="">-- Select Department --</form:option>
								     		<form:options  items="${departments}"/>
										</form:select>
									</div>
								</div></div>
								<div class="col-md-6">
								<div class="form-group">
									<label class="col-md-3 control-label no-padding-right">ReportTo</label>
									<div class="col-md-6">
										<form:select path ="reportto" class="form-control" onfocus="removeBorder(this.id)">
											<form:option value="">-- Select Report to --</form:option>
								     		<form:options items="${userNames}"/>
										</form:select>
									</div>
								</div></div> --%>
					<div class="panel-footer">
						<div class="row">

							<div class="col-sm-6">
								<div class="btn-toolbar text-center">
									<h4>
										<a href="changePassword">Change Password</a>
									</h4>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="btn-toolbar">
									<input type="submit" id="submit1" value="Submit"
										class="btn-primary btn" /> <input type="reset" value="Reset"
										class="btn-danger btn cancel" />
								</div>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>
<!-- container -->

<script type="text/javascript">



	$("#submit1").val("Update");


 $("#pageName").text("Your Details");
//".employee").addClass("active");

</script>
<jsp:include page="footer.jsp" />