<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Report Details</title>
     <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Poppins:wght@500&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/8a45cec2d1.js"></script>
    <link rel="stylesheet" href="styles/ManagerUD.css">
</head>
<body>

             <div class="admin-header">
          <h2> DETAILS  </h2>
                       </div>
           
           <div class="admin-container">
                   <div class="add-staff">
             <br><br>
    <table class="t">
            
              
        <c:forEach var="rep" items="${rDetails}">
        
        <c:set var ="eid" value ="${rep.id}" />
        <c:set var ="name" value ="${rep.name}" />
        <c:set var ="etype" value ="${rep.event_type}" />
        <c:set var ="plimit" value ="${rep.participant_limit}" />  
        <c:set var ="tperiod" value ="${rep.time_period}" />
        <c:set var ="instruction" value ="${rep.instruction}" />
        <c:set var ="addorganizer" value ="${rep.assign_organizer}" />
        <c:set var ="addcoordinator" value ="${rep.assign_coordinator}" />
             
              
           <tr>
            <td class="t"><h3>Event ID</h3></td>
            <td><input type="text" name ="id" value="${rep.id}" readonly></td>
           </tr>  
           
             <tr>
            <td class="t"><h3>Name</h3></td>
            <td><input type="text" name ="id" value="${rep.name}" readonly></td>
            
              <tr>
            <td class="t"><h3>Event Type</h3></td>
             <td><input type="text" name ="id" value="${rep.event_type}" readonly></td>
                </tr>
             
               <tr>
            <td class="t"><h3>Participant Limit</h3></td>
              <td><input type="text" name ="id" value="${rep.participant_limit}" readonly></td>
                 </tr>
              
                <tr>
            <td class="t"> <h3>Time Period</h3></td>
            <td><input type="text" name ="id" value="${rep.time_period}" readonly></td>
               </tr>
            
              <tr>
            <td class="t"> <h3>Instruction</h3></td>
             <td><input type="text" name ="id" value="${rep.instruction}" readonly></td>
                </tr>
             
               <tr>
            <td class="t"> <h3>Assign Organizer</h3></td>
              <td><input type="text" name ="id" value="${rep.assign_organizer}" readonly></td>
                 </tr>
              
                <tr>
              <td class="t"> <h3>Assign Coordinator</h3></td>  
              <td><input type="text" name ="id" value="${rep.assign_coordinator}" readonly></td>
                 </tr>
        
    </c:forEach>
     </table>
    
    <c:url value="reportupdate.jsp" var="repupdate">
         <c:param name = "id" value= "${eid}"/> 
         <c:param name = "name" value= "${name}"/> 
         <c:param name = "etype" value= "${etype}"/> 
         <c:param name = "plimit" value= "${plimit}"/> 
         <c:param name = "tperiod" value= "${tperiod}"/> 
         <c:param name = "instruction" value= "${instruction}"/> 
         <c:param name = "addorganizer" value= "${addorganizer}"/> 
         <c:param name = "addcoordinator" value= "${addcoordinator}"/> 
         
    </c:url>
    
    <a href ="${repupdate}"> 
    <input type="submit" name="submit" class="up-button" value ="update Event Details">
    </a>
    <br>
    
    <c:url value="reportdelete.jsp" var="repdelete">
    
      <c:param name = "id" value= "${eid}"/> 
         <c:param name = "name" value= "${name}"/> 
         <c:param name = "etype" value= "${etype}"/> 
         <c:param name = "plimit" value= "${plimit}"/> 
         <c:param name = "tperiod" value= "${tperiod}"/> 
         <c:param name = "instruction" value= "${instruction}"/> 
         <c:param name = "addorganizer" value= "${addorganizer}"/> 
         <c:param name = "addcoordinator" value= "${addcoordinator}"/> 
    </c:url>
    <a href ="${repdelete}"> 
    <input type="submit" name="submit" class="delete-button" value ="Delete Event Details">
    </a><br>
    </div></div>
  
</body>
</html>
