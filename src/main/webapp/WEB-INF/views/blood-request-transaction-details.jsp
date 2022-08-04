<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blood Request And Transaction Details</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post"
				modelAttribute="getbloodrequest">
				<div>
					<label for="requestId">Request Id</label>
					<div>
						<form:input path="requestId" />
					</div>
				</div>
				<div>
					<label for="recipientName">Recipient Name</label>
					<div>
						<form:input path="recipientName" />
					</div>
				</div>
				<div>
					<label for="recipientPhoneNo">Recipient Phone No</label>
					<div>
						<form:input path="recipientPhoneNo" />
					</div>
				</div>
				<div>
					<label for="hospitalName">Hospital Name</label>
					<div>
						<form:input path="hospitalName" />
					</div>
				</div>
				<div>
					<label for="bloodGroupId">Blood Group Id</label>
					<div>
						<form:input path="bloodGroupId" />
					</div>
				</div>
				<div>
					<label for="requestDate">Request Date</label>
					<div>
						<form:input path="requestDate" />
					</div>
				</div>
				<div>
					<label for="quantity">Quantity</label>
					<div>
						<form:input path="quantity" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
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
				<c:forEach var="trans" items="${getbloodtransaction}">
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