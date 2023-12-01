<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="styles/staff.css">
<title>Staff</title>
</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if (session.getAttribute("adminUsername") == null) {
		response.sendRedirect("adminLogin.jsp");
	}
	%>
	<nav class="navbar">
		<h2 class="logo">Event.lk</h2>
		<h1>
			<a href="staff.jsp">Admin Panel </a>
		</h1>
		<ul class="links">
			<li><a href="systemPanel.jsp">System Panel</a></li>
			<li><a href="#">${adminUsername}</a></li>
			<li>
				<form action="logoutStaffServlet">
					<input type="submit" value="Logout" class="btn2">
				</form>
			</li>
		</ul>
	</nav>

	<div class="staff-container">
		<div class="wrapper">
			<form action="insertStaff" method="post">

				<h2>Add Staff</h2>
				<div class="input-box">
					<label for=staffName>Staff Member name:</label><input type="text"
						placeholder="Name" name="name" required>
				</div>
				<div class="input-box">
					<label for=email>Staff Member Email:</label><input type="email"
						placeholder="Email" name="email" required>
				</div>
				<div class="input-box">
					<label for=phone>Staff Member Phone:</label><input type="text"
						placeholder="Phone" name="phone" required>
				</div>
				<div class="input-box">
					<label for=uname>Username:</label><input type="text"
						placeholder="Username" name="username" required>
				</div>
				<div class="input-box">
					<label for=pword>Password:</label><input type="password"
						placeholder="Password" name="password" required>
				</div>

				<div class="input-box">
					<label for=type>Staff Member type(Event Manager - EM,Event
						Organizer - EO,Event Cooridinator - EC)):</label><input type="text"
						placeholder="Staff Memeber Type" name="type" required>
				</div>
				<div class="btn-section">
				<button type="submit" name="submit" class="btn">Add</button>
			</div>
			<br>
			</form>
			<div class="btn-section">
			
			<form action="disStaff" method="post">
				<button type="submit" name="submit" class="btn">Display</button>

			</form>
			<form action="displayContact" method="post">
			<button type="submit" name="submit" class="btn">View Customer Messages</button>
			</form>
			
			<a href="staff.jsp">Clear Table</a>
			</div>
		</div>

	</div>
	<div class="table-section">
		<table>
			<thead>

				<tr class="row1">
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Phone</th>
					<th scope="col">Username</th>
					<th scope="col">Password</th>
					<th scope="col">Type</th>
					<th scope="col">Action</th>

				</tr>
			</thead>
			<tbody>

				<c:forEach var="staff" items="${staffDetails}">
					<c:set var="id" value="${staff.id}" />
					<c:set var="name" value="${staff.name}" />
					<c:set var="email" value="${staff.email}" />
					<c:set var="phone" value="${staff.phone}" />
					<c:set var="uname" value="${staff.userName}" />
					<c:set var="pass" value="${staff.password}" />
					<c:set var="type" value="${staff.type}" />
					<tr>
						<td>${staff.id}</td>
						<td>${staff.name}</td>
						<td>${staff.email}</td>
						<td>${staff.phone}</td>
						<td>${staff.userName}</td>
						<td>${staff.password}</td>
						<td>${staff.type}</td>
						<td><c:url value="updateStaff.jsp" var="staffupdate">
								<c:param name="id" value="${id}" />
								<c:param name="name" value="${name}" />
								<c:param name="email" value="${email}" />
								<c:param name="phone" value="${phone}" />
								<c:param name="uname" value="${uname}" />
								<c:param name="pwd" value="${pass}" />
								<c:param name="type" value="${type}" />
							</c:url>
							<button>
								<a href="${staffupdate}">Update</a>
							</button> <c:url value="deleteStaff.jsp" var="staffdelete">
								<c:param name="id" value="${id}" />
								<c:param name="name" value="${name}" />
								<c:param name="email" value="${email}" />
								<c:param name="phone" value="${phone}" />
								<c:param name="uname" value="${uname}" />
								<c:param name="pwd" value="${pass}" />
								<c:param name="type" value="${type}" />
							</c:url>
							<button>
								<a href="${staffdelete}">Delete</a>
							</button></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</body>
</html>