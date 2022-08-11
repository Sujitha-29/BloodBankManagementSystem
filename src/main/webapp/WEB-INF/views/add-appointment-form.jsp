<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Appointment</title>
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
			<form:form action="add" method="post" modelAttribute="addappointment">
				<div>
					<label for="appointmentId">Appointment Id</label>
					<div>
						<form:input path="appointmentId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" />
					</div>
				</div>
				<form:errors path="appointmentId" cssClass="text-danger" />
				<div>
					<label for="appointmentDate">Appointment Date</label>
					<div>
						<form:input type="date" path="appointmentDate"  />
					</div>
				</div>
				<div>
					<label for="personId">Person Id</label>
					<div>
						<form:input path="personId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" />
					</div>
					<form:errors path="personId" cssClass="text-danger" />
					<div>
						<form:button>ADD</form:button>
					</div>
			</form:form>
		</div>
	</div>
</body>
	<div>${result}</div>
</html>