<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Blood Group List</title>
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
<div id="table root" class="bloodgrp_top">
		<table class="table-size">
		<caption></caption>
		 <colgroup>
                <col span="10" style="background-color:#01e3c9">
                <col span="4" style="background-color:crimson">
            </colgroup>
			<thead>
				<tr>
                    <th>Blood Group Id</th>
					<th>Blood Group Name</th>
					<th>Stock</th>
					<th>Edit</th>
					<th>Delete</th>
					<th>View</th>		
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bloodgroup" items="${allbloodgroup}">
					<tr>
					    <td>${bloodgroup.bloodGroupId}</td>
						<td>${bloodgroup.bloodGroup}</td>
						<td>${bloodgroup.stockInUnits}</td>
						<td><a href="updatebloodgroupform?bloodgroupid=${bloodgroup.bloodGroupId}">Edit</a></td>
						<td><a href="deletebloodgroup?id=${bloodgroup.bloodGroupId}">Delete</a></td>
						<td><a href="getbloodgroup?id=${bloodgroup.bloodGroupId}">View</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="bloodgrp_btn">
			<a href="addbloodgroupform"><button class="button">ADD BLOOD GROUP
				</button></a>
		</div>
</body>
</html>