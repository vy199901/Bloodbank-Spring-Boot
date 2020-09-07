<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
	<div class="card card-body">
		<h1>Welcome Donor ${name}!!</h1>
		<br /> Your User ID is: ${id} <br /> Your Role is : ${user_roles}
	</div>

	<div class="card card-body m-5">
		<table class="table table-striped">
			<caption>Blood Details</caption>
			<thead class="table-dark">
				<th>Consent</th>
				<th>Blood Group</th>
			</thead>
			<tbody>
				<td> ${consent} </td>
				<td> ${blood_group} </td>
			</tbody>
		</table>

		<a type="button" class="btn btn-info" href="/update-donor-details">EDIT</a>

	</div>

</div>
<%@ include file="common/footer.jspf"%>