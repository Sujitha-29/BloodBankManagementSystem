<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Admin</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Admin Id</th>
					<th>Admin Name</th>
					<th>Admin Password</th>
					<th>Date Of Joining</th>
					<th>Degination</th>
					<th>Password Modified Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="admin" items="${alladmins}">
					<tr>
						<td>${admin.admin_id}</td>
						<td>${admin.admin_name}</td>
						<td>${admin.admin_password}</td>
						<td>${admin.date_of_joining}</td>
						<td>${admin.designation}</td>
						<td>${admin.password_modified_date}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>