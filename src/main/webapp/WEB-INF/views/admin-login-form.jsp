<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>AdminLoginDemo</title>
<style><%@include file ="/WEB-INF/css/adminlogin.css"%>
body {
	font-family: "Open Sans";
	color: #fff;
}
</style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="history.back()">Go Back</button>
	<section>
		<div class="form-container">
			<h1>AdminLogin</h1>
			<form:form action="adminlogin" method="post" modelAttribute="login">
				<div class="control">
					<label for="adminName" class="label">AdminName :</label>
					<form:input path="adminName" placeholder="adminName" class="input" />
				</div>
				<div class="control">
					<label for="adminPassword" class="label">Password :</label>
					<form:input path="adminPassword" placeholder="password"
						type="password" pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
						title="Enter a valid password Welcomes@03" required="true"
						class="input" />
				</div>
				<div class="control">
					<input type="submit" value="Login">
				</div>
			</form:form>
	</div>
	</section>
</body>
</html>