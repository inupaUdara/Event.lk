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
        <div class="admin-container admin-2">
            <div class="add-staff">
                <form action="coordinatorInsert" method="POST" class='form-dis'>
                    <h2>Create Report</h2>
                    <label for="ParticipantName">Participant Name:</label>
                    <input type="text" name="name"required><br>
                    <label for="email">Email:</label>
                    <input type="email" name="email" id=""required><br>
                  	<label for="event">Event:</label>
					<input type="text" name="event" id="event"required><br>
					<label for="des">Description:</label>
					<input type="text" name="des" id="des"required><br> 

                    <button name='upload' class="up">Create Report</button>  
              <br>           
                </form>
                <br>
                <form class='form-dis' action="coordinatorDisplay" method="POST">
                	 <button  name='display' class="dis">Display Report</button>
                </form>
                 
            </div>
        </div>
        <div class="table-section">
        <table>
            <thead>
            
                <tr class="row1">
                    <th scope="col">Id</th>
                    <th scope="col">Participant Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">event</th>
                    <th scope="col">Description</th>
                     <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
            	<c:forEach var="report" items="${reportDetails}">
            	
            	<c:set var="id" value="${report.id}"/>
            	<c:set var="name" value="${report.name}"/>
            	<c:set var="email" value="${report.email}"/>
            	<c:set var="event" value="${report.event}"/>
            	<c:set var="des" value="${report.des}"/>
     	
            	<tr>
            		<td>${report.id}</td>
			     	<td>${report.name}</td>
			     	<td>${report.email}</td>
			     	<td>${report.event}</td>
			     	<td>${report.des}</td>

			     	<td>
			     		<c:url value="updatereport.jsp" var="repupdate">
			     			
			     			<c:param name="id" value="${id}"/>
			     			<c:param name="name" value="${name}"/>
			     			<c:param name="email" value="${email}"/>
			     			<c:param name="event" value="${event}"/>
			     			<c:param name="des" value="${des}"/>
			     	
			     		</c:url>
			     		<button><a href ="${repupdate}">Update</a></button>
                       
                        <c:url value="deletereport.jsp" var="redelete">
			     			<c:param name="id" value="${id}"/>
			     			<c:param name="name" value="${name}"/>
			     			<c:param name="email" value="${email}"/>
			     			<c:param name="event" value="${event}"/>
			     			<c:param name="des" value="${des}"/>
			     	
			     		</c:url>
                        
                        <button><a href="${redelete}">Delete</a></button>
            		</td>
            		</tr>         	
            	</c:forEach>
            </tbody>
        </table>
        </div>
</body>
</html>