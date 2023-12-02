<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Coordinator panel</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Poppins:wght@500&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/8a45cec2d1.js"></script>
<link rel="stylesheet" href="styles/coordinatorinsert.css">

</head>
<body>
	<div class="admin-header">
		<h1>WELCOME TO COORDINATOR PANEL</h1>
		
		<h4 style="margin-left: 550px;">${username}</h4>
		<%
		if (session.getAttribute("username") != null) {

			out.println("<form action='coLogoutServlet' method='post'>");
			out.println("<button name='logout'>LOGOUT</button>");
			out.println("</form>");
		}
		%>
	</div>
	<div class="admin-container">
		<div class="add-staff-panel">

			<form class='panel-form-button' action="displayApplication" method="POST">

				<button name='view' class="up">View Application</button>
			</form>
			<br>
			<form class='panel-form-button' method="POST">
				<button class="up">
					<a href="coordinatorinsert.jsp">Create Report</a>
				</button>
			</form>

		</div>
	</div>
</body>
</html>