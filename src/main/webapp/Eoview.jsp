<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Organizer Details</title>
 <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Poppins:wght@500&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/8a45cec2d1.js"></script>
    <link rel="stylesheet" href="styles/Manager1.css">
    
</head>
<body>
	 <h2 class ="M1"> Available Coordinators</h2>
         <br>
         <br>
<div class ="cordi">
<table>
    <thead>
        <tr>
            <th>Oraganizer ID</th>
            <th>Oraganizer Name</th>
           
           
    </thead>
    <tbody>
        
     <c:forEach var="coo" items="${cDetails}">
            <tr>
                <td>${coo.id}</td>
                <td>${coo.name}</td>               
                            
                 </tr>
        </c:forEach>
    </tbody>
</table>
</div>
	
</body>
</html>