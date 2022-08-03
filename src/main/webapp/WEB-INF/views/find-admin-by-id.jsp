<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Admin By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="getadmin" method="post" modelAttribute="getadmins">
				<div>
					<label for="adminId">Admin Id</label>
					<div>
						<form:input path="adminId" />
					</div>
				</div>
				<div>
					<label for="adminName">Admin Name</label>
					<div>
						<form:input path="adminName" />
					</div>
				</div>
				<div>
					<label for="adminPassword">Admin Password</label>
					<div>
						<form:input path="adminPassword" />
					</div>
				</div>
				<div>
					<label for="designation">Designation</label>
					<div>
						<form:input path="designation" />
					</div>
				</div>
				<div>
					<label for="passwordModifiedDate">password Modified Date</label>
					<div>
						<form:input path="passwordModifiedDate" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>