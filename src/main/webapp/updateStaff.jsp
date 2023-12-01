<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Update</title>
<link rel="stylesheet" href="styles/staff.css">
</head>
<body>
	<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String username = request.getParameter("uname");
	String password = request.getParameter("pwd");
	String type = request.getParameter("type");
	%>
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
	<div class="staff-container">
		<div class="wrapper">
			<form action="updateStaff" method="post">
				<h1>Add Staff</h1>
				<div class="input-box">
					<label for=staffId>Staff Member id:</label><input type="text"
						name="id" value="<%=id%>" readonly>
				</div>
				<div class="input-box">
					<label for=staffName>Staff Member name:</label><input type="text"
						name="name" value="<%=name%>" required>
				</div>
				<div class="input-box">
					<label for=email>Staff Member Email:</label><input type="email"
						name="email" value="<%=email%>" required>
				</div>
				<div class="input-box">
					<label for=phone>Staff Member Phone:</label><input type="text"
						name="phone" value="<%=phone%>" required>
				</div>
				<div class="input-box">
					<label for=uname>Username:</label><input type="text"
						name="username" value="<%=name%>" required>
				</div>
				<div class="input-box">
					<label for=pword>Password:</label><input type="password"
						name="password" value="<%=password%>" required>
				</div>

				<div class="input-box">
					<label for=type>Staff Member type(Event Manager - EM,Event
						Organizer - EO,EventCooridinator - EC)): </label><input type="text"
						name="type" value="<%=type%>" required>
				</div>

				<button type="submit" name="submit" class="btn">Update</button>


			</form>

		</div>
	</div>
</body>
</html>