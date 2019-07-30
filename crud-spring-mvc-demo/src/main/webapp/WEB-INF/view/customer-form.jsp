<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
	<head>
		<title>Customer Form | Rohan Negi</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
	</head>
	<body>
		<h1>Customer Details</h1>
		<hr><br>
		
		<a href="${pageContext.request.contextPath}/" class="button redirect">Back to list.</a>
			
		<form:form action="${pageContext.request.contextPath}/saveCustomer" method="POST" modelAttribute="customer">
			
			<form:hidden path="id"/>
			
			<span>First Name </span><span class="error"><form:errors path="firstName"/></span>
			<form:input path="firstName" class="field" maxlength="45"/>
			<br><br>
			
			<span>Last Name </span><span class="error"><form:errors path="lastName"/></span>
			<form:input path="lastName" class="field" maxlength="45"/>
			<br><br>
			
			<span>Email </span><span class="error"><form:errors path="email"/></span>
			<form:input path="email" class="field" maxlength="45"/>
			<br><br>
			
			<input type="submit" value="Submit" class="button form-submit"/>
		</form:form>
	
	</body>
	
</html>