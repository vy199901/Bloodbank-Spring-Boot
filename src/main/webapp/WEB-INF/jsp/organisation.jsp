<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
<font color="red">${errorMessage}</font>
	<form:form method="post" modelAttribute="organisation">
	<form:hidden path="user_id" />
	<fieldset class="form-group">
			<form:label path="roles">Organisation Type</form:label>
			<form:select path="roles" class="form-control"
				required="required">
				<form:option value="HOSPITAL" label="Hospital" />
				<form:option value="BLOODBANK" label="Blood Bank" />
			</form:select>
			<form:errors path="roles" cssClass="text-warning" />
		</fieldset>
	<fieldset class="form-group">
			<form:label path="user_name">Name</form:label>
			<form:input path="user_name" type="text" class="form-control"
				required="required" />
			<form:errors path="user_name" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="email">Email</form:label>
			<form:input path="email" type="email" class="form-control"
				required="required" />
			<form:errors path="email" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="password">Password</form:label>
			<form:input path="password" type="text" class="form-control"
				required="required" />
			<form:errors path="password" cssClass="text-warning" />
		</fieldset>
		<fieldset class="form-group">
			<form:label path="contact">Contact No.</form:label>
			<form:input path="contact" type="number" class="form-control"
				required="required" />
			<form:errors path="contact" cssClass="text-warning" />
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

		<button type="submit" class="btn btn-success">Submit</button>
	</form:form>
</div>
<%@ include file="common/footer.jspf"%>