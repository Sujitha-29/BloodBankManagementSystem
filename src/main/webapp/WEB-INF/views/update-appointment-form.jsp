<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Appointemnt</title>
<style>
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post"
				modelAttribute="updateappointment">
				<div>
					<label for="appointmentId">Appointment Id</label>
					<div>
						<form:input path="appointmentId" />
					</div>
				</div>
				<form:errors path="appointmentId" cssClass="text-danger" />
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
					<form:errors path="personId" cssClass="text-danger" />
					<div>
						<form:button>Update</form:button>
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>