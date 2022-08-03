<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Appointment By Id</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="getappointment" method="post"
				modelAttribute="getappointmentbyid">
				<div>
					<label for="appointmentId">Appointment Id</label>
					<div>
						<form:input path="appointmentId" />
					</div>
				</div>
				<div>
					<label for="appointmentDate">Appointment Date</label>
					<div>
						<form:input path="appointmentDate" />
					</div>
				</div>
				<div>
					<label for="personId">Person Id</label>
					<div>
						<form:input path="personId" />
					</div>			
			</form:form>
		</div>
	</div>
</body>
</html>