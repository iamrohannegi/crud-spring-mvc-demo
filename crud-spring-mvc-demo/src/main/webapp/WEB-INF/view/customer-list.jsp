<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
	<head>
		<title>Customer Tracker - CRUD Demo</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
	</head>
	<body class="list-wrapper">
		<h1>Customer List</h1>
		<hr>
		<br><br>
		<table>
			<tr>
				<th class="teal-column">First Name</th>
				<th>Last Name</th>
				<th class="teal-column">Email</th>
				<th>Action</th>
			<tr>
			
			<c:forEach var="tempCustomer" items="${customers}">
				
				<!-- construct an "update" link with customer id-->
				<c:url var="updateLink" value="/updateCustomer">
					<c:param name="customerId" value="${tempCustomer.id}"/>
				</c:url>
				
				<!-- construct a "delete" link with customer id -->
				<c:url var="deleteLink" value="/deleteCustomer">
					<c:param name="customerId" value="${tempCustomer.id}"/>
				</c:url>

				<tr>
					<td class="teal-column">${tempCustomer.firstName}</td>
					<td>${tempCustomer.lastName}</td>
					<td class="teal-column">${tempCustomer.email}</td>
					<td>
						<a href="${updateLink}" class="button">Update</a>
						<a href="${deleteLink}" class="button">Delete</a>
					</td>
				</tr>
			</c:forEach>
			
		</table>
		
		<input type="button" value="Add customer" class="button form-submit" onclick="window.location.href='${pageContext.request.contextPath}/addCustomer'; return false;"/>
		
	</body>
	
	
</html>