<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang ="en">
<head>
<meta charset="ISO-8859-1">
<title>AdminLogin Form</title>
<style><%@include file ="/WEB-INF/css/adminlogin.css"%>
body {
	background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
		url("https://www.glaad.org/sites/default/files/styles/1200x630/public/images/2018-11/AmpHeader_BanToBan_6.png");
	background-repeat: no-repeat;
	background-size: 1400px 700px;
}
</style>
</head>
<body>
	<div id="root" class="root">
		<div id="form" align="center">
		
			<form:form action="adminlogin" method="post" modelAttribute="login">
				<h1>Admin Login</h1>
				<table>
				<caption>AdminLogin Form</caption>
				<thead>
					<tr>
						<td><label for="adminId"  class="label" >Admin
								Id :</label></td>
						<td><form:input path="adminId" placeholder="adminId"
								class="input" /></td>
					</tr>
					<tr>
						<td><label for="adminPassword" class="label">Password
								:</label></td>
						<td><form:input path="adminPassword" placeholder="password"
								type="password" class="input" /></td>
					</tr>
					</thead>
				</table>
				<div class="margin">
					<tr>
						<td><form:button class="login-form" type="submit">Sign In</form:button></td>
						<td><form:button class="login-form" style="margin-left:12px;">
								<a href="/admin/addadminform">Sign Up</a>
							</form:button></td>
					</tr>
				</div>
			</form:form>
			</div>
		</div>
	
</body>
</html>
</body>
</html>