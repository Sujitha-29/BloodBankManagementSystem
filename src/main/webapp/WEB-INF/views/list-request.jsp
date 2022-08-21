<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List Request</title>
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
<div id="table root"  class="request_top">
		<table class="table-size">
		<caption></caption>
		<colgroup>
                <col span="10" style="background-color:#01e3c9">
                <col span="4" style="background-color:crimson">
            </colgroup>
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