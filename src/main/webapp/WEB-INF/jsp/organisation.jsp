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
	<div class="">
		<div class="container-fluid mt-5">
			<div class="card card-body">
				<h1>Welcome ${name}</h1>
			</div>
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<div class="row">
						<div class="col-6 ">
							<h6 class="m-0 font-weight-bold text-lg h2 text-primary">Organisation
								Details</h6>
						</div>
						<div class="col-6" style="text-align-last: end;">
							<a href="/add-organisation"
								class="btn btn-outline-primary btn-icon-split"> <span
								class="icon"> <i class="fas fa-plus"></i>
							</span> <span class="text">Add Organisation</span>
							</a>
						</div>
					</div>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>Organisation</th>
									<th>Name</th>
									<th>Contact</th>
									<th>Email</th>
									<th>Location</th>
									<th>[A+ve] <br /> [A-ve]
									</th>
									<th>[B+ve] <br /> [B-ve]
									</th>
									<th>[AB+ve] <br /> [AB-ve]
									</th>
									<th>[O+ve] <br /> [O-ve]
									</th>
									<th></th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>Organisation</th>
									<th>Name</th>
									<th>Contact</th>
									<th>Email</th>
									<th>Location</th>
									<th>[A+ve] <br /> [A-ve]
									</th>
									<th>[B+ve] <br /> [B-ve]
									</th>
									<th>[AB+ve] <br /> [AB-ve]
									</th>
									<th>[O+ve] <br /> [O-ve]
									</th>
									<th></th>
								</tr>
							</tfoot>
							<tbody>
								<c:forEach items="${organisation}" var="organisation">
									<tr>
										<td>${organisation.roles}</td>
										<td>${organisation.user_name}</td>
										<td>${organisation.contact}</td>
										<td>${organisation.email}</td>
										<td>${organisation.location}</td>
										<td>[ ${organisation.a_positive} ]<br/>
											[ ${organisation.a_negative} ]</td>
										<td>[ ${organisation.b_positive} ]<br/>
											[ ${organisation.b_negative} ]</td>
										<td>[ ${organisation.ab_positive} ]<br/>
											[ ${organisation.ab_negative} ]</td>
										<td>[ ${organisation.o_positive} ]<br/>
											[ ${organisation.o_negative} ]</td>
										<td><a type="button" class="btn btn-success"
											href="/update-organisation?id=${organisation.user_id}"><i class="fas fa-edit"></i></a>
											<a type="button" class="btn btn-danger"
											href="/delete-organisation?id=${organisation.user_id}"><i class="fas fa-trash-alt"></i></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="common/footer.jspf"%>