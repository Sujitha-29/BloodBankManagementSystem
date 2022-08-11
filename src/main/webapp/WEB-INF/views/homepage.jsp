<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style>
body {
	background-image:
		url("https://static.vecteezy.com/system/resources/previews/005/424/812/original/volunteers-donating-blood-blood-donor-charity-concept-world-blood-donor-day-health-care-for-banner-poster-card-ui-web-landing-page-template-for-blood-bank-or-hospital-flat-illustration-free-vector.jpg");
	background-repeat: no-repeat;
	background-size: 1400px 700px;
}

.menu {
	width: 200px;
    float: left; 
    height: 40px;
    margin-top: -26px;
    margin-left: 24%;
}
ul {
	float: left;
	display: flex;
	justify-content: center;
	align-items: center;
	white-space: nowrap;
}

ul li {
	list-style: none;
	margin-left: 62px;
	margin-top: 27px;
	font-size: 20px;
}

ul li a {
	text-decoration: none;
	color: #f30833;
	font-family: Arial;
	font-weight: bold;
	transition: 0.4s ease-in-out;
}

ul li a:hover {
	color: #0db1a1;
}
</style>
</head>
<body>
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