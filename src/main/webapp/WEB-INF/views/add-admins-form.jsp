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
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addadmin" method="post" modelAttribute="addadmins">
				<div>
					<label for="adminId">Admin Id</label>
					<div>
						<form:input path="adminId" />
					</div>
				</div>
				<form:errors path="adminId" cssClass="text-danger" />
				<div>
					<label for="adminName">Admin Name</label>
					<div>
						<form:input path="adminName" />
					</div>
				</div>
				<form:errors path="adminName" cssClass="text-danger" />
				<div>
					<label for="adminPassword">Admin Password</label>
					<div>
						<form:input path="adminPassword" />
					</div>
				</div>
				<form:errors path="adminPassword" cssClass="text-danger" />
				<div>
					<label for="dateOfJoining">Date Of Joining</label>
					<div>
						<form:input path="dateOfJoining" />
					</div>
				</div>
				<div>
					<label for="designation">Designation</label>
					<div>
						<form:input path="designation" />
					</div>
				</div>
				<form:errors path="designation" cssClass="text-danger" />
				<div>
					<label for="passwordModifiedDate">password Modified Date</label>
					<div>
						<form:input path="passwordModifiedDate" />
					</div>
				</div>
				<div>
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>