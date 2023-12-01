<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="styles/regEvent.css">
 <link rel="stylesheet" href="styles/nav.css">
<title>Event</title>
</head>
<body>
<%
String name=request.getParameter("eventName");
String id=request.getParameter("eventId");
%>
	<nav class="navbar">
        <h1 class="logo">Event.lk</h1>
        <ul class="links">
            <li><a href="index.jsp">Home</a></li>
            
            <li><a href="aboutUs.jsp">About Us</a></li>
          
            <li><a href="#">${cusUsername}</a></li>
         	 <%
			
	
			
			if(session.getAttribute("cusUsername")!=null)
			{
				
				out.println("<li>");
				out.println("<form action='logoutServlet'>");
				out.println("<a><input type='submit' value='Logout' class='btn2'></a>");
				out.println("</form>");
				out.println("</li>");
			}
			else{
				out.println(" <li ><a href='login.jsp'>Login</a></li>");
			}
		%>
        </ul>
    </nav>
    <div class="reg-container">
	<div class="wrapper">
  		<form action="regEvent"method="post">
	  		<h1>Event Registration - <%= name %></h1>
	  		
	  		<div class="input-box">
	                 <label for=fnameame>First Name:</label><input type="text" placeholder="First Name" name="fname" required>
	        </div>
	        <div class="input-box">
	                 <label for=lastname>Last Name:</label><input type="text" placeholder="Last Name" name="lname" required>
	        </div>
	        <div class="input-box">
	                 <label for=email>Email:</label><input type="email" placeholder="Email Address" name="email" required>
	                
	        </div>
	        <div class="input-box">
	                 <label for=phone>Phone:</label><input type="text" placeholder="Phone" name="phone" required>
	                
	        </div>
	       
			<div class="input-box">
	                <input type="text" name="ename" value="<%= name %>" hidden>
	        </div>
	         <div class="input-box">
	                <input type="text" name="eid" value="<%= id %>" hidden>
	        </div>
	        <button type="submit"name="submit"class="btn">Submit</button>	
	        
   	</form>
   	</div>
   	</div>

</body>
</html>