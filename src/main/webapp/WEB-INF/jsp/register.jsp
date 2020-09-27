<%@ include file="common/header.jspf"%>
<body id="page-top">

<div
	style="background-image: url('images/register.jpg'); background-size: cover; background-repeat: no-repeat; width: 100%; height:100%;">
	<nav role="navigation"
		class=" navbar navbar-expand navbar-light bg-light sticky-top  py-2 shadow">
		<a href="/" class="navbar-brand ml-4"> <img src="/images/logo.jpg"
			width="40" height="30" class="d-inline-block align-top" alt="">
			<span class="font-weight-bolder h3 ml-4">BBM</span>
		</a>
		<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">

			</ul>
			<a class="btn btn-outline-success my-2 mr-4 my-sm-0 font-weight-bold"
				href="/login">LOGIN</a> <a
				class="btn btn-outline-primary my-2 mr-3 my-sm-0 font-weight-bold"
				href="/register">REGISTER</a>
		</div>
	</nav>

	<div class="container">
		<div class="row my-5 mb-5">
		<div class="col-7">></div>
			<div class="col-5 card o-hidden border-0 shadow-lg my-5" style="background-color: rgba(255,255,255,0.9);">
				<font color="red">${errorMessage}</font>

				<div class="card-body">

					<div class="">
							<div class="text-center">
								<h1 class="h4 text-gray-900 mb-4">Create an Account</h1>
							</div>
							<form:form method="post" modelAttribute="user" class="user">
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<form:input path="user_name" type="text"
											class="form-control form-control-user" placeholder="Name"
											required="required" />
									</div>
									<div class="col-sm-6">
										<form:input path="contact" type="number"
											class="form-control form-control-user"
											placeholder="Contact No." required="required" />
									</div>
								</div>
								<div class="form-group">
									<form:input path="email" type="email"
										class="form-control form-control-user"
										placeholder="Email Address" required="required" />
								</div>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<form:input path="password" type="password"
											class="form-control form-control-user" placeholder="Password"
											required="required" />
									</div>
									<div class="col-sm-6">
										<form:label path="roles" class="font-weight-bolder"
											style="line-height:0.8; margin-bottom:3">Choose Your Identity</form:label>
										<form:select path="roles" class="form-control"
											required="required" style="border-radius: 10rem;">
											<form:option value="DONOR" label="Donor" />
											<form:option value="BLOODBANK" label="Blood Bank" />
											<form:option value="HOSPITAL" label="Hospital" />
										</form:select>
									</div>
								</div>
								<div class="form-group row mt-4">
									<div class="col-sm-5">
										<label for="actorType"
											class="form-control form-control-plaintext font-weight-bolder">Select
											Location:</label>
									</div>
									<div class="col-sm-7">
										<form:select path="location" class="form-control"
											required="required" items="${district}" />
									</div>
								</div>
								<button type="submit" name="userRegister"
									class="btn btn-primary btn-user btn-block">Register
									Account</button>
							</form:form>
							<hr>
							<div class="text-center">
								<a class="small" href="/login">Already have an account?
									Login!</a>
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="common/footer.jspf"%>