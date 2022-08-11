<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Request</title>
</head>
<body>
<div id="table root">
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
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>