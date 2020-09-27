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

	<div class="container mt-5">

		<div class="card card-body">
			<div class="card-header p-4">
				<div class="row text-lg ml-2 h3">
					<span class="font-weight-bolder">Welcome ${name} !!</span>
				</div>
			</div>
			<div class="card-body font-weight-bold">
				<div class=" justify-content-center">
					<div class="row">

						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">Donors</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">${donorCount}</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-hand-holding-water fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-success shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-success text-uppercase mb-1">Blood
												Banks</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">${bloodbankCount}</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-cubes fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-info shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-info text-uppercase mb-1">Hospitals</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">${hospitalCount}</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-hospital-alt fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-warning shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-warning text-uppercase mb-1">Locations</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">${locationCount}</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-map-marked-alt fa-2x text-gray-300"></i>
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
		<div class="card card-body justify-content-center">
		<div class="row">
				<div id="top_x_div" class="col-6 justify-content-end" style="width: 500px; height: 500px;"></div>
				<div id="piechart" class="col-6 border-left-secondary" style="width: 900px; height: 700px;"></div>
				</div>
		</div>
	</div>
	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawStuff);

      function drawStuff() {
        var data = new google.visualization.arrayToDataTable([
          ['Roles', 'Count'],
          ["DONOR", ${donorCount}],
          ["HOSPITAL", ${hospitalCount}],
          ["BLOODBANK", ${bloodbankCount}]
        ]);

        var options = {
          width: 400,      
          legend: { position: 'none' },
          chart: {
            title: 'User Details',
            subtitle: 'Count by Type of Registered Users' },
          axes: {
            x: {
              0: { side: 'top', label: 'ROLES'} // Top x-axis.
            }
          },
          bar: { groupWidth: "90%" }
        };

        var chart = new google.charts.Bar(document.getElementById('top_x_div'));
        // Convert the Classic options to Material options.
        chart.draw(data, google.charts.Bar.convertOptions(options));
      };
    </script>
	<script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
            ['Roles', 'Count'],
            ["DONOR", ${donorCount}],
            ["HOSPITAL", ${hospitalCount}],
            ["BLOODBANK", ${bloodbankCount}]
        ]);

        var options = {
          title: 'User Details',
          pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>

	<%@ include file="common/footer.jspf"%>