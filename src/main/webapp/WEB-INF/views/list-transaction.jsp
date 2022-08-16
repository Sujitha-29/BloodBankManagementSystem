<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Transaction List</title>
<style><%@include file ="/WEB-INF/css/list.css"%> 
</style>
</head>
<body>
	<div id="table root" class="top">
		<table>
		<caption></caption>
			<thead>
				<tr>
					<th>Transaction Id</th>
					<th>Request Id</th>
					<th>Transaction Date</th>
					<th>Quantity In Units</th>
					<th>Status</th>
					<th>Edit</th>
					<th>Delete</th>
					<th>View</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="trans" items="${alltrans}">
					<tr>
						<td>${trans.bloodTransactionId}</td>
						<td>${trans.requestId}</td>
						<td>${trans.transactionDate}</td>
						<td>${trans.quantityInUnits}</td>
						<td>${trans.status}</td>
						<td><a href="updatebloodtransactionform?transid=${trans.bloodTransactionId}">Edit</a></td>
						<td><a href="deletebloodtransaction?id=${trans.bloodTransactionId}">Delete</a></td>
						<td><a href="gettransaction?id=${trans.bloodTransactionId}">View</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="btn_align">
			<a href="addbloodtransactionform"><button class="button">ADD TRANSACTION
				</button></a>
		</div>
</body>
</html>