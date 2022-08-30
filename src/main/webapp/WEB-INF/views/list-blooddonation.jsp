<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List Donation Details</title>
<style><%@include file="/WEB-INF/css/list.css"%>
</style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="history.back()">Go Back</button>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="document.location='/admin/adminuse'">AdminHome</button>
	<div id="table root" >	
		<table class="table">
		<caption></caption>
		<colgroup>
                <col span="10" style="background-color:#01e3c9">
            </colgroup>
			<thead>
				<tr>
				
					<th style="background-color:#87CEFA;font-size: larger;">Donation Date</th>
					<th style="background-color:#87CEFA;font-size: larger;">Health Condition</th>
					<th style="background-color:#87CEFA;font-size: larger;">Quantity In Units</th>
					<th style="background-color:#87CEFA;font-size: larger;">View</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="donation" items="${allblooddontaion}">
					<tr>
						<td>${donation.donationDate}</td>
						<td>${donation.healthCondition}</td>
						<td>${donation.quantityInUnits}</td>
						<td><button onclick="window.location.href='getblooddonation?id=${donation.donationTransId}'">View</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="btn_align">
			<a href="addblooddonationform"><button class="button">ADD DONATION
				</button></a>
		</div>
</body>
</html>