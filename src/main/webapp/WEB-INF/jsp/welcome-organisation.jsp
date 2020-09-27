<%@ include file="common/header.jspf"%>
<body id="page-top" style="background-image: url('images/background.png'); background-size: cover; background-repeat: no-repeat; width: 100%; height:100%;">

<%@ include file="common/navigation.jspf"%>
	<div class="px-5 mx-5 mt-5">
		<div class="container-fluid">
			<div class="card shadow m-4" style="background-color: rgba(255, 255, 255, 0.7);">
				<div class="card-header p-4">
					<div class="row text-lg ml-2 h3">
							<span class="font-weight-bolder">Welcome ${name} !!</span>
					</div>
				</div>
				<div class="card-body font-weight-bold">
					<div class="row justify-content-center">
						<div class="col-3 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Location</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">${location}</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-map-marked-alt fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-5 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Email ID</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">${email}</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-envelope-open-text fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-3 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Contact Number</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">${contact}</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-mobile-alt fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="card">
			<div class="card-header font-weight-bolder h4">
				Blood Count Details :
			</div>
			<div class="card-body"
				style="background-color: rgba(255, 255, 255, 0.8);">
				<div class="row justify-content-center">
						<table class="table table-striped bg-white font-weight-bolder text-center">
							<thead>
							<tr>
								<th>A [+ve]</th>
								<th>A [-ve]</th>
								<th>B [+ve]</th>
								<th>B [-ve]</th>
								<th>AB [+ve]</th>
								<th>AB [-ve]</th>
								<th>O [+ve]</th>
								<th>O [-ve]</th>
							</tr>
							</thead>
							<tbody class="table-dark">
							<tr>
								<td>${a_pos}</td>
								<td>${a_neg}</td>
								<td>${b_pos}</td>
								<td>${b_neg}</td>
								<td>${ab_pos}</td>
								<td>${ab_neg}</td>
								<td>${o_pos}</td>
								<td>${o_neg}</td>
							</tr>
							</tbody>
						</table>
				</div>
				<div class="row justify-content-end">
					<div class="col-2">
						<a type="button" class="  btn btn-info btn-block font-weight-bolder" href="/update-blood-details">EDIT</a>
					</div>
				</div>
			</div>
			</div>
		</div>
	</div>

<%@ include file="common/footer.jspf"%>