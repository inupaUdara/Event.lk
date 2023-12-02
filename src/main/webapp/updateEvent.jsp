<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Event Details</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Poppins:wght@500&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/8a45cec2d1.js"></script>
    <link rel="stylesheet" href="styles/updateDelete.css">
</head>
<body>

	<%	
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String venue = request.getParameter("venue");
		String date = request.getParameter("date");
		
	%>
	
	<div class="admin-header">
		<h1>Update Event Details</h1>
		
	<h4 style="margin-left: 550px;">${userName}</h4>
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
			<form action="oraganizerUpdate" method="post" enctype="multipart/form-data">
		
				<label for=eventID>Event ID:</label>
				<input type="text" name="id" value="<%= id %>" readonly><br>
		
				<label for=eventName>Event Name:</label>
				<input type="text" name="name" value="<%= name %>" required><br>
			
				<label for=venue>Event Venue:</label>
				<input type="text" name="venue" value="<%= venue %>" required><br>
			
				<label for=date>Date:</label>
				<input type="text" name="date" value="<%= date %>" required><br>
		
				<label for=image>Event Image:</label>
				<input type="file" name="image" required><br>
		
				<button type="submit" name="submit" class="btn">UPDATE</button><br>
		
			</form>
		</div>
	</div>

</body>
</html>