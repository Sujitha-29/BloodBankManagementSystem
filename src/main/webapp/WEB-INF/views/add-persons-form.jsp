<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Person Details</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addperson">
				<div>
					<label for="person_id">Person Id</label>
					<div>
						<form:input path="person_id" />
					</div>
				</div>
				<div>
					<label for="person_name">Person Name</label>
					<div>
						<form:input path="person_name" />
					</div>
				</div>
				<div>
					<label for="dob">DOB</label>
					<div>
						<form:input type="date" path="dob" />
					</div>
				</div>
				<div>
					<label for="blood_group_id">Blood Group</label>
					<div>
						<form:input path="blood_group_id" />
					</div>
				</div>
				<div>
					<label for="phone_no">Phone Number</label>
					<div>
						<form:input path="phone_no" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" />
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" />
					</div>
				</div>
				<div>
					<label for="email_id">Email Id</label>
					<div>
						<form:input path="email_id" />
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