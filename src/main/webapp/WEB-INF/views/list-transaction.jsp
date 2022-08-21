<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Transaction List</title>
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
	<div id="table root" class="top">
		<table class="table-size">
		<caption></caption>
		<col span="10" style="background-color:#01e3c9">
        <col span="4" style="background-color:crimson">
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