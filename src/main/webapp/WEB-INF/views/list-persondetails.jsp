<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List Persons Details</title>
<style><%@include file ="/WEB-INF/css/list.css"%>
</style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="history.back()">Go Back</button>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="document.location='/admin/adminuse'">AdminHome</button>
<div id="table root">
		<table class="table">
		<caption></caption>
		<colgroup>
                <col span="10" style="background-color:#01e3c9">
            </colgroup>
			<thead>
				<tr>
					<th style="background-color:#87CEFA;font-size: larger;">Person Name</th>
					<th style="background-color:#87CEFA;font-size: larger;">Person DOB</th>
					<th style="background-color:#87CEFA;font-size: larger;">Phone Number</th>
					<th style="background-color:#87CEFA;font-size: larger;">Gender</th>
					<th style="background-color:#87CEFA;font-size: larger;">Address</th>
					<th style="background-color:#87CEFA;font-size: larger;">Email Id</th>
					<th style="background-color:#87CEFA;font-size: larger;">Edit</th>
					<th style="background-color:#87CEFA;font-size: larger;">View</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="person" items="${allperson}">
					<tr>
						<td>${person.personName}</td>
						<td>${person.dob}</td>
						<td>${person.phoneNo}</td>
						<td>${person.gender}</td>
						<td>${person.address}</td>
						<td>${person.emailId}</td>
						<td><button onclick="window.location.href='updatepersonform?personid=${person.personId}'">Edit</button></td>
						<td><button onclick="window.location.href='getperson?id=${person.personId}'">View</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="person_btn">
			<a href="addpersonform"><button class="button">ADD PERSON
				</button></a>
		</div>
</body>
</html>