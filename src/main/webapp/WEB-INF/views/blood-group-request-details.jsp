<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blood Group Request Details</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getbloodgroup">
				<div>
					<label for="bloodGroupId">Blood Group Id</label>
					<div>
						<form:input path="bloodGroupId" />
					</div>
				</div>
				<div>
					<label for="bloodGroup">Blood Group Name</label>
					<div>
						<form:input path="bloodGroup" />
					</div>
				</div>
				<div>
					<label for="stockInHand">Stock</label>
					<div>
						<form:input path="stockInHand" />
					</div>
			</form:form>
		</div>
	</div>
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
					<th>Quantity</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="request" items="${requestlist}">
					<tr>
						<td>${request.requestId}</td>
						<td>${request.recipientName}</td>
						<td>${request.recipientPhoneNo}</td>
						<td>${request.hospitalName}</td>
						<td>${request.bloodGroupId}</td>
						<td>${request.requestDate}</td>
						<td>${request.quantity}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>