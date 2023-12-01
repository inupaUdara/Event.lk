<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Contact</title>
<link rel="stylesheet" href="styles/staff.css">
</head>
<body>
	<nav class="navbar">
		<h2 class="logo">Event.lk</h2>
		<h1>
			<a href="staff.jsp">Admin Panel </a>
		</h1>
		<ul class="links">
			<li><a href="#">${adminUsername}</a></li>
			<li>
				<form action="logoutStaffServlet">
					<input type="submit" value="Logout" class="btn2">
				</form>
			</li>
			</ul>
	</nav>
	<br>
	<br>
	<br>
	<br>
	<div class="table-section">
		<table>
			<thead>

				<tr class="row1">
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Phone</th>
				

				</tr>
			</thead>
			<tbody>
			</tbody>
	<c:forEach var="contact" items="${contactInfo}">
		<tr>
		<td>${contact.contactId}</td>
		<td>${contact.name}</td>
		<td>${contact.email}</td>
		<td>${contact.message}</td>
		</tr>
	</c:forEach>
	</table>
	</div>
</body>
</html>