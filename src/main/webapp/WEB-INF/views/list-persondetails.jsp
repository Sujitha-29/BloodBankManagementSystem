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
<div id="table root" class="person_top">
		<table>
		<caption></caption>
			<thead>
				<tr>
					<th>Person Id</th>
					<th>Person Name</th>
					<th>Person DOB</th>
					<th>Blood Group Id</th>			
					<th>Phone Number</th>
					<th>Gender</th>
					<th>Address</th>
					<th>Email Id</th>
					<th>Edit</th>
					<th>Delete</th>
					<th>View</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="person" items="${allperson}">
					<tr>
						<td>${person.personId}</td>
						<td>${person.personName}</td>
						<td>${person.dob}</td>
						<td>${person.bloodGroupId}</td>
						<td>${person.phoneNo}</td>
						<td>${person.gender}</td>
						<td>${person.address}</td>
						<td>${person.emailId}</td>
						<td><a href="updatepersonform?personid=${person.personId}">Edit</a></td>
						<td><a href="deleteperson?id=${person.personId}">Delete</a></td>
						<td><a href="getperson?id=${person.personId}">View</a></td>
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