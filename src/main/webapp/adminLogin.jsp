<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="styles/adminLogin.css">
<title>Admin Login</title>
</head>
<body>
	<div class="admin-container">
            
        <div class="admin-form">
            <form action="adminLogin" method="POST">
                <h2>Admin Login</h2>
                <input type="text" placeholder="User Name" name="adminName" required>
                <input type="password" placeholder="Password" name="adminPassword" required>
                <button type="submit" name="signin">LOGIN</button>

                
            </form>
        </div>
        <div class="admin-image">
            <img src="images/desk-office.jpg" width="300px">
        </div>
       </div>
</body>
</html>