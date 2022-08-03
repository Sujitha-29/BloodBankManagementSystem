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
				<c:forEach var="appo" items="${allappointments}">
					<tr>
						<td>${appo.appointmentId}</td>
						<td>${appo.appointmentDate}</td>
						<td>${appo.personId}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>