<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>DemoNavbar</title>
<style><%@include file ="/WEB-INF/css/demonavbars.css"%>
body {
	background-image:
		url("https://i2.wp.com/www.additudemag.com/wp-content/uploads/2005/06/blood-donation-ts-640012810.jpg");
	background-repeat: no-repeat;
	background-size: 1400px 660px;
	font-family: montserrat;
}
</style>
</head>
<body>
	<nav>
		<label class="logo">BloodBank</label>
		<ul>
			<li><a class="active" href="#">Home</a></li>
			<li><a href="/admin/adminpage">ADMIN</a></li>
			<li><a href="/bloodrequest/addbloodrequestform">BLOOD
					REQUEST</a></li>
			<li><a href="/person/addpersonform">NEW DONOR</a></li>
			<li><a href="/appointment/adddonorappointmentform">DONOR
					APPOINTMENT</a></li>
			<li><a href="/home/contactus">CONTACT</a></li>
		</ul>
	</nav>
</body>
</html>