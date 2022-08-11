<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Admin</title>
<style>
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}

.heading-text {
	font-weight: bold;
	font-size: 20px;
}

body {
	background-color: #a5edf3;
}

.input-size {
	padding: 5px;
	width: 15%;
}

.button-style {
	width: 90px;
	height: 30px;
	margin-top: 12p;
	background-color:#f6f7f2;
	font-weight: bold;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form" style="text-align: center; margin-top: 9%;">
			<form:form style="line-height: 29px;" action="addadmin" method="post"
				modelAttribute="addadmins">
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
						<form:input path="adminName" title="Name can't be empty"
							pattern="^[A-Za-z]\\w{3,20}$" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="adminName" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="adminPassword">Admin
						Password</label>
					<div>
						<form:input type="password" path="adminPassword"
							title='password must begin with letter and contain atleast one number and must have atleast 8 characters'
							pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
							required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="adminPassword" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="dateOfJoining">Date Of
						Joining</label>
					<div>
						<form:input type="date" path="dateOfJoining" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="designation">Designation</label>
					<div>
						<form:input path="designation" title="designation can't be empty"
							pattern="^[A-Za-z]\\w{3,20}$" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="designation" cssClass="text-danger" />
				<div style="margin-bottom: 20px;">
					<label class="heading-text" for="passwordModifiedDate">Password
						Modified Date</label>
					<div>
						<form:input type="date" path="passwordModifiedDate"
							class="input-size" />
					</div>
				</div>
				<div>
					<form:button class="button-style">ADD</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>