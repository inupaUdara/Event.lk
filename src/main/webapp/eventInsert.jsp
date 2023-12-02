<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD EVENT</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Poppins:wght@500&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/8a45cec2d1.js"></script>
<link rel="stylesheet" href="styles/addEvent.css">
</head>
<body>

	<div class="admin-header">
		<h2>WELCOME TO EVENT ORGANIZER</h2>

		<h4 style="margin-left: 550px;">${userName}</h4>
		<form action="orgViewDetails" method="post">
			<button name="viewDetails">View Details</button>
		</form>
		<%
		if (session.getAttribute("userName") != null) {

			out.println("<form action='eoLogoutServlet' method='get'>");
			out.println("<button name='logout'>LOGOUT</button>");
			out.println("</form>");
		}
		%>
	</div>

	<div class="admin-container">

		<div class="add-staff">

			<form action="oraganizerInsert" method="post"
				enctype="multipart/form-data">

				<h2>Add Event</h2>

				<label for=eventID>Event ID:</label> <input type="text"
					placeholder="Event ID" name="id" required><br> <label
					for=eventName>Event Name:</label> <input type="text"
					placeholder="Event Name" name="name" required><br> <label
					for=venue>Event Venue:</label> <input type="text"
					placeholder="Venue" name="venue" required><br> <label
					for=date>Date:</label> <input type="text" placeholder="DD-MM-YY"
					name="date" required><br> <label for=image>Event
					Image:</label> <input type="file" placeholder="Image" name="image" required><br>

				<button type="submit" name="submit" class="btn">Register</button>
				<br>

			</form>
			<br>

			<form action="oraganizerDisplay" method="post">

				<button type="submit" name="submit" class="btn">Show</button>

			</form>
		</div>
	</div>

	<div class="table-section">
		<table>

			<thead>

				<tr class="row1">
					<th scope="col">Event ID</th>
					<th scope="col">Event Name</th>
					<th scope="col">Venue</th>
					<th scope="col">Date</th>
					<th scope="col">Image</th>
					<th scope="col">Action</th>
				</tr>
			</thead>

			<c:forEach var="event" items="${rows}">

				<c:set var="id" value="${event.id}" />
				<c:set var="name" value="${event.name}" />
				<c:set var="venue" value="${event.venue}" />
				<c:set var="date" value="${event.date}" />

				<tbody>
					<tr>
						<td>${event.id}</td>
						<td>${event.name}</td>
						<td>${event.venue}</td>
						<td>${event.date}</td>
						<td><img src="data:image/jpeg;base64,${event.imageData}"
							alt="Event Image"></td>
						<td><c:url value="deleteEvent.jsp" var="eventDelete">
								<c:param name="id" value="${id}" />
								<c:param name="name" value="${name}" />
								<c:param name="venue" value="${venue}" />
								<c:param name="date" value="${date}" />
							</c:url>

							<button>
								<a href="${eventDelete}">Delete</a>
							</button> <c:url value="updateEvent.jsp" var="eventUpdate">
								<c:param name="id" value="${id}" />
								<c:param name="name" value="${name}" />
								<c:param name="venue" value="${venue}" />
								<c:param name="date" value="${date}" />
							</c:url>
							<button>
								<a href="${eventUpdate}">Update</a>
							</button></td>
					</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>


</body>
</html>