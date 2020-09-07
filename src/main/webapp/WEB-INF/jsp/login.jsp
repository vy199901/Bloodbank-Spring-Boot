<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

<div class="container">

	<font color="red">${errorMessage}</font>
	<form class="bg-gradient-primary" method="post">
		Email : <input type="text" name="email" placeholder="Enter Your Email ID" />
		Password : <input type="password" name="password" /> 
		<input type="submit" />
	</form>
	
</div>

<%@ include file="common/footer.jspf" %>