<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Delete Event</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Poppins:wght@500&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/8a45cec2d1.js"></script>
    <link rel="stylesheet" href="styles/ManagerUD.css">
</head>
<body>
      
      
      
       <%
        
       String id = request.getParameter("id");
       String name = request.getParameter("name");
	   String event_type = request.getParameter("etype");
       String participant_limit = request.getParameter("plimit"); 
       String time_period = request.getParameter("tperiod");
       String instruction = request.getParameter("instruction");
       String assign_organizer = request.getParameter("addorganizer"); 
       String assign_coordinator = request.getParameter("addcoordinator");
       %>
       
       <div class="admin-header">
          <h2> Event Details Delete </h2>
       </div>
    
        <div class="admin-container">
                   <div class="add-staff">
           
        <form action ="repDelete" method ="post">
        
   <table>
   
         <tr>
              <td> ID </td> <td> <input type="text" name ="id" value ="<%= id %>" readonly></td>
         </tr>
         <tr> 
              <td> Name </td> <td> <input type="text" name ="name" value ="<%= name %>" readonly></td>
         </tr>
         <tr>
              <td>Event Type</td> <td><input type="text" name="etype" value ="<%= event_type %>" readonly></td>
         </tr>
         <tr>
              <td>Participant Limit </td> <td> <input type="text" name ="plimit" value ="<%= participant_limit %>" readonly></td>
         </tr>
         <tr>
              <td>Time</td> <td><input type="text" name ="tperiod" value ="<%= time_period %>" readonly></td>
         </tr>
         <tr> 
              <td> Instruction </td> <td><input type ="text" name= "instruction" value ="<%= instruction %>" readonly></td>
         </tr>
         <tr>
             <td>Assigned Organizer </td> <td><input type ="text" name= "addorganizer" value ="<%= assign_organizer %>" readonly></td>
         </tr>
         <tr>
             <td>Assigned Coordinator </td> <td> <input type ="text" name= "addcoordinator" value ="<%= assign_coordinator %>" readonly></td> 
         </tr>
         
  </table>
          <br>
          <button type ="submit" name ="submit" class="btn" > DELETE</button> <br>
         
         </form>
</div>
</div>


</body>
</html>