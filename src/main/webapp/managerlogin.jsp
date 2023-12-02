
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Poppins:wght@500&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/8a45cec2d1.js"></script>
    <link rel="stylesheet" href="styles/eOLogin.css">

</head>

<body>
    <div class="admin-container">

	<div class="admin-form">
					   <h3>Manager Login</h3>
	<form action="managerLogin" method="post">
				
				<input type="text" placeholder="USERNAME" name ="uid"  placeholder="Enter Your Username">
				<input type="password" placeholder="PASSWORD" name="pass" placeholder="Enter Your Password" >
				
				<button type="submit" name="submit">LOGIN</button>
	</form>
			</div>
	<div class="admin-image">
         <img src="images/desk-office.jpg" width="300px">
    </div>
</div>
		    
</body>
</html>


