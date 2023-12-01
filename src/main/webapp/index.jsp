<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
	<link rel="stylesheet" href="styles/index.css">
	
	
</head>
<body>



		
	<nav class="navbar">
        <h1 class="logo">Event.lk</h1>
        <ul class="links">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="aboutUs.jsp">About Us</a></li>
           
            
            <li>
            	<form action="displayAccount" method="post">
            		<input type="text" name="uname" value="${cusUsername}" hidden>
            		<input type="submit" value="${cusUsername}" class="btn3"><!-- display logged user name -->
            	</form>
            </li>
            
            <%
			
	
          //After login display logout button
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
 
	<header>
		<div class="header-content">
            <h2>Event.lk</h2>
            
            <h1>Ready for The Event</h1>
            <form action="event" method="post">
            
            	<button type="submit"name="submit"class="btn">
            	View The event
            	</button>
            </form>
            
        </div>
	</header>
</body>
</html>