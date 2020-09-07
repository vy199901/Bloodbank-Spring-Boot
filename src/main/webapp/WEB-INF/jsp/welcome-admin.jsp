<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
	<div class="card card-body">
		<h1>Welcome Admin ${name}!!</h1>
		<br /> Your User ID is: ${id} <br /> Your Role is : ${user_roles}
	</div>

</div>
	<div class="container">
		<table class="table table-striped">
			<caption>Donor Details</caption>
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
							href="/update-donor?id=${donor.user_id}">Update</a></td>
						<td><a type="button" class="btn btn-warning"
							href="/delete-donor?id=${donor.user_id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<a class="button" href="/add-donor">Add Donor</a>
		</div>
		
	</div>
		<div class="container mt-2">
		<table class="table table-striped">
			<caption>Organisation Details</caption>
			<thead>
				<tr>
					<th>Organisation</th>
					<th>Name</th>
					<th>Contact</th>
					<th>Email</th>
					<th>Location</th>
					<th>A (+ve) / (-ve)</th>
					<th>B (+ve) / (-ve)</th>
					<th>AB (+ve) / (-ve)</th>
					<th>O (+ve) / (-ve)</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${organisation}" var="organisation">
					<tr>
					<td>${organisation.roles}</td>
						<td>${organisation.user_name}</td>
						<td>${organisation.contact}</td>
						<td>${organisation.email}</td>
						<td>${organisation.location}</td>
						<td>${organisation.a_positive} / ${organisation.a_negative}</td>
						<td>${organisation.b_positive} / ${organisation.b_negative}</td>
						<td>${organisation.ab_positive} / ${organisation.ab_negative}</td>
						<td>${organisation.o_positive} / ${organisation.o_negative}</td>
						<td><a type="button" class="btn btn-success"
							href="/update-organisation?id=${organisation.user_id}">Update</a></td>
						<td><a type="button" class="btn btn-warning"
							href="/delete-organisation?id=${organisation.user_id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<a class="button" href="/add-organisation">Add Organisation</a>
		</div>
	</div>
<%@ include file="common/footer.jspf"%>