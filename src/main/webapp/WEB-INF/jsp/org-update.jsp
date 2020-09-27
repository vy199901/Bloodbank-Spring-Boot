<%@ include file="common/header.jspf"%>
<body id="page-top"	style="background-image: url('images/background.png'); background-size: cover; background-repeat: no-repeat; width: 100%; height: 100%;">
	<%@ include file="common/navigation.jspf"%>
	
	<div class="px-5 mx-5 mt-5">
	<form:form method="post" modelAttribute="organisation">
	
	<div class="container-fluid">
			<form:hidden path="user_id" />
			<form:hidden path="password" />
			<form:hidden path="roles" />
		
		<div class="card" style="background-color: rgba(255, 255, 255, 0.9);">
							
			<div class="card-body">
				<div class="card shadow">
				<a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardPersonalDetails">
				<span class="m-0 font-weight-bold text-primary h6"><strong>Organisational Details</strong> - [ View Details here.. ]</span>
				</a>
				<div class="collapse hide border-left-info" id="collapseCardExample">
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
						</div>
						<div class="col-md-6">
							<div class="form-row card-body bg-white">
								<label class="col-lg-4 col-form-label font-weight-bolder">Location :</label>
								<div class="col-lg-8">
									<form:select path="location" class="form-control"
											required="required" items="${district}" />
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
			<div class="card card-body"
				style="background-color: rgba(255, 255, 255, 0.9);">
				<h4 class="font-weight-bolder">Blood Count Details</h4>
				<font color="red">${errorMessage}</font>
				<div class="row justify-content-center p-3">
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
								<td><form:input path="a_positive" type="number" class="form-control" required="required" /></td>
								<td><form:input path="a_negative" type="number" class="form-control" required="required" /></td>
								<td><form:input path="b_positive" type="number" class="form-control" required="required" /></td>
								<td><form:input path="b_negative" type="number" class="form-control" required="required" /></td>
								<td><form:input path="ab_positive" type="number" class="form-control" required="required" /></td>
								<td><form:input path="ab_negative" type="number" class="form-control" required="required" /></td>
								<td><form:input path="o_positive" type="number" class="form-control" required="required" /></td>
								<td><form:input path="o_negative" type="number" class="form-control" required="required" /></td>
							</tr>
							</tbody>
						</table>
				</div>
				<div class="row justify-content-end">
				<div class="col-2">
						<a href="/welcome-organisation" class="  btn btn-danger btn-block font-weight-bolder">CANCEL</a>
					</div>
					<div class="col-2">
						<button type="submit" class="  btn btn-success btn-block font-weight-bolder">UPDATE</button>
					</div>
					
				</div>
			</div>
	</div>
</form:form>

 </div>
 

<%@ include file="common/footer.jspf"%>