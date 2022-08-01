<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Appointment</title>
</head>
<body>
<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Appointment Id</th>
					<th>Appointment Date</th>
					<th>Person Id</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="appo" items="${allappointment}">
					<tr>
						<td>${appo.appointment_id}</td>
						<td>${appo.appointment_date}</td>
						<td>${appo.person_id}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>