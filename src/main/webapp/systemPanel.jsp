<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>System Panel</title>
<link rel="stylesheet" href="styles/systemPanel.css">
</head>
<body>
	<nav class="navbar">
		<h2 class="logo">Event.lk</h2>
		<h1>
			<a href="systemPanel.jsp">System Panel</a>
		</h1>
		<ul class="links">
			<li><a href="adminLogin.jsp">Admin Login</a></li>
		</ul>
	</nav>
	<div class="staff-container">
		<div class="card">
			<img src="images/like-01.jpg">
			<div class="card-content">
				<h3>Event Organizer</h3>
				<p>Add event to the system</p>
				<a href="eventOrganizerLogin.jsp" class="btn">Login</a>
			</div>
		</div>
		<div class="card">
			<img src="images/like-02.jpg">
			<div class="card-content">
				<h3>Event Cordinator</h3>
				<p>Create event reports chech event participants details</p>
				<a href="coordinatorLogin.jsp" class="btn">Login</a>
			</div>
		</div>
		<div class="card">
			<img src="images/like-03.jpg">
			<div class="card-content">
				<h3>Event Manager</h3>
				<p>Manage and check event managers and event cordinators</p>
				<a href="managerlogin.jsp" class="btn">Login</a>
			</div>
		</div>
	</div>
</body>
</html>