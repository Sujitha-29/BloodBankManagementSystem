<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Admin Form</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%> 
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
body {
	background-color: #a5edf3;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form" class="form">
			<form:form action="updateadmin" method="post"
				modelAttribute="updateadmins">
				<div>
					<label class="heading-text" for="adminId">Admin Id</label>
					<div>
						<form:input path="adminId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="adminId" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="adminName">Admin Name</label>
					<div>
						<form:input path="adminName" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only"
							placeholder="Enter Admin Name" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="adminName" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="adminPassword">Admin Password</label>
					<div>
						<form:input type="password" path="adminPassword"
							pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
							title="Enter a valid password Welcomes@03 " 
							required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="adminPassword" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="dateOfJoining">Date Of Joining</label>
					<div>
						<form:input type="date" path="dateOfJoining" required="true" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="designation">Designation</label>
					<div>
						<form:input path="designation" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only"
							placeholder="Enter Designation" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="designation" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="passwordModifiedDate">Password Modified Date</label>
					<div>
						<form:input type="date" path="passwordModifiedDate" required="true" class="input-size" />
					</div>
				</div>
				<div>
					<form:button class="button-style">UPDATE</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>