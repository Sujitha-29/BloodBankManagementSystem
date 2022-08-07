<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
</head>
<body>
	<div class="sub-headings">
		<h1>Admin Login</h1>
	</div>
	<div class="sub-div">
		<div>
			<!-- <a >List</a> -->

			<a href="/admin/listadmins">List</a>
		</div>
		<div>
			<a href="/admin/updateadminform?adminid=">Update Admin</a>
		</div>
		<div>
			<a href="/admin/deleteadmin?id=">Delete Admin</a>
		</div>
		<div>
			<a href="/admin/getadmin?id=">Find Admin By Id</a>
		</div>
	</div>
	<div class="sub-headings">
		<h1>Blood Group Details</h1>
	</div>
	<div class="sub-div">

		<div>
			<a href="/bloodgroup/listbloodgroup">Blood Group List</a>
		</div>
		<div>
			<a href="/bloodgroup/addbloodgroupform">Add Blood Group</a>
		</div>
		<div>
			<a href="/bloodgroup/updatebloodgroupform?bloodgroupid=">Update
				Blood Group</a>
		</div>
		<div>
			<a href="/bloodgroup/deletebloodgroup?id=">Delete Blood Group</a>
		</div>
		<div>
			<a href="/bloodgroup/getbloodgroup?id=">Find Blood Group</a>
		</div>
	</div>
	<div class="sub-headings">
		<h1>Persons Details</h1>
	</div>
	<div class="sub-div">

		<div>
			<a href="/person/listpersondetails">Persons List</a>
		</div>
		<div>
			<a href="/person/addpersonform">Add Person </a>
		</div>
		<div>
			<a href="/person/updatepersonform?personid=">Update Person</a>
		</div>
		<div>
			<a href="/person/deleteperson?id=">Delete Person</a>
		</div>
		<div>
			<a href="/person/getperson?id=">Find Person By Id</a>
		</div>
	</div>
	<div class="sub-headings">
		<h1>Blood Donation Details</h1>
	</div>
	<div class="sub-div">
		<div>
			<a href="/blooddonation/listblooddonation">Donation List</a>
		</div>
		<div>
			<a href="/blooddonation/addblooddonationform">Add Blood Donation
			</a>
		</div>
		<div>
			<a href="/blooddonation/updateblooddonationform?blooddonationid=">Update
				Blood Donation</a>
		</div>
		<div>
			<a href="/blooddonation/deleteblooddontion?id=">Delete Blood
				Donation</a>
		</div>
		<div>
			<a href="/blooddonation/getblooddonation?id=">Find Donation By Id</a>
		</div>
	</div>
	<div class="sub-headings">
		<h1>Blood Request Details</h1>
	</div>
	<div class="sub-div">
		<div>
			<a href="/bloodrequest/listbloodrequest">Blood Request List</a>
		</div>
		<div>
			<a href="/bloodrequest/addbloodrequestform">Add Blood Request</a>
		</div>
		<div>
			<a href="/bloodrequest/updatebloodrequestform?reqid=">Update
				Blood Request</a>
		</div>
		<div>
			<a href="/bloodrequest/deletebloodrequest?id=">Delete Blood
				Request</a>
		</div>
		<div>
			<a href="/bloodrequest/getbloodrequest?id=">Find Blood Request By
				Id</a>
		</div>
	</div>
	<div class="sub-headings">
		<h1>Blood Transaction Details</h1>
	</div>
	<div class="sub-div">
		<div>
			<a href="/bloodtransaction/listbloodtransaction">Blood
				Transaction List</a>
		</div>
		<div>
			<a href="/bloodtransaction/addbloodtransactionform">Add Blood
				Transaction</a>
		</div>
		<div>
			<a href="/bloodtransaction/updatebloodtransactionform?transid=">Update
				Blood Transaction</a>
		</div>
		<div>
			<a href="/bloodtransaction/deletebloodtransaction?id=">Delete
				Blood Transaction</a>
		</div>
		<div>
			<a href="/bloodtransaction/gettransaction?id=">Find Blood
				Transaction By Id</a>
		</div>
	</div>
	<div class="sub-headings">
		<h1>Donor Appointment Details</h1>
	</div>
	<div class="sub-div">
		<div>
			<a href="/appointment/listappointment">Donor Appointment List</a>
		</div>
		<div>
			<a href="/appointment/adddonorappointmentform">Add Donor
				Appointment</a>
		</div>
		<div>
			<a href="/appointment/updatedonorappointmentform?appoid=">Update
				Donor Appointment</a>
		</div>
		<div>
			<a href="/appointment/deleteappointment?id=">Delete Donor
				Appointment</a>
		</div>
		<div>
			<a href="/appointment/getappointment?id=">Find Donor Appointment
				By Id</a>
		</div>
	</div>
</body>
<style>
a:link, a:visited {
	background-color: #3782e9;
	color: white;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	margin-top: 5px;
	width: 220px;
	border-radius: 5px;
	height: 27px;
}

a:hover, a:active {
	background-color: pink;
}

.sub-headings {
	text-align: center;
	background-color: #30c1be;
	color: #1c1b1b;
}

.sub-div {
	text-align: center;
}
</style>
</html>
