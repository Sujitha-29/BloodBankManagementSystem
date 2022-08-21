<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List Appointment</title>
<style><%@include file ="/WEB-INF/css/list.css"%>
h1 {text-align: center;}
div{text-align: center;}
.table-size{
border:2px;
width:100%;
cellpadding:2px;
} 
</style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="history.back()">Go Back</button>
<div id="table root" class="appo_top">
		<table class="table-size">
		<caption></caption>
		<colgroup>
                <col span="10" style="background-color:#01e3c9">
                <col span="4" style="background-color:crimson">
            </colgroup>
			<thead>
				<tr>
					<th>Appointment Id</th>
					<th>Appointment Date</th>
					<th>Person Id</th>
					<th>Edit</th>
					<th>Delete</th>
					<th>View</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="appo" items="${allappointments}">
					<tr>
						<td>${appo.appointmentId}</td>
						<td>${appo.appointmentDate}</td>
						<td>${appo.personId}</td>
						<td><a href="updatedonorappointmentform?appoid=${appo.appointmentId}">Edit</a></td>
						<td><a href="deleteappointment?id=${appo.appointmentId}">Delete</a></td>
						<td><a href="getappointment?id=${appo.appointmentId}">View</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="btn_align">
			<a href="adddonorappointmentform"><button class="button">ADD APPOINTMENT
				</button></a>
		</div>
</body>
</html>