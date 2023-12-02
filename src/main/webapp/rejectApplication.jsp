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
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String ename = request.getParameter("ename");
		String eid = request.getParameter("eid");
	
	%>

	<div class="admin-header">
            <h1>Delete Application</h1>
            <h4 style="margin-left: 550px;">${username}</h4>
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
                <form class='form-dis' action="rejectApplication" method="POST">
                    <h2>Reject Application</h2>
                    <label for="id">Participant ID:</label>
                    <input type="text" name="id" value = "<%=id%>" readonly><br>
                    <label for="ParticipantName">First Name:</label>
                    <input type="text" name="fname" value = "<%=fname%>"readonly><br>
                    <label for="email">Last Name:</label>
                    <input type="text" name="lname" value = "<%=lname%>"readonly><br>
                  	<label for="pay">Email:</label>
					<input type="text" name="email" value="<%=email%>"readonly><br>
					<label for="des">Phone Number:</label>
					<input type="text" name="phone" value="<%=phone%>"readonly><br> 
					<label for="des">Event Name:</label>
					<input type="text" name="ename" value="<%=ename%>"readonly><br> 
					<label for="des">Event ID:</label>
					<input type="text" name="eid" value="<%=eid%>"readonly><br> 

                    <button name='Accept' class="up">Reject Application</button>  
              <br>           
                </form>
            </div>
        </div>

	

</body>
</html>