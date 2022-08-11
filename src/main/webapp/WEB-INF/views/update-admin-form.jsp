<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Admin Form</title>
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
			<form:form action="updateadmin" method="post"
				modelAttribute="updateadmins">
				<div>
					<label for="adminId">Admin Id</label>
					<div>
						<form:input path="adminId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" />
					</div>
				</div>
				<form:errors path="adminId" cssClass="text-danger" />
				<div>
					<label for="adminName">Admin Name</label>
					<div>
						<form:input path="adminName"  title="Name can't be empty"
						pattern="^[A-Za-z]\\w{3,20}$" required="true" />
					</div>
				</div>
				<form:errors path="adminName" cssClass="text-danger" />
				<div>
					<label for="adminPassword">Admin Password</label>
					<div>
						<form:input type="password" path="adminPassword" title='password must begin with letter and contain atleast one number and must have atleast 8 characters'
						pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
						required="true"/>
					</div>
				</div>
				<form:errors path="adminPassword" cssClass="text-danger" />
				<div>
					<label for="dateOfJoining">Date Of Joining</label>
					<div>
						<form:input type="date" path="dateOfJoining" />
					</div>
				</div>
				<div>
					<label for="designation">Designation</label>
					<div>
						<form:input path="designation"  title="designation can't be empty"
						pattern="^[A-Za-z]\\w{3,20}$" required="true"/>
					</div>
				</div>
				<form:errors path="designation" cssClass="text-danger" />
				<div>
					<label for="passwordModifiedDate">Password Modified Date</label>
					<div>
						<form:input type="date" path="passwordModifiedDate" />
					</div>
				</div>
				<div>
					<form:button>UPDATE</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>