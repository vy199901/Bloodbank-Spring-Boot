<%@ include file="common/header.jspf"%>
<body id="page-top">

	<%@ include file="common/navigation.jspf"%>
	<div class="bg-light container-fluid">
		<div
			class="row justify-content-center text-center font-weight-bolder p-1">
			<div class="col-2 mx-4">
				<a class="nav-link btn btn-outline-dark font-weight-bolder"
					href="/welcome-admin">DASHBOARD</a>
			</div>
			<div class="col-2 ml-5">
				<a class="nav-link text-lg text-dark" href="#">MANAGE -></a>
			</div>
			<div class="col-2 mr-4">
				<a class="nav-link btn btn-outline-dark font-weight-bolder"
					href="/donor">DONOR</a>
			</div>
			<div class="col-2 mx-4">
				<a class="nav-link btn btn-outline-dark font-weight-bolder"
					href="/organisation">ORGANISATION</a>
			</div>
			<div class="col-2 mx-4">
				<a class="nav-link btn btn-outline-dark font-weight-bolder"
					href="/location">LOCATION</a>
			</div>

		</div>
	</div>

	<div class="mx-5 px-5">
		<div class="container mt-5 mx-5">
			<div class="card card-body">
				<h1>Welcome ${name}</h1>
			</div>
			<div class="card shadow mb-4 mx-5">
				<div class="card-header py-3">
					<div class="row">
						<div class="col-6 ">
							<h6 class="m-0 font-weight-bold text-lg h2 text-primary">Location
								Details</h6>
						</div>
						<div class="col-6" style="text-align-last: end;">
							<button data-toggle="modal" data-target="#viewEnquiryModal"
								class="btn btn-outline-primary btn-icon-split"> <span
								class="icon"> <i class="fas fa-plus"></i>
							</span> <span class="text">Add Location</span>
							</button>
						</div>
					</div>
				</div>
				<div class="card-body mx-5">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>Location ID</th>
									<th>District Name</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>Location ID</th>
									<th>District Name</th>
								</tr>
							</tfoot>
							<tbody>

								<c:forEach items="${location}" var="location">
									<tr>
										<td>${location.location_id}</td>
										<td>${location.district}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
				<div class="modal fade" id="viewEnquiryModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
				<form method="post" class="user">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="">Add Location</h5>

							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body" id="approvalModal">
						<div class="m-2">
							<div class="row">
								<label class="font-weight-bolder text-lg">Enter District Name :</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" name="district" required>
							</div>
						</div>
						</div>
						<div class="modal-footer">

							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					</div>
				</form>
				</div>
			</div>
	<%@ include file="common/footer.jspf"%>