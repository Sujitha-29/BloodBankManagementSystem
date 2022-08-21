<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Appointment By Id</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%> 
body {
	background-color: #a5edf3;
}
</style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="history.back()">Go Back</button>
<div id="root">
		<div id="form" class="form">
			<form:form action="getappointment" method="post"
				modelAttribute="getappointmentbyid">
				<div>
					<label class="heading-text" for="appointmentId">Appointment Id</label>
					<div>
						<form:input path="appointmentId" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="appointmentDate">Appointment Date</label>
					<div>
						<form:input type="date" path="appointmentDate" class="input-size" />
					</div>
				</div>
				<div>
					<label  class="heading-text" for="personId">Person Id</label>
					<div>
						<form:input path="personId" class="input-size" />
					</div>
					</div>			
			</form:form>
		</div>
	</div>
</body>
</html>