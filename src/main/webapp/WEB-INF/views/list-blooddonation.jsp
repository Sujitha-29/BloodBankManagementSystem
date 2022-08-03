<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Donation Details</title>
</head>
<body>
<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Donation Id</th>
					<th>Person Id</th>
					<th>Donation Date</th>
					<th>Health Condition</th>
					<th>Quantity</th>					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="donation" items="${allblooddontaion}">
					<tr>
						<td>${donation.donationTransId}</td>
						<td>${donation.personId}</td>
						<td>${donation.donationDate}</td>
						<td>${donation.healthCondition}</td>
						<td>${donation.quantity}</td>						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>