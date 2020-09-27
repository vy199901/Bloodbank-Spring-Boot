<%@ include file="common/header.jspf"%>
<body id="page-top"
	style="background-image: url('images/background.png'); background-size: cover; background-repeat: no-repeat; width: 100%; height: 100%;">

	<%@ include file="common/navigation.jspf"%>
	<div>
		<div class="container mt-5">
			<div class="card shadow m-4" style="background-color: rgba(255, 255, 255, 0.5);">
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
			<div class="card card-body"
				style="background-color: rgba(255, 255, 255, 0.7);">
				<div class="row justify-content-center">
					<div class="col-3 mb-4">
						<div class="card border-bottom-success shadow h-100 py-2">
							<div class="card-body">
								<div class="row no-gutters align-items-center">
									<div class="col mr-2">
										<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Consent</div>
										<div class="h5 mb-0 font-weight-bold text-gray-800">${consent}</div>
									</div>
									<div class="col-auto">
										<i class="fas fa-thumbs-up fa-2x text-gray-300"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-3 mb-4">
						<div class="card border-bottom-danger shadow h-100 py-2">
							<div class="card-body">
								<div class="row no-gutters align-items-center">
									<div class="col mr-2">
										<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Blood Group</div>
										<div class="h5 mb-0 font-weight-bold text-gray-800">${blood_group}</div>
									</div>
									<div class="col-auto">
										<i class="fas fa-hand-holding-water fa-2x text-gray-300"></i>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="row justify-content-end">
					<div class="col-2">
						<a type="button" class="  btn btn-lg btn-info btn-block font-weight-bolder" href="/update-donor-details">EDIT</a>
					</div>
				</div>
			</div>


		</div>
	</div>
	<%@ include file="common/footer.jspf"%>