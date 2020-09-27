<%@ include file="common/header.jspf"%>
<body id="page-top"	style="background-image: url('images/background.png'); background-size: cover; background-repeat: no-repeat; width: 100%; height: 100%;">
	<%@ include file="common/navigation.jspf"%>
	<div class="container mt-5">
	
<form:form method="post" modelAttribute="donor">
			<form:hidden path="user_id" />
			<form:hidden path="password" />
			<form:hidden path="roles" />
		
		<div class="card" style="background-color: rgba(255, 255, 255, 0.7);">
			<div class="card-header">
				<div class="row text-lg ml-2">
					<span class="font-weight-bolder">Update Your Details</span>
							<font color="red">${errorMessage}</font>
				</div>
			</div>
			<div class="card-body">
				<div class="">
					<div class="row">
						<div class="col-md-6">
							<div class="form-row mb-3 card-body bg-white">
								<label class="col-lg-4 col-form-label font-weight-bolder">Name :</label>
								<div class="col-lg-8">
									<form:input path="user_name" type="text"
											class="form-control form-control-user" 
											required="required" />
								</div>
							</div>
							<div class="form-row mb-3 card-body bg-white">
								<label class="col-lg-4 col-form-label font-weight-bolder">Email ID :</label>
								<div class="col-lg-8">
									<form:input path="email" type="text"
											class="form-control form-control-user" 
											required="required" />
								</div>
							</div>
							<div class="form-row card-body bg-white">
								<label class="col-lg-4 col-form-label font-weight-bolder">Location :</label>
								<div class="col-lg-8">
									<form:select path="location" class="form-control"
											required="required" items="${district}" />
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-row mb-3 card-body ">
								<label class="col-lg-4 col-form-label font-weight-bolder"></label>
								<div class="col-lg-8 p-2 m-1">
									
								</div>
							</div>
							<div class="form-row mb-3 card-body bg-white">
								<label class="col-lg-4 col-form-label font-weight-bolder">Contact No :</label>
								<div class="col-lg-8">
									<form:input path="contact" type="number"
											class="form-control form-control-user"
											required="required" />
								</div>
							</div>
							<div class="form-row card-body bg-white">
								<label class="col-lg-4 col-form-label font-weight-bolder">Blood Group :</label>
								<div class="col-lg-8">
									<form:select path="blood_group" class="form-control" required="required">
										<form:option value="a_positive" label="A (+ve)" />
										<form:option value="a_negative" label="A (-ve)" />
										<form:option value="b_positive" label="B (+ve)" />
										<form:option value="b_negative" label="B (-ve)" />
										<form:option value="ab_positive" label="AB (+ve)" />
										<form:option value="ab_negative" label="AB (-ve)" />
										<form:option value="o_positive" label="O (+ve)" />
										<form:option value="o_negative" label="O (-ve)" />
									</form:select>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="card shadow">
			<div class="card-body font-weight-bolder">
				<div class=" row justify-content-center">
					<div class="col-4">
						<div class="input-group ">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<form:checkbox class="" path="consent" value="1" />
								</div>
							</div>
							<label class="form-control col-form-label">I hereby agree
								to Donate Blood</label>
						</div>
					</div>
					<div class="col-lg-2"></div>
					<div class="col-2">
						<a href="/welcome-donor" class="  btn btn-danger btn-block font-weight-bolder">CANCEL</a>
					</div>
					<div class="col-lg-3 col-md-5">
						<input type="submit" class="btn btn-block btn-success font-weight-bolder"
							value="UPDATE" />
					</div>
				</div>
			</div>
		</div>
</form:form>

	</div>
	<%@ include file="common/footer.jspf"%>