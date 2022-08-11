<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminLogin Form</title>
<style>
body {
	background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
		url("https://www.glaad.org/sites/default/files/styles/1200x630/public/images/2018-11/AmpHeader_BanToBan_6.png");
	background-repeat: no-repeat;
	background-size: 1400px 700px;
}

.login-form {
	width: 75px;
	height: 30px;
	font-size: 17px;
	background-color: lightblue;
	border: 1px solid blue;
	border-radius: 3px;
	color: blue;
}
</style>
</head>
<body>
	<div id="root" style="width: auto;">
		<div id="form" align="center">
			<form:form action="adminlogin" method="post" modelAttribute="login">
				<h1 style="font-size: 68px;">Admin Login</h1>
				<table>
					<tr>
						<td><label for="adminId" style="font-size: 35px;">Admin
								Id :</label></td>
						<td><form:input path="adminId" placeholder="adminId"
								style="width: 100%;height: 35px;margin-left: 20px;font-size: 17px;" /></td>
					</tr>
					<tr>
						<td><label for="adminPassword" style="font-size: 35px;">Password
								:</label></td>
						<td><form:input path="adminPassword" placeholder="password"
								type="password"
								style="width: 100%;height: 35px;margin-left: 20px;font-size: 17px;" /></td>
					</tr>
				</table>
				<div style="margin-top: 20px; margin-left: 195px;">
					<tr>
						<td><form:button class="login-form" type="submit">Sign In</form:button></td>
						<td><form:button class="login-form"
								style="margin-left: 12px;">
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