<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Admin Form</title>
</head>
<body>
<div id="root">
<div id="form">
<form:form action="updatead" method="post" modelAttribute="updateadmin">
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
						<form:input path="admin_Password" />
					</div>
				</div>
				<div>
					<label for="designation">Designation</label>
					<div>
						<form:input path="admin_id" />
					</div>
				</div>
				<div>
					<label for="password_modified_date">password_modified_date</label>
					<div>
						<form:input path="password_modified_date" />
					</div>
				</div>
				<div>
					<form:button>Update</form:button>
				</div>
</form:form>
</div>
</div>
</body>
</html>