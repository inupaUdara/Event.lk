<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
   <c:if test="${empty sessionScope.authenticatedUser}">
    <% response.sendRedirect("v.jsp"); %>
</c:if>

<!DOCTYPE html>
<html>
     <head>
<meta charset="ISO-8859-1">
<title> Update Event</title>
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
          <h2> UPDATE EVENT DETAILS  </h2>
                       </div>
       
 <div class="admin-container">
                   <div class="add-staff">
         <form action ="repUpdate" method ="post">
         
      <br>
         
  <table class="t">
            <tr>
                <td class="t"> <h3>ID </h3></td> <td> <input type="text" name ="id" value ="<%= id %>" readonly></td>
            </tr>
            <tr> 
                <td class="t"> <h3>Name </h3></td> <td> <input type="text" name ="name" value ="<%= name %>" required></td>
            </tr>
            <tr>
                <td class="t"><h3>Event Type</h3></td> <td><input type="text" name="etype" value ="<%= event_type %>" required></td>
            </tr>
            <tr>
                <td class="t"><h3>Participant Limit </h3></td> <td> <input type="text" name ="plimit" value ="<%= participant_limit %>" required></td>
            </tr>
            <tr>
                <td class="t"><h3>Date </h3></td> <td><input type="text" name ="tperiod" value ="<%= time_period %>" required></td>
            </tr>
            <tr> 
                <td class="t"><h3>Instruction </h3></td> <td><input type ="text" name= "instruction" class="large-input" value ="<%= instruction %>" required></td>
            </tr>
            <tr>
                <td class="t"><h3>Add Organizer </h3></td> <td><input type ="text" name= "addorganizer" value ="<%= assign_organizer %>" required></td>
            </tr>
            <tr>
                <td class="t"><h3>Add Coordinator</h3> </td> <td> <input type ="text" name= "addcoordinator" value ="<%= assign_coordinator %>" required></td> 
          </tr>
         
 </table>
         <br>
          <input type ="submit" name ="submit" class="up-button" value ="UPDATE MY DATA" > <br>
          </form>
             
         <form action="managerPanel" method="post">
         <input type ="submit" name ="submit" class="delete-button" value ="Back to Home"><br>
         </form> <br>
         </div>
          </div>

</body>
</html>