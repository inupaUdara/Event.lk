<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="styles/coordinatorLogin.css">
</head>
 <body>
		<div class = "co">
		
        <div class="admin-container">
            
            <div class="admin-form">
                <form action="coordinatorLogin" method="POST">
                    <h2>Coordinator Login</h2>
                    <input type="text" placeholder="User Name" name="cname">
                    <input type="password" placeholder="Password" name="cpass">
                    <button type="submit" name="signin">LOGIN</button>

                    
                </form>
            </div>
            <div class="admin-image">
                <img src="images/desk-office.jpg" width="300px">
            </div>
        </div>
      </div>  
        
   </body>
</html>