<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>ListAdmin</title>
<style><%@include file ="/WEB-INF/css/list.css"%> 
</style>
</head>
<body>
	<div id="table root" class="top">
		<table>
		<caption></caption>
			<thead>
				<tr>
					<th>AdminId</th>
					<th>AdminName</th>
					<th>AdminPassword</th>
					<th>Date Of Joining</th>
					<th>Designation</th>
					<th>Password Modified Date</th>
					<th>Edit</th>
					<th>Delete</th>
					<th>View</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="admin" items="${alladmins}">
					<tr>
						<td>${admin.adminId}</td>
						<td>${admin.adminName}</td>
						<td>${admin.adminPassword}</td>
						<td>${admin.dateOfJoining}</td>
						<td>${admin.designation}</td>
						<td>${admin.passwordModifiedDate}</td>
						<td><a href="updateadminform?adminid=${admin.adminId}">Edit</a></td>
						<td><a href="deleteadmin?id=${admin.adminId}">Delete</a></td>
						<td><a href="getadmin?id=${admin.adminId}">View</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="btn_align">
			<a href="addadminform"><button class="button">ADD ADMIN
				</button></a>
		</div>
		</div>
</body>
</html>