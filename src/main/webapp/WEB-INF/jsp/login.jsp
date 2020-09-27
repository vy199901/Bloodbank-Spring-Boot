<%@ include file="common/header.jspf"%>
<body id="page-top">


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
<div class="container">


	<div class="container pt-5">

		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-xl-10 col-lg-12 col-md-9">
									<font color="red">${errorMessage}</font>
									<font color="green">${successMessage}</font>

				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<div class="col-lg-6">
								<img class="card-img py-3 my-2" style=""
									src="images/bloodsymbol.jpg" alt="">
							</div>
							<div class="col-lg-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
									</div>
									<form class="user" method="post">
										<div class="form-group">
											<input type="text" class="form-control form-control-user"
												id="email" name="email" aria-describedby="emailHelp"
												placeholder="Enter Email-ID..." required>
										</div>
										<div class="form-group">
											<input type="password" class="form-control form-control-user"
												id="password" name="password" placeholder="Password"
												required>
										</div>
										<div class="form-group">
											<div class="custom-control custom-checkbox small">
												<input type="checkbox" class="custom-control-input"
													id="customCheck"> <label
													class="custom-control-label" for="customCheck">Remember
													Me</label>
											</div>
										</div>
										<button type="submit" name="userLogin"
											class="btn btn-primary btn-user btn-block font-weight-bolder">
											LOGIN</button>
									</form>
									<hr>

									<div class="text-center">
										<a class="small" href="/register">Create an Account!</a>
									</div>									
								</div>
							</div>
						</div>
						<div class="text-center">
										<a href="/" class="link">&larr; Back to Dashboard</a>
									</div>
					</div>
				</div>

			</div>

		</div>

	</div>


</div>

<%@ include file="common/footer.jspf"%>