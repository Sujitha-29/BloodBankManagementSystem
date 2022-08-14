<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style><%@include file ="/WEB-INF/css/homepage.css"%>
body {
	background-image:
		url("https://static.vecteezy.com/system/resources/previews/005/424/812/original/volunteers-donating-blood-blood-donor-charity-concept-world-blood-donor-day-health-care-for-banner-poster-card-ui-web-landing-page-template-for-blood-bank-or-hospital-flat-illustration-free-vector.jpg");
	background-repeat: no-repeat;
	background-size: 1400px 700px;
}
</style>
</head>
<body>
<label class="logo">BloodBank</label>
<nav></nav>
	<div class="menu">
		<ul>
			<li><a href="#">HOME</a></li>
			<li><a href="/admin/adminpage">ADMIN</a></li>
			<li><a href="/bloodrequest/addbloodrequestform">BLOOD REQUEST</a></li>
			<li><a href="/appointment/adddonorappointmentform">DONOR APPOINTMENT</a></li>
			<li><a href="#">CONTACT</a></li>
		</ul>
	</div>
</body>
</html>