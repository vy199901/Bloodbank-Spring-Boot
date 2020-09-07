<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
<font color="red">${errorMessage}</font>
	<form:form method="post" modelAttribute="donor">
	<form:hidden path="password" />
	<form:hidden path="user_name" />
	<form:hidden path="contact" />
	<form:hidden path="email" />
	<form:hidden path="roles" />
	<form:hidden path="user_id" />
	<form:hidden path="location" />
		<fieldset class="form-group">
			<form:label path="consent">Consent</form:label>
			<form:checkbox class="custom-control custom-switch custom-control-input" path="consent" value="1" />

			<form:errors path="consent" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="blood_group">Blood Group</form:label>
			<form:select path="blood_group" class="form-control"
				required="required">
				<form:option value="a_positive" label="A (+ve)" />
				<form:option value="a_negative" label="A (-ve)" />
				<form:option value="b_positive" label="B (+ve)" />
				<form:option value="b_negative" label="B (-ve)" />
				<form:option value="ab_positive" label="AB (+ve)" />
				<form:option value="ab_negative" label="AB (-ve)" />
				<form:option value="o_positive" label="O (+ve)" />
				<form:option value="o_negative" label="O (-ve)" />
			</form:select>
			<form:errors path="blood_group" cssClass="text-warning" />
		</fieldset>

		<button type="submit" class="btn btn-success">UPDATE</button>
	</form:form>
</div>
<%@ include file="common/footer.jspf"%>