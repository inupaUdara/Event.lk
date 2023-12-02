<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create event</title>
    
    <title>insert</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Poppins:wght@500&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/8a45cec2d1.js"></script>
    <link rel="stylesheet" href="styles/ManagerUD.css">
    
</head>
<body>
            
         <div class="admin-header">
                         <h2> Create New Event</h2>
       </div>
          
          
  
    <div class="insert-container">
         <div class="add-insert">
         
                 <form action="repInsert" method="post">
              
             
              <h3 class="abc"> Event Name <br>
              <input type="text" name ="name" placeholder="(ex:EVxxx)"  required><br></h3> 
              
              <h3 class="abc">  Event Type <br>
              <input type="text" name="etype" placeholder="Day event,Night evnet.." required><br></h3> 
              
              <h3 class="abc">   Participant Limit <br>
              <input type="text" name ="plimit" placeholder="enter limit" required ><br></h3> 
              
              <h3 class="abc">  Date <br>
              <input type="text" name ="tperiod" placeholder="year-mm-dd" required><br></h3> 
              
              <h3 class="abc">   Instruction<br>
              <input type ="text" class="large-input" name= "instruction" placeholder ="type here" required><br></h3> 
          
          
              <h3 class="abc">   Add Organizer <br>
              <input type ="text" name= "addorganizer" placeholder ="type here" required></h3> <br>
         
         
         
              <h3 class="abc">  Add Coordinator<br>
              <input type ="text" name= "addcoordinator"  placeholder ="type here" required><br> </h3> 
              <br>
          
        
        <input type="submit" name="submit" class="update-button" value=" ADD ">
        </form>
        
        <form action="managerPanel" method="post"> <input type ="submit" name ="submit" class="delete-button" value ="Cancel"> 
        </form><br>

  
         <div class ="right-side">
         <form action="cooDetails" method="post">
         <input type ="submit" name ="submit"  class="up-button" value ="Available event Coordinators">
         </form>
         <br>
          <form action="orgDetails" method="post">
         <input type ="submit" name ="submit"  class="up-button" value ="Available event Organizers">
         </form>
   </div>
     
  </div>
        </div>
     

</body>
</html>