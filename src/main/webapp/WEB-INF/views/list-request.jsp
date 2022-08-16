<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List Request</title>
<style><%@include file ="/WEB-INF/css/list.css"%> 
</style>
</head>
<body>
<div id="table root"  class="request_top">
		<table>
			<thead>
				<tr>
					<th>Request Id</th>
					<th>Recipient Name</th>
					<th>Recipient Phone No</th>
					<th>Hospital Name</th>
					<th>Blood Group Id</th>
					<th>Request Date</th>
					<th>Quantity In Units</th>
					<th>Edit</th>
					<th>Delete</th>
					<th>View</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="request" items="${getallbloodrequest}">
					<tr>
						<td>${request.requestId}</td>
						<td>${request.recipientName}</td>
						<td>${request.recipientPhoneNo}</td>
						<td>${request.hospitalName}</td>
						<td>${request.bloodGroupId}</td>
						<td>${request.requestDate}</td>
						<td>${request.quantityInUnits}</td>
						<td><a href="updatebloodrequestform?reqid=${request.requestId}">Edit</a></td>
						<td><a href="deletebloodrequest?id=${request.requestId}">Delete</a></td>
						<td><a href="getbloodrequest?id=${request.requestId}">View</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="request_btn">
			<a href="addbloodrequestform"><button class="button">ADD REQUEST
				</button></a>
		</div>
</body>
</html>