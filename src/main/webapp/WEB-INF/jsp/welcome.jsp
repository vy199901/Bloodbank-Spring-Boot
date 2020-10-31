<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>

<head>
<title>BBM</title>
<link rel = "icon" href = "/images/logo.jpg" type = "image/x-icon"> 

<link href="webjars/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- CSS only -->

</head>

<body>

	<nav role="navigation"
		class=" navbar navbar-expand navbar-light bg-light sticky-top  py-2 shadow">
		<a href="/" class="navbar-brand ml-4"> <img
			src="/images/logo.jpg" width="40" height="30"
			class="d-inline-block align-top" alt=""> <span
			class="font-weight-bolder h3 ml-4">BBM</span>
		</a>
		<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">

			</ul>
			<a class="btn btn-outline-success my-2 mr-4 my-sm-0 font-weight-bold" href="/login">LOGIN</a>
			<a class="btn btn-outline-primary my-2 mr-3 my-sm-0 font-weight-bold" href="/register">REGISTER</a>
		</div>
	</nav>

	<div class=" pt-5"
		style="background-image: url('images/front-bg.jpg'); background-size: cover; background-repeat: no-repeat; width: 100%;">
		<div class="container pb-5">
			<div class="row mb-5 pb-3">
				<div class="col-7 ">
					<div id="content" class="card mt-5 collapse">
						<div class="card-header">
							<h3>Available Resources According to Location:</h3>
						</div>
						<div class="card-body">
							<table class="table table-lg table-stripped">
								<thead class="table-dark">
									<tr>
										<th>Name</th>
										<th>Email ID</th>
										<th>Contact No.</th>
									</tr>
								</thead>
								<tbody id="result">
									<tr>
										<td colspan="3">Select Dropdown</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-1"></div>
				<div class="col-4 my-3 py-3">
					<div class=" card card-body font-weight-bolder border border-dark rounded" style="background-color: rgba(255,255,255,0.7);">
						<div class="card-header bg-light"><h3 class="font-weight-bold">Search Availability : </h3></div>
						<div class="py-3 text-lg">
							<fieldset class="form-group">
								<label for="location">LOCATION</label> <select id="location"
									name="location" class="form-control font-weight-bold px-3 m-1" onchange="fetch_details()" required="required">
									<option selected disabled>Choose Your Location
										</option>
										<c:forEach items="${district}" var="dis">
										<option value=<c:out value="${dis}"/>>District <c:out value="${dis}"/></option>
        								</c:forEach>
								</select>
							</fieldset>
							<fieldset class="form-group">
								<label for="blood_group">BLOOD GROUP</label> <select
									id="blood_group" name="blood_group" class="form-control font-weight-bold px-3 m-1"
									onchange="fetch_details()" required="required">
									<option selected disabled>Choose Your Blood Group</option>
									<option value="a_positive">A (+ve)</option>
									<option value="a_negative">A (-ve)</option>
									<option value="b_positive">B (+ve)</option>
									<option value="b_negative">B (-ve)</option>
									<option value="ab_positive">AB (+ve)</option>
									<option value="ab_negative">AB (-ve)</option>
									<option value="o_positive">O (+ve)</option>
									<option value="o_negative">O (-ve)</option>
								</select>
							</fieldset>
							<fieldset class="form-group">
								<label for="user_roles">FILTER</label> <select id="user_roles"
									name="user_roles" class="form-control bg-dark text-light font-weight-bold px-3 m-1"
									onchange="fetch_details()" required="required">
									<option value="BLOODBANK" selected>Blood Bank</option>
									<option value="HOSPITAL">Hospital</option>
									<option value="DONOR">Donor</option>
								</select>
							</fieldset>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>
</html>

<script>
	function fetch_details() {

		if ($("select#location").val()) {
			if ($("select#blood_group").val()) {
				var location = $("select#location").val();
				var blood_group = $("select#blood_group").val();
				var user_roles = $("select#user_roles").val();

						$.ajax({
							type : "POST",
							contentType : "application/json; charset=utf-8",
							url : "fetch",
							data : JSON.stringify({
								'location' : location,
								'blood_group' : blood_group,
								'user_roles' : user_roles
							}),
							cache : false,
							success : function(result) {
								$("#result").html(result);
							},
							error : function(err) {
								$("#result")
										.html("<span style='color: red'>NO Data Available</span>");
							}
						});
				$("#content").collapse('show');
				
			} else {
				alert("Please Select Blood Group to Enquire about");
			}
		} else {
			alert("Please Select Your Location to Enquire");
		}

	}
</script>