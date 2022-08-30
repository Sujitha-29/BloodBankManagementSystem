<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>UpdateAppointement</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%> 
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
body {
	
	background-image: url("https://cdn.wallpapersafari.com/78/7/JOGgC4.png");
	background-position: center;
	background-repeat: no-repeat; 
	background-size: cover;
    position: relative; 
    background-attachment:fixed;
}
</style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="history.back()">Go Back</button>
	<div id="root">
		<div id="form" class="form">
			<form:form action="update" method="post"
				modelAttribute="updateappointment">
				<div>
					<label class="heading-text" for="appointmentId">Appointment Id</label>
					<div>
						<form:input path="appointmentId"  title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="appointmentId" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="appointmentDate">Appointment Date</label>
					<div>
						<form:input type="date" path="appointmentDate" required="true" class="input-size"  />
					</div>
				</div>
				<div>
					<label class="heading-text" for="personId">Person Id</label>
					<div>
						<form:input path="personId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
					<form:errors path="personId" cssClass="text-danger" class="input-size" />
					<div>
						<form:button class="button-style">UPDATE</form:button>
					</div>
			</form:form>
		</div>
	</div>
</body>
</html> --%>