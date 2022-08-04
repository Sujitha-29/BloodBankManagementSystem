<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transaction List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Transaction Id</th>
					<th>Request Id</th>
					<th>Transaction Date</th>
					<th>Quantity</th>
					<th>Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="trans" items="${alltrans}">
					<tr>
						<td>${trans.bloodTransactionId}</td>
						<td>${trans.requestId}</td>
						<td>${trans.transactionDate}</td>
						<td>${trans.quantity}</td>
						<td>${trans.status}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>