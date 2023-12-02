<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
       
    <title> DASHBOARD</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Poppins:wght@500&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/8a45cec2d1.js"></script>
    <link rel="stylesheet" href="styles/Manager1.css">
    
      
</head>
<body>

           <div class="admin-header">
          <h2> DASHBOARD </h2>
          <h4 style="margin-left: 550px;">${username}</h4>
          <a href="systemPanel.jsp" style="color: white; text-decoration: none;">logout</a>
		
       </div>
<br><br>
<!-- Content from a.jsp -->


  <div class="A">
        <div class="left-side">
        
        <form action="search" method="post">
                <h4>ENTER EVENT NAME : <input type="text" name="namE"> 
                <input type="submit" name="submit"  value="Search"></h4>
        </form>
  </div>
  
  <div class="right-side">
            <form action="reportinsert.jsp">
            <input type="submit" class="new" value="Create New Event">
            </form>
  </div>
  
  </div>   <br><br>

      <div class ="B">
               <h2> Event Details </h2>
<br>
<!-- Content from view.jsp -->
<!-- jsp:include page="view.jsp" /-->
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
            <th>Update</th>
            <th>Delete</th>
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
                <td>
                    <form action="reportupdate.jsp" method="post">
                        <input type="hidden" name="id" value="${rep.id}" />
                        <input type="hidden" name="name" value="${rep.name}" />
                        <input type="hidden" name="etype" value="${rep.event_type}" />
                        <input type="hidden" name="plimit" value="${rep.participant_limit}" />
                        <input type="hidden" name="tperiod" value="${rep.time_period}" />
                        <input type="hidden" name="instruction" value="${rep.instruction}" />
                        <input type="hidden" name="addorganizer" value="${rep.assign_organizer}" />
                        <input type="hidden" name="addcoordinator" value="${rep.assign_coordinator}" />
                       
                        <button type="submit" class="update-button">Update</button>
                    </form>
                </td>
                <td>
                    <form action="reportdelete.jsp" method="post">
                        <input type="hidden" name="id" value="${rep.id}" />
                        <input type="hidden" name="name" value="${rep.name}" />
                         <input type="hidden" name="etype" value="${rep.event_type}" />
                        <input type="hidden" name="plimit" value="${rep.participant_limit}" />
                        <input type="hidden" name="tperiod" value="${rep.time_period}" />
                        <input type="hidden" name="instruction" value="${rep.instruction}" />
                        <input type="hidden" name="addorganizer" value="${rep.assign_organizer}" />
                        <input type="hidden" name="addcoordinator" value="${rep.assign_coordinator}" />
                       
                        
                       
                        <button type="submit" class="delete-button">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</div>
</body>
</html>
