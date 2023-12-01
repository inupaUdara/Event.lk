<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Event Details</title>
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
		
		<%
		if (session.getAttribute("userName") != null) {

			out.println("<form action='eoLogoutServlet' method='get'>");
			out.println("<button name='logout'>LOGOUT</button>");
			out.println("</form>");
		}
		%>
	</div>
	<div class="table-section">
	<table>
    <thead>
        <tr>
            <th>Event ID</th>
            <th>Event Name</th>
            <th>Event Type</th>
            <th>Participant Limit</th>
            <th>Date </th>
            <th>Instruction</th>
            <th>Assign Organizer</th>
            <th>Assign Coordinator</th>
            
        </tr>
    </thead>
    <tbody>
        <c:forEach var="rep" items="${rDetails}">
            <tr>
                <td>${rep.id}</td>
                <td>${rep.name}</td>
                <td>${rep.event_type}</td>
                <td>${rep.participant_limit}</td>
                <td>${rep.time_period}</td>
                <td>${rep.instruction}</td>
                <td>${rep.assign_organizer}</td>
                <td>${rep.assign_coordinator}</td>
                </tr>
                
        </c:forEach>
        </tbody>
        </table>
	
</div>
</body>
</html>