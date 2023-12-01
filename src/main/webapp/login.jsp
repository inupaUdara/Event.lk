<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
 <link rel="stylesheet" href="styles/login.css">
 <link rel="stylesheet" href="styles/nav.css">
</head>
<body>
	<nav class="navbar">
        <h1 class="logo">Event.lk</h1>
        <ul class="links">
            <li><a href="index.jsp">Home</a></li>
           
            <li><a href="aboutUs.jsp">About Us</a></li>
          
            <li ><a href="login.jsp">Login</a></li>
         
        </ul>
    </nav>
 	<div class="wrapper">
  		<form action="log"method="post">
	  		<h1>Login</h1>
	  		<div class="input-box">
	                <input type="text" placeholder="Username" name="uname" required>
	        </div>
	        <div class="input-box">
	                <input type="password" placeholder="Password" name="pass" required>
	        </div>
	            
	        <button type="submit"name="submit"class="btn">Login</button>
	          
	        <div class="register-link">
	             <p>Don't have an account? <a href="register.jsp">Register</a></p>
	                
	        </div>
   		
   	</form>
   </div>
</body>
</html>