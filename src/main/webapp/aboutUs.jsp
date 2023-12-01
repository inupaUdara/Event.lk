<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
<!-- Google web font "Open Sans" -->
<link rel="stylesheet"
	href="font-awesome-4.5.0/css/font-awesome.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="styles/bootstrap.min.css">


<link rel="stylesheet" href="styles/about.css">




</head>

<body>
	<div class="navi">
		<nav class="navbar">
			<h2 class="logo">Event.lk</h2>
			<ul class="links">
				<li><a href="index.jsp">Home</a></li>
				
				<li><a href="aboutUs.jsp">About Us</a></li>
				   <li>
            	<form action="displayAccount" method="post">
            		<input type="text" name="uname" value="${cusUsername}" hidden>
            		<input type="submit" value="${cusUsername}" class="btn3"><!-- After login display login username -->
            	</form>
            </li>
				 <%
			
	
			//After login, display logout button
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
		</div>
		<div class="parallax-window" data-parallax="scroll"
			data-image-src="images/bg1.jpeg">
			<section class="container tm-page-1-content">
				<div class="row">
					<div class="col-md-6 ml-auto tm-text-white">
						<header>
							<h1>About Us</h1>
						</header>
						<p>Welcome to Event.lk, where we captivate audiences and
							ignite stages. We curate amazing events that leave viewers in
							wonder. Our skill lies in coordinating flawless, heart-pounding
							performances for everything from concerts to theatrical shows.
							We're motivated by a desire to create moments that will stay long
							after the last curtain call. Join us in celebrating the magic of
							live shows - where every act is a masterpiece.</p>


					</div>
				</div>

			</section>
		</div>






		<div class="parallax-window tm-position-relative tm-form-section"
			data-parallax="scroll" data-image-src="images/bg2.jpeg">
			<div class="container ">
				<div class="row1 ">
					<div class="col-xs-12">
						<header>
							<h5>Contact Us</h5>
						</header>
					</div>
				</div>
				<div class="row tm-page-5-content">
					<div class="col-lg-4 col-md-6 col-xs-12">
						<div class="contact_message">
							<form action="contact" method="post" class="contact-form">
								<div class="form-group">
									<input type="text" id="contact_name" name="contact_name"
										class="form-control" placeholder="Name" required />
								</div>
								<div class="form-group">
									<input type="email" id="contact_email" name="contact_email"
										class="form-control" placeholder="Email" required />
								</div>
								<div class="form-group">
									<textarea id="contact_message" name="contact_message"
										class="form-control" rows="9" placeholder="Message" required></textarea>
								</div>
								<button type="submit" class="btn btn-danger tm-btn-submit">Submit</button>
							</form>
						</div>
					</div>
					<div class="col-lg-8 col-md-6 col-xs-12">
						<div class="tm-address-box">
							<p>We'd love to hear from you! Have questions about our
								upcoming shows or need assistance with an event? Reach out to us
								using the information below:</p>

							<address>
								<b>Our Address</b><br> <br> 440/660 ,<br> 
								New Kandy Road,<br> Malabe <br>
								<br> <b>Email - eventlk@gmail.com</b><br>
								<br> <b>Phone - 0763188242</b><br>
								<br>

							</address>
						</div>
					</div>
				</div>

				<div class="footer">
					<p>Copyright © 2018 Event.lk.</p>
				</div>
			</div>

		</div>


		<!-- load JS files -->
		<script src="js/jquery-1.11.3.min.js"></script>
		<script src="js/parallax.min.js"></script>
</body>

</body>
</html>