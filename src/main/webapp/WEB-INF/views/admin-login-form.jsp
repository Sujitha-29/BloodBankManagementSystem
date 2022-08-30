<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>AdminLoginPage</title>
<style><%@include file ="/WEB-INF/css/adminlogin.css"%>
body {
	font-family: "Open Sans";
	color: #fff;
}
</style>
</head>
<body>
	<section>
		<div class="form-container">
			<h1>Admin Login</h1>
			<form:form action="adminlogin" method="post" modelAttribute="login">
				<div class="control">
					<label for="adminName" class="label">Admin Name :</label>
					<form:input path="adminName" placeholder=" Enter Admin Name" class="input" />
				</div>
				<div class="control">
					<label for="adminPassword" class="label">Password :</label>
					<form:input path="adminPassword" placeholder="Enter Admin Password"
						type="password" pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
						title="Enter a valid password Welcomes@03" required="true"
						class="input" />
				</div>
				<div class="control">
					<input type="submit" value="Login">
				</div>
			</form:form>			
			<div>${result}
			</div>
	</div>
	</section>
</body>
</html>