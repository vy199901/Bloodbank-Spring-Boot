<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
	<form:form method="post" modelAttribute="organisation">
		<form:hidden path="password" />
		<form:hidden path="user_name" />
		<form:hidden path="email" />
		<form:hidden path="contact" />
		<form:hidden path="roles" />
		<form:hidden path="user_id" />
		<form:hidden path="location" />
		<fieldset class="form-group">
			<form:label path="a_positive">A (+ve)</form:label>
			<form:input path="a_positive" type="number" class="form-control"
				required="required" />
			<form:errors path="a_positive" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="a_negative">A (-ve)</form:label>
			<form:input path="a_negative" type="number" class="form-control"
				required="required" />
			<form:errors path="a_negative" cssClass="text-warning" />
		</fieldset>

		<fieldset class="form-group">
			<form:label path="b_positive">B (+ve)</form:label>
			<form:input path="b_positive" type="number" class="form-control"
				required="required" />
			<form:errors path="b_positive" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="b_negative">B (-ve)</form:label>
			<form:input path="b_negative" type="number" class="form-control"
				required="required" />
			<form:errors path="b_negative" cssClass="text-warning" />
		</fieldset>

		<fieldset class="form-group">
			<form:label path="ab_positive">AB (+ve)</form:label>
			<form:input path="ab_positive" type="number" class="form-control"
				required="required" />
			<form:errors path="ab_positive" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="ab_negative">AB (-ve)</form:label>
			<form:input path="ab_negative" type="number" class="form-control"
				required="required" />
			<form:errors path="ab_negative" cssClass="text-warning" />
		</fieldset>

		<fieldset class="form-group">
			<form:label path="o_positive">O (+ve)</form:label>
			<form:input path="o_positive" type="number" class="form-control"
				required="required" />
			<form:errors path="o_positive" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="o_negative">O (-ve)</form:label>
			<form:input path="o_negative" type="number" class="form-control"
				required="required" />
			<form:errors path="o_negative" cssClass="text-warning" />
		</fieldset>

		<button type="submit" class="btn btn-success">UPDATE</button>
	</form:form>
</div>
<%@ include file="common/footer.jspf"%>