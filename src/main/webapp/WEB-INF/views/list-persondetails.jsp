<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Persons Details</title>
</head>
<body>
<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Person Id</th>
					<th>Person Name</th>
					<th>Person DOB</th>
					<th>Blood Group Id</th>			
					<th>Phone Number</th>
					<th>Gender</th>
					<th>Address</th>
					<th>Email Id</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="person" items="${allpersons}">
					<tr>
						<td>${person.person_id}</td>
						<td>${person.person_name}</td>
						<td>${person.dob}</td>
						<td>${person.blood_group_id}</td>
						<td>${person.phone_no}</td>
						<td>${person.gender}</td>
						<td>${person.address}</td>
						<td>${person.email_id}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>