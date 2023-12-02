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
  
        <div class="table-section">
        <table>
            <thead>
            
                <tr class="row1">
                    <th scope="col">Id</th>
                    <th scope="col">First Name</th>
                    <th scope="col">Last Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Phone</th>
                    <th scope="col">Event Name</th>
                    <th scope="col">EventId</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
            	<c:forEach var="application" items="${applicationDetails}">
     				
     				    <c:set var="id" value="${application.id}"/>
            			<c:set var="fname" value="${application.fname}"/>
            			<c:set var="lname" value="${application.lname}"/>
            			<c:set var="email" value="${application.email}"/>
            			<c:set var="phone" value="${application.phone}"/>
            			<c:set var="ename" value="${application.ename}"/>
            			<c:set var="eid" value="${application.eid}"/>
            	<tr>
            		<td>${application.id}</td>
			     	<td>${application.fname}</td>
			     	<td>${application.lname}</td>
			     	<td>${application.email}</td>
			     	<td>${application.phone}</td>
			     	<td>${application.ename}</td>
			     	<td>${application.eid}</td>
        
	     					<c:url value="displayApplication.jsp" var="displayApp">
			     			
			     			<c:param name="id" value="${id}"/>
			     			<c:param name="fname" value="${fname}"/>
			     			<c:param name="lname" value="${lname}"/>
			     			<c:param name="email" value="${email}"/>
			     			<c:param name="phone" value="${phone}"/>
			     			<c:param name="ename" value="${ename}"/>
			     			<c:param name="eid" value="${eid}"/>
	     		 			 </c:url>
	     		 			 
	     		 			
	     		 			<c:url value="rejectApplication.jsp" var="rejectApp">
			     			
			     			<c:param name="id" value="${id}"/>
			     			<c:param name="fname" value="${fname}"/>
			     			<c:param name="lname" value="${lname}"/>
			     			<c:param name="email" value="${email}"/>
			     			<c:param name="phone" value="${phone}"/>
			     			<c:param name="ename" value="${ename}"/>
			     			<c:param name="eid" value="${eid}"/>
	     		 			 </c:url>
	     		 			 
	     		 			 
	     		 	<td> 		 
			     		<button><a href ="${displayApp}"">Accept</a></button>
                        <button><a href="${rejectApp}">Reject</a></button>
            		</td>
            		</tr>         	
            	</c:forEach>
            </tbody>
        </table>
        </div>
	

</body>
</html>