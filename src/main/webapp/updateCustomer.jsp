<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Account</title>
<link rel="stylesheet" href="styles/updateCus.css">
<link rel="stylesheet" href="styles/nav.css">
</head>
<body>

	<% 

		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String username=request.getParameter("uname");
		String password=request.getParameter("pwd");
	%>
	<nav class="navbar">
        <h1 class="logo">Event.lk</h1>
        <ul class="links">
            <li><a href="index.jsp">Home</a></li>
             <li>
            <form action="displayAccount" method="post">
            		<input type="text" name="uname" value="${cusUsername}" hidden>
            		<input type="submit" value="${cusUsername}" class="btn3">
            </form>
            </li>
           	<%
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

			if (session.getAttribute("cusUsername") != null) {

				out.println("<form action='logoutServlet'>");
				out.println("<input type='submit' value='Logout'class='btn2'> ");
				out.println(" </form>");
			}
			%>
        </ul>
    </nav>
	<div class="wrapper">
	<form action="update" method="post">
		<h1>Edit Account Details</h1>
		<div class="input-box">
		CustomerID<input type="text"name="cusid"value="<%= id %>" readonly><br>
		</div>
		<div class="input-box">
		Name<input type="text"name="name"value="<%= name %>"><br>
		</div>
		<div class="input-box">
		Email<input type="text"name="email"value="<%= email %>"><br>
		</div>
		<div class="input-box">
		Phone<input type="text"name="phone"value="<%= phone %>"><br>
		</div>
		<div class="input-box">
		Username<input type="text"name="uname"value="<%= username %>"><br>
		</div>
		<div class="input-box">
		Password<input type="password"name="pass"value="<%= password %>"><br>
		</div>
	
		<input type="submit"name="submit"value="upadate" class="btn"><br>
	</form>
	</div>
	
	
	
</body>
</html>