<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container font-weight-bolder text-lg">
	<div class="card card-body">
		<h1>Welcome Organisation ${name}!!</h1>
		<br /> Your User ID is: ${id} <br /> Your Role is : ${user_roles}
	</div>
</div>

<div class="card card-body m-5">
	<table class="table table-striped">
		<caption>Blood Details</caption>
		<thead>
			<th>A +ve</th>
			<th>A -ve</th>
			<th>B +ve</th>
			<th>B -ve</th>
			<th>AB +ve</th>
			<th>AB -ve</th>
			<th>O +ve</th>
			<th>O -ve</th>
		</thead>
		<tbody>
			<td>${a_pos}</td>
			<td>${a_neg}</td>
			<td>${b_pos}</td>
			<td>${b_neg}</td>
			<td>${ab_pos}</td>
			<td>${ab_neg}</td>
			<td>${o_pos}</td>
			<td>${o_neg}</td>
		</tbody>
	</table>

	<a type="button" class="btn btn-info" href="/update-blood-details">EDIT</a>

</div>

<%@ include file="common/footer.jspf"%>