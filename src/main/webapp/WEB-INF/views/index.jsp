<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<style>
body {
	background-image:
		url("https://static.vecteezy.com/system/resources/previews/005/424/812/original/volunteers-donating-blood-blood-donor-charity-concept-world-blood-donor-day-health-care-for-banner-poster-card-ui-web-landing-page-template-for-blood-bank-or-hospital-flat-illustration-free-vector.jpg");
	background-repeat: no-repeat;
	/* backgriunt-size: 1920px 1281px; */
	background-size: 1400px 700px;
	
}

.main-heading {
	background-color: #f196a4;
	padding: 12px 1px -9px 4px;
	height: 60px;
	text-align: left;
	width: 292px;
}

a:link, a:visited {
	background-color: #3782e9;
	color: white;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	margin-top: 2px;
	width: 220px;
	border-radius: 9px;
	height: 37px;
}

.sub-page-access {
	font-size: 17px;
	margin-top: 7px;
}

.sub-page-access:hover {
	background-color: purple;
}

.side-title {
	font-size: 27px;
	margin-left: 22px;
	margin-top: -6px;
}
</style>
</head>
<body>
	<div class="main-heading">
		     
		<h1 class="side-title">Admin Login</h1>
	</div>
	   
	<div>
		 <a href="/admin/adminpage">
			<h1 class="sub-page-access">Admin Page</h1>
		</a>  
	</div>
	   
	<div>
		<div>
			<h1 class="main-heading">Blood Request</h1>
		</div>
		<div>
			<a href="/bloodrequest/addbloodrequestform">
				<h1 class="sub-page-access">Add Blood Request</h1>
			</a>
		</div>
		<div>
			<h1 class="main-heading">Donor Appointment</h1>
		</div>
		<div>
			<a href="/appointment/adddonorappointmentform">
				<h1 class="sub-page-access">Add Donar Appointment</h1>
			</a>
		</div>
	</div>
</body>
</html>