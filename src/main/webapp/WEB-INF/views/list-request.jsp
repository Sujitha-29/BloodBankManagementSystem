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
					<th>Hospital Name</th>
					<th>Blood Group</th>
					<th>Request Date</th>
					<th>Quantity</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="request" items="${getallrequest}">
					<tr>
						<td>${request.requestid}</td>
						<td>${request.hospitalname}</td>
						<td>${request.bloodgroup}</td>
						<td>${request.requestdate}</td>
						<td>${request.quantity}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>