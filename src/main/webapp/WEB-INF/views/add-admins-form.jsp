<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Admin</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addad" method="post" modelAttribute="addadmin">
				<div>
					<label for="admin_id">Admin Id</label>
					<div>
						<form:input path="admin_id" />
					</div>
				</div>
				<div>
					<label for="admin_name">Admin Name</label>
					<div>
						<form:input path="admin_name" />
					</div>
				</div>
				<div>
					<label for="admin_password">Admin Password</label>
					<div>
						<form:input path="admin_password" />
					</div>
				</div>
				<div>
					<label for="date_of_joining">Date Of Joining</label>
					<div>
						<form:input path="date_of_joining" />
					</div>
				</div>

				<div>
					<label for="designation">Designation</label>
					<div>
						<form:input path="designation" />
					</div>
				</div>
				<div>
					<label for="password_modified_date">password_modified_date</label>
					<div>
						<form:input path="password_modified_date" />
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