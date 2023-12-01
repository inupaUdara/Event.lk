<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="styles/register.css">
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
    <div class="reg-container">
	<div class="wrapper">
        <form action="insert"method="post">
            <h1>Register</h1>
            <div class="input-box">
               <label for=staffName>Name:</label><input type="text" placeholder="Name" name="name" required>
            </div>
            <div class="input-box">
               <label for=staffName>Email:</label><input type="email" placeholder="Email" name="email" required>
            </div>
            <div class="input-box">
                <label for=staffName>Phone:</label><input type="text" placeholder="Phone" name="phone" required>
            </div>
            <div class="input-box">
                <label for=staffName>Username</label><input type="text" placeholder="Username" name="username" required>
            </div>
            <div class="input-box">
                <label for=staffName>Password:</label><input type="password" placeholder="Password" name="password" required>
            </div>
            
            <button type="submit"name="submit"class="btn">Register</button>
          
             
     </form>

    </div>
    </div>

</body>
</html>