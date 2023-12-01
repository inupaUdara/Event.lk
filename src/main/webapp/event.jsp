<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<title>Events</title>
<link rel="stylesheet" href="styles/event.css">

</head>
<body>
	
	<%
	// Check if the session attribute "cusUsername" is null
	if (session.getAttribute("cusUsername") == null) {

		response.sendRedirect("login.jsp");
	}
	%>
	<div class="navi">
		<nav class="navbar">
			<h1 class="logo">Event.lk</h1>
			<ul class="links">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="aboutUs.jsp">About Us</a></li>
				<li>
					<form action="displayAccount" method="post">
						<input type="text" name="uname" value="${cusUsername}" hidden>
						<input type="submit" value="${cusUsername}" class="btn3"><!-- display logged user name -->
					</form>
				</li>

				<%
				//After login display logout button
				if (session.getAttribute("cusUsername") != null) {

					out.println("<li>");
					out.println("<form action='logoutServlet'>");
					out.println("<a><input type='submit' value='Logout' class='btn2'></a>");
					out.println("</form>");
					out.println("</li>");
				} else {
					out.println(" <li ><a href='login.jsp'>Login</a></li>");
				}
				%>
			</ul>
		</nav>
	</div>

	<div class="container">
		<!-- Display Event Details -->
		<c:forEach var="event" items="${rows}">
			<c:set var="eventName" value="${event.name}" />
			<c:set var="eventid" value="${event.id}" />
			<div class="event-container">
				<div class="img-container">
					<img src="data:image/jpeg;base64,${event.imageData}"
						alt="event iamge">
				</div>
				<div class="body-container">
					<div class="overlay"></div>
					<div class="event-info">
						<p class="title">${event.id}</p>

						<div class="separator"></div>
						<p class="info">Colombo</p>
						<p class="price">${event.name}</p>

						<div class="additional-info">
							<p class="info">
								<i class="fas fa-map-marker-alt"></i> ${event.venue}
							</p>
							<p class="info">
								<i class="far fa-calendar-alt"></i> ${event.date}
							</p>


						</div>
					</div>
					<c:url value="regEvent.jsp" var="insertEvent">
						<c:param name="eventName" value="${eventName}" />
						<c:param name="eventId" value="${eventid}" />
					</c:url>
					<a href="${insertEvent}">
						<button class="action">Register</button>
					</a>
				</div>
			</div>
		</c:forEach>
	</div>


</body>
</html>