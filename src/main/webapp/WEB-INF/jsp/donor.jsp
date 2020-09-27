<%@ include file="common/header.jspf"%>
<body id="page-top">

<%@ include file="common/navigation.jspf"%>
<div class="bg-light container-fluid">
  <div class="row justify-content-center text-center font-weight-bolder p-1">
  	<div class="col-2 mx-4"><a class="nav-link btn btn-outline-dark font-weight-bolder" href="/welcome-admin">DASHBOARD</a></div>
  	<div class="col-2 ml-5"><a class="nav-link text-lg text-dark" href="#">MANAGE -></a></div>
  	<div class="col-2 mr-4"><a class="nav-link btn btn-outline-dark font-weight-bolder" href="/donor">DONOR</a></div>
  	  	<div class="col-2 mx-4"><a class="nav-link btn btn-outline-dark font-weight-bolder" href="/organisation">ORGANISATION</a></div>
  	  	<div class="col-2 mx-4"><a class="nav-link btn btn-outline-dark font-weight-bolder" href="/location">LOCATION</a></div>
  	
  </div>
</div>

<div class="mx-5 px-5">
<div class="container-fluid mt-5">
	<div class="card card-body">
		<h1>Welcome ${name}</h1>
	</div>
	<div class="card shadow mb-4">
        <div class="card-header py-3">
            <div class="row">
                <div class="col-6 "><h6 class="m-0 font-weight-bold text-lg h2 text-primary">Donor Details</h6></div>
                <div class="col-6" style="text-align-last: end;">
                  	<a href="/add-donor" class="btn btn-outline-primary btn-icon-split">
                    <span class="icon">
                      <i class="fas fa-plus"></i>
                    </span>
                    <span class="text">Add Donor</span>
                  </a>
                </div>
             </div>
        </div>
        <div class="card-body">
              <div class="table-responsive">
                 <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                             <tr>
					<th>Name</th>
					<th>Contact</th>
					<th>Email</th>
					<th>Location</th>
					<th>Blood Group</th>
					<th>Consent</th>
					<th></th>
					<th></th>
				</tr>
                           </thead>
                           <tfoot>
                              <tr>
					<th>Name</th>
					<th>Contact</th>
					<th>Email</th>
					<th>Location</th>
					<th>Blood Group</th>
					<th>Consent</th>
					<th></th>
					<th></th>
				</tr>
                           </tfoot>
                           <tbody>
                
                              <c:forEach items="${donor}" var="donor">
					<tr>
						<td>${donor.user_name}</td>
						<td>${donor.contact}</td>
						<td>${donor.email}</td>
						<td>${donor.location}</td>
						<td>${donor.blood_group}</td>
						<td>${donor.consent}</td>
						<td><a type="button" class="btn btn-success"
							href="/update-donor?id=${donor.user_id}"><i class="fas fa-edit"></i></a></td>
						<td><a type="button" class="btn btn-danger"
							href="/delete-donor?id=${donor.user_id}"><i class="fas fa-trash-alt"></i></a></td>
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