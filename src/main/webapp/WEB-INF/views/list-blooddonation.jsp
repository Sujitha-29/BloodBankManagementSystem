<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List Donation Details</title>
<style><%@include file="/WEB-INF/css/list.css"%>
body
{
background-image:url("https://b-static.besthdwallpaper.com/background-with-light-yellow-and-ocher-colors-with-flying-birds-wallpaper-1152x864-94923_19.jpg");
background-position: center;
	background-repeat: no-repeat; 
	background-size: cover;
    position: relative; 
    background-attachment:fixed;
}
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
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="document.location='/admin/adminuse'">AdminHome</button>
	<div id="table root" >	
		<table class="table">
		<caption></caption>
		<colgroup>
                <col span="10" style="background-color:#01e3c9">
            </colgroup>
			<thead>
				<tr>
				
					<!-- <th style="background-color:#87CEFA;font-size": larger;>Donation Id</th> -->
					<!-- <th style="background-color:#87CEFA;font-size: larger;">Person Id</th> -->
					<th style="background-color:#87CEFA;font-size: larger;">Donation Date</th>
					<th style="background-color:#87CEFA;font-size: larger;">Health Condition</th>
					<th style="background-color:#87CEFA;font-size: larger;">Quantity In Units</th>
					<th style="background-color:#87CEFA;font-size: larger;">View</th>
					<!-- <th style="background-color:#87CEFA;font-size: larger;">Edit</th> -->
				</tr>
			</thead>
			<tbody>
				<c:forEach var="donation" items="${allblooddontaion}">
					<tr>
						<%-- <td>${donation.donationTransId}</td> --%>
						<%-- <td>${donation.personId}</td> --%>
						<td>${donation.donationDate}</td>
						<td>${donation.healthCondition}</td>
						<td>${donation.quantityInUnits}</td>
						<td><button onclick="window.location.href='getblooddonation?id=${donation.donationTransId}'">View</button></td>
						<%-- <td><a href="updateblooddonationform?blooddonationid=${donation.donationTransId}">Edit</a></td> --%>
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