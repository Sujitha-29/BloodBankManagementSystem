<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List Donation Details</title>
<style><%@include file="/WEB-INF/css/list.css"%>
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
	<div id="table root" >	
		<table class="table-size">
		<caption></caption>
		 <colgroup>
                <col span="10" style="background-color:#01e3c9">
                <col span="4" style="background-color:crimson">
            </colgroup>
			<thead>
				<tr>
				
					<th>Donation Id</th>
					<th>Person Id</th>
					<th>Donation Date</th>
					<th>Health Condition</th>
					<th>Quantity In Units</th>
					<th>Edit</th>
					<th>Delete</th>
					<th>View</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="donation" items="${allblooddontaion}">
					<tr>
						<td>${donation.donationTransId}</td>
						<td>${donation.personId}</td>
						<td>${donation.donationDate}</td>
						<td>${donation.healthCondition}</td>
						<td>${donation.quantityInUnits}</td>
						<td><a href="updateblooddonationform?blooddonationid=${donation.donationTransId}">Edit</a></td>
						<td><a href="deleteblooddontion?id=${donation.donationTransId}">Delete</a></td>
						<td><a href="getblooddonation?id=${donation.donationTransId}">View</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="donation_btn">
			<a href="addblooddonationform"><button class="button">ADD DONATION
				</button></a>
		</div>
</body>
</html>