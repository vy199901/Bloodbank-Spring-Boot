<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
<h1>REGISTER YOURSELF !!</h1>
<font color="red">${errorMessage}</font>
	<form:form method="post" modelAttribute="user">
		<fieldset class="form-group">
			<form:label path="user_name">User Name</form:label>
			<form:input path="user_name" type="text" class="form-control"
				required="required" />
			<form:errors path="user_name" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="contact">Contact No.</form:label>
			<form:input path="contact" type="number" class="form-control"
				required="required" />
			<form:errors path="contact" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="email">Email</form:label>
			<form:input path="email" type="email" class="form-control"
				required="required" />
			<form:errors path="email" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="password">Password</form:label>
			<form:input path="password" type="password" class="form-control"
				required="required" />
			<form:errors path="password" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="roles">Roles</form:label>
			<form:select path="roles" class="form-control"
				required="required">
				<form:option value="DONOR" label="Donor" />
				<form:option value="BLOODBANK" label="Blood Bank" />
				<form:option value="HOSPITAL" label="Hospital" />
			</form:select>
			<form:errors path="roles" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="location">Location</form:label>
			<form:select path="location" class="form-control"
				required="required">
				<form:option value="A" label="District A" />
				<form:option value="B" label="District B" />
				<form:option value="C" label="District C" />
			</form:select>
			<form:errors path="location" cssClass="text-warning" />
		</fieldset>

		<button type="submit" class="btn btn-success">SUBMIT</button>
	</form:form>
</div>
<%@ include file="common/footer.jspf"%>