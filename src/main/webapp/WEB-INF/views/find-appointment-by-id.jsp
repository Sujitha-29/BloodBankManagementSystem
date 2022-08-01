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
				modelAttribute="getappointment">
				<div>
					<label for="appointment_id">Appointment Id</label>
					<div>
						<form:input path="appointment_id" />
					</div>
				</div>
				<div>
					<label for="appointment_date">Appointment Date</label>
					<div>
						<form:input path="appointment_date" />
					</div>
				</div>
				<div>
					<label for="person_id">Person Id</label>
					<div>
						<form:input path="person_id" />
					</div>			
			</form:form>
		</div>
	</div>
</body>
</html>