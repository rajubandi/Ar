<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="adminHeader.jsp" />
<div class=" content-area ">
	<div class="page-header">
<!-- 		<h4 class="page-title">Dashboard</h4> -->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
			<li class="breadcrumb-item active" aria-current="page">Dashboard</li>
		</ol>
	</div>

	<div class="row">
		<div class="col-sm-12 col-lg-4">
			<div class="card overflow-hidden">
				<div class="card-header">
					<h3 class="card-title">No of intrested Received</h3>
					<div class="card-options">
						<a class="btn btn-sm btn-primary" href="#">View</a>
					</div>
				</div>
				<div class="card-body ">

					<small class="h6">Today Received </small>
					<div class="text-dark count mt-0 font-30">6,525</div>

					<div class="progress progress-sm mt-0 mb-2">
						<div class="progress-bar bg-success w-35" role="progressbar"></div>
					</div>
					<div class="">
						<i class="fa fa-caret-up text-green"></i> 10% increases
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-12 col-lg-4">
			<div class="card overflow-hidden">
				<div class="card-header">
					<h3 class="card-title">No of Clients</h3>
					<div class="card-options">
						<a class="btn btn-sm btn-primary" href="#">View</a>
					</div>
				</div>
				<div class="card-body ">

					<small class="h6">Today Clients</small>
					<div class="text-dark count mt-0 font-30">3,897</div>

					<div class="progress progress-sm mt-0 mb-2">
						<div class="progress-bar bg-primary w-55" role="progressbar"></div>
					</div>
					<div class="">
						<i class="fa fa-caret-up text-green"></i> 10% increases
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-12 col-lg-4">
			<div class="card overflow-hidden">
				<div class="card-header">
					<h3 class="card-title">Today Sales</h3>
					<div class="card-options">
						<a class="btn btn-sm btn-primary" href="#">View</a>
					</div>
				</div>
				<div class="card-body ">

					<small class="h6">Sales</small>
					<div class="text-dark count mt-0 font-30">4,256</div>

					<div class="progress progress-sm mt-0 mb-2">
						<div class="progress-bar bg-danger w-15" role="progressbar"></div>
					</div>
					<div class="">
						<i class="fa fa-caret-down text-danger"></i> 20% decreases
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- <div class="row">
		<div class="col-sm-12">
			<div class="card ">
				<div class="card-header">
					<h3 class="card-title">Yearly Sales</h3>
					<div class="card-options">
						<a href="#" class="card-options-collapse"
							data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
						<a href="#" class="card-options-remove" data-toggle="card-remove"><i
							class="fe fe-x"></i></a>
					</div>
				</div>
				<div class="card-body">
					<div class="text-center">
						<ul class="legend align-items-center ">
							<li><span class="legend-dots bg-primary"></span>Sales<span
								class="ml-2 float-right"></span></li>
							<li><span class="legend-dots bg-pink"></span>Profit<span
								class="ml-2 float-right"></span></li>
						</ul>
					</div>
					<div id="echart1" class="chartsh dropshadow"></div>
				</div>
			</div>
		</div>
	</div> -->
	<!-- <div class="row row-deck">
		<div class="col-lg-6 col-xl-4 col-sm-12">
			<div class="card ">
				<div class="card-header">
					<div class="card-title">Browser Status</div>
					<div class="card-options">
						<a href="#" class="card-options-collapse"
							data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
						<a href="#" class="card-options-remove" data-toggle="card-remove"><i
							class="fe fe-x"></i></a>
					</div>
				</div>
				<div class="card-body text-center">
					<canvas class="canvasDoughnut dropshadow" width="200" height="220"></canvas>
				</div>
			</div>
		</div>
		<div class="col-lg-6 col-xl-8 col-sm-12">
			<div class="card ">
				<div class="card-header">
					<div class="card-title">Our location</div>
					<div class="card-options">
						<a href="#" class="card-options-collapse"
							data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
						<a href="#" class="card-options-remove" data-toggle="card-remove"><i
							class="fe fe-x"></i></a>
					</div>
				</div>
				<div class="card-body">
					<div id="world-map-gdp" class="h-220"></div>
				</div>
			</div>
		</div>
	</div> -->

	<!-- <div class="row">
		<div class="col-lg-12">
			<div class="card">
				<div class="card-header">
					<div class="card-title">Recent Sales</div>
					<div class="card-options">
						<a href="#" class="card-options-collapse"
							data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
						<a href="#" class="card-options-remove" data-toggle="card-remove"><i
							class="fe fe-x"></i></a>
					</div>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered border mb-0 align-items-center">
							<thead>
								<tr>
									<th>Id</th>
									<th>Product</th>
									<th>Price</th>
									<th>Date</th>
									<th>Status</th>
									<th>Progress</th>
									<th>Sales</th>
									<th>Earned</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>#675</td>

									<td>
										<p class="mb-0">Admin Template</p>
									</td>
									<td class="font-weight-semibold">$46K</td>
									<td>Sep 02, 2018</td>
									<td><span class="badge badge-success">Sale</span></td>
									<td class="text-green"><i class="fa fa-arrow-up"></i> 23%</td>
									<td>987</td>
									<td class="font-weight-semibold">$46K</td>
								</tr>
								<tr>
									<td>#789</td>

									<td>
										<p class="mb-0">Beauty Template</p>
									</td>
									<td class="font-weight-semibold">$18K</td>
									<td>Sep 10, 2018</td>
									<td><span class="badge badge-primary">Extended</span></td>
									<td class="text-blue"><i class="fa fa-arrow-up"></i> 12%</td>
									<td>678</td>
									<td class="font-weight-semibold">$18K</td>
								</tr>
								<tr>
									<td>#234</td>

									<td>
										<p class="mb-0">Hosting Template</p>
									</td>
									<td class="font-weight-semibold">$21K</td>
									<td>Sep 18, 2018</td>
									<td><span class="badge badge-warning">Multiple</span></td>
									<td class="text-pink"><i class="fa fa-arrow-down"></i> 07%</td>
									<td>432</td>
									<td class="font-weight-semibold">$25K</td>
								</tr>
								<tr>
									<td>#234</td>

									<td>
										<p class="mb-0">Business Template</p>
									</td>
									<td class="font-weight-semibold">$15K</td>
									<td>Sep 22, 2018</td>
									<td><span class="badge badge-danger">Tax</span></td>
									<td class="text-yellow"><i class="fa fa-arrow-up"></i> 25%</td>
									<td>285</td>
									<td class="font-weight-semibold">$20K</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div> -->
	<!-- <div class="row row-deck">
		<div class="col-lg-8 col-sm-12">
			<div class="card ">
				<div class="card-header">
					<div class="card-title">Browsing Activity</div>
					<div class="card-options">
						<a href="#" class="card-options-collapse"
							data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
						<a href="#" class="card-options-remove" data-toggle="card-remove"><i
							class="fe fe-x"></i></a>
					</div>
				</div>
				<div class="card-body p-4">
					<div class="chats-wrap">
						<div class="chat-details p-3">
							<h6 class="mb-0">
								<span class="font-weight-normal">Male</span> <span
									class="float-right p-1">33%</span>
							</h6>
							<div class="progress progress-md mt-3">
								<div
									class="progress-bar progress-bar-striped progress-bar-animated bg-success w-35"></div>
							</div>
						</div>
						<div class="chat-details p-3">
							<h6 class="mb-0">
								<span class="font-weight-normal">Female</span> <span
									class="float-right p-1">76%</span>
							</h6>
							<div class="progress progress-md mt-3">
								<div
									class="progress-bar progress-bar-striped progress-bar-animated bg-primary w-75"></div>
							</div>
						</div>
						<div class="chat-details p-3">
							<h6 class="mb-0">
								<span class="font-weight-normal">Students</span> <span
									class="float-right p-1">65%</span>
							</h6>
							<div class="progress progress-md mt-3">
								<div
									class="progress-bar progress-bar-striped progress-bar-animated bg-pink w-65"></div>
							</div>
						</div>
						<div class="chat-details p-3">
							<h6 class="mb-0">
								<span class="font-weight-normal">Others</span> <span
									class="float-right p-1">80%</span>
							</h6>
							<div class="progress progress-md mt-3">
								<div
									class="progress-bar progress-bar-striped progress-bar-animated bg-warning w-80"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-sm-12 col-lg-4">
			<div class="card">
				<div class="card-body text-center">
					<div class="profile-pic mb-4">
																	<img src="assets/images/faces/female/21.jpg" width="150" class="brround" alt="user">
						<h5 class="mt-3 mb-0 font-weight-semibold">Emily Ball</h5>
						<a href="mailto:liamnolan@gmail.com">emilyball@gmail.com</a>
					</div>
					<div class="chip">Angular</div>
					<div class="chip">PHP</div>
					<div class="chip bg-primary text-white">+7</div>
				</div>
				<div class="p-4  card-footer">
					<div class="row text-center">
						<div class="col-6  border-right text-center">
							<div class="text-center">
								<a href="#" class="fw-500"><i class="fa fa-envelope  mr-5"></i>Chat</a>
							</div>
						</div>
						<div class="col-6 text-center">
							<a href="#" class="fw-500"><i class="fa fa-user  mr-5"></i>Profile</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> -->
</div>
</div>
</div>

<jsp:include page="adminfooter.jsp" />