<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Appointment</title>
<style><%@include file ="/WEB-INF/css/addappointment.css"%>
body {
	background-color: #a5edf3;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form" class="form">
			<form:form action="add" method="post" modelAttribute="addappointment">
				<div>
					<label class="heading-text" for="appointmentId">Appointment
						Id</label>
					<div>
						<form:input path="appointmentId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="appointmentId" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="appointmentDate">Appointment
						Date</label>
					<div>
						<form:input type="date" path="appointmentDate" required="true"  class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="personId">Person Id</label>
					<div>
						<form:input path="personId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size"
							style="margin-bottom: 10px;" />
					</div>
					</div>
					<form:errors path="personId" cssClass="text-danger" />
					<div>
						<form:button class="button-style">ADD</form:button>
					</div>
			</form:form>
		</div>
	</div>
	
</body>
<div class="center">${result}</div>
</html>