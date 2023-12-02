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
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Poppins:wght@500&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/8a45cec2d1.js"></script>
        <link rel="stylesheet" href="styles/coordinatorinsert.css">
        
</head>
<body>

	<%	
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String event = request.getParameter("event");
		String des = request.getParameter("des");	
	%>

	<div class="admin-header">
            <h1>Report Update</h1>
            
            <h4 style="margin-left: 870px;">${username}</h4>
		<%
		if (session.getAttribute("username") != null) {

			out.println("<form action='coLogoutServlet' method='post'>");
			out.println("<button name='logout'>LOGOUT</button>");
			out.println("</form>");
		}
		%>

       </div>
        <div class="admin-container admin-2">
            <div class="add-staff">
                <form class='form-dis' action="coordinatorUpdate" method="POST">
                    <h2>Report Update</h2>
                    <label for="id">Report ID:</label>
                    <input type="text" name="id" value = "<%= id %>" readonly><br>
                    <label for="ParticipantName">Participant Name:</label>
                    <input type="text" name="name" value = "<%= name %>"required><br>
                    <label for="email">Email:</label>
                    <input type="email" name="email" value = "<%= email %>"required><br>
                  	<label for="pay">Event:</label>
					<input type="text" name="event" value="<%= event %>"required><br>
					<label for="des">Description:</label>
					<input type="text" name="des" value="<%= des %>"required><br> 

                    <button name='upload' class="up">Update Report</button>  
              <br>           
                </form>
            </div>
        </div>

	

</body>
</html>