<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>account</title>
<link rel="stylesheet" href="styles/userAccount.css">
<link rel="stylesheet" href="styles/nav.css">

</head>
<body>

	<%
	if (session.getAttribute("cusUsername") == null) {

		response.sendRedirect("login.jsp");
	}
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
			<li>
				<%
				response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

				if (session.getAttribute("cusUsername") != null) {

					out.println("<form action='logoutServlet'>");
					out.println("<input type='submit' value='Logout'class='btn2'> ");
					out.println(" </form>");
				}
				%>
			</li>
		</ul>
	</nav>

	<c:forEach var="cus" items="${cusDetails}">
		<c:set var="id" value="${cus.id}" />
		<c:set var="name" value="${cus.name}" />
		<c:set var="email" value="${cus.email}" />
		<c:set var="phone" value="${cus.phone}" />
		<c:set var="uname" value="${cus.userName}" />
		<c:set var="pass" value="${cus.password}" />
		<div class="wrapper">
			<h1>Account Details</h1>
			<h2></h2>


			<div class="input-box">
				<label class="form-label">Username</label> <input type="text"
					class="form-control mb-1" value="${cus.userName}" readonly>
			</div>
			<div class="input-box">
				<label class="form-label">Name</label> <input type="text"
					class="form-control" value="${cus.name}" readonly>
			</div>
			<div class="input-box">
				<label class="form-label">E-mail</label> <input type="text"
					class="form-control mb-1" value="${cus.email}" readonly>
			</div>
			<div class="input-box">
				<label class="form-label">Phone</label> <input type="text"
					class="form-control" value="${cus.phone}" readonly>
			</div>
			<div class="input-box">
				<label class="form-label">Current password</label> <input
					type="password" class="form-control" value="${cus.password}"
					readonly>
			</div>
	</c:forEach>
	<c:url value="updateCustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="uname" value="${uname}" />
		<c:param name="pwd" value="${pass}" />
	</c:url>
	<div class="btn">
		<a href="${cusupdate}"><button type="button" class="update">Edit</button></a>


		<c:url value="deleteCustomer.jsp" var="cusdelete">
			<c:param name="id" value="${id}" />
			<c:param name="name" value="${name}" />
			<c:param name="email" value="${email}" />
			<c:param name="phone" value="${phone}" />
			<c:param name="uname" value="${uname}" />
			<c:param name="pwd" value="${pass}" />
		</c:url>
		<a href="${cusdelete}"><button type="button" class="delete">Delete
				My Account</button></a>
	</div>
	</div>
	
	

</body>
</html>