<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Blood Group List</title>
<style><%@include file ="/WEB-INF/css/list.css"%> 
</style>
</head>
<body>
<div id="table root" class="top">
		<table>
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
	<div class="btn_align">
			<a href="addbloodgroupform"><button class="button">ADD BLOOD GROUP
				</button></a>
		</div>
</body>
</html>